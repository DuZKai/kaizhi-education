package com.edu.kaizhi.content.api;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.model.dto.CourseTeacherDto;
import com.edu.kaizhi.content.model.dto.QueryCourseParamsDto;
import com.edu.kaizhi.content.model.dto.QueryTeacherParamsDto;
import com.edu.kaizhi.content.model.dto.TeacherDto;
import com.edu.kaizhi.content.model.po.CourseTeacher;
import com.edu.kaizhi.content.model.po.Teacher;
import com.edu.kaizhi.content.service.CourseTeacherService;
import com.edu.kaizhi.content.service.TeacherService;
import com.edu.kaizhi.content.util.SecurityUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@Slf4j
@RestController()
@RequestMapping("/teacher")
@Api(value = "教师信息相关接口", tags = "教师信息相关接口")
public class TeacherController {
    @Autowired
    private TeacherService teacherService;

    @ApiOperation("查询教师信息接口")
    @PostMapping("/list")
    public PageResult<Teacher> getCourseTeacherList(PageParams pageParams, @RequestBody QueryTeacherParamsDto queryTeacherParamsDto) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        if(user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息");
        }
        Long companyId = 1232141425L;
        if(Objects.equals(user.getUtype(), "101003"))
            companyId = -1L;
        else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        }
        else{
            CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
        }
        return teacherService.queryTeacherList(companyId, pageParams, queryTeacherParamsDto);
    }

    @ApiOperation("删除教师信息接口")
    @DeleteMapping("/{teacherId}")
    public void deleteTeacher(@PathVariable("teacherId") Long teacherId) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        if(user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息");
        }
        Long companyId = 1232141425L;
        if(Objects.equals(user.getUtype(), "101003"))
            companyId = -1L;
        else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        }
        else{
            CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
        }
        teacherService.deleteTeacher(companyId, teacherId);
    }

    @ApiOperation("保存教师信息接口")
    @PostMapping("")
    public Teacher modifyTeacher(@RequestBody TeacherDto teacherDto) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        if(user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息");
        }
        Long companyId = 1232141425L;
        if(Objects.equals(user.getUtype(), "101003"))
            companyId = -1L;
        else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        }
        else{
            CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
        }
        return teacherService.modifyTeacher(companyId, teacherDto);
    }
}