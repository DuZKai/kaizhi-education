package com.edu.kaizhi.learning.service;

import com.edu.kaizhi.learning.model.dto.CourseHotInfoDto;

import java.util.List;

public interface CourseHotService {
    List<CourseHotInfoDto> queryTop50();
}
