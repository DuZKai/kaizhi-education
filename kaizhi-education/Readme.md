# 楷智教育

楷智教育是一个基于B2B2C业务模式的在线学习平台，服务培训机构和个人用户，构建多角色协作的在线教育生态使用微服务技术架构，根据业务拆分为内容管理、媒资管理、课程索、选课管理、认证授权、学习中心、网关服务等。



## 现有功能实现

### 技术架构设计与实施

- **微服务架构**：采用 Spring Boot + Spring Cloud 技术栈，根据业务模块拆分为内容管理、媒资管理、课程搜索、选课管理、学习中心等服务，提升系统的模块化和可扩展性。

- **服务注册与配置**：使用 Nacos 作为服务注册中心和配置中心，实现服务动态发现与统一配置管理，简化部署流程。

- **网关服务**：基于 Spring Cloud Gateway 搭建统一网关，支持白名单校验、动态路由及服务流量转发。

- **远程调用**：基于 Feign 实现微服务间的接口调用。集成熔断降级策略，避免因微服务故障引发雪崩效应，保障系统高可用性。

- **分布式认证**：结合 Spring Security、OAuth2.0 和 JWT 实现统一分布式认证，增强系统安全性。并使用Kaptcha支持动态生成验证码，防止自动化攻击。

### 分布式存储搜索及性能优化

- **分布式文件存储**：集成 MinIO 搭建分布式存储，支持断点续传和大文件分块上传与视频转码，确保文件高效性和稳定性。
- **高效搜索**：借助 Elasticsearch 构建课程检索功能，支持布尔查询等检索逻辑，优化用户体验并提升检索效率。
- **缓存优化**：利用 Redis 缓存公开接口数据，通过 Redisson 分布式锁解决缓存击穿问题，显著提升系统响应速度和稳定性。
- **页面静态化**：使用FreeMarker实现课程详情页面静态化，使用Nginx完成静态资源部署，通过反向代理负载均衡到网关。

- **接口文档生成及测试**：使用Swagger在线生成接口文档并使用Httpclient进行接口测试



新增：

rabbitMQ使用、拓展cacheable，从8升级到21，效率提高一倍，重点升级Spring Security，从5到6，完全重构验证服务，加入Knife4j后端接口服务



## 实现个性化功能

### 大功能

- 全部微服务升级，java从8到21，spring boot从2到3，security从5到6（另一个github仓库）
- 加入Knife4j后端接口服务，使用网关进行全部微服务聚合
- 使用Chromedriver和Beautifulsoup4下载学堂真实课程数据
- 热门课程排行榜加入（每日零点通过定时任务Scheduled更新排行榜）
- 将课程排行榜以及学习课程人数部分加入ExpirableCacheable拓展cacheable缓存，实现每日缓存，在每日零点前30分钟如果被访问则刷新缓存
- 教师管理页面，添加教师功能改进，使得一个教师可以教多门课程
- 使用FeignRequestInterceptor拦截器实现使用openfeign时中继令牌功能
- 加入Guava带有Redis过期时间的布隆过滤器，拦截课程发布表的白名单查询，且每次程序重新运行将现有布隆过滤器更新
- 加入互斥锁解决缓存击穿问题，并且加入Redis序列化
- 搜索功能方法改进，新增广告状态课程，当用户查询已有课程，会根据isAd字段，使用ElasticSearch对广告课程增加固定权重，并且放入缓存
- 课程预览界面的师资信息加入，获取师资列表遍历展示
- 网站使用Redis的HyperLogLog进行UV统计，并使用@Cacheable注解保存到Redis
- 将用户身份工具类SecurityUtil放到单独一个服务，并且使用AOP切面使获取当前用户信息更便捷



### 小功能

#### 后端

- 视频上传分块信息超时残余部分用XXL-JOB删除
- 视频线程处理中任务补偿机制（超过执行时间释放线程锁）
- 媒资管理预览修改，删除视频，搜索服务实现
- 课程计划删除、排序实现
- 课程下架功能完成
- 加入JSR303校验的师资管理增删改查
- 删除课程实现、解绑媒资实现、课程发布和审核时加入师资信息实现
- 课程信息显示不全，DTO加入字段后重写，现在所有课程预览没有空闲数据，并且只会搜到有课程、营销、师资三张表都有的信息的表
- 发布课程后如果课程信息修改，将课程重新设置为未审核，未发布
- 用户找回密码实现
- 试看视频功能实现
- 课程发布时载入缓存
- 提交审核时给课程列表检查是否有小节没有绑定课程，有的话不让审核
- Mp4VideoUtil、VideoUtil工具类优化

