package com.edu.kaizhi.base.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * 此文件作为视频文件处理父类，提供：
 * 1、查看视频时长
 * 2、校验两个视频的时长是否相等
 */
public class VideoUtil {

    String ffmpeg_path; // ffmpeg的安装位置

    public VideoUtil(String ffmpeg_path) {
        this.ffmpeg_path = ffmpeg_path;
    }


    //检查视频时间是否一致
    public Boolean checkVideoTimeEqual(String source, String target) {
        String sourceTime = getVideoTime(source);
        if (sourceTime == null) {
            return false;
        }
        //取出时分秒
        sourceTime = sourceTime.substring(0, sourceTime.lastIndexOf("."));
        String targetTime = getVideoTime(target);
        if (targetTime == null) {
            return false;
        }
        //取出时分秒
        targetTime = targetTime.substring(0, targetTime.lastIndexOf("."));
        return sourceTime.equals(targetTime);
    }

    //获取视频时间(时：分：秒：毫秒)
    public String getVideoTime(String video_path) {
        /*
        ffmpeg -i  lucene.mp4
         */
        List<String> commend = new ArrayList<>();
        commend.add(ffmpeg_path);
        commend.add("-i");
        commend.add(video_path);
        try {
            ProcessBuilder builder = new ProcessBuilder(commend);
            //将标准输入流和错误输入流合并，通过标准输入流程读取信息
            builder.redirectErrorStream(true);
            Process p = builder.start();
            String outstring = waitForProcess(p);
            System.out.println(outstring);
            int start = outstring.trim().indexOf("Duration: ");
            if (start >= 0) {
                int end = outstring.trim().indexOf(", start:");
                if (end >= 0) {
                    return outstring.substring(start + 10, end).trim();
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public String waitForProcess(Process process) {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append(System.lineSeparator());
            }
            process.waitFor();
            return output.toString();
        } catch (IOException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) throws IOException {
        String ffmpeg_path = "D:\\javaProject\\Project\\kaizhi-education\\ffmpeg\\ffmpeg.exe";// ffmpeg的安装位置
        VideoUtil videoUtil = new VideoUtil(ffmpeg_path);
        String video_time = videoUtil.getVideoTime("C:\\Users\\Administrator\\Desktop\\愿得一人心.avi");
        System.out.println(video_time);
    }
}
