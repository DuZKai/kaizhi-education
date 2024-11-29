package com.edu.kaizhi.content.service.jobhandle;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.feignclient.CourseIndex;
import com.edu.kaizhi.content.feignclient.SearchServiceClient;
import com.edu.kaizhi.content.mapper.CoursePublishMapper;
import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.content.service.CoursePublishService;
import com.edu.kaizhi.messagesdk.model.po.MqMessage;
import com.edu.kaizhi.messagesdk.service.MessageProcessAbstract;
import com.edu.kaizhi.messagesdk.service.MqMessageService;
import com.xxl.job.core.context.XxlJobHelper;
import com.xxl.job.core.handler.annotation.XxlJob;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.File;
import java.util.concurrent.TimeUnit;

/**
 * 课程发布任务类
 */
@Slf4j
@Component
public class CoursePublishTask extends MessageProcessAbstract {
    @Autowired
    CoursePublishService coursePublishService;

    @Autowired
    SearchServiceClient searchServiceClient;

    @Autowired
    CoursePublishMapper coursePublishMapper;

    //任务调度入口
    @XxlJob("CoursePublishJobHandler")
    public void coursePublishJobHandler() throws Exception {
        // 分片参数
        int shardIndex = XxlJobHelper.getShardIndex();
        int shardTotal = XxlJobHelper.getShardTotal();
        log.debug("shardIndex=" + shardIndex + ",shardTotal=" + shardTotal);
        //参数:分片序号、分片总数、消息类型、一次最多取到的任务数量、一次任务调度执行的超时时间
        process(shardIndex, shardTotal, "course_publish", 30, 60);
    }


    // 执行课程发布任务逻辑
    @Override
    public boolean execute(MqMessage mqMessage) {
        //获取消息相关的业务信息
        String businessKey1 = mqMessage.getBusinessKey1();
        long courseId = Integer.parseInt(businessKey1);
        //课程静态化
        generateCourseHtml(mqMessage, courseId);
        //课程索引
        saveCourseIndex(mqMessage, courseId);

        // 更新布隆过滤器
        // 先更新布隆过滤器再更新缓存，不然可能会因为布隆过滤器没加入直接跳过已有的加入缓存步骤
        coursePublishService.updateBloomFilter(courseId);

        //课程缓存
        saveCourseCache(mqMessage, courseId);

        return true;

    }

    // 生成课程静态化页面并上传至文件系统
    public void generateCourseHtml(MqMessage mqMessage, long courseId) {

        log.debug("开始进行课程静态化,课程id:{}", courseId);
        //消息id
        Long id = mqMessage.getId();
        //消息处理的service
        MqMessageService mqMessageService = this.getMqMessageService();
        //消息幂等性处理
        int stageOne = mqMessageService.getStageOne(id);
        if (stageOne > 0) {
            log.debug("课程静态化已处理直接返回，课程id:{}", courseId);
            return;
        }
        // 开启课程静态化，生成HTML页面
        File file = coursePublishService.generateCourseHtml(courseId);
        if(file == null)
            CustomizeException.cast("课程静态化异常");

        // 将HTML页面上传至Minio
        coursePublishService.uploadCourseHtml(courseId, file);

        //保存第一阶段状态
        mqMessageService.completedStageOne(id);
    }

    // 保存课程索引信息
    public void saveCourseIndex(MqMessage mqMessage, long courseId) {
        log.debug("保存课程索引信息到ElasticSearch,课程id:{}", courseId);
        //消息id
        Long id = mqMessage.getId();
        //消息处理的service
        MqMessageService mqMessageService = this.getMqMessageService();
        //消息幂等性处理
        int stageTwo = mqMessageService.getStageTwo(id);
        if (stageTwo > 0) {
            log.debug("课程索引信息已写入ElasticSearch，无需执行，课程id:{}", courseId);
            return;
        }
        if(saveCourseToES(courseId)){
            //保存第二阶段状态
            mqMessageService.completedStageTwo(id);
        }
    }

    public void saveCourseCache(MqMessage mqMessage, long courseId) {
        log.debug("将课程信息缓存至redis,课程id:{}", courseId);
        //消息id
        Long id = mqMessage.getId();
        //消息处理的service
        MqMessageService mqMessageService = this.getMqMessageService();
        //消息幂等性处理
        int stageThree = mqMessageService.getStageThree(id);
        if (stageThree > 0) {
            log.debug("课程索引信息已缓存至Redis，无需执行，课程id:{}", courseId);
            return;
        }
        try {
            coursePublishService.getCoursePublishCache(courseId);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        //保存第三阶段状态
        mqMessageService.completedStageThree(id);
    }

    private Boolean saveCourseToES(Long courseId) {

        //取出课程发布信息
        CoursePublish coursePublish = coursePublishMapper.selectById(courseId);
        //拷贝至课程索引对象
        CourseIndex courseIndex = new CourseIndex();
        BeanUtils.copyProperties(coursePublish,courseIndex);
        //远程调用搜索服务api添加课程信息到索引
        Boolean add = searchServiceClient.add(courseIndex);
        if(!add){
            CustomizeException.cast("添加索引失败");
        }
        return add;

    }

}


