# 楷智教育

## 现有功能实现

- 



## 实现个性化功能

### 大功能

- 



### 小功能

- 视频上传分块信息超时残余部分用XXL-JOB删除
- 视频线程处理中任务补偿机制（超过执行时间释放线程锁）
- 课程计划删除、排序实现
- 加入JSR303校验的师资管理增删改查
- 删除课程实现、解绑媒资实现

- 课程管理界面加入清空选择器功能

- 视频转换加入除avi外其余视频转换




### BUG修复

- 当在Minio检测到MD5相同时，判断为相同文件，直接跳过再次上传分块上传数据库等操作



## IDEA

- 编码UTF-8
- 导包优化
- 提示忽略大小写
- 编译级别设置SDK为1.8



## Maven

- 一部分包可能因为版本问题，可能无法直接加载，可以的话直接将对应包加载到Maven文件夹中



## 前端

- 安装node.js，版本最好小于等于16，没有openssl安全证书错误
- 如果有node_modules
  - 在package.json中script的serve修改为：

    ```shell
    # 前一句话是忽略因为node版本大于17产生的证书错误设置
    set NODE_OPTIONS=--openssl-legacy-provider && vue-cli-service serve
    ```

  - 打开npm窗口点击serve运行



- 如果没有node_modules，用如下命令运行

```shell
npm install -g cnpm --registry=https://registry.npm.taobao.org
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



## 虚拟机

- 使用VMnet8的NAT模式，子网IP需要设置为192.168.101.0，子网掩码设置为255.255.255.0
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
    # docker stop gogs
    
    docker start mysql
    docker start nacos
    docker start rabbitmq
    docker start redis
    docker start xxl-job-admin
    docker start minio
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



### 数据库

- .\init\database\model是数据库表图形化界面
- 需要将.\init\database\*.sql均导入数据库

- 需要在代码中数据库地址修改为正确地址



### Nacos

- Nacos依赖数据库，需要先打开mysql容器，再打开Nacos
- 打开http://192.168.101.65:8848/nacos/#/login进入Nacos，账号密码均为nacos
- 将.\init\nacos\nacos_config_export.zip导入到nacos中



### 分布式文件管理系统Minio

- 创建mediafiles、viedo的bucket并设置成public

账号密码均为minioadmin。



### XXL-JOB

- 下载位置：https://github.com/xuxueli/xxl-job

- 进入doc/db执行tables_xxl_job.sql新建数据库
- 账号:admin 密码：123456
- 需要按照.\kaizhi-education\kaizhi-media\kaizhi-media-service\src\main\java\com\edu\kaizhi\media\service\jobhandler\VideoTask.java对应加入任务到执行器media-process-service



## PO、Mapper生成器（可选）

- 在.\kaizhi-generator是可以生成PO类、Mapper接口和Mapper的xml文件，如果需要生成自己的PO类、Mapper接口和Mapper的xml文件，按如下步骤：
  - 删除.\kaizhi-generator\src\main\java\com\kaizhi\content文件夹
  - 修改.\kaizhi-generator\src\main\java\com\kaizhi\generator\ContentCodeGenerator.java文件的配置信息（数据库名字，账号，密码等）
  - 执行ContentCodeGenerator.java下Main方法生成新的content文件夹
- 这里是最新版的[generator](https://github.com/baomidou/generator/tree/develop)



## Tips

- 每次重启后需要执行如下命令

  - 本地

    - 打开navicat，192.168.101.65密码mysql
  - 前端
  
    - 打开kaizhi-front，使用npm运行serve服务
  
  

  
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
- 清洗虚拟机Nacos不同配置Group
- 常量移除到对应constant文件，路径后续统一抽取到父路径下
- 机构传太多视频信息可以加入收费功能
- 清除测试文件
- rabbitMQ消息队列代替sdk包?
- 多次发布同门课程没有做幂等，需要把addMessage那里做一个saveOrUpdate?
- 将content的message-sdk部分抽取出成为单独一个模块
- content-service中pom包因为不会传递到api,所以api下很多重复包，后续找到解决办法
