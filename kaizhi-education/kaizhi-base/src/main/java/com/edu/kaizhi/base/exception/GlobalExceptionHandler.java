package com.edu.kaizhi.base.exception;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.util.ArrayList;
import java.util.List;

/**
 * 全局异常处理器
 */
@Slf4j
@ControllerAdvice
public class GlobalExceptionHandler {

    @ResponseBody
    @ExceptionHandler(CustomizeException.class)
    public ResponseEntity<RestErrorResponse> customException(CustomizeException e) {
        log.error("【系统异常】{}", e.getErrMessage());
        HttpStatus status = HttpStatus.INTERNAL_SERVER_ERROR; // 默认 500 错误
        String errorMessage = e.getErrMessage();
        Integer errCode = e.getErrCode();
        if (errCode == 400) {
            status = HttpStatus.BAD_REQUEST; // 错误码是 400 时，返回 400 错误
            errorMessage = "请求参数无效：" + e.getErrMessage();
        } else if (errCode == 404) {
            status = HttpStatus.NOT_FOUND; // 错误码是 404 时，返回 404 错误
            errorMessage = "资源未找到：" + e.getErrMessage();
        } else if (errCode == 401) {
            status = HttpStatus.UNAUTHORIZED; // 错误码是 401 时，返回 401 错误
            errorMessage = "未经授权：" + e.getErrMessage();
        } else if (errCode == 403) {
            status = HttpStatus.FORBIDDEN; // 错误码是 403 时，返回 403 错误
            errorMessage = "访问被拒绝：" + e.getErrMessage();
        }

        // 返回定制化的错误响应
        RestErrorResponse response = new RestErrorResponse(errorMessage, errCode);
        return new ResponseEntity<>(response, status);

    }

    @ResponseBody
    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.FORBIDDEN)
    public RestErrorResponse exception(Exception e) {

        log.error("【系统异常】{}", e.getMessage());
        e.printStackTrace();
        if(e.getMessage().equals("不允许访问")){
            return new RestErrorResponse("您没有操作此功能的权限");
        }
        return new RestErrorResponse(CommonError.UNKOWN_ERROR.getErrMessage());
    }

    @ResponseBody
    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public RestErrorResponse methodArgumentNotValidException(MethodArgumentNotValidException e) {
        BindingResult bindingResult = e.getBindingResult();
        List<String> errors = new ArrayList<>();
        bindingResult.getFieldErrors().forEach(fieldError -> {
            errors.add(fieldError.getDefaultMessage());
        });

        // 将list错误信息拼接
        String errorMessage = StringUtils.join(errors, ",");

        log.error("【系统异常】{}", e.getMessage());

        return new RestErrorResponse(errorMessage);

    }
}
