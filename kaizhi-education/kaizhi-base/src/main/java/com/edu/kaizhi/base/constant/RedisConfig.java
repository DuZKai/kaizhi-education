package com.edu.kaizhi.base.constant;

public class RedisConfig {
    public static final Long VERIFY_CODE_TTL = 5L;

    public static final String ManNum = "info:man";
    public static final String WomanNum = "info:woman";
    public static final String AllNum = "info:all";

    public static final String SearchList = "search:list";
    public static final String CategoryList = "content:course-category";
    public static final String HotList = "rank:hot";
    public static final String CourseUserCount = "course:user";

    // 数据缓存过期时间
    public static final int Expired_Time_Second = 5 * 60;

    // 数据缓存刷新时间
    public static final int Pre_Load_Time_Second = 4 * 60;
}
