package com.edu.kaizhi.auth.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.auth.service.AuthService;
import com.edu.kaizhi.auth.service.InfoService;
import com.edu.kaizhi.ucenter.mapper.MenuMapper;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.model.dto.AuthParamsDto;
import com.edu.kaizhi.ucenter.model.dto.UserExt;
import com.edu.kaizhi.ucenter.model.po.Menu;
import com.edu.kaizhi.ucenter.model.po.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
@Slf4j
public class UserServiceImpl implements UserDetailsService {
    @Autowired
    UserMapper userMapper;

    // 需要注入ApplicationContext，因为在AuthService多种实现，无法直接注入
    @Autowired
    ApplicationContext applicationContext;

    @Autowired
    MenuMapper menuMapper;

    @Autowired
    private InfoService infoService;

    // 传入请求参数就是AuthParamsDto
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        // 将Json转为AuthParamsDto
        AuthParamsDto authParamsDto = null;
        try {
            authParamsDto = JSON.parseObject(s, AuthParamsDto.class);
        } catch (Exception e) {
            throw new RuntimeException("请求认证参数不符合要求");
        }

        // 认证类型
        String authType = authParamsDto.getAuthType();
        // 根据认证类型获取对应的AuthService，记得需要authType传入参数首字母大写
        String beanName = authType + "AuthService";
        AuthService authService = applicationContext.getBean(beanName, AuthService.class);
        // 调用多态方法execute实现认证
        UserExt userExt = authService.execute(authParamsDto);

        // 根据用户名查询用户信息并存放到UV
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, authParamsDto.getUsername()));
        infoService.addUV(user.getId());

        // 封装UserExt到UserDetails
        return getUserPrincipal(userExt);
    }

    /**
     * 查询用户信息
     *
     * @param user 用户id，主键
     * @return com.edu.kaizhi.ucenter.model.po.User 用户信息
     */
    public UserDetails getUserPrincipal(UserExt user) {
        // 根据用户id查询用户权限，如果不加报Cannot pass a null GrantedAuthority collection
        String[] authorities = {};
        List<Menu> menus = menuMapper.selectPermissionByUserId(user.getId());
        if(!menus.isEmpty()){
            authorities = menus.stream().map(Menu::getCode).toArray(String[]::new);
        }
        String password = user.getPassword();
        //为了安全在令牌中不放密码
        user.setPassword(null);
        //将user对象转json
        String userString = JSON.toJSONString(user);
        //创建UserDetails对象,同时向UserDetail加入权限信息
        return org.springframework.security.core.userdetails.User.withUsername(userString).
                password(password).authorities(authorities).build();
    }

}
