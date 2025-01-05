package com.edu.kaizhi.learning.api;

import com.edu.kaizhi.cacheable.annotation.ExpirableCacheable;
import com.edu.kaizhi.learning.model.dto.CourseHotInfoDto;
import com.edu.kaizhi.learning.model.dto.CoursePeopleInfoDto;
import com.edu.kaizhi.learning.service.CourseUserCountService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static com.edu.kaizhi.base.constant.RedisConfig.CourseUserCount;
import static com.edu.kaizhi.base.constant.RedisConfig.HotList;

@Api(value = "热门课程接口", tags = "热门课程接口")
@Slf4j
@RestController
public class CourseUserCountController {

    @Autowired
    CourseUserCountService courseUserCountService;

    @ApiOperation("查询热门课程")
    @GetMapping("/hotTop50")
    @ExpirableCacheable(cacheNames = HotList, key = "'count'", dailyCache = true, autoRefreshDailyCache = true)
    public List<CourseHotInfoDto> queryTop50() {
        return courseUserCountService.queryTop50();
    }

    @ApiOperation("查询课程用户数")
    @GetMapping("/userCount")
    @ExpirableCacheable(cacheNames = CourseUserCount, key = "'count'", dailyCache = true, autoRefreshDailyCache = true)
    public List<CoursePeopleInfoDto> queryUserCount() {
        return courseUserCountService.queryUserCount();
    }
}
