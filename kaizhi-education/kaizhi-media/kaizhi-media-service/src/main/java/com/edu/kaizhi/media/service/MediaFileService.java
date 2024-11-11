package com.edu.kaizhi.media.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.base.model.RestResponse;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;

import java.io.File;

/**
 * 媒资文件管理业务类
 */
public interface MediaFileService {

    /**
     * 媒资文件查询方法
     *
     * @param pageParams          分页参数
     * @param queryMediaParamsDto 查询条件
     */
    public PageResult<MediaFiles> queryMediaFiels(Long companyId, PageParams pageParams, QueryMediaParamsDto queryMediaParamsDto);

    /**
     * 上传文件
     *
     * @param companyId           机构id
     * @param uploadFileParamsDto 上传文件结果
     * @param localFilePath       本地文件路径
     * @return UploadFileResultDto
     */
    public UploadFileResultDto uploadFile(Long companyId, UploadFileParamsDto uploadFileParamsDto, String localFilePath);

    /**
     * 添加媒资文件到数据库
     *
     * @param companyId
     * @param fileMd5
     * @param uploadFileParamsDto
     * @param bucket
     * @param objectName
     * @return
     */
    public MediaFiles addMediaFilesToDb(Long companyId, String fileMd5, UploadFileParamsDto uploadFileParamsDto, String bucket, String objectName);

    /**
     * 检查文件是否存在
     *
     * @param fileMd5 文件的md5
     * @return RestResponse<java.lang.Boolean> false不存在，true存在
     */
    public RestResponse<Boolean> checkFile(String fileMd5);

    /**
     * 检查分块是否存在
     *
     * @param fileMd5    文件的md5
     * @param chunkIndex 分块序号
     * @return RestResponse<java.lang.Boolean> false不存在，true存在
     */
    public RestResponse<Boolean> checkChunk(String fileMd5, int chunkIndex);

    /**
     * 上传分块
     *
     * @param fileMd5            文件md5
     * @param chunk              分块序号
     * @param localChunkFilePath 分块文件本地路径
     * @return RestResponse
     */
    public RestResponse<Boolean> uploadChunk(String fileMd5, int chunk, String localChunkFilePath);

    /**
     * 合并分块
     *
     * @param companyId           机构id
     * @param fileMd5             文件md5
     * @param chunkTotal          分块总数
     * @param uploadFileParamsDto 上传文件参数
     * @return RestResponse
     */
    public RestResponse<Boolean> mergechunks(Long companyId, String fileMd5, int chunkTotal, UploadFileParamsDto uploadFileParamsDto);

    /**
     * 从MinIO下载文件
     *
     * @param bucket     存储桶
     * @param objectName 对象名称
     * @return File
     */
    public File downloadFileFromMinIO(String bucket, String objectName);

    /**
     * 添加媒资文件到MinIO
     *
     * @param localFilePath 本地文件路径
     * @param mimeType      文件类型
     * @param bucket        存储桶
     * @param objectName    对象名称
     * @return boolean
     */
    public boolean addMediaFilesToMinIO(String localFilePath, String mimeType, String bucket, String objectName);

    /**
     * 根据文件md5获取文件路径
     *
     * @param fileMd5 文件md5
     * @param fileExt 文件扩展名
     * @return String
     */
    public String getFilePathByMd5(String fileMd5, String fileExt);
}
