package com.edu.kaizhi.learning.model.po;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@TableName("choose_course")
public class ChooseCourse implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 课程id
     */
    private Long courseId;

    /**
     * 课程名称
     */
    private String courseName;

    /**
     * 用户id
     */
    private String userId;

    /**
     * 机构id
     */
    private Long companyId;

    /**
     * 选课类型
     */
    private String orderType;

    /**
     * 添加时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createDate;

    /**
     * 课程有效期(天)
     */
    private Integer validDays;

    /**
     * 课程价格
     */
    private Float coursePrice;

    /**
     * 课程图片
     */
    private String coursePic;

    /**
     * 选课状态
     */
    private String status;

    /**
     * 开始服务时间
     */
    private LocalDateTime validtimeStart;

    /**
     * 结束服务时间
     */
    private LocalDateTime validtimeEnd;

    /**
     * 备注
     */
    private String remarks;


}
