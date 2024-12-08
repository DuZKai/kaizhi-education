import random
import os
import requests
import random
import time
from datetime import datetime
from fake_useragent import UserAgent

def random_time():
    # 生成随机年份、月份、日期
    year = random.randint(2020, 2024)  # 随机选择年份
    month = random.randint(1, 12)  # 随机选择月份
    day = random.randint(1, 28)  # 随机选择日期，避免跨月的问题

    # 生成随机小时、分钟、秒
    hour = random.randint(0, 23)  # 随机选择小时
    minute = random.randint(0, 59)  # 随机选择分钟
    second = random.randint(0, 59)  # 随机选择秒

    # 创建一个 datetime 对象
    random_time = datetime(year, month, day, hour, minute, second)

    # 格式化为字符串
    random_time_str = random_time.strftime('%Y-%m-%d %H:%M:%S')
    return random_time_str


def use_urls_get_img(url, folder, name):
    # 爬取每个URL的图片
    # 设置请求头

    if not os.path.exists(folder):
        os.makedirs(folder)

    # 随机生成的User-Agent
    ua = UserAgent()
    headers = {
        'User-Agent': ua.random,  # 随机生成的User-Agent
        'Accept': '*/*',
        'Cookie': 'Hm_lvt_79553a60bd718d01faaddff15f7c9fb6=1728958446; HMACCOUNT=017A61C65F56E00A; Hm_lpvt_79553a60bd718d01faaddff15f7c9fb6=1728980736'
    }
    proxies = {
        'http': 'http://127.0.0.1:7897',
        'https': 'http://127.0.0.1:7897',
    }

    try:
        response = requests.get(url, headers=headers, proxies=proxies, timeout=10, verify=False)
        response.raise_for_status()  # 检查请求是否成功

        # 从URL中提取图片文件名
        # filename = url.split('/')[-1]
        folder_file_name = os.path.join(folder, name + '.png')

        # 保存图片
        with open(folder_file_name, 'wb') as f:
            f.write(response.content)
        print(f'Downloaded {url} to {folder_file_name}')

        sleep_time = random.uniform(0, 2)
        time.sleep(sleep_time)
    except requests.RequestException as e:
        print(f'Failed to download {url}: {e}')

