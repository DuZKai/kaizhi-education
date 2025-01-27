package com.edu.kaizhi.securityUser.aspect;


import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.dto.User;
import com.edu.kaizhi.securityUser.util.SecurityUtil;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class UserAspect {

    @Before("@annotation(com.edu.kaizhi.securityUser.annotation.RequiresUser)")
    public void beforeMethod() {
        User user = SecurityUtil.getUser();
        if (user == null) {
            CustomizeException.cast("用户未登录", 401);
        }
        // 将当前用户存储到 ThreadLocal 中
        UserContext.setUser(user);
    }

    @After("@annotation(com.edu.kaizhi.securityUser.annotation.RequiresUser)")
    public void afterMethod() {
        // 清除 ThreadLocal 中的用户信息
        UserContext.clear();
    }
}