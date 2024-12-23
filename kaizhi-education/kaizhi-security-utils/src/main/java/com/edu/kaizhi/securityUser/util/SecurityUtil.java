package com.edu.kaizhi.securityUser.util;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.securityUser.dto.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;

/***
 * 获取当前登录用户信息，使用解析jwt中的用户信息
 */
@Slf4j
public class SecurityUtil {

    public static User getUser() {
        try {
            Object principalObj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            if (principalObj instanceof String) {
                //取出用户身份信息
                String principal = principalObj.toString();
                //将json转成对象
                User user = JSON.parseObject(principal, User.class);
                return user;
            }
        } catch (Exception e) {
            log.error("获取当前登录用户身份出错:{}", e.getMessage());
            e.printStackTrace();
        }

        return null;
    }
}
