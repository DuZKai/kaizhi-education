package com.edu.kaizhi.learning.feignclient;

import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 *
 */
@Slf4j
@Component
public class ContentServiceClientFallbackFactory implements FallbackFactory<ContentServiceClient> {
    @Override
    public ContentServiceClient create(Throwable throwable) {
        return new ContentServiceClient() {

            @Override
            public CoursePublish getCoursePublish(Long courseId) {
                log.error("调用内容管理服务查询课程信息发生熔断:{}", throwable.toString(),throwable);
                return null;
            }

            @Override
            public Teachplan getTeachplan(Long teachplanId) {
                log.error("调用课程管理服务查询教学计划发生熔断:{}", throwable.toString(),throwable);
                return null;
            }

            @Override
            public TeachplanMedia getTeachplanFromMedia(Long mediaFileId) {
                log.error("调用媒体信息查询教学计划发生熔断:{}", throwable.toString(),throwable);
                return null;
            }
        };
    }
}
