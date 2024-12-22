package com.edu.kaizhi.orders.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.utils.IdWorkerUtils;
import com.edu.kaizhi.messagesdk.model.po.MqMessage;
import com.edu.kaizhi.messagesdk.service.MqMessageService;
import com.edu.kaizhi.orders.config.PayNotifyConfig;
import com.edu.kaizhi.orders.mapper.OrdersGoodsMapper;
import com.edu.kaizhi.orders.mapper.OrdersMapper;
import com.edu.kaizhi.orders.mapper.PayRecordMapper;
import com.edu.kaizhi.orders.model.dto.AddOrderDto;
import com.edu.kaizhi.orders.model.dto.PayRecordDto;
import com.edu.kaizhi.orders.model.dto.PayStatusDto;
import com.edu.kaizhi.orders.model.po.Orders;
import com.edu.kaizhi.orders.model.po.OrdersGoods;
import com.edu.kaizhi.orders.model.po.PayRecord;
import com.edu.kaizhi.orders.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageBuilder;
import org.springframework.amqp.core.MessageDeliveryMode;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.connection.RabbitAccessor;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.List;

import static com.edu.kaizhi.base.constant.SystemStatusConstant.*;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrdersMapper ordersMapper;

    @Autowired
    OrdersGoodsMapper ordersGoodsMapper;

    @Autowired
    PayRecordMapper payRecordMapper;

    @Autowired
    OrderService currentProxy;

    @Autowired
    RabbitTemplate rabbitTemplate;

    @Autowired
    MqMessageService mqMessageService;

    static final String TRADE_STATUS = "TRADE_SUCCESS";

    @Transactional
    public PayRecord createOrder(String userId, AddOrderDto addOrderDto) {
        // 添加商品订单
        Orders orders = saveOrders(userId, addOrderDto); //添加商品订单
        //添加支付交易记录
        PayRecord payRecord = createPayRecord(orders);
        // 生成支付二维码

        return payRecord;
    }


    //添加商品订单
    @Transactional
    public Orders saveOrders(String userId, AddOrderDto addOrderDto) {
        // 幂等性判断，同一个业务id只能生成一次订单
        Orders order = getOrderByBusinessId(addOrderDto.getOutBusinessId());
        if (order != null) {
            return order;
        }
        // 插入订单表
        order = new Orders();
        //生成订单号
        long orderId = IdWorkerUtils.getInstance().nextId();
        BeanUtils.copyProperties(addOrderDto, order);
        order.setId(orderId);
        order.setUserId(userId);
        order.setCreateDate(LocalDateTime.now());
        order.setStatus(UNPAID); // 未支付
        order.setOrderType(ORDER_TYPE_COURSE_PURCHASE); // 订单类型
        if (ordersMapper.insert(order) <= 0) {
            CustomizeException.cast("订单生成失败");
        }

        // 插入订单明细表
        String orderDetailJson = addOrderDto.getOrderDetail();
        List<OrdersGoods> ordersGoodsList = JSON.parseArray(orderDetailJson, OrdersGoods.class);
        ordersGoodsList.forEach(goods -> {
            OrdersGoods ordersGoods = new OrdersGoods();
            BeanUtils.copyProperties(goods, ordersGoods);
            ordersGoods.setOrderId(orderId);//订单号
            if (ordersGoodsMapper.insert(ordersGoods) <= 0) {
                CustomizeException.cast("订单生成失败");
            }
        });
        return order;
    }

    //根据业务id查询订单
    public Orders getOrderByBusinessId(String businessId) {
        return ordersMapper.selectOne(new LambdaQueryWrapper<Orders>().eq(Orders::getOutBusinessId, businessId));
    }

    public PayRecord createPayRecord(Orders orders) {
        if (orders == null) {
            CustomizeException.cast("订单不存在");
        }
        if (orders.getStatus().equals(PAID)) {
            CustomizeException.cast("订单已支付");
        }

        PayRecord payRecord = payRecordMapper.selectOne(new LambdaQueryWrapper<PayRecord>().eq(PayRecord::getId, orders.getId()));
        if (payRecord != null) {
            return payRecord;
        }
        payRecord = new PayRecord();
        BeanUtils.copyProperties(orders, payRecord);
        //生成支付交易流水号
        long payNo = IdWorkerUtils.getInstance().nextId();
        payRecord.setPayNo(payNo);
        payRecord.setOrderId(orders.getId());//商品订单号
        payRecord.setCurrency("CNY");
        payRecord.setStatus(PAYMENT_UNPAID);//未支付
        if (payRecordMapper.insert(payRecord) <= 0) {
            CustomizeException.cast("支付记录生成失败");
        }
        return payRecord;
    }

    public PayRecord getPayRecordByPayno(String payNo){
        return payRecordMapper.selectOne(new LambdaQueryWrapper<PayRecord>().eq(PayRecord::getPayNo, payNo));
    }

    /**
     * 请求支付宝查询支付结果
     * @param payNo 支付交易号
     * @return 支付结果
     */
    public PayStatusDto queryPayResultFromAlipay(String payNo) {
        // 雪花算法伪装支付宝订单号
        String trade_no = String.valueOf(IdWorkerUtils.getInstance().nextId());

        // String total_amount = (String) alipay_trade_query_response.get("total_amount");
        // String app_id = (String) alipay_trade_query_response.get("app_id");
        //保存支付结果
        PayStatusDto payStatusDto = new PayStatusDto();
        payStatusDto.setOut_trade_no(payNo);
        payStatusDto.setTrade_status(TRADE_STATUS);
        payStatusDto.setTrade_no(trade_no);
        // payStatusDto.setApp_id(app_id);
        // payStatusDto.setTotal_amount(total_amount);
        return payStatusDto;
    }



    public PayRecordDto queryPayResult(String payNo){
        PayRecord payRecord = getPayRecordByPayno(payNo);
        if (payRecord == null) {
            CustomizeException.cast("请重新点击支付获取二维码");
        }
        //支付状态
        String status = payRecord.getStatus();
        if (!PAYMENT_PAID.equals(status)) {
            //如果发现目前支付不成功，再次查询数据库

            //从支付宝查询支付结果
            PayStatusDto payStatusDto = queryPayResultFromAlipay(payNo);
            //保存支付结果
            currentProxy.saveAliPayStatus(payStatusDto);
            //重新查询支付记录
            payRecord = getPayRecordByPayno(payNo);
        }

        PayRecordDto payRecordDto = new PayRecordDto();
        BeanUtils.copyProperties(payRecord, payRecordDto);
        return payRecordDto;

    }

    @Transactional
    public void saveAliPayStatus(PayStatusDto payStatusDto){

        String payNo = payStatusDto.getOut_trade_no();
        PayRecord payRecordByPayno = getPayRecordByPayno(payNo);
        if(payRecordByPayno == null){
            CustomizeException.cast("支付记录不存在");
        }
        // 拿到订单ID
        Long orderId = payRecordByPayno.getOrderId();
        Orders orders = ordersMapper.selectById(orderId);
        if(orders == null){
            CustomizeException.cast("订单不存在");
        }
        //支付状态
        String status = payRecordByPayno.getStatus();
        // 如果支付成功
        if(PAYMENT_PAID.equals(status)){
            // 已经记录过支付成功
            return;
        }
        // 如果支付成功，从支付宝查询到支付成功
        String trade_status = payStatusDto.getTrade_status();
        if(TRADE_STATUS.equals(trade_status)){
            // 更新支付记录表状态为支付成功
            payRecordByPayno.setStatus(PAYMENT_PAID);
            // 支付宝订单号
            payRecordByPayno.setOutPayNo(payStatusDto.getTrade_no());
            payRecordByPayno.setOutPayChannel(ALIPAY_PAYMENT);
            payRecordByPayno.setPaySuccessTime(LocalDateTime.now());
            payRecordMapper.updateById(payRecordByPayno);
            // 更新订单表状态为支付成功
            orders.setStatus(PAID);
            ordersMapper.updateById(orders);

            // 将消息写入数据库
            MqMessage mqMessage = mqMessageService.addMessage(PayNotifyConfig.MESSAGE_TYPE, orders.getOutBusinessId(), orders.getOrderType(), null);

            // 发送支付结果通知
            notifyPayResult(mqMessage);
        }
    }

    public void notifyPayResult(MqMessage message) {
        String jsonString = JSONObject.toJSONString(message);
        byte[] bytes = jsonString.getBytes(StandardCharsets.UTF_8);
        // 消息持久化
        Message messageObj = MessageBuilder.withBody(bytes).setDeliveryMode(MessageDeliveryMode.PERSISTENT).build();
        // 全局消息ID
        Long id = message.getId();
        // 使用correlationData来指定回调方法
        CorrelationData correlationData = new CorrelationData(id.toString());
        correlationData.getFuture().addCallback(
                result -> {
                    if (result != null && result.isAck()) {
                        log.info("消息发送成功，消息:{}", jsonString);
                        // 将消息从数据库mq_message删除
                        mqMessageService.completed(id);
                    }
                    else{
                        log.error("消息发送失败，消息:{}", jsonString);
                    }
                },
                ex -> {
                    log.error("消息发送失败，消息:{}", jsonString);
                }
        );
        // 发送消息
        rabbitTemplate.convertAndSend(PayNotifyConfig.PAYNOTIFY_EXCHANGE_FANOUT, "", messageObj, correlationData);
    }
}
