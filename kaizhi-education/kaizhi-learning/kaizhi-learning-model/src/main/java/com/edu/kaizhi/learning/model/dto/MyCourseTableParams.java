package com.edu.kaizhi.learning.model.dto;

import lombok.Data;
import lombok.ToString;

/**
 * 我的课程查询条件
 */
@Data
@ToString
public class MyCourseTableParams {

    String userId;

    //课程类型  [{"code":"700001","desc":"免费课程"},{"code":"700002","desc":"收费课程"}]
    private String courseType;

    //排序 1按学习时间进行排序 2按加入时间进行排序
    private String sortType;

    //1即将过期、2已经过期
    private String expiresType;

    int page = 1;
    int size = 4;
    int startIndex;

}
