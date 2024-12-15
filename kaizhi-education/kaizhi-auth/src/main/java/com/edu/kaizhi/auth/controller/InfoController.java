package com.edu.kaizhi.auth.controller;
import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.auth.service.InfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import static com.edu.kaizhi.base.constant.RedisConfig.*;


@Api(value = "UV统计接口", tags = "UV统计接口")
@RestController
public class InfoController {

    @Autowired
    private InfoService infoService;

    @ApiOperation("获取UV数量")
    @GetMapping("/info/uv")
    public long getUVCount() {
        return infoService.getUVCount();
    }

    @ApiOperation("增加一个新的 UV")
    @PostMapping("/info/uv/{userId}")
    public void addUV(@PathVariable String userId) {
        infoService.addUV(userId);
    }

    @ApiOperation("获取男生数量")
    @GetMapping("/info/user/man")
    @Cacheable(cacheNames = ManNum, key = "'count'")
    public long getManCount() {
        return infoService.getManCount();
    }

    @ApiOperation("获取女生数量")
    @GetMapping("/info/user/woman")
    @Cacheable(cacheNames = WomanNum, key = "'count'")
    public long getWomanCount() {
        return infoService.getWomanCount();
    }

    @ApiOperation("获取所有人数量")
    @GetMapping("/info/user/all")
    @Cacheable(cacheNames = AllNum, key = "'count'")
    public long getAllCount() {
        return infoService.getAllCount();
    }
}
