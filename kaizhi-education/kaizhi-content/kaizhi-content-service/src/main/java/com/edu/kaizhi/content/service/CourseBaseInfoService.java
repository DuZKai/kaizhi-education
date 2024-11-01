package com.edu.kaizhi.content.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.model.dto.QueryCourseParamsDto;
import com.edu.kaizhi.content.model.po.CourseBase;

/**
 * 课程信息管理接口
 * */
public interface CourseBaseInfoService {

    /**
     * 课程分页查询
     * @param pageParams 分页参数
     * @param queryCourseParamsDto 查询条件
     * @return PageResult<CourseBase> 查询课程信息列表
     */
    PageResult<CourseBase> queryCourseBaseList(PageParams pageParams, QueryCourseParamsDto queryCourseParamsDto);
}
