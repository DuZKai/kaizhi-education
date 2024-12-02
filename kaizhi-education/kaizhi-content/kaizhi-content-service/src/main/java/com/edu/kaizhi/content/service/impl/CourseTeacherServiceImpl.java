package com.edu.kaizhi.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.mapper.CourseTeacherMapper;
import com.edu.kaizhi.content.model.dto.CourseTeacherDto;
import com.edu.kaizhi.content.model.po.CourseTeacher;
import com.edu.kaizhi.content.service.CourseTeacherService;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Slf4j
@Service
public class CourseTeacherServiceImpl implements CourseTeacherService {
    @Autowired
    private CourseTeacherMapper courseTeacherMapper;

    // 保存课程教师信息
    public CourseTeacher saveCourseTeacher(CourseTeacherDto courseTeacher) {
        CourseTeacher teacher;
        Long teacherId = courseTeacher.getTeacherId();
        Long courseId = courseTeacher.getCourseId();
        LambdaQueryWrapper<CourseTeacher> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CourseTeacher::getTeacherId, teacherId).eq(CourseTeacher::getCourseId, courseId);
        int count = courseTeacherMapper.selectCount(queryWrapper);
        if (count > 0) {
            // 已经有这个Id
            CustomizeException.cast("新增课程教师信息失败，已经存在该教师");
        }
        teacher = new CourseTeacher();
        BeanUtils.copyProperties(courseTeacher, teacher);
        try {
            courseTeacherMapper.insert(teacher);
        } catch (Exception e) {
            CustomizeException.cast("新增课程教师信息失败");
        }
        return teacher;
    }

    // 删除课程教师信息
    public void deleteCourseTeacher(Long courseId, Long teacherId) {
        LambdaQueryWrapper<CourseTeacher> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CourseTeacher::getTeacherId, teacherId).eq(CourseTeacher::getCourseId, courseId);
        try{
            courseTeacherMapper.delete(queryWrapper);
        }catch (Exception e){
            CustomizeException.cast("删除课程教师信息失败");
        }
    }

    // 根据id查询课程教师信息
    public CourseTeacher getCourseTeacherById(CourseTeacher courseTeacher) {
        return courseTeacherMapper.selectById(courseTeacher.getId());
    }
}
