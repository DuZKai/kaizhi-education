package com.edu.kaizhi.orders.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.utils.IdWorkerUtils;
import com.edu.kaizhi.orders.mapper.OrdersGoodsMapper;
import com.edu.kaizhi.orders.mapper.OrdersMapper;
import com.edu.kaizhi.orders.mapper.PayRecordMapper;
import com.edu.kaizhi.orders.model.dto.AddOrderDto;
import com.edu.kaizhi.orders.model.dto.PayRecordDto;
import com.edu.kaizhi.orders.model.po.Orders;
import com.edu.kaizhi.orders.model.po.OrdersGoods;
import com.edu.kaizhi.orders.model.po.PayRecord;
import com.edu.kaizhi.orders.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrdersMapper ordersMapper;
    @Autowired
    OrdersGoodsMapper ordersGoodsMapper;
    @Autowired
    PayRecordMapper payRecordMapper;

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
        order.setStatus("600001"); // 未支付
        order.setOrderType("602001"); // 订单类型
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
        if (orders.getStatus().equals("600002")) {
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
        payRecord.setStatus("601001");//未支付
        if (payRecordMapper.insert(payRecord) <= 0) {
            CustomizeException.cast("支付记录生成失败");
        }
        return payRecord;
    }

}
