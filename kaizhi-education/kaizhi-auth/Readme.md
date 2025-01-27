# Auth微服务流程

## Security 5.3.6做法

### 原理部分

Spring Security所解决的问题就是**安全访问控制**，而安全访问控制功能其实就是对所有进入系统的请求进行拦截，校验每个请求是否能够访问它所期望的资源。根据前边知识的学习，可以通过Filter或AOP等技术来实现，Spring Security对Web资源的保护是靠Filter实现的，所以从这个Filter来入手，逐步深入Spring Security原理。

当初始化Spring Security时，会创建一个名为SpringSecurityFilterChain的Servlet过滤器，类型为 org.springframework.security.web.FilterChainProxy，它实现了javax.servlet.Filter，因此外部的请求会经过此类，下图是Spring Security过虑器链结构图：

![image-20250119172021671](img/image-20250119172021671.png)

FilterChainProxy是一个代理，真正起作用的是FilterChainProxy中SecurityFilterChain所包含的各个Filter，同时这些Filter作为Bean被Spring管理，它们是Spring Security核心，各有各的职责，但他们并不直接处理用户的**认证**，也不直接处理用户的**授权**，而是把它们交给了认证管理器（AuthenticationManager）和决策管理器（AccessDecisionManager）进行处理。

spring Security功能的实现主要是由一系列过滤器链相互配合完成。

![image-20250119172057831](img/image-20250119172057831.png)

过滤器链中主要的几个过滤器及其作用：

**SecurityContextPersistenceFilter** 这个Filter是整个拦截过程的入口和出口（也就是第一个和最后一个拦截器），会在请求开始时从配置好的 SecurityContextRepository 中获取 SecurityContext，然后把它设置给 SecurityContextHolder。在请求完成后将 SecurityContextHolder 持有的 SecurityContext 再保存到配置好的 SecurityContextRepository，同时清除 securityContextHolder 所持有的 SecurityContext；

**UsernamePasswordAuthenticationFilter** 用于处理来自表单提交的认证。该表单必须提供对应的用户名和密码，其内部还有登录成功或失败后进行处理的 AuthenticationSuccessHandler 和 AuthenticationFailureHandler，这些都可以根据需求做相关改变；

**FilterSecurityInterceptor** 是用于保护web资源的，使用AccessDecisionManager对当前用户进行授权访问，前面已经详细介绍过了；

**ExceptionTranslationFilter** 能够捕获来自 FilterChain 所有的异常，并进行处理。但是它只会处理两类异常：AuthenticationException 和 AccessDeniedException，其它的异常它会继续抛出。

![流程](img/流程.png)

1. 用户提交用户名、密码被SecurityFilterChain中的UsernamePasswordAuthenticationFilter过滤器获取到，封装为请求Authentication，通常情况下是UsernamePasswordAuthenticationToken这个实现类。
2. 然后过滤器将Authentication提交至认证管理器（AuthenticationManager）进行认证
3. 认证成功后，AuthenticationManager身份管理器返回一个被填充满了信息的（包括上面提到的权限信息，身份信息，细节信息，但密码通常会被移除）Authentication实例。
4. SecurityContextHolder安全上下文容器将第3步填充了信息的Authentication，通过SecurityContextHolder.getContext().setAuthentication(…)方法，设置到其中。
5. 可以看出AuthenticationManager接口（认证管理器）是认证相关的核心接口，也是发起认证的出发点，它的实现类为ProviderManager。而Spring Security支持多种认证方式，因此ProviderManager维护着一个List\<AuthenticationProvider\>列表，存放多种认证方式，最终实际的认证工作是由AuthenticationProvider完成的。咱们知道web表单的对应的AuthenticationProvider实现类为DaoAuthenticationProvider，它的内部又维护着一个UserDetailsService负责UserDetails的获取。最终AuthenticationProvider将UserDetails填充至Authentication。



JWT

**2.4.1** **普通令牌的问题**

客户端申请到令牌，接下来客户端携带令牌去访问资源，到资源服务器将会校验令牌的合法性。

资源服务器如何校验令牌的合法性？

我们以OAuth2的密码模式为例进行说明：

![img](img/clip_image002.gif)

从第4步开始说明：

1、客户端携带令牌访问资源服务获取资源。

2、资源服务远程请求认证服务校验令牌的合法性

3、如果令牌合法资源服务向客户端返回资源。

这里存在一个问题：

就是校验令牌需要远程请求认证服务，客户端的每次访问都会远程校验，执行性能低。

如果能够让资源服务自己校验令牌的合法性将省去远程请求认证服务的成本，提高了性能。如下图：

![img](img/clip_image004.gif)

如何解决上边的问题，实现资源服务自行校验令牌。

令牌采用JWT格式即可解决上边的问题，用户认证通过后会得到一个JWT令牌，JWT令牌中已经包括了用户相关的信息，客户端只需要携带JWT访问资源服务，资源服务根据事先约定的算法自行完成令牌校验，无需每次都请求认证服务完成授权。

 

什么是JWT

JSON Web Token（JWT）是一种使用JSON格式传递数据的网络令牌技术，它是一个开放的行业标准（RFC 7519），它定义了一种简洁的、自包含的协议格式，用于在通信双方传递json对象，传递的信息经过数字签名可以被验证和信任，它可以使用HMAC算法或使用RSA的公钥/私钥对来签名，防止内容篡改。官网：https://jwt.io/

使用JWT可以实现无状态认证，什么是无状态认证？

传统的基于session的方式是有状态认证，用户登录成功将用户的身份信息存储在服务端，这样加大了服务端的存储压力，并且这种方式不适合在分布式系统中应用。

如下图，当用户访问应用服务，每个应用服务都会去服务器查看session信息，如果session中没有该用户则说明用户没有登录，此时就会重新认证，而解决这个问题的方法是Session复制、Session黏贴。

![img](img/clip_image006.gif)

如果是基于令牌技术在分布式系统中实现认证则服务端不用存储session，可以将用户身份信息存储在令牌中，用户认证通过后认证服务颁发令牌给用户，用户将令牌存储在客户端，去访问应用服务时携带令牌去访问，服务端从jwt解析出用户信息。这个过程就是无状态认证。

![img](img/clip_image008.gif)

 

 

JWT令牌的优点：

1、jwt基于json，非常方便解析。

2、可以在令牌中自定义丰富的内容，易扩展。

3、通过非对称加密算法及数字签名技术，JWT防止篡改，安全性高。

4、资源服务使用JWT可不依赖认证服务即可完成授权。

缺点：

１、JWT令牌较长，占存储空间比较大。

下边是一个JWT令牌的示例：

```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicmVzMSJdLCJ1c2VyX25hbWUiOiJ6aGFuZ3NhbiIsInNjb3BlIjpbImFsbCJdLCJleHAiOjE2NjQyNTQ2NzIsImF1dGhvcml0aWVzIjpbInAxIl0sImp0aSI6Ijg4OTEyYjJkLTVkMDUtNGMxNC1iYmMzLWZkZTk5NzdmZWJjNiIsImNsaWVudF9pZCI6ImMxIn0.wkDBL7roLrvdBG2oGnXeoXq-zZRgE9IVV2nxd-ez_oA  
```

JWT令牌由三部分组成，每部分中间使用点（.）分隔，比如：xxxxx.yyyyy.zzzzz

1. Header    

 头部包括令牌的类型（即JWT）及使用的哈希算法（如HMAC SHA256或RSA）

 一个例子如下：

 下边是Header部分的内容

```json
{
    "alg": "HS256",
    "typ": "JWT"
}
```



 将上边的内容使用Base64Url编码，得到一个字符串就是JWT令牌的第一部分。

2. Payload

 第二部分是负载，内容也是一个json对象，它是存放有效信息的地方，它可以存放jwt提供的信息字段，比如：iss（签发者）,exp（过期时间戳）, sub（面向的用户）等，也可自定义字段。

 此部分不建议存放敏感信息，因为此部分可以解码还原原始内容。

 最后将第二部分负载使用Base64Url编码，得到一个字符串就是JWT令牌的第二部分。

 一个例子：

```json
{
    "sub": "1234567890",
    "name": "456",
    "admin": true
}
```

