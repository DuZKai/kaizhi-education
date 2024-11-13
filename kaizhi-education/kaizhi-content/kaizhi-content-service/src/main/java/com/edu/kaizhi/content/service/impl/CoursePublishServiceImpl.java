package com.edu.kaizhi.content.service.impl;


import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.exception.CommonError;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.mapper.CourseBaseMapper;
import com.edu.kaizhi.content.mapper.CourseMarketMapper;
import com.edu.kaizhi.content.mapper.CoursePublishMapper;
import com.edu.kaizhi.content.mapper.CoursePublishPreMapper;
import com.edu.kaizhi.content.model.dto.CourseBaseInfoDto;
import com.edu.kaizhi.content.model.dto.CoursePreviewDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.CourseBase;
import com.edu.kaizhi.content.model.po.CourseMarket;
import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.content.model.po.CoursePublishPre;
import com.edu.kaizhi.content.service.CourseBaseInfoService;
import com.edu.kaizhi.content.service.CoursePublishService;
import com.edu.kaizhi.content.service.TeachplanService;
import com.edu.kaizhi.messagesdk.model.po.MqMessage;
import com.edu.kaizhi.messagesdk.service.MqMessageService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

/**
 * 课程发布接口实现
 */
@Service
public class CoursePublishServiceImpl implements CoursePublishService {

    @Autowired
    CourseBaseInfoService courseBaseInfoService;

    @Autowired
    TeachplanService teachplanService;

    @Autowired
    CourseBaseMapper courseBaseMapper;

    @Autowired
    CourseMarketMapper courseMarketMapper;

    @Autowired
    CoursePublishPreMapper coursePublishPreMapper;

    @Autowired
    CoursePublishMapper coursePublishMapper;

    @Autowired
    MqMessageService mqMessageService;

    public CoursePreviewDto getCoursePreviewInfo(Long courseId) {

        //课程基本信息、营销信息
        CourseBaseInfoDto courseBaseInfo = courseBaseInfoService.getCourseBaseInfo(courseId);

        //课程计划信息
        List<TeachplanDto> teachplanTree = teachplanService.findTeachplanTreeNodes(courseId);

        CoursePreviewDto coursePreviewDto = new CoursePreviewDto();
        coursePreviewDto.setCourseBase(courseBaseInfo);
        coursePreviewDto.setTeachplans(teachplanTree);
        return coursePreviewDto;
    }

    @Transactional
    public void commitAudit(Long companyId, Long courseId) {

        //约束校验
        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        //课程审核状态
        String auditStatus = courseBase.getAuditStatus();
        //当前审核状态为已提交不允许再次提交
        if ("202003".equals(auditStatus)) {
            CustomizeException.cast("当前为等待审核状态，审核完成可以再次提交。");
        }
        //本机构只允许提交本机构的课程
        if (!courseBase.getCompanyId().equals(companyId)) {
            CustomizeException.cast("不允许提交其它机构的课程。");
        }

        //课程图片是否填写
        if (StringUtils.isEmpty(courseBase.getPic())) {
            CustomizeException.cast("提交失败，请上传课程图片");
        }
        // TODO：本机构只能提交本机构课程

        //添加课程预发布记录
        CoursePublishPre coursePublishPre = new CoursePublishPre();
        //课程基本信息加部分营销信息
        CourseBaseInfoDto courseBaseInfo = courseBaseInfoService.getCourseBaseInfo(courseId);
        BeanUtils.copyProperties(courseBaseInfo, coursePublishPre);
        //课程营销信息
        CourseMarket courseMarket = courseMarketMapper.selectById(courseId);
        //转为json
        String courseMarketJson = JSON.toJSONString(courseMarket);
        //将课程营销信息json数据放入课程预发布表
        coursePublishPre.setMarket(courseMarketJson);

        //查询课程计划信息
        List<TeachplanDto> teachplanTree = teachplanService.findTeachplanTreeNodes(courseId);
        if (teachplanTree.isEmpty()) {
            CustomizeException.cast("提交失败，还没有添加课程计划");
        }
        //转json
        String teachplanTreeString = JSON.toJSONString(teachplanTree);
        coursePublishPre.setTeachplan(teachplanTreeString);

        //设置预发布记录状态,已提交
        coursePublishPre.setStatus("202003");
        //教学机构id
        coursePublishPre.setCompanyId(companyId);
        //提交时间
        coursePublishPre.setCreateDate(LocalDateTime.now());
        CoursePublishPre coursePublishPreUpdate = coursePublishPreMapper.selectById(courseId);
        if (coursePublishPreUpdate == null) {
            //添加课程预发布记录
            coursePublishPreMapper.insert(coursePublishPre);
        } else {
            coursePublishPreMapper.updateById(coursePublishPre);
        }

        //更新课程基本表的审核状态
        courseBase.setAuditStatus("202003");
        courseBaseMapper.updateById(courseBase);
    }


    @Transactional
    public void publish(Long companyId, Long courseId) {
        //查预发布表
        CoursePublishPre coursePublishPre = coursePublishPreMapper.selectById(courseId);
        if (coursePublishPre == null)
            CustomizeException.cast("课程没有审核记录，无法发布");

        // 课程没审核通过，不允许发布
        if (!coursePublishPre.getStatus().equals("202004"))
            CustomizeException.cast("课程未审核通过，不允许发布");

        //保存课程发布信息
        saveCoursePublish(courseId);

        // 向消息表写数据
        saveCoursePublishMessage(courseId);

        // 预发布表数据删除
        coursePublishPreMapper.deleteById(courseId);
    }

    /**
     * 保存课程发布信息
     * @param courseId  课程id
     * @return void
     */
    private void saveCoursePublish(Long courseId){
        CoursePublishPre coursePublishPre = coursePublishPreMapper.selectById(courseId);
        // 向课程发布表写数据
        CoursePublish coursePublish = new CoursePublish();
        BeanUtils.copyProperties(coursePublishPre, coursePublish);
        coursePublish.setStatus("203002");
        coursePublish.setCreateDate(LocalDateTime.now());

        // 先查询课程发布，如果有则更新，没有则添加
        CoursePublish coursePublishUpdate = coursePublishMapper.selectById(courseId);
        if (coursePublishUpdate == null)
            coursePublishMapper.insert(coursePublish);
        else
            coursePublishMapper.updateById(coursePublish);

        //更新课程基本表的发布状态
        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        courseBase.setStatus("203002");
        courseBaseMapper.updateById(courseBase);
    }

    /**
     * 保存消息表记录
     * @param courseId  课程id
     * @return void
     */
    private void saveCoursePublishMessage(Long courseId){
        MqMessage mqMessage = mqMessageService.addMessage("course_publish", String.valueOf(courseId), null, null);
        if(mqMessage==null){
            CustomizeException.cast(CommonError.UNKOWN_ERROR);
        }
    }

}
