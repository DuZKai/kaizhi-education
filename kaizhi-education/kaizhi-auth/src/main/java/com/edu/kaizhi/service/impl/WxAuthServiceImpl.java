package com.edu.kaizhi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.service.AuthService;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.model.dto.AuthParamsDto;
import com.edu.kaizhi.ucenter.model.dto.UserExt;
import com.edu.kaizhi.ucenter.model.po.User;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service("wxAuthService")
public class WxAuthServiceImpl implements AuthService {

    // @Autowired
    // UserMapper userMapper;
    //
    // @Autowired
    // PasswordEncoder passwordEncoder;
    //
    //
    @Override
    public UserExt execute(AuthParamsDto authParamsDto) {
        return null;
        // return UserExt;
    }
}

