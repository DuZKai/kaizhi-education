package com.edu.kaizhi.content.service.impl;


import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.edu.kaizhi.base.exception.CommonError;
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.content.bloomfilter.BloomFilterHelper;
import com.edu.kaizhi.content.bloomfilter.BloomfilterService;
import com.edu.kaizhi.content.config.MultipartSupportConfig;
import com.edu.kaizhi.content.feignclient.MediaServiceClient;
import com.edu.kaizhi.content.feignclient.SearchServiceClient;
import com.edu.kaizhi.content.mapper.*;
import com.edu.kaizhi.content.model.dto.CourseBaseInfoDto;
import com.edu.kaizhi.content.model.dto.CoursePreviewDto;
import com.edu.kaizhi.content.model.dto.TeachplanDto;
import com.edu.kaizhi.content.model.po.*;
import com.edu.kaizhi.content.service.*;
import com.edu.kaizhi.messagesdk.model.po.MqMessage;
import com.edu.kaizhi.messagesdk.service.MqMessageService;

import com.google.common.hash.Funnels;
import freemarker.template.Configuration;
import freemarker.template.Template;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import static com.edu.kaizhi.base.constant.SystemStatusConstant.COURSE_NOT_SUBMITTED;
import static com.edu.kaizhi.base.constant.SystemStatusConstant.OFFLINE;

/**
 * 课程发布接口实现
 */
@Service
@Slf4j
public class CoursePublishServiceImpl implements CoursePublishService {

    @Autowired
    CourseBaseInfoService courseBaseInfoService;

    @Autowired
    TeachplanService teachplanService;

    @Autowired
    CourseBaseMapper courseBaseMapper;

    @Autowired
    CourseMarketMapper courseMarketMapper;

    @Autowired
    CoursePublishPreMapper coursePublishPreMapper;

    @Autowired
    CoursePublishMapper coursePublishMapper;

    @Autowired
    MqMessageService mqMessageService;

    @Autowired
    MediaServiceClient mediaServiceClient;

    @Autowired
    SearchServiceClient searchServiceClient;

    @Autowired
    CourseTeacherService courseTeacherService;

    @Autowired
    TeacherService teacherService;

    @Autowired
    BloomfilterService bloomfilterService;

    @Autowired
    RedisTemplate redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    RedissonClient redissonClient;

    @Autowired
    private CacheServiceImpl cacheService;

    // 布隆过滤器
    // private static final BloomFilter<Long> bloomFilter = BloomFilter.create(
    //         Funnels.longFunnel(),
    //         100000,  // 预计插入数据量
    //         0.01     // 允许误判率
    // );
    private final BloomFilterHelper<Long> modelBloomFilterHelper = new BloomFilterHelper<>(
            Funnels.longFunnel(), // 数据类型
            1000,  // 预计插入数据量
            0.01    // 允许误判率
    );

    // Redis 中存储布隆过滤器的键
    private static final String BLOOM_FILTER_KEY = "bloom:course";

    private static final String LOCK_KEY = "cache_lock:";

    private static final long LOCK_EXPIRE_TIME = 5; // 锁的过期时间，防止死锁
    @Autowired
    private TeachplanMapper teachplanMapper;

    @Autowired
    private TeachplanMediaMapper teachplanMediaMapper;

    public CoursePreviewDto getCoursePreviewInfo(Long courseId) {

        //课程基本信息、营销信息
        CourseBaseInfoDto courseBaseInfo = courseBaseInfoService.getCourseBaseInfo(courseId);

        //课程计划信息
        List<TeachplanDto> teachplanTree = teachplanService.findTeachplanTreeNodes(courseId);

        // 师资信息
        List<Teacher> teacher = teacherService.getCourseTeacherList(courseId);

        CoursePreviewDto coursePreviewDto = new CoursePreviewDto();
        coursePreviewDto.setCourseBase(courseBaseInfo);
        coursePreviewDto.setTeachplans(teachplanTree);
        coursePreviewDto.setTeacher(teacher);
        return coursePreviewDto;
    }

