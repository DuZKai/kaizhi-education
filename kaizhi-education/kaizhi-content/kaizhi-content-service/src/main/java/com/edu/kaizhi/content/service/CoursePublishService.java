package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.dto.CoursePreviewDto;

/**
 * 课程预览、发布接口
 */
public interface CoursePublishService {


    /**
     * 获取课程预览信息
     *
     * @param courseId 课程id
     * @return com.edu.kaizhi.content.model.dto.CoursePreviewDto
     */
    public CoursePreviewDto getCoursePreviewInfo(Long courseId);

    /**
     * 提交审核
     *
     * @param courseId 课程id
     * @return void
     */
    public void commitAudit(Long companyId, Long courseId);

    /**
     * 课程发布接口
     *
     * @param companyId 机构id
     * @param courseId  课程id
     * @return void
     */
    public void publish(Long companyId, Long courseId);

}
