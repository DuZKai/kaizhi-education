package com.edu.kaizhi.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class RefreshTokenController {

    @Autowired
    private TokenStore tokenStore;

    @Autowired
    private JwtAccessTokenConverter accessTokenConverter;

    @Resource(name = "authorizationServerTokenServicesCustom")
    private AuthorizationServerTokenServices tokenServices;

    @PostMapping("/refresh-token")
    public OAuth2AccessToken refreshToken(@RequestParam("access_token") String accessToken) {
        // 校验 accessToken 的有效性
        OAuth2AccessToken existingToken = tokenStore.readAccessToken(accessToken);
        if (existingToken == null) {
            return null;
        }

        // 通过旧令牌的用户信息生成新令牌
        OAuth2Authentication authentication = tokenStore.readAuthentication(accessToken);
        OAuth2AccessToken result = tokenServices.createAccessToken(authentication);
        return result;
    }
}