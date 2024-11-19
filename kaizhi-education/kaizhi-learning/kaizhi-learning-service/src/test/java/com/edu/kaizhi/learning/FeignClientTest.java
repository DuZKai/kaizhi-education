package com.edu.kaizhi.learning;

import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.learning.feignclient.ContentServiceClient;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

@SpringBootTest
public class FeignClientTest {

    @Autowired
    ContentServiceClient contentServiceClient;


    @Test
    public void testContentServiceClient() {
        CoursePublish coursepublish = contentServiceClient.getCoursePublish(121L);
        Assertions.assertNotNull(coursepublish);
    }
}