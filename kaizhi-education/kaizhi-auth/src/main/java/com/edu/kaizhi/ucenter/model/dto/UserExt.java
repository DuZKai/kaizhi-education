package com.edu.kaizhi.ucenter.model.dto;

import com.edu.kaizhi.ucenter.model.po.User;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户扩展信息
 */
@Data
public class UserExt extends User {
    //用户权限
    List<String> permissions = new ArrayList<>();
}
