package com.edu.kaizhi.orders.service;

import com.edu.kaizhi.orders.model.dto.AddOrderDto;
import com.edu.kaizhi.orders.model.dto.PayRecordDto;
import com.edu.kaizhi.orders.model.po.PayRecord;

public interface OrderService {
    /**
     * 创建商品订单
     * */
    public PayRecord createOrder(String userId, AddOrderDto addOrderDto);
}
