package com.edu.kaizhi.content.api;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.exception.ValidationGroups;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.model.dto.*;
import com.edu.kaizhi.content.service.CourseBaseInfoService;
import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.annotation.RequiresUser;
import com.edu.kaizhi.securityUser.dto.User;
import com.edu.kaizhi.securityUser.util.SecurityUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;


/**
 * 课程信息编辑接口
 */
@Api(value = "课程信息管理接口", tags = "课程信息管理接口")
@RestController
public class CourseBaseInfoController {
    @Autowired
    private CourseBaseInfoService courseBaseInfoService;

    @ApiOperation("课程分页查询信息列表")
    // @PreAuthorize("hasAuthority('kaizhi_teachmanager_course_list')") // 指定权限标识符
    @PostMapping("/course/list")
    @RequiresUser
    public PageResult<CourseListDto> list(PageParams pageParams, @RequestBody(required = false) QueryCourseParamsDto queryCourseParams) {
        Long companyId = UserContext.getCompanyId();
        return courseBaseInfoService.queryCourseBaseList(companyId, pageParams, queryCourseParams, true);
    }


    @ApiOperation("需要修改课程分页查询信息列表")
    @PostMapping("/course/need-modify-list")
    @RequiresUser
    public PageResult<CourseListDto> needModifyList(PageParams pageParams, @RequestBody(required = false) QueryCourseParamsDto queryCourseParams) {
        Long companyId = UserContext.getCompanyId();
        return courseBaseInfoService.queryCourseBaseList(companyId, pageParams, queryCourseParams, false);
    }


    @ApiOperation("新增课程")
    @PostMapping("/course")
    @RequiresUser
    public CourseBaseInfoDto createCourseBase(@RequestBody @Validated(ValidationGroups.Insert.class) AddCourseDto addCourseDto) {
        Long companyId = UserContext.getCompanyId();
        return courseBaseInfoService.createCourseBase(companyId, addCourseDto);
    }

    @ApiOperation("根据课程id查询接口")
    @GetMapping("/course/{courseId}")
    public CourseBaseInfoDto getCourseBaseById(@PathVariable Long courseId) {
        // SecurityUtil.User user = SecurityUtil.getUser();
        // System.out.println(user);
        return courseBaseInfoService.getCourseBaseInfo(courseId);
    }

    @ApiOperation("修改课程")
    @PutMapping("/course")
    @RequiresUser
    public CourseBaseInfoDto modifyCourseBase(@RequestBody @Validated(ValidationGroups.Update.class) EditCourseDto editCourseDto) {
        Long companyId = UserContext.getCompanyId();
        User user = UserContext.getUser();
        return courseBaseInfoService.updateCourseBase(companyId, user.getName(), editCourseDto);
    }

    @ApiOperation("删除课程")
    @DeleteMapping("/course/{courseId}")
    @RequiresUser
    public void deleteCourse(@PathVariable Long courseId) {
        Long companyId = UserContext.getCompanyId();
        courseBaseInfoService.delectCourse(companyId, courseId);

    }

}
