package com.edu.kaizhi.learning.model.dto;

import lombok.Data;
import lombok.ToString;

/**
 * 热门模型类
 */
@Data
@ToString
public class CourseHotInfoDto {
    public Long courseId;
    public int index;
    public String name;
    public Integer userCount;
    public String image;
}
