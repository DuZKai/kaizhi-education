package com.edu.kaizhi.search.controller;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.search.dto.SearchCourseParamDto;
import com.edu.kaizhi.search.dto.SearchPageResultDto;
import com.edu.kaizhi.search.po.CourseIndex;
import com.edu.kaizhi.search.service.CourseSearchService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.*;

import static com.edu.kaizhi.base.constant.RedisConfig.SearchList;

/**
 * 课程搜索接口
 */
@Api(value = "课程搜索接口", tags = "课程搜索接口")
@RestController
@RequestMapping("/course")
public class CourseSearchController {

    @Autowired
    CourseSearchService courseSearchService;

    @ApiOperation("课程搜索列表")
    @GetMapping("/list")
    // @Cacheable(cacheNames = SearchList, key = "#pageParams.pageNo + '-' + #pageParams.pageSize + '-' + #searchCourseParamDto.hashCode()")
    public SearchPageResultDto<CourseIndex> list(PageParams pageParams, SearchCourseParamDto searchCourseParamDto) {
        return courseSearchService.queryCoursePubIndex(pageParams, searchCourseParamDto);
    }
}
