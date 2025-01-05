package com.edu.kaizhi.content.model.dto;

import com.edu.kaizhi.content.model.po.CourseCategory;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 课程分类
 * </p>
 *
 * @author zikai
 */
@Data
public class CourseCategoryTreeDto extends CourseCategory implements Serializable{
    // 子节点
    List<CourseCategoryTreeDto> childrenTreeNodes;
}
