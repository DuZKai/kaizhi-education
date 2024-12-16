package com.edu.kaizhi.auth.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.auth.service.InfoService;
import com.edu.kaizhi.ucenter.mapper.UserMapper;
import com.edu.kaizhi.ucenter.model.po.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;


@Component
@Slf4j
public class InfoServiceImpl implements InfoService {
    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private UserMapper userMapper;

    private static final String EXPIRE_TIME = "23:59:59";

    // 用户访问的唯一标识符
    private static final String UV_KEY = "info:uv::count";

    // 增加一个新的 UV
    public void addUV(String userId) {

        redisTemplate.opsForHyperLogLog().add(UV_KEY, userId);
        redisTemplate.expire(UV_KEY, redisKeyExpireTime(EXPIRE_TIME), TimeUnit.SECONDS);
    }

    // 获取当前的 UV 数量
    public long getUVCount() {
        return redisTemplate.opsForHyperLogLog().size(UV_KEY);
    }

    private int redisKeyExpireTime(String time) {
        Calendar calendar = Calendar.getInstance();

        String[] split = time.split(":");
        int hour = Integer.parseInt(split[0]);
        int minute = Integer.parseInt(split[1]);
        int second = Integer.parseInt(split[2]);

        if (timeCompare(time)) {
            calendar.add(Calendar.DAY_OF_YEAR, 1);
        }
        calendar.set(Calendar.HOUR_OF_DAY, hour);
        calendar.set(Calendar.MINUTE, minute);
        calendar.set(Calendar.SECOND, second);
        long expireTime = ((calendar.getTimeInMillis() - System.currentTimeMillis()) / 1000);
        return (int) expireTime;
    }

    public static boolean timeCompare(String time) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalTime localTime = LocalTime.parse(time, dateTimeFormatter);
        return LocalTime.now().isAfter(localTime);
    }

    public long getManCount() {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.ne(User::getUtype, "101003");
        queryWrapper.eq(User::getSex, 1);
        return userMapper.selectCount(queryWrapper);
    }

    public long getWomanCount() {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.ne(User::getUtype, "101003");
        queryWrapper.eq(User::getSex, 2);
        return userMapper.selectCount(queryWrapper);
    }

    public long getAllCount() {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.ne(User::getUtype, "101003");
        return userMapper.selectCount(queryWrapper);
    }
}
