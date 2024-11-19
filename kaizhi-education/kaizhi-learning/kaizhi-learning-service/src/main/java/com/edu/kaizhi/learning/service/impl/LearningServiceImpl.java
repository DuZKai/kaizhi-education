package com.edu.kaizhi.learning.service.impl;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.model.RestResponse;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import com.edu.kaizhi.learning.feignclient.ContentServiceClient;
import com.edu.kaizhi.learning.feignclient.MediaServiceClient;
import com.edu.kaizhi.learning.model.dto.CourseTablesDto;
import com.edu.kaizhi.learning.service.LearningService;
import com.edu.kaizhi.learning.service.MyCourseTablesService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Objects;

/**
 * 在线学习service接口
 */
@Slf4j
@Component

public class LearningServiceImpl implements LearningService {

    @Autowired
    MyCourseTablesService myCourseTablesService;

    @Autowired
    ContentServiceClient contentServiceClient;

    @Autowired
    MediaServiceClient mediaServiceClient;

    /**
     * 获取教学视频
     */
    public RestResponse<String> getVideo(String userId, Long courseId, Long mediaFileId, String mediaId){

        // 查询课程信息
        CoursePublish coursepublish = contentServiceClient.getCoursePublish(courseId);
        // 如果为空，不再继续
        if(coursepublish == null){
            return RestResponse.validfail("课程未发布");
        }

        // 根据课程计划ID查询课程计划信息，判断是否支持试学，可以直接解析课程计划信息判断
        TeachplanMedia teachplanFromMedia = contentServiceClient.getTeachplanFromMedia(mediaFileId);
        if(teachplanFromMedia == null){
            return RestResponse.validfail("课程计划媒体关联信息不存在");
        }
        // 根据课程计划ID查询课程计划信息
        Long teachplanId = teachplanFromMedia.getTeachplanId();
        Teachplan teachplan = contentServiceClient.getTeachplan(teachplanId);
        if(teachplan == null){
            return RestResponse.validfail("课程计划信息不存在");
        }
        // isPreview字段为1表示支持试学，返回课程url
        if ("1".equals(teachplan.getIsPreview())) {
            return mediaServiceClient.getPlayUrlByMediaId(mediaId);
        }

        // 用户已登录
        if(StringUtils.isNotEmpty(userId)){
            // 判断学习资格
            CourseTablesDto learningStatus = myCourseTablesService.getLearningStatus(userId, courseId);
            if(learningStatus == null){
                return RestResponse.validfail("无学习资格，因为没有选课");
            }
            String learnStatus = learningStatus.getLearnStatus();
            if("702002".equals(learnStatus)){
                return RestResponse.validfail("无学习资格，因为没有选课或者选课后没有支付");
            }else if("702003".equals(learnStatus)){
                return RestResponse.validfail("课程过期，需要申请续期或者重新支付");
            }
            // 有资格学习，返回视频播放地址，远程调用媒资服务查询视频播放地址
            return mediaServiceClient.getPlayUrlByMediaId(mediaId);
        }
        else{
            // 用户未登录
            // 查询课程是否免费
            String charge = coursepublish.getCharge();
            if("201000".equals(charge)) {
                // 免费课程有资格学习，返回视频播放地址，远程调用媒资服务查询视频播放地址
                return mediaServiceClient.getPlayUrlByMediaId(mediaId);
            }
            return RestResponse.validfail("用户未登录且课程收费");
        }

    }


}
