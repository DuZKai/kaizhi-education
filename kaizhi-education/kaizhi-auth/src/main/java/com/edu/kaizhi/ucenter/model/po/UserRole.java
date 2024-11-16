package com.edu.kaizhi.ucenter.model.po;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;


@Data
@TableName("kaizhi_user_role")
public class UserRole implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    private String userId;

    private String roleId;

    private LocalDateTime createTime;

    private String creator;


}
