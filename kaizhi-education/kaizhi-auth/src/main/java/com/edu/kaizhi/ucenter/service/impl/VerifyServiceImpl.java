package com.edu.kaizhi.ucenter.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.mapper.UserRoleMapper;
import com.edu.kaizhi.ucenter.model.dto.FindPswDto;
import com.edu.kaizhi.ucenter.model.dto.RegisterDto;
import com.edu.kaizhi.ucenter.model.po.User;
import com.edu.kaizhi.ucenter.model.po.UserRole;
import com.edu.kaizhi.ucenter.service.VerifyService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.UUID;


@Service
public class VerifyServiceImpl implements VerifyService {

    @Autowired
    RedisTemplate redisTemplate;

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserRoleMapper userRoleMapper;

    public Boolean verify(String email, String checkcode) {
        // 1. 从redis中获取缓存的验证码
        String codeInRedis = (String) redisTemplate.opsForValue().get(email);
        // 2. 判断是否与用户输入的一致
        if (codeInRedis != null && codeInRedis.equalsIgnoreCase(checkcode)) {
            redisTemplate.delete(email);
            return true;
        }
        return false;
    }

    @Override
    public void findPassword(FindPswDto findPswDto) {
        // TODO:暂时屏蔽校验验证码
        // String email = findPswDto.getEmail();
        // String checkcode = findPswDto.getCheckcode();
        // if (!verify(email, checkcode)) {
        //     CustomizeException.cast("验证码输入错误");
        // }
        String password = findPswDto.getPassword();
        String confirmpwd = findPswDto.getConfirmpwd();
        if (!password.equals(confirmpwd)) {
            CustomizeException.cast("两次输入的密码不一致");
        }
        LambdaQueryWrapper<User> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(User::getEmail, findPswDto.getEmail());
        User user = userMapper.selectOne(lambdaQueryWrapper);
        if (user == null) {
            CustomizeException.cast("用户不存在");
        }
        user.setPassword(new BCryptPasswordEncoder().encode(password));
        userMapper.updateById(user);
    }

    @Transactional
    public void register(RegisterDto registerDto) {
        String uuid = UUID.randomUUID().toString();
        // TODO:暂时屏蔽校验验证码
        // String email = registerDto.getEmail();
        // String checkcode = registerDto.getCheckcode();
        // Boolean verify = verify(email, checkcode);
        // if (!verify) {
        //     CustomizeException.cast("验证码输入错误");
        // }
        String password = registerDto.getPassword();
        String confirmpwd = registerDto.getConfirmpwd();
        if (!password.equals(confirmpwd)) {
            CustomizeException.cast("两次输入的密码不一致");
        }
        LambdaQueryWrapper<User> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(User::getEmail, registerDto.getEmail());
        User user = userMapper.selectOne(lambdaQueryWrapper);
        if (user != null) {
            CustomizeException.cast("用户已存在，一个邮箱只能注册一个账号");
        }
        user = new User();
        BeanUtils.copyProperties(registerDto, user);
        user.setPassword(new BCryptPasswordEncoder().encode(password));
        user.setId(uuid);
        user.setUtype("101001");  // 学生类型
        user.setStatus("1");
        user.setName(registerDto.getNickname());
        user.setCreateTime(LocalDateTime.now());
        if (userMapper.insert(user) <= 0) {
            CustomizeException.cast("新增用户信息失败");
        }
        UserRole userRole = new UserRole();
        userRole.setId(uuid);
        userRole.setUserId(uuid);
        userRole.setRoleId("17");
        userRole.setCreateTime(LocalDateTime.now());
        if (userRoleMapper.insert(userRole) <= 0) {
            CustomizeException.cast("新增用户角色信息失败");
        }
    }
}