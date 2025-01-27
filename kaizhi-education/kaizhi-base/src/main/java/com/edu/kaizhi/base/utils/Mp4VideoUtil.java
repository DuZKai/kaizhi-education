package com.edu.kaizhi.base.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Mp4VideoUtil extends VideoUtil {

    String videoPath;
    String absolutePath;

    public Mp4VideoUtil(String ffmpeg_path, String videoPath, String absolutePath) {
        super(ffmpeg_path);
        this.ffmpeg_path = ffmpeg_path;
        this.videoPath = videoPath;
        this.absolutePath = absolutePath;
    }

    //清除已生成的mp4
    private void clearMp4(String mp4_path) {
        //删除原来已经生成的m3u8及ts文件
        File mp4File = new File(mp4_path);
        if (mp4File.exists() && mp4File.isFile()) {
            mp4File.delete();
        }
    }

    /**
     * 视频编码，生成mp4文件
     *
     * @return 成功返回success，失败返回控制台日志
     */
    public String generateMp4() {
        // 清除已生成的mp4
        clearMp4(absolutePath);
        /*
        ffmpeg.exe -i  lucene.avi -c:v libx264 -s 1280x720 -pix_fmt yuv420p -b:a 63k -b:v 753k -r 18 .\lucene.mp4
         */
        List<String> commend = new ArrayList<>();
        // commend.add("D:\\Program Files\\ffmpeg-20180227-fa0c9d6-win64-static\\bin\\ffmpeg.exe");
        commend.add(super.ffmpeg_path);
        commend.add("-i");
        // commend.add("D:\\BaiduNetdiskDownload\\test1.avi");
        commend.add(videoPath);
        commend.add("-c:v");
        commend.add("libx264");
        commend.add("-y");//覆盖输出文件
        commend.add("-s");
        commend.add("1280x720");
        commend.add("-pix_fmt");
        commend.add("yuv420p");
        commend.add("-b:a");
        commend.add("63k");
        commend.add("-b:v");
        commend.add("753k");
        commend.add("-r");
        commend.add("18");
        // commend.add(mp4folder_path  + mp4_name );
        commend.add(absolutePath);
        try {
            ProcessBuilder builder = new ProcessBuilder(commend);
            // 将标准输入流和错误输入流合并，通过标准输入流程读取信息
            builder.redirectErrorStream(true);
            Process p = builder.start();
            String outstring = waitForProcess(p);

            if (!checkVideoTimeEqual(videoPath, absolutePath)) {
                return outstring;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "success";
    }

    public static void main(String[] args) throws IOException {
        String ffmpeg_path = "D:\\javaProject\\Project\\kaizhi-education\\ffmpeg\\ffmpeg.exe";// ffmpeg的安装位置
        //源avi视频的路径
        String video_path = "C:\\Users\\Administrator\\Desktop\\愿得一人心.avi";
        //转换后mp4文件的路径
        String absolutePath = "C:\\Users\\Administrator\\Desktop\\愿得一人心.mp4";

        //创建工具类对象
        Mp4VideoUtil videoUtil = new Mp4VideoUtil(ffmpeg_path, video_path, absolutePath);
        //开始视频转换，成功将返回success
        String s = videoUtil.generateMp4();
        System.out.println(s);
    }
}