package com.edu.kaizhi.service;

import com.edu.kaizhi.ucenter.model.po.User;

/**
 * 微信扫码接入
 * */
public interface WxAuthService {
    /**
     * 微信扫码认证，申请令牌，携带令牌查询用户，将用户信息写入本项目数据库
     * */
    public User wxAuth(String code);
}
