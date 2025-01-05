package com.edu.kaizhi.base.utils;

import org.apache.logging.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.core.env.Environment;

import java.lang.management.ManagementFactory;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Optional;

public class GetApplicationStartMsgUtil {
    public static void printMsg(ApplicationContext applicationContext, Logger log) {
        try {
            String ip = InetAddress.getLocalHost().getHostAddress();
            Environment env = applicationContext.getEnvironment();
            String port = env.getProperty("server.port");
            String path = Optional.ofNullable(env.getProperty("server.servlet.context-path")).orElse("/");

            String ex = "http://" + ip + ":" + port + path;

            long time = (System.currentTimeMillis() - ManagementFactory.getRuntimeMXBean().getStartTime()) / 1000;

            String str = "\n" +
                    "<----------------------< Application is running! >---------------------->\n" +
                    "\n" +
                    "\tStart Time: {}s\n" +
                    "\tAccess URL: {}\n" +
                    "-------------------------------------------------------------------------\n";

            log.info(str, time, ex);

        } catch (UnknownHostException e) {
            log.error("Error getting localhost IP", e);
        }
    }
}
