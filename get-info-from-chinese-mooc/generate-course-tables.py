from faker import Faker

def generate_course_table_sqls():
    sqls = []
    sql = """
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
    ) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
    """
    sqls.append(sql)
    sql_template = """
    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES ({id}, {choose_course_id}, '{user_id}', {course_id}, {company_id}, '{course_name}', '{course_type}', '{create_date}', '{validtime_start}', '{validtime_end}', '{update_date}', '{remarks}');
    """

    index = 1


    index = 1


if __name__ == "__main__":
    generate_course_table_sqls()
    print("Done")