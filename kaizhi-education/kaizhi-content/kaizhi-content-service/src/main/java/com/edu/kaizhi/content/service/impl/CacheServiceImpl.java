package com.edu.kaizhi.content.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import java.util.function.Supplier;
import java.util.concurrent.TimeUnit;

/**
 * 通过加锁解决缓存雪崩问题
 * */
@Service
public class CacheServiceImpl {

    @Autowired
    private RedisTemplate redisTemplate;

    private static final String LOCK_KEY = "cache_lock:";
    private static final long LOCK_EXPIRE_TIME = 5; // 锁的过期时间，防止死锁
    private static final long RETRY_INTERVAL = 100; // 重试间隔时间
    private static final long SUCCESS_TEMPORARY_CACHE_EXPIRE_TIME = 500; // 缓存临时过期时间
    private static final String TEMPORARY_KEY = "temp:";

    /**
     * 缓存雪崩处理逻辑
     *
     * @param id 缓存的 id
     * @param queryDatabase 从数据库查询数据的逻辑
     * @param <T> 返回的数据类型
     * @return 缓存或数据库查询的结果
     */
    public <T> T getWithCache(String id, Supplier<T> queryDatabase) {
        // Step 1: 尝试从缓存中获取数据
        T value = (T) redisTemplate.opsForValue().get(TEMPORARY_KEY + id);
        if (value != null) {
            System.out.println("缓存命中新查询到的临时数据，直接返回");
            return value; // 如果缓存有数据，直接返回
        }


        // Step 2: 获取分布式锁
        boolean lockAcquired = acquireLock(id);
        if (lockAcquired) {
            try {
                // Step 3: 缓存失效，查询数据库并返回数据
                System.out.println("缓存未命中，查询数据库");
                value = queryDatabase.get(); // 调用传入的数据库查询函数
                if (value != null) {
                    // 将查询结果放入缓存
                    redisTemplate.opsForValue().set(TEMPORARY_KEY + id, value, SUCCESS_TEMPORARY_CACHE_EXPIRE_TIME, TimeUnit.SECONDS);
                }
            } finally {
                // Step 4: 释放锁
                releaseLock(id);
            }
        } else {
            // 如果无法获得锁，等待一段时间后重试
            try {
                Thread.sleep(RETRY_INTERVAL); // 等待后再重试
                System.out.println("重新尝试获取锁");
                return getWithCache(id, queryDatabase); // 重新尝试获取数据
            } catch (InterruptedException e) {
                e.printStackTrace();
                return null;
            }
        }
        return value;
    }

    private boolean acquireLock(String id) {
        // 设置锁过期时间，防止死锁
        return redisTemplate.opsForValue().setIfAbsent(LOCK_KEY + id,
                "locked", LOCK_EXPIRE_TIME, TimeUnit.SECONDS);
    }

    private void releaseLock(String id) {
        redisTemplate.delete(LOCK_KEY + id); // 删除锁
    }
}
