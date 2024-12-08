package com.edu.kaizhi.media.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.base.model.RestResponse;
import com.edu.kaizhi.base.utils.DateUtil;
import com.edu.kaizhi.media.mapper.MediaFilesMapper;
import com.edu.kaizhi.media.mapper.MediaMinioChunkMapper;
import com.edu.kaizhi.media.mapper.MediaProcessMapper;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;
import com.edu.kaizhi.media.model.po.MediaMinioChunk;
import com.edu.kaizhi.media.model.po.MediaProcess;
import com.edu.kaizhi.media.service.MediaFileService;
import com.j256.simplemagic.ContentInfo;
import com.j256.simplemagic.ContentInfoUtil;
import io.minio.*;
import io.minio.messages.DeleteError;
import io.minio.messages.DeleteObject;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.*;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

@Service
@Slf4j
public class MediaFileServiceImpl implements MediaFileService {

    @Autowired
    MinioClient minioClient;

    @Autowired
    MediaFilesMapper mediaFilesMapper;

    @Autowired
    MediaProcessMapper mediaProcessMapper;

    @Autowired
    MediaMinioChunkMapper mediaMinioChunkMapper;

    // 注入自己，使得事务生效
    @Autowired
    MediaFileService currentProxy;


    //普通文件桶
    @Value("${minio.bucket.files}")
    private String bucket_Files;

    //视频桶
    @Value("${minio.bucket.videofiles}")
    private String bucket_video;

    public MediaFiles getFileById(String mediaId) {
        return mediaFilesMapper.selectById(mediaId);
    }

    public PageResult<MediaFiles> queryMediaFiles(Long companyId, PageParams pageParams, QueryMediaParamsDto queryMediaParamsDto) {

        //构建查询条件对象
        LambdaQueryWrapper<MediaFiles> queryWrapper = new LambdaQueryWrapper<>();

        // 文件名
        String filename = queryMediaParamsDto.getFilename();
        if (filename != null && !filename.isEmpty() && !filename.equals("null"))
            queryWrapper.like(MediaFiles::getFilename, filename);

        if(companyId != -1L)
            queryWrapper.eq(MediaFiles::getCompanyId, companyId);

        // 文件类型
        String fileType = queryMediaParamsDto.getFileType();
        if (fileType != null && !fileType.isEmpty() && !fileType.equals("null"))
            queryWrapper.eq(MediaFiles::getFileType, fileType);

        // 按照创建时间排序
        queryWrapper.orderByAsc(MediaFiles::getCreateDate);

        //分页对象
        Page<MediaFiles> page = new Page<>(pageParams.getPageNo(), pageParams.getPageSize());
        // 查询数据内容获得结果
        Page<MediaFiles> pageResult = mediaFilesMapper.selectPage(page, queryWrapper);
        // 获取数据列表
        List<MediaFiles> list = pageResult.getRecords();
        // 获取数据总数
        long total = pageResult.getTotal();
        // 构建结果集
        return new PageResult<>(list, total, pageParams.getPageNo(), pageParams.getPageSize());
    }

    public List<MediaFiles> getMediaAllFiles(Long companyId) {
        LambdaQueryWrapper<MediaFiles> queryWrapper = new LambdaQueryWrapper<>();
        if(companyId != -1L)
            queryWrapper.eq(MediaFiles::getCompanyId, companyId);
        return mediaFilesMapper.selectList(queryWrapper);
    }

