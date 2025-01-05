package com.edu.kaizhi.checkcode;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
public class CheckcodeApplication {

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(CheckcodeApplication.class, args);
        printMsg(applicationContext, CheckcodeApplication.class);
    }

}
