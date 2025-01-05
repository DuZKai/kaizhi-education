package com.edu.kaizhi.learning.feignclient;

import com.edu.kaizhi.content.model.po.CoursePublish;
import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 内容管理远程接口
 */
@FeignClient(value = "content-api",fallbackFactory = ContentServiceClientFallbackFactory.class)
public interface ContentServiceClient {

    //查询已经发布接口
    @ResponseBody
    @GetMapping("/content/r/coursepublish/{courseId}")
    public CoursePublish getCoursePublish(@PathVariable("courseId") Long courseId);

    @GetMapping("/content/teachplan/{teachplanId}")
    Teachplan getTeachplan(@PathVariable("teachplanId") Long teachplanId);

    @GetMapping("/content/teachplan/media/{mediaFileId}")
    TeachplanMedia getTeachplanFromMedia(@PathVariable("mediaFileId") Long mediaFileId);
}
