package com.edu.kaizhi.content.service.impl;

import com.edu.kaizhi.content.mapper.TeachplanMediaMapper;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import com.edu.kaizhi.content.service.TeachplanMediaService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 课程计划媒体关联service实现类
 */
@Slf4j
@Service
public class TeachplanMediaServiceImpl implements TeachplanMediaService {
    @Autowired
    private TeachplanMediaMapper teachplanMediaMapper;

    public TeachplanMedia getTeachplanFromMedia(Long mediaFileId){
        return teachplanMediaMapper.selectById(mediaFileId);
    }
}