#### 前端

- 前端主页界面模仿中国大学mooc修改
- 视频转换加入除avi外其余视频转换
- 初始位置从机构管理修改为教务教学
- 课程管理界面加入清空选择器功能
- 课程预览模版修改
- 修复已知报错的BUG
- 删除课程时判断逻辑修改为只要不是上架课程均可删除
- 只需要验证到401状态码即跳转到登录页。用户登录、注册、修改密码后自动跳转到主页



### BUG修复

- 当在Minio检测到MD5相同时，判断为相同文件，直接跳过再次上传分块上传数据库等操作
- 多次发布相同课程没有做幂等，多次发布会有多条消息产生
- 加入课程时验证免费价格为0，收费价格不为0
- 新增课程后提交第一步再返回上一步，会导致重新提交一份新的课程信息，加入判断是否同一个新增逻辑，如果已经存在数据库则使用修改逻辑
- 修复上传视频后，"是否支持试学"部分设置失效



## IDEA

- 编码UTF-8

![图片1](img/图片1.png)

- 导包优化

![图片2](img/图片2.png)

- 提示忽略大小写

![图片3](img/图片3.png)

- 编译级别设置SDK为1.8

![image-20241030163400411](img/image-20241030163400411.png)



## Maven

- 一部分包可能因为版本问题，可能无法直接加载，可以的话直接将对应包加载到Maven文件夹中



## 前端

- 安装node.js，版本最好小于等于16，没有openssl安全证书错误

- 如果有node_modules
  - 在package.json中script的serve修改为：

    ```shell
    vue-cli-service serve
    ```
  
    PS:
  
    如果Node版本高于16，需要修改为：
  
    ```shell
    # 前一句话是忽略因为node版本大于17产生的证书错误设置
    set NODE_OPTIONS=--openssl-legacy-provider && vue-cli-service serve
    ```
  
    
  
  - 打开npm窗口点击serve运行



- 如果没有node_modules，用如下命令运行

```shell
npm install -g cnpm --registry=https://registry.npmmirror.com
cnpm i
npm run serve
```

需要看到网址才是正确



## ffmpeg

从https://ffbinaries.com/downloads下载window-64的exe放到ffmpeg文件夹中

并将nacos的media-service-dev.yaml配置改为对应exe地址



## 域名

在C:\Windows\System32\drivers\etc\host文件下加入如下配置完成域名映射，放到公网后可以去掉

```
127.0.0.1 www.kaizhi.edu.cn kaizhi.edu.cn ucenter.kaizhi.edu.cn teacher.kaizhi.edu.cn file.kaizhi.edu.cn
```

如果有使用代理，也需要绕过代理

```
www.kaizhi.edu.cn;kaizhi.edu.cn;ucenter.kaizhi.edu.cn;teacher.kaizhi.edu.cn;file.kaizhi.edu.cn
```



## 静态页面Nginx

下载nginx到对应文件夹，需要将配置文件改到类似nginx.conf，文件名按照自己路径命名

需要重启nginx可以使用如下命令：
```shell
nginx.exe -s reload
```

需要将nginx\static-portal\plugins.zip解压出来作为plugins文件夹



## 虚拟机

- 使用VMnet8的NAT模式，子网IP需要设置为192.168.101.0，子网掩码设置为255.255.255.0
- 密码：centos
- 启动docker

    ```shell
    systemctl start docker
    ```
  
    - 启动重启脚本
    
    ```shell
    sh /data/soft/restart.sh  
    ```
  
    - restart.sh内容如下：
    ```bash
    docker stop mysql
    docker stop nacos
    docker stop rabbitmq
    docker stop redis
    docker stop xxl-job-admin
    docker stop minio
    docker stop elasticsearch
    docker stop kibana
    # docker stop gogs
    
    docker start mysql
    docker start nacos
    docker start rabbitmq
    docker start redis
    docker start xxl-job-admin
    docker start minio
    docker start elasticsearch
  docker start kibana
    # docker start gogs
  ```
  
  
    - 查看状态
      
    ```shell
    docker ps
    ```
  
    - 一共有如下容器：
  
    1. xuxueli/xxl-job-admin:2.3.1
    2. minio/minio:RELEASE.2022-09-07T22-25-02Z
    3. redis:6.2.7
    4. elasticsearch:7.12.1
    5. rabbitmq:3.8.34
    6. nacos/nacos-server:1.4.1
    7. mysql:8.0.26
  
