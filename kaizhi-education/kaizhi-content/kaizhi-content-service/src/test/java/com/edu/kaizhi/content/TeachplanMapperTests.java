package com.edu.kaizhi.content;

import com.edu.kaizhi.content.mapper.CourseCategoryMapper;
import com.edu.kaizhi.content.mapper.TeachplanMapper;
import com.edu.kaizhi.content.model.dto.CourseCategoryTreeDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class TeachplanMapperTests {

    @Autowired
    TeachplanMapper teachplanMapper;


    // @Test
    void testSelectTreeNodes() {
        List<TeachplanDto> teachplanDtos = teachplanMapper.selectTreeNodes(117L);
        System.out.println(teachplanDtos);
    }

}
