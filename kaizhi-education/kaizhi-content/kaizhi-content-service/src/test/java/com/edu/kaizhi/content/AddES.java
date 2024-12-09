package com.edu.kaizhi.content;

import com.edu.kaizhi.content.feignclient.CourseIndex;
import com.edu.kaizhi.content.feignclient.SearchServiceClient;
import com.edu.kaizhi.content.mapper.CoursePublishMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.concurrent.CompletableFuture;

@SpringBootTest
public class AddES {

    @Autowired
    CoursePublishMapper coursePublishMapper;

    @Autowired
    SearchServiceClient searchServiceClient;

    @Test
    void addCourseToESService() {
        coursePublishMapper.selectList(null).forEach(coursePublish -> {
            CourseIndex courseIndex = new CourseIndex();
            BeanUtils.copyProperties(coursePublish, courseIndex);
            CompletableFuture.runAsync(() -> searchServiceClient.add(courseIndex));
        });
    }

}
