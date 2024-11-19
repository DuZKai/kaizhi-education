package com.edu.kaizhi.learning.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.learning.feignclient.ContentServiceClient;
import com.edu.kaizhi.learning.mapper.ChooseCourseMapper;
import com.edu.kaizhi.learning.mapper.CourseTablesMapper;
import com.edu.kaizhi.learning.model.dto.ChooseCourseDto;
import com.edu.kaizhi.learning.model.dto.CourseTablesDto;
import com.edu.kaizhi.learning.model.po.ChooseCourse;
import com.edu.kaizhi.learning.model.po.CourseTables;
import com.edu.kaizhi.learning.service.MyCourseTablesService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;
import java.util.List;

/**
 * 选课相关接口实现
 */
@Slf4j
@Service
public class MyCourseTablesServiceImpl implements MyCourseTablesService {

    @Autowired
    ChooseCourseMapper chooseCourseMapper;

    @Autowired
    CourseTablesMapper courseTablesMapper;

    @Autowired
    ContentServiceClient contentServiceClient;

    @Autowired
    MyCourseTablesService myCourseTablesService;

    @Autowired
    MyCourseTablesServiceImpl currentProxy;

    @Transactional
    public ChooseCourseDto addChooseCourse(String userId, Long courseId) {
        //查询课程信息
        CoursePublish coursepublish = contentServiceClient.getCoursePublish(courseId);
        if (coursepublish == null) {
            CustomizeException.cast("查询课程信息失败");
        }
        //课程收费标准
        String charge = coursepublish.getCharge();
        //选课记录
        ChooseCourse chooseCourse = null;
        if ("201000".equals(charge)) {//课程免费
            //添加免费课程
            chooseCourse = addFreeCoruse(userId, coursepublish);
            //添加到我的课程表
            addCourseTabls(chooseCourse);
        } else {
            //添加收费课程
            chooseCourse = addChargeCoruse(userId, coursepublish);
        }
        //获取学习资格
        CourseTablesDto learningStatus = getLearningStatus(userId, courseId);

        // 返回选课记录
        ChooseCourseDto chooseCourseDto = new ChooseCourseDto();
        BeanUtils.copyProperties(chooseCourse, chooseCourseDto);
        chooseCourseDto.setLearnStatus(learningStatus.getLearnStatus());
        return chooseCourseDto;
    }


    //添加免费课程,免费课程加入选课记录表、我的课程表
    public ChooseCourse addFreeCoruse(String userId, CoursePublish coursePublish) {
        Long courseId = coursePublish.getId();
        // 判断如果存在免费选课记录则不添加，直接返回
        LambdaQueryWrapper<ChooseCourse> queryWrapper = new LambdaQueryWrapper<ChooseCourse>().
                eq(ChooseCourse::getUserId, userId).
                eq(ChooseCourse::getCourseId, courseId).
                eq(ChooseCourse::getOrderType, "700001"). // 免费课程
                        eq(ChooseCourse::getStatus, "701001");// 选课成功
        List<ChooseCourse> chooseCourses = chooseCourseMapper.selectList(queryWrapper);
        if (chooseCourses != null && !chooseCourses.isEmpty()) {
            return chooseCourses.get(0);
        }
        //添加选课记录
        ChooseCourse chooseCourse = new ChooseCourse();
        chooseCourse.setCourseId(coursePublish.getId());
        chooseCourse.setCourseName(coursePublish.getName());
        chooseCourse.setUserId(userId);
        chooseCourse.setCompanyId(coursePublish.getCompanyId());
        chooseCourse.setOrderType("700001");//免费课程
        chooseCourse.setCreateDate(LocalDateTime.now());
        chooseCourse.setCoursePrice(coursePublish.getPrice());
        chooseCourse.setValidDays(365);//免费课程默认365
        chooseCourse.setStatus("701001");//选课成功
        chooseCourse.setValidtimeStart(LocalDateTime.now());
        chooseCourse.setValidtimeEnd(LocalDateTime.now().plusDays(365));
        chooseCourse.setCoursePrice(0f);//免费课程价格为0

        if (chooseCourseMapper.insert(chooseCourse) <= 0) {
            CustomizeException.cast("添加选课记录失败");
        }

        return chooseCourse;

    }

