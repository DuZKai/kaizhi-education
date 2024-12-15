package com.edu.kaizhi.auth.controller;

import com.edu.kaizhi.auth.service.WxAuthService;
import com.edu.kaizhi.ucenter.model.po.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Slf4j
@Controller
public class WxLoginController {
    @Autowired
    WxAuthService wxAuthService;

    // 由于修改尚硅谷的APP微信扫码，所以需要修改端口从63070到8160，否则无法使用微信扫码登录
    @RequestMapping("/wxLogin")
    public String wxLogin(String code, String state) throws IOException {
        log.debug("微信扫码回调, code:{}, state:{}", code, state);
        // 请求微信申请令牌，拿到令牌查询用户信息，将用户信息写入本项目数据库
        User user = wxAuthService.wxAuth(code);

        if (user == null) {
            return "redirect:http://www.kaizhi.edu.cn/error.html";
        }

        return "redirect:http://www.kaizhi.edu.cn/sign.html?username=" + user.getUsername() + "&authType=wx";
    }
}
