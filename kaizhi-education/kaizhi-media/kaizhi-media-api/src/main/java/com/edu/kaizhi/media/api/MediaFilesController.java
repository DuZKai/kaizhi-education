package com.edu.kaizhi.media.api;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.base.model.RestResponse;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;
import com.edu.kaizhi.media.service.MediaFileService;
import com.edu.kaizhi.media.util.SecurityUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 * 媒资文件管理接口
 */
@Api(value = "媒资文件管理接口", tags = "媒资文件管理接口")
@RestController
public class MediaFilesController {
    @Autowired
    MediaFileService mediaFileService;

    @ApiOperation("媒资列表查询接口")
    @PostMapping("/files")
    public PageResult<MediaFiles> list(PageParams pageParams, @RequestBody QueryMediaParamsDto queryMediaParamsDto) {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        if (user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息");
        }
        Long companyId = 1232141425L;
        if (Objects.equals(user.getUtype(), "101003"))
            companyId = -1L;
        else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        } else {
            CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
        }

        return mediaFileService.queryMediaFiles(companyId, pageParams, queryMediaParamsDto);
    }

    @ApiOperation("上传文件")
    @RequestMapping(value = "/upload/coursefile", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public UploadFileResultDto upload(@RequestPart("filedata") MultipartFile filedata,
                                      @RequestParam(value = "objectName", required = false) String objectName,
                                      @RequestParam(value = "companyId", required = false) Long companyId) throws IOException {
        if (companyId == null) {
            //取出用户身份
            SecurityUtil.User user = SecurityUtil.getUser();
            //机构id
            if (user == null) {
                CustomizeException.cast("用户未登录，未获取到用户信息");
            }
            companyId = 1232141425L;
            if (Objects.equals(user.getUtype(), "101003"))
                companyId = -1L;
            else if (Objects.equals(user.getUtype(), "101002")) {
                companyId = Long.parseLong(user.getCompanyId());
            } else {
                CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
            }
        }
        String originalFilename = filedata.getOriginalFilename();
        UploadFileParamsDto uploadFileParamsDto = new UploadFileParamsDto();
        uploadFileParamsDto.setFilename(originalFilename);
        uploadFileParamsDto.setFileSize(filedata.getSize());
        uploadFileParamsDto.setFileType("001001");
        if (originalFilename != null) {
            if (originalFilename.contains("html")) {
                uploadFileParamsDto.setFileType("001003");
                uploadFileParamsDto.setTags("课程预览");
            } else {
                uploadFileParamsDto.setTags("课程文件");
            }
        }

        // 创建临时文件
        File tempFile = File.createTempFile("minio", ".temp");
        filedata.transferTo(tempFile);
        String absolutePath = tempFile.getAbsolutePath();

        return mediaFileService.uploadFile(companyId, uploadFileParamsDto, absolutePath, objectName);
    }

    @ApiOperation("刪除媒资文件")
    @DeleteMapping("/{mediaId}")
    public void deleteMediaByMediaId(@PathVariable String mediaId) {
        mediaFileService.deleteFileById(mediaId);
    }

    @ApiOperation("删除单个课程文件")
    @DeleteMapping(value = "/delete/coursefile/{courseId}")
    public void deleteCourseFile(@PathVariable String courseId) throws IOException {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        if (user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息");
        }
        Long companyId = 1232141425L;
        if (Objects.equals(user.getUtype(), "101003"))
            companyId = -1L;
        else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        } else {
            CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
        }

        String FilePath = "course/" + courseId + ".html";
        MediaFiles fileByFilePath = mediaFileService.getFileByFilePath(FilePath);
        if (fileByFilePath == null) {
            CustomizeException.cast("文件不存在");
        }
        Long originalCompanyId = fileByFilePath.getCompanyId();
        if(companyId != -1 && !Objects.equals(originalCompanyId, companyId)){
            CustomizeException.cast("无权限删除");
        }
        mediaFileService.deleteSingleFile(FilePath);
    }

    @ApiOperation("查询所有媒资文件")
    @GetMapping("/files")
    public List<MediaFiles> getMediaAllFiles() {
        //取出用户身份
        SecurityUtil.User user = SecurityUtil.getUser();
        //机构id
        if (user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息");
        }
        Long companyId = 1232141425L;
        if (Objects.equals(user.getUtype(), "101003"))
            companyId = -1L;
        else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        } else {
            CustomizeException.cast("用户身份不合法, 学生等人不允许查询");
        }

        return mediaFileService.getMediaAllFiles(companyId);
    }
}
