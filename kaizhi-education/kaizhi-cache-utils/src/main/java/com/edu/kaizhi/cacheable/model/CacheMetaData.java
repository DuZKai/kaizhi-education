package com.edu.kaizhi.cacheable.model;


import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CacheMetaData {

    private Object key;
    private String[] cacheNames;
    private long expiredTimeSecond;
    private long preLoadTimeSecond;
    private boolean dailyCache;
    private boolean autoRefreshDailyCache;

}
