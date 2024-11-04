package com.edu.kaizhi.content.service.impl;

import com.edu.kaizhi.content.mapper.CourseCategoryMapper;
import com.edu.kaizhi.content.mapper.TeachplanMapper;
import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.CourseCategory;
import com.edu.kaizhi.content.service.CourseCategoryService;
import com.edu.kaizhi.content.service.TeachplanService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@Service
public class TeachplanServiceImpl implements TeachplanService {

    @Autowired
    TeachplanMapper teachplanMapper;

    public List<TeachplanDto> findTeachplanTreeNodes(Long courseId){
        return teachplanMapper.selectTreeNodes(courseId);
    }
}
