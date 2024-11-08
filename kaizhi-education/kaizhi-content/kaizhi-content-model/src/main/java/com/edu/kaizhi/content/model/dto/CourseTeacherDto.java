package com.edu.kaizhi.content.model.dto;

import com.baomidou.mybatisplus.annotation.*;
import com.edu.kaizhi.base.exception.ValidationGroups;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * 添加课程dto
 */
@Data
@ApiModel(value = "CourseTeacherDto", description = "课程教师基本信息")
public class CourseTeacherDto implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "教师id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 课程标识
     */
    @NotNull(message = "课程ID不能为空")
    @ApiModelProperty(value = "课程id", required = true)
    private Long courseId;

    /**
     * 教师标识
     */
    @NotEmpty(message = "教师名称不能为空")
    @ApiModelProperty(value = "教师名称", required = true)
    private String teacherName;

    /**
     * 教师职位
     */
    @NotEmpty(message = "教师职位不能为空")
    @ApiModelProperty(value = "教师职位", required = true)
    private String position;

    /**
     * 教师简介
     */
    private String introduction;

    /**
     * 照片
     */
    private String photograph;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createDate;


}