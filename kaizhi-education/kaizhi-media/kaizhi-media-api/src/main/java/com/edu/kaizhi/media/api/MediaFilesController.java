package com.edu.kaizhi.media.api;

import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;
import com.edu.kaizhi.media.service.MediaFileService;
import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.annotation.RequiresUser;
import com.edu.kaizhi.securityUser.dto.User;
import com.edu.kaizhi.securityUser.util.SecurityUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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
    @RequiresUser
    @PostMapping("/files")
    public PageResult<MediaFiles> list(PageParams pageParams, @RequestBody QueryMediaParamsDto queryMediaParamsDto) {
        Long companyId = UserContext.getCompanyId();
        return mediaFileService.queryMediaFiles(companyId, pageParams, queryMediaParamsDto);
    }

    @ApiOperation("上传文件")
    @RequestMapping(value = "/upload/coursefile", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public UploadFileResultDto upload(@RequestPart("filedata") MultipartFile filedata,
                                      @RequestParam(value = "objectName", required = false) String objectName,
                                      @RequestParam(value = "companyId", required = false) Long companyId) throws IOException {
        if (companyId == null) {
            // 不可以直接使用注解，XXL调用会导致无法获取到用户信息
            User user = SecurityUtil.getUser();
            if (user == null) {
                CustomizeException.cast("用户未登录", 401);
            }
            // 将当前用户存储到 ThreadLocal 中
            UserContext.setUser(user);
            companyId = UserContext.getCompanyId();
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
    @RequiresUser
    public void deleteMediaByMediaId(@PathVariable String mediaId) {
        Long companyId = UserContext.getCompanyId();
        mediaFileService.deleteFileById(companyId, mediaId);
    }

    @ApiOperation("删除单个课程文件")
    @RequiresUser
    @DeleteMapping(value = "/delete/coursefile/{courseId}")
    public void deleteCourseFile(@PathVariable String courseId) throws IOException {
        Long companyId = UserContext.getCompanyId();

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
    @RequiresUser
    @GetMapping("/files")
    public List<MediaFiles> getMediaAllFiles() {
        Long companyId = UserContext.getCompanyId();

        return mediaFileService.getMediaAllFiles(companyId);
    }
}