3. Signature

 第三部分是签名，此部分用于防止jwt内容被篡改。

 这个部分使用base64url将前两部分进行编码，编码后使用点（.）连接组成字符串，最后使用header中声明的签名算法进行签名。

 一个例子：

```json
  HMACSHA256(
    base64UrlEncode(header) + "." +
    base64UrlEncode(payload),
    secret)
```



base64UrlEncode(header)：jwt令牌的第一部分。

base64UrlEncode(payload)：jwt令牌的第二部分。

secret：签名所使用的密钥。

为什么JWT可以防止篡改？

第三部分使用签名算法对第一部分和第二部分的内容进行签名，常用的签名算法是 HS256，常见的还有md5,sha 等，签名算法需要使用密钥进行签名，密钥不对外公开，并且签名是不可逆的，如果第三方更改了内容那么服务器验证签名就会失败，要想保证验证签名正确必须保证内容、密钥与签名前一致。

 ![image-20250120105728901](img/image-20250120105728901.png)

从上图可以看出认证服务和资源服务使用相同的密钥，这叫对称加密，对称加密效率高，如果一旦密钥泄露可以伪造jwt令牌。

JWT还可以使用非对称加密，认证服务自己保留私钥，将公钥下发给受信任的客户端、资源服务，公钥和私钥是配对的，成对的公钥和私钥才可以正常加密和解密，非对称加密效率低但相比对称加密非对称加密更安全一些。

以上介绍来自学成在线项目内容介绍，有些针对的是Security 5.3.6



### 对应依赖包

```xml
<java.version>1.8</java.version>
<spring-boot.version>2.3.7.RELEASE</spring-boot.version>
<spring-cloud.version>Hoxton.SR9</spring-cloud.version>

<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-dependencies</artifactId>
    <version>${spring-cloud.version}</version>
    <type>pom</type>
    <scope>import</scope>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-dependencies</artifactId>
    <version>${spring-boot.version}</version>
    <type>pom</type>
    <scope>import</scope>
</dependency>
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-security</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-oauth2</artifactId>
</dependency>
```



### Auth部分生成Token

#### 微信登录部分

自定义用户实体类

```java
@Data
@TableName("xxx_user")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    private String username;

    private String password;

    private String salt;

    private String name;
    
    private String nickname;
    
    private String wxUnionid;
    
    private String companyId;
    /**
     * 头像
     */
    private String userpic;

    private String utype;

    private LocalDateTime birthday;

    private String sex;

    private String email;

    private String cellphone;

    private String qq;

    /**
     * 用户状态
     */
    private String status;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;
}
```

自定义用户权限实体类

```java
@EqualsAndHashCode(callSuper = true)
@Data
public class UserExt extends User {
    //用户权限
    List<String> permissions = new ArrayList<>();
}
```

controller层

```java
@RequestMapping("/wxLogin")
public String wxLogin(String code, String state) throws IOException {
    log.debug("微信扫码回调, code:{}, state:{}", code, state);
    // 请求微信申请令牌，拿到令牌查询用户信息，将用户信息写入本项目数据库
    User user = wxAuthService.wxAuth(code);

    if (user == null) {
        return "redirect:http://www.xxx.edu.cn/error.html";
    }

    return "redirect:http://www.xxx.edu.cn/sign.html?username=" + user.getUsername() + "&authType=wx";
}
```

service层

```java
@Slf4j
@Service("wxAuthService")
public class WxAuthServiceImpl implements AuthService, WxAuthService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    UserRoleMapper userRoleMapper;

    @Autowired
    WxAuthServiceImpl currentProxy;

    @Value("${weixin.appid}")
    String appid;
    @Value("${weixin.secret}")
    String secret;

    // @Autowired
    // PasswordEncoder passwordEncoder;

    public UserExt execute(AuthParamsDto authParamsDto) {
        //账号
        String username = authParamsDto.getUsername();
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if (user == null) {
            // 用户不存在
            throw new RuntimeException("账号不存在");
        }
        UserExt userExt = new UserExt();
        BeanUtils.copyProperties(user, userExt);
        return userExt;
    }

    // 微信扫码认证
    @Override
    public User wxAuth(String code) {
        // 申请令牌
        Map<String, String> access_token_map = getAccess_token(code);
        if (access_token_map == null) {
            return null;
        }
        System.out.println(access_token_map);
        String openid = access_token_map.get("openid");
        String access_token = access_token_map.get("access_token");
        // 携带令牌查询用户
        Map<String, String> userinfo = getUserinfo(access_token, openid);
        if (userinfo == null) {
            return null;
        }

        // 将用户信息写入本项目数据库
        // 注意：事务方法不被非事务方法控制，需要代理
        return currentProxy.addWxUser(userinfo);
    }

    /**
     * 携带授权码申请令牌
     */
    private Map<String, String> getAccess_token(String code) {

        String wxUrl_template = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code";
        //请求微信地址
        String wxUrl = String.format(wxUrl_template, appid, secret, code);

        log.info("调用微信接口申请access_token, url:{}", wxUrl);

        ResponseEntity<String> exchange = restTemplate.exchange(wxUrl, HttpMethod.POST, null, String.class);

        // 获取响应结果
        String result = exchange.getBody();
        log.info("调用微信接口申请access_token: 返回值:{}", result);

        return JSON.parseObject(result, Map.class);
    }

    // 携带令牌查询用户
    private Map<String, String> getUserinfo(String access_token, String openid) {

        String wxUrl_template = "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s";
        //请求微信地址
        String wxUrl = String.format(wxUrl_template, access_token, openid);

        log.info("调用微信接口申请access_token, url:{}", wxUrl);

        ResponseEntity<String> exchange = restTemplate.exchange(wxUrl, HttpMethod.POST, null, String.class);

        //防止乱码进行转码
        String result = new String(Objects.requireNonNull(exchange.getBody()).getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        log.info("调用微信接口申请access_token: 返回值:{}", result);
        return JSON.parseObject(result, Map.class);
    }

    @Transactional
    public User addWxUser(Map<String, String> userInfo_map) {
        String unionid = userInfo_map.get("unionid").toString();
        //根据unionid查询数据库
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getWxUnionid, unionid));
        if (user != null) {
            return user;
        }
        user = new User();
        String userId = UUID.randomUUID().toString(); // 主键
        user.setId(userId);
        user.setWxUnionid(unionid);
        //记录从微信得到的昵称
        user.setNickname(userInfo_map.get("nickname").toString());
        user.setUserpic(userInfo_map.get("headimgurl").toString());
        user.setName(userInfo_map.get("nickname").toString());
        user.setUsername(unionid);
        user.setPassword(unionid);
        user.setUtype("101001");//学生类型
        user.setStatus("1");//用户状态
        user.setCreateTime(LocalDateTime.now());
        userMapper.insert(user);
        UserRole userRole = new UserRole();
        userRole.setId(UUID.randomUUID().toString());
        userRole.setUserId(userId);
        userRole.setRoleId("17");//学生角色
        userRoleMapper.insert(userRole);
        return user;
    }
}
```

#### 密码登录部分

service层

```java
@Service("passwordAuthService")
public class PasswordAuthServiceImpl implements AuthService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    CheckCodeClient checkCodeClient;

    @Override
    public UserExt execute(AuthParamsDto authParamsDto) {
        //账号
        String username = authParamsDto.getUsername();

        // 输入验证码
        String checkcode = authParamsDto.getCheckcode();
        // 验证码对应KEY
        String checkcodekey = authParamsDto.getCheckcodekey();

        if(StringUtils.isEmpty(checkcode) || StringUtils.isEmpty(checkcodekey)){
            throw new RuntimeException("请输入验证码");
        }

        远程调用验证码服务校验验证码
        Boolean verify = checkCodeClient.verify(checkcodekey, checkcode);
        if(verify == null || !verify){
            throw new RuntimeException("验证码错误");
        }

        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if (user == null) {
            //返回空表示用户不存在
            throw new RuntimeException("账号不存在");
        }
        //校验密码
        //取出数据库存储的正确密码
        String passwordDb = user.getPassword();
        String passwordForm = authParamsDto.getPassword();
        boolean matches = passwordEncoder.matches(passwordForm, passwordDb);
        if (!matches) {
            throw new RuntimeException("账号或密码错误");
        }
        UserExt UserExt = new UserExt();
        BeanUtils.copyProperties(user, UserExt);
        return UserExt;
    }
}
```

