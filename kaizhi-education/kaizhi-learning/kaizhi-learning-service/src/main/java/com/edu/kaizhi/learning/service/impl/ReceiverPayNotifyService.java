package com.edu.kaizhi.learning.service.impl;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.learning.config.PayNotifyConfig;
import com.edu.kaizhi.learning.service.MyCourseTablesService;

import com.edu.kaizhi.messagesdk.model.po.MqMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.core.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.edu.kaizhi.base.constant.SystemStatusConstant.ORDER_TYPE_COURSE_PURCHASE;

/**
 * 接收消息通知处理类
 * */
@Service
@Slf4j
public class ReceiverPayNotifyService {
    @Autowired
    MyCourseTablesService tablesService;


    @RabbitListener(queues = PayNotifyConfig.PAYNOTIFY_QUEUE)
    public void receive(Message message) {
        try{
            Thread.sleep(5000);
        }catch (Exception e){
            e.printStackTrace();
        }

        // 1. 获取消息
        MqMessage mqMessage = JSON.parseObject(message.getBody(), MqMessage.class);
        // 2. 根据我们存入的消息，进行解析
        // 2.1 消息类型，学习中心只处理支付结果的通知
        String messageType = mqMessage.getMessageType();
        // 2.2 选课id
        String chooseCourseId = mqMessage.getBusinessKey1();
        // 2.3 订单类型，ORDER_TYPE_COURSE_PURCHASE表示购买课程，学习中心只负责处理这类订单请求
        String orderType = mqMessage.getBusinessKey2();
        // 3. 学习中心只负责处理支付结果的通知
        if (PayNotifyConfig.MESSAGE_TYPE.equals(messageType)){
            // 3.1 学习中心只负责购买课程类订单的结果
            if (ORDER_TYPE_COURSE_PURCHASE.equals(orderType)){
                boolean flag = tablesService.saveChooseCourseStatus(chooseCourseId);
                if (!flag){
                    CustomizeException.cast("保存选课记录失败");
                }
            }
        }
    }
}
