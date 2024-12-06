import re
import os
import requests
import random
import time
import urllib3
from bs4 import BeautifulSoup
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
from fake_useragent import UserAgent

# 随机生成的User-Agent
ua = UserAgent()

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


def get_html_file(html, wait_info):
    try:
        # Windows系统，指定你的 chromedriver.exe 路径
        driver_path = './chromedriver.exe'
        service = Service(executable_path=driver_path)
        driver = webdriver.Chrome(service=service)
        driver.get(html)

        try:
            # 最多等待10秒，直到特定元素可见
            WebDriverWait(driver, 10).until(EC.visibility_of_element_located((By.CLASS_NAME, wait_info)))
        except Exception as e:
            print(f'Failed to load {html}: {e}')
            return
        # while driver.execute_script('return document.readyState') != 'complete':
        #     time.sleep(1)
        html_content = driver.page_source
        driver.quit()
        return html_content
    except requests.RequestException as e:
        print(f'Failed to download {html}: {e}')


def get_people_info(body_soup):
    study = body_soup.find_all('div', class_='detailInfo')[0].find_all('p')[1].get_text(strip=True)
    if study == '无':
        people = "所有人"
    else:
        people = "学过" + study + "的人"
    return people


def get_teacher_info(body_soup):
    teacher_list = body_soup.find_all('div', class_='teacherInfo')[0].find_all('div', class_='list')

    teachers_info = ""
    index = 0
    # 遍历所有教师信息，提取每个教师的姓名、职称、单位和简介
    for teacher in teacher_list:
        head_img_div = teacher.find('div', class_='head_img')
        style = head_img_div['style']
        image_url = re.search(r'url\("([^"]+)"\)', style).group(1)
        # 提取姓名
        name = teacher.find('p', class_='teacher_name').get_text(strip=True)

        # 提取单位
        org_name = teacher.find('p', class_='teacher_org').get_text(strip=True)

        # 提取职称
        job_title = teacher.find('p', class_='teacher_job').get_text(strip=True)

        # 提取个人简介
        info = teacher.find('p', class_='teacher_info').get_text(strip=True).replace('\n', ' ').replace('\r',
                                                                                                        ' ').replace(
            '\xa0', ' ')

        # 将提取到的信息存储为一个字典
        teachers_info += name + "==" + image_url + "==" + org_name + "==" + job_title + "==" + info + "=*="
        index += 1
        if index > 2:
            break

    return teachers_info


def get_dict_info(body_soup):
    structure = body_soup.find_all('div', class_='structure')[0]
    chapters = structure.find_all('div', class_='chapter pointer')

    # 用来保存最终的目录结构
    directory = ""
    index = 0

    # 遍历每个大章节
    for chapter in chapters:
        # 提取大章节标题
        chapter_name = chapter.find('span', class_='name bm ellipsis').text.strip()

        # 获取对应的小章节（在sectionlist标签下）
        sections = chapter.find_next('div', class_='sectionlist').find_all('div', class_='section ellipsis point')

        # 提取每个小章节的标题
        section_names = [section.find('span', class_='name').text.strip() for section in sections]

        # 保存大章节和小章节信息
        directory += chapter_name + "==" + f"==".join([f" {name}" for name in section_names]) + "=*="
        index += 1
        if index > 2:
            break
    return directory


def use_urls_get_img(url, folder, name):
    # 爬取每个URL的图片
    # 设置请求头
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


