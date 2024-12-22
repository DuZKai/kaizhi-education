package com.edu.kaizhi.orders.aspect;


import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.orders.util.UserContext;
import com.edu.kaizhi.util.SecurityUtil;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class UserAspect {

    @Before("@annotation(com.edu.kaizhi.orders.annotation.RequiresUser)")
    public void beforeMethod() {
        SecurityUtil.User user = SecurityUtil.getUser();
        if (user == null) {
            CustomizeException.cast("用户未登录");
        }
        // 将当前用户存储到 ThreadLocal 中
        UserContext.setUser(user);
    }

    @After("@annotation(com.edu.kaizhi.orders.annotation.RequiresUser)")
    public void afterMethod() {
        // 清除 ThreadLocal 中的用户信息
        UserContext.clear();
    }
}