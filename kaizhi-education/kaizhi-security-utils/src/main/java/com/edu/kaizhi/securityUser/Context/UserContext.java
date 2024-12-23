package com.edu.kaizhi.securityUser.Context;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.securityUser.dto.User;

import java.util.Objects;

public class UserContext {

    private static final ThreadLocal<User> userThreadLocal = new ThreadLocal<>();

    // 设置当前线程的用户
    public static void setUser(User user) {
        userThreadLocal.set(user);
    }

    // 获取当前线程的用户
    public static User getUser() {
        User user = userThreadLocal.get();
        if (user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息", 401);
        }
        return user;
    }

    // 清除当前线程的用户信息
    public static void clear() {
        userThreadLocal.remove();
    }

    // 获取当前用户的 companyId
    public static Long getCompanyId() {
        User user = getUser();

        Long companyId = 1232141425L; // 默认值
        if (Objects.equals(user.getUtype(), "101003")) {
            companyId = -1L;
        } else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        } else {
            CustomizeException.cast("用户身份不合法，不允许继续往下执行操作", 403);
        }
        return companyId;
    }

    // 判断当前用户权限
    public static void isPermission() {
        User user = getUser();
        if (Objects.equals(user.getUtype(), "101001"))
            CustomizeException.cast("用户身份不合法，不允许继续往下执行操作", 403);
    }
}