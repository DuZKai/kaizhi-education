package com.edu.kaizhi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
@EnableCaching // 开启缓存注解
public class SearchApplication {

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(SearchApplication.class, args);
        printMsg(applicationContext, SearchApplication.class);
    }

}
