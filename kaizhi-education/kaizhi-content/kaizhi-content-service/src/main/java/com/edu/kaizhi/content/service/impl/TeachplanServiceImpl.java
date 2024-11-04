package com.edu.kaizhi.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.content.mapper.CourseCategoryMapper;
import com.edu.kaizhi.content.mapper.TeachplanMapper;
import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.SaveTeachplanDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.CourseCategory;
import com.edu.kaizhi.content.model.po.Teachplan;
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

    private int getTeachplanCount(Long parentId, Long courseId) {
        LambdaQueryWrapper<Teachplan> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper = queryWrapper.eq(Teachplan::getParentid, parentId).eq(Teachplan::getCourseId, courseId);
        return teachplanMapper.selectCount(queryWrapper);
    }
}
