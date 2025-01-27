import bcrypt
import random
import os
from util import random_time


def get_password(password="111111"):
    # 生成 salt 和 hash
    salt = bcrypt.gensalt()
    return bcrypt.hashpw(password.encode('utf-8'), salt).decode()


def get_user_sql():
    # 输入的密码
    original_password = "111111"
    sql_name = 'kaizhi_user'
    user_index = 1
    user_sqls = []
    passwords = []

    start_sql_index = {}
    keep = True
    for username, name in zip(['super', 'admin'], ['超级管理员', '系统管理员']):
        password = get_password(original_password)
        passwords.append(password)
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(
            user_index) + "', '" + username + "', '" + password + "', NULL, NULL, NULL, '" + name + "', NULL, NULL, '101003', NULL, '1', NULL, NULL, NULL, '1', '" + time + "', NULL);"
        user_sqls.append(sql)
        start_sql_index[username] = user_index
        user_index += 1

    # 教师
    teacher_index = 1
    keep = True
    for teacher_name in ['陈', '王', '林', '张', '李', '叶', '郑', '吴', '徐', '刘']:

        password = get_password(original_password)
        passwords.append(password)
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(user_index) + "', 'teacher" + str(
            teacher_index) + "', '" + password + "', NULL, NULL, NULL, '" + teacher_name + "老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '" + time + "', NULL);"
        user_sqls.append(sql)
        if keep:
            start_sql_index['teacher'] = user_index
            keep = False

        user_index += 1
        teacher_index += 1

    # 学生
    keep = True
    for student_index in range(1, 501):
        password = passwords[random.randint(0, len(passwords) - 1)]
        sex = random.choice(['1', '2'])
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(user_index) + "', 'student" + str(
            student_index) + "', '" + password + "', NULL, NULL, '学生" + str(student_index) + "', '学生" + str(
            student_index) + "', NULL, NULL, '101001', NULL, '" + sex + "', NULL, NULL, NULL, '1', '" + time + "', NULL);"
        user_sqls.append(sql)
        if keep:
            start_sql_index['student'] = user_index
            keep = False
        user_index += 1

    start_sql_index['end'] = user_index
    return user_sqls, start_sql_index


def get_company_user_sql(teacher_sql_index):
    sql_name = "kaizhi_company_user"
    company_user_sqls = []
    company_user_index = 1
    for index in teacher_sql_index:
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(company_user_index) + "', '1232141425', '" + str(
            index) + "');"
        company_user_sqls.append(sql)
        company_user_index += 1
    return company_user_sqls


def get_user_role(start_sql_index):
    user_role_index = 1
    sql_name = "kaizhi_user_role"
    user_role_sqls = []
    range_super = range(start_sql_index.get('super'), start_sql_index.get('admin'))
    range_admin = range(start_sql_index.get('admin'), start_sql_index.get('teacher'))
    range_teacher = range(start_sql_index.get('teacher'), start_sql_index.get('student'))
    range_student = range(start_sql_index.get('student'), start_sql_index.get('end') + 1)
    for index in range_super:
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(user_role_index) + "', '" + str(
            index) + "', '8', '" + time + "', NULL);"
        user_role_sqls.append(sql)
        user_role_index += 1

    for index in range_admin:
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(user_role_index) + "', '" + str(
            index) + "', '6', '" + time + "', '超级管理员');"
        user_role_sqls.append(sql)
        user_role_index += 1

    for index in range_teacher:
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(user_role_index) + "', '" + str(
            index) + "', '18', '" + time + "', '系统管理员');"
        user_role_sqls.append(sql)
        user_role_index += 1

    for index in range_student:
        time = random_time()
        sql = "INSERT INTO `" + sql_name + "` VALUES ('" + str(user_role_index) + "', '" + str(
            index) + "', '17', '" + time + "', '系统管理员');"
        user_role_sqls.append(sql)
        user_role_index += 1

    return user_role_sqls


# def generate_user_sqls(super_nums, teacher_nums, student_nums):
#     passwords = []
#     if super_nums + teacher_nums + student_nums > 10:
#         original_password = "111111"
#         for i in range(10):
#             password = get_password(original_password)
#             passwords.append(password)
#
#     user_sqls = []
#     company_user_sqls = []
#     user_role_sqls = []
#
#     user_index = 1
#     user_role_index = 1
#
#     user_template = """
#     INSERT INTO `kaizhi_user`
#     (`id`, `username`, `password`, `salt`, `wx_unionid`, `nickname`, `name`, `userpic`, `company_id`, `utype`, `birthday`, `sex`, `email`, `cellphone`, `qq`, `status`, `create_time`, `update_time`)
#     VALUES
#     ('{id}', '{username}', '{password}', NULL, NULL, '{nickname}', '{name}', NULL, {company_id}, '{utype}', NULL, '{sex}', NULL, NULL, NULL, '1', '{create_time}', '{update_time}');
#     """
#     user_role_template = """
#     INSERT INTO `kaizhi_user_role`
#     (`id`, `user_id`, `role_id`, `create_time`, `remarks`)
#     VALUES
#     ('{id}', '{user_id}', '{role_id}', '{create_time}', {remarks});
#     """
#     for super_index in range(super_nums):
#         username = random.choice(['super', 'admin'])
#         if username == 'super':
#             name = '超级管理员'
#         else:
#             name = '系统管理员'
#         username += str(super_index)
#         name += str(super_index)
#
#         password = random.choice(passwords)
#         time = random_time()
#         sex = random.choice(['1', '2'])
#
#         user_sql = user_template.format(id=user_index, username=username, password=password, nickname=name, name=name, company_id='NULL', utype='101003', sex=sex, create_time=time, update_time=time)
#         user_sqls.append(user_sql)
#
#         user_role_sql = user_role_template.format(id=user_role_index, user_id=user_index, role_id='8', create_time=time, remarks='NULL')
#         user_role_sqls.append(user_role_sql)
#
#
#         user_index += 1
#         user_role_index += 1
#
#     return user_sqls, company_user_sqls, user_role_sqls


if __name__ == "__main__":
    folder = 'sql'

    if not os.path.exists(folder):
        os.makedirs(folder)

    user_sqls, start_sql_index = get_user_sql()
    range_teacher = range(start_sql_index.get('teacher'), start_sql_index.get('student'))
    company_user_sqls = get_company_user_sql(range_teacher)

    user_role_sqls = get_user_role(start_sql_index)

    path = os.path.join(folder, 'user.sql')
    with open(path, 'w', encoding='utf-8') as f:
        for user_sql in user_sqls:
            f.write(user_sql + '\n')

    path = os.path.join(folder, 'company_user.sql')
    with open(path, 'w', encoding='utf-8') as f:
        for company_user_sql in company_user_sqls:
            f.write(company_user_sql + '\n')

    path = os.path.join(folder, 'user_role.sql')
    with open(path, 'w', encoding='utf-8') as f:
        for user_role_sql in user_role_sqls:
            f.write(user_role_sql + '\n')

    # generate_user_sqls(5, 20, 500)