    /**
     * 获取文件默认存储目录路径 年/月/日
     */
    private String getDefaultFolderPath() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(new Date()).replace("-", "/") + "/";
    }

    /**
     * 获取文件的md5
     *
     * @param file 文件
     */
    private String getFileMd5(File file) {
        try (FileInputStream fileInputStream = new FileInputStream(file)) {
            return DigestUtils.md5Hex(fileInputStream);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 将文件上传到minio
     */
    public UploadFileResultDto uploadFile(Long companyId, UploadFileParamsDto uploadFileParamsDto, String localFilePath, String objectName) {

        String filename = uploadFileParamsDto.getFilename();
        String extension = filename.substring(filename.lastIndexOf("."));

        // 将文件上传minio
        String mimeType = getMimeType(extension);

        String defaultFolderPath = getDefaultFolderPath();
        String fileMd5 = getFileMd5(new File(localFilePath));
        //存储到minio中的对象名(带目录)
        if (StringUtils.isEmpty(objectName)) {
            objectName = defaultFolderPath + fileMd5 + extension;
        }
        // String objectName = defaultFolderPath + fileMd5 + extension;


        // 上传文件到minio
        boolean result = addMediaFilesToMinIO(localFilePath, mimeType, bucket_Files, objectName);
        if (!result) {
            CustomizeException.cast("上传文件到文件系统失败");
        }

        //入库文件信息，要使得事务生效，需要使用注入自身的代理对象
        // 不加入也会显示警告：@Transactional自调用(实际上是目标对象内的方法调用目标对象的另一个方法)在运行时不会导致实际的事务
        MediaFiles mediaFiles = currentProxy.addMediaFilesToDb(companyId, fileMd5, uploadFileParamsDto, bucket_Files, objectName);
        if (mediaFiles == null) {
            CustomizeException.cast("上传文件信息到数据库失败");
        }

        // 准备返回对象
        UploadFileResultDto uploadFileResultDto = new UploadFileResultDto();
        BeanUtils.copyProperties(mediaFiles, uploadFileResultDto);


        return uploadFileResultDto;
    }

    /**
     * 根据扩展名取出mimeType
     *
     * @param extension
     */
    private String getMimeType(String extension) {
        if (extension == null)
            extension = "";
        // 根据扩展名取出mimeType
        ContentInfo extensionMatch = ContentInfoUtil.findExtensionMatch(extension);
        // 通用mimeType，字节流
        String mimeType = MediaType.APPLICATION_OCTET_STREAM_VALUE;
        if (extensionMatch != null) {
            mimeType = extensionMatch.getMimeType();
        }
        return mimeType;
    }

    public void deleteFileById(String mediaId){
        String filePath = "";
        try {
            MediaFiles fileById = getFileById(mediaId);
            filePath = fileById.getFilePath();

            DeleteObject deleteObject = new DeleteObject(filePath);
            RemoveObjectsArgs removeObjectsArgs = RemoveObjectsArgs.builder().bucket(bucket_video).
                    objects(Collections.singletonList(deleteObject)).build();
            removeMinioChunk(removeObjectsArgs);
            log.debug("在minio删除文件成功, filePath:{}", filePath);
        } catch (Exception e) {
            // e.printStackTrace();
            log.error("在minio删除文件出错, filePath:{}, 错误原因:{}", filePath, e.getMessage(), e);
            CustomizeException.cast("文件系统删除文件失败");
        }
        mediaFilesMapper.deleteById(mediaId);
    }

    /**
     * @param localFilePath 文件地址
     * @param bucket        桶
     * @param objectName    对象名称
     * @return void
     * 将文件写入minIO
     */
    public boolean addMediaFilesToMinIO(String localFilePath, String mimeType, String bucket, String objectName) {
        try {
            UploadObjectArgs testbucket = UploadObjectArgs.builder()
                    .bucket(bucket)
                    .object(objectName)
                    .filename(localFilePath)
                    .contentType(mimeType)
                    .build();
            minioClient.uploadObject(testbucket);
            log.debug("上传文件到minio成功,bucket:{},objectName:{}", bucket, objectName);
            System.out.println("上传成功");
            return true;
        } catch (Exception e) {
            // e.printStackTrace();
            log.error("上传文件到minio出错, bucket:{}, objectName:{}, 错误原因:{}", bucket, objectName, e.getMessage(), e);
            CustomizeException.cast("上传文件到文件系统失败");
        }
        return false;
    }

    /**
     * 将文件信息添加到文件表
     *
     * @param companyId           机构id
     * @param fileMd5             文件md5值
     * @param uploadFileParamsDto 上传文件的信息
     * @param bucket              桶
     * @param objectName          对象名称
     * @return com.edu.kaizhi.media.model.po.MediaFiles
     */
    @Transactional
    public MediaFiles addMediaFilesToDb(Long companyId, String fileMd5, UploadFileParamsDto uploadFileParamsDto, String bucket, String objectName) {
        // 上传文件信息到数据库
        MediaFiles mediaFiles = mediaFilesMapper.selectById(fileMd5);
        if (mediaFiles == null) {
            mediaFiles = new MediaFiles();
            BeanUtils.copyProperties(uploadFileParamsDto, mediaFiles);
            // 文件ID
            mediaFiles.setId(fileMd5);
            // 机构ID
            if(companyId == -1L)
                companyId = 1232141425L;
            mediaFiles.setCompanyId(companyId);
            // 桶
            mediaFiles.setBucket(bucket);
            // file_path
            mediaFiles.setFilePath(objectName);
            // file_id
            mediaFiles.setFileId(fileMd5);
            // url
            mediaFiles.setUrl("/" + bucket + "/" + objectName);
            // 上传时间
            mediaFiles.setCreateDate(LocalDateTime.now());
            // 状态
            mediaFiles.setStatus("1");
            // 审核状态
            mediaFiles.setAuditStatus("002003");

            // 插入数据库
            if (mediaFilesMapper.insert(mediaFiles) <= 0) {
                log.debug("上传文件信息到数据库失败, bucket = {}, objectName:{}", bucket, objectName);
                return null;
            }
        }

        return mediaFiles;
    }

    public RestResponse<Boolean> checkFile(String fileMd5) {

        //查询文件信息
        MediaFiles mediaFiles = mediaFilesMapper.selectById(fileMd5);
        if (mediaFiles != null) {
            //桶
            String bucket = mediaFiles.getBucket();
            //存储目录
            String filePath = mediaFiles.getFilePath();
            //文件流
            try {
                InputStream stream = minioClient.getObject(
                        GetObjectArgs.builder()
                                .bucket(bucket)
                                .object(filePath)
                                .build());

                if (stream != null) {
                    //文件已存在
                    return RestResponse.success(true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        //文件不存在
        return RestResponse.success(false);

    }

    public RestResponse<Boolean> checkChunk(String fileMd5, int chunkIndex) {
        //得到分块文件目录
        String chunkFileFolderPath = getChunkFileFolderPath(fileMd5);
        //得到分块文件的路径
        String chunkFilePath = chunkFileFolderPath + chunkIndex;

        try {
            //文件流
            InputStream fileInputStream = minioClient.getObject(
                    GetObjectArgs.builder()
                            .bucket(bucket_video)
                            .object(chunkFilePath)
                            .build());

            if (fileInputStream != null) {
                //分块已存在
                return RestResponse.success(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //分块未存在
        return RestResponse.success(false);
    }

    public RestResponse<Boolean> uploadChunk(String fileMd5, int chunk, String localChunkFilePath) {

        //得到分块文件的目录路径
        String chunkFileFolderPath = getChunkFileFolderPath(fileMd5);
        //得到分块文件的路径
        String chunkFilePath = chunkFileFolderPath + chunk;
        //mimeType
        String mimeType = getMimeType(null);
        //将文件存储至minIO
        boolean uploadSuccess = addMediaFilesToMinIO(localChunkFilePath, mimeType, bucket_video, chunkFilePath);

        if (!uploadSuccess) {
            log.debug("上传分块文件失败:{}", chunkFilePath);
            return RestResponse.validfail("上传分块失败", false);
        }

        // 将分块信息存到数据库中
        uploadSuccess = currentProxy.addMediaChunkToDb(fileMd5, chunkFileFolderPath, bucket_video, chunk);
        if (!uploadSuccess) {
            log.debug("上传分块记录到数据库失败:{}, {}", chunkFilePath, chunk);
            return RestResponse.validfail("上传分块记录到数据库失败", false);
        }

        log.debug("上传分块文件成功:{}", chunkFilePath);
        return RestResponse.success(true);
    }

    public RestResponse<Boolean> mergechunks(Long companyId, String fileMd5, int chunkTotal, UploadFileParamsDto uploadFileParamsDto) {
        //=====获取分块文件路径=====
        String chunkFileFolderPath = getChunkFileFolderPath(fileMd5);
        //组成将分块文件路径组成 List<ComposeSource>
        List<ComposeSource> sourceObjectList = Stream.iterate(0, i -> ++i)
                .limit(chunkTotal)
                .map(i -> ComposeSource.builder()
                        .bucket(bucket_video)
                        .object(chunkFileFolderPath.concat(Integer.toString(i)))
                        .build())
                .collect(Collectors.toList());
        //=====合并=====
        //文件名称
        String fileName = uploadFileParamsDto.getFilename();
        //文件扩展名
        String extName = fileName.substring(fileName.lastIndexOf("."));
        //合并文件路径
        String mergeFilePath = getFilePathByMd5(fileMd5, extName);
        try {
            //合并文件
            minioClient.composeObject(
                    ComposeObjectArgs.builder()
                            .bucket(bucket_video)
                            .object(mergeFilePath)
                            .sources(sourceObjectList)
                            .build());
            log.debug("合并文件成功:{}", mergeFilePath);
        } catch (Exception e) {
            log.debug("合并文件失败, fileMd5:{}, 异常:{}", fileMd5, e.getMessage());
            return RestResponse.validfail("合并文件失败", false);
        }

        // ====验证md5====
        //下载合并后的文件
        File minioFile = downloadFileFromMinIO(bucket_video, mergeFilePath);
        if (minioFile == null) {
            log.debug("下载合并后文件失败,mergeFilePath:{}", mergeFilePath);
            return RestResponse.validfail("下载合并后文件失败", false);
        }

        try (InputStream newFileInputStream = Files.newInputStream(minioFile.toPath())) {
            //minio上文件的md5值
            String md5Hex = DigestUtils.md5Hex(newFileInputStream);
            //比较md5值，不一致则说明文件不完整
            if (!fileMd5.equals(md5Hex)) {
                return RestResponse.validfail("文件合并校验失败，最终上传失败", false);
            }
            //文件大小
            uploadFileParamsDto.setFileSize(minioFile.length());
        } catch (Exception e) {
            log.debug("校验文件失败,fileMd5:{},异常:{}", fileMd5, e.getMessage(), e);
            return RestResponse.validfail("文件合并校验失败，最终上传失败", false);
        } finally {
            minioFile.delete();
        }

        //文件信息入库
        MediaFiles mediaFiles = currentProxy.addMediaFilesToDb(companyId, fileMd5, uploadFileParamsDto, bucket_video, mergeFilePath);
        if (mediaFiles == null) {
            return RestResponse.validfail("文件信息入库失败", false);
        }

        //清除分块文件
        clearChunkFiles(chunkFileFolderPath, chunkTotal);

        // 清除数据库中文件分块上传信息
        clearChunkFromDb(fileMd5);

        // 记录待处理任务
        addWaitingTask(mediaFiles);

        // 向MediaProcess插入记录
        return RestResponse.success(true);
    }

    /**
     * 把文件分块信息入库
     *
     * @param fileMd5       文件md5
     * @param bucket        minio桶
     * @param chunkFilePath 分块文件夹路径
     * @param chunk         分块序号
     * @return MediaMinioFiles
     */
    public boolean addMediaChunkToDb(String fileMd5, String chunkFilePath, String bucket, int chunk) {
        MediaMinioChunk mediaMinioFile = new MediaMinioChunk();
        mediaMinioFile.setFileId(fileMd5);
        mediaMinioFile.setBucket(bucket);
        mediaMinioFile.setFilePath(chunkFilePath);
        mediaMinioFile.setChunk(chunk);
        mediaMinioFile.setCreateDate(LocalDateTime.now());
        if (mediaMinioChunkMapper.insert(mediaMinioFile) <= 0) {
            log.error("保存分块文件信息到数据库失败，{}", mediaMinioFile);
            CustomizeException.cast("保存分块文件信息失败");
        }
        log.debug("保存分块文件信息到数据库成功，{}", mediaMinioFile);
        return true;
    }

    /**
     * 删除数据库中的分块文件所有上传记录
     *
     * @param fileMd5 文件md5
     */
    public void clearChunkFromDb(String fileMd5) {
        LambdaQueryWrapper<MediaMinioChunk> deleteQueryWrapper = new LambdaQueryWrapper<>();
        deleteQueryWrapper.eq(MediaMinioChunk::getFileId, fileMd5);
        try {
            mediaMinioChunkMapper.delete(deleteQueryWrapper);
            log.debug("删除分块上传记录成功");
        } catch (Exception e) {
            e.printStackTrace();
            log.error("删除分块上传记录失败");
        }
    }

    /**
     * 删除数据库中的分块文件单独一条上传记录
     *
     * @param fileMd5 文件md5
     * @param chunk   分块序号
     */
    public void clearOneChunkFromDb(String fileMd5, int chunk) {
        LambdaQueryWrapper<MediaMinioChunk> deleteQueryWrapper = new LambdaQueryWrapper<>();
        deleteQueryWrapper.eq(MediaMinioChunk::getFileId, fileMd5).eq(MediaMinioChunk::getChunk, chunk);
        try {
            mediaMinioChunkMapper.delete(deleteQueryWrapper);
            log.debug("删除一条分块上传记录成功");
        } catch (Exception e) {
            e.printStackTrace();
            log.error("删除一条分块上传记录失败");
        }
    }

    /**
     * 拿到数据库中所有上传超时的文件分块信息
     *
     * @param time 当前任务执行时间
     * @return List<MediaMinioFiles>
     */
    public List<MediaMinioChunk> getChunkTimeoutFiles(LocalDateTime time) {
        return mediaMinioChunkMapper.selectTimeoutChunks(time);
    }

    /**
     * 从minio下载文件
     *
     * @param bucket     桶
     * @param objectName 对象名称
     * @return 下载后的文件
     */
    public File downloadFileFromMinIO(String bucket, String objectName) {
        try {
            InputStream stream = minioClient.getObject(GetObjectArgs.builder()
                    .bucket(bucket)
                    .object(objectName)
                    .build());

            // 创建临时文件并复制内容
            File minioFile = File.createTempFile("minio", ".merge");
            FileUtils.copyInputStreamToFile(stream, minioFile);
            return minioFile;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 得到分块文件的目录
     *
     * @param fileMd5 文件id即md5值
     */
    private String getChunkFileFolderPath(String fileMd5) {
        return fileMd5.charAt(0) + "/" + fileMd5.charAt(1) + "/" + fileMd5 + "/" + "chunk" + "/";
    }

    /**
     * 得到合并后的文件的地址
     *
     * @param fileMd5 文件id即md5值
     * @param fileExt 文件扩展名
     * @return
     */
    public String getFilePathByMd5(String fileMd5, String fileExt) {
        return fileMd5.charAt(0) + "/" + fileMd5.charAt(1) + "/" + fileMd5 + "/" + fileMd5 + fileExt;
    }

    /**
     * 清除分块文件
     *
     * @param chunkFileFolderPath 分块文件路径
     * @param chunkTotal          分块文件总数
     */
    public void clearChunkFiles(String chunkFileFolderPath, int chunkTotal) {
        try {
            // List<DeleteObject> deleteObjects = Stream.iterate(0, i -> ++i)
            //         .limit(chunkTotal)
            //         .map(i -> new DeleteObject(chunkFileFolderPath.concat(Integer.toString(i))))
            //         .collect(Collectors.toList());
            List<DeleteObject> deleteObjects = IntStream.range(0, chunkTotal)
                    .mapToObj(i -> new DeleteObject(chunkFileFolderPath + i))
                    .collect(Collectors.toList());


            RemoveObjectsArgs removeObjectsArgs = RemoveObjectsArgs.builder().
                    bucket(bucket_video).objects(deleteObjects).build();
            removeMinioChunk(removeObjectsArgs);
        } catch (Exception e) {
            e.printStackTrace();
            log.error("清除分块文件失败,chunkFileFolderPath:{}", chunkFileFolderPath);
        }
    }

    /**
     * 清除文件
     *
     * @param FilePath 文件路径
     */
    public void deleteSingleFile(String FilePath) {

        try {
            DeleteObject deleteObject = new DeleteObject(FilePath);

            RemoveObjectsArgs removeObjectsArgs = RemoveObjectsArgs.builder().bucket(bucket_Files).
                    objects(Collections.singletonList(deleteObject)).build();
            removeMinioChunk(removeObjectsArgs);
        } catch (Exception e) {
            e.printStackTrace();
            log.error("清除文件失败,FilePath:{}", FilePath);
        }
    }

    /**
     * 清除单块分块文件
     *
     * @param chunkFileFolderPath 分块文件路径
     * @param chunk               分块文件序号
     */
    public void clearSingleChunk(String chunkFileFolderPath, int chunk) {

        try {
            DeleteObject deleteObject = new DeleteObject(chunkFileFolderPath + chunk);

            RemoveObjectsArgs removeObjectsArgs = RemoveObjectsArgs.builder().bucket(bucket_video).
                    objects(Collections.singletonList(deleteObject)).build();
            removeMinioChunk(removeObjectsArgs);
        } catch (Exception e) {
            e.printStackTrace();
            log.error("清除分块文件失败,chunkFileFolderPath:{}", chunkFileFolderPath);
        }
    }

    /**
     * 批量删除方法，接收待删除的分块信息列表
     *
     * @param chunksToDelete
     */
    public void clearSomeChunksFromDb(List<MediaMinioChunk> chunksToDelete) {
        if (chunksToDelete == null || chunksToDelete.isEmpty()) {
            return;
        }

        LambdaQueryWrapper<MediaMinioChunk> deleteQueryWrapper = new LambdaQueryWrapper<>();

        // 使用or条件将每个fileId和chunk的组合条件加入
        for (MediaMinioChunk chunk : chunksToDelete) {
            deleteQueryWrapper.or(wrapper ->
                    wrapper.eq(MediaMinioChunk::getFileId, chunk.getFileId())
                            .eq(MediaMinioChunk::getChunk, chunk.getChunk()));
        }

        try {
            mediaMinioChunkMapper.delete(deleteQueryWrapper);
            log.debug("批量删除分块上传记录成功，共删除 {} 条记录", chunksToDelete.size());
        } catch (Exception e) {
            e.printStackTrace();
            log.error("批量删除分块上传记录失败");
        }
    }

    /**
     * 调用minioClient内部函数清除分块文件
     *
     * @param removeObjectsArgs
     */
    private void removeMinioChunk(RemoveObjectsArgs removeObjectsArgs) {
        minioClient.removeObjects(removeObjectsArgs).forEach(r -> {
            try {
                r.get();
            } catch (Exception e) {
                e.printStackTrace();
                log.error("清除分块文件失败");
            }
        });
    }

    /**
     * 添加待处理任务
     *
     * @param mediaFiles 媒资文件信息
     */
    private void addWaitingTask(MediaFiles mediaFiles) {
        //文件名称
        String filename = mediaFiles.getFilename();
        //文件扩展名
        String extension = filename.substring(filename.lastIndexOf("."));
        //文件mimeType
        String mimeType = getMimeType(extension);
        // 如果视频文件则添加到视频待处理表
        // 分别对应：mpeg、QuickTime、m4v、wmv、avi、webm、flv、mp4、mkv、3gp、ogv、ts、asf、vob
        String[] video_type = {"video/mpeg", "video/quicktime", "video/x-m4v", "video/x-ms-wmv",
                "video/x-msvideo", "video/webm", "video/x-flv", "video/mp4", "video/x-matroska",
                "video/3gpp", "video/ogg", "video/MP2T", "video/x-ms-asf", "video/dvd"};
        Set<String> videoTypeSet = new HashSet<>();
        Collections.addAll(videoTypeSet, video_type);
        if (videoTypeSet.contains(mimeType)) {
            MediaProcess mediaProcess = new MediaProcess();
            BeanUtils.copyProperties(mediaFiles, mediaProcess);
            mediaProcess.setStatus("1"); // 未处理
            mediaProcess.setCreateDate(LocalDateTime.now());
            mediaProcess.setFailCount(0); // 失败次数默认为0
            mediaProcess.setUrl(null);
            mediaProcessMapper.insert(mediaProcess);
        }
    }
}
