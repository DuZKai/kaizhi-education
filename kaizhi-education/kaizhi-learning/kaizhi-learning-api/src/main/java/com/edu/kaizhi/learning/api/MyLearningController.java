package com.edu.kaizhi.learning.api;

import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.annotation.RequiresUser;
import com.edu.kaizhi.base.model.RestResponse;
import com.edu.kaizhi.securityUser.dto.User;
import com.edu.kaizhi.learning.service.LearningService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * 我的学习接口
 */
@Api(value = "学习过程管理接口", tags = "学习过程管理接口")
@Slf4j
@RestController
public class MyLearningController {
    @Autowired
    LearningService learningService;

    @ApiOperation("获取视频")
    @RequiresUser
    @GetMapping("/open/learn/getvideo/{courseId}/{mediaFileId}/{mediaId}")
    public RestResponse<String> getvideo(@PathVariable("courseId") Long courseId, @PathVariable("mediaFileId") Long mediaFileId, @PathVariable("mediaId") String mediaId) {
        //登录用户
        User user = UserContext.getUser();

        //获取视频
        return learningService.getVideo(user.getId(), courseId, mediaFileId, mediaId);

    }

}
