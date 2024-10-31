package com.edu.kaizhi.content.service.impl;

import com.edu.kaizhi.content.model.po.CourseMarket;
import com.edu.kaizhi.content.mapper.CourseMarketMapper;
import com.edu.kaizhi.content.service.CourseMarketService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <p>
 * 课程营销信息 服务实现类
 * </p>
 *
 * @author zikai
 */
@Slf4j
@Service
public class CourseMarketServiceImpl extends ServiceImpl<CourseMarketMapper, CourseMarket> implements CourseMarketService {

}
