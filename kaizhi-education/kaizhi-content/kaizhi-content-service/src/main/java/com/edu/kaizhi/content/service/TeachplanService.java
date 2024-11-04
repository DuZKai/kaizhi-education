package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.SaveTeachplanDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;

import java.util.List;

/**
 * 课程计划管理接口
 * */
public interface TeachplanService {
    /**
     * 根据课程id查询课程计划树
     * @param courseId 课程id
     * */
    List<TeachplanDto> findTeachplanTreeNodes(Long courseId);

    /**
     * 保存课程计划
     * @param teachplanDto  课程计划信息
     */
    void saveTeachplan(SaveTeachplanDto teachplanDto);


    /**
     * 删除课程计划
     * @param id 课程计划id
     */
    void deleteTeachplan(Long id);

    /**
     * 课程计划移动模式
     * @param id 课程计划id
     * @param upMode 上移模式
     */
    List<TeachplanDto> exchangeTeachplan(Long id, Boolean upMode);
}
