# BUG修复记录

## 后端

### 打包为可运行的 JAR/WAR 文件

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





### openfeign调用时令牌不会同时传递问题

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



### 使用@Cacheable一直无法正确序列化时间，导致取出时候有问题

原因是使用GenericJackson2JsonRedisSerializer，存入的一直是一个数组类，导致无法再序列化会正确类

设置时间格式化、可以添加一个Bean、也可以使用`@JsonFormat`注解

1. 添加一个Bean

```java
@Configuration
public class JacksonConfig {

    @Bean
    public ObjectMapper objectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        // 注册 JavaTimeModule 来处理 Java 8 时间类型
        JavaTimeModule javaTimeModule = new JavaTimeModule();
        javaTimeModule.addSerializer(LocalDateTime.class, new LocalDateTimeSerializer(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        javaTimeModule.addSerializer(LocalDate.class, new LocalDateSerializer(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
        javaTimeModule.addSerializer(LocalTime.class, new LocalTimeSerializer(DateTimeFormatter.ofPattern("HH:mm:ss")));
        objectMapper.registerModule(javaTimeModule);
        return objectMapper;
    }
}
```

2. 使用注解 `@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")`，其中patter设置成对应的时间格式就可

二、在实体类字段上设置反序列化方式。

```java
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createDate;
```

这样就可以正确解决时间无法反序列化问题



### springboot下用cache注解整合redis并使用json序列化、反序列化

只需要在配置文件中配置一下CacheManger,使用jackson的一个带泛型的序列化工具实现。

```java
@Bean
    public CacheManager cacheManager(RedisConnectionFactory factory) {
        GenericJackson2JsonRedisSerializer jsonRedisSerializer = new GenericJackson2JsonRedisSerializer();
        StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
        // 配置序列化
        RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig();
        RedisCacheConfiguration redisCacheConfiguration = config
                // 键序列化方式 redis字符串序列化
                .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(stringRedisSerializer))
                // 值序列化方式 简单json序列化
                .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(jsonRedisSerializer));
        return RedisCacheManager.builder(factory).cacheDefaults(redisCacheConfiguration).build();

    }
```



### media微服务swagger一直报错：Request method 'GET' not supported

逐步开启controller查看swagger是否会失败，最终确认是MediaFilesController问题，再逐个打开函数查看，发现只要这个函数出现就会导致swagger无法运行

```java
@ApiOperation("刪除媒资文件")
@RequiresUser
@DeleteMapping("/{mediaId}")
public void deleteMediaByMediaId(@PathVariable String mediaId) {
    Long companyId = UserContext.getCompanyId();
    mediaFileService.deleteFileById(companyId, mediaId);
}
```

将路径改为

```java
@DeleteMapping(value = "/delete/{mediaId}")
```

这样就不会报错了，swagger正确显示。估计是 delete直接使用id 作为路径参数，容易有问题，所以被禁止了



### 升级版本时候发现Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.13.0:compile 错误: 不支持发行版本 21

这个是JDK升级成21以后打包出现的一个问题。

首先要先确保MAVEN版本不能低于3.8.1，其次保证Java版本与maven对应，IDEA中设置好新的MVAEN，项目结构里面设置好每一个项目和模块的SDK

最后注意在这个位置:

IDEA中File > Settings > Build, Execution, Deployment > Build Tools > Maven > Runner里面还有个运行的JDK路径，这个改了就能运行了



### 升级版本时候 Spring Cloud 项目使用 bootstrap.yml 配置文件，添加 nacos 等相关参数配置，启动服务抛入如下异常:

```
Description:
No spring.config.import property has been defined
Action:
Add a spring.config.import=nacos: property to your configuration.
	If configuration is not required add spring.config.import=optional:nacos: instead.
	To disable this check, set spring.cloud.nacos.config.import-check.enabled=false.
```

导致上述异常的原因是 Spring Cloud 不再默认启用 bootstrap 包。



解决方式一：
使用 application.yaml，在配置文件中通过 spring.config.import=nacos: property to your configuration. 方式进行配置加载：

spring:
  config:
    import: nacos: xxx.yaml

解决方式二：
在 pom.xml 中引入 boostrap 依赖包：

```yml
<!-- https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-starter-bootstrap -->
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-bootstrap</artifactId>
    <version>3.1.7</version>
</dependency>
```



### 项目从JAVA8到JAVA21历程

