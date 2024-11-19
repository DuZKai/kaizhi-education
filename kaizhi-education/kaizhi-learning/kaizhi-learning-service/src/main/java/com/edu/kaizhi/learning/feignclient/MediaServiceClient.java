package com.edu.kaizhi.learning.feignclient;

import com.edu.kaizhi.base.model.RestResponse;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 */
@FeignClient(value = "media-api", fallbackFactory = MediaServiceClientFallbackFactory.class)
public interface MediaServiceClient {

    @GetMapping("/media/open/preview/{mediaId}")
    public RestResponse<String> getPlayUrlByMediaId(@PathVariable("mediaId") String mediaId);

}
