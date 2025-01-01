package com.edu.kaizhi.learning.service.impl;

import com.edu.kaizhi.learning.mapper.CourseTablesMapper;
import com.edu.kaizhi.learning.model.dto.CourseHotInfoDto;
import com.edu.kaizhi.learning.model.po.CourseTables;
import com.edu.kaizhi.learning.service.CourseHotService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 热门课程service接口
 */
@Slf4j
@Component
public class CourseHotServiceImpl implements CourseHotService {

    @Autowired
    CourseTablesMapper courseTablesMapper;

    public List<CourseHotInfoDto> queryTop50(){
        List<CourseHotInfoDto> courses = courseTablesMapper.selectTop50CoursesByUserId();

        // 为每个课程设置 index，从1开始
        for (int i = 0; i < courses.size(); i++) {
            courses.get(i).index = i + 1;
        }
        return courses;
    }
}
