# 楷智教育

## Maven

- 一部分包可能因为版本问题，可能无法直接加载，可以的话直接将对应包加载到Maven文件夹中



## 数据库

- .\init\database\model是数据库表图形化界面
- 需要将.\init\database\*.sql均导入数据库

- 需要在文件数据库地址修改为正确地址



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

      

  - 虚拟机中(个人虚拟机密码：123456)

    - redis

    ```
    cd /data1/redis-x  # 进入redis安装目录
    redis-server redis.conf  # 启动
    ```



## TODO

- 太多无用输出，8效率低下，项目完成时尽量尝试换为21
