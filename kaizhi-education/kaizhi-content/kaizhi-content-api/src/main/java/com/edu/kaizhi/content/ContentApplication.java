package com.edu.kaizhi.content;

import com.spring4all.swagger.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

/**
 * 内容管理服务启动类
 * */
@SpringBootApplication(scanBasePackages = "com.edu.kaizhi")
@EnableFeignClients(basePackages={"com.edu.kaizhi.content.feignclient"})
// @SpringBootApplication
// @ComponentScan(basePackages = {"com.edu.kaizhi"})
@EnableSwagger2Doc
public class ContentApplication {
    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(ContentApplication.class, args);
        printMsg(applicationContext, ContentApplication.class);
    }
}
