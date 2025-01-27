package com.edu.kaizhi.config;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.feignclient.AuthServiceFeignClient;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.exceptions.InvalidTokenException;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Set;

/**
 * 网关认证过滤器
 */
@Component
@Slf4j
public class GatewayAuthFilter implements GlobalFilter, Ordered {

    @Autowired
    private TokenStore tokenStore;

    @Autowired
    private AuthServiceFeignClient authServiceFeignClient;

    //白名单
    private static List<String> whitelist = null;

    static {
        //加载白名单
        try (
                InputStream resourceAsStream = GatewayAuthFilter.class.getResourceAsStream("/security-whitelist.properties");
        ) {
            Properties properties = new Properties();
            properties.load(resourceAsStream);
            Set<String> strings = properties.stringPropertyNames();
            whitelist = new ArrayList<>(strings);
            log.info("加载白名单:{}", whitelist);

        } catch (Exception e) {
            log.error("加载/security-whitelist.properties出错:{}", e.getMessage());
            e.printStackTrace();
        }


    }

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        // return chain.filter(exchange); // 放行所有请求
        String requestUrl = exchange.getRequest().getPath().value();
        log.info("requestUrl:{}", requestUrl);
        AntPathMatcher pathMatcher = new AntPathMatcher();
        //白名单放行
        for (String url : whitelist) {
            if (pathMatcher.match(url, requestUrl)) {
                return chain.filter(exchange);
            }
        }

        //检查token是否存在
        String token = getToken(exchange);
        if (StringUtils.isBlank(token)) {
            log.info("没有认证: {}", token);
            return buildReturnMono("没有认证", exchange);
        }
        //判断是否是有效的token
        OAuth2AccessToken oAuth2AccessToken;
        try {
            oAuth2AccessToken = tokenStore.readAccessToken(token);

            boolean expired = oAuth2AccessToken.isExpired();
            // if (expired) {
            //     log.info("认证令牌已过期: {}", token);
            //     return buildReturnMono("认证令牌已过期", exchange);
            // }
            if (expired) {
                // 过期处理：尝试刷新令牌
                log.info("认证令牌已过期: {}，尝试刷新", token);

                // 调用刷新接口
                // WebClient webClient = WebClient.create("http://localhost:8160");
                // return webClient.post()
                //         .uri(uriBuilder -> uriBuilder
                //                 .path("/auth/refresh-token")
                //                 .queryParam("access_token", token)
                //                 .build())
                //         .retrieve()
                //         .bodyToMono(OAuth2AccessToken.class)
                //         .flatMap(newToken -> {
                //             // 更新请求头
                //             exchange.getRequest().mutate()
                //                     .header(HttpHeaders.AUTHORIZATION, "Bearer " + newToken.getValue());
                //             return chain.filter(exchange);
                //         })
                //         .onErrorResume(error -> {
                //             log.error("刷新令牌失败: {}", error.getMessage());
                //             return buildReturnMono("认证令牌已过期且刷新失败", exchange);
                //         });
                try {
                    // 使用 Feign 调用刷新令牌接口
                    // TODO:发过去没有问题，在回来时候OAuth2AccessToken会出现解析问题
                    OAuth2AccessToken newToken = authServiceFeignClient.refreshToken(token);

                    // 更新请求头
                    exchange.getRequest().mutate()
                            .header(HttpHeaders.AUTHORIZATION, "Bearer " + newToken.getValue());
                    return chain.filter(exchange);

                } catch (Exception e) {
                    log.error("刷新令牌失败: {}", e.getMessage());
                    return buildReturnMono("认证令牌已过期且刷新失败", exchange);
                }
            }
            return chain.filter(exchange);
        } catch (InvalidTokenException e) {
            log.info("认证令牌无效: {}", token);
            return buildReturnMono("认证令牌无效", exchange);
        }

    }

    /**
     * 获取token
     */
    private String getToken(ServerWebExchange exchange) {
        String tokenStr = exchange.getRequest().getHeaders().getFirst("Authorization");
        if (StringUtils.isBlank(tokenStr)) {
            return null;
        }
        String token = tokenStr.split(" ")[1];
        if (StringUtils.isBlank(token)) {
            return null;
        }
        return token;
    }


    private Mono<Void> buildReturnMono(String error, ServerWebExchange exchange) {
        ServerHttpResponse response = exchange.getResponse();
        String jsonString = JSON.toJSONString(new RestErrorResponse(error));
        byte[] bits = jsonString.getBytes(StandardCharsets.UTF_8);
        DataBuffer buffer = response.bufferFactory().wrap(bits);
        response.setStatusCode(HttpStatus.UNAUTHORIZED);
        response.getHeaders().add("Content-Type", "application/json;charset=UTF-8");
        return response.writeWith(Mono.just(buffer));
    }


    @Override
    public int getOrder() {
        return 0;
    }
}
