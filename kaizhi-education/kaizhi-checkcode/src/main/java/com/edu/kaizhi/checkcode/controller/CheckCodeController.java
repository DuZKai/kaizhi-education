package com.edu.kaizhi.checkcode.controller;

import com.edu.kaizhi.checkcode.model.CheckCodeParamsDto;
import com.edu.kaizhi.checkcode.model.CheckCodeResultDto;
import com.edu.kaizhi.checkcode.service.CheckCodeService;
import com.edu.kaizhi.checkcode.service.SendCodeService;
import com.edu.kaizhi.checkcode.util.MailUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 验证码服务接口
 */
@Api(value = "验证码服务接口")
@RestController
public class CheckCodeController {
    @Autowired
    SendCodeService sendCodeService;

    @Resource(name = "PicCheckCodeService")
    private CheckCodeService picCheckCodeService;


    @ApiOperation(value="生成验证信息", notes="生成验证信息")
    @PostMapping(value = "/pic")
    public CheckCodeResultDto generatePicCheckCode(CheckCodeParamsDto checkCodeParamsDto){
        return picCheckCodeService.generate(checkCodeParamsDto);
    }

    @ApiOperation(value="校验", notes="校验")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "name", value = "业务名称", required = true, dataType = "String", paramType="query"),
            @ApiImplicitParam(name = "key", value = "验证key", required = true, dataType = "String", paramType="query"),
            @ApiImplicitParam(name = "code", value = "验证码", required = true, dataType = "String", paramType="query")
    })
    @PostMapping(value = "/verify")
    public Boolean verify(String key, String code){
        return picCheckCodeService.verify(key,code);
    }

    @ApiOperation(value = "发送邮箱验证码", tags = "发送邮箱验证码")
    @PostMapping("/phone")
    public void sendEMail(@RequestParam("param1") String email) {
        String code = MailUtil.achieveCode();
        sendCodeService.sendEMail(email, code);
    }
}
