package com.edu.kaizhi.orders.model.dto;

import com.edu.kaizhi.orders.model.po.PayRecord;
import lombok.Data;
import lombok.ToString;

/**
 * @version 1.0
 * @description 支付记录dto
 * @date 2022/10/4 11:30
 */
@Data
@ToString
public class PayRecordDto extends PayRecord {

    //二维码
    private String qrcode;

}
