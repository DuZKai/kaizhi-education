package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.po.CourseTeacher;

import java.util.List;

public interface CourseTeacherService {
    List<CourseTeacher> getCourseTeacherList(Long courseId);

    CourseTeacher saveCourseTeacher(CourseTeacher courseTeacher);

    void deleteCourseTeacher(Long courseId, Long teacherId);

    CourseTeacher getCourseTeacherById(CourseTeacher courseTeacher);
}
