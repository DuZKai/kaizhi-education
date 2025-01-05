package com.edu.kaizhi.feignclient;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 搜索服务远程接口
 */
@FeignClient(value = "auth-service", fallbackFactory = AuthServiceFeignClientFactory.class)
@RequestMapping("/auth")
public interface AuthServiceFeignClient  {

    @PostMapping(value = "/refresh-token")
    public OAuth2AccessToken refreshToken(@RequestParam("access_token") String accessToken);

}