两者同时实现

```java
public interface AuthService {
    /**
     * 认证方法
     * */
    UserExt execute(AuthParamsDto authParamsDto);
}
```

最后在完成不同认证的关键部分

```java
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
@Slf4j
public class UserServiceImpl implements UserDetailsService {
    @Autowired
    UserMapper userMapper;

    // 需要注入ApplicationContext，因为在AuthService多种实现，无法直接注入
    @Autowired
    ApplicationContext applicationContext;

    @Autowired
    MenuMapper menuMapper;

    @Autowired
    private InfoService infoService;

    // 传入请求参数就是AuthParamsDto
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        // 将Json转为AuthParamsDto
        AuthParamsDto authParamsDto = null;
        try {
            authParamsDto = JSON.parseObject(s, AuthParamsDto.class);
        } catch (Exception e) {
            throw new RuntimeException("请求认证参数不符合要求");
        }

        // 认证类型
        String authType = authParamsDto.getAuthType();
        // 根据认证类型获取对应的AuthService，记得需要authType传入参数首字母大写
        String beanName = authType + "AuthService";
        AuthService authService = applicationContext.getBean(beanName, AuthService.class);
        // 调用多态方法execute实现认证
        UserExt userExt = authService.execute(authParamsDto);

        // 封装UserExt到UserDetails
        return getUserPrincipal(userExt);
    }

    /**
     * 查询用户信息
     */
    public UserDetails getUserPrincipal(UserExt user) {
        // 根据用户id查询用户权限，如果不加报Cannot pass a null GrantedAuthority collection
        String[] authorities = {};
        List<Menu> menus = menuMapper.selectPermissionByUserId(user.getId());
        if(!menus.isEmpty()){
            authorities = menus.stream().map(Menu::getCode).toArray(String[]::new);
        }
        String password = user.getPassword();
        //为了安全在令牌中不放密码
        user.setPassword(null);
        //将user对象转json
        String userString = JSON.toJSONString(user);
        //创建UserDetails对象,同时向UserDetail加入权限信息
        return org.springframework.security.core.userdetails.User.withUsername(userString).
                password(password).authorities(authorities).build();
    }

}
```

为什么说是关键呢，因为这里实现了security的UserDetailsService并且重写了`public UserDetails loadUserByUsername`，通过重写到这个函数分别导向密码登录或者微信登录逻辑。单纯实现还不够，还需要修改DaoAuthenticationProvider，实现过滤链自定义

#### DaoAuthenticationProvider配置

```java
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

/**
 * 自定义DaoAuthenticationProvider
 */
@Slf4j
@Component
public class DaoAuthenticationProviderCustom extends DaoAuthenticationProvider {

    @Autowired
    public void setUserDetailsService(UserDetailsService userDetailsService) {
        super.setUserDetailsService(userDetailsService);
    }


    //屏蔽密码对比，因为有可能微信扫描等没有密码，所以这里统一先去除密码认证，再使用统一认证接口校验
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
    }

}
```

这一部分继承DaoAuthenticationProvider，实现自定义功能。

#### 自定义身份验证提供者WebSecurityConfigurerAdapter

这里再将上一部分自定义继承的daoAuthenticationProviderCustom放到authenticationProvider设置一个自定义的身份验证提供者

```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    DaoAuthenticationProviderCustom daoAuthenticationProviderCustom;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(daoAuthenticationProviderCustom);
    }

    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    //配置安全拦截机制
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // 放行全部请求
        http
                .csrf().disable()
                .authorizeRequests()
                .anyRequest().permitAll()
                .and()
                .formLogin().successForwardUrl("/login-success");
    }


}
```



配置OAuth2.0 授权服务器

```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;

import javax.annotation.Resource;

/**
 * 授权服务器配置
 */
@Configuration
@EnableAuthorizationServer
public class AuthorizationServer extends AuthorizationServerConfigurerAdapter {
    private final static boolean isRefreshToken = true;

    @Resource(name = "authorizationServerTokenServicesCustom")
    private AuthorizationServerTokenServices authorizationServerTokenServices;

    @Autowired
    private AuthenticationManager authenticationManager;

    //客户端详情服务
    @Override
    public void configure(ClientDetailsServiceConfigurer clients)
            throws Exception {
        clients.inMemory()// 使用in-memory存储
                .withClient("WebApp")// client_id
                // .secret("WebApp")//客户端密钥
                .secret(new BCryptPasswordEncoder().encode("WebApp"))//客户端密钥
                .resourceIds("xxx")//资源列表
                .authorizedGrantTypes("authorization_code", "password", "client_credentials", "implicit", "refresh_token")// 该client允许的授权类型authorization_code,password,refresh_token,implicit,client_credentials
                .scopes("all")// 允许的授权范围
                .autoApprove(false)//false跳转到授权页面
                //客户端接收授权码的重定向地址
                .redirectUris("http://www.xxx.cn")
        ;
    }


    //令牌端点的访问配置
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) {
        endpoints
                .authenticationManager(authenticationManager)//认证管理器
                .tokenServices(authorizationServerTokenServices)//令牌管理服务
                .allowedTokenEndpointRequestMethods(HttpMethod.POST)
                // 设置刷新令牌机制.true(重复使用:更新access_token时长后，refresh_toke时长不更新)。false(与true相反)
                .reuseRefreshTokens(isRefreshToken);
    }

    //令牌端点的安全配置
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) {
        security
                .tokenKeyAccess("permitAll()")                    //oauth/token_key是公开
                .checkTokenAccess("permitAll()")                  //oauth/check_token公开
                .allowFormAuthenticationForClients()                //表单认证（申请令牌）
        ;
    }

}
```

OAuth2的几个授权模式是根据不同的应用场景以不同的方式去获取令牌，最终目的是要获取认证服务颁发的令牌，最终通过令牌去获取资源。

授权码模式简单理解是使用授权码去获取令牌，要想获取令牌先要获取授权码，授权码的获取需要资源拥有者亲自授权同意才可以获取。此处就是为了配置授权服务器

至此，认证服务已经大功告成，下面就是网关校验部分



### 网关校验

定义一个安全配置类

```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;

@EnableWebFluxSecurity
@Configuration
public class SecurityConfig {
    @Bean
    public SecurityWebFilterChain webFluxSecurityFilterChain(ServerHttpSecurity http) {

        return http.authorizeExchange()
                .pathMatchers("/**").permitAll()
                .anyExchange().authenticated()
                .and().csrf().disable().build();
    }
}
```

#### 过滤器链

功能是验证是否是白名单类，如果是则放行

```java
import com.alibaba.fastjson.JSON;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.exceptions.InvalidTokenException;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Set;

/**
 * 网关认证过滤器
 */
@Component
@Slf4j
public class GatewayAuthFilter implements GlobalFilter, Ordered {

    @Autowired
    private TokenStore tokenStore;

    //白名单
    private static List<String> whitelist = null;

    static {
        //加载白名单
        try (
                InputStream resourceAsStream = GatewayAuthFilter.class.getResourceAsStream("/security-whitelist.properties");
        ) {
            Properties properties = new Properties();
            properties.load(resourceAsStream);
            Set<String> strings = properties.stringPropertyNames();
            whitelist = new ArrayList<>(strings);
            log.info("加载白名单:{}", whitelist);

        } catch (Exception e) {
            log.error("加载/security-whitelist.properties出错:{}", e.getMessage());
            e.printStackTrace();
        }


    }

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        // return chain.filter(exchange); // 放行所有请求
        String requestUrl = exchange.getRequest().getPath().value();
        log.info("requestUrl:{}", requestUrl);
        AntPathMatcher pathMatcher = new AntPathMatcher();
        //白名单放行
        for (String url : whitelist) {
            if (pathMatcher.match(url, requestUrl)) {
                return chain.filter(exchange);
            }
        }

        //检查token是否存在
        String token = getToken(exchange);
        if (StringUtils.isBlank(token)) {
            log.info("没有认证: {}", token);
            return buildReturnMono("没有认证", exchange);
        }
        //判断是否是有效的token
        OAuth2AccessToken oAuth2AccessToken;
        try {
            oAuth2AccessToken = tokenStore.readAccessToken(token);

            boolean expired = oAuth2AccessToken.isExpired();
            if (expired) {
                return buildReturnMono("认证令牌已过期", exchange);
            }
            return chain.filter(exchange);
        } catch (InvalidTokenException e) {
            log.info("认证令牌无效: {}", token);
            return buildReturnMono("认证令牌无效", exchange);
        }

    }

    /**
     * 获取token
     */
    private String getToken(ServerWebExchange exchange) {
        String authorization = exchange.getRequest().getHeaders().getFirst(HttpHeaders.COOKIE);
        if (StringUtils.isBlank(authorization)) {
            return null;
        }
        String[] split = authorization.split("=");
        if(split.length != 2) {
            return null;
        }
        String token = split[1];
        if (StringUtils.isBlank(token)) {
            return null;
        }
        return token;
    }


    private Mono<Void> buildReturnMono(String error, ServerWebExchange exchange) {
        ServerHttpResponse response = exchange.getResponse();
        String jsonString = JSON.toJSONString(new RestErrorResponse(error));
        byte[] bits = jsonString.getBytes(StandardCharsets.UTF_8);
        DataBuffer buffer = response.bufferFactory().wrap(bits);
        response.setStatusCode(HttpStatus.UNAUTHORIZED);
        response.getHeaders().add("Content-Type", "application/json;charset=UTF-8");
        return response.writeWith(Mono.just(buffer));
    }


    @Override
    public int getOrder() {
        return 0;
    }
}
```

