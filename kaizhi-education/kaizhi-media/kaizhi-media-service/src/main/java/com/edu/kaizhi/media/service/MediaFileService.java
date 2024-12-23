package com.edu.kaizhi.media.service;

import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.base.model.RestResponse;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;
import com.edu.kaizhi.media.model.po.MediaMinioChunk;

import java.io.File;
import java.time.LocalDateTime;
import java.util.List;

/**
 * 媒资文件管理业务类
 */
public interface MediaFileService {

    /**
     * 根据id查询媒资文件
     *
     * @param mediaId 媒资文件id
     * @return MediaFiles
     */
    public MediaFiles getFileById(String mediaId);

    /**
     * 查询所有媒资文件
     *
     * @return List<MediaFiles>
     */
    public List<MediaFiles> getMediaAllFiles(Long companyId);

    /**
     * 媒资文件查询方法
     *
     * @param pageParams          分页参数
     * @param queryMediaParamsDto 查询条件
     */
    public PageResult<MediaFiles> queryMediaFiles(Long companyId, PageParams pageParams, QueryMediaParamsDto queryMediaParamsDto);

    /**
     * 上传文件
     * @param companyId 机构id
     * @param uploadFileParamsDto 上传文件信息
     * @param localFilePath 文件磁盘路径
     * @param objectName 对象名
     * @return 文件信息
     */

    public UploadFileResultDto uploadFile(Long companyId, UploadFileParamsDto uploadFileParamsDto, String localFilePath, String objectName);


    /**
     * 根据文件路径查询文件
     *
     * @param filePath 文件路径
     * @return MediaFiles
     */
    public MediaFiles getFileByFilePath(String filePath);

    /**
     * 根据id删除媒资文件
     *
     * @param companyId 机构id
     * @param mediaId 媒资文件id
     * @return void
     */
    public void deleteFileById(Long companyId, String mediaId);

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

    /**
     * 添加分块文件到数据库
     *
     * @param fileMd5   文件md5
     * @param fileName  文件名称
     * @param bucket    存储桶
     * @param chunk     块数
     * @return boolean
     */
    public boolean addMediaChunkToDb(String fileMd5, String fileName, String bucket, int chunk);

    /**
     * 删除数据库中的分块文件单独一条上传记录
     * @param fileMd5 文件md5
     * @param chunk 分块序号
     */
    public void clearOneChunkFromDb(String fileMd5, int chunk);

    /**
     * 批量删除方法，接收待删除的分块信息列表
     * @param chunksToDelete
     */
    public void clearSomeChunksFromDb(List<MediaMinioChunk> chunksToDelete);

    /**
     * 清除分块文件
     *
     * @param fileMd5 文件md5
     */
    public void clearChunkFromDb(String fileMd5);

    /**
     * 获取超时的分块文件
     *
     * @param time 时间
     * @return List<MediaMinioChunk>
     */
    public List<MediaMinioChunk> getChunkTimeoutFiles(LocalDateTime time);


    /**
     * 清除单个文件
     *
     * @param FilePath 文件路径
     */
    public void deleteSingleFile(String FilePath);

    /**
     * 清除单块分块文件
     *
     * @param chunkFileFolderPath 分块文件路径
     * @param chunk               分块文件序号
     */
    public void clearSingleChunk(String chunkFileFolderPath, int chunk);

    /**
     * 清除分块文件
     *
     * @param chunkFileFolderPath 分块文件路径
     * @param chunkTotal          分块文件总数
     */
    public void clearChunkFiles(String chunkFileFolderPath, int chunkTotal);
}
