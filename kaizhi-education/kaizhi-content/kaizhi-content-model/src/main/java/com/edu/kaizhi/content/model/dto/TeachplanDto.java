package com.edu.kaizhi.content.model.dto;

import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * 课程计划信息模型dto
 */
@Data
@ToString
public class TeachplanDto extends Teachplan {
    // 与媒资管理信息
    private TeachplanMedia teachplanMedia;

    // 小章节List
    private List<TeachplanDto> teachPlanTreeNodes;
}
