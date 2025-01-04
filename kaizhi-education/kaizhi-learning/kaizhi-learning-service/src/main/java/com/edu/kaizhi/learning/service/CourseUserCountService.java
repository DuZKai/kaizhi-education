package com.edu.kaizhi.learning.service;

import com.edu.kaizhi.learning.model.dto.CourseHotInfoDto;
import com.edu.kaizhi.learning.model.dto.CoursePeopleInfoDto;

import java.util.List;

public interface CourseUserCountService {
    List<CourseHotInfoDto> queryTop50();

    List<CoursePeopleInfoDto> queryUserCount();
}
