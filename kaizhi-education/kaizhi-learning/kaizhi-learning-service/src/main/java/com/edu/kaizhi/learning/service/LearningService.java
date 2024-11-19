package com.edu.kaizhi.learning.service;

import com.edu.kaizhi.base.model.RestResponse;

/**
 * 学习过程管理service接口
 */

public interface LearningService {


    /**
     * 获取教学视频
     * @param courseId 课程id
     * @param mediaFileId 课程媒体文件id
     * @param mediaId 视频文件id
     * @return com.edu.kaizhi.base.model.RestResponse<java.lang.String>
     */
    public RestResponse<String> getVideo(String userId, Long courseId, Long mediaFileId, String mediaId);

}
