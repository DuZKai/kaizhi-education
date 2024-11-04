package com.edu.kaizhi.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.mapper.CourseCategoryMapper;
import com.edu.kaizhi.content.mapper.TeachplanMapper;
import com.edu.kaizhi.content.mapper.TeachplanMediaMapper;
import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.SaveTeachplanDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.CourseCategory;
import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import com.edu.kaizhi.content.service.CourseCategoryService;
import com.edu.kaizhi.content.service.TeachplanService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@Service
public class TeachplanServiceImpl implements TeachplanService {

    @Autowired
    TeachplanMapper teachplanMapper;

    @Autowired
    TeachplanMediaMapper teachplanMediaMapper;

    public List<TeachplanDto> findTeachplanTreeNodes(Long courseId){
        return teachplanMapper.selectTreeNodes(courseId);
    }

    @Transactional
    public void saveTeachplan(SaveTeachplanDto teachplanDto) {
        //课程计划id
        Long id = teachplanDto.getId();
        //修改课程计划
        if (id == null) {
            // 新增
            Teachplan teachplan = new Teachplan();
            BeanUtils.copyProperties(teachplanDto, teachplan);

            // 确认排序字段，找到同级节点个数，排序字段就是同级加一
            Long parentId = teachplanDto.getParentid();
            Long courseId = teachplanDto.getCourseId();
            teachplan.setOrderby(getTeachplanCount(parentId, courseId) + 1);

            teachplan.setCreateDate(LocalDateTime.now()); // 确认创建时间

            teachplanMapper.insert(teachplan);

        }
        else{
            // 修改
             Teachplan teachplan = teachplanMapper.selectById(id);
            // 将参数赋值到teachplan
            BeanUtils.copyProperties(teachplanDto, teachplan);
            teachplanMapper.updateById(teachplan);
        }
    }

    @Transactional
    public void deleteTeachplan(Long id) {
        if (id == null)
            CustomizeException.cast("课程计划ID为空");
        Teachplan teachplan = teachplanMapper.selectById(id);
        if (teachplan == null)
            CustomizeException.cast("删除课程计划失败，课程计划不存在");
        if(teachplan.getGrade() == 1){
            // 大章节删除前判断
            // 判断子节点是否存在
            LambdaQueryWrapper<Teachplan> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper = queryWrapper.eq(Teachplan::getParentid, id);
            int count = teachplanMapper.selectCount(queryWrapper);
            if (count > 0) {
                CustomizeException.cast("删除课程计划失败，存在子章节，无法操作");
            }
        }
        else{
            // 小章节删除前判断，需要将teachplan_media表关联的信息也删除
            LambdaQueryWrapper<TeachplanMedia> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(TeachplanMedia::getTeachplanId, id);
            teachplanMediaMapper.delete(queryWrapper);
        }

        // 删除课程计划
        teachplanMapper.deleteById(id);
    }


    @Transactional
    public List<TeachplanDto> exchangeTeachplan(Long id, Boolean upMode){
        Teachplan teachplan = teachplanMapper.selectById(id);
        if (teachplan == null)
            CustomizeException.cast("课程计划不存在");
        LambdaQueryWrapper<Teachplan> queryWrapper = new LambdaQueryWrapper<>();
        Integer grade = teachplan.getGrade();
        Integer orderby = teachplan.getOrderby();
        Integer newOrderby = orderby + (upMode ? -1 : 1);

        queryWrapper = queryWrapper.
                eq(Teachplan::getGrade, grade).
                eq(Teachplan::getParentid, teachplan.getParentid()).
                eq(Teachplan::getCourseId, teachplan.getCourseId()).
                eq(Teachplan::getOrderby, newOrderby);
        Teachplan lastTeachplan = teachplanMapper.selectOne(queryWrapper);

        if(lastTeachplan == null){
            if(upMode)
                CustomizeException.cast("已到达该章节顶端，无法继续上移");
            else
                CustomizeException.cast("已到达该章节底端，无法继续下移");
        }

        // 交换orderby
        teachplan.setOrderby(newOrderby);
        lastTeachplan.setOrderby(orderby);
        teachplanMapper.updateById(teachplan);
        teachplanMapper.updateById(lastTeachplan);
        return teachplanMapper.selectTreeNodes(teachplan.getCourseId());
    }


    private int getTeachplanCount(Long parentId, Long courseId) {
        LambdaQueryWrapper<Teachplan> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper = queryWrapper.eq(Teachplan::getParentid, parentId).eq(Teachplan::getCourseId, courseId);
        return teachplanMapper.selectCount(queryWrapper);
    }

}
