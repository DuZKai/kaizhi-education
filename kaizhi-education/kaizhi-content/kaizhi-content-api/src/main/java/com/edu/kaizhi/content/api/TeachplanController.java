package com.edu.kaizhi.content.api;

import com.edu.kaizhi.content.model.dto.BindTeachplanMediaDto;
import com.edu.kaizhi.content.model.dto.SaveTeachplanDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.Teachplan;
import com.edu.kaizhi.content.model.po.TeachplanMedia;
import com.edu.kaizhi.content.service.TeachplanMediaService;
import com.edu.kaizhi.content.service.TeachplanService;
import com.edu.kaizhi.content.service.impl.TeachplanServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 课程计划管理接口
 */
@Api(value = "课程计划编辑接口", tags = "课程计划编辑接口")
@RestController
public class TeachplanController {

    @Autowired
    TeachplanService teachplanService;

    @Autowired
    TeachplanMediaService teachplanMediaService;

    @ApiOperation("查询课程计划树形结构")
    @ApiImplicitParam(value = "courseId", name = "课程Id", required = true, dataType = "Long", paramType = "path")
    @GetMapping("/teachplan/{courseId}/tree-nodes")
    public List<TeachplanDto> getTreeNodes(@PathVariable Long courseId) {
        return teachplanService.findTeachplanTreeNodes(courseId);
    }


    @ApiOperation("课程计划创建或修改")
    @PostMapping("/teachplan")
    public void saveTeachplan(@RequestBody SaveTeachplanDto teachplan){
        teachplanService.saveTeachplan(teachplan);
    }

    @ApiOperation("课程计划删除")
    @DeleteMapping("/teachplan/{id}")
    public void deleteTeachplan(@PathVariable Long id){
        teachplanService.deleteTeachplan(id);
    }

    @ApiOperation("课程计划上移")
    @PostMapping("/teachplan/moveup/{id}")
    public List<TeachplanDto> moveUp(@PathVariable Long id){
        return teachplanService.exchangeTeachplan(id, true);
    }

    @ApiOperation("课程计划下移")
    @PostMapping("/teachplan/movedown/{id}")
    public List<TeachplanDto> moveDown(@PathVariable Long id){
        return teachplanService.exchangeTeachplan(id, false);
    }

    @ApiOperation(value = "课程计划和媒资信息绑定")
    @PostMapping("/teachplan/association/media")
    public void associationMedia(@RequestBody BindTeachplanMediaDto bindTeachplanMediaDto){
        teachplanService.associationMedia(bindTeachplanMediaDto);
    }

    @ApiOperation("课程计划解除媒资信息绑定")
    @DeleteMapping("/teachplan/association/media/{teachPlanId}/{mediaId}")
    public void unassociationMedia(@PathVariable Long teachPlanId, @PathVariable String mediaId) {
        teachplanService.unassociationMedia(teachPlanId, mediaId);
    }

    @ApiOperation("课程计划查询")
    @GetMapping("/teachplan/{teachplanId}")
    public Teachplan getTeachplan(@PathVariable Long teachplanId) {
        return teachplanService.getTeachplan(teachplanId);
    }

    @ApiOperation("课程媒体查询课程计划")
    @GetMapping("/teachplan/media/{mediaFileId}")
    public TeachplanMedia getTeachplanFromMedia(@PathVariable Long mediaFileId) {
        return teachplanMediaService.getTeachplanFromMedia(mediaFileId);
    }
}
