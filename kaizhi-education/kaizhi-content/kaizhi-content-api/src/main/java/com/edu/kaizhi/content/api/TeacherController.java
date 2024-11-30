package com.edu.kaizhi.content.api;

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
        String companyId = user != null ? user.getCompanyId() : "1232141425";
        return teacherService.queryTeacherList(Long.valueOf(companyId), pageParams, queryTeacherParamsDto);
    }

    @ApiOperation("删除教师信息接口")
    @DeleteMapping("/{teacherId}")
    public void deleteTeacher(@PathVariable("teacherId") Long teacherId) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        String companyId = user != null ? user.getCompanyId() : "1232141425";
        teacherService.deleteTeacher(Long.valueOf(companyId), teacherId);
    }

    @ApiOperation("保存教师信息接口")
    @PostMapping("")
    public Teacher modifyTeacher(@RequestBody TeacherDto teacherDto) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        String companyId = user != null ? user.getCompanyId() : "1232141425";
        return teacherService.modifyTeacher(Long.valueOf(companyId), teacherDto);
    }
}