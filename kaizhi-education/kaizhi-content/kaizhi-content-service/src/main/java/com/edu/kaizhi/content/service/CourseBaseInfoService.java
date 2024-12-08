package com.edu.kaizhi.content.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.model.dto.*;
import com.edu.kaizhi.content.model.po.CourseBase;

/**
 * 课程信息管理接口
 * */
public interface CourseBaseInfoService {

    /**
     * 课程分页查询
     * @param companyId 机构ID
     * @param pageParams 分页参数
     * @param queryCourseParamsDto 查询条件
     * @return PageResult<CourseBase> 查询课程信息列表
     */
    PageResult<CourseListDto> queryCourseBaseList(Long companyId, PageParams pageParams, QueryCourseParamsDto queryCourseParamsDto);

    /**
     * 新增课程
     * @param companyId 机构ID
     * @param addCourseDto 新增课程信息
     * @return CourseBaseInfoDto 新增课程详细信息
     */
    CourseBaseInfoDto createCourseBase(Long companyId, AddCourseDto addCourseDto);

    /**
     * 根据课程ID查询课程信息
     * @param courseId 课程ID
     * @return CourseBaseInfoDto 课程详细信息
     */
    CourseBaseInfoDto getCourseBaseInfo(Long courseId);

    /**
     * 修改课程
     * @param companyId 机构ID
     * @param editCourseDto 修改课程信息
     * @return CourseBaseInfoDto 修改后的课程详细信息
     */
    CourseBaseInfoDto updateCourseBase(Long companyId, String name, EditCourseDto editCourseDto);

    /**
     * 删除课程
     * @param companyId 机构ID
     * @param courseId 课程ID
     */
    void delectCourse(Long companyId, Long courseId);

}
