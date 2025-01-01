
    DROP TABLE IF EXISTS `choose_course`;
    CREATE TABLE `choose_course` (
      `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
      `course_id` bigint NOT NULL COMMENT '课程id',
      `course_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程名称',
      `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
      `company_id` bigint NOT NULL COMMENT '机构id',
      `order_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选课类型',
      `course_pic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '课程图片',
      `create_date` datetime NOT NULL COMMENT '添加时间',
      `course_price` float(10,2) NOT NULL COMMENT '课程价格',
      `valid_days` int NOT NULL COMMENT '课程有效期(天)',
      `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选课状态',
      `validtime_start` datetime NOT NULL COMMENT '开始服务时间',
      `validtime_end` datetime NOT NULL COMMENT '结束服务时间',
      `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (1, 1, 'C++语言程序设计基础', '309', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (2, 1, 'C++语言程序设计基础', '58', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (3, 1, 'C++语言程序设计基础', '71', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (4, 1, 'C++语言程序设计基础', '266', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (5, 1, 'C++语言程序设计基础', '230', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (6, 1, 'C++语言程序设计基础', '434', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (7, 1, 'C++语言程序设计基础', '450', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (8, 1, 'C++语言程序设计基础', '382', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (9, 1, 'C++语言程序设计基础', '290', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (10, 1, 'C++语言程序设计基础', '118', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (11, 1, 'C++语言程序设计基础', '228', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (12, 1, 'C++语言程序设计基础', '110', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (13, 1, 'C++语言程序设计基础', '214', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (14, 1, 'C++语言程序设计基础', '256', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (15, 1, 'C++语言程序设计基础', '206', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (16, 1, 'C++语言程序设计基础', '64', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (17, 1, 'C++语言程序设计基础', '391', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (18, 1, 'C++语言程序设计基础', '481', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (19, 1, 'C++语言程序设计基础', '342', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (20, 1, 'C++语言程序设计基础', '470', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (21, 1, 'C++语言程序设计基础', '79', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (22, 1, 'C++语言程序设计基础', '474', 1232141425, '700002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (23, 2, '数据结构(上)', '99', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (24, 2, '数据结构(上)', '30', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (25, 2, '数据结构(上)', '78', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (26, 2, '数据结构(上)', '245', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (27, 2, '数据结构(上)', '13', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (28, 2, '数据结构(上)', '106', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (29, 2, '数据结构(上)', '301', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (30, 2, '数据结构(上)', '248', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (31, 2, '数据结构(上)', '308', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (32, 2, '数据结构(上)', '470', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (33, 2, '数据结构(上)', '208', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (34, 2, '数据结构(上)', '316', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (35, 2, '数据结构(上)', '128', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (36, 2, '数据结构(上)', '285', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (37, 2, '数据结构(上)', '137', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (38, 2, '数据结构(上)', '15', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (39, 2, '数据结构(上)', '455', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (40, 2, '数据结构(上)', '295', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (41, 2, '数据结构(上)', '357', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (42, 2, '数据结构(上)', '224', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (43, 2, '数据结构(上)', '346', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (44, 2, '数据结构(上)', '48', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (45, 2, '数据结构(上)', '465', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (46, 2, '数据结构(上)', '297', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (47, 2, '数据结构(上)', '375', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (48, 2, '数据结构(上)', '35', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (49, 2, '数据结构(上)', '34', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (50, 2, '数据结构(上)', '85', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (51, 2, '数据结构(上)', '427', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (52, 2, '数据结构(上)', '121', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (53, 2, '数据结构(上)', '466', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (54, 2, '数据结构(上)', '338', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (55, 2, '数据结构(上)', '141', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (56, 2, '数据结构(上)', '411', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (57, 2, '数据结构(上)', '441', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (58, 2, '数据结构(上)', '43', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (59, 2, '数据结构(上)', '266', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (60, 2, '数据结构(上)', '404', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (61, 2, '数据结构(上)', '506', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (62, 2, '数据结构(上)', '497', 1232141425, '700002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (63, 3, '数据结构(下)', '433', 1232141425, '700002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (64, 3, '数据结构(下)', '398', 1232141425, '700002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (65, 3, '数据结构(下)', '279', 1232141425, '700002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (66, 4, '操作系统', '92', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (67, 4, '操作系统', '34', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (68, 4, '操作系统', '423', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (69, 4, '操作系统', '94', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (70, 4, '操作系统', '352', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (71, 4, '操作系统', '148', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (72, 4, '操作系统', '288', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (73, 4, '操作系统', '491', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (74, 4, '操作系统', '72', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (75, 4, '操作系统', '115', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (76, 4, '操作系统', '178', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (77, 4, '操作系统', '230', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (78, 4, '操作系统', '498', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (79, 4, '操作系统', '238', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (80, 4, '操作系统', '357', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (81, 4, '操作系统', '140', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (82, 4, '操作系统', '290', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (83, 4, '操作系统', '71', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (84, 4, '操作系统', '262', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (85, 4, '操作系统', '507', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (86, 4, '操作系统', '36', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (87, 4, '操作系统', '159', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (88, 4, '操作系统', '328', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (89, 4, '操作系统', '292', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (90, 4, '操作系统', '28', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (91, 4, '操作系统', '494', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (92, 4, '操作系统', '344', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (93, 4, '操作系统', '372', 1232141425, '700001', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (94, 5, 'Java程序设计', '381', 1232141425, '700001', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (95, 5, 'Java程序设计', '477', 1232141425, '700001', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (96, 6, '网络技术与应用', '95', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (97, 6, '网络技术与应用', '377', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (98, 6, '网络技术与应用', '162', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (99, 6, '网络技术与应用', '47', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (100, 6, '网络技术与应用', '462', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (101, 6, '网络技术与应用', '26', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (102, 6, '网络技术与应用', '61', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (103, 6, '网络技术与应用', '347', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (104, 6, '网络技术与应用', '383', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (105, 6, '网络技术与应用', '372', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (106, 6, '网络技术与应用', '138', 1232141425, '700001', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (107, 7, '人工智能原理', '505', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (108, 7, '人工智能原理', '387', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (109, 7, '人工智能原理', '355', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (110, 7, '人工智能原理', '207', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (111, 7, '人工智能原理', '427', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (112, 7, '人工智能原理', '287', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (113, 7, '人工智能原理', '170', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (114, 7, '人工智能原理', '319', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (115, 7, '人工智能原理', '289', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (116, 7, '人工智能原理', '398', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (117, 7, '人工智能原理', '107', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (118, 7, '人工智能原理', '443', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (119, 7, '人工智能原理', '466', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (120, 7, '人工智能原理', '504', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (121, 7, '人工智能原理', '478', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (122, 7, '人工智能原理', '326', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (123, 7, '人工智能原理', '105', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (124, 7, '人工智能原理', '282', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (125, 7, '人工智能原理', '212', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (126, 7, '人工智能原理', '270', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (127, 7, '人工智能原理', '205', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (128, 7, '人工智能原理', '190', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (129, 7, '人工智能原理', '49', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (130, 7, '人工智能原理', '204', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (131, 7, '人工智能原理', '473', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (132, 7, '人工智能原理', '509', 1232141425, '700002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (133, 8, 'C++语言程序设计进阶', '512', 1232141425, '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (134, 8, 'C++语言程序设计进阶', '77', 1232141425, '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (135, 8, 'C++语言程序设计进阶', '220', 1232141425, '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (136, 8, 'C++语言程序设计进阶', '438', 1232141425, '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (137, 8, 'C++语言程序设计进阶', '231', 1232141425, '700002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2025-01-01 16:10:00', 12, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (138, 9, 'C程序设计案例教程（基础）', '380', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (139, 9, 'C程序设计案例教程（基础）', '368', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (140, 9, 'C程序设计案例教程（基础）', '229', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (141, 9, 'C程序设计案例教程（基础）', '263', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (142, 9, 'C程序设计案例教程（基础）', '425', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (143, 9, 'C程序设计案例教程（基础）', '144', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (144, 9, 'C程序设计案例教程（基础）', '272', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (145, 9, 'C程序设计案例教程（基础）', '387', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (146, 9, 'C程序设计案例教程（基础）', '17', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (147, 9, 'C程序设计案例教程（基础）', '449', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (148, 9, 'C程序设计案例教程（基础）', '169', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (149, 9, 'C程序设计案例教程（基础）', '257', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (150, 9, 'C程序设计案例教程（基础）', '45', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (151, 9, 'C程序设计案例教程（基础）', '445', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (152, 9, 'C程序设计案例教程（基础）', '207', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (153, 9, 'C程序设计案例教程（基础）', '479', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (154, 9, 'C程序设计案例教程（基础）', '78', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (155, 9, 'C程序设计案例教程（基础）', '47', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (156, 9, 'C程序设计案例教程（基础）', '96', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (157, 9, 'C程序设计案例教程（基础）', '54', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (158, 9, 'C程序设计案例教程（基础）', '414', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (159, 9, 'C程序设计案例教程（基础）', '44', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (160, 9, 'C程序设计案例教程（基础）', '254', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (161, 9, 'C程序设计案例教程（基础）', '504', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (162, 9, 'C程序设计案例教程（基础）', '493', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (163, 9, 'C程序设计案例教程（基础）', '429', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (164, 9, 'C程序设计案例教程（基础）', '46', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (165, 9, 'C程序设计案例教程（基础）', '434', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (166, 9, 'C程序设计案例教程（基础）', '474', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (167, 9, 'C程序设计案例教程（基础）', '30', 1232141425, '700001', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (168, 10, '软件工程', '329', 1232141425, '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (169, 10, '软件工程', '220', 1232141425, '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (170, 10, '软件工程', '383', 1232141425, '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (171, 10, '软件工程', '358', 1232141425, '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (172, 10, '软件工程', '493', 1232141425, '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (173, 10, '软件工程', '209', 1232141425, '700002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2025-01-01 16:10:00', 15, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (174, 11, '大数据技术与应用', '466', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (175, 11, '大数据技术与应用', '190', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (176, 11, '大数据技术与应用', '464', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (177, 11, '大数据技术与应用', '198', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (178, 11, '大数据技术与应用', '98', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (179, 11, '大数据技术与应用', '494', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (180, 11, '大数据技术与应用', '397', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (181, 11, '大数据技术与应用', '432', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (182, 11, '大数据技术与应用', '418', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (183, 11, '大数据技术与应用', '425', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (184, 11, '大数据技术与应用', '468', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (185, 11, '大数据技术与应用', '122', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (186, 11, '大数据技术与应用', '21', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (187, 11, '大数据技术与应用', '321', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (188, 11, '大数据技术与应用', '150', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (189, 11, '大数据技术与应用', '393', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (190, 11, '大数据技术与应用', '278', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (191, 11, '大数据技术与应用', '382', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (192, 11, '大数据技术与应用', '105', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (193, 11, '大数据技术与应用', '486', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (194, 11, '大数据技术与应用', '318', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (195, 11, '大数据技术与应用', '226', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (196, 11, '大数据技术与应用', '152', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (197, 11, '大数据技术与应用', '60', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (198, 11, '大数据技术与应用', '474', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (199, 11, '大数据技术与应用', '56', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (200, 11, '大数据技术与应用', '270', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (201, 11, '大数据技术与应用', '118', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (202, 11, '大数据技术与应用', '487', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (203, 11, '大数据技术与应用', '172', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (204, 11, '大数据技术与应用', '379', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (205, 11, '大数据技术与应用', '416', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (206, 11, '大数据技术与应用', '334', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (207, 11, '大数据技术与应用', '148', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (208, 11, '大数据技术与应用', '57', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (209, 11, '大数据技术与应用', '411', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (210, 11, '大数据技术与应用', '161', 1232141425, '700001', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (211, 12, 'Office办公软件应用', '234', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (212, 12, 'Office办公软件应用', '82', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (213, 12, 'Office办公软件应用', '224', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (214, 12, 'Office办公软件应用', '402', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (215, 12, 'Office办公软件应用', '499', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (216, 12, 'Office办公软件应用', '422', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (217, 12, 'Office办公软件应用', '125', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (218, 12, 'Office办公软件应用', '75', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (219, 12, 'Office办公软件应用', '493', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (220, 12, 'Office办公软件应用', '158', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (221, 12, 'Office办公软件应用', '470', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (222, 12, 'Office办公软件应用', '73', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (223, 12, 'Office办公软件应用', '412', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (224, 12, 'Office办公软件应用', '403', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (225, 12, 'Office办公软件应用', '157', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (226, 12, 'Office办公软件应用', '243', 1232141425, '700002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2025-01-01 16:10:00', 20, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (227, 13, 'C程序设计案例教程（进阶）', '217', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (228, 13, 'C程序设计案例教程（进阶）', '284', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (229, 13, 'C程序设计案例教程（进阶）', '260', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (230, 13, 'C程序设计案例教程（进阶）', '186', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (231, 13, 'C程序设计案例教程（进阶）', '22', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (232, 13, 'C程序设计案例教程（进阶）', '45', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (233, 13, 'C程序设计案例教程（进阶）', '143', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (234, 13, 'C程序设计案例教程（进阶）', '484', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (235, 13, 'C程序设计案例教程（进阶）', '116', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (236, 13, 'C程序设计案例教程（进阶）', '359', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (237, 13, 'C程序设计案例教程（进阶）', '82', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (238, 13, 'C程序设计案例教程（进阶）', '287', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (239, 13, 'C程序设计案例教程（进阶）', '358', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (240, 13, 'C程序设计案例教程（进阶）', '377', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (241, 13, 'C程序设计案例教程（进阶）', '131', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (242, 13, 'C程序设计案例教程（进阶）', '433', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (243, 13, 'C程序设计案例教程（进阶）', '424', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (244, 13, 'C程序设计案例教程（进阶）', '39', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (245, 13, 'C程序设计案例教程（进阶）', '414', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (246, 13, 'C程序设计案例教程（进阶）', '406', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (247, 13, 'C程序设计案例教程（进阶）', '314', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (248, 13, 'C程序设计案例教程（进阶）', '474', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (249, 13, 'C程序设计案例教程（进阶）', '409', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (250, 13, 'C程序设计案例教程（进阶）', '112', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (251, 13, 'C程序设计案例教程（进阶）', '373', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (252, 13, 'C程序设计案例教程（进阶）', '500', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (253, 13, 'C程序设计案例教程（进阶）', '55', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (254, 13, 'C程序设计案例教程（进阶）', '387', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (255, 13, 'C程序设计案例教程（进阶）', '142', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (256, 13, 'C程序设计案例教程（进阶）', '326', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (257, 13, 'C程序设计案例教程（进阶）', '176', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (258, 13, 'C程序设计案例教程（进阶）', '218', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (259, 13, 'C程序设计案例教程（进阶）', '318', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (260, 13, 'C程序设计案例教程（进阶）', '498', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (261, 13, 'C程序设计案例教程（进阶）', '448', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (262, 13, 'C程序设计案例教程（进阶）', '130', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (263, 13, 'C程序设计案例教程（进阶）', '475', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (264, 13, 'C程序设计案例教程（进阶）', '289', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (265, 13, 'C程序设计案例教程（进阶）', '195', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (266, 13, 'C程序设计案例教程（进阶）', '508', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (267, 13, 'C程序设计案例教程（进阶）', '100', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (268, 13, 'C程序设计案例教程（进阶）', '24', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (269, 13, 'C程序设计案例教程（进阶）', '129', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (270, 13, 'C程序设计案例教程（进阶）', '336', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (271, 13, 'C程序设计案例教程（进阶）', '73', 1232141425, '700002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (272, 14, '计算机文化基础', '229', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (273, 14, '计算机文化基础', '416', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (274, 14, '计算机文化基础', '320', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (275, 14, '计算机文化基础', '337', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (276, 14, '计算机文化基础', '437', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (277, 14, '计算机文化基础', '284', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (278, 14, '计算机文化基础', '123', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (279, 14, '计算机文化基础', '508', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (280, 14, '计算机文化基础', '254', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (281, 14, '计算机文化基础', '159', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (282, 14, '计算机文化基础', '358', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (283, 14, '计算机文化基础', '461', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (284, 14, '计算机文化基础', '205', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (285, 14, '计算机文化基础', '234', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (286, 14, '计算机文化基础', '397', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (287, 14, '计算机文化基础', '354', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (288, 14, '计算机文化基础', '72', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (289, 14, '计算机文化基础', '150', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (290, 14, '计算机文化基础', '275', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (291, 14, '计算机文化基础', '16', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (292, 14, '计算机文化基础', '452', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (293, 14, '计算机文化基础', '19', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (294, 14, '计算机文化基础', '480', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (295, 14, '计算机文化基础', '178', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (296, 14, '计算机文化基础', '418', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (297, 14, '计算机文化基础', '175', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (298, 14, '计算机文化基础', '488', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (299, 14, '计算机文化基础', '220', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (300, 14, '计算机文化基础', '496', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (301, 14, '计算机文化基础', '438', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (302, 14, '计算机文化基础', '139', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (303, 14, '计算机文化基础', '436', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (304, 14, '计算机文化基础', '174', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (305, 14, '计算机文化基础', '78', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (306, 14, '计算机文化基础', '285', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (307, 14, '计算机文化基础', '182', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (308, 14, '计算机文化基础', '363', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (309, 14, '计算机文化基础', '348', 1232141425, '700001', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (310, 15, '大学计算机基础', '446', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (311, 15, '大学计算机基础', '410', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (312, 15, '大学计算机基础', '381', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (313, 15, '大学计算机基础', '433', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (314, 15, '大学计算机基础', '215', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (315, 15, '大学计算机基础', '278', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (316, 15, '大学计算机基础', '466', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (317, 15, '大学计算机基础', '74', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (318, 15, '大学计算机基础', '171', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (319, 15, '大学计算机基础', '484', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (320, 15, '大学计算机基础', '468', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (321, 15, '大学计算机基础', '265', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (322, 15, '大学计算机基础', '178', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (323, 15, '大学计算机基础', '280', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (324, 15, '大学计算机基础', '429', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (325, 15, '大学计算机基础', '44', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (326, 15, '大学计算机基础', '458', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (327, 15, '大学计算机基础', '104', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (328, 15, '大学计算机基础', '293', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (329, 15, '大学计算机基础', '283', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (330, 15, '大学计算机基础', '158', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (331, 15, '大学计算机基础', '152', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (332, 15, '大学计算机基础', '342', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (333, 15, '大学计算机基础', '360', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (334, 15, '大学计算机基础', '374', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (335, 15, '大学计算机基础', '254', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (336, 15, '大学计算机基础', '431', 1232141425, '700001', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (337, 16, '程序设计基础', '88', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (338, 16, '程序设计基础', '400', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (339, 16, '程序设计基础', '120', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (340, 16, '程序设计基础', '179', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (341, 16, '程序设计基础', '307', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (342, 16, '程序设计基础', '364', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (343, 16, '程序设计基础', '140', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (344, 16, '程序设计基础', '104', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (345, 16, '程序设计基础', '452', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (346, 16, '程序设计基础', '30', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (347, 16, '程序设计基础', '90', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (348, 16, '程序设计基础', '71', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (349, 16, '程序设计基础', '225', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (350, 16, '程序设计基础', '152', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (351, 16, '程序设计基础', '368', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (352, 16, '程序设计基础', '53', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (353, 16, '程序设计基础', '45', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (354, 16, '程序设计基础', '191', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (355, 16, '程序设计基础', '310', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (356, 16, '程序设计基础', '311', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (357, 16, '程序设计基础', '377', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (358, 16, '程序设计基础', '100', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (359, 16, '程序设计基础', '333', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (360, 16, '程序设计基础', '142', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (361, 16, '程序设计基础', '190', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (362, 16, '程序设计基础', '189', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (363, 16, '程序设计基础', '79', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (364, 16, '程序设计基础', '193', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (365, 16, '程序设计基础', '362', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (366, 16, '程序设计基础', '473', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (367, 16, '程序设计基础', '320', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (368, 16, '程序设计基础', '133', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (369, 16, '程序设计基础', '326', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (370, 16, '程序设计基础', '437', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (371, 16, '程序设计基础', '366', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (372, 16, '程序设计基础', '486', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (373, 16, '程序设计基础', '163', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (374, 16, '程序设计基础', '466', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (375, 16, '程序设计基础', '350', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (376, 16, '程序设计基础', '493', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (377, 16, '程序设计基础', '317', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (378, 16, '程序设计基础', '496', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (379, 16, '程序设计基础', '285', 1232141425, '700001', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (380, 17, '大数据系统基础', '428', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (381, 17, '大数据系统基础', '197', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (382, 17, '大数据系统基础', '133', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (383, 17, '大数据系统基础', '314', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (384, 17, '大数据系统基础', '390', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (385, 17, '大数据系统基础', '346', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (386, 17, '大数据系统基础', '95', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (387, 17, '大数据系统基础', '471', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (388, 17, '大数据系统基础', '380', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (389, 17, '大数据系统基础', '359', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (390, 17, '大数据系统基础', '139', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (391, 17, '大数据系统基础', '395', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (392, 17, '大数据系统基础', '236', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (393, 17, '大数据系统基础', '360', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (394, 17, '大数据系统基础', '353', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (395, 17, '大数据系统基础', '120', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (396, 17, '大数据系统基础', '242', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (397, 17, '大数据系统基础', '440', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (398, 17, '大数据系统基础', '313', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (399, 17, '大数据系统基础', '374', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (400, 17, '大数据系统基础', '31', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (401, 17, '大数据系统基础', '143', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (402, 17, '大数据系统基础', '83', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (403, 17, '大数据系统基础', '54', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (404, 17, '大数据系统基础', '182', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (405, 17, '大数据系统基础', '398', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (406, 17, '大数据系统基础', '375', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (407, 17, '大数据系统基础', '444', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (408, 17, '大数据系统基础', '206', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (409, 17, '大数据系统基础', '299', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (410, 17, '大数据系统基础', '333', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (411, 17, '大数据系统基础', '306', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (412, 17, '大数据系统基础', '149', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (413, 17, '大数据系统基础', '20', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (414, 17, '大数据系统基础', '34', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (415, 17, '大数据系统基础', '231', 1232141425, '700002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2025-01-01 16:10:00', 9, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (416, 18, '算法设计与分析', '81', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (417, 18, '算法设计与分析', '221', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (418, 18, '算法设计与分析', '69', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (419, 18, '算法设计与分析', '121', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (420, 18, '算法设计与分析', '458', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (421, 18, '算法设计与分析', '205', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (422, 18, '算法设计与分析', '472', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (423, 18, '算法设计与分析', '134', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (424, 18, '算法设计与分析', '29', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (425, 18, '算法设计与分析', '97', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (426, 18, '算法设计与分析', '176', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (427, 18, '算法设计与分析', '407', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (428, 18, '算法设计与分析', '314', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (429, 18, '算法设计与分析', '444', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (430, 18, '算法设计与分析', '361', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (431, 18, '算法设计与分析', '351', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (432, 18, '算法设计与分析', '192', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (433, 18, '算法设计与分析', '416', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (434, 18, '算法设计与分析', '236', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (435, 18, '算法设计与分析', '62', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (436, 18, '算法设计与分析', '421', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (437, 18, '算法设计与分析', '184', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (438, 18, '算法设计与分析', '252', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (439, 18, '算法设计与分析', '262', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (440, 18, '算法设计与分析', '264', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (441, 18, '算法设计与分析', '196', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (442, 18, '算法设计与分析', '210', 1232141425, '700002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2025-01-01 16:10:00', 11, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (443, 19, '组合数学', '436', 1232141425, '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (444, 19, '组合数学', '39', 1232141425, '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (445, 19, '组合数学', '437', 1232141425, '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (446, 19, '组合数学', '291', 1232141425, '700002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2025-01-01 16:10:00', 13, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (447, 20, '计算机应用基础', '237', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (448, 20, '计算机应用基础', '481', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (449, 20, '计算机应用基础', '42', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (450, 20, '计算机应用基础', '251', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (451, 20, '计算机应用基础', '398', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (452, 20, '计算机应用基础', '267', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (453, 20, '计算机应用基础', '167', 1232141425, '700001', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (454, 21, 'R语言数据分析', '249', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (455, 21, 'R语言数据分析', '380', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (456, 21, 'R语言数据分析', '209', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (457, 21, 'R语言数据分析', '454', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (458, 21, 'R语言数据分析', '305', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (459, 21, 'R语言数据分析', '212', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (460, 21, 'R语言数据分析', '369', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (461, 21, 'R语言数据分析', '304', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (462, 21, 'R语言数据分析', '133', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (463, 21, 'R语言数据分析', '346', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (464, 21, 'R语言数据分析', '342', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (465, 21, 'R语言数据分析', '480', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (466, 21, 'R语言数据分析', '464', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (467, 21, 'R语言数据分析', '386', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (468, 21, 'R语言数据分析', '220', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (469, 21, 'R语言数据分析', '245', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (470, 21, 'R语言数据分析', '179', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (471, 21, 'R语言数据分析', '163', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (472, 21, 'R语言数据分析', '176', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (473, 21, 'R语言数据分析', '89', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (474, 21, 'R语言数据分析', '188', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (475, 21, 'R语言数据分析', '216', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (476, 21, 'R语言数据分析', '301', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (477, 21, 'R语言数据分析', '31', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (478, 21, 'R语言数据分析', '358', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (479, 21, 'R语言数据分析', '370', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (480, 21, 'R语言数据分析', '168', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (481, 21, 'R语言数据分析', '510', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (482, 21, 'R语言数据分析', '145', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (483, 21, 'R语言数据分析', '286', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (484, 21, 'R语言数据分析', '341', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (485, 21, 'R语言数据分析', '276', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (486, 21, 'R语言数据分析', '129', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (487, 21, 'R语言数据分析', '476', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (488, 21, 'R语言数据分析', '154', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (489, 21, 'R语言数据分析', '251', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (490, 21, 'R语言数据分析', '148', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (491, 21, 'R语言数据分析', '457', 1232141425, '700002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2025-01-01 16:10:00', 2, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (492, 22, '大学计算机', '23', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (493, 22, '大学计算机', '346', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (494, 22, '大学计算机', '482', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (495, 22, '大学计算机', '311', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (496, 22, '大学计算机', '465', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (497, 22, '大学计算机', '67', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (498, 22, '大学计算机', '73', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (499, 22, '大学计算机', '246', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (500, 22, '大学计算机', '367', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (501, 22, '大学计算机', '208', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `course_pic`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (502, 22, '大学计算机', '37', 1232141425, '700001', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2025-01-01 16:10:00', 0, 365, '701001', '2025-01-01 16:10:00', '2026-01-01 16:10:00', '');
    
