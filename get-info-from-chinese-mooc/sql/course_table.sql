
    DROP TABLE IF EXISTS `course_tables`;
    CREATE TABLE `course_tables` (
      `id` bigint NOT NULL AUTO_INCREMENT,
      `choose_course_id` bigint NOT NULL COMMENT '选课记录id',
      `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
      `course_id` bigint NOT NULL COMMENT '课程id',
      `company_id` bigint NOT NULL COMMENT '机构id',
      `course_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程名称',
      `course_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '课程类型',
      `course_pic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '课程图片',
      `create_date` datetime NOT NULL COMMENT '添加时间',
      `validtime_start` datetime DEFAULT NULL COMMENT '开始服务时间',
      `validtime_end` datetime NOT NULL COMMENT '到期时间',
      `update_date` datetime DEFAULT NULL COMMENT '更新时间',
      `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
      PRIMARY KEY (`id`) USING BTREE,
      UNIQUE KEY `course_tables_unique` (`user_id`,`course_id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (1, 1, '309', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (2, 2, '58', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (3, 3, '71', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (4, 4, '266', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (5, 5, '230', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (6, 6, '434', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (7, 7, '450', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (8, 8, '382', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (9, 9, '290', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (10, 10, '118', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (11, 11, '228', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (12, 12, '110', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (13, 13, '214', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (14, 14, '256', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (15, 15, '206', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (16, 16, '64', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (17, 17, '391', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (18, 18, '481', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (19, 19, '342', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (20, 20, '470', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (21, 21, '79', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (22, 22, '474', 1, 1232141425, 'C++语言程序设计基础', '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (23, 23, '99', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (24, 24, '30', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (25, 25, '78', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (26, 26, '245', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (27, 27, '13', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (28, 28, '106', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (29, 29, '301', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (30, 30, '248', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (31, 31, '308', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (32, 32, '470', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (33, 33, '208', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (34, 34, '316', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (35, 35, '128', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (36, 36, '285', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (37, 37, '137', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (38, 38, '15', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (39, 39, '455', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (40, 40, '295', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (41, 41, '357', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (42, 42, '224', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (43, 43, '346', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (44, 44, '48', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (45, 45, '465', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (46, 46, '297', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (47, 47, '375', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (48, 48, '35', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (49, 49, '34', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (50, 50, '85', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (51, 51, '427', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (52, 52, '121', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (53, 53, '466', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (54, 54, '338', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (55, 55, '141', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (56, 56, '411', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (57, 57, '441', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (58, 58, '43', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (59, 59, '266', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (60, 60, '404', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (61, 61, '506', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (62, 62, '497', 2, 1232141425, '数据结构(上)', '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (63, 63, '433', 3, 1232141425, '数据结构(下)', '700002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (64, 64, '398', 3, 1232141425, '数据结构(下)', '700002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (65, 65, '279', 3, 1232141425, '数据结构(下)', '700002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (66, 66, '92', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (67, 67, '34', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (68, 68, '423', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (69, 69, '94', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (70, 70, '352', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (71, 71, '148', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (72, 72, '288', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (73, 73, '491', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (74, 74, '72', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (75, 75, '115', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (76, 76, '178', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (77, 77, '230', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (78, 78, '498', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (79, 79, '238', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (80, 80, '357', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (81, 81, '140', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (82, 82, '290', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (83, 83, '71', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (84, 84, '262', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (85, 85, '507', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (86, 86, '36', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (87, 87, '159', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (88, 88, '328', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (89, 89, '292', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (90, 90, '28', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (91, 91, '494', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (92, 92, '344', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (93, 93, '372', 4, 1232141425, '操作系统', '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (94, 94, '381', 5, 1232141425, 'Java程序设计', '700001', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (95, 95, '477', 5, 1232141425, 'Java程序设计', '700001', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (96, 96, '95', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (97, 97, '377', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (98, 98, '162', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (99, 99, '47', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (100, 100, '462', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (101, 101, '26', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (102, 102, '61', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (103, 103, '347', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (104, 104, '383', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (105, 105, '372', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (106, 106, '138', 6, 1232141425, '网络技术与应用', '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (107, 107, '505', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (108, 108, '387', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (109, 109, '355', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (110, 110, '207', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (111, 111, '427', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (112, 112, '287', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (113, 113, '170', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (114, 114, '319', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (115, 115, '289', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (116, 116, '398', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (117, 117, '107', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (118, 118, '443', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (119, 119, '466', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (120, 120, '504', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (121, 121, '478', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (122, 122, '326', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (123, 123, '105', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (124, 124, '282', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (125, 125, '212', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (126, 126, '270', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (127, 127, '205', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (128, 128, '190', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (129, 129, '49', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (130, 130, '204', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (131, 131, '473', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (132, 132, '509', 7, 1232141425, '人工智能原理', '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (133, 133, '512', 8, 1232141425, 'C++语言程序设计进阶', '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (134, 134, '77', 8, 1232141425, 'C++语言程序设计进阶', '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (135, 135, '220', 8, 1232141425, 'C++语言程序设计进阶', '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (136, 136, '438', 8, 1232141425, 'C++语言程序设计进阶', '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (137, 137, '231', 8, 1232141425, 'C++语言程序设计进阶', '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (138, 138, '380', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (139, 139, '368', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (140, 140, '229', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (141, 141, '263', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (142, 142, '425', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (143, 143, '144', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (144, 144, '272', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (145, 145, '387', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (146, 146, '17', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (147, 147, '449', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (148, 148, '169', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (149, 149, '257', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (150, 150, '45', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (151, 151, '445', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (152, 152, '207', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (153, 153, '479', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (154, 154, '78', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (155, 155, '47', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (156, 156, '96', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (157, 157, '54', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (158, 158, '414', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (159, 159, '44', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (160, 160, '254', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (161, 161, '504', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (162, 162, '493', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (163, 163, '429', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (164, 164, '46', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (165, 165, '434', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (166, 166, '474', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (167, 167, '30', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (168, 168, '329', 10, 1232141425, '软件工程', '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (169, 169, '220', 10, 1232141425, '软件工程', '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (170, 170, '383', 10, 1232141425, '软件工程', '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (171, 171, '358', 10, 1232141425, '软件工程', '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (172, 172, '493', 10, 1232141425, '软件工程', '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (173, 173, '209', 10, 1232141425, '软件工程', '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (174, 174, '466', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (175, 175, '190', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (176, 176, '464', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (177, 177, '198', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (178, 178, '98', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (179, 179, '494', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (180, 180, '397', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (181, 181, '432', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (182, 182, '418', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (183, 183, '425', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (184, 184, '468', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (185, 185, '122', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (186, 186, '21', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (187, 187, '321', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (188, 188, '150', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (189, 189, '393', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (190, 190, '278', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (191, 191, '382', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (192, 192, '105', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (193, 193, '486', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (194, 194, '318', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (195, 195, '226', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (196, 196, '152', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (197, 197, '60', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (198, 198, '474', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (199, 199, '56', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (200, 200, '270', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (201, 201, '118', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (202, 202, '487', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (203, 203, '172', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (204, 204, '379', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (205, 205, '416', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (206, 206, '334', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (207, 207, '148', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (208, 208, '57', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (209, 209, '411', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (210, 210, '161', 11, 1232141425, '大数据技术与应用', '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (211, 211, '234', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (212, 212, '82', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (213, 213, '224', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (214, 214, '402', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (215, 215, '499', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (216, 216, '422', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (217, 217, '125', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (218, 218, '75', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (219, 219, '493', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (220, 220, '158', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (221, 221, '470', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (222, 222, '73', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (223, 223, '412', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (224, 224, '403', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (225, 225, '157', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (226, 226, '243', 12, 1232141425, 'Office办公软件应用', '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (227, 227, '217', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (228, 228, '284', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (229, 229, '260', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (230, 230, '186', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (231, 231, '22', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (232, 232, '45', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (233, 233, '143', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (234, 234, '484', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (235, 235, '116', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (236, 236, '359', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (237, 237, '82', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (238, 238, '287', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (239, 239, '358', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (240, 240, '377', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (241, 241, '131', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (242, 242, '433', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (243, 243, '424', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (244, 244, '39', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (245, 245, '414', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (246, 246, '406', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (247, 247, '314', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (248, 248, '474', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (249, 249, '409', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (250, 250, '112', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (251, 251, '373', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (252, 252, '500', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (253, 253, '55', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (254, 254, '387', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (255, 255, '142', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (256, 256, '326', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (257, 257, '176', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (258, 258, '218', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (259, 259, '318', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (260, 260, '498', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (261, 261, '448', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (262, 262, '130', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (263, 263, '475', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (264, 264, '289', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (265, 265, '195', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (266, 266, '508', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (267, 267, '100', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (268, 268, '24', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (269, 269, '129', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (270, 270, '336', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (271, 271, '73', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (272, 272, '229', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (273, 273, '416', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (274, 274, '320', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (275, 275, '337', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (276, 276, '437', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (277, 277, '284', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (278, 278, '123', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (279, 279, '508', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (280, 280, '254', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (281, 281, '159', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (282, 282, '358', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (283, 283, '461', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (284, 284, '205', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (285, 285, '234', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (286, 286, '397', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (287, 287, '354', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (288, 288, '72', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (289, 289, '150', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (290, 290, '275', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (291, 291, '16', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (292, 292, '452', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (293, 293, '19', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (294, 294, '480', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (295, 295, '178', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (296, 296, '418', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (297, 297, '175', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (298, 298, '488', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (299, 299, '220', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (300, 300, '496', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (301, 301, '438', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (302, 302, '139', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (303, 303, '436', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (304, 304, '174', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (305, 305, '78', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (306, 306, '285', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (307, 307, '182', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (308, 308, '363', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (309, 309, '348', 14, 1232141425, '计算机文化基础', '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (310, 310, '446', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (311, 311, '410', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (312, 312, '381', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (313, 313, '433', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (314, 314, '215', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (315, 315, '278', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (316, 316, '466', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (317, 317, '74', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (318, 318, '171', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (319, 319, '484', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (320, 320, '468', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (321, 321, '265', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (322, 322, '178', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (323, 323, '280', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (324, 324, '429', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (325, 325, '44', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (326, 326, '458', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (327, 327, '104', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (328, 328, '293', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (329, 329, '283', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (330, 330, '158', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (331, 331, '152', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (332, 332, '342', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (333, 333, '360', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (334, 334, '374', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (335, 335, '254', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (336, 336, '431', 15, 1232141425, '大学计算机基础', '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (337, 337, '88', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (338, 338, '400', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (339, 339, '120', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (340, 340, '179', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (341, 341, '307', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (342, 342, '364', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (343, 343, '140', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (344, 344, '104', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (345, 345, '452', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (346, 346, '30', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (347, 347, '90', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (348, 348, '71', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (349, 349, '225', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (350, 350, '152', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (351, 351, '368', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (352, 352, '53', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (353, 353, '45', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (354, 354, '191', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (355, 355, '310', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (356, 356, '311', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (357, 357, '377', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (358, 358, '100', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (359, 359, '333', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (360, 360, '142', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (361, 361, '190', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (362, 362, '189', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (363, 363, '79', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (364, 364, '193', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (365, 365, '362', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (366, 366, '473', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (367, 367, '320', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (368, 368, '133', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (369, 369, '326', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (370, 370, '437', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (371, 371, '366', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (372, 372, '486', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (373, 373, '163', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (374, 374, '466', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (375, 375, '350', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (376, 376, '493', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (377, 377, '317', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (378, 378, '496', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (379, 379, '285', 16, 1232141425, '程序设计基础', '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (380, 380, '428', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (381, 381, '197', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (382, 382, '133', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (383, 383, '314', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (384, 384, '390', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (385, 385, '346', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (386, 386, '95', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (387, 387, '471', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (388, 388, '380', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (389, 389, '359', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (390, 390, '139', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (391, 391, '395', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (392, 392, '236', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (393, 393, '360', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (394, 394, '353', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (395, 395, '120', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (396, 396, '242', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (397, 397, '440', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (398, 398, '313', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (399, 399, '374', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (400, 400, '31', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (401, 401, '143', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (402, 402, '83', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (403, 403, '54', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (404, 404, '182', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (405, 405, '398', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (406, 406, '375', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (407, 407, '444', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (408, 408, '206', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (409, 409, '299', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (410, 410, '333', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (411, 411, '306', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (412, 412, '149', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (413, 413, '20', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (414, 414, '34', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (415, 415, '231', 17, 1232141425, '大数据系统基础', '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (416, 416, '81', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (417, 417, '221', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (418, 418, '69', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (419, 419, '121', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (420, 420, '458', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (421, 421, '205', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (422, 422, '472', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (423, 423, '134', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (424, 424, '29', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (425, 425, '97', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (426, 426, '176', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (427, 427, '407', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (428, 428, '314', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (429, 429, '444', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (430, 430, '361', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (431, 431, '351', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (432, 432, '192', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (433, 433, '416', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (434, 434, '236', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (435, 435, '62', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (436, 436, '421', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (437, 437, '184', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (438, 438, '252', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (439, 439, '262', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (440, 440, '264', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (441, 441, '196', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (442, 442, '210', 18, 1232141425, '算法设计与分析', '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (443, 443, '436', 19, 1232141425, '组合数学', '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (444, 444, '39', 19, 1232141425, '组合数学', '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (445, 445, '437', 19, 1232141425, '组合数学', '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (446, 446, '291', 19, 1232141425, '组合数学', '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (447, 447, '237', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (448, 448, '481', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (449, 449, '42', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (450, 450, '251', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (451, 451, '398', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (452, 452, '267', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (453, 453, '167', 20, 1232141425, '计算机应用基础', '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (454, 454, '249', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (455, 455, '380', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (456, 456, '209', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (457, 457, '454', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (458, 458, '305', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (459, 459, '212', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (460, 460, '369', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (461, 461, '304', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (462, 462, '133', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (463, 463, '346', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (464, 464, '342', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (465, 465, '480', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (466, 466, '464', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (467, 467, '386', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (468, 468, '220', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (469, 469, '245', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (470, 470, '179', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (471, 471, '163', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (472, 472, '176', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (473, 473, '89', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (474, 474, '188', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (475, 475, '216', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (476, 476, '301', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (477, 477, '31', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (478, 478, '358', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (479, 479, '370', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (480, 480, '168', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (481, 481, '510', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (482, 482, '145', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (483, 483, '286', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (484, 484, '341', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (485, 485, '276', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (486, 486, '129', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (487, 487, '476', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (488, 488, '154', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (489, 489, '251', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (490, 490, '148', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (491, 491, '457', 21, 1232141425, 'R语言数据分析', '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (492, 492, '23', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (493, 493, '346', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (494, 494, '482', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (495, 495, '311', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (496, 496, '465', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (497, 497, '67', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (498, 498, '73', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (499, 499, '246', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (500, 500, '367', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (501, 501, '208', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    

    INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `course_pic`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`) 
    VALUES (502, 502, '37', 22, 1232141425, '大学计算机', '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '2025-01-01 16:10:00', '');
    