这样就可以完成Spring Boot2使用security的身份验证和鉴权



## Security 6.2.3做法

### 原理部分

![image-20250120172214732](img/image-20250120172214732.png)

图中只展示了核心过滤器,其它的非核心过滤器并没有在图中展示。

UsernamePasswordAuthenticationFilter:负责处理我们在登陆页面填写了用户名密码后的登陆请求。入门案例的认证工作主要由它负责。

ExceptionTranslationFilter：处理过滤器链中抛出的任何AccessDeniedException和AuthenticationException。

FilterSecuritylnterceptor:负责权限校验的过滤器。通俗一点就是授权由它负责。(鉴权)

![img](img/v2-33e63450b82f5f035f1b4cad9bb77087_1440w.jpg)



请求方法http://localhost:8160/auth/login调用逻辑：

前面调试时还有一堆方法，全部跳过，从前几个开始阅读。先是UsernamePasswordAuthenticationFilter

```java
package org.springframework.security.web.authentication;
public class UsernamePasswordAuthenticationFilter extends AbstractAuthenticationProcessingFilter {
...
    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
          throws AuthenticationException {
       if (this.postOnly && !request.getMethod().equals("POST")) {
          throw new AuthenticationServiceException("Authentication method not supported: " + request.getMethod());
       }
       String username = obtainUsername(request);
       username = (username != null) ? username.trim() : "";
       String password = obtainPassword(request);
       password = (password != null) ? password : "";
       UsernamePasswordAuthenticationToken authRequest = UsernamePasswordAuthenticationToken.unauthenticated(username,
             password);
       // Allow subclasses to set the "details" property
       setDetails(request, authRequest);
       return this.getAuthenticationManager().authenticate(authRequest);
    }
...
}
```

这里关键进入的是最后的AuthenticationManager的authenticate方法。

```java
package org.springframework.security.authentication;
public class ProviderManager implements AuthenticationManager, MessageSourceAware, InitializingBean {
...
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
       Class<? extends Authentication> toTest = authentication.getClass();
       AuthenticationException lastException = null;
       AuthenticationException parentException = null;
       Authentication result = null;
       Authentication parentResult = null;
       int currentPosition = 0;
       int size = this.providers.size();
       for (AuthenticationProvider provider : getProviders()) {
          if (!provider.supports(toTest)) {
             continue;
          }
          if (logger.isTraceEnabled()) {
             logger.trace(LogMessage.format("Authenticating request with %s (%d/%d)",
                   provider.getClass().getSimpleName(), ++currentPosition, size));
          }
          try {
             result = provider.authenticate(authentication);
             if (result != null) {
                copyDetails(authentication, result);
                break;
             }
          }
          catch (AccountStatusException | InternalAuthenticationServiceException ex) {
             prepareException(ex, authentication);
             // SEC-546: Avoid polling additional providers if auth failure is due to
             // invalid account status
             throw ex;
          }
          catch (AuthenticationException ex) {
             lastException = ex;
          }
       }
       if (result == null && this.parent != null) {
          // Allow the parent to try.
          try {
             parentResult = this.parent.authenticate(authentication);
             result = parentResult;
          }
          catch (ProviderNotFoundException ex) {
             // ignore as we will throw below if no other exception occurred prior to
             // calling parent and the parent
             // may throw ProviderNotFound even though a provider in the child already
             // handled the request
          }
          catch (AuthenticationException ex) {
             parentException = ex;
             lastException = ex;
          }
       }
       if (result != null) {
          if (this.eraseCredentialsAfterAuthentication && (result instanceof CredentialsContainer)) {
             // Authentication is complete. Remove credentials and other secret data
             // from authentication
             ((CredentialsContainer) result).eraseCredentials();
          }
          // If the parent AuthenticationManager was attempted and successful then it
          // will publish an AuthenticationSuccessEvent
          // This check prevents a duplicate AuthenticationSuccessEvent if the parent
          // AuthenticationManager already published it
          if (parentResult == null) {
             this.eventPublisher.publishAuthenticationSuccess(result);
          }

          return result;
       }

       // Parent was null, or didn't authenticate (or throw an exception).
       if (lastException == null) {
          lastException = new ProviderNotFoundException(this.messages.getMessage("ProviderManager.providerNotFound",
                new Object[] { toTest.getName() }, "No AuthenticationProvider found for {0}"));
       }
       // If the parent AuthenticationManager was attempted and failed then it will
       // publish an AbstractAuthenticationFailureEvent
       // This check prevents a duplicate AbstractAuthenticationFailureEvent if the
       // parent AuthenticationManager already published it
       if (parentException == null) {
          prepareException(lastException, authentication);
       }
       throw lastException;
    }
...
}
```

这里进入的是result = provider.authenticate(authentication);方法

```java
package org.springframework.security.authentication.dao;
public abstract class AbstractUserDetailsAuthenticationProvider
		implements AuthenticationProvider, InitializingBean, MessageSourceAware {
...
	/**
	 * Allows subclasses to perform any additional checks of a returned (or cached)
	 * <code>UserDetails</code> for a given authentication request. Generally a subclass
	 * will at least compare the {@link Authentication#getCredentials()} with a
	 * {@link UserDetails#getPassword()}. If custom logic is needed to compare additional
	 * properties of <code>UserDetails</code> and/or
	 * <code>UsernamePasswordAuthenticationToken</code>, these should also appear in this
	 * method.
	 * @param userDetails as retrieved from the
	 * {@link #retrieveUser(String, UsernamePasswordAuthenticationToken)} or
	 * <code>UserCache</code>
	 * @param authentication the current request that needs to be authenticated
	 * @throws AuthenticationException AuthenticationException if the credentials could
	 * not be validated (generally a <code>BadCredentialsException</code>, an
	 * <code>AuthenticationServiceException</code>)
	 */
	protected abstract void additionalAuthenticationChecks(UserDetails userDetails,
			UsernamePasswordAuthenticationToken authentication) throws AuthenticationException;

	@Override
	public final void afterPropertiesSet() throws Exception {
		Assert.notNull(this.userCache, "A user cache must be set");
		Assert.notNull(this.messages, "A message source must be set");
		doAfterPropertiesSet();
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		Assert.isInstanceOf(UsernamePasswordAuthenticationToken.class, authentication,
				() -> this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.onlySupports",
						"Only UsernamePasswordAuthenticationToken is supported"));
		String username = determineUsername(authentication);
		boolean cacheWasUsed = true;
		UserDetails user = this.userCache.getUserFromCache(username);
		if (user == null) {
			cacheWasUsed = false;
			try {
				user = retrieveUser(username, (UsernamePasswordAuthenticationToken) authentication);
			}
			catch (UsernameNotFoundException ex) {
				this.logger.debug("Failed to find user '" + username + "'");
				if (!this.hideUserNotFoundExceptions) {
					throw ex;
				}
				throw new BadCredentialsException(this.messages
					.getMessage("AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
			}
			Assert.notNull(user, "retrieveUser returned null - a violation of the interface contract");
		}
		try {
			this.preAuthenticationChecks.check(user);
			additionalAuthenticationChecks(user, (UsernamePasswordAuthenticationToken) authentication);
		}
		catch (AuthenticationException ex) {
			if (!cacheWasUsed) {
				throw ex;
			}
			// There was a problem, so try again after checking
			// we're using latest data (i.e. not from the cache)
			cacheWasUsed = false;
			user = retrieveUser(username, (UsernamePasswordAuthenticationToken) authentication);
			this.preAuthenticationChecks.check(user);
			additionalAuthenticationChecks(user, (UsernamePasswordAuthenticationToken) authentication);
		}
		this.postAuthenticationChecks.check(user);
		if (!cacheWasUsed) {
			this.userCache.putUserInCache(user);
		}
		Object principalToReturn = user;
		if (this.forcePrincipalAsString) {
			principalToReturn = user.getUsername();
		}
		return createSuccessAuthentication(principalToReturn, authentication, user);
	}
    ...
}
```

