package com.edu.kaizhi.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.content.mapper.*;
import com.edu.kaizhi.content.model.dto.*;
import com.edu.kaizhi.content.model.po.*;
import com.edu.kaizhi.content.service.CourseBaseInfoService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static com.edu.kaizhi.base.constant.SystemStatusConstant.*;

@Service
@Slf4j
public class CourseBaseInfoServiceImpl implements CourseBaseInfoService {
    @Autowired
    CourseBaseMapper courseBaseMapper;

    @Autowired
    CourseMarketMapper courseMarketMapper;

    @Autowired
    CourseCategoryMapper courseCategoryMapper;

    @Autowired
    CourseTeacherMapper courseTeacherMapper;

    @Autowired
    TeachplanMapper teachplanMapper;

    @Autowired
    TeachplanMediaMapper teachplanMediaMapper;
    @Autowired
    private CoursePublishMapper coursePublishMapper;

    // 课程分页查询
    public PageResult<CourseListDto> queryCourseBaseList(Long companyId, PageParams pageParams, QueryCourseParamsDto queryCourseParamsDto) {

        Long pageNo = pageParams.getPageNo();
        Long pageSize = pageParams.getPageSize();
        // 使用分页器会导致无法一次查询多张表
        // // 查询基础课程信息
        // //构建条件查询器
        // LambdaQueryWrapper<CourseBase> queryWrapperBase = new LambdaQueryWrapper<>();
        //
        // //拼接查询条件
        // //根据课程名称模糊查询  name like '%名称%'
        // queryWrapperBase.like(StringUtils.isNotEmpty(queryCourseParamsDto.getCourseName()), CourseBase::getName, queryCourseParamsDto.getCourseName());
        // //根据课程审核状态
        // queryWrapperBase.eq(StringUtils.isNotEmpty(queryCourseParamsDto.getAuditStatus()), CourseBase::getAuditStatus, queryCourseParamsDto.getAuditStatus());
        // //根据课程发布状态
        // queryWrapperBase.eq(StringUtils.isNotEmpty(queryCourseParamsDto.getPublishStatus()), CourseBase::getStatus, queryCourseParamsDto.getPublishStatus());
        //
        // //分页参数
        // Page<CourseBase> page = new Page<>(pageNo, pageSize);
        //
        // //分页查询E page 分页参数, @Param("ew") Wrapper<T> queryWrapper 查询条件
        // Page<CourseBase> pageResultBase = courseBaseMapper.selectPage(page, queryWrapperBase);
        //
        // //数据
        // List<CourseBase> items = pageResultBase.getRecords();
        //
        // //总记录数
        // long total = pageResultBase.getTotal();
        //
        // //准备返回数据 List<T> items, long counts, long page, long pageSize
        // return new PageResult<>(items, total, pageParams.getPageNo(), pageParams.getPageSize());

        LambdaQueryWrapper<CourseBase> queryWrapperBase = new LambdaQueryWrapper<>();

        // 根据培训机构ID拼接查询条件
        queryWrapperBase.eq(CourseBase::getCompanyId, companyId);

        //拼接查询条件
        //根据课程名称模糊查询  name like '%名称%'
        queryWrapperBase.like(StringUtils.isNotEmpty(queryCourseParamsDto.getCourseName()), CourseBase::getName, queryCourseParamsDto.getCourseName());
        //根据课程审核状态
        queryWrapperBase.eq(StringUtils.isNotEmpty(queryCourseParamsDto.getAuditStatus()), CourseBase::getAuditStatus, queryCourseParamsDto.getAuditStatus());
        //根据课程发布状态
        queryWrapperBase.eq(StringUtils.isNotEmpty(queryCourseParamsDto.getPublishStatus()), CourseBase::getStatus, queryCourseParamsDto.getPublishStatus());

        //分页查询E page 分页参数, @Param("ew") Wrapper<T> queryWrapper 查询条件
        List<CourseBase> pageResultBase = courseBaseMapper.selectList(queryWrapperBase);

        List<CourseListDto> items = new ArrayList<>();
        for (CourseBase courseBase : pageResultBase) {
            CourseListDto courseListDto = new CourseListDto();
            BeanUtils.copyProperties(courseBase, courseListDto);
            Long id = courseBase.getId();
            //查询课程营销信息
            CourseMarket courseMarket = courseMarketMapper.selectById(id);
            // 不存在营销信息说明信息不完整，不加入
            if (courseMarket == null)
                continue;

            BeanUtils.copyProperties(courseMarket, courseListDto);

            LambdaQueryWrapper<Teachplan> queryWrapperTeachPlan = new LambdaQueryWrapper<>();
            queryWrapperTeachPlan.eq(Teachplan::getCourseId, id);
            int subsectionNum = teachplanMapper.selectCount(queryWrapperTeachPlan);
            if(subsectionNum == 0)
                continue;

            courseListDto.setSubsectionNum(subsectionNum);
            items.add(courseListDto);
        }
        //总记录数
        long total = items.size();

        // 手动进行分页
        List<CourseListDto> collect = items.stream().skip((pageParams.getPageNo() - 1) * pageParams.getPageSize()) // 跳过前面的数据
                .limit(pageParams.getPageSize())  // 获取当前页的数据
                .collect(Collectors.toList());


        //准备返回数据 List<T> items, long counts, long page, long pageSize
        return new PageResult<>(collect, total, pageNo, pageSize);
    }

