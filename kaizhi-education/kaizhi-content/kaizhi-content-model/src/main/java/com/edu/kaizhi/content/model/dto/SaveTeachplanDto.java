package com.edu.kaizhi.content.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * 保存课程计划dto，包括新增、修改大章节、小章节
 */
@Data
@ToString
@ApiModel(value = "SaveTeachplanDto", description = "保存课程计划，包括新增、修改大章节、小章节")
public class SaveTeachplanDto {

    /***
     * 教学计划id
     */
    @ApiModelProperty(value = "教学计划ID", example = "1")
    private Long id;

    /**
     * 课程计划名称
     */
    @NotEmpty(message = "课程计划名称不能为空")
    @ApiModelProperty(value = "课程计划名称", required = true)
    private String pname;

    /**
     * 课程计划父级Id
     */
    @NotNull(message = "课程计划父级ID不能为空")
    @ApiModelProperty(value = "课程计划父级ID", required = true, example = "1")
    private Long parentid;

    /**
     * 层级，分为1、2、3级
     */
    @NotNull(message = "层级不能为空")
    @ApiModelProperty(value = "层级，分为1、2、3级", required = true, example = "1")
    private Integer grade;

    /**
     * 课程类型:1视频、2文档
     */
    @ApiModelProperty(value = "课程类型:1视频、2文档", example = "1")
    private String mediaType;


    /**
     * 课程标识
     */
    @NotNull(message = "课程标识不能为空")
    @ApiModelProperty(value = "课程标识", required = true, example = "1001")
    private Long courseId;

    /**
     * 课程发布标识
     */
    @ApiModelProperty(value = "课程发布标识", example = "2001")
    private Long coursePubId;


    /**
     * 是否支持试学或预览（试看）
     */
    @Size(max = 1, message = "试学或预览标识长度应为1")
    @ApiModelProperty(value = "是否支持试学或预览（试看）", example = "0")
    private String isPreview;



}