这里关键语句是user = retrieveUser(username, (UsernamePasswordAuthenticationToken) authentication);进入到DaoAuthenticationProvider类

```java
package org.springframework.security.authentication.dao;
public class DaoAuthenticationProvider extends AbstractUserDetailsAuthenticationProvider {
	...
	@Override
	protected final UserDetails retrieveUser(String username, UsernamePasswordAuthenticationToken authentication)
			throws AuthenticationException {
		prepareTimingAttackProtection();
		try {
			UserDetails loadedUser = this.getUserDetailsService().loadUserByUsername(username);
			if (loadedUser == null) {
				throw new InternalAuthenticationServiceException(
						"UserDetailsService returned null, which is an interface contract violation");
			}
			return loadedUser;
		}
		catch (UsernameNotFoundException ex) {
			mitigateAgainstTimingAttack(authentication);
			throw ex;
		}
		catch (InternalAuthenticationServiceException ex) {
			throw ex;
		}
		catch (Exception ex) {
			throw new InternalAuthenticationServiceException(ex.getMessage(), ex);
		}
	}
	...
}
```

上面都是security内部类，通过阅读上面原理已经可以看到很多信息。现在可以正式开始我们对原来代码改造



### 对应依赖包

```xml
<java.version>21</java.version>
<spring-boot.version>3.2.4</spring-boot.version>
<spring-cloud.version>2023.0.1</spring-cloud.version>
<jjwt.version>0.12.6</jjwt.version>
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-dependencies</artifactId>
    <version>${spring-cloud.version}</version>
    <type>pom</type>
    <scope>import</scope>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-dependencies</artifactId>
    <version>${spring-boot.version}</version>
    <type>pom</type>
    <scope>import</scope>
</dependency>
<!--JWT生成器-->
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt-api</artifactId>
    <version>${jjwt.version}</version>
</dependency>
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt-impl</artifactId>
    <version>${jjwt.version}</version>
</dependency>
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt-jackson</artifactId>
    <!-- 必须和 jjwt-api 的版本一致 -->
    <version>${jjwt.version}</version>
    <scope>runtime</scope>
</dependency>
```



### Auth部分生成Token

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-security</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-oauth2-authorization-server</artifactId>
</dependency>
```

User，UserExt实体类，UserServiceImpl实现类均未更改

首先是自定义DaoAuthenticationProviderCustom

```java
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

/**
 * 自定义DaoAuthenticationProvider
 */
@Slf4j
@Component
public class DaoAuthenticationProviderCustom extends DaoAuthenticationProvider {


    @Autowired
    public void setUserDetailsService(UserDetailsService userDetailsService) {
        super.setUserDetailsService(userDetailsService);
    }

    @Override
    // 屏蔽密码对比，因为有可能微信扫描等没有密码，所以这里统一先去除密码认证，再使用统一认证接口校验
    // 虽然源文件标记弃用，但是在AbstractUserDetailsAuthenticationProvider还是调用了additionalAuthenticationChecks
    // 如果不覆盖则产生报错
    protected void additionalAuthenticationChecks(UserDetails userDetails,
                                                  UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
    }

}
```

这里需要注意，虽然additionalAuthenticationChecks已经显示弃用，但是在AbstractUserDetailsAuthenticationProvider还是调用了additionalAuthenticationChecks，还是需要覆盖空方法修复报错。

下面是CustomAuthenticationSuccessHandler，自定义成功处理器，主要生成用户信息和权限的JWT

```java
import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.utils.JwtUtil;
import com.edu.kaizhi.ucenter.model.po.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.token.TokenService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 自定义登录成功处理器
 */
@Component
@Slf4j
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    /**
     * jwt的工具类，主要就是将用户存入redis中并生成uuid作为缓存的key，将key存入jwt中
     */
    @Autowired
    private JwtUtil jwtUtil;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        log.info("登录成功：{}", authentication.getName());
        try {
            // 获取 UserDetails
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            String userInfo = userDetails.getUsername();

            // 转换 User 对象
            User user = JSON.parseObject(userInfo, User.class);
            log.info("用户信息转换成功：{}", user);

            // 获取用户权限
            Collection<? extends GrantedAuthority> authorities = userDetails.getAuthorities();
            Map<String, Object> extraClaims = new HashMap<>();
            List<String> authorityList = authorities.stream()
                    .map(GrantedAuthority::getAuthority) // 提取 authority 字符串
                    .toList();
            extraClaims.put("authorities", authorityList);
            // 生成 JWT Token
            String token = jwtUtil.generateToken(extraClaims, userDetails.getUsername());
            log.info("生成 JWT Token：{}", token);

            // 设置响应头
            response.setContentType("application/json;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");

            // 构造 JSON 响应数据
            Map<String, Object> responseData = new HashMap<>();
            responseData.put("code", 200); // 状态码
            responseData.put("message", "登录成功");
            responseData.put("access_token", token);

            // 将 JSON 数据写入响应
            response.getWriter().write(JSON.toJSONString(responseData));
            response.getWriter().flush();
        } catch (Exception e) {
            log.error("认证成功处理器异常：", e);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "认证成功处理异常");
        }
    }
}
```

对应JwtUtil如下，下面由于JwtUtil用的是0.12.6，所以有些方法和网上之前版本不一样，应该是没问题的：

```java
package com.edu.kaizhi.base.utils;

import io.jsonwebtoken.*;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;


/**
 * jwt相关操作类
 */
@Service
@Slf4j
public class JwtUtil {
  private String secretKey = "404E635266556A586E3272357538782F413F4428472B4B6250645367566B5970";
  private long jwtExpiration = 86400000;
  private long refreshExpiration = 604800000;

  public String extractUsername(String token) {
    return extractClaim(token, Claims::getSubject);
  }

  public List<String> extractAuthorities(String token) {
    return extractClaim(token, claims -> {
      // 从 claims 中获取 "authorities" 字段并转换为 List<String>
      Object authorities = claims.get("authorities");
      if (authorities instanceof List) {
        return ((List<?>) authorities).stream()
                .map(Object::toString)
                .collect(Collectors.toList());
      }
      return Collections.emptyList();
    });
  }

  public <T> T extractClaim(String token, Function<Claims, T> claimsResolver) {
    final Claims claims = extractAllClaims(token);
    return claimsResolver.apply(claims);
  }

  public String generateToken(String subject) {
    return generateToken(new HashMap<>(), subject);
  }

  public String generateToken(
          Map<String, Object> extraClaims,
          String subject
  ) {
    return buildToken(extraClaims, subject, jwtExpiration);
  }

  public String generateRefreshToken(String subject) {
    return buildToken(new HashMap<>(), subject, refreshExpiration);
  }

  private String buildToken(
          Map<String, Object> extraClaims,
          String subject,
          long expiration
  ) {
    return Jwts
            .builder()
            .claims(extraClaims)
            .subject(subject)
            .signWith(getSignInKey())
            .expiration(new Date(System.currentTimeMillis() + expiration))
            .issuedAt(new Date(System.currentTimeMillis()))
            .compact();
  }