    @Transactional
    public void commitAudit(Long companyId, Long courseId) {

        //约束校验
        CourseBase courseBase = courseBaseMapper.selectById(courseId);

        //课程审核状态
        String auditStatus = courseBase.getAuditStatus();
        //当前审核状态为已提交不允许再次提交
        if ("202003".equals(auditStatus)) {
            CustomizeException.cast("当前为等待审核状态，审核完成可以再次提交。");
        }
        //本机构只允许提交本机构的课程
        if (companyId != -1L && !courseBase.getCompanyId().equals(companyId)) {
            CustomizeException.cast("不允许提交其它机构的课程。");
        }

        //课程图片是否填写
        if (StringUtils.isEmpty(courseBase.getPic())) {
            CustomizeException.cast("提交失败，请上传课程图片");
        }

        //添加课程预发布记录
        CoursePublishPre coursePublishPre = new CoursePublishPre();
        //课程基本信息加部分营销信息
        CourseBaseInfoDto courseBaseInfo = courseBaseInfoService.getCourseBaseInfo(courseId);
        BeanUtils.copyProperties(courseBaseInfo, coursePublishPre);
        //课程营销信息
        CourseMarket courseMarket = courseMarketMapper.selectById(courseId);
        //转为json
        String courseMarketJson = JSON.toJSONString(courseMarket);
        //将课程营销信息json数据放入课程预发布表
        coursePublishPre.setMarket(courseMarketJson);

        //查询课程计划信息
        List<TeachplanDto> teachplanTree = teachplanService.findTeachplanTreeNodes(courseId);
        if (teachplanTree.isEmpty()) {
            CustomizeException.cast("提交失败，还没有添加课程计划");
        }

        // 判断每个小节是否都有视频
        LambdaQueryWrapper<Teachplan> teachplanLambdaQueryWrapper = new LambdaQueryWrapper<>();
        teachplanLambdaQueryWrapper.eq(Teachplan::getCourseId, courseId);
        teachplanLambdaQueryWrapper.eq(Teachplan::getGrade, 2);
        int teachplansCount = teachplanMapper.selectCount(teachplanLambdaQueryWrapper);

        LambdaQueryWrapper<TeachplanMedia> teachplanMediaLambdaQueryWrapper = new LambdaQueryWrapper<>();
        teachplanMediaLambdaQueryWrapper.eq(TeachplanMedia::getCourseId, courseId);
        int teachplanMediaCount = teachplanMediaMapper.selectCount(teachplanMediaLambdaQueryWrapper);

        if (teachplansCount != teachplanMediaCount) {
            CustomizeException.cast("提交失败，课程计划中有小节没有视频");
        }

        //转json
        String teachplanTreeString = JSON.toJSONString(teachplanTree);
        coursePublishPre.setTeachplan(teachplanTreeString);

        //查询课程师资信息
        List<Teacher> teacherList = teacherService.getCourseTeacherList(courseId);
        if (teacherList.isEmpty()) {
            CustomizeException.cast("提交失败，还没有添加课程师资");
        }
        //转json
        String courseTeacherListString = JSON.toJSONString(teacherList);
        coursePublishPre.setTeachers(courseTeacherListString);

        //设置预发布记录状态，已提交
        coursePublishPre.setStatus("202003");
        //教学机构id
        coursePublishPre.setCompanyId(companyId);
        //提交时间
        coursePublishPre.setCreateDate(LocalDateTime.now());
        CoursePublishPre coursePublishPreUpdate = coursePublishPreMapper.selectById(courseId);
        if (coursePublishPreUpdate == null) {
            //添加课程预发布记录
            coursePublishPreMapper.insert(coursePublishPre);
        } else {
            coursePublishPreMapper.updateById(coursePublishPre);
        }

        //更新课程基本表的审核状态
        courseBase.setAuditStatus("202003");
        courseBase.setStatus("203001");
        courseBaseMapper.updateById(courseBase);
    }


    @Transactional
    public void publish(Long companyId, Long courseId) {
        //查预发布表
        CoursePublishPre coursePublishPre = coursePublishPreMapper.selectById(courseId);
        if (coursePublishPre == null)
            CustomizeException.cast("课程没有审核记录，无法发布");

        if(companyId != -1L && !companyId.equals(coursePublishPre.getCompanyId()))
            CustomizeException.cast("只允许发布本机构的课程");

        // 课程没审核通过，不允许发布
        if (!coursePublishPre.getStatus().equals("202004"))
            CustomizeException.cast("课程未审核通过，不允许发布");

        //保存课程发布信息
        saveCoursePublish(courseId);

        // 向消息表写数据
        saveCoursePublishMessage(courseId);

        // 预发布表数据删除
        coursePublishPreMapper.deleteById(courseId);

    }

