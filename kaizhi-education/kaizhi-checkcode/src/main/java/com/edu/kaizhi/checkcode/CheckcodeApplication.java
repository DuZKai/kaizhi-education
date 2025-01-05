package com.edu.kaizhi.checkcode;

import com.spring4all.swagger.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
@EnableSwagger2Doc
public class CheckcodeApplication {

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(CheckcodeApplication.class, args);
        printMsg(applicationContext, CheckcodeApplication.class);
    }

}
