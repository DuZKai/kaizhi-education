package com.edu.kaizhi.ucenter.model.po;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("kaizhi_company_user")
public class CompanyUser implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    private String companyId;

    private String userId;


}
