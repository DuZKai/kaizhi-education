package com.edu.kaizhi.content.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.edu.kaizhi.content.service.CourseBaseService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <p>
 * 课程基本信息 前端控制器
 * </p>
 *
 * @author zikai
 */
@Slf4j
@RestController
@RequestMapping("courseBase")
public class CourseBaseController {

    @Autowired
    private CourseBaseService  courseBaseService;
}
