package com.edu.kaizhi.learning.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.kaizhi.learning.model.dto.CourseHotInfoDto;
import com.edu.kaizhi.learning.model.dto.CoursePeopleInfoDto;
import com.edu.kaizhi.learning.model.po.CourseTables;

import java.util.List;

public interface CourseTablesMapper extends BaseMapper<CourseTables> {
    /**
     * TOP50热门课程
     * */
    List<CourseHotInfoDto> selectTop50CoursesByUserId();

    /**
     * 查询课程用户数
     * */
    List<CoursePeopleInfoDto> selectCoursesUserCount();
}
