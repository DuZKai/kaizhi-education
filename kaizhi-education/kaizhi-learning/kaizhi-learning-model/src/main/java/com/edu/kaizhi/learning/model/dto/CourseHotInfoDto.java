package com.edu.kaizhi.learning.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CourseHotInfoDto implements Serializable {
    private static final long serialVersionUID = 1L;
    public Long courseId;
    public Integer index;
    public String name;
    public Integer userCount;
    public String image;
}
