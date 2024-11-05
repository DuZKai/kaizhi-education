# 楷智教育



## 实现个性化功能

### 大功能

- 



### 小功能

- 删除课程计划实现、课程计划排序实现
- 加入JSR303校验的师资管理增删改查

- 课程管理界面加入清空选择器功能



## IDEA

- 编码UTF-8
- 导包优化
- 提示忽略大小写
- 编译级别设置SDK为1.8



## Maven

- 一部分包可能因为版本问题，可能无法直接加载，可以的话直接将对应包加载到Maven文件夹中



## 数据库

- .\init\database\model是数据库表图形化界面
- 需要将.\init\database\*.sql均导入数据库

- 需要在文件数据库地址修改为正确地址



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





## PO、Mapper生成器（可选）

- 在.\kaizhi-generator是可以生成PO类、Mapper接口和Mapper的xml文件，如果需要生成自己的PO类、Mapper接口和Mapper的xml文件，按如下步骤：
  - 删除.\kaizhi-generator\src\main\java\com\kaizhi\content文件夹
  - 修改.\kaizhi-generator\src\main\java\com\kaizhi\generator\ContentCodeGenerator.java文件的配置信息（数据库名字，账号，密码等）
  - 执行ContentCodeGenerator.java下Main方法生成新的content文件夹
- 这里是最新版的[generator](https://github.com/baomidou/generator/tree/develop)



## Tips

- 每次重启后需要执行如下命令

  - 本地

    - 启动mysql，并且登录mysql

    ```
    net start mysql
    mysql -uroot -p # 输入个人mysql密码：1234
    ```

    - 打开navicat，localhost密码1234

    - 进入项目文件夹打开前端页面启动器：nginx.exe

  - 前端

    - 打开kaizhi-front，使用npm运行serve服务
  
  
  
  
  - 虚拟机中(个人虚拟机密码：centos)
  
    - 启动docker
  
    ```shell
    systemctl start docker
    ```
  
    - 启动重启脚本
  
    ```shell
    sh /data/soft/restart.sh
    ```
  
    - 查看状态
    ```shell
    docker ps
    ```
  




## TODO

- 太多无用输出，8效率低下，项目完成时尽量尝试换为21，虚拟机也是尽量换成最新版本
