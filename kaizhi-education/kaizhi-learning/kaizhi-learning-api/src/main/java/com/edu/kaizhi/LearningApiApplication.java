package com.edu.kaizhi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.annotation.EnableScheduling;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@EnableFeignClients(basePackages={"com.edu.kaizhi.*.feignclient"})
@SpringBootApplication
@EnableCaching // 开启缓存注解
@EnableScheduling // 开启定时任务
public class LearningApiApplication {

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(LearningApiApplication.class, args);
        printMsg(applicationContext, LearningApiApplication.class);
    }

}
