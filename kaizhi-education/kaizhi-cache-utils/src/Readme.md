# @ExpirableCacheable自定义派生@Cacheable注解实现原理

## 加入注解定义

```java
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Inherited
@DocumentedkeyGenerator
@Cacheable(cacheManager = CacheConstant.CUSTOM_CACHE_MANAGER,keyGenerator = CacheConstant.CUSTOM_CACHE_KEY_GENERATOR)
public @interface ExpirableCacheable {

    @AliasFor(annotation = Cacheable.class,attribute = "value")
    String[] value() default {};

    @AliasFor(annotation = Cacheable.class,attribute = "cacheNames")
    String[] cacheNames() default {};

    @AliasFor(annotation = Cacheable.class,attribute = "key")
    String key() default "";

    @AliasFor(annotation = Cacheable.class,attribute = "keyGenerator")
    String keyGenerator() default "";

    @AliasFor(annotation = Cacheable.class,attribute = "cacheResolver")
    String cacheResolver() default "";

    @AliasFor(annotation = Cacheable.class,attribute = "condition")
    String condition() default "";

    @AliasFor(annotation = Cacheable.class,attribute = "unless")
    String unless() default "";

    @AliasFor(annotation = Cacheable.class,attribute = "sync")
    boolean sync() default false;

    // 指定缓存的过期时间，以秒为单位。默认为 -1，表示不过期。
    long expiredTimeSecond() default -1;

    // 指定缓存即将到期自动刷新功能，以秒为单位。默认为 -1，表示不预加载。
    long preLoadTimeSecond() default -1;

    // 是否当日缓存
    boolean dailyCache() default false;

    // 是否自动刷新当日缓存
    boolean autoRefreshDailyCache() default false;
}
```

首先@ExpirableCacheable继承@Cacheable所有属性外，新增expiredTimeSecond缓存过期时间，缓存自动刷新时间preLoadTimeSecond，是否当日缓存dailyCache和是否自动刷新当日缓存autoRefreshDailyCache四个属性，并且指定了自定义的 cacheManager 和 keyGenerator



## 自定义缓存管理器

自定义缓存管理器并继承RedisCacheManager并重写loadCaches和createRedisCache

```java
public class CustomizedRedisCacheManager extends RedisCacheManager implements BeanFactoryAware {

    @Getter
    private Map<String, RedisCacheConfiguration> initialCacheConfigurations; // 保存初始缓存配置的映射（缓存名 -> 缓存配置）

    @Getter
    private RedisTemplate cacheRedisTemplate; // 存储 RedisTemplate 实例，用于与 Redis 进行操作

    private RedisCacheWriter cacheWriter; // 负责与 Redis 进行低级缓存读写操作的对象

    private DefaultListableBeanFactory beanFactory;

    @Getter
    private RedisCacheConfiguration defaultCacheConfiguration; // 存储 Redis 的默认缓存配置

    @Getter
    protected CachedInvocation cachedInvocation; // 保存缓存的调用信息

    public CustomizedRedisCacheManager(RedisCacheWriter cacheWriter, RedisCacheConfiguration defaultCacheConfiguration,
                                       Map<String, RedisCacheConfiguration> initialCacheConfigurations, RedisTemplate cacheRedisTemplate) {
        super(cacheWriter, defaultCacheConfiguration, initialCacheConfigurations);
        this.cacheWriter = cacheWriter;
        this.defaultCacheConfiguration = defaultCacheConfiguration;
        this.initialCacheConfigurations = initialCacheConfigurations;
        this.cacheRedisTemplate = cacheRedisTemplate;
    }

    @Override
    protected Collection<RedisCache> loadCaches() {
        List<RedisCache> caches = new LinkedList<>();
        for (Map.Entry<String, RedisCacheConfiguration> entry : getInitialCacheConfigurations().entrySet()) {
            caches.add(createRedisCache(entry.getKey(), entry.getValue()));
        }
        return caches;
    }

    // 创建了一个 CustomizedRedisCache 对象
    @Override
    public RedisCache createRedisCache(String name, @Nullable RedisCacheConfiguration cacheConfig) {
        return new CustomizedRedisCache(name, cacheWriter, cacheConfig != null ? cacheConfig : defaultCacheConfiguration);
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = (DefaultListableBeanFactory) beanFactory;
    }


    // 当事件被触发时，该方法会被调用，并将 cachedInvocation 存储在类的 cachedInvocation 字段中。
    @EventListener
    private void doWithCachedInvocationEvent(CachedInvocation cachedInvocation) {
        this.cachedInvocation = cachedInvocation;
    }
}
```

