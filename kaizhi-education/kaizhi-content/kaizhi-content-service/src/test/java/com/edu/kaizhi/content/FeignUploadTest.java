package com.edu.kaizhi.content;

import com.edu.kaizhi.content.config.MultipartSupportConfig;
import com.edu.kaizhi.content.feignclient.MediaServiceClient;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * 测试远程调用媒资功能
 */
@SpringBootTest
public class FeignUploadTest {
    @Autowired
    MediaServiceClient mediaServiceClient;

    //远程调用，上传文件
    // @Test
    public void test() {

        MultipartFile multipartFile = MultipartSupportConfig.getMultipartFile(new File("C:\\Users\\Administrator\\Desktop\\test.html"));
        if(mediaServiceClient.uploadFile(multipartFile,"course/test.html") == null){
            System.out.println("进入熔断，走降级逻辑，上传失败");
        }
    }


}