- 有时可能centos失灵，需要再次重启（原因可能是nacos与数据库相关联，数据库启动慢导致nacos启动可能出错）

```
docker restart nacos
```



### 数据库

- .\init\database\model是数据库表图形化界面
- 需要将.\init\database\*.sql均导入数据库

- 需要在代码中数据库地址修改为正确地址

-  http://192.168.101.65:3306 数据库账号密码： username: root; password: mysql



### Nacos

安装过程：

```
docker pull nacos/nacos-server:v2.3.2
```

使用以下命令启动：

```cmd
docker run -d --name nacos-new -p 8848:8848 -p 9848:9848 -p 9849:9848 -e MODE=standalone -v /data/soft/nacos-new/logs:/home/nacos/logs -v /data/soft/nacos-new/init.d/custom.properties:/home/nacos/init.d/custom.properties -v /data/soft/nacos-new/conf:/home/nacos/conf nacos/nacos-server-new:v2.3.2
```

其中/data/soft/nacos-new已经放在.\init\nacos配置\nacos-new

> 可能里面配置会有nacos-new的部分，需要全部改为nacos，需要去除new；以及8849改为8848和9849改为9848作者在更新时并没有删除旧的版本nacos，为了避免冲突加入的后缀new



- Nacos依赖数据库，需要先打开mysql容器，再打开Nacos
- 打开http://192.168.101.65:8848/nacos/#/login进入Nacos，账号密码均为nacos
- 将.\init\nacos\nacos_config_export.zip导入到nacos中



### 分布式文件管理系统Minio

- 创建mediafiles、viedo的bucket并设置成public
- 将minio内文件将压缩包作为文件夹上传

http://192.168.101.65:9001/login 账号密码均为minioadmin。



### XXL-JOB

- 下载位置：https://github.com/xuxueli/xxl-job

- 进入doc/db执行tables_xxl_job.sql新建数据库
- http://192.168.101.65:8088/
- 账号:admin 密码：123456
- 需要按照.\kaizhi-education\kaizhi-media\kaizhi-media-service\src\main\java\com\edu\kaizhi\media\service\jobhandler\VideoTask.java对应加入任务到执行器media-process-service



### Elasticsearch和kibana