SpringCache包含两个顶级接口，Cache和CacheManager，通过CacheManager可以去管理一堆Cache。因此要扩展@Cacheable，就脱离不了对Cache和CacheManager进行扩展

- `initialCacheConfigurations`：这个映射保存了每个缓存名称对应的初始缓存配置，允许创建缓存时应用特定的配置。
- `cacheRedisTemplate`：这是 `RedisTemplate` 的实例，用于与Redis进行交互。可以使用它来执行自定义的缓存操作。
- `cacheWriter`：`RedisCacheWriter` 负责执行底层的Redis读写操作。通过自定义 `cacheWriter`，可以控制缓存的存储行为。
- `doWithCachedInvocationEvent` 方法：这个方法通过监听特定事件来更新 `cachedInvocation` 字段。这可以用于缓存相关的元数据处理，例如自动刷新缓存。

继承这个管理器，一方面，保存每个缓存名称对应缓存时间，另一方面，当缓存刷新时，事件会被触发刷新管理器内容，最后还能将RedisCache设置为自定义的RedisCache，



## 重新初始化缓存

在spring bean初始化完成后，设置缓存过期时间，并重新初始化缓存

```java
@Component
@Slf4j
public class CacheExpireTimeInit implements SmartInitializingSingleton, BeanFactoryAware {
    
    private DefaultListableBeanFactory beanFactory;

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = (DefaultListableBeanFactory)beanFactory;
    }

    @Override
    public void afterSingletonsInstantiated() {
        Map<String, Object> beansWithAnnotation = beanFactory.getBeansWithAnnotation(Component.class);
        if(MapUtil.isNotEmpty(beansWithAnnotation)){
            for (Object cacheValue : beansWithAnnotation.values()) {
                ReflectionUtils.doWithMethods(cacheValue.getClass(), method -> {
                    if (!method.getName().equals("finalize") &&
                        !Modifier.isPrivate(method.getModifiers()) &&
                        !Modifier.isNative(method.getModifiers())) {
                        ReflectionUtils.makeAccessible(method);
                        boolean cacheAnnotationPresent = method.isAnnotationPresent(ExpirableCacheable.class);
                        if (cacheAnnotationPresent) {
                            ExpirableCacheable expirableCacheable = method.getAnnotation(ExpirableCacheable.class);
                            CacheHelper.initExpireTime(expirableCacheable);
                        }
                    }
                });
            }
            // 官方文档表明可以在运行时重新初始化缓存，这里重新初始化缓存主要为了设置过期时间。
            CacheHelper.initializeCaches();
        }
    }

}
```

主要作用是在所有单例 bean 被初始化之后，但在它们被初始化完成之前被调用该主要函数，作用是在 Spring 应用程序启动时，动态地读取自定义 `@ExpirableCacheable` 注解的配置，并为相应的缓存设置过期时间。这允许开发者在代码中声明缓存配置，而不是在配置文件中。

## 设置自动配置部分

