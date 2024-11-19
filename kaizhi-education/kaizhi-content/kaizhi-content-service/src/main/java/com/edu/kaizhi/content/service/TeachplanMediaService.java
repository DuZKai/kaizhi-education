package com.edu.kaizhi.content.service;

import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;

public interface TeachplanMediaService {

    /**
     * 根据媒体文件id获取课程计划
     * @param mediaFileId 媒体文件id
     * @return com.edu.kaizhi.content.model.po.TeachplanMedia
     */
    TeachplanMedia getTeachplanFromMedia(Long mediaFileId);
}
