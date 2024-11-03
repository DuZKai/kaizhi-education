package com.edu.kaizhi.content.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.po.CourseCategory;

import java.util.List;

/**
 * <p>
 * 课程分类 Mapper 接口
 * </p>
 *
 * @author zikai
 */
public interface CourseCategoryMapper extends BaseMapper<CourseCategory> {

    // 使用递归查询课程树形分类
    public List<CourseCategoryTreeDto> selectTreeNodes(String id);

}