```java
@Configuration
@Import(SpringUtil.class)
@ComponentScan(basePackages = "com.edu.kaizhi.cacheable")
@EnableCaching
public class CustomizedRedisAutoConfiguration {

    @Bean(REDISTEMPLATE_BEAN_NAME)
    public RedisTemplate<String, Object> cacheRedisTemplate(RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<String, Object> template = new RedisTemplate<>();
        template.setConnectionFactory(redisConnectionFactory);

        StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
        template.setKeySerializer(stringRedisSerializer);
        template.setHashKeySerializer(stringRedisSerializer);
        template.setValueSerializer(jackson2JsonRedisSerializer());
        template.setHashValueSerializer(jackson2JsonRedisSerializer());
        template.afterPropertiesSet();
        return template;
    }

    @Bean(CUSTOM_CACHE_MANAGER)
    @Primary
    public CustomizedRedisCacheManager customizedCacheManager(RedisConnectionFactory connectionFactory, RedisTemplate cacheRedisTemplate) {
        RedisCacheWriter redisCacheWriter = RedisCacheWriter.nonLockingRedisCacheWriter(connectionFactory);
        RedisCacheConfiguration defaultCacheConfig = RedisCacheConfiguration.defaultCacheConfig()
                .entryTtl(Duration.ofMinutes(30L));

        defaultCacheConfig = defaultCacheConfig
                .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(StringRedisSerializer.UTF_8))
                .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(genericJackson2JsonRedisSerializer()))
                .disableCachingNullValues();
        Map<String, RedisCacheConfiguration> initialCacheConfiguration = new HashMap<>();
        return new CustomizedRedisCacheManager(redisCacheWriter, defaultCacheConfig, initialCacheConfiguration, cacheRedisTemplate);
    }

    @Bean(CUSTOM_CACHE_KEY_GENERATOR)
    public KeyGenerator keyGenerator() {
        return new SimpleKeyGenerator();
    }

    private Jackson2JsonRedisSerializer jackson2JsonRedisSerializer() {
        Jackson2JsonRedisSerializer jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer(Object.class);
        ObjectMapper om = new ObjectMapper();
        om.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
        om.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);
        jackson2JsonRedisSerializer.setObjectMapper(om);
        return jackson2JsonRedisSerializer;
    }

    private GenericJackson2JsonRedisSerializer genericJackson2JsonRedisSerializer() {
        ObjectMapper objectMapper = new ObjectMapper()
                .registerModule(new JavaTimeModule()).setTimeZone(TimeZone.getDefault());
        objectMapper.activateDefaultTyping(
                objectMapper.getPolymorphicTypeValidator(), ObjectMapper.DefaultTyping.NON_FINAL, JsonTypeInfo.As.PROPERTY);
        return new GenericJackson2JsonRedisSerializer(objectMapper);
    }
}
```

主要目的是将默认的缓存管理器改成我们自定义的缓存管理器



## AOP切面构建事件信息

```java
@Component
@Aspect
@Slf4j
@Order(100)
public class ExpirableCacheablePreLoadAspect {

    @Autowired
    private ApplicationContext applicationContext; // 用于后续发布事件（即缓存预加载的元数据信息）


    @SneakyThrows
    @Around(value = "@annotation(expirableCacheable)")
    public Object around(ProceedingJoinPoint proceedingJoinPoint, ExpirableCacheable expirableCacheable) {
        buildCachedInvocationAndPushlish(proceedingJoinPoint, expirableCacheable);
        return proceedingJoinPoint.proceed();
    }

    private void buildCachedInvocationAndPushlish(ProceedingJoinPoint proceedingJoinPoint, ExpirableCacheable expirableCacheable) {
        Method method = this.getSpecificmethod(proceedingJoinPoint);
        String[] cacheNames = getCacheNames(expirableCacheable);
        Object targetBean = proceedingJoinPoint.getTarget();
        Object[] arguments = proceedingJoinPoint.getArgs();
        KeyGenerator keyGenerator = SpringUtil.getBean(CacheConstant.CUSTOM_CACHE_KEY_GENERATOR, KeyGenerator.class);
        Object key = keyGenerator.generate(targetBean, method, arguments);
        CachedInvocation cachedInvocation = CachedInvocation.builder()
                .arguments(arguments)
                .targetBean(targetBean)
                .targetMethod(method)
                .metaData(CacheMetaData.builder()
                        .cacheNames(cacheNames)
                        .key(key)
                        .expiredTimeSecond(expirableCacheable.expiredTimeSecond())
                        .preLoadTimeSecond(expirableCacheable.preLoadTimeSecond())
                        .dailyCache(expirableCacheable.dailyCache())
                        .autoRefreshDailyCache(expirableCacheable.autoRefreshDailyCache())
                        .build()
                )
                .build();
        applicationContext.publishEvent(cachedInvocation);
    }

    private Method getSpecificmethod(ProceedingJoinPoint pjp) {
        MethodSignature methodSignature = (MethodSignature) pjp.getSignature();
        Method method = methodSignature.getMethod();

        Class<?> targetClass = AopProxyUtils.ultimateTargetClass(pjp.getTarget());
        if (targetClass == null && pjp.getTarget() != null) {
            targetClass = pjp.getTarget().getClass();
        }
        Method specificMethod = ClassUtils.getMostSpecificMethod(method, targetClass);
        specificMethod = BridgeMethodResolver.findBridgedMethod(specificMethod);
        return specificMethod;
    }

}
```

