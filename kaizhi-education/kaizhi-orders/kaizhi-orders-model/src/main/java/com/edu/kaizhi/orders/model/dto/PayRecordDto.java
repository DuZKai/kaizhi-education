package com.edu.kaizhi.orders.model.dto;

import com.edu.kaizhi.orders.model.po.PayRecord;
import lombok.Data;
import lombok.ToString;

/**
 * 支付记录dto
 */
@Data
@ToString
public class PayRecordDto extends PayRecord {

    //二维码
    private String qrcode;

}
