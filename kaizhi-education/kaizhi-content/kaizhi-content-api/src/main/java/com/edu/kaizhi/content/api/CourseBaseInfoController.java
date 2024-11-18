package com.edu.kaizhi.content.api;

import com.edu.kaizhi.base.exception.ValidationGroups;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.util.SecurityUtil;
import com.edu.kaizhi.content.model.dto.*;
import com.edu.kaizhi.content.service.CourseBaseInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;


/**
 * 课程信息编辑接口
 */
@Api(value = "课程信息管理接口", tags = "课程信息管理接口")
@RestController
public class CourseBaseInfoController {
    @Autowired
    private CourseBaseInfoService courseBaseInfoService;

    @ApiOperation("课程分页查询信息列表")
    @PreAuthorize("hasAuthority('kaizhi_teachmanager_course_list')") // 指定权限标识符
    @PostMapping("/course/list")
    public PageResult<CourseListDto> list(PageParams pageParams, @RequestBody(required = false) QueryCourseParamsDto queryCourseParams) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        String companyId = user != null ? user.getCompanyId() : "1232141425";

        return courseBaseInfoService.queryCourseBaseList(Long.parseLong(companyId), pageParams, queryCourseParams);
    }


    @ApiOperation("新增课程")
    @PostMapping("/course")
    public CourseBaseInfoDto createCourseBase(@RequestBody @Validated(ValidationGroups.Insert.class) AddCourseDto addCourseDto) {

        // TODO:获取用户所属机构ID
        Long companyId = 1232141425L;
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
    public CourseBaseInfoDto modifyCourseBase(@RequestBody @Validated(ValidationGroups.Update.class) EditCourseDto editCourseDto) {

        // TODO:获取用户所属机构ID
        Long companyId = 1232141425L;
        return courseBaseInfoService.updateCourseBase(companyId, editCourseDto);
    }

    @ApiOperation("删除课程")
    @DeleteMapping("/course/{courseId}")
    public void deleteCourse(@PathVariable Long courseId) {

        // TODO:获取用户所属机构ID
        Long companyId = 1232141425L;
        courseBaseInfoService.delectCourse(companyId, courseId);

    }
}
