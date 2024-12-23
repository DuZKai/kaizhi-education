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
import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.annotation.RequiresUser;
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
    @RequiresUser
    public PageResult<Teacher> getCourseTeacherList(PageParams pageParams, @RequestBody QueryTeacherParamsDto queryTeacherParamsDto) {
        Long companyId = UserContext.getCompanyId();
        return teacherService.queryTeacherList(companyId, pageParams, queryTeacherParamsDto);
    }

    @ApiOperation("删除教师信息接口")
    @DeleteMapping("/{teacherId}")
    @RequiresUser
    public void deleteTeacher(@PathVariable("teacherId") Long teacherId) {
        Long companyId = UserContext.getCompanyId();
        teacherService.deleteTeacher(companyId, teacherId);
    }

    @ApiOperation("保存教师信息接口")
    @PostMapping("")
    @RequiresUser
    public Teacher modifyTeacher(@RequestBody TeacherDto teacherDto) {
        Long companyId = UserContext.getCompanyId();
        return teacherService.modifyTeacher(companyId, teacherDto);
    }
}