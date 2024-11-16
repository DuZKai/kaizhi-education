package com.edu.kaizhi.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.model.po.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;


@Component
@Slf4j
public class UserServiceImpl implements UserDetailsService {
    @Autowired
    UserMapper userMapper;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 根据Username查询用户
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if (user == null) {
            //返回空表示用户不存在, Spring Security会抛出异常：用户不存在
            return null;
        }
        // 取出数据库存储的正确密码，封装一个UserDetails对象给Spring Security框架做密码校验
        String password = user.getPassword();
        //用户权限,如果不加报Cannot pass a null GrantedAuthority collection
        String[] authorities = {"test"};
        // 用户信息转json
        user.setPassword(null);
        String userJson = JSON.toJSONString(user);

        //创建UserDetails对象,权限信息待实现授权功能时再向UserDetail中加入
        return org.springframework.security.core.userdetails.User.withUsername(userJson).
                password(password).authorities(authorities).build();
    }
}
