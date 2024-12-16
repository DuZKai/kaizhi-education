package com.edu.kaizhi.search.controller;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.search.po.CourseIndex;
import com.edu.kaizhi.search.service.IndexService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.web.bind.annotation.*;

import static com.edu.kaizhi.base.constant.RedisConfig.SearchList;

/**
 * 课程索引接口
 */
@Api(value = "课程信息索引接口", tags = "课程信息索引接口")
@RestController
@RequestMapping("/index")
public class CourseIndexController {

    @Value("${elasticsearch.course.index}")
    private String courseIndexStore;

    @Autowired
    IndexService indexService;

    @ApiOperation("添加课程信息")
    @PostMapping("/course")
    @CacheEvict(cacheNames = SearchList, allEntries = true)
    public Boolean add(@RequestBody CourseIndex courseIndex) {

        Long id = courseIndex.getId();
        if (id == null) {
            CustomizeException.cast("课程id为空");
        }
        Boolean result = indexService.addCourseIndex(courseIndexStore, String.valueOf(id), courseIndex);
        if (!result) {
            CustomizeException.cast("添加课程信息失败");
        }
        return result;

    }

    @ApiOperation("删除课程信息")
    @DeleteMapping("/course/{courseId}")
    @CacheEvict(cacheNames = SearchList, allEntries = true)
    public Boolean delete(@PathVariable String courseId) {

        if (courseId == null || courseId.isEmpty() || courseId.equals("null")) {
            CustomizeException.cast("课程id为空");
        }
        Boolean result = indexService.deleteCourseIndex(courseIndexStore, courseId);
        if (!result) {
            CustomizeException.cast("删除课程信息失败");
        }
        return result;

    }
}
