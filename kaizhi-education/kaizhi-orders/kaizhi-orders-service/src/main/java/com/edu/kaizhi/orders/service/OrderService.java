package com.edu.kaizhi.orders.service;

import com.edu.kaizhi.messagesdk.model.po.MqMessage;
import com.edu.kaizhi.orders.model.dto.AddOrderDto;
import com.edu.kaizhi.orders.model.dto.PayRecordDto;
import com.edu.kaizhi.orders.model.dto.PayStatusDto;
import com.edu.kaizhi.orders.model.po.PayRecord;

public interface OrderService {
    /**
     * 创建商品订单
     */
    public PayRecord createOrder(String userId, AddOrderDto addOrderDto);

    /**
     * 查询支付交易记录
     *
     * @param payNo 交易记录号
     */
    public PayRecord getPayRecordByPayno(String payNo);

    /**
     * 查询支付结果
     *
     * @param payNo 交易记录号
     */
    public PayRecordDto queryPayResult(String payNo);


    /**
     * @param payStatusDto 支付结果信息
     *                     保存支付宝支付结果
     */
    public void saveAliPayStatus(PayStatusDto payStatusDto);

    /**
     * 发送通知结果
     *
     * @param message
     */
    public void notifyPayResult(MqMessage message);
}
