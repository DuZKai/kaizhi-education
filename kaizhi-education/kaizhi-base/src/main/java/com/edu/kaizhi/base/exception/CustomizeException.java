package com.edu.kaizhi.base.exception;

import lombok.Getter;

@Getter
public class CustomizeException extends RuntimeException {
    private String errMessage;
    private Integer errCode;

    public CustomizeException() {
        super();
    }

    public CustomizeException(String errMessage) {
        super(errMessage);
        this.errMessage = errMessage;
        this.errCode = 500;
    }

    public CustomizeException(String errMessage, Integer errCode) {
        super(errMessage);
        this.errMessage = errMessage;
        this.errCode = errCode;
    }

    public static void cast(CommonError commonError) {
        throw new CustomizeException(commonError.getErrMessage());
    }

    public static void cast(String errMessage) {
        throw new CustomizeException(errMessage);
    }


    public static void cast(CommonError commonError, Integer errCode) {
        throw new CustomizeException(commonError.getErrMessage(), errCode);
    }

    public static void cast(String errMessage, Integer errCode) {
        throw new CustomizeException(errMessage, errCode);
    }
}
