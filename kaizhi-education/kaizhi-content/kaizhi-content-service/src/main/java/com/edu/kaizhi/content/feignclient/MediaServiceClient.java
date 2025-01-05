package com.edu.kaizhi.content.feignclient;

import com.edu.kaizhi.content.config.FeignConfig;
import com.edu.kaizhi.content.config.MultipartSupportConfig;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

/**
 * 远程调用媒资服务接口
 */
// 令牌中继只对deleteCourseFile起效，因为uploadFile使用xxl-job，无法解析上下文
@FeignClient(value = "media-api", configuration = {MultipartSupportConfig.class, FeignConfig.class}, fallbackFactory = MediaServiceClientFallbackFactory.class)
public interface MediaServiceClient {

    @RequestMapping(value = "/media/upload/coursefile", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    String uploadFile(@RequestPart("filedata") MultipartFile upload, @RequestParam(value = "objectName", required = false) String objectName,
                      @RequestParam(value = "companyId", required = false) Long companyId);

    @DeleteMapping(value = "/media/delete/coursefile/{courseId}")
    void deleteCourseFile(@PathVariable("courseId") String courseId);
}
