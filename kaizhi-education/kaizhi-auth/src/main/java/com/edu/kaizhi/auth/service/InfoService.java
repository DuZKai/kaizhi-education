package com.edu.kaizhi.auth.service;

public interface InfoService {
    // 增加一个新的 UV
    void addUV(String userId);

    // 获取当前的 UV 数量
    long getUVCount();

    // 获取男生数量
    long getManCount();

    // 获取女生数量
    long getWomanCount();

    // 获取所有人数量
    long getAllCount();
}
