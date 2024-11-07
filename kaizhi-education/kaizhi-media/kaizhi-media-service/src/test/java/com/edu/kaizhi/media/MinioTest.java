package com.edu.kaizhi.media;

import com.j256.simplemagic.ContentInfo;
import com.j256.simplemagic.ContentInfoUtil;
import io.minio.GetObjectArgs;
import io.minio.MinioClient;
import io.minio.RemoveObjectArgs;
import io.minio.UploadObjectArgs;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.io.IOUtils;
import org.junit.jupiter.api.Test;
import org.springframework.http.MediaType;

import java.io.*;

/**
 * 测试minio的SDK
 */
public class MinioTest {
    static MinioClient minioClient = MinioClient
            .builder()
            .endpoint("http://192.168.101.65:9000")
            .credentials("minioadmin", "minioadmin")
            .build();

    static String bucketName = "testbucket";
    static String objectName = "IP.pdf";
    static String originalPath = "C:\\Users\\Administrator\\Desktop\\";

    //根据扩展名取出mimeType
    ContentInfo extensionMatch = ContentInfoUtil.findExtensionMatch(".mp4");
    String mimeType = MediaType.APPLICATION_OCTET_STREAM_VALUE;//通用mimeType，字节流


    //上传文件
    @Test
    public void upload() {
        try {
            UploadObjectArgs testbucket = UploadObjectArgs.builder()
                    .bucket(bucketName)
                    // .object(objectName)
                    .object("001/" + objectName)//添加子目录
                    .filename(originalPath + objectName)
                    .contentType(mimeType)//默认根据扩展名确定文件内容类型，也可以指定
                    .build();
            minioClient.uploadObject(testbucket);
            System.out.println("上传成功");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("上传失败");
        }

    }

    @Test
    public void delete() {
        try {
            minioClient.removeObject(
                    RemoveObjectArgs.builder().bucket(bucketName).
                            object(objectName).build());
            System.out.println("删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("删除失败");
        }
    }

    //查询文件
    @Test
    public void getFile() throws Exception {
        GetObjectArgs getObjectArgs = GetObjectArgs.builder().bucket(bucketName).object(objectName).build();

        FilterInputStream inputStream = minioClient.getObject(getObjectArgs);
        // 指定输出流
        FileOutputStream outputStream = new FileOutputStream(new File(originalPath + "IP_download.pdf"));
        IOUtils.copy(inputStream, outputStream);

        //校验文件的完整性对文件的内容进行md5
        FileInputStream fileInputStream1 = new FileInputStream(new File(originalPath + objectName));
        String source_md5 = DigestUtils.md5Hex(fileInputStream1);
        FileInputStream fileInputStream = new FileInputStream(new File(originalPath + "IP_download.pdf"));
        String local_md5 = DigestUtils.md5Hex(fileInputStream);
        if (source_md5.equals(local_md5)) {
            System.out.println("下载成功");
        }

    }


}
