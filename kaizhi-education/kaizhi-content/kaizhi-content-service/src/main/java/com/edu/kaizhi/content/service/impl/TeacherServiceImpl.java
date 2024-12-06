package com.edu.kaizhi.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.mapper.CourseTeacherMapper;
import com.edu.kaizhi.content.mapper.TeacherMapper;
import com.edu.kaizhi.content.model.dto.QueryTeacherParamsDto;
import com.edu.kaizhi.content.model.dto.TeacherDto;
import com.edu.kaizhi.content.model.po.CourseBase;
import com.edu.kaizhi.content.model.po.CourseTeacher;
import com.edu.kaizhi.content.model.po.Teacher;
import com.edu.kaizhi.content.service.TeacherService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Slf4j
@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper teacherMapper;

    @Autowired
    private CourseTeacherMapper courseTeacherMapper;

    public PageResult<Teacher> queryTeacherList(Long companyId, PageParams pageParams, QueryTeacherParamsDto queryTeacherParamsDto) {

        //构建查询条件对象
        LambdaQueryWrapper<Teacher> queryWrapper = new LambdaQueryWrapper<>();

        // 教师名
        String teacherName = queryTeacherParamsDto.getTeacherName();
        if (teacherName != null && !teacherName.isEmpty() && !teacherName.equals("null"))
            queryWrapper.like(Teacher::getTeacherName, teacherName);

        // 公司权限
        queryWrapper.eq(Teacher::getCompanyId, companyId);
        // 按照创建时间排序
        // queryWrapper.orderByAsc(Teacher::getCreateDate);

        //分页对象
        Page<Teacher> page = new Page<>(pageParams.getPageNo(), pageParams.getPageSize());
        // 查询数据内容获得结果
        Page<Teacher> pageResult = teacherMapper.selectPage(page, queryWrapper);
        // 获取数据列表
        List<Teacher> list = pageResult.getRecords();
        // 获取数据总数
        long total = pageResult.getTotal();
        // 构建结果集
        return new PageResult<>(list, total, pageParams.getPageNo(), pageParams.getPageSize());
    }

    // 查询课程教师信息
    public List<Teacher> getCourseTeacherList(Long courseId){
        List<Teacher> res = new ArrayList<>();
        LambdaQueryWrapper<CourseTeacher> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CourseTeacher::getCourseId, courseId);
        List<CourseTeacher> courseTeachers = courseTeacherMapper.selectList(queryWrapper);
        for(CourseTeacher courseTeacher : courseTeachers){
            Long teacherId = courseTeacher.getTeacherId();
            Teacher teacher = teacherMapper.selectById(teacherId);
            res.add(teacher);
        }
        return res;
    }

    // 删除教师信息
    public void deleteTeacher(Long companyId, Long teacherId) {
        Teacher teacher = teacherMapper.selectById(teacherId);
        if(teacher == null)
            CustomizeException.cast("教师信息不存在");
        if(!Objects.equals(teacher.getCompanyId(), companyId))
            CustomizeException.cast("无权限删除该教师信息");
        LambdaQueryWrapper<CourseTeacher> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CourseTeacher::getTeacherId, teacherId);
        int count = courseTeacherMapper.selectCount(queryWrapper);
        if(count > 0)
            CustomizeException.cast("该教师信息已被课程使用，无法删除");

        teacherMapper.deleteById(teacherId);
    }

    public Teacher modifyTeacher(Long companyId, TeacherDto teacherDto) {
        // 得到课程id
        Long teacherId = teacherDto.getId();
        // 查询课程基本信息
        Teacher teacher = teacherMapper.selectById(teacherId);
        if (teacher == null) {
            // 新增
            teacher = new Teacher();
            BeanUtils.copyProperties(teacherDto, teacher);
            teacher.setCompanyId(companyId);
            teacher.setCreateDate(LocalDateTime.now());
            teacherMapper.insert(teacher);
        }
        else{
            // 修改
            if(!Objects.equals(teacher.getCompanyId(), companyId))
                CustomizeException.cast("无权限修改该教师信息");
            BeanUtils.copyProperties(teacherDto, teacher);
            teacherMapper.updateById(teacher);
        }
        return teacher;
    }
}
