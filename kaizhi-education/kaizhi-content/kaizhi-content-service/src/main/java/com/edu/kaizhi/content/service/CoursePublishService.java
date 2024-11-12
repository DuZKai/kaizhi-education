package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.dto.CoursePreviewDto;

/**
 * 课程预览、发布接口
 */
public interface CoursePublishService {


    /**
     * 获取课程预览信息
     * @param courseId 课程id
     * @return com.kaizhi.edu.content.model.dto.CoursePreviewDto
     */
    public CoursePreviewDto getCoursePreviewInfo(Long courseId);


}
