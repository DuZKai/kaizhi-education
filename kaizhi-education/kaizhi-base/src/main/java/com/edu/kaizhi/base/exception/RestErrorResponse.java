package com.edu.kaizhi.base.exception;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * 错误响应参数包装
 */
@Setter
@Getter
public class RestErrorResponse implements Serializable {
    private String errMessage;
    private Integer errorCode;

    public RestErrorResponse() {}

    public RestErrorResponse(String errMessage) {
        this.errMessage = errMessage;
        this.errorCode = 500;
    }

    public RestErrorResponse(String errMessage, Integer errorCode) {
        this.errMessage = errMessage;
        this.errorCode = errorCode;
    }

}
