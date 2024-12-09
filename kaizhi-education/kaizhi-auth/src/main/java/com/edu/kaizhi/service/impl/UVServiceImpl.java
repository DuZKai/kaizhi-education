package com.edu.kaizhi.service.impl;

import com.edu.kaizhi.service.UVService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;


@Component
@Slf4j
public class UVServiceImpl implements UVService {
    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    // 用户访问的唯一标识符
    private static final String UV_KEY = "site:uv";

    // 增加一个新的 UV
    public void addUV(String userId) {
        redisTemplate.opsForHyperLogLog().add(UV_KEY, userId);
    }

    // 获取当前的 UV 数量
    public long getUVCount() {
        return redisTemplate.opsForHyperLogLog().size(UV_KEY);
    }
}
