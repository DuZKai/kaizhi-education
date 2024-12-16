package com.edu.kaizhi.search.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 搜索课程参数dtl
 */
 @Data
 @ToString
 @NoArgsConstructor
 @AllArgsConstructor
public class SearchCourseParamDto {

  //关键字
  private String keywords;

  //大分类
  private String mt;

  //小分类
  private String st;

  //难度等级
  private String grade;

  // 是否按照价格排序，1按价格升序，2按价格降序
  private String sortType;
}
