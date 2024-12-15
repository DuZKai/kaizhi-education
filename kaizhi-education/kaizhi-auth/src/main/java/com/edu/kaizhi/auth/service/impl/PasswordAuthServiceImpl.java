package com.edu.kaizhi.auth.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.auth.service.AuthService;
import com.edu.kaizhi.ucenter.feignclient.CheckCodeClient;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.model.dto.AuthParamsDto;
import com.edu.kaizhi.ucenter.model.dto.UserExt;
import com.edu.kaizhi.ucenter.model.po.User;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service("passwordAuthService")
public class PasswordAuthServiceImpl implements AuthService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    CheckCodeClient checkCodeClient;

    @Override
    public UserExt execute(AuthParamsDto authParamsDto) {
        //账号
        String username = authParamsDto.getUsername();

        // TODO:暂时屏蔽校验验证码
        // // 输入验证码
        // String checkcode = authParamsDto.getCheckcode();
        // // 验证码对应KEY
        // String checkcodekey = authParamsDto.getCheckcodekey();
        //
        // if(StringUtils.isEmpty(checkcode) || StringUtils.isEmpty(checkcodekey)){
        //     throw new RuntimeException("请输入验证码");
        // }
        //
        // 远程调用验证码服务校验验证码
        // Boolean verify = checkCodeClient.verify(checkcodekey, checkcode);
        // if(verify == null || !verify){
        //     throw new RuntimeException("验证码错误");
        // }

        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if (user == null) {
            //返回空表示用户不存在
            throw new RuntimeException("账号不存在");
        }
        //校验密码
        //取出数据库存储的正确密码
        String passwordDb = user.getPassword();
        String passwordForm = authParamsDto.getPassword();
        boolean matches = passwordEncoder.matches(passwordForm, passwordDb);
        if (!matches) {
            throw new RuntimeException("账号或密码错误");
        }
        UserExt UserExt = new UserExt();
        BeanUtils.copyProperties(user, UserExt);
        return UserExt;
    }
}