    // 新增课程
    @Transactional
    public CourseBaseInfoDto createCourseBase(Long companyId, AddCourseDto dto) {
        // 验证价格合理性
        if (dto.getCharge().equals(CHARGE) && dto.getPrice() == 0) {
            CustomizeException.cast("课程为收费价格不能为空");
        }
        if (dto.getCharge().equals(FREE) && dto.getPrice() != 0) {
            CustomizeException.cast("课程为免费价格不能为空");
        }

        //新增对象
        CourseBase courseBaseNew = new CourseBase();
        //将填写的课程信息赋值给新增对象，属性名称一致即可拷贝
        BeanUtils.copyProperties(dto, courseBaseNew);
        //设置审核状态
        courseBaseNew.setAuditStatus(COURSE_NOT_SUBMITTED);
        //设置发布状态
        courseBaseNew.setStatus(UNPUBLISHED);
        //机构id
        courseBaseNew.setCompanyId(companyId);
        //添加时间
        courseBaseNew.setCreateDate(LocalDateTime.now());
        //插入课程基本信息表
        int insert = courseBaseMapper.insert(courseBaseNew);
        if (insert <= 0) {
            CustomizeException.cast("新增课程基本信息失败");
        }

        // 向课程基本信息表插入数据
        CourseMarket courseMarketNew = new CourseMarket();
        Long courseId = courseBaseNew.getId();
        BeanUtils.copyProperties(dto, courseMarketNew);
        courseMarketNew.setId(courseId);
        // 保存课程营销信息
        if (saveCourseMarket(courseMarketNew) <= 0) {
            CustomizeException.cast("保存课程营销信息失败");
        }
        //查询课程基本信息及营销信息并返回
        return getCourseBaseInfo(courseId);
    }



    //保存课程营销信息
    private int saveCourseMarket(CourseMarket courseMarketNew) {
        //收费规则
        String charge = courseMarketNew.getCharge();
        if (StringUtils.isBlank(charge)) {
            CustomizeException.cast("收费规则没有选择");
        }
        //收费规则为收费
        if (charge.equals(CHARGE)) {
            if (courseMarketNew.getPrice() == null || courseMarketNew.getPrice().floatValue() <= 0) {
                CustomizeException.cast("课程为收费价格不能为空且必须大于0");
            }
        }
        //根据id从课程营销表查询
        CourseMarket courseMarketObj = courseMarketMapper.selectById(courseMarketNew.getId());
        if (courseMarketObj == null) {
            return courseMarketMapper.insert(courseMarketNew);
        } else {
            BeanUtils.copyProperties(courseMarketNew, courseMarketObj);
            courseMarketObj.setId(courseMarketNew.getId());
            return courseMarketMapper.updateById(courseMarketObj);
        }
    }

