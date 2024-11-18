package com.edu.kaizhi.learning.api;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.learning.model.dto.MyCourseTableParams;
import com.edu.kaizhi.learning.model.dto.ChooseCourseDto;
import com.edu.kaizhi.learning.model.dto.CourseTablesDto;
import com.edu.kaizhi.learning.model.po.CourseTables;
import com.edu.kaizhi.learning.service.MyCourseTablesService;
import com.edu.kaizhi.learning.util.SecurityUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 我的课程表接口
 */

@Api(value = "我的课程表接口", tags = "我的课程表接口")
@Slf4j
@RestController
public class MyCourseTablesController {
    @Autowired
    private MyCourseTablesService myCourseTablesService;

    @ApiOperation("添加选课")
    @PostMapping("/choosecourse/{courseId}")
    public ChooseCourseDto addChooseCourse(@PathVariable("courseId") Long courseId) {
        // 获取当前用户
        SecurityUtil.User user = SecurityUtil.getUser();
        // 用户ID
        if (user == null) {
            CustomizeException.cast("用户未登录");
        }
        String userId = user.getId();
        // 添加选课
        return myCourseTablesService.addChooseCourse(userId, courseId);
    }

    @ApiOperation("查询学习资格")
    @PostMapping("/choosecourse/learnstatus/{courseId}")
    public CourseTablesDto getLearnstatus(@PathVariable("courseId") Long courseId) {
        // 获取当前用户
        SecurityUtil.User user = SecurityUtil.getUser();
        // 用户ID
        if (user == null) {
            CustomizeException.cast("用户未登录");
        }
        String userId = user.getId();
        return myCourseTablesService.getLearningStatus(userId, courseId);

    }

    @ApiOperation("我的课程表")
    @GetMapping("/mycoursetable")
    public PageResult<CourseTables> mycoursetable(MyCourseTableParams params) {
        return null;
    }

}