将全部包打到最新版本，发现有几个包迁移了(此处旧的包均记录当前最高版本包)：

```xml
<dependency>
    <groupId>commons-lang</groupId>
    <artifactId>commons-lang</artifactId>
    <version>2.6</version>
</dependency>
---------------------------------------------------->
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-lang3</artifactId>
    <version>3.17.0</version>
</dependency>
-------------------------------------------------------------
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.33</version>
</dependency>
---------------------------------------------------->
<dependency>
    <groupId>com.mysql</groupId>
    <artifactId>mysql-connector-j</artifactId>
    <version>9.1.0</version>
</dependency>
```

注意：在spring-boot升级为3后，有包需要整个迁移到新的包依赖

```xml
<dependency>
   <groupId>com.baomidou</groupId>
   <artifactId>mybatis-plus-boot-starter</artifactId>
   <version>3.4.1</version>
</dependency>
---------------------------------------------------->
<dependency>
    <groupId>com.baomidou</groupId>
    <artifactId>mybatis-plus-spring-boot3-starter</artifactId>
    <version>3.5.9</version>
</dependency>
-------------------------------------------------------------
```

升级到最新崩溃发现，nacos和spring boot和spring cloud都需要对应上，不然配置可能无法找到，[nacos配置说明](https://sca.aliyun.com/docs/2023/overview/version-explain/?spm=7145af80.729011b0.0.0.55432d5btg3SbY)

**2023.x 分支**

适配 Spring Boot 3.2，Spring Cloud 2023.x 版本及以上的 Spring Cloud Alibaba 版本按从新到旧排列如下表（最新版本用*标记）：

| Spring Cloud Alibaba Version | Spring Cloud Version  | Spring Boot Version |
| ---------------------------- | --------------------- | ------------------- |
| 2023.0.1.0*                  | Spring Cloud 2023.0.1 | 3.2.4               |
| 2023.0.0.0-RC1               | Spring Cloud 2023.0.0 | 3.2.0               |



### Docker pull拉取一直不成功，拉取nacos时一直失败

[root@localhost 桌面]# docker pull nacos/nacos-server:v2.3.2
Error response from daemon: Get https://registry-1.docker.io/v2/: net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)



可以直接绕过 https://registry-1.docker.io/v2/下载，使用

```
docker pull nacos-registry.cn-hangzhou.cr.aliyuncs.com/nacos/nacos-server:v2.3.2
```



### 拉取nacos后，启动容器nacos一直失败

直接使用如下命令：
```cmd
 docker run -d --name nacos-server-new -p 8849:8849 nacos/nacos-server-new:v2.3.2
```

出现问题，容器启动失败，并且无法再次启动，因为失败的容器创建会导致名字被占用，在`docker ps -a`显示失败：

![image-20250109205749073](img/image-20250109205749073.png)

使用`docker rm nacos-server-new`指令先去除相同名字nacos

在第一次建nacos时需要配置数据库，这里建一个数据库并且命名为nacos-2.3.2，再导入一些表"可能根据包版本配置比较好"，位置在https://github.com/alibaba/nacos/blob/8a136c209cddae0549933ae082415deac774e47c/config/src/main/resources/META-INF/mysql-schema.sql

再进行配置conf,init.d,logs文件夹和application.properties，在init.d/custom.properties和conf/application.properties也需要配置好，最后使用命令挂载

```cmd
docker run -d --name nacos-server-new -p 8849:8849 -p 9848:9849 -p 9849:9849 -e MODE=standalone -v /data/soft/nacos-new/logs:/home/nacos/logs -v /data/soft/nacos-new/init.d/custom.properties:/home/nacos/init.d/custom.properties -v /data/soft/nacos-new/conf:/home/nacos/conf nacos/nacos-server-new:v2.3.2
```

其实应该是8848的，但是此处使用8849，因为之前nacos还在运行

运行后发现还是无法正常启动，使用`docker logs nacos-server`查看启动日志，发现

![image-20250109210932428](img/image-20250109210932428.png)

发现还要配置nacos-logback.xml，如下

```xml
<configuration>
    <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
        <!-- 设置日志输出的目标控制台 -->
        <target>System.out</target>
        <encoder>
            <!-- 设置日志输出格式 -->
            <pattern>%d{yyyy-MM-dd HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>
        </encoder>
    </appender>

    <logger name="com.alibaba.nacos" level="INFO" additivity="false">
        <appender-ref ref="STDOUT" />
    </logger>

    <root level="INFO">
        <appender-ref ref="STDOUT" />
    </root>
</configuration>
```

记得需要UTF-8格式，使用`file -i /xxx/conf/nacos-logback.xml`查看文件格式

在使用官网的mysql建表还是会出现一个报错：
![image-20250109220845213](img/image-20250109220845213.png)

暂时不知道为什么会继续使用旧版本的config_info_aggr表，但是可以使用旧版本sql建表

```sql
CREATE TABLE `config_info_aggr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='增加租户字段';
```

至此，nacos就可以顺利运行



### nacos从1.4到2.3后，extension-configs和shared-configs一直无法生效

```yml
spring:
  application:
    name: system-api # 微服务名

  # 数据源配置，默认dev
  profiles:
    active: dev # 环境名，指定配置文件的名称

  cloud:
    nacos:
      server-addr: 192.168.101.65:8848
      discovery: # 服务注册相关配置
        namespace: kaizhi_edu
        group: kaizhi-education
      config: # 配置文件相关信息
        namespace: kaizhi_edu
        group: kaizhi-education
        # 找到自己特有配置文件
        prefix: system-api
        file-extension: yaml
        refresh-enabled: true
        extension-configs:
          # 找到引用的数据库配置文件
          - data-id: system-service-${spring.profiles.active}.yaml
            group: kaizhi-education
            refresh: true
        # 找到共享的配置文件
        shared-configs:
          - data-id: logging-${spring.profiles.active}.yaml
            group: kaizhi-education-common
            refresh: true
```

这是之前配置，但是一直无法正确导入nacos中的包，失败信息为数据库未连接，原因是system-service配置数据库url，此处未读取到

查阅资料，第一次修改尝试：

```yml
#微服务配置
spring:
  application:
    name: system-api # 微服务名

  # 数据源配置，默认dev
  profiles:
    active: dev # 环境名，指定配置文件的名称

  cloud:
    nacos:
      server-addr: 192.168.101.65:8849
      discovery:
        server-addr: 192.168.101.65:8849
        namespace: kaizhi_edu
        group: kaizhi-education
      config:
        server-addr: 192.168.101.65:8849
        namespace: kaizhi_edu
        group: kaizhi-education
        # 找到自己特有配置文件
        prefix: system-api
        file-extension: yml
        refresh-enabled: true
        extension-configs:
          # 找到引用的数据库配置文件
          - nacos:system-service-${spring.profiles.active}.yaml?group=kaizhi-education
        shared-configs:
          - nacos:logging-${spring.profiles.active}.yaml?group=kaizhi-education-common
```

无效，第二次尝试：

```yml
#微服务配置
spring:
  application:
    name: system-api # 微服务名

  # 数据源配置，默认dev
  profiles:
    active: dev # 环境名，指定配置文件的名称

  cloud:
    nacos:
      server-addr: 192.168.101.65:8848
      discovery: # 服务注册相关配置
        namespace: kaizhi_edu
        group: kaizhi-education
      config: # 配置文件相关信息
        namespace: kaizhi_edu
        group: kaizhi-education
        # 找到自己特有配置文件
        prefix: system-api
        file-extension: yaml
        refresh-enabled: true
        extension-configs[3]:
          # 找到引用的数据库配置文件
          data-id: system-service-${spring.profiles.active}.yaml
          group: kaizhi-education
          refresh: true
        # 找到共享的配置文件
        shared-configs[3]:
          data-id: logging-${spring.profiles.active}.yaml
          group: kaizhi-education-common
          refresh: true
```

无效，更多的报错，最后使用新的配置才生效，直接将所有配置一次性放到config.import

```xml
#微服务配置
spring:
  application:
    name: system-api # 微服务名

  # 数据源配置，默认dev
  profiles:
    active: dev # 环境名，指定配置文件的名称

  config:
    import:
      - nacos:system-api-${spring.profiles.active}.yaml?group=kaizhi-education&refresh=true
      - nacos:system-service-${spring.profiles.active}.yaml?group=kaizhi-education&refresh=true
      - nacos:logging-${spring.profiles.active}.yaml?group=kaizhi-education-common&refresh=true
  cloud:
    nacos:
      server-addr: 192.168.101.65:8849
      discovery:
        server-addr: 192.168.101.65:8849
        namespace: kaizhi_edu
      config:
        server-addr: 192.168.101.65:8849
        namespace: kaizhi_edu
```

奇迹般生效了

其实SpringBoot从 2.4.x 版本开始支持了导入文件的方式来加载配置参数，Nacos在SpringCloud Alibaba发布了2021.0.1.0版本后对spring.config.import做了支持，可以直接通过加载Nacos Server内指定的配置文件。其实官网也有说明这个情况：https://nacos.io/blog/faq/nacos-user-question-history15396/。只是没注意到这个信息导致调试好久才完成，也想到还能传入一个config数组。



### Spring Boot3使用Spring boot2熔断降级导致报错

spring-cloud-starter-openfeign:2.2.6.RELEASE，更新为4.4.1

之前熔断降级代码如下：

```java
import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AuthServiceFeignClientFactory implements FallbackFactory<AuthServiceFeignClient> {
    @Override
    public AuthServiceFeignClient create(Throwable throwable) {
        return (accessToken) -> {
            log.debug("调用刷新JWT令牌服务熔断异常:{}", throwable.getMessage());
            return null;
        };
    }
}
```

```java
import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AuthServiceFeignClientFactory implements FallbackFactory<AuthServiceFeignClient> {
    @Override
    public AuthServiceFeignClient create(Throwable throwable) {
        return (accessToken) -> {
            log.debug("调用刷新JWT令牌服务熔断异常:{}", throwable.getMessage());
            return null;
        };
    }
}
```

包一开始直接发生报错，无法找到`feign.hystrix.FallbackFactory;`，修改包路径和函数：

```java
import org.springframework.cloud.openfeign.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AuthServiceFeignClientFactory implements FallbackFactory<AuthServiceFeignClient> {
    @Override
    public AuthServiceFeignClient create(Throwable throwable) {
        log.debug("调用刷新JWT令牌服务熔断异常:{}", throwable.getMessage());
        return null;
    }
}
```

更新时发生报错，依赖循环

```java
Description:

The dependencies of some of the beans in the application context form a cycle:

┌─────┐
|  gatewayAuthFilter (field private com.edu.kaizhi.feignclient.AuthServiceFeignClient com.edu.kaizhi.config.GatewayAuthFilter.authServiceFeignClient)
↑     ↓
|  com.edu.kaizhi.feignclient.AuthServiceFeignClient
↑     ↓
|  corsGatewayFilterApplicationListener defined in class path resource [org/springframework/cloud/gateway/config/GatewayAutoConfiguration.class]
↑     ↓
|  routePredicateHandlerMapping defined in class path resource [org/springframework/cloud/gateway/config/GatewayAutoConfiguration.class]
↑     ↓
|  filteringWebHandler defined in class path resource [org/springframework/cloud/gateway/config/GatewayAutoConfiguration.class]
└─────┘

Action:

Relying upon circular references is discouraged and they are prohibited by default. Update your application to remove the dependency cycle between beans. As a last resort, it may be possible to break the cycle automatically by setting spring.main.allow-circular-references to true.
```

有两种方法：

1. 使用@Lazy注解，使用部分直接加入注解，这样即可解决依赖循环问题。

```java
@Autowired
@Lazy
private AuthServiceFeignClient authServiceFeignClient;
```

2. 使用懒加载解决

使用前导入使用**懒加载**，延迟依赖的初始化，从而避免循环依赖：

```java
// 懒加载authServiceFeignClient避免循环依赖
private final ObjectProvider<AuthServiceFeignClient> authServiceFeignClientProvider;

public GatewayAuthFilter(ObjectProvider<AuthServiceFeignClient> authServiceFeignClientProvider) {
    this.authServiceFeignClientProvider = authServiceFeignClientProvider;
}
// ...
// 使用时
// 从 Feign 容器中获取 AuthServiceFeignClient 实例
AuthServiceFeignClient authServiceFeignClient = authServiceFeignClientProvider.getIfAvailable();
if (authServiceFeignClient == null) {
   log.warn("AuthServiceFeignClient is unavailable");
   return buildReturnMono("Unauthorized: Service Unavailable", exchange);
}
```



### 修复ERROR-level Root logger with Console appender

报错详情：

```
WARN StatusConsoleListener The use of package scanning to locate plugins is deprecated and will be removed in a future release
WARN StatusConsoleListener No Root logger was configured, creating default ERROR-level Root logger with Console appender
```

在使用新版本nacos时，`com.alibaba.nacos.client.utils.LogUtils` 这个类内部会根据你的日志框架，去读取对应日志框架的配置文件，比如 log4j2 的 `log4j2.json`，`log4j2.xml` 等，然后去重新刷新日志配置，但是由于项目用的是 log4j2，日志配置文件为 `log4j2-dev.xml`，不在读取范围内，然后取了默认的配置 nacos-client.jar 这个jar包内的 `nacos-log4j2.xml` 配置。这个文件是没有设置 `Root` 的, 所以才有上面的提示。

所以想要解决的话：(使用 logback 类似的改法)

1. 设置属性为false

```java
System.setProperty("nacos.logging.default.config.enabled","false");
```

2. 把配置文件改为为正常的 log4j2的文件格式: 如 `log4j2.xml`。



### 去除is not eligible for getting processed by all BeanPostProcessors

```
2025-01-12 20:45:31,138 WARN [main][PostProcessorRegistrationDelegate.java:429] - Bean 'com.alibaba.cloud.nacos.NacosConfigAutoConfiguration' of type [com.alibaba.cloud.nacos.NacosConfigAutoConfiguration] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying). The currently created BeanPostProcessor [nacosAnnotationProcessor] is declared through a non-static factory method on that class; consider declaring it as static instead.
2025-01-12 20:45:31,142 WARN [main][PostProcessorRegistrationDelegate.java:437] - Bean 'nacosConfigProperties' of type [com.alibaba.cloud.nacos.NacosConfigProperties] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying). Is this bean getting eagerly injected into a currently created BeanPostProcessor [nacosAnnotationProcessor]? Check the corresponding BeanPostProcessor declaration and its dependencies.
2025-01-12 20:45:31,142 WARN [main][PostProcessorRegistrationDelegate.java:437] - Bean 'nacosConfigManager' of type [com.alibaba.cloud.nacos.NacosConfigManager] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying). Is this bean getting eagerly injected into a currently created BeanPostProcessor [nacosAnnotationProcessor]? Check the corresponding BeanPostProcessor declaration and its dependencies.
```

三个经过，其中后两个在更新spring-cloud-alibaba-dependencies包版本为2023.0.3.2后消失，最前面的一个似乎到现在都无法解决。



### 网关升级后无法转发

```
org.springframework.cloud.gateway.support.NotFoundException: 503 SERVICE_UNAVAILABLE "Unable to find instance for system-api"
	at org.springframework.cloud.gateway.support.NotFoundException.create(NotFoundException.java:45)
	at org.springframework.cloud.gateway.config.GatewayNoLoadBalancerClientAutoConfiguration$NoLoadBalancerClientFilter.filter(GatewayNoLoadBalancerClientAutoConfiguration.java:79)
	at org.springframework.cloud.gateway.handler.FilteringWebHandler$GatewayFilterAdapter.filter(FilteringWebHandler.java:147)
	at org.springframework.cloud.gateway.filter.OrderedGatewayFilter.filter(OrderedGatewayFilter.java:44)
