package com.edu.kaizhi.media.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;

/**
 * 媒资文件管理业务类
 */
public interface MediaFileService {

    /**
     * 媒资文件查询方法
     * @param pageParams          分页参数
     * @param queryMediaParamsDto 查询条件
     */
    public PageResult<MediaFiles> queryMediaFiels(Long companyId, PageParams pageParams, QueryMediaParamsDto queryMediaParamsDto);

    /**
     * 上传文件
     * @param companyId             机构id
     * @param uploadFileParamsDto   上传文件结果
     * @param localFilePath         本地文件路径
     * @return UploadFileResultDto
     */
    public UploadFileResultDto uploadFile(Long companyId, UploadFileParamsDto uploadFileParamsDto, String localFilePath);

    /**
     * 添加媒资文件到数据库
     * @param companyId
     * @param fileMd5
     * @param uploadFileParamsDto
     * @param bucket
     * @param objectName
     * @return
     */
    public MediaFiles addMediaFilesToDb(Long companyId, String fileMd5, UploadFileParamsDto uploadFileParamsDto, String bucket, String objectName);
}
