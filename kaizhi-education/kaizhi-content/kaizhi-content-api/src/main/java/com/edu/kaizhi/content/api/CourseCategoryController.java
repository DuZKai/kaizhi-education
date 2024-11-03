package com.edu.kaizhi.content.api;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.QueryCourseParamsDto;
import com.edu.kaizhi.content.model.po.CourseBase;
import com.edu.kaizhi.content.service.CourseBaseInfoService;
import com.edu.kaizhi.content.service.CourseCategoryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * 课程分类接口
 */
@Api(value = "课程分类接口", tags = "课程分类接口")
@RestController
public class CourseCategoryController {
    @Autowired
    CourseCategoryService courseCategoryService;

    @ApiOperation("课程分类查询")
    @GetMapping("/course-category/tree-nodes")
    public List<CourseCategoryTreeDto> queryTreeNodes() {
        // TODO: 后续可能不只是1作为根节点
        return courseCategoryService.queryTreeNodes("1");
    }

}