    //添加收费课程
    public ChooseCourse addChargeCoruse(String userId, CoursePublish coursePublish) {
        Long courseId = coursePublish.getId();
        // 判断如果存在收费选课记录且记录为待支付，直接返回
        LambdaQueryWrapper<ChooseCourse> queryWrapper = new LambdaQueryWrapper<ChooseCourse>().
                eq(ChooseCourse::getUserId, userId).
                eq(ChooseCourse::getCourseId, courseId).
                eq(ChooseCourse::getOrderType, "700002"). // 收费课程
                        eq(ChooseCourse::getStatus, "701002");// 待支付
        List<ChooseCourse> chooseCourses = chooseCourseMapper.selectList(queryWrapper);
        if (chooseCourses != null && !chooseCourses.isEmpty()) {
            return chooseCourses.get(0);
        }
        //添加选课记录
        ChooseCourse chooseCourse = new ChooseCourse();
        chooseCourse.setCourseId(coursePublish.getId());
        chooseCourse.setCourseName(coursePublish.getName());
        chooseCourse.setUserId(userId);
        chooseCourse.setCompanyId(coursePublish.getCompanyId());
        chooseCourse.setOrderType("700002");//收费课程
        chooseCourse.setCreateDate(LocalDateTime.now());
        chooseCourse.setCoursePrice(coursePublish.getPrice());
        chooseCourse.setValidDays(365);
        chooseCourse.setStatus("701002");//待支付
        chooseCourse.setValidtimeStart(LocalDateTime.now());
        chooseCourse.setValidtimeEnd(LocalDateTime.now().plusDays(365));

        if (chooseCourseMapper.insert(chooseCourse) <= 0) {
            CustomizeException.cast("添加选课记录失败");
        }

        return chooseCourse;
    }

    /**
     * 添加到我的课程表
     *
     * @param chooseCourse 选课记录
     * @return com.edu.kaizhi.learning.model.po.XcCourseTables
     */
    public CourseTables addCourseTabls(ChooseCourse chooseCourse) {
        //选课记录完成且未过期可以添加课程到课程表
        String status = chooseCourse.getStatus();
        if (!"701001".equals(status) || LocalDateTime.now().isAfter(chooseCourse.getValidtimeEnd())) {
            CustomizeException.cast("选课未成功，无法添加到课程表");
        }
        //查询我的课程表
        CourseTables courseTables = getCourseTables(chooseCourse.getUserId(), chooseCourse.getCourseId());
        if (courseTables != null) {
            return courseTables;
        }
        CourseTables courseTablesNew = new CourseTables();
        BeanUtils.copyProperties(chooseCourse, courseTablesNew);
        courseTablesNew.setChooseCourseId(chooseCourse.getId());
        courseTablesNew.setCourseType(chooseCourse.getOrderType());
        courseTablesNew.setCreateDate(LocalDateTime.now());
        courseTablesNew.setUpdateDate(LocalDateTime.now());
        if (courseTablesMapper.insert(courseTablesNew) <= 0) {
            CustomizeException.cast("添加课程表失败");
        }

        return courseTablesNew;

    }

    /**
     * 根据课程和用户查询我的课程表中某一门课程
     *
     * @param userId
     * @param courseId
     * @return com.edu.kaizhi.learning.model.po.XcCourseTables
     */
    public CourseTables getCourseTables(String userId, Long courseId) {
        // 数据库有唯一标识
        return courseTablesMapper.selectOne(new LambdaQueryWrapper<CourseTables>().
                eq(CourseTables::getUserId, userId).eq(CourseTables::getCourseId, courseId));
    }

    public CourseTablesDto getLearningStatus(String userId, Long courseId){
        //查询选课记录
        CourseTablesDto courseTablesDto = new CourseTablesDto();
        ChooseCourse chooseCourse = chooseCourseMapper.selectOne(new LambdaQueryWrapper<ChooseCourse>().
                eq(ChooseCourse::getUserId, userId).eq(ChooseCourse::getCourseId, courseId));
        // 选课记录不存在
        if (chooseCourse == null) {
            courseTablesDto.setLearnStatus("702002");
            return courseTablesDto;
        }
        // 选课记录存在，判断选课状态，是否过期
        if (LocalDateTime.now().isAfter(chooseCourse.getValidtimeEnd())) {
            // 选课过期
            courseTablesDto.setLearnStatus("702003");
            BeanUtils.copyProperties(chooseCourse, courseTablesDto);
            return courseTablesDto;
        }
        courseTablesDto.setLearnStatus("702001");
        return courseTablesDto;
    }

}