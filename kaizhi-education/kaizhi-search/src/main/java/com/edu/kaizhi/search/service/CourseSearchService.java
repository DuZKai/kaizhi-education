package com.edu.kaizhi.search.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.search.dto.SearchCourseParamDto;
import com.edu.kaizhi.search.dto.SearchPageResultDto;
import com.edu.kaizhi.search.dto.SearchTagDto;
import com.edu.kaizhi.search.po.CourseIndex;

import java.util.List;

/**
 * 课程搜索service
 */
public interface CourseSearchService {


    /**
     * @param pageParams           分页参数
     * @param searchCourseParamDto 搜索条件
     * @return com.edu.kaizhi.base.model.PageResult<com.edu.kaizhi.search.po.CourseIndex> 课程列表
     * 搜索课程列表
     */
    SearchPageResultDto<CourseIndex> queryCoursePubIndex(PageParams pageParams, SearchCourseParamDto searchCourseParamDto);

    /**
     * 查询课程分类
     *
     * @return
     */
    public List<SearchTagDto> queryCourseTag();

    /**
     * @param pageParams           分页参数
     * @param searchCourseParamDto 搜索条件
     * @return com.edu.kaizhi.base.model.PageResult<com.edu.kaizhi.search.po.CourseIndex> 课程列表
     * 搜索课程列表
     */
    SearchPageResultDto<CourseIndex> queryCoursePubNewIndex(PageParams pageParams, SearchCourseParamDto searchCourseParamDto);
}
