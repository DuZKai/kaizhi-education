package com.edu.kaizhi.orders.api;


import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.annotation.RequiresUser;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.securityUser.dto.User;
import com.edu.kaizhi.orders.model.dto.AddOrderDto;
import com.edu.kaizhi.orders.model.dto.PayRecordDto;
import com.edu.kaizhi.orders.model.po.PayRecord;
import com.edu.kaizhi.orders.service.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


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
    @RequiresUser
    @ResponseBody
    public PayRecord generatePayCode(@RequestBody AddOrderDto addOrderDto) {
        User user = UserContext.getUser();
        return orderService.createOrder(user.getId(), addOrderDto);
    }

    @ApiOperation("扫码下单")
    @GetMapping("/requestpay")
    public void requestpay(String payNo, HttpServletResponse httpResponse) throws IOException {
        // 扫码下单
        PayRecord payRecord = orderService.getPayRecordByPayno(payNo);
        if (payRecord == null) {
            CustomizeException.cast("支付记录不存在");
        }
        //支付状态
        String status = payRecord.getStatus();
        if("601002".equals(status)){
            CustomizeException.cast("订单已支付，请勿重复支付。");
        }
        // /请求支付宝下单接口,发起http请求
    }

    @ApiOperation("查询支付结果")
    @GetMapping("/payresult")
    @RequiresUser
    @ResponseBody
    public PayRecordDto payresult(String payNo) throws IOException {
        // 调用支付宝接口查询支付结果
        return orderService.queryPayResult(payNo);
    }

}
