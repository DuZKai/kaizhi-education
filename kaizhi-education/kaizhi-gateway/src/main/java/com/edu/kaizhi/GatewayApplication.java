package com.edu.kaizhi;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;

import static com.edu.kaizhi.base.utils.GetApplicationStartMsgUtil.printMsg;

@SpringBootApplication
@EnableFeignClients
public class GatewayApplication {

	private static final Logger log = LogManager.getLogger(GatewayApplication.class);
	public static void main(String[] args) {
		ApplicationContext applicationContext = SpringApplication.run(GatewayApplication.class, args);
		printMsg(applicationContext, log);
	}

}
