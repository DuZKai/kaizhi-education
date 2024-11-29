package com.edu.kaizhi.content.feignclient;

import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class SearchServiceClientFallbackFactory implements FallbackFactory<SearchServiceClient> {
    @Override
    public SearchServiceClient create(Throwable throwable) {
        return new SearchServiceClient() {
            @Override
            public Boolean add(CourseIndex courseIndex) {
                log.debug("调用搜索添加索引发生熔断走降级方法,熔断异常:{}", throwable.toString(),throwable);
                return false;
            }

            @Override
            public Boolean delete(String courseId) {
                log.debug("调用搜索删除索引发生熔断走降级方法,熔断异常:{}", throwable.toString(),throwable);
                return false;
            }
        };
    }

}
