package com.edu.kaizhi.orders.util;

import com.edu.kaizhi.util.SecurityUtil;

public class UserContext {

    private static final ThreadLocal<SecurityUtil.User> userThreadLocal = new ThreadLocal<>();

    // 设置当前线程的用户
    public static void setUser(SecurityUtil.User user) {
        userThreadLocal.set(user);
    }

    // 获取当前线程的用户
    public static SecurityUtil.User getUser() {
        return userThreadLocal.get();
    }

    // 清除当前线程的用户信息
    public static void clear() {
        userThreadLocal.remove();
    }
}