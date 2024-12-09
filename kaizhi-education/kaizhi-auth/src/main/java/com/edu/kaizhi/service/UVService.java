package com.edu.kaizhi.service;

public interface UVService {
    // 增加一个新的 UV
    void addUV(String userId);

    // 获取当前的 UV 数量
    long getUVCount();
}
