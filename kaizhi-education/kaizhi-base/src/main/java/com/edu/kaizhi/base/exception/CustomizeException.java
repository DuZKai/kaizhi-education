package com.edu.kaizhi.base.exception;

import lombok.Getter;

@Getter
public class CustomizeException extends RuntimeException {
    private String errMessage;

    public CustomizeException(){
        super();
    }

    public CustomizeException(String errMessage) {
        super(errMessage);
        this.errMessage = errMessage;
    }

    public static void cast(CommonError commonError){
        throw new CustomizeException(commonError.getErrMessage());
    }

    public static void cast(String errMessage){
        throw new CustomizeException(errMessage);
    }

}
