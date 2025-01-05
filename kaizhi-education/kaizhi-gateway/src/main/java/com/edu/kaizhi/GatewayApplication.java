package com.edu.kaizhi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
@EnableFeignClients

public class GatewayApplication {

	public static void main(String[] args) {
		ApplicationContext applicationContext = SpringApplication.run(GatewayApplication.class, args);
		printMsg(applicationContext, GatewayApplication.class);
	}

}
