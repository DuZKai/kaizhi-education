package com.edu.kaizhi.learning.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CoursePeopleInfoDto implements Serializable {
    private static final long serialVersionUID = 1L;
    public Long courseId;
    public Integer userCount;
}
