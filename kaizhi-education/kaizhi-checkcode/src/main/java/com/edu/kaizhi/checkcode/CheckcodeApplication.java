package com.edu.kaizhi.checkcode;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
public class CheckcodeApplication {
    private static final Logger log = LogManager.getLogger(CheckcodeApplication.class);

    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(CheckcodeApplication.class, args);
        printMsg(applicationContext, log);
    }

}