- http://192.168.101.65:5601/
- [链接](https://blog.csdn.net/ThinkWon/article/details/122808762)安装Elasticsearch和kibana
- 如果已经有这两个镜像，报错:Kibana server is not ready yet，可以分别尝试如下办法并分配8G虚拟机内存和稍等片刻

```shell
1. 
curl -XDELETE localhost:9200/.kibana_task_manager_7.12.1_001
2. 
cd elasticsearch
docker-compose up -d
最后执行: 
docker restart kibana
docker restart elasticsearch
```

生成ElasticSearch搜索课程可以查看./ES创建索引.md，也可以执行XXL-JOB（因为sql的mq_message表中有课程记录）



### Redis

拉取：

```
docker pull redis:7.4.2
```

指定redis.conf 启动

```
docker run -p 6379:6379 --name redis-new -v /data/soft/redis-new/redis.conf:/etc/redis/redis.conf -v /data/soft/redis-new/data:/data -d redis:7.4.2 redis-server /etc/redis/redis.conf --appendonly yes
```

> 可能里面配置会有redis-new的部分，需要全部改为redis，需要去除new；以及6379改为6380，作者在更新时并没有删除旧的版本redis，为了避免冲突加入的后缀new

其中/data/soft/redis已经放在.\init\redis配置\redis



- 192.168.101.65:6379 密码redis



### RabbitMQ

- http://192.168.101.65:15672/   账号密码都是guest



## PO、Mapper生成器（可选）

- 在.\kaizhi-generator是可以生成PO类、Mapper接口和Mapper的xml文件，如果需要生成自己的PO类、Mapper接口和Mapper的xml文件，按如下步骤：
  - 删除.\kaizhi-generator\src\main\java\com\kaizhi\content文件夹
  - 修改.\kaizhi-generator\src\main\java\com\kaizhi\generator\ContentCodeGenerator.java文件的配置信息（数据库名字，账号，密码等）
  - 执行ContentCodeGenerator.java下Main方法生成新的content文件夹
- 这里是最新版的[generator](https://github.com/baomidou/generator/tree/develop)



## 真实课程下载（可选）

见getInfoFromChineseMooc的Readme.md



## 服务注册地址

| 服务名    | 端口  |
| --------- | ----- |
| content   | 63040 |
| system    | 63110 |
| auth      | 8160  |
| checkcode | 63075 |
| gateway   | 63010 |
| learning  | 63020 |
| media     | 63050 |
| orders    | 63030 |
| search    | 63080 |



## Tips

- 在使用时，message-sdk模块需要先编译安装才能被content、order、learning模块编译完成

- 每次重启后需要执行如下命令

  - 本地

    - 打开navicat，192.168.101.65密码mysql
  - 前端
  
    - 打开kaizhi-front，使用npm运行serve服务
    - 点进nginx.exe打开静态页面
  
  
  
  
  - 虚拟机中(个人虚拟机密码：centos)
  
    - 启动docker
  
    ```shell
    systemctl start docker
    ```
  
    - 启动重启脚本restart.sh
  
    ```shell
    sh /data/soft/restart.sh
    ```
    
    - 查看状态
    
    ```shell
    docker ps
    ```
    
    - 状态如下：
    ```bash
    [root@localhost ~]# docker ps
    CONTAINER ID        IMAGE                                      COMMAND                  CREATED             STATUS              PORTS                                                                                              NAMES
    1af206612ed1        minio/minio:RELEASE.2022-09-07T22-25-02Z   "/usr/bin/docker-ent…"   2 years ago         Up About an hour    0.0.0.0:9000-9001->9000-9001/tcp                                                                   minio
    ca6146074a33        elasticsearch:7.12.1                       "/bin/tini -- /usr/l…"   2 years ago         Up About an hour    0.0.0.0:9200->9200/tcp, 0.0.0.0:9300->9300/tcp                                                     elasticsearch
    87a556e98a6c        rabbitmq:3.8.34                            "docker-entrypoint.s…"   2 years ago         Up About an hour    4369/tcp, 0.0.0.0:5672->5672/tcp, 5671/tcp, 15691-15692/tcp, 25672/tcp, 0.0.0.0:15672->15672/tcp   rabbitmq
    56868b26b49c        nacos/nacos-server:1.4.1                   "bin/docker-startup.…"   2 years ago         Up 11 minutes       0.0.0.0:8848->8848/tcp                                                                             nacos
    fb02620c15cc        mysql:8.0.26                               "docker-entrypoint.s…"   2 years ago         Up 11 minutes       0.0.0.0:3306->3306/tcp, 33060/tcp                                                                  mysql
                                                                               nacos
    ```






## TODO

- 太多无用输出，8效率低下，项目完成时尽量尝试换为21，虚拟机也是尽量换成最新版本
- 用户权限现在在21下将会失效，同事查询太多数据库，放入redis，使用用户权限分配
- 常量移除到对应constant文件，路径后续统一抽取到父路径下（token-config的秘钥可以统一配置）
- 机构传太多视频信息可以加入收费功能
- rabbitMQ消息队列代替content的消息传递？
- 课程修改后，需要将师资、大纲等也修改课程发布状态，但是修改师资和大纲又修改课程信息，耦合度有点高，其实最好做法应该单独一张表记录是否发布、审核等字段
- 课程发布时直接把PO模型类拷到feignclient，有没有除了包依赖更好的办法实现
- 部署部分
- 给视频加入弹幕
- 给课程加入排行榜
- Redis优化存储的JWT令牌
- 令牌自动过期刷新使用webClient成功，但是使用feign却发生解析错误，后续解决，可能无法用上过期刷新令牌，因为需要修改前端，保存refresh_token和新的access_token
- 在修改前后需要让缓存失效
- 课程发布时课程搜索索引同步可以使用Canal去实现
- Redis秒杀课程、发布笔记、好友关注、用户签到
- 优化swagger到knife4j，找到为什么别的服务无法注册到swagger
- AOP缓存优化？每次得到值后放入内容，在进入方法前判断是否内存有值
- 限制老师和学生进入后台界面
- 迁移Html页面到vue
- 加入ZK，MongoDB
- auth下info服务失效
- knife4j有些会被security拦截

换皮：知识付费问答平台

- **特点**：结合短视频形式的问答，用户付费获得专业解答。
- 盈利模式
  - 按次购买解答视频。
  - 高端专家咨询套餐。

CCTALK的学习群功能，并且加入大模型消息支持



## 暂时无法解决但是发现的BUG

- 前端关于包的警告

- 新增课程时，先提交课程图片再进行下一步后，再返回上一步会发现图片消失（似乎是前端URL前缀修改了，提交后图片和从另一个位置返回的URL不一致）

  