```

这是由于缺少loadbalancer依赖，因为在`Spring Cloud 2020`版本以后，就移除了[Ribbon](https://so.csdn.net/so/search?q=Ribbon&spm=1001.2101.3001.7020)负载均衡器，官方默认推荐使用`Spring Cloud Loadbalancer`正式替换`Ribbon。`加入如下即可

```xml
<!--负载均衡器依赖-->
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-loadbalancer</artifactId>
</dependency>
```



### 网关更新依赖运行过程中产生报错java.lang.NoSuchMethodError

```
2025-01-12 22:01:34,573 ERROR [boundedElastic-3][Loggers.java:324] - Scheduler worker in group main failed with an uncaught exception
java.lang.NoSuchMethodError: 'java.util.Set org.springframework.http.HttpHeaders.headerSet()'
    at org.springframework.cloud.gateway.filter.headers.ForwardedHeadersFilter.filter(ForwardedHeadersFilter.java:99)
    at org.springframework.cloud.gateway.filter.headers.HttpHeadersFilter.filter(HttpHeadersFilter.java:38)
	at org.springframework.cloud.gateway.filter.headers.HttpHeadersFilter.filterRequest(HttpHeadersFilter.java:28)
	at org.springframework.cloud.gateway.filter.NettyRoutingFilter.filter(NettyRoutingFilter.java:125)
	at org.springframework.cloud.gateway.handler.FilteringWebHandler$GatewayFilterAdapter.filter(FilteringWebHandler.java:147)
	at org.springframework.cloud.gateway.filter.OrderedGatewayFilter.filter(OrderedGatewayFilter.java:44)
	at org.springframework.cloud.gateway.handler.FilteringWebHandler$DefaultGatewayFilterChain.lambda$filter$0(FilteringWebHandler.java:127)
