import re
import os
import requests
import random
import time
import urllib3
import string
from bs4 import BeautifulSoup
from detail import use_urls_get_img
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
from fake_useragent import UserAgent
from selenium.webdriver.common.action_chains import ActionChains

# 随机生成的User-Agent
ua = UserAgent()

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


# 解析HTML内容并获取图片和文本
def parse_html(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    soup = BeautifulSoup(str(soup.body), 'html.parser')
    soup = BeautifulSoup(str(soup.find_all('div', class_='result')[0]), 'html.parser')
    # 获取所有的图片链接
    images = soup.find_all('img')
    img_urls = [img['src'] for img in images if img.get('src') and 'icon' not in img.get('class')]

    # 获取文本信息
    course_info = []
    result_list = soup.find_all('div', class_='resultListCon')

    for result in result_list:
        # 课程名称
        title = result.find('p', class_='title').get_text(strip=True)

        # 课程简介
        description = result.find('p', class_='info').get_text(strip=True).replace('\n', ' ').replace('\r', ' ').replace('\xa0', ' ')
        description = re.sub(r'\s+', ' ', description)

        # 将信息拼接为文本
        # course_info.append(f"{title} [{teacher}] {description}")
        course_info.append(f"{title}=*={description}")

    return img_urls, course_info


# 保存文本信息
def save_text(course_info, save_path='courses.txt'):
    with open(save_path, 'a+', encoding='utf-8') as f:
        for info in course_info:
            f.write(info + '\n')
    print(f"课程信息已保存到: {save_path}")


def generate_random_filename(folder, extension='png', length=8):
    while True:
        # 生成随机文件名
        random_name = ''.join(random.choices(string.ascii_letters + string.digits, k=length)) + '.' + extension
        file_path = os.path.join(folder, random_name)
        # 如果文件名不存在，则返回该文件名
        if not os.path.exists(file_path):
            return random_name


def get_html_file_and_click(html, wait_info):
    urls = []
    try:
        # Windows系统，指定你的 chromedriver.exe 路径
        driver_path = './chromedriver.exe'
        service = Service(executable_path=driver_path)
        driver = webdriver.Chrome(service=service)
        driver.get(html)
        # 等待初始加载完成
        time.sleep(5)  # 等待 5 秒（根据实际情况调整时间）

        # 刷新网页
        driver.refresh()

        # 等待刷新后加载完成
        time.sleep(5)  # 再次等待，确保页面加载完成

        try:
            # 最多等待10秒，直到特定元素可见
            WebDriverWait(driver, 10).until(EC.visibility_of_element_located((By.CLASS_NAME, wait_info)))
        except Exception as e:
            print(f'Failed to load {html}: {e}')
            return
        # while driver.execute_script('return document.readyState') != 'complete':
        #     time.sleep(1)
        html_content = driver.page_source

        elements = driver.find_elements(By.CSS_SELECTOR, "div.resultListCon")

        # 遍历并点击每个元素
        for index, element in enumerate(elements):
            try:
                # 重新获取当前元素（避免 DOM 变化）
                element = WebDriverWait(driver, 10).until(
                    EC.presence_of_all_elements_located((By.CSS_SELECTOR, "div.resultListCon"))
                )[index]

                # 滚动到元素位置（确保可见）
                ActionChains(driver).move_to_element(element).perform()

                # 点击元素
                element.click()
                # 等待页面加载完成（可根据具体页面调整）
                WebDriverWait(driver, 10).until(
                    EC.url_changes(driver.current_url)
                )

                # 获取当前页面 URL
                current_url = driver.current_url
                urls.append(current_url)

                driver.back()
                WebDriverWait(driver, 10).until(
                    EC.presence_of_all_elements_located((By.CSS_SELECTOR, "div.resultListCon"))
                )
                time.sleep(random.randint(2, 5))
            except Exception as e:
                print(f"Failed to click element {index + 1}: {e}")

        driver.quit()
        return html_content, urls
    except requests.RequestException as e:
        print(f'Failed to download {html}: {e}')


if __name__ == "__main__":

    html = 'https://next.xuetangx.com/search?query=&org=&classify=1&type=&status=&page='

    # 读取文件内容
    for i in range(5):
        html_content, detail_urls = get_html_file_and_click(html + str(i + 1), 'content')

        img_urls, course_info = parse_html(html_content)

        result_folder = 'img'

        if not os.path.exists(result_folder):
            os.makedirs(result_folder)

        assert len(detail_urls) == len(course_info), '数量不一致'
        for index in range(len(course_info)):
            course_info[index] += "=*=" + detail_urls[index]

        for url, content in zip(img_urls, course_info):
            name = content.split("=*=")[0]
            use_urls_get_img(url, result_folder, name)

        save_text(course_info)