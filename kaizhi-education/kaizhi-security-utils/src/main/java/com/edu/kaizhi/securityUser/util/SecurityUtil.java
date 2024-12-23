package com.edu.kaizhi.securityUser.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
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
                // 检查 principal 是否是有效的 JSON 格式
                if (isValidJson(principal)) {
                    // 将 JSON 字符串转为 User 对象
                    User user = JSON.parseObject(principal, User.class);
                    return user;
                } else {
                    log.error("无效的 JSON 格式: {}", principal);
                }
            }
        } catch (Exception e) {
            log.error("获取当前登录用户身份出错:{}", e.getMessage());
        }

        return null;
    }

    // 检查字符串是否是有效的 JSON 格式
    private static boolean isValidJson(String str) {
        try {
            JSONObject.parseObject(str); // 尝试解析为 JSONObject
            return true;
        } catch (JSONException e) {
            return false;
        }
    }
}