  public boolean isTokenValid(String token) {
    try {
      Jwts
              .parser()
              .verifyWith(getSignInKey())
              .build()
              .parseSignedClaims(token)
              .getPayload();
      return true;
    } catch (MalformedJwtException e) {
      log.error("Invalid JWT token: {}", e.getMessage());
    } catch (ExpiredJwtException e) {
      log.error("JWT token is expired: {}", e.getMessage());
    } catch (UnsupportedJwtException e) {
      log.error("JWT token is unsupported: {}", e.getMessage());
    } catch (IllegalArgumentException e) {
      log.error("JWT claims string is empty: {}", e.getMessage());
    } catch (Exception e) {
      log.error("JWT token is invalid: {}", e.getMessage());
    }
    return false;
  }

  private boolean isTokenExpired(String token) {
    return extractExpiration(token).before(new Date());
  }

  private Date extractExpiration(String token) {
    return extractClaim(token, Claims::getExpiration);
  }

  private Claims extractAllClaims(String token) {
    return Jwts
            .parser()
            .verifyWith(getSignInKey())
            .build()
            .parseSignedClaims(token)
            .getPayload();
  }

  private SecretKey getSignInKey() {
    byte[] keyBytes = Decoders.BASE64.decode(secretKey);
    return Keys.hmacShaKeyFor(keyBytes);
  }
}
```

最后就是一个大改的重头戏（可能有些方法冗余，暂时没有完全测试，因为也是看了很多网上资料整合的）

```java
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.jwk.RSAKey;
import com.nimbusds.jose.jwk.source.ImmutableJWKSet;
import com.nimbusds.jose.jwk.source.JWKSource;
import com.nimbusds.jose.proc.SecurityContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.annotation.Order;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.security.oauth2.core.oidc.OidcScopes;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.server.authorization.client.InMemoryRegisteredClientRepository;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClient;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClientRepository;
import org.springframework.security.oauth2.server.authorization.config.annotation.web.configuration.OAuth2AuthorizationServerConfiguration;
import org.springframework.security.oauth2.server.authorization.config.annotation.web.configurers.OAuth2AuthorizationServerConfigurer;
import org.springframework.security.oauth2.server.authorization.settings.AuthorizationServerSettings;
import org.springframework.security.oauth2.server.authorization.settings.ClientSettings;
import org.springframework.security.oauth2.server.authorization.settings.OAuth2TokenFormat;
import org.springframework.security.oauth2.server.authorization.settings.TokenSettings;
import org.springframework.security.oauth2.server.authorization.token.JwtEncodingContext;
import org.springframework.security.oauth2.server.authorization.token.OAuth2TokenCustomizer;
import org.springframework.security.oauth2.server.authorization.web.OAuth2TokenEndpointFilter;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.MediaTypeRequestMatcher;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.time.Duration;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * 授权服务器配置
 */
@Configuration
@EnableWebSecurity
@EnableMethodSecurity(securedEnabled = true) // 开启注解授权功能
public class AuthorizationServerConfig {
    // @Autowired
    // private UserDetailsService userDetailsService;

    @Autowired
    private DaoAuthenticationProviderCustom daoAuthenticationProviderCustom;

    @Autowired
    private CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    /**
     * 授权服务器 SecurityFilterChain
     * Bean的加载顺序，数字越小优先级越高。
     */
    @Bean
    @Order(1)
    public SecurityFilterChain authorizationServerSecurityFilterChain(HttpSecurity http) throws Exception {
        //应用了默认的安全配置，这些配置支持OAuth2授权服务器的功能。
        OAuth2AuthorizationServerConfiguration.applyDefaultSecurity(http);
        http
                .getConfigurer(OAuth2AuthorizationServerConfigurer.class)
                .oidc(Customizer.withDefaults());
        http
                .oauth2ResourceServer((oauth2) -> oauth2
                        .jwt(Customizer.withDefaults())
                );
        return http.build();
    }


    // 默认筛选器链
    @Bean
    @Order(2)
    public SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
        // 关闭csrf  因为不使用session
        http.csrf(AbstractHttpConfigurer::disable);
        // SpringSecurity设置允许跨域
        http.cors(AbstractHttpConfigurer::disable);
        // 禁用HTTP基本认证
        http.httpBasic(AbstractHttpConfigurer::disable);
        // 禁用HTTP响应标头
        http.headers(headers -> headers.frameOptions(HeadersConfigurer.FrameOptionsConfig::disable));
        //不通过Session获取SecurityContext 基于token，所以不需要session
        http.sessionManagement(sessionManagement -> sessionManagement.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
        // 过滤请求
        http
                .authorizeHttpRequests((authorize) ->
                        authorize
                                .requestMatchers(new AntPathRequestMatcher("/actuator/**")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/login")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/logout")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/wxLogin")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/register")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/oauth2/**")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/**/*.html")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/**/*.json")).permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/auth/**")).permitAll()
                                .anyRequest().authenticated()
                )
                // 允许所有请求
                // .authorizeHttpRequests((auth) -> auth.anyRequest().authenticated())
                // 启用表单登录
                .formLogin(
                        form -> form
                                .successForwardUrl("/login-success")// 登录成功页
                                .successHandler(customAuthenticationSuccessHandler)
                )
                //指定logout端点，用于退出登陆，不然二次获取授权码时会自动登陆导致短时间内无法切换用户
                .logout(logout -> logout
                        .logoutUrl("/logout")
                        .addLogoutHandler(new SecurityContextLogoutHandler())
                        .logoutSuccessUrl("http://www.kaizhi.edu.cn")
                );
        return http.build();
    }


    /**
     * 客户端配置，基于内存, 用于管理新客户端和现有客户端的(必须)
     */
    @Bean
    public RegisteredClientRepository registeredClientRepository() {
        TokenSettings tokenSettings = TokenSettings.builder()
                .accessTokenTimeToLive(Duration.ofDays(1)) // 设置访问令牌有效期为1天
                .refreshTokenTimeToLive(Duration.ofDays(30)) // 设置刷新令牌有效期为30天
                //.accessTokenFormat(OAuth2TokenFormat.REFERENCE) // 这个设置是开启不透明token
                .accessTokenFormat(OAuth2TokenFormat.SELF_CONTAINED) // 使用透明token
                .reuseRefreshTokens(true)                   // 是否重用刷新令牌
                .build();

        RegisteredClient oidcClient = RegisteredClient.withId(UUID.randomUUID().toString())
                .clientId("WebApp")
                // .secret("WebApp")//客户端密钥
                .clientSecret(new BCryptPasswordEncoder().encode("WebApp"))//客户端密钥
                .clientAuthenticationMethod(ClientAuthenticationMethod.CLIENT_SECRET_BASIC)
                .clientAuthenticationMethod(ClientAuthenticationMethod.CLIENT_SECRET_POST)
                .clientAuthenticationMethod(ClientAuthenticationMethod.CLIENT_SECRET_JWT)
                // 该client允许的授权类型authorization_code, refresh_token, client_credentials
                // PASSWORD, DEVICE_CODE, JWT_BEARER 已经被Deprecated
                .authorizationGrantType(AuthorizationGrantType.AUTHORIZATION_CODE)
                .authorizationGrantType(AuthorizationGrantType.REFRESH_TOKEN)
                .authorizationGrantType(AuthorizationGrantType.CLIENT_CREDENTIALS)
                .redirectUri("http://www.kaizhi.edu.cn")
                .scope("all")
                .scope(OidcScopes.OPENID)
                .scope(OidcScopes.PROFILE)
                .scope("message.read")
                .scope("message.write")
                .scope("read")
                .scope("write")
                .tokenSettings(tokenSettings)
                // 在每次请求用户资源时是否需要得到用户的同意
                .clientSettings(ClientSettings.builder().requireAuthorizationConsent(false).build())
                .build();

        return new InMemoryRegisteredClientRepository(oidcClient);
    }

    @Bean
    public AuthenticationManager authenticationManager() throws Exception {
        return new ProviderManager(
                Arrays.asList(daoAuthenticationProviderCustom)
        );
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    /**
     * 用于签署访问令牌
     */
    @Bean
    public JWKSource<SecurityContext> jwkSource() {
        KeyPair keyPair = generateRsaKey();
        RSAPublicKey publicKey = (RSAPublicKey) keyPair.getPublic();
        RSAPrivateKey privateKey = (RSAPrivateKey) keyPair.getPrivate();
        RSAKey rsaKey = new RSAKey.Builder(publicKey)
                .privateKey(privateKey)
                .keyID(UUID.randomUUID().toString())
                .build();
        JWKSet jwkSet = new JWKSet(rsaKey);
        return new ImmutableJWKSet<>(jwkSet);
    }

    private static KeyPair generateRsaKey() {
        KeyPair keyPair;
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            keyPair = keyPairGenerator.generateKeyPair();
        } catch (Exception ex) {
            throw new IllegalStateException(ex);
        }
        return keyPair;
    }

    @Bean
    public JwtDecoder jwtDecoder(JWKSource<SecurityContext> jwkSource) {
        return OAuth2AuthorizationServerConfiguration.jwtDecoder(jwkSource);
    }

    @Bean
    public AuthorizationServerSettings authorizationServerSettings() {
        return AuthorizationServerSettings.builder().build();
    }
}
```

现在只要访问http://localhost:8160/auth/login就会得到如下令牌信息

![image-20250126160228410](img/image-20250126160228410.png)

在jwt.io进行对应令牌转换后为：

![image-20250126160340594](img/image-20250126160340594.png)



### Gateway校验

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-security</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-oauth2-resource-server</artifactId>
</dependency>
<!--验证 JWT 格式的访问令牌-->
<dependency>
    <groupId>org.springframework.security</groupId>
    <artifactId>spring-security-oauth2-jose</artifactId>
</dependency>
```

