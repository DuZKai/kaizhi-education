package com.edu.kaizhi.service;

import com.edu.kaizhi.ucenter.model.dto.AuthParamsDto;
import com.edu.kaizhi.ucenter.model.dto.UserExt;

public interface AuthService {
    /**
     * 认证方法
     * @param authParamsDto 认证参数
     * @return 认证成功返回用户信息
     * */
    UserExt execute(AuthParamsDto authParamsDto);
}
