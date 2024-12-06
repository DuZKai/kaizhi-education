# Readme

**主要针对需要真实数据的部分，选择学堂真实数据下载**

需要下载自己谷歌对应版本的驱动ChromeDriver，下载地址：[http://chromedriver.storage.googleapis.com/index.html](http://chromedriver.storage.googleapis.com/index.html)

下载后解压，将chromedriver.exe放到当前目录即可

如果不想手动绑定课程视频和课程小节部分，可以加入minio.txt文件到当前目录，格式如下：

```txt
media_id name
3aad1f3480ad0725f2a31e5127edbc6a 1.mp4
```

**需要安装的库**

```bash
pip install selenium
pip install beautifulsoup4
pip install requests
pip install urllib3
pip install fake_useragent
```

按照顺序执行：courseInfo.py -> detail.py

建议不要过于运行长时间，因为可能会导致IP被封（作者只下载50条数据）