package com.edu.kaizhi.media.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.edu.kaizhi.media.model.po.MediaProcess;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 */
public interface MediaProcessMapper extends BaseMapper<MediaProcess> {

    /**
     * 根据分片参数获取待处理任务
     *
     * @param shardTotal 分片总数
     * @param shardIndex 分片序号
     * @param count      任务数
     * @return java.util.List<com.edu.kaizhi.media.model.po.MediaProcess>
     */
    // TODO: 换为constant
    @Select("select * from media_process t where t.id % #{shardTotal} = #{shardIndex} and (t.status = '1' or t.status = '3') and t.fail_count < 3 limit #{count}")
    List<MediaProcess> selectListByShardIndex(@Param("shardTotal") int shardTotal, @Param("shardIndex") int shardIndex, @Param("count") int count);

    /**
     * 开启一个任务
     *
     * @param id 任务id
     * @return 更新记录数
     */
    // TODO: 换为constant
    @Update("update media_process m set m.status='4' where (m.status='1' or m.status='3') and m.fail_count<3 and m.id=#{id}")
    int startTask(@Param("id") long id);


    /**
     * 查询是否有执行超过30分钟的视频处理任务
     *
     * @param nowDate 当前任务执行的时间
     * @return List<MediaProcess>
     */
    @Select("SELECT * FROM media_process m where TIMESTAMPDIFF(MINUTE, m.create_date, #{date}) > 30 and m.status = '4'")
    List<MediaProcess> selectTimeoutProcess(@Param("date") LocalDateTime nowDate);
}