- 负责构建 `CachedInvocation` 对象，该对象包含了缓存调用的详细信息，如目标 Bean、方法、参数、缓存名称、过期时间等。
- 使用 `KeyGenerator` 生成缓存键。
- 构建完成后，通过 `applicationContext.publishEvent` 方法发布一个事件，这样其他监听器可以对这个事件做出响应。

主要用于**缓存预加载**:

- 在执行被 `@ExpirableCacheable` 注解标记的方法之前，构建缓存调用的元数据，并将其发布为一个事件。
- 这样可以允许其他组件监听这个事件，并根据提供的元数据进行缓存预加载或其他相关操作。



## 自定义RedisCache缓存

```java
@Slf4j
public class CustomizedRedisCache extends RedisCache {
    private ReentrantLock lock = new ReentrantLock();

    public CustomizedRedisCache(String name, RedisCacheWriter cacheWriter, RedisCacheConfiguration cacheConfig) {
        super(name, cacheWriter, cacheConfig);
    }

    @Override
    @Nullable
    public ValueWrapper get(Object key) {
        ValueWrapper valueWrapper = super.get(key);
        CachedInvocation cachedInvocation = CacheHelper.getCacheManager().getCachedInvocation();
        long preLoadTimeSecond = -1;
        boolean isAutoRefreshDailyCache = false;
        if (ObjectUtil.isNotEmpty(cachedInvocation)) {
            CacheMetaData metaData = cachedInvocation.getMetaData();
            preLoadTimeSecond = metaData.getPreLoadTimeSecond();
            String name = this.getName();
            String[] cacheNames = metaData.getCacheNames();
            for (String cacheName : cacheNames) {
                if (name.equals(cacheName) && metaData.isDailyCache()) {
                    preLoadTimeSecond = -1;
                    if (metaData.isAutoRefreshDailyCache()) {
                        preLoadTimeSecond = DAILY_CACHE_AUTO_REFRESH_PRELOAD_TIME;
                        isAutoRefreshDailyCache = true;
                    }
                    break;
                }
            }

        }
        final Boolean dailyRefreshCache = isAutoRefreshDailyCache;
        if (ObjectUtil.isNotEmpty(valueWrapper) && preLoadTimeSecond > 0) {
            String cacheKey = createCacheKey(key);
            RedisTemplate cacheRedisTemplate = CacheHelper.getCacheManager().getCacheRedisTemplate();
            Long ttl = cacheRedisTemplate.getExpire(cacheKey, TimeUnit.SECONDS);
            if (ObjectUtil.isNotEmpty(ttl) && ttl <= preLoadTimeSecond) {
                log.info("缓存刷新中...");
                log.info("cacheKey：{}, ttl: {}, preLoadTimeSecond: {}", cacheKey, ttl, preLoadTimeSecond);
                ThreadPoolUtils.execute(() -> {
                    lock.lock();
                    try {
                        CacheHelper.refreshCache(super.getName(), key, cacheKey, dailyRefreshCache);
                    } catch (Exception e) {
                        log.error(e.getMessage());
                    } finally {
                        lock.unlock();
                    }
                });
            }

        }
        return valueWrapper;
    }

}
```

自定义RedisCache使得从Redis获取时，判断是否需要进行刷新缓存。如果需要则放入线程池执行，防止阻塞当前进程



## 核心类CacheHelper

