package com.edu.kaizhi.content.bloomfilter;

import com.google.common.base.Preconditions;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

@Slf4j
@Service

public class BloomfilterService {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    // 过期时间，单位分钟
    private final long expiration = 60;

    /**
     * 根据给定的布隆过滤器添加值
     */
    public <T> void addByBloomFilter(BloomFilterHelper<T> bloomFilterHelper, String key, T value) {
        Preconditions.checkArgument(bloomFilterHelper != null, "bloomFilterHelper不能为空");
        int[] offsets = bloomFilterHelper.murmurHashOffset(value);
        // for (int i : offsets) {
        //     redisTemplate.opsForValue().setBit(key, i, true);
        // }
        // 使用管道批量发送命令
        stringRedisTemplate.executePipelined((RedisCallback<Void>) connection -> {
            for (int offset : offsets) {
                connection.setBit(key.getBytes(), offset, true); // 使用 byte[] 来表示 key
            }
            return null;
        });

        //由于setBit不能直接设置过期时间，因此另外再设置
        //返回值expire为-1时 此键值没有设置过期日期
        //返回值expire为-2时 不存在此键
        long expire = stringRedisTemplate.opsForValue().getOperations().getExpire(key);//此方法返回单位为秒过期时长
        if (expire == -1) {
            stringRedisTemplate.expire(key, expiration, TimeUnit.MINUTES);
        }
    }

    /**
     * 根据给定的布隆过滤器判断值是否存在
     */
    public <T> boolean includeByBloomFilter(BloomFilterHelper<T> bloomFilterHelper, String key, T value) {
        Preconditions.checkArgument(bloomFilterHelper != null, "bloomFilterHelper不能为空");
        int[] offset = bloomFilterHelper.murmurHashOffset(value);
        for (int i : offset) {
            if (!stringRedisTemplate.opsForValue().getBit(key, i)) {
                return false;
            }
        }
        return true;
    }


}
