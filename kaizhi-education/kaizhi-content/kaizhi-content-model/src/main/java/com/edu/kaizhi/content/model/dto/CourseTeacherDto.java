package com.edu.kaizhi.content.model.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

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

    @NotNull(message = "教师ID不能为空")
    @ApiModelProperty(value = "教师id", required = true)
    private Long teacherId;

}
