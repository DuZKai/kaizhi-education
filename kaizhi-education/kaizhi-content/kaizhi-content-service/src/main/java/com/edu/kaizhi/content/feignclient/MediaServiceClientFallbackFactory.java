package com.edu.kaizhi.content.feignclient;

import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Component
public class MediaServiceClientFallbackFactory implements FallbackFactory<MediaServiceClient> {
    @Override
    public MediaServiceClient create(Throwable throwable) {
        return new MediaServiceClient() {
            @Override
            public String uploadFile(MultipartFile upload, String objectName, Long companyId) {
                log.error("调用上传媒资服务发生熔断:{}", throwable.toString(),throwable);
                return null;
            }

            @Override
            public void deleteCourseFile(String courseId) {
                log.error("调用删除课程服务发生熔断:{}", throwable.toString(),throwable);
            }
        };
    }
}
