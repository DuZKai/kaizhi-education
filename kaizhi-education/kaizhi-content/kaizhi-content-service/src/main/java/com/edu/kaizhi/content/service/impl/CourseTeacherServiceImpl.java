package com.edu.kaizhi.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.mapper.CourseTeacherMapper;
import com.edu.kaizhi.content.model.po.CourseTeacher;
import com.edu.kaizhi.content.service.CourseTeacherService;
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


    // 查询课程教师信息
    public List<CourseTeacher> getCourseTeacherList(Long courseId){
        LambdaQueryWrapper<CourseTeacher> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CourseTeacher::getCourseId, courseId);
        return courseTeacherMapper.selectList(queryWrapper);
    }

    // 保存课程教师信息
    public CourseTeacher saveCourseTeacher(CourseTeacher courseTeacher){
        Long id = courseTeacher.getId();
        CourseTeacher teacher;
        if (id == null){
            teacher = new CourseTeacher();
            BeanUtils.copyProperties(courseTeacher, teacher);
            teacher.setCreateDate(LocalDateTime.now());
            try{
                courseTeacherMapper.insert(teacher);
            }catch (Exception e){
                CustomizeException.cast("新增课程教师信息失败");
            }
        }
        else{
            teacher = courseTeacherMapper.selectById(id);
            BeanUtils.copyProperties(courseTeacher, teacher);
            try{
                courseTeacherMapper.updateById(teacher);
            }catch (Exception e){
                CustomizeException.cast("修改课程教师信息失败");
            }
        }
        return teacher;
    }

    // 删除课程教师信息
    public void deleteCourseTeacher(Long courseId, Long teacherId){
        LambdaQueryWrapper<CourseTeacher> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CourseTeacher::getId, teacherId).eq(CourseTeacher::getCourseId, courseId);
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
