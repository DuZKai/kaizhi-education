package com.edu.kaizhi.ucenter.service;


import com.edu.kaizhi.ucenter.model.dto.FindPswDto;
import com.edu.kaizhi.ucenter.model.dto.RegisterDto;

public interface VerifyService {
    void findPassword(FindPswDto findPswDto);

    void register(RegisterDto registerDto);
}