if __name__ == "__main__":
    course = 'courses.txt'
    minio = 'minio.txt'
    with open(course, 'r', encoding='utf-8') as file:
        course_content = file.read()

    minio_content = None
    add_minio_files = True
    minio_id_name_map = {}
    if os.path.exists(minio):
        with open(minio, 'r', encoding='utf-8') as file:
            minio_content = file.read()
            minio_lines = minio_content.split('\n')
            minio_index = 1
            for line in minio_lines:
                id_name = line.split(' ')
                minio_id_name_map[minio_index] = id_name
                minio_index += 1


    lines = course_content.split('\n')
    processed_lines = []

    result_folder = 'img'

    index = 1
    teacher_index = 1
    course_teacher_index = 1
    chapter_index = 1
    teachplan_media_index = 1
    base_sqls = []
    market_sqls = []
    teacher_sqls = []
    chapter_sqls = []
    course_teacher_sqls = []
    teachplan_media_sqls = []
    teacher_map = {}
    for line in lines:
        if line == '':
            continue
        # 删除方括号及其中的内容
        cleaned_line = re.sub(r'\[.*?\]', '', line).strip()
        original = list(filter(lambda x: x != '', cleaned_line.split('=*=')))
        name = original[0]
        html = original[-1]
        describe = " ".join(original[1:-1])
        if (html.startswith('http')):
            print("正在处理第" + str(index) + "个课程：" + name + " " + describe + " " + html)
            html_content = get_html_file(html, 'teacher_info')
            soup = BeautifulSoup(html_content, 'html.parser')
            body_soup = BeautifulSoup(str(soup.body), 'html.parser')
            people = get_people_info(body_soup)
            teachers_info = get_teacher_info(body_soup)
            directory = get_dict_info(body_soup)
            # company_random_code = random.choice(['1232141425', '1'])
            company_random_code = '1232141425'
            random_all = 14
            random_list = [10, 8, 8, 9, 7, 9, 19, 6, 11, 5, 10, 6, 9, 10]
            big_category = random.randint(1, random_all)
            small_category = random.randint(1, random_list[big_category - 1])
            big_category_str = '1-' + str(big_category)
            small_category_str = big_category_str + '-' + str(small_category)

            base_sql = "INSERT INTO `course_base` VALUES (" + str(
                index) + ", '" + company_random_code + "', NULL, '" + name + "', '" + people + "', '一流课程', '" + big_category_str + "', '" + small_category_str + "', '204001', '200002', '" + describe + "', '', '2024-12-03 17:22:19', '2024-12-03 17:22:19', NULL, NULL, '202002', '203001');"
            base_sqls.append(base_sql)

            ad_random_code = random.choice(['800001', '800002'])
            original_price = random.randint(20, 200)
            now_price = random.randint(1, 20)
            price_random_code = random.choice(['201000', '201001'])
            if price_random_code == '201000':
                now_price = 0
            market_sql = "INSERT INTO `course_market` VALUES (" + str(
                index) + ", '" + price_random_code + "', '" + str(now_price) + "', '" + str(
                original_price) + "', '" + ad_random_code + "', '', '', '', 365);"
            market_sqls.append(market_sql)

            for teacher_info in teachers_info.split('=*='):
                if teacher_info == '':
                    continue
                teacher = teacher_info.split('==')
                teacher = list(filter(lambda x: x != '', teacher))
                teacher_name = teacher[0]
                if teacher_name in teacher_map:
                    now_teacher_index = teacher_map[teacher_name]
                    course_teacher_sql = "INSERT INTO `course_teacher` VALUES (" + str(
                        course_teacher_index) + ", '" + str(index) + "', '" + str(now_teacher_index) + "');"
                    course_teacher_sqls.append(course_teacher_sql)
                    course_teacher_index += 1
                else:
                    teacher_map[teacher_name] = teacher_index
                    teacher_url = teacher[1]
                    if teacher_url is not None:
                        use_urls_get_img(teacher_url, result_folder, teacher_name)
                    teacher_desc = teacher[-1]
                    teacher_pos = " ".join(teacher[2:-1])

                    teacher_sql = "INSERT INTO `teacher` VALUES (" + str(
                        teacher_index) + ", '" + company_random_code + "', '" + teacher_name + "', '" + teacher_pos + "', '" + teacher_desc + "', '', '2024-12-03 17:22:19');"
                    teacher_sqls.append(teacher_sql)
                    course_teacher_sql = "INSERT INTO `course_teacher` VALUES (" + str(
                        course_teacher_index) + ", '" + str(index) + "', '" + str(teacher_index) + "');"
                    course_teacher_sqls.append(course_teacher_sql)
                    teacher_index += 1
                    course_teacher_index += 1

            big_order_by = 1
            small_order_by = 1
            big_num = 0
            for chapter in directory.split('=*=')[0: -1]:
                all_chapter = chapter.split('==')
                chapter_name = all_chapter[0].strip()
                if chapter_name == '':
                    continue
                # INSERT INTO `teachplan` VALUES (336, '计算机的概念', 335, 2, NULL, NULL, NULL, NULL, NULL, 1, 141, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
                chapter_sql = "INSERT INTO `teachplan` VALUES (" + str(
                    chapter_index) + ", '" + chapter_name + "', 0, 1, NULL, NULL, NULL, NULL, NULL, '" + str(
                    big_order_by) + "', " + str(index) + ", NULL, 1, '0', '2024-11-28 23:18:50', NULL);"
                big_index = chapter_index
                chapter_sqls.append(chapter_sql)
                chapter_index += 1
                big_order_by += 1
                num = 0
                for small_chapter in all_chapter[1:]:
                    small_chapter_name = small_chapter.strip()
                    if small_chapter_name == '':
                        continue
                    chapter_sql = "INSERT INTO `teachplan` VALUES (" + str(
                        chapter_index) + ", '" + small_chapter_name + "', " + str(
                        big_index) + ", 2, NULL, NULL, NULL, NULL, NULL, '" + str(small_order_by) + "', " + str(
                        index) + ", NULL, 1, '0', '2024-11-28 23:18:50', NULL);"
                    chapter_sqls.append(chapter_sql)

                    if add_minio_files:
                        id_name = minio_id_name_map[random.randint(1, len(minio_id_name_map))]
                        id = id_name[0]
                        name = id_name[-1]
                        teachplan_media_sql = "INSERT INTO `teachplan_media` VALUES (" + str(teachplan_media_index) + ", '" + id + "', " + str(chapter_index) + ", " + str(index) + ", '" + name + "', '2024-12-03 17:22:19', NULL, NULL);"
                        teachplan_media_sqls.append(teachplan_media_sql)
                        teachplan_media_index += 1

                    chapter_index += 1
                    small_order_by += 1
                    num += 1
                    if num > 2:
                        break
                small_order_by = 1
                big_num += 1
                if big_num > 2:
                    break
        index += 1

        folder = 'sql'
        if not os.path.exists(folder):
            os.makedirs(folder)

        path = os.path.join(folder, 'base.sql')
        with open(path, 'w', encoding='utf-8') as f:
            for base_sql in base_sqls:
                f.write(base_sql + '\n')
        
        path = os.path.join(folder, 'market.sql')
        with open(path, 'w', encoding='utf-8') as f:
            for market_sql in market_sqls:
                f.write(market_sql + '\n')
        
        path = os.path.join(folder, 'teacher.sql')
        with open(path, 'w', encoding='utf-8') as f:
            for teacher_sql in teacher_sqls:
                f.write(teacher_sql + '\n')
        
        path = os.path.join(folder, 'course_teacher.sql')
        with open(path, 'w', encoding='utf-8') as f:
            for course_teacher_sql in course_teacher_sqls:
                f.write(course_teacher_sql + '\n')
        
        path = os.path.join(folder, 'chapter.sql')
        with open(path, 'w', encoding='utf-8') as f:
            for chapter_sql in chapter_sqls:
                f.write(chapter_sql + '\n')

        if add_minio_files:
            path = os.path.join(folder, 'teachplan_media.sql')
            with open(path, 'w', encoding='utf-8') as f:
                for teachplan_media_sql in teachplan_media_sqls:
                    f.write(teachplan_media_sql + '\n')


