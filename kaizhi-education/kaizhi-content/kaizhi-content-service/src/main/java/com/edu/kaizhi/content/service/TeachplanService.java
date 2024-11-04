package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;

import java.util.List;

/**
 * 课程计划管理接口
 * */
public interface TeachplanService {
    /**
     * 根据课程id查询课程计划树
     * @param courseId 课程id
     * */
    public List<TeachplanDto> findTeachplanTreeNodes(Long courseId);
}
