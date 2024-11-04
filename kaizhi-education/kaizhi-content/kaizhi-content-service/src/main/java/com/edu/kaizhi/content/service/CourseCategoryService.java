package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;

import java.util.List;

/**
 * 课程分类管理
 * */
public interface CourseCategoryService {
    /**
     * 课程分类树形结构查询
     */
    public List<CourseCategoryTreeDto> queryTreeNodes(String id);

}