    //根据课程id查询课程基本信息，包括基本信息和营销信息
    public CourseBaseInfoDto getCourseBaseInfo(Long courseId) {

        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        if (courseBase == null) {
            return null;
        }
        CourseMarket courseMarket = courseMarketMapper.selectById(courseId);
        CourseBaseInfoDto courseBaseInfoDto = new CourseBaseInfoDto();
        BeanUtils.copyProperties(courseBase, courseBaseInfoDto);
        if (courseMarket != null) {
            BeanUtils.copyProperties(courseMarket, courseBaseInfoDto);
        }

        //查询分类名称
        CourseCategory courseCategoryBySt = courseCategoryMapper.selectById(courseBase.getSt());
        courseBaseInfoDto.setStName(courseCategoryBySt.getName());
        CourseCategory courseCategoryByMt = courseCategoryMapper.selectById(courseBase.getMt());
        courseBaseInfoDto.setMtName(courseCategoryByMt.getName());

        return courseBaseInfoDto;

    }

    // 修改课程
    @Transactional
    public CourseBaseInfoDto updateCourseBase(Long companyId, EditCourseDto editCourseDto) {

        // 得到课程id
        Long courseId = editCourseDto.getId();
        // 查询课程基本信息
        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        if (courseBase == null) {
            CustomizeException.cast("课程不存在");
        }

        // 数据合法性校验
        // 根据具体业务逻辑去校验
        // 每个机构只能修改自己机构课程
        if (!companyId.equals(courseBase.getCompanyId())) {
            CustomizeException.cast("本机构只能修改本机构课程");
        }

        // 封装数据
        BeanUtils.copyProperties(editCourseDto, courseBase);
        courseBase.setChangeDate(LocalDateTime.now());
        // 每次重新修改数据，都需要将状态设置为未发布、未审核
        //设置审核状态
        courseBase.setAuditStatus(COURSE_NOT_SUBMITTED);
        //设置发布状态
        courseBase.setStatus(UNPUBLISHED);
        // TODO: 获取修改人
        // courseBase.setChangePeople();

        // 更新数据
        if (courseBaseMapper.updateById(courseBase) <= 0)
            CustomizeException.cast("修改课程基本信息失败");

        //封装营销信息的数据
        CourseMarket courseMarket = new CourseMarket();
        BeanUtils.copyProperties(editCourseDto, courseMarket);
        saveCourseMarket(courseMarket);
        //查询课程信息
        return getCourseBaseInfo(courseId);

    }

    // 删除课程
    @Transactional
    public void delectCourse(Long companyId, Long courseId) {
        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        if (!companyId.equals(courseBase.getCompanyId()))
            CustomizeException.cast("只允许删除本机构的课程");
        // 删除课程教师信息
        LambdaQueryWrapper<CourseTeacher> teacherLambdaQueryWrapper = new LambdaQueryWrapper<>();
        teacherLambdaQueryWrapper.eq(CourseTeacher::getCourseId, courseId);
        courseTeacherMapper.delete(teacherLambdaQueryWrapper);
        // 删除课程计划
        LambdaQueryWrapper<Teachplan> teachplanLambdaQueryWrapper = new LambdaQueryWrapper<>();
        teachplanLambdaQueryWrapper.eq(Teachplan::getCourseId, courseId);
        teachplanMapper.delete(teachplanLambdaQueryWrapper);

        // 删除课程计划对应媒资信息
        LambdaQueryWrapper<TeachplanMedia> teachplanMediaLambdaQueryWrapper = new LambdaQueryWrapper<>();
        teachplanMediaLambdaQueryWrapper.eq(TeachplanMedia::getCourseId, courseId);
        teachplanMediaMapper.delete(teachplanMediaLambdaQueryWrapper);

        // 删除营销信息
        courseMarketMapper.deleteById(courseId);
        // 删除课程基本信息
        courseBaseMapper.deleteById(courseId);
    }


}
