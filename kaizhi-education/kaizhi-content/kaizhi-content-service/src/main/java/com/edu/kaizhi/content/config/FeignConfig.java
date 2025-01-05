package com.edu.kaizhi.content.config;

import com.edu.kaizhi.content.interceptor.FeignRequestInterceptor;
import feign.Feign;
import feign.Logger;
import feign.RequestInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class FeignConfig {
    /**
     * 用于实现令牌信息中继的feign配置
     */
    @Bean
    public RequestInterceptor requestInterceptor() {
        return new FeignRequestInterceptor();
    }

    @Bean
    public Logger.Level feignLoggerLevel() {
        return Logger.Level.FULL;
    }

    // 启用 Feign 的上下文传播功能
    @Bean
    public Feign.Builder feignBuilder() {
        return Feign.builder().requestInterceptor(new FeignRequestInterceptor());
    }
}