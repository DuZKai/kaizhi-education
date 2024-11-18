package com.edu.kaizhi.auth.controller;

import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.model.dto.FindPswDto;
import com.edu.kaizhi.ucenter.model.dto.RegisterDto;
import com.edu.kaizhi.ucenter.model.po.User;
import com.edu.kaizhi.ucenter.service.VerifyService;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

/**
 * 测试controller
 */
@Slf4j
@RestController
public class LoginController {

    @Autowired
    UserMapper userMapper;

    @Autowired
    VerifyService verifyService;


    @RequestMapping("/login-success")
    public String loginSuccess() {
        return "登录成功";
    }

    @RequestMapping("/user/{id}")
    public User getuser(@PathVariable("id") String id) {
        return userMapper.selectById(id);
    }

    @RequestMapping("/r/r1")
    @PreAuthorize("hasAuthority('p1')")//拥有p1权限方可访问
    public String r1() {
        return "访问r1资源";
    }

    @RequestMapping("/r/r2")
    @PreAuthorize("hasAuthority('p2')")//拥有p2权限方可访问
    public String r2() {
        return "访问r2资源";
    }

    @ApiOperation(value = "找回密码", tags = "找回密码")
    @PostMapping("/findpassword")
    public void findPassword(@RequestBody FindPswDto findPswDto) {
        verifyService.findPassword(findPswDto);
    }

    @ApiOperation(value = "注册", tags = "注册")
    @PostMapping("/register")
    public void register(@RequestBody RegisterDto registerDto) {
        verifyService.register(registerDto);
    }
}
