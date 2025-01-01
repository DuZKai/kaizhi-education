package com.edu.kaizhi.learning.service;


import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.learning.model.dto.ChooseCourseDto;
import com.edu.kaizhi.learning.model.dto.CourseTablesDto;
import com.edu.kaizhi.learning.model.dto.MyCourseTableParams;
import com.edu.kaizhi.learning.model.po.CourseTables;

/**
 * 选课相关接口
 * */
public interface MyCourseTablesService {
    /**
     * 添加选课
     * @param userId 用户id
     * @param courseId 课程id
     * @return com.edu.kaizhi.learning.model.dto.ChooseCourseDto
     */
    public ChooseCourseDto addChooseCourse(String userId, Long courseId);

    /**
     * 判断学习资格
     * @param userId
     * @param courseId
     * @return CourseTablesDto 学习资格状态
     * [{"code":"702001","desc":"正常学习"},
     * {"code":"702002","desc":"没有选课或选课后没有支付"},
     * {"code":"702003","desc":"已过期需要申请续期或重新支付"}]
     */
    public CourseTablesDto getLearningStatus(String userId, Long courseId);

    /**
     * 我的课程表
     * @param params
     * @return com.edu.kaizhi.base.model.PageResult<com.edu.kaizhi.learning.model.po.CourseTables>
     */
    public PageResult<CourseTables> myCourseTables(MyCourseTableParams params);

    /**
     * 保存选课状态
     * @param chooseCourseId
     * @return boolean
     */
    public boolean saveChooseCourseStatus(String chooseCourseId);
}
