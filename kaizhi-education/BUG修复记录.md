# BUG修复记录

## 打包为可运行的 JAR/WAR 文件

加入如下meaven配置

```xml
<build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
            <configuration>
                <mainClass>com.edu.kaizhi.Application</mainClass>
            </configuration>
        </plugin>
    </plugins>
</build>
```

插件支持配置启动类、依赖范围过滤、自定义 JAR 文件名等。

需要注意的是：如果模块是一个独立的 Spring Boot 应用（比如它也可以单独运行），那么在该模块的 `pom.xml` 中应该添加 `spring-boot-maven-plugin` 配置，如果不是 Spring Boot 应用，可以不用加入这段话





## openfeign调用时令牌不会同时传递问题

使用一个拦截器得到令牌

```java
@Component
public class FeignRequestInterceptor implements RequestInterceptor {
    private static final Pattern BEARER_TOKEN_HEADER_PATTERN = Pattern.compile("^Bearer (?<token>[a-zA-Z0-9-._~+/]+=*)$",
            Pattern.CASE_INSENSITIVE);

    @Override
    public void apply(RequestTemplate template) {
        final String authorization = HttpHeaders.AUTHORIZATION;
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (Objects.nonNull(requestAttributes)) {
            String authorizationHeader = requestAttributes.getRequest().getHeader(HttpHeaders.AUTHORIZATION);
            Matcher matcher = BEARER_TOKEN_HEADER_PATTERN.matcher(authorizationHeader);
            if (matcher.matches()) {
                template.header(authorization);
                template.header(authorization, authorizationHeader);
            }
        }
    }
}
```

在配置中使用这个请求拦截器

```java
@Configuration
public class FeignConfig {
    /**
     * 用于实现令牌信息中继的feign配置
     */
    @Bean
    public RequestInterceptor requestInterceptor() {
        return new FeignRequestInterceptor();
    }

    @Bean
    public Logger.Level feignLoggerLevel() {
        return Logger.Level.FULL;
    }

    // 启用 Feign 的上下文传播功能
    @Bean
    public Feign.Builder feignBuilder() {
        return Feign.builder().requestInterceptor(new FeignRequestInterceptor());
    }
}
```

最后，在feign过程调用这个配置项

```java
@FeignClient(value = "media-api", configuration = {MultipartSupportConfig.class, FeignConfig.class}, fallbackFactory = MediaServiceClientFallbackFactory.class)
public interface MediaServiceClient {

    @RequestMapping(value = "/media/upload/coursefile", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    String uploadFile(@RequestPart("filedata") MultipartFile upload, @RequestParam(value = "objectName", required = false) String objectName,
                      @RequestParam(value = "companyId", required = false) Long companyId);

    @DeleteMapping(value = "/media/delete/coursefile/{courseId}")
    void deleteCourseFile(@PathVariable("courseId") String courseId);
}
```

注意，这样操作适用于可以得到上下文前提下，在代码中由于使用xxl-job，所以没办法得到上下文，所以还是会传递一个匿名用户的字符串给另一个微服务，只能手动传递公司ID，使得不需要令牌也可以校验。