...
```

问题在于Spring Cloud Gateway版本不兼容Spring Framework版本，如何定位不兼容的包：因为报错提示是 org.springframework，而产生这个报错并不是启动时候产生，而是因为使用网关路由转发时候产生的，因此可以判断这两个包或许不兼容，将spring boot对应3.2.4以及spring cloud对应2023.0.1错误消失，在官网有版本对应表：https://spring.io/projects/spring-cloud



### 使用knife4j找不到/v3/api-docs/swagger-config

原因是knife4j无法单纯使用以下依赖完成

```xml
<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-openapi3-jakarta-spring-boot-starter</artifactId>
    <version>4.4.0</version>
</dependency>
```

还必须配合**swagger-ui**一起使用

```xml
<dependency>
        <groupId>org.springdoc</groupId>
        <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
        <version>2.0.2</version>
 </dependency>
 <dependency>
        <groupId>com.github.xiaoymin</groupId>
        <artifactId>knife4j-openapi3-jakarta-spring-boot-starter</artifactId>
        <version>4.4.0</version>
</dependency>
```

最后创建配置类：

```java
@Configuration
public class Knife4jConfig {
    @Bean
    public OpenAPI springOpenAPI() {
        return new OpenAPI().info(new Info() //
                .title("SpringDoc API Test") //
                .description("SpringDoc Simple Application Test") //
                .version("0.0.1"));
    }
```





### 加入springdoc-openapi-starter-webmvc-ui依赖报错

```
java.lang.IllegalStateException: Error processing condition on org.springdoc.webmvc.ui.SwaggerConfig.springWebProvider
	at org.springframework.boot.autoconfigure.condition.SpringBootCondition.matches(SpringBootCondition.java:60)
```

在官网找到如下的版本对应关系：https://springdoc.org/#what-is-the-compatibility-matrix-of-springdoc-openapi-with-spring-boot

What is the compatibility matrix of `springdoc-openapi` with `spring-boot` ?

`springdoc-openapi 2.x` is compatible with `spring-boot 3`.

In general, **you should only pick the last stable version as per today 2.8.3.**

More precisely, this the exhaustive list of spring-boot versions against which `springdoc-openapi` has been built:

| Spring Boot Versions | Springdoc OpenAPI Versions |
| -------------------- | -------------------------- |
| `3.4.x`              | `2.7.x` - `2.8.x`          |
| `3.3.x`              | `2.6.x`                    |
| `3.2.x`              | `2.3.x` - `2.5.x`          |
| `3.1.x`              | `2.2.x`                    |
| `3.0.x`              | `2.0.x` - `2.1.x`          |
| `2.7.x`, `1.5.x`     | `1.6.0`+                   |
| `2.6.x`, `1.5.x`     | `1.6.0`+                   |
| `2.5.x`, `1.5.x`     | `1.5.9`+                   |
| `2.4.x`, `1.5.x`     | `1.5.0`+                   |
| `2.3.x`, `1.5.x`     | `1.4.0`+                   |
| `2.2.x`, `1.5.x`     | `1.2.1`+                   |
| `2.0.x`, `1.5.x`     | `1.0.0`+                   |

选择与自己项目适配版本即可解决



### 具有Nacos网关转发的springboot3微服务配置聚合knife4j 4

首先在依赖管理部分加入两个包

```xml
<knife4j.version>4.5.0</knife4j.version>
<openapi-ui.version>2.5.0</openapi-ui.version>

<!--knife4j-openapi3-->
<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-openapi3-jakarta-spring-boot-starter</artifactId>
    <version>${knife4j.version}</version>
    <exclusions>
        <exclusion>
            <groupId>org.projectlombok</groupId>
            <artifactId>lombok</artifactId>
        </exclusion>
    </exclusions>
</dependency>
<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-gateway-spring-boot-starter</artifactId>
    <version>${knife4j.version}</version>
    <exclusions>
        <exclusion>
            <groupId>org.projectlombok</groupId>
            <artifactId>lombok</artifactId>
        </exclusion>
    </exclusions>
</dependency>
<!--knife4j-openapi3必须配合swagger-ui一起使用-->
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
    <version>${openapi-ui.version}</version>
</dependency>
```

之后，在每个服务子包下加入

```xml
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
</dependency>
```

这个子包加入是为了让"找不到/v3/api-docs/swagger-config"警告消除

之后在gateway依赖加入

```xml
<!--Knife4j 网关聚合-->
<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-gateway-spring-boot-starter</artifactId>
</dependency>
<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-openapi3-jakarta-spring-boot-starter</artifactId>
</dependency>
<!--knife4j-openapi3必须配合swagger-ui一起使用-->
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
</dependency>
```

并且使用配置

```yml
config:
  import:
    # 找到自己特有配置文件
    - nacos:gateway-${spring.profiles.active}.yaml?group=kaizhi-education&refresh=true
```

在nacos的配置为

```yaml
server:
  port: 63010 # 网关端口
spring:
  cloud:
    gateway:
      routes: # 网关路由配置
        - id: content-api # 路由id，自定义，只要唯一即可
          # uri: http://127.0.0.1:8081 # 路由的目标地址 http就是固定地址
          uri: lb://content-api # 路由的目标地址 lb就是负载均衡，后面跟服务名称
          predicates: # 路由断言，也就是判断请求是否符合路由规则的条件
            - Path=/content/** # 这个是按照路径匹配，只要以/content/开头就符合要求
        - id: system-api
          uri: lb://system-api
          predicates:
            - Path=/system/**
        
knife4j:
  gateway:
    # 第一个配置，开启gateway聚合组件
    enabled: true
    # 指定服务发现的模式聚合微服务文档，并且是默认`default`分组
    strategy: discover
    discover:
      # 第三行配置，开启discover模式
      enabled: true
      # 指定版本号(Swagger2|OpenAPI3)
      version : openapi3
      # 需要排除的微服务
      excluded-services:
        - gateway
```

最后在gateway的config下加入两个配置

```java
@Configuration
@Slf4j
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        log.info("设置静态资源映射...");
        // 添加静态资源映射规则
        registry.addResourceHandler("/static/**").
                addResourceLocations("classpath:/static/");
        // 配置 knife4j 的静态资源请求映射地址
        registry.addResourceHandler("/doc.html")
                .addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/");
    }
}
```

```java
@Configuration
@Slf4j
public class Knife4jConfig {
    /**
     * 配置基本信息
     */
    @Bean
    public OpenAPI openAPI() {
        return new OpenAPI()
                .info(new Info()
                        // 标题
                        .title("平台接口文档")
                        // 描述Api接口文档的基本信息
                        .description("Knife4j后端接口服务...")
                        // 版本
                        .version("v1.0.0")
                        // 设置OpenAPI文档的联系信息，姓名，邮箱。
                        .contact(new Contact().name(""))
                        // 设置OpenAPI文档的许可证信息，包括许可证名称为"Apache 2.0"，许可证URL为"http://springdoc.org"。
                        .license(new License().name("Apache 2.0").url("http://springdoc.org"))
                );
    }
}
```

即可大功告成

![image-20250113230111860](img/image-20250113230111860.png)



## 前端

### 在dialog组件中加入upload使得图片第一次不回显，只有点击别的才能回显

其实正确问题描述是：关于element组件库dialog弹窗首次渲染不加载dom

遇到这个问题是因为需要在dialog弹出图片，图片是动态赋值的，赋值过程都没问题，显示也正常。但是刷新后第一次打开图片是显示不出来的。查阅了一下原来是因为dialog首次不加载dom的原因导致，在vue3中不推荐使用nextTick方法，没有效果。最后解决方案是：

```ts
private handleEdit(data: ITeacherList) {
  this.isDialogVisible = true
  // 先清空表单，再赋值，才使得图片显示
  let form = this.$refs.dialog as SaveTeacherDialog
  setTimeout(() => {
    if(form){
      form.restForm()
    }
    this.teacherData = {...data}
  }, 200)
}
```



### 使用Element级联选择器选择任意一级一直不起作用

找到element对应js和css文件，更新为最新版本文件，同时更新tff和woff使得图标生效



### 翻页控制:total="listxxx.counts"因为是字符串不起作用

找到产生类似listData的函数，包装为`this.listData.counts = Number(this.listData.counts)`
