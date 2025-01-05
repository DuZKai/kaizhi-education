package com.edu.kaizhi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
public class OrdersApiApplication {
    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(OrdersApiApplication.class, args);
        printMsg(applicationContext, OrdersApiApplication.class);
    }

}
