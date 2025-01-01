package com.edu.kaizhi.learning.api;

import com.edu.kaizhi.learning.model.dto.CourseHotInfoDto;
import com.edu.kaizhi.learning.service.CourseHotService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api(value = "热门课程接口", tags = "热门课程接口")
@Slf4j
@RestController
public class CourseHotController {

    @Autowired
    CourseHotService courseHotService;

    @ApiOperation("查询热门课程")
    @GetMapping("/hotTop50")
    public List<CourseHotInfoDto> queryTop50() {
        return courseHotService.queryTop50();
    }
}
