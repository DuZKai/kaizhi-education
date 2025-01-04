package com.edu.kaizhi.search.dto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;


@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SearchTagDto {
    String value;
    String label;
    List<SearchTagDto> children;
}
