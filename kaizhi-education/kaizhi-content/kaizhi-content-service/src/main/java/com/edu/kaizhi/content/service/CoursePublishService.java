package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.dto.CoursePreviewDto;
import com.edu.kaizhi.content.model.po.CoursePublish;

import java.io.File;

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

    /**
     * 课程静态化
     * @param courseId  课程id
     * @return File 静态化文件
     */
    public File generateCourseHtml(Long courseId);

    /**
     * 上传课程静态化页面
     * @param file  静态化文件
     * @return void
     */
    public void uploadCourseHtml(Long courseId, File file);

    /**
     * 获取课程发布信息
     * @param courseId  课程id
     * @return com.edu.kaizhi.content.model.po.CoursePublish
     * */
    public CoursePublish getCoursePublish(Long courseId);

    /**
     * 获取课程从缓存查询发布信息
     * @param courseId  课程id
     * @return com.edu.kaizhi.content.model.po.CoursePublish
     * */
    public CoursePublish getCoursePublishCache(Long courseId);


    /**
     * 下架课程
     * @param companyId 机构ID
     * @param courseId 课程ID
     */
    public void offlineCourse(Long companyId, Long courseId);

    /**
     * 更新布隆过滤器
     * @param courseId 课程ID
     */
    public void updateBloomFilter(Long courseId);
}
