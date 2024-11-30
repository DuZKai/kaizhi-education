package com.edu.kaizhi.content.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.model.dto.QueryTeacherParamsDto;
import com.edu.kaizhi.content.model.dto.TeacherDto;
import com.edu.kaizhi.content.model.po.Teacher;

import java.util.List;

public interface TeacherService {
    // 查询所有教师信息
    public PageResult<Teacher> queryTeacherList(Long companyId, PageParams pageParams, QueryTeacherParamsDto queryTeacherParamsDto);

    // 查询课程教师信息
    public List<Teacher> getCourseTeacherList(Long courseId);

    // 删除教师信息
    public void deleteTeacher(Long companyId, Long teacherId);

    // 保存教师信息
    public Teacher modifyTeacher(Long companyId, TeacherDto teacherDto);
}