```java
@Slf4j
public final class CacheHelper {


    public static CustomizedRedisCacheManager getCacheManager() {
        return SpringUtil.getBean(CacheConstant.CUSTOM_CACHE_MANAGER, CustomizedRedisCacheManager.class);
    }


    public static void initExpireTime(ExpirableCacheable expirableCacheable) {
        String[] cacheNames = getCacheNames(expirableCacheable);

        if (ArrayUtil.isNotEmpty(cacheNames)) {
            CustomizedRedisCacheManager customizedRedisCacheManager = getCacheManager();
            if(customizedRedisCacheManager == null){
                log.error("CustomizedRedisCacheManager is null");
                return;
            }
            Map<String, RedisCacheConfiguration> initialCacheConfigurations = customizedRedisCacheManager.getInitialCacheConfigurations();
            RedisCacheConfiguration defaultCacheConfiguration = customizedRedisCacheManager.getDefaultCacheConfiguration();
            for (String cacheName : cacheNames) {
                long expireTime = expirableCacheable.expiredTimeSecond();
                if(expirableCacheable.dailyCache()){
                    LocalDateTime now = LocalDateTime.now();
                    LocalDateTime midnight = now.plusDays(1).withHour(0).withMinute(0).withSecond(0).withNano(0);
                    expireTime = ChronoUnit.SECONDS.between(now, midnight);
                }
                RedisCacheConfiguration redisCacheConfiguration = defaultCacheConfiguration.entryTtl(Duration.ofSeconds(expireTime));
                initialCacheConfigurations.put(cacheName, redisCacheConfiguration);
            }

        }
    }


    public static void initializeCaches() {
        getCacheManager().initializeCaches();
        log.info("初始化带有过期时间自定义Cacheable...");
    }


    public static String[] getCacheNames(ExpirableCacheable expirableCacheable) {
        String[] cacheNames = expirableCacheable.cacheNames();
        if (ArrayUtil.isEmpty(cacheNames)) {
            cacheNames = expirableCacheable.value();
        }
        return cacheNames;
    }

   
    public static void refreshCache(String cacheName, Object key, String cacheFullName, Boolean dailyRefreshCache) {
        boolean isMatchCacheName = isMatchCacheName(cacheName);
        if (isMatchCacheName) {
            CachedInvocation cachedInvocation = getCacheManager().getCachedInvocation();
            boolean invocationSuccess; // 标识方法调用是否成功
            Object computed = null;
            try {
                computed = cachedInvocation.invoke();
                invocationSuccess = true;
            } catch (Exception ex) {
                invocationSuccess = false;
                log.error("更新缓存失败: {}", ex.getMessage());
            }

            if (invocationSuccess) {
                Cache cache = getCacheManager().getCache(cacheName);
                if (ObjectUtil.isNotEmpty(cache)) {
                   Object cacheKey = cachedInvocation.getMetaData().getKey();
                    if(cacheKey instanceof SimpleKey){
                        cacheKey = key;
                    }
                    if (cache != null) {
                        cache.put(cacheKey, computed);
                    }
                    if(dailyRefreshCache){
                        RedisTemplate cacheRedisTemplate = CacheHelper.getCacheManager().getCacheRedisTemplate();

                        LocalDateTime now = LocalDateTime.now();
                        // 获取后日的凌晨00:00
                        LocalDateTime midnight = now.plusDays(2).withHour(0).withMinute(0).withSecond(0).withNano(0);
                        Long newTtlInSeconds = ChronoUnit.SECONDS.between(now, midnight);
                        cacheRedisTemplate.expire(cacheFullName, newTtlInSeconds, TimeUnit.SECONDS);
                    }
                    log.info("更新缓存成功，name: {}，key:{}", cacheName, cacheKey);
                }
            }
        }

    }


    private static boolean isMatchCacheName(String cacheName) {
        CachedInvocation cachedInvocation = getCacheManager().getCachedInvocation();
        if (ObjectUtil.isEmpty(cachedInvocation)) {
            log.warn("CachedInvocation为空");
            return false;
        }
        CacheMetaData metaData = cachedInvocation.getMetaData();
        for (String name : metaData.getCacheNames())
            if (name.equals(cacheName))
                return true;
        return true;
    }
}
```

### 设置过期时间

- **initExpireTime**根据提供的 `ExpirableCacheable` 注解信息，初始化缓存的过期时间。如果注解指定了 `dailyCache` 为 `true`，则缓存会在当天结束时过期。更新缓存配置，将新的过期时间设置到每个指定名称的缓存配置中。
- **initializeCaches**调用父类方法初始化所有缓存，确保它们根据配置设置过期时间。

### 设置缓存刷新

- **refreshCache**刷新指定名称的缓存。如果缓存名称匹配，则调用缓存的方法，获取新的值，并将其放入缓存。如果 `dailyRefreshCache` 为 `true`，则设置缓存的新过期时间为次日的凌晨。