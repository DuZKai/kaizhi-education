package com.edu.kaizhi.content.api;

import com.edu.kaizhi.content.model.dto.CourseTeacherDto;
import com.edu.kaizhi.content.model.po.CourseTeacher;
import com.edu.kaizhi.content.model.po.Teacher;
import com.edu.kaizhi.content.service.CourseTeacherService;
import com.edu.kaizhi.content.service.TeacherService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController()
@RequestMapping("/courseTeacher")
@Api(value = "课程教师信息相关接口", tags = "课程教师信息相关接口")
public class CourseTeacherController {
    @Autowired
    private TeacherService teacherService;

    @Autowired
    private CourseTeacherService courseTeacherService;

    @ApiOperation("查询课程教师信息接口")
    @GetMapping("/list/{courseId}")
    public List<Teacher> getCourseTeacherList(@PathVariable Long courseId) {
        return teacherService.getCourseTeacherList(courseId);
    }

    @ApiOperation("添加课程教师信息接口")
    @PostMapping
    public CourseTeacher addCourseTeacher(@RequestBody @Validated CourseTeacherDto courseTeacher) {
        return courseTeacherService.saveCourseTeacher(courseTeacher);
    }

    @ApiOperation("修改课程教师信息接口")
    @PutMapping
    public CourseTeacher modifyCourseTeacher(@RequestBody @Validated CourseTeacherDto courseTeacher) {
        return courseTeacherService.saveCourseTeacher(courseTeacher);
    }


    @ApiOperation("删除课程教师信息接口")
    @DeleteMapping("/course/{courseId}/{teacherId}")
    public void deleteCourseTeacher(@PathVariable Long courseId, @PathVariable Long teacherId) {
        courseTeacherService.deleteCourseTeacher(courseId, teacherId);
    }
}