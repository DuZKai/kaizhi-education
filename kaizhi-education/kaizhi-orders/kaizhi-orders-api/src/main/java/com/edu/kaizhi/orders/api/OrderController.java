package com.edu.kaizhi.orders.api;


import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.orders.model.dto.AddOrderDto;
import com.edu.kaizhi.orders.model.dto.PayRecordDto;
import com.edu.kaizhi.orders.model.po.PayRecord;
import com.edu.kaizhi.orders.service.OrderService;
import com.edu.kaizhi.orders.util.SecurityUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 订单相关接口
 */
@Api(value = "订单支付接口", tags = "订单支付接口")
@Slf4j
@Controller
public class OrderController {

    @Autowired
    OrderService orderService;

    @ApiOperation("生成支付二维码")
    @PostMapping("/generatepaycode")
    @ResponseBody
    public PayRecord generatePayCode(@RequestBody AddOrderDto addOrderDto) {
        SecurityUtil.User user = SecurityUtil.getUser();
        if (user == null) {
            CustomizeException.cast("用户未登录");
        }
        return orderService.createOrder(user.getId(), addOrderDto);
    }

}
