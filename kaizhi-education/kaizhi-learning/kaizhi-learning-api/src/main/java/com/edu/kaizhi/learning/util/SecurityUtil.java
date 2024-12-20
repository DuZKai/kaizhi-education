package com.edu.kaizhi.learning.util;

import com.alibaba.fastjson.JSON;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * 获取当前用户身份工具类
 */
@Slf4j
public class SecurityUtil {

    public static User getUser() {
        String principal = "";
        try {
            Object principalObj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            if (principalObj instanceof String) {
                //取出用户身份信息
                principal = principalObj.toString();
                //将json转成对象
                return JSON.parseObject(principal, User.class);
            }
        } catch (Exception e) {
            log.info("解析到当前用户信息为：" + principal);
            log.error("获取当前登录用户身份出错:{}", e.getMessage());
            e.printStackTrace();
        }

        return null;
    }


    /**
     * 用户信息，避免依赖耦合，多拷贝一份
     */
    @Data
    public static class User implements Serializable {

        private static final long serialVersionUID = 1L;

        private String id;

        private String username;

        private String password;

        private String salt;

        private String name;
        private String nickname;
        private String wxUnionid;
        private String companyId;
        /**
         * 头像
         */
        private String userpic;

        private String utype;

        private LocalDateTime birthday;

        private String sex;

        private String email;

        private String cellphone;

        private String qq;

        /**
         * 用户状态
         */
        private String status;

        private LocalDateTime createTime;

        private LocalDateTime updateTime;


    }


}
