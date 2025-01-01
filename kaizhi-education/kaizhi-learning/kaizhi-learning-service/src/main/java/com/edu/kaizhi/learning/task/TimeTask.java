package com.edu.kaizhi.learning.task;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

import static com.edu.kaizhi.base.constant.RedisConfig.HotList;


/**
 * 定时任务类, 定时处理订单状态
 */
@Component
@Slf4j
public class TimeTask {

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 排行榜每日清除缓存
     */
    @Scheduled(cron = "05 00 00 * * ?") // 每日00:00:05执行一次
    // 不能使用@CacheEvict注解，因为这里是定时任务，不是方法调用，不会生效
    public void processDeleteHotRank() {
        log.info("定时清除排行榜缓存：{}", LocalDateTime.now());
        String cacheKey = HotList + "::count";
        redisTemplate.delete(cacheKey);
    }
}
