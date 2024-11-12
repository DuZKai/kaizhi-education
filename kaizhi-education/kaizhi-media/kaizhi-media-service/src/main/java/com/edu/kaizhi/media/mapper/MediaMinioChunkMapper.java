package com.edu.kaizhi.media.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.kaizhi.media.model.po.MediaMinioChunk;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 */
public interface MediaMinioChunkMapper extends BaseMapper<MediaMinioChunk> {

    /**
     * 查询超时的分片
     *
     * @param time 时间
     * @return List<MediaMinioChunk>
     */
    @Select("SELECT * FROM media_minio_chunk m where TIMESTAMPDIFF(MINUTE, m.create_date, #{date}) > 30")
    List<MediaMinioChunk> selectTimeoutChunks(@Param("date") LocalDateTime time);
}
