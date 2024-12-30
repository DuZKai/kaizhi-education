from faker import Faker
import random
import os
from datetime import datetime, timedelta


def generate_choose_course_sqls(course_info):
    choose_course_sqls = []
    course_table_sqls = []
    choose_course_sql = """
    DROP TABLE IF EXISTS `choose_course`;
    CREATE TABLE `choose_course` (
      `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
      `course_id` bigint NOT NULL COMMENT '课程id',
      `course_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程名称',
      `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
      `company_id` bigint NOT NULL COMMENT '机构id',
      `order_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选课类型',
      `create_date` datetime NOT NULL COMMENT '添加时间',
      `course_price` float(10,2) NOT NULL COMMENT '课程价格',
      `valid_days` int NOT NULL COMMENT '课程有效期(天)',
      `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选课状态',
      `validtime_start` datetime NOT NULL COMMENT '开始服务时间',
      `validtime_end` datetime NOT NULL COMMENT '结束服务时间',
      `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
    """
    course_table_sql = """
    DROP TABLE IF EXISTS `course_tables`;
    CREATE TABLE `course_tables` (
      `id` bigint NOT NULL AUTO_INCREMENT,
      `choose_course_id` bigint NOT NULL COMMENT '选课记录id',
      `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
      `course_id` bigint NOT NULL COMMENT '课程id',
      `company_id` bigint NOT NULL COMMENT '机构id',
      `course_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程名称',
      `course_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '课程类型',
      `create_date` datetime NOT NULL COMMENT '添加时间',
      `validtime_start` datetime DEFAULT NULL COMMENT '开始服务时间',
      `validtime_end` datetime NOT NULL COMMENT '到期时间',
      `update_date` datetime DEFAULT NULL COMMENT '更新时间',
      `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
      PRIMARY KEY (`id`) USING BTREE,
      UNIQUE KEY `course_tables_unique` (`user_id`,`course_id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
    """

    choose_course_sqls.append(choose_course_sql)
    course_table_sqls.append(course_table_sql)

    choose_course_sql_template = """
    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES ({id}, {course_id}, '{course_name}', '{user_id}', 1232141425, '{order_type}', '{create_date}', {course_price}, 365, '701001', '{validtime_start}', '{validtime_end}', '{remarks}');
    """
    course_table_sql_template = """
    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES ({id}, {choose_course_id}, '{user_id}', {course_id}, 1232141425, '{course_name}', '{course_type}', '{create_date}', '{validtime_start}', '{validtime_end}', '{update_date}', '{remarks}');
    """

    id = 1
    for index, info in enumerate(course_info):
        user_set = {}

        course_price = info[18]
        if course_price == 0 or course_price == "0":
            order_type = "700001"
        else:
            order_type = "700002"

        user_len = random.randint(1, 50)
        for _ in range(user_len):
            user_id = random.randint(13, 512)
            if user_id not in user_set:
                user_set[user_id] = 1
            else:
                continue

            # 当前时间
            create_date = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            validtime_start = create_date
            # 加一年
            validtime_end = (datetime.now() + timedelta(days=365)).strftime('%Y-%m-%d %H:%M:%S')

            choose_course_sql = choose_course_sql_template.format(
                id=id,
                course_id=info[0],
                course_name=info[2],
                user_id=user_id,
                order_type=order_type,
                create_date=create_date,
                course_price=course_price,
                validtime_start=validtime_start,
                validtime_end=validtime_end,
                remarks="",
            )
            course_table_sql = course_table_sql_template.format(
                id=id,
                choose_course_id=id,
                user_id=user_id,
                course_id=info[0],
                course_name=info[2],
                course_type=order_type,
                create_date=create_date,
                validtime_start=validtime_start,
                validtime_end=validtime_end,
                update_date=create_date,
                remarks="",
            )
            id += 1
            choose_course_sqls.append(choose_course_sql)
            course_table_sqls.append(course_table_sql)
    return choose_course_sqls, course_table_sqls


if __name__ == "__main__":
    dict = {}
    # 全部保存到一个列表中
    course_info = []

    with open("now_course.txt", 'r', encoding='utf-8') as f:
        lines = f.readlines()
        for line in lines:
            detail = line.strip().split("\"")
            detail = [x for x in detail if x != "" and x != " "]
            course_info.append(detail)

    # 将第一列作为id值，相同id列表合并为一行
    course_dict = {}
    for info in course_info:
        if info[0] not in course_dict:
            course_dict[info[0]] = []
        course_dict[info[0]].extend(info)

    course_info = [v for k, v in course_dict.items()]

    choose_course_sqls, course_table_sqls = generate_choose_course_sqls(course_info)

    folder = 'sql'
    path = os.path.join(folder, 'choose_course.sql')
    with open(path, 'w', encoding='utf-8') as f:
        for sql in choose_course_sqls:
            f.write(sql + '\n')

    path = os.path.join(folder, 'course_table.sql')
    with open(path, 'w', encoding='utf-8') as f:
        for sql in course_table_sqls:
            f.write(sql + '\n')
    print("Done")