    /**
     * 保存课程发布信息
     *
     * @param courseId 课程id
     * @return void
     */
    private void saveCoursePublish(Long courseId) {
        CoursePublishPre coursePublishPre = coursePublishPreMapper.selectById(courseId);
        // 向课程发布表写数据
        CoursePublish coursePublish = new CoursePublish();
        BeanUtils.copyProperties(coursePublishPre, coursePublish);
        coursePublish.setStatus("203002");
        coursePublish.setCreateDate(LocalDateTime.now());

        // 先查询课程发布，如果有则更新，没有则添加
        CoursePublish coursePublishUpdate = coursePublishMapper.selectById(courseId);
        if (coursePublishUpdate == null)
            coursePublishMapper.insert(coursePublish);
        else
            coursePublishMapper.updateById(coursePublish);

        //更新课程基本表的发布状态
        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        courseBase.setStatus("203002");
        courseBaseMapper.updateById(courseBase);
    }

    /**
     * 保存消息表记录
     *
     * @param courseId 课程id
     * @return void
     */
    private void saveCoursePublishMessage(Long courseId) {
        MqMessage mqMessage = mqMessageService.addMessage("course_publish", String.valueOf(courseId), null, null);
        if (mqMessage == null) {
            CustomizeException.cast(CommonError.UNKOWN_ERROR);
        }
    }

    public File generateCourseHtml(Long courseId) {

        //静态化文件
        File htmlFile = null;

        try {
            //配置freemarker
            Configuration configuration = new Configuration(Configuration.getVersion());

            //加载模板
            //选指定模板路径,classpath下templates下
            //得到classpath路径
            String classpath = this.getClass().getResource("/").getPath();
            configuration.setDirectoryForTemplateLoading(new File(classpath + "/templates/"));
            //设置字符编码
            configuration.setDefaultEncoding("utf-8");

            //指定模板文件名称
            Template template = configuration.getTemplate("course_template.ftl");

            //准备数据
            CoursePreviewDto coursePreviewInfo = this.getCoursePreviewInfo(courseId);

            Map<String, Object> map = new HashMap<>();
            map.put("model", coursePreviewInfo);

            //静态化
            //参数1：模板，参数2：数据模型
            String content = FreeMarkerTemplateUtils.processTemplateIntoString(template, map);
            // System.out.println(content);
            //将静态化内容输出到文件中
            InputStream inputStream = IOUtils.toInputStream(content);
            //创建静态化文件
            htmlFile = File.createTempFile("course", ".html");
            log.debug("课程静态化，生成静态文件:{}", htmlFile.getAbsolutePath());
            //输出流
            FileOutputStream outputStream = new FileOutputStream(htmlFile);
            IOUtils.copy(inputStream, outputStream);
        } catch (Exception e) {
            log.error("课程静态化异常:课程id:{}, 异常{}", courseId, e.toString());
            CustomizeException.cast("课程静态化异常");
        }

        return htmlFile;
    }

    public void uploadCourseHtml(Long courseId, File file) {
        MultipartFile multipartFile = MultipartSupportConfig.getMultipartFile(file);
        String course = mediaServiceClient.uploadFile(multipartFile, "course/" + courseId + ".html");
        if (course == null) {
            log.debug("远程调度走降级逻辑，得到上传结果null，课程ID: {}", courseId);
            CustomizeException.cast("上传静态文件异常");
        }
    }

    public CoursePublish getCoursePublish(Long courseId) {
        return coursePublishMapper.selectById(courseId);
    }

    /**
     * 初始化布隆过滤器，加载所有可能的 courseId
     */
    @PostConstruct
    public void initBloomFilter() {
        // 将Redis已有的布隆过滤器删除，保证每次重启都加入现有的 courseId
        Boolean exists = stringRedisTemplate.hasKey(BLOOM_FILTER_KEY);
        if (exists != null && exists) {
            stringRedisTemplate.delete(BLOOM_FILTER_KEY);
            System.out.println("Redis中布隆过滤器成功删除");
        } else {
            System.out.println("Redis中布隆过滤器未删除");
        }
        System.out.println("布隆过滤器初始化...");
        // 从数据库中获取所有的 courseId 列表
        List<Long> courseIdList = coursePublishMapper.selectAllId();
        for (Long courseId : courseIdList) {
            bloomfilterService.addByBloomFilter(modelBloomFilterHelper, BLOOM_FILTER_KEY, courseId);
        }
    }


