package com.edu.kaizhi.auth.controller;
import com.edu.kaizhi.service.UVService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@Api(value = "UV统计接口", tags = "UV统计接口")
@RestController
public class UVController {

    @Autowired
    private UVService uvService;

    @ApiOperation("获取UV数量")
    @GetMapping("/uv")
    public long getUVCount() {
        return uvService.getUVCount();
    }

    @ApiOperation("增加一个新的 UV")
    @PostMapping("/uv/{userId}")
    public void addUV(@PathVariable String userId) {
        uvService.addUV(userId);
    }
}
