package com.edu.kaizhi.media.model.po;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@ToString
@TableName("media_minio_chunk")
public class MediaMinioChunk implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 文件标识
     */
    private String fileId;

    /**
     * 存储源
     */
    private String bucket;

    /**
     * 存储路径
     */
    private String filePath;

    /**
     * 分块块数
     * */
    private int chunk;


    /**
     * 上传时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createDate;


}
