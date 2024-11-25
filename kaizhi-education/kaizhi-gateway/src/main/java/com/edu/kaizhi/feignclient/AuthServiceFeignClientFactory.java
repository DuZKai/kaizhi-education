package com.edu.kaizhi.feignclient;

import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AuthServiceFeignClientFactory implements FallbackFactory<AuthServiceFeignClient> {
    @Override
    public AuthServiceFeignClient create(Throwable throwable) {
        return (accessToken) -> {
            log.debug("调用刷新JWT令牌服务熔断异常:{}", throwable.getMessage());
            return null;
        };
    }
}
