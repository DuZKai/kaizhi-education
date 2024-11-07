package com.edu.kaizhi.media.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.base.model.PageResult;
import com.edu.kaizhi.media.mapper.MediaFilesMapper;
import com.edu.kaizhi.media.model.dto.QueryMediaParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileParamsDto;
import com.edu.kaizhi.media.model.dto.UploadFileResultDto;
import com.edu.kaizhi.media.model.po.MediaFiles;
import com.edu.kaizhi.media.service.MediaFileService;
import com.j256.simplemagic.ContentInfo;
import com.j256.simplemagic.ContentInfoUtil;
import io.minio.MinioClient;
import io.minio.UploadObjectArgs;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 *
 */
@Service
@Slf4j
public class MediaFileServiceImpl implements MediaFileService {

    @Autowired
    MinioClient minioClient;

    @Autowired
    MediaFilesMapper mediaFilesMapper;

    // 注入自己，使得事务生效
    @Autowired
    MediaFileService currentProxy;

    //普通文件桶
    @Value("${minio.bucket.files}")
    private String bucket_Files;

    //视频桶
    @Value("${minio.bucket.videofiles}")
    private String bucket_vedio;

    @Override
    public PageResult<MediaFiles> queryMediaFiels(Long companyId, PageParams pageParams, QueryMediaParamsDto queryMediaParamsDto) {

        //构建查询条件对象
        LambdaQueryWrapper<MediaFiles> queryWrapper = new LambdaQueryWrapper<>();

        //分页对象
        Page<MediaFiles> page = new Page<>(pageParams.getPageNo(), pageParams.getPageSize());
        // 查询数据内容获得结果
        Page<MediaFiles> pageResult = mediaFilesMapper.selectPage(page, queryWrapper);
        // 获取数据列表
        List<MediaFiles> list = pageResult.getRecords();
        // 获取数据总数
        long total = pageResult.getTotal();
        // 构建结果集
        return new PageResult<>(list, total, pageParams.getPageNo(), pageParams.getPageSize());
    }

    /**
     * 获取文件默认存储目录路径 年/月/日
     */
    private String getDefaultFolderPath() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(new Date()).replace("-", "/") + "/";
    }

    /**
     * 获取文件的md5
     *
     * @param file 文件
     */
    private String getFileMd5(File file) {
        try (FileInputStream fileInputStream = new FileInputStream(file)) {
            return DigestUtils.md5Hex(fileInputStream);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 将文件上传到minio
     * */
    public UploadFileResultDto uploadFile(Long companyId, UploadFileParamsDto uploadFileParamsDto, String localFilePath) {

        String filename = uploadFileParamsDto.getFilename();
        String extension = filename.substring(filename.lastIndexOf("."));

        // 将文件上传minio
        String mimeType = getMimeType(extension);

        String defaultFolderPath = getDefaultFolderPath();
        String fileMd5 = getFileMd5(new File(localFilePath));
        String objectName = defaultFolderPath + fileMd5 + extension;

        // 上传文件到minio
        boolean result = addMediaFilesToMinIO(localFilePath, mimeType, bucket_Files, objectName);
        if (!result) {
            CustomizeException.cast("上传文件到文件系统失败");
        }

        //入库文件信息，要使得事务生效，需要使用注入自身的代理对象
        // 不加入也会显示警告：@Transactional自调用(实际上是目标对象内的方法调用目标对象的另一个方法)在运行时不会导致实际的事务
        MediaFiles mediaFiles = currentProxy.addMediaFilesToDb(companyId, fileMd5, uploadFileParamsDto, bucket_Files, objectName);
        if (mediaFiles == null) {
            CustomizeException.cast("上传文件信息到数据库失败");
        }

        // 准备返回对象
        UploadFileResultDto uploadFileResultDto = new UploadFileResultDto();
        BeanUtils.copyProperties(mediaFiles, uploadFileResultDto);


        return uploadFileResultDto;
    }

    /**
     * 根据扩展名取出mimeType
     *
     * @param extension
     */
    private String getMimeType(String extension) {
        if (extension == null)
            extension = "";
        // 根据扩展名取出mimeType
        ContentInfo extensionMatch = ContentInfoUtil.findExtensionMatch(extension);
        // 通用mimeType，字节流
        String mimeType = MediaType.APPLICATION_OCTET_STREAM_VALUE;
        if (extensionMatch != null) {
            mimeType = extensionMatch.getMimeType();
        }
        return mimeType;
    }

    /**
     * @param localFilePath 文件地址
     * @param bucket        桶
     * @param objectName    对象名称
     * @return void
     * 将文件写入minIO
     */
    public boolean addMediaFilesToMinIO(String localFilePath, String mimeType, String bucket, String objectName) {
        try {
            UploadObjectArgs testbucket = UploadObjectArgs.builder()
                    .bucket(bucket)
                    .object(objectName)
                    .filename(localFilePath)
                    .contentType(mimeType)
                    .build();
            minioClient.uploadObject(testbucket);
            log.debug("上传文件到minio成功,bucket:{},objectName:{}", bucket, objectName);
            System.out.println("上传成功");
            return true;
        } catch (Exception e) {
            // e.printStackTrace();
            log.error("上传文件到minio出错, bucket:{}, objectName:{}, 错误原因:{}", bucket, objectName, e.getMessage(), e);
            CustomizeException.cast("上传文件到文件系统失败");
        }
        return false;
    }

    /**
     * 将文件信息添加到文件表
     *
     * @param companyId           机构id
     * @param fileMd5             文件md5值
     * @param uploadFileParamsDto 上传文件的信息
     * @param bucket              桶
     * @param objectName          对象名称
     * @return com.edu.kaizhi.media.model.po.MediaFiles
     */
    @Transactional
    public MediaFiles addMediaFilesToDb(Long companyId, String fileMd5, UploadFileParamsDto uploadFileParamsDto, String bucket, String objectName) {
        // 上传文件信息到数据库
        MediaFiles mediaFiles = mediaFilesMapper.selectById(fileMd5);
        if (mediaFiles == null) {
            mediaFiles = new MediaFiles();
            BeanUtils.copyProperties(uploadFileParamsDto, mediaFiles);
            // 文件ID
            mediaFiles.setId(fileMd5);
            // 机构ID
            mediaFiles.setCompanyId(companyId);
            // 桶
            mediaFiles.setBucket(bucket);
            // file_path
            mediaFiles.setFilePath(objectName);
            // file_id
            mediaFiles.setFileId(fileMd5);
            // url
            mediaFiles.setUrl("/" + bucket + "/" + objectName);
            // 上传时间
            mediaFiles.setCreateDate(LocalDateTime.now());
            // 状态
            mediaFiles.setStatus("1");
            // 审核状态
            mediaFiles.setAuditStatus("002003");

            // 插入数据库
            if (mediaFilesMapper.insert(mediaFiles) <= 0) {
                log.debug("上传文件信息到数据库失败, bucket = {}, objectName:{}", bucket, objectName);
                return null;
            }
        }

        return mediaFiles;
    }


}
