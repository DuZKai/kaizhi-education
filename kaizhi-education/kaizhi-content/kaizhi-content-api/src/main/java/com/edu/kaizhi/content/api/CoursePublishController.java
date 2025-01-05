package com.edu.kaizhi.content.api;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.model.dto.CourseBaseInfoDto;
import com.edu.kaizhi.content.model.dto.CoursePreviewDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.content.model.po.Teacher;
import com.edu.kaizhi.content.service.CoursePublishService;
import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.annotation.RequiresUser;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 课程预览，发布
 */
@Api(value = "课程发布接口",tags = "课程发布接口")
@Controller
public class CoursePublishController {
    @Autowired
    CoursePublishService coursePublishService;

    @GetMapping("/coursepreview/{courseId}")
    public ModelAndView preview(@PathVariable("courseId") Long courseId) {

        ModelAndView modelAndView = new ModelAndView();
        CoursePreviewDto coursePreviewInfo = coursePublishService.getCoursePreviewInfo(courseId);
        modelAndView.addObject("model", coursePreviewInfo);
        modelAndView.setViewName("course_template"); // 根据视图名称+.ftl找到模版
        return modelAndView;
    }


    @ResponseBody
    @PostMapping("/courseaudit/commit/{courseId}")
    @RequiresUser
    public void commitAudit(@PathVariable("courseId") Long courseId) {
        Long companyId = UserContext.getCompanyId();
        coursePublishService.commitAudit(companyId, courseId);
    }

    @ApiOperation("课程发布")
    @ResponseBody
    @PostMapping("/coursepublish/{courseId}")
    @RequiresUser
    public void coursePublish(@PathVariable("courseId") Long courseId) {
        Long companyId = UserContext.getCompanyId();
        coursePublishService.publish(companyId, courseId);
    }

    @ApiOperation("查询课程发布信息")
    @ResponseBody
    @GetMapping("/r/coursepublish/{courseId}")
    public CoursePublish getCoursepublish(@PathVariable("courseId") Long courseId) {
        // 查询课程发布信息
        return coursePublishService.getCoursePublish(courseId);
    }


    @ApiOperation("获取课程发布信息")
    @ResponseBody
    @GetMapping("/course/whole/{courseId}")
    public CoursePreviewDto getCoursePublish(@PathVariable("courseId") Long courseId) {
        //查询课程发布信息
        // CoursePublish coursePublish = coursePublishService.getCoursePublish(courseId);
        // 先从缓存查询，没有再查数据库
        CoursePublish coursePublish = coursePublishService.getCoursePublishCache(courseId);
        if (coursePublish == null) {
            return new CoursePreviewDto();
        }

        //课程基本信息
        CourseBaseInfoDto courseBase = new CourseBaseInfoDto();
        BeanUtils.copyProperties(coursePublish, courseBase);
        //课程计划
        List<TeachplanDto> teachplans = JSON.parseArray(coursePublish.getTeachplan(), TeachplanDto.class);
        // 师资信息
        List<Teacher> teacher = JSON.parseArray(coursePublish.getTeachers(), Teacher.class);

        CoursePreviewDto coursePreviewInfo = new CoursePreviewDto();
        coursePreviewInfo.setCourseBase(courseBase);
        coursePreviewInfo.setTeachplans(teachplans);
        coursePreviewInfo.setTeacher(teacher);
        return coursePreviewInfo;
    }

    public CoursePublish getCoursePublishCache(Long courseId){
        return coursePublishService.getCoursePublishCache(courseId);
    }


    @ApiOperation("下架课程")
    @PostMapping("/courseoffline/{courseId}")
    @RequiresUser
    public ResponseEntity<Void> offlineCourse(@PathVariable("courseId") Long courseId) {
        Long companyId = UserContext.getCompanyId();

        try {
            coursePublishService.offlineCourse(companyId, courseId);
            return ResponseEntity.ok().build();
        } catch (CustomizeException ex) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        } catch (Exception ex) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}
