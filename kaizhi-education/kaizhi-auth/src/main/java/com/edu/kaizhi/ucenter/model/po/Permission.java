package com.edu.kaizhi.ucenter.model.po;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;


@Data
@TableName("kaizhi_permission")
public class Permission implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    private String roleId;

    private String menuId;

    private LocalDateTime createTime;


}
