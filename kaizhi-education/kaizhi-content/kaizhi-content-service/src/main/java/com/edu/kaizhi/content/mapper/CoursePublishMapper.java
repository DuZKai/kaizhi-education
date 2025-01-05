package com.edu.kaizhi.content.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.kaizhi.content.model.po.CoursePublish;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 * 课程发布 Mapper 接口
 * </p>
 *
 * @author zikai
 */
public interface CoursePublishMapper extends BaseMapper<CoursePublish> {

    @Select("SELECT	id FROM course_publish")
    List<Long> selectAllId();
}
