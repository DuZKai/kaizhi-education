package com.edu.kaizhi.system;

import com.spring4all.swagger.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.annotation.EnableScheduling;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

/**
 * 系统管理启动类
 */
@EnableScheduling
@EnableSwagger2Doc
@SpringBootApplication
public class SystemApplication {

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(SystemApplication.class, args);
        printMsg(applicationContext, SystemApplication.class);
    }
}