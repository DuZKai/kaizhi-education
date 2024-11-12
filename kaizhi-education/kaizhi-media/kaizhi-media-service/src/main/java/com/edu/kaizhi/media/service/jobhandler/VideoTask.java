package com.edu.kaizhi.media.service.jobhandler;

import com.edu.kaizhi.base.utils.Mp4VideoUtil;
import com.edu.kaizhi.media.model.po.MediaMinioChunk;
import com.edu.kaizhi.media.model.po.MediaProcess;
import com.edu.kaizhi.media.service.MediaFileProcessService;
import com.edu.kaizhi.media.service.MediaFileService;
import com.xxl.job.core.context.XxlJobHelper;
import com.xxl.job.core.handler.annotation.XxlJob;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

@Component
@Slf4j
public class VideoTask {
    @Autowired
    MediaFileService mediaFileService;
    @Autowired
    MediaFileProcessService mediaFileProcessService;


    @Value("${videoprocess.ffmpegpath}")
    String ffmpegpath;

    /**
     * 视频处理任务处理器
     */
    @XxlJob("videoJobHandler")
    public void videoJobHandler() throws Exception {

        // 分片参数
        int shardIndex = XxlJobHelper.getShardIndex();
        int shardTotal = XxlJobHelper.getShardTotal();
        List<MediaProcess> mediaProcessList = null;
        int size = 0;
        try {
            //取出cpu核心数作为一次处理数据的条数
            int processors = Runtime.getRuntime().availableProcessors();
            //一次处理视频数量不要超过cpu核心数
            mediaProcessList = mediaFileProcessService.getMediaProcessList(shardIndex, shardTotal, processors);
            size = mediaProcessList.size();
            log.debug("取出待处理视频任务{}条", size);
            if (size <= 0) {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
        //启动size个线程的线程池
        ExecutorService threadPool = Executors.newFixedThreadPool(size);
        //计数器
        CountDownLatch countDownLatch = new CountDownLatch(size);
        //将处理任务加入线程池
        mediaProcessList.forEach(mediaProcess -> {
            threadPool.execute(() -> {
                try {
                    processMediaTask(mediaProcess);
                } finally {
                    countDownLatch.countDown();
                }
            });
        });
        //等待，给一个充裕的超时时间，防止无限等待，到达超时时间还没有处理完成则结束任务
        countDownLatch.await(30, TimeUnit.MINUTES);
    }

    /**
     * 处理视频任务单线程逻辑
     * */
    private void processMediaTask(MediaProcess mediaProcess){
        //任务id
        Long taskId = mediaProcess.getId();
        //抢占任务
        if (!mediaFileProcessService.startTask(taskId)) return;

        log.debug("开始执行任务:{}", mediaProcess);
        //下边是处理逻辑
        //桶
        String bucket = mediaProcess.getBucket();
        //存储路径
        String filePath = mediaProcess.getFilePath();
        //原始视频的md5值
        String fileId = mediaProcess.getFileId();
        //将要处理的文件下载到服务器上
        File originalFile = mediaFileService.downloadFileFromMinIO(bucket, filePath);
        if (originalFile == null) {
            log.debug("下载待处理文件失败,originalFile:{}", bucket.concat(filePath));
            mediaFileProcessService.saveProcessFinishStatus(taskId, "3", fileId, null, "下载待处理文件失败");
            return;
        }
        //处理下载的视频文件
        File mp4File = null;
        try {
            mp4File = File.createTempFile("mp4", ".mp4");
        } catch (IOException e) {
            log.error("创建mp4临时文件失败");
            mediaFileProcessService.saveProcessFinishStatus(taskId, "3", fileId, null, "创建mp4临时文件失败");
            return;
        }
        //视频处理结果
        String result = "";
        try {
            //开始处理视频
            Mp4VideoUtil videoUtil = new Mp4VideoUtil(ffmpegpath, originalFile.getAbsolutePath(), mp4File.getName(), mp4File.getAbsolutePath());
            //开始视频转换，成功将返回success
            result = videoUtil.generateMp4();
        } catch (Exception e) {
            e.printStackTrace();
            log.error("处理视频文件:{},出错:{}", filePath, e.getMessage());
        }
        if (!result.equals("success")) {
            //记录错误信息
            log.error("处理视频失败,视频地址:{},错误信息:{}", bucket + filePath, result);
            mediaFileProcessService.saveProcessFinishStatus(taskId, "3", fileId, null, result);
            return;
        }

        //将mp4上传至minio
        //mp4在minio的存储路径
        String objectName = mediaFileService.getFilePathByMd5(fileId, ".mp4");
        //访问url
        String url = "/" + bucket + "/" + objectName;
        try {
            mediaFileService.addMediaFilesToMinIO(mp4File.getAbsolutePath(), "video/mp4", bucket, objectName);
            //将url存储至数据，并更新状态为成功，并将待处理视频记录删除存入历史
            mediaFileProcessService.saveProcessFinishStatus(taskId, "2", fileId, url, null);
        } catch (Exception e) {
            log.error("上传视频失败或入库失败,视频地址:{},错误信息:{}", bucket + objectName, e.getMessage());
            //最终还是失败
            mediaFileProcessService.saveProcessFinishStatus(taskId, "3", fileId, null, "处理后视频上传或入库失败");
        }
    }

    /**
     * 视频处理任务处理器
     */
    @XxlJob("videoTimeoutJobHandler")
    public void videoTimeoutJobHandler(){
        mediaFileProcessService.getTimeoutMediaProcessList().forEach(mediaProcess -> {
            log.debug("处理超时任务:{}", mediaProcess);
            //删除mediaProcess
            mediaFileProcessService.saveProcessFinishStatus(mediaProcess.getId(), "3", mediaProcess.getFileId(), null, "处理超时");
        });
    }

    /**
     * 检查上传超时块任务
     */
    @XxlJob("videoChunkTimeoutJobHandler")
    public void videoChunkTimeoutJobHandler() {
        log.debug(">>>>>>>>>> 开始执行检查上传超时块任务");
        // 拿到所有的超时分块任务
        List<MediaMinioChunk> chunkTimeoutFiles = mediaFileService.getChunkTimeoutFiles(LocalDateTime.now());
        if (chunkTimeoutFiles == null) {  // 没有超时任务
            log.debug("没有超时任务");
            return ;
        }

        // 根据记录中的file_path，删除minio中的所有文件.
        List<MediaMinioChunk> chunksToDelete = new ArrayList<>();
        chunkTimeoutFiles.forEach(chunk -> {
            mediaFileService.clearSingleChunk(chunk.getFilePath(), chunk.getChunk());
            // // 删除数据库中对应的记录
            // mediaFileService.clearOneChunkFromDb(chunk.getFileId(), chunk.getChunk());
            chunksToDelete.add(chunk);
        });
        // 删除数据库中对应的记录
        mediaFileService.clearSomeChunksFromDb(chunksToDelete);
    }
}
