package com.edu.kaizhi;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.http.client.OkHttp3ClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
@EnableCaching // 开启缓存注解
@EnableFeignClients(basePackages={"com.edu.kaizhi.*.feignclient"})
public class AuthApplication {
    private static final Logger log = LogManager.getLogger(AuthApplication.class);
    @Bean
    RestTemplate restTemplate(){
        return new RestTemplate(new OkHttp3ClientHttpRequestFactory());
    }

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(AuthApplication.class, args);
        printMsg(applicationContext, log);
    }
}