    // 更新布隆过滤器
    public void updateBloomFilter(Long courseId) {
        bloomfilterService.addByBloomFilter(modelBloomFilterHelper, BLOOM_FILTER_KEY, courseId);
    }

    // 使用Redisson实现分布式锁
    public CoursePublish getCoursePublishCache(Long courseId) {
        String redisKey = "course:" + courseId;
        // 使用布隆过滤器判断 courseId 是否存在
        boolean includeFlag = bloomfilterService.includeByBloomFilter(modelBloomFilterHelper, BLOOM_FILTER_KEY, courseId);
        if (!includeFlag) {
            System.out.println("布隆过滤器判断：该课程不存在，直接返回 null");
            return null; // 避免缓存穿透
        }
        // if (!bloomFilter.mightContain(courseId)) {
        //     System.out.println("布隆过滤器判断：该课程不存在，直接返回 null");
        //     return null; // 避免缓存穿透
        // }

        //查询缓存
        Object jsonObj = redisTemplate.opsForValue().get(redisKey);
        if (jsonObj != null) {
            String jsonString = JSON.toJSONString(jsonObj);
            if (jsonString.equals("null"))
                return null;
            try {
                // 转换为 JSON 字符串并解析为 CoursePublish
                CoursePublish coursePublish = JSON.parseObject(
                        jsonString,
                        CoursePublish.class
                );
                System.out.println("从缓存查询...");
                return coursePublish;
            } catch (Exception e) {
                // 如果解析失败，打印日志并返回 null
                System.err.println("从缓存中读取数据失败，Key: " + redisKey + "，错误：" + e.getMessage());
                System.err.println("json信息为" + jsonObj.toString());
                return null;
            }
        } else {
            RLock lock = redissonClient.getLock(LOCK_KEY + courseId);
            //获取锁
            lock.lock();

            // 获取分布式锁
            try {
                System.out.println("进入数据库查询逻辑...");
                //从数据库查询
                CoursePublish coursePublish = getCoursePublish(courseId);
                // 加锁查询解决缓存击穿
                // String withCache = cacheService.getWithCache(courseId.toString(),
                //         () -> getCoursePublish(courseId));
                // CoursePublish coursePublish = withCache == null ? null : JSON.parseObject(withCache, CoursePublish.class);

                // if (coursePublish != null) {
                //     redisTemplate.opsForValue().set("course:" + courseId, JSON.toJSONString(coursePublish));
                // }
                //设置过期时间300秒，使用null解决缓存穿透
                redisTemplate.opsForValue().set(redisKey,
                        coursePublish == null ? "null" : coursePublish,
                        // 随机数加入解决缓存雪崩
                        300 + new Random().nextInt(100), TimeUnit.SECONDS);

                return coursePublish;
            } finally {
                // 手动释放锁
                lock.unlock();
            }

        }
    }

    // 下架课程
    @Transactional
    public void offlineCourse(Long companyId, Long courseId) {
        CourseBase courseBase = courseBaseMapper.selectById(courseId);
        if (companyId != -1L && !companyId.equals(courseBase.getCompanyId()))
            CustomizeException.cast("只允许下架本机构的课程");
        CoursePublish coursePublish = coursePublishMapper.selectById(courseId);
        if (coursePublish == null)
            CustomizeException.cast("未找到已发布课程，无法下架");

        // 删除课程模板文件
        try {
            mediaServiceClient.deleteCourseFile(String.valueOf(courseId));
        } catch (Exception e) {
            log.info("删除课程模板文件失败");
        }
        // 删除ES搜索文件
        Boolean delete = searchServiceClient.delete(String.valueOf(courseId));
        if (!delete) {
            log.info("删除索引失败");
        }

        // 先删数据库，再删缓存
        // 删除课程发布信息
        coursePublishMapper.deleteById(courseId);

        // 删除课程缓存
        String redisKey = "course:" + courseId;
        Object jsonObj = redisTemplate.opsForValue().get(redisKey);
        if (jsonObj != null) {
            try {
                redisTemplate.delete(redisKey);
            } catch (Exception e) {
                log.info("删除缓存失败");
            }
        }

        courseBase.setAuditStatus(COURSE_NOT_SUBMITTED);
        courseBase.setStatus(OFFLINE);
        courseBaseMapper.updateById(courseBase);

    }
}