安全配置类

```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.web.cors.reactive.CorsConfigurationSource;
import org.springframework.security.web.server.SecurityWebFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.reactive.UrlBasedCorsConfigurationSource;

import java.security.interfaces.RSAPublicKey;

/**
 * 安全配置类
 */
@EnableWebFluxSecurity
@Configuration
public class SecurityConfig {

    //安全拦截配置
    @Bean
    public SecurityWebFilterChain webFluxSecurityFilterChain(ServerHttpSecurity http) throws Exception {
        return http
                .cors(cors -> cors.configurationSource(corsConfigurationSource()))
                .authorizeExchange(exchanges ->
                        exchanges
                                .pathMatchers("/**").permitAll()
                                .anyExchange().authenticated()
                )
               // .oauth2ResourceServer(oauth2 -> oauth2.jwt(JwtDecoders.fromIssuerLocation(issuerUri)))
               //  .oauth2ResourceServer(oauth2 -> oauth2.jwt(Customizer.withDefaults()))
                .csrf(ServerHttpSecurity.CsrfSpec::disable)
                .build();
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration corsConfig = new CorsConfiguration();
        corsConfig.addAllowedOriginPattern("*"); // 允许任何源
        corsConfig.addAllowedMethod("*"); // 允许任何HTTP方法
        corsConfig.addAllowedHeader("*"); // 允许任何HTTP头
        corsConfig.setAllowCredentials(true); // 允许证书（cookies）
        corsConfig.setMaxAge(3600L); // 预检请求的缓存时间（秒）

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", corsConfig); // 对所有路径应用这个配置
        return source;
    }
}
```

过滤器：

```java
package com.edu.kaizhi.config;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.utils.JwtUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.ObjectProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.Ordered;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.OAuth2AccessToken;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.jwt.JwtValidationException;
import org.springframework.security.oauth2.jwt.ReactiveJwtDecoder;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 网关认证过虑器
 */
@Component
@Slf4j
public class GatewayAuthFilter implements GlobalFilter, Ordered {

    @Autowired
    private JwtUtil jwtUtil;

    //白名单
    private static List<String> whitelist = null;

    static {
        //加载白名单
        try (
                InputStream resourceAsStream = GatewayAuthFilter.class.getResourceAsStream("/security-whitelist.properties");
        ) {
            Properties properties = new Properties();
            properties.load(resourceAsStream);
            Set<String> strings = properties.stringPropertyNames();
            whitelist = new ArrayList<>(strings);
            log.info("加载白名单:{}", whitelist);

        } catch (Exception e) {
            log.error("加载/security-whitelist.properties出错:{}", e.getMessage());
        }
    }
    
    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        String requestUrl = exchange.getRequest().getPath().value();
        log.info("请求 = {}",requestUrl);
        AntPathMatcher pathMatcher = new AntPathMatcher();
        //白名单放行
        for (String url : whitelist) {
            if (pathMatcher.match(url, requestUrl)) {
                return chain.filter(exchange);
            }
        }

        //检查token是否存在
        String token = getToken(exchange);
        log.info("token = {}",token);
        if (StringUtils.isBlank(token)) {
            return buildReturnMono("没有携带Token,没有认证",exchange);
        }
        try {
            if(jwtUtil.isTokenValid(token)){
                // 如果没有抛出异常，则表示JWT有效
                // 将 JWT 添加到请求头中
                ServerHttpRequest modifiedRequest = exchange.getRequest().mutate()
                        .header("Cookie", "Bearer " + token)
                        .build();

                // 使用修改后的请求继续处理
                return chain.filter(exchange.mutate().request(modifiedRequest).build());
            }
        } catch (JwtValidationException e) {
            log.info("token验证失败:{}", e.getMessage());
            return buildReturnMono("认证token无效", exchange);
        }
        return buildReturnMono("认证token无效", exchange);
    }

    /**
     * 获取token
     */
    private String getToken(ServerWebExchange exchange) {
        String authorization = exchange.getRequest().getHeaders().getFirst(HttpHeaders.AUTHORIZATION);
        if (StringUtils.isBlank(authorization)) {
            return null;
        }
        String[] split = authorization.split(" ");
        if(split.length != 2) {
            return null;
        }
        String token = split[1];
        if (StringUtils.isBlank(token)) {
            return null;
        }
        return token;
    }

    private Mono<Void> buildReturnMono(String error, ServerWebExchange exchange) {
        ServerHttpResponse response = exchange.getResponse();
        String jsonString = JSON.toJSONString(new RestErrorResponse(error));
        byte[] bits = jsonString.getBytes(StandardCharsets.UTF_8);
        DataBuffer buffer = response.bufferFactory().wrap(bits);
        response.setStatusCode(HttpStatus.UNAUTHORIZED);
        response.getHeaders().add("Content-Type", "application/json;charset=UTF-8");
        return response.writeWith(Mono.just(buffer));
    }


    @Override
    public int getOrder() {
        return 0;
    }
}
```

这里将gateway只是作为转发进行处理，不再进行校验，原因是我发现哪怕在此处校验，在别的微服务如果引入security包也是会显示自动被重定向到/login路径，所以此处将token传递到各个微服务。

在content微服务中使用RequiresUser进行注入，这个RequiresUser就是自定义切面类

```java
@Operation(summary = "课程分页查询信息列表")
@ApiOperationLog(description = "课程分页查询信息列表")
@PostMapping("/course/list")
@RequiresUser
public PageResult<CourseListDto> list(PageParams pageParams, @RequestBody(required = false) QueryCourseParamsDto queryCourseParams) {
    Long companyId = UserContext.getCompanyId();
    return courseBaseInfoService.queryCourseBaseList(companyId, pageParams, queryCourseParams, true);
}
```

### 切面类

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-security</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.security</groupId>
    <artifactId>spring-security-oauth2-resource-server</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.security</groupId>
    <artifactId>spring-security-oauth2-jose</artifactId>
</dependency>
<dependency>
    <groupId>jakarta.servlet</groupId>
    <artifactId>jakarta.servlet-api</artifactId>
</dependency>
```

```java
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface RequiresUser {
}
```

```java
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.securityUser.Context.UserContext;
import com.edu.kaizhi.securityUser.dto.User;
import com.edu.kaizhi.securityUser.util.SecurityUtil;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class UserAspect {

    @Before("@annotation(com.edu.kaizhi.securityUser.annotation.RequiresUser)")
    public void beforeMethod() {
        User user = SecurityUtil.getUser();
        if (user == null) {
            CustomizeException.cast("用户未登录", 401);
        }
        // 将当前用户存储到 ThreadLocal 中
        UserContext.setUser(user);
    }

    @After("@annotation(com.edu.kaizhi.securityUser.annotation.RequiresUser)")
    public void afterMethod() {
        // 清除 ThreadLocal 中的用户信息
        UserContext.clear();
    }
}
```

```java
import com.edu.kaizhi.base.exception.CustomizeException;
import com.edu.kaizhi.securityUser.dto.User;

