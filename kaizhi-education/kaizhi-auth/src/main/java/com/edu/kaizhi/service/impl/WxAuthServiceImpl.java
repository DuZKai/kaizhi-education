package com.edu.kaizhi.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.service.AuthService;
import com.edu.kaizhi.service.WxAuthService;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.mapper.UserRoleMapper;
import com.edu.kaizhi.ucenter.model.dto.AuthParamsDto;
import com.edu.kaizhi.ucenter.model.dto.UserExt;
import com.edu.kaizhi.ucenter.model.po.User;
import com.edu.kaizhi.ucenter.model.po.UserRole;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

@Slf4j
@Service("wxAuthService")
public class WxAuthServiceImpl implements AuthService, WxAuthService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    UserRoleMapper userRoleMapper;

    @Autowired
    WxAuthServiceImpl currentProxy;

    @Value("${weixin.appid}")
    String appid;
    @Value("${weixin.secret}")
    String secret;

    // @Autowired
    // PasswordEncoder passwordEncoder;

    public UserExt execute(AuthParamsDto authParamsDto) {
        //账号
        String username = authParamsDto.getUsername();
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if (user == null) {
            // 用户不存在
            throw new RuntimeException("账号不存在");
        }
        UserExt userExt = new UserExt();
        BeanUtils.copyProperties(user, userExt);
        return userExt;
    }

    // 微信扫码认证
    @Override
    public User wxAuth(String code) {
        // 申请令牌
        Map<String, String> access_token_map = getAccess_token(code);
        if (access_token_map == null) {
            return null;
        }
        System.out.println(access_token_map);
        String openid = access_token_map.get("openid");
        String access_token = access_token_map.get("access_token");
        // 携带令牌查询用户
        Map<String, String> userinfo = getUserinfo(access_token, openid);
        if (userinfo == null) {
            return null;
        }

        // 将用户信息写入本项目数据库
        // 注意：事务方法不被非事务方法控制，需要代理
        return currentProxy.addWxUser(userinfo);
    }

    /**
     * 携带授权码申请令牌
     *
     * @param code
     * @return 申请访问令牌, 响应示例
     * {
     * "access_token":"ACCESS_TOKEN",
     * "expires_in":7200,
     * "refresh_token":"REFRESH_TOKEN",
     * "openid":"OPENID",
     * "scope":"SCOPE",
     * "unionid": "o6_bmasdasdsad6_2sgVt7hMZOPfL"
     * }
     */
    private Map<String, String> getAccess_token(String code) {

        String wxUrl_template = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code";
        //请求微信地址
        String wxUrl = String.format(wxUrl_template, appid, secret, code);

        log.info("调用微信接口申请access_token, url:{}", wxUrl);

        ResponseEntity<String> exchange = restTemplate.exchange(wxUrl, HttpMethod.POST, null, String.class);

        // 获取响应结果
        String result = exchange.getBody();
        log.info("调用微信接口申请access_token: 返回值:{}", result);

        return JSON.parseObject(result, Map.class);
    }

    // 携带令牌查询用户
    private Map<String, String> getUserinfo(String access_token, String openid) {

        String wxUrl_template = "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s";
        //请求微信地址
        String wxUrl = String.format(wxUrl_template, access_token, openid);

        log.info("调用微信接口申请access_token, url:{}", wxUrl);

        ResponseEntity<String> exchange = restTemplate.exchange(wxUrl, HttpMethod.POST, null, String.class);

        //防止乱码进行转码
        String result = new String(Objects.requireNonNull(exchange.getBody()).getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        log.info("调用微信接口申请access_token: 返回值:{}", result);
        return JSON.parseObject(result, Map.class);
    }

    @Transactional
    public User addWxUser(Map<String, String> userInfo_map) {
        String unionid = userInfo_map.get("unionid").toString();
        //根据unionid查询数据库
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getWxUnionid, unionid));
        if (user != null) {
            return user;
        }
        user = new User();
        String userId = UUID.randomUUID().toString(); // 主键
        user.setId(userId);
        user.setWxUnionid(unionid);
        //记录从微信得到的昵称
        user.setNickname(userInfo_map.get("nickname").toString());
        user.setUserpic(userInfo_map.get("headimgurl").toString());
        user.setName(userInfo_map.get("nickname").toString());
        user.setUsername(unionid);
        user.setPassword(unionid);
        user.setUtype("101001");//学生类型
        user.setStatus("1");//用户状态
        user.setCreateTime(LocalDateTime.now());
        userMapper.insert(user);
        UserRole userRole = new UserRole();
        userRole.setId(UUID.randomUUID().toString());
        userRole.setUserId(userId);
        userRole.setRoleId("17");//学生角色
        userRoleMapper.insert(userRole);
        return user;
    }

}