package com.edu.kaizhi.checkcode.service.impl;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.checkcode.service.SendCodeService;
import com.edu.kaizhi.checkcode.util.MailUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import java.util.concurrent.TimeUnit;

import static com.edu.kaizhi.base.constant.RedisConfig.VERIFY_CODE_TTL;

@Service
@Slf4j
public class SendCodeServiceImpl implements SendCodeService {
    @Autowired
    RedisTemplate redisTemplate;

    @Override
    public void sendEMail(String email, String code) {
        // 1. 向用户发送验证码
        try {
            MailUtil.sendTestMail(email, code);
        } catch (MessagingException e) {
            log.debug("邮件发送失败：{}", e.getMessage());
            CustomizeException.cast("发送验证码失败，请稍后再试");
        }
        // 将验证码缓存到redis，TTL设置为VERIFY_CODE_TTL分钟
        redisTemplate.opsForValue().set(email, code, VERIFY_CODE_TTL, TimeUnit.MINUTES);
    }
}