import java.util.Objects;

public class UserContext {

    private static final ThreadLocal<User> userThreadLocal = new ThreadLocal<>();

    // 设置当前线程的用户
    public static void setUser(User user) {
        userThreadLocal.set(user);
    }

    // 获取当前线程的用户
    public static User getUser() {
        User user = userThreadLocal.get();
        if (user == null) {
            CustomizeException.cast("用户未登录，未获取到用户信息", 401);
        }
        return user;
    }

    // 清除当前线程的用户信息
    public static void clear() {
        userThreadLocal.remove();
    }

    // 获取当前用户的 companyId
    public static Long getCompanyId() {
        User user = getUser();

        Long companyId = 1232141425L; // 默认值
        if (Objects.equals(user.getUtype(), "101003")) {
            companyId = -1L;
        } else if (Objects.equals(user.getUtype(), "101002")) {
            companyId = Long.parseLong(user.getCompanyId());
        } else {
            CustomizeException.cast("用户身份不合法，不允许继续往下执行操作", 403);
        }
        return companyId;
    }

    // 判断当前用户权限
    public static void isPermission() {
        User user = getUser();
        if (Objects.equals(user.getUtype(), "101001"))
            CustomizeException.cast("用户身份不合法，不允许继续往下执行操作", 403);
    }
}
```

```java
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.edu.kaizhi.securityUser.dto.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

/***
 * 获取当前登录用户信息，使用解析jwt中的用户信息
 */
@Slf4j
public class SecurityUtil {

    public static User getUser() {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        try {
            Object principal = authentication.getPrincipal();
            if (principal instanceof UserDetails userDetails) {
                System.out.println("Username: " + userDetails.getUsername());
                String user = userDetails.getUsername();
                if (isValidJson(user))
                    return JSON.parseObject(user, User.class);
                else
                    log.error("无效的 JSON 格式: {}", principal);
            } else {
                log.info("Principal: " + principal);
            }
        } catch (Exception e) {
            log.error("获取当前登录用户身份出错:{}", e.getMessage());
        }
        return null;
    }

    // 检查字符串是否是有效的 JSON 格式
    private static boolean isValidJson(String str) {
        try {
            JSONObject.parseObject(str); // 尝试解析为 JSONObject
            return true;
        } catch (JSONException e) {
            return false;
        }
    }
}
```

在这里就可以解析出token进行注入到User类

在这个类还需要加入配置类，让security不自动校验网址

```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
// import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationConverter;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig {
    //安全拦截配置
    @Bean
    public SecurityFilterChain defaultFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests((authorize) ->
                        authorize
                                .requestMatchers("/**").permitAll()
                                .anyRequest().authenticated()
                )
                .csrf(AbstractHttpConfigurer::disable);
        return http.build();
    }
}
```

最后提取权限注入security

```java
import com.edu.kaizhi.base.utils.JwtUtil;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.userdetails.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    @Autowired
    private JwtUtil jwtUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String token = resolveToken(request);
        String username = jwtUtil.extractUsername(token); // 提取用户名
        List<String> authorities = jwtUtil.extractAuthorities(token); // 提取权限信息
        // 构建权限集合
        List<GrantedAuthority> grantedAuthorities = authorities.stream()
                .map(authority -> (GrantedAuthority) () -> authority)
                .toList();

        UserDetails userDetails = new User(username, "", grantedAuthorities);

        // 构建 Authentication 对象
        Authentication authentication = new UsernamePasswordAuthenticationToken(
                userDetails, null, grantedAuthorities
        );

        // 将 Authentication 放入 SecurityContextHolder
        SecurityContextHolder.getContext().setAuthentication(authentication);
        filterChain.doFilter(request, response);
    }
    private String resolveToken(HttpServletRequest request) {
        String bearerToken = request.getHeader("Cookie");
        if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7);
        }
        return null;
    }
}
```

这样只要微服务使用RequiresUser就可以得到UserContext。



## 参考资料

[Spring Boot+Spring Security6的配置方法](https://blog.csdn.net/qq_68534248/article/details/137230895)

[Spring Authorization Server入门 (十一) 自定义grant_type(短信认证登录)获取token](https://blog.csdn.net/weixin_43356507/article/details/13129745)

[Spring Authorization Server官方文档快速开始](https://docs.spring.io/spring-authorization-server/reference/getting-started.html)

[Spring Authorization Server的Token配置](https://felord.blog.csdn.net/article/details/124204770)

[为何需要自定义密码模式](https://blog.csdn.net/2401_89221867/article/details/144331875)

[Spring Authorization Server的使用](https://juejin.cn/post/6985411823144615972)

[Spring Authorization Server扩展实现OAuth2.0的密码模式](https://blog.csdn.net/admin_15082037343/article/details/131092597)

[SpringSecurity从入门到精通](https://gitee.com/Lychee-Huang/spring-security/blob/master/README.md#3%E5%AF%86%E7%A0%81%E5%8A%A0%E5%AF%86%E5%AD%98%E5%82%A8%E6%A8%A1%E5%BC%8F%E6%9B%B4%E6%94%B9)

[SpringSecurity 6.X新版自定义过滤器登录方式](https://blog.csdn.net/qq_25746193/article/details/137811795)

[springboot30开发指南](https://gitee.com/li_ximing/springboot30-development-guide)

[Spring Boot 3 + JWT + Security](https://developer.aliyun.com/article/1341764)

[使用 Spring Security 原生组件们实现的 JWT 验证登录](https://www.ddupan.top/posts/spring-security-with-jwt/)

[spring boot3.x结合spring security最新版实现jwt登录验证](https://blog.csdn.net/qq_45635939/article/details/132639018)

[基于springboot3+springsecurity实现多种方式登录及鉴权](https://blog.csdn.net/u010361276/article/details/135679155)

[springboot3微服务下结合springsecurity的认证授权实现](https://blog.csdn.net/PleaseBeStrong/article/details/138821778)

[基于Spring Boot 3 + Spring Security6 + JWT + Redis实现登录、token身份认证](https://blog.csdn.net/shijizhe1/article/details/137079755)

[spring-security官方样例](https://github.com/spring-projects/spring-security-samples)

[springboot3+Spring Security+JWT+redis+MySQL实现登陆验证](https://blog.csdn.net/admin_cx/article/details/138875811)

[使用 spring-authorization-server 时如何将 token 存储在 redis 中](https://juejin.cn/post/7445122224929619995#heading-0)

[SpringBoot3.X配置OAuth](https://blog.csdn.net/m0_60681411/article/details/142511434)

[Spring Authorization Server 1.4.0 使用及详细配置 搭配Spring Boot3.4.0 + Spring Security6.4.1](https://blog.csdn.net/qq_44845339/article/details/144249876)

[SpringBoot3.X配置OAuth的代码实践](https://www.jb51.net/program/328173me6.htm)

[spring security6+springboot3+jwt实现权限控制](https://blog.csdn.net/hepeike001/article/details/130582988)

[Spring Authorization Server入门 (十六) Spring Cloud Gateway对接认证服务](https://blog.csdn.net/weixin_43356507/article/details/132517747)

升级部分：

[springBoot从2.x升级到3.x后Oauth 客户端模式兼容以前代码处理](https://blog.csdn.net/weixin_42930944/article/details/136675575)

原理部分：

[Spring Security 认证流程源码详解](https://lingmoumou.github.io/p/2020/02/01/e2629cf2/)

[浅析Spring Security 的认证过程及相关过滤器](https://zhuanlan.zhihu.com/p/604983527)

[微服务鉴权设计：SpringBoot 3.x + OAuth2](https://flyeric.top/archives/microservice-authorization-with-springboot3-oauth2)

学成在线auth从5到6升级部分：

[微服务OAuth 2.1微服务](https://blog.csdn.net/m0_51390969/article/details/136081042)

[微服务OAuth 2.1网关](https://blog.csdn.net/m0_51390969/article/details/136109841)

[github地址](https://github.com/Xiamu-ssr/xuecheng-plus-project/blob/70ad2326ecdf946b6cafd22fec9c53a1d01a4526/xuecheng-plus-auth/src/main/java/com/xuecheng/auth/config/AuthServerSecurityConfig.java)