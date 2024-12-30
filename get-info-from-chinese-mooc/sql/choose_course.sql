
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
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (1, 1, 'C++语言程序设计基础', '378', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (2, 1, 'C++语言程序设计基础', '205', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (3, 1, 'C++语言程序设计基础', '259', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (4, 1, 'C++语言程序设计基础', '35', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (5, 1, 'C++语言程序设计基础', '86', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (6, 1, 'C++语言程序设计基础', '417', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (7, 1, 'C++语言程序设计基础', '399', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (8, 1, 'C++语言程序设计基础', '14', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (9, 1, 'C++语言程序设计基础', '39', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (10, 1, 'C++语言程序设计基础', '434', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (11, 1, 'C++语言程序设计基础', '472', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (12, 1, 'C++语言程序设计基础', '291', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (13, 1, 'C++语言程序设计基础', '299', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (14, 1, 'C++语言程序设计基础', '273', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (15, 1, 'C++语言程序设计基础', '314', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (16, 1, 'C++语言程序设计基础', '347', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (17, 1, 'C++语言程序设计基础', '173', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (18, 1, 'C++语言程序设计基础', '143', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (19, 1, 'C++语言程序设计基础', '154', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (20, 1, 'C++语言程序设计基础', '128', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (21, 1, 'C++语言程序设计基础', '286', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (22, 1, 'C++语言程序设计基础', '383', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (23, 1, 'C++语言程序设计基础', '442', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (24, 1, 'C++语言程序设计基础', '474', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (25, 1, 'C++语言程序设计基础', '498', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (26, 1, 'C++语言程序设计基础', '406', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (27, 1, 'C++语言程序设计基础', '319', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (28, 1, 'C++语言程序设计基础', '68', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (29, 1, 'C++语言程序设计基础', '303', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (30, 1, 'C++语言程序设计基础', '469', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (31, 1, 'C++语言程序设计基础', '354', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (32, 1, 'C++语言程序设计基础', '393', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (33, 1, 'C++语言程序设计基础', '329', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (34, 1, 'C++语言程序设计基础', '316', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (35, 1, 'C++语言程序设计基础', '42', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (36, 1, 'C++语言程序设计基础', '138', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (37, 1, 'C++语言程序设计基础', '512', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (38, 1, 'C++语言程序设计基础', '130', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (39, 1, 'C++语言程序设计基础', '114', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (40, 1, 'C++语言程序设计基础', '18', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (41, 2, '数据结构(上)', '191', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (42, 2, '数据结构(上)', '81', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (43, 2, '数据结构(上)', '478', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (44, 2, '数据结构(上)', '222', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (45, 2, '数据结构(上)', '304', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (46, 2, '数据结构(上)', '461', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (47, 2, '数据结构(上)', '474', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (48, 2, '数据结构(上)', '118', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (49, 2, '数据结构(上)', '65', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (50, 2, '数据结构(上)', '59', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (51, 2, '数据结构(上)', '87', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (52, 2, '数据结构(上)', '131', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (53, 2, '数据结构(上)', '142', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (54, 2, '数据结构(上)', '383', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (55, 2, '数据结构(上)', '154', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (56, 2, '数据结构(上)', '362', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (57, 2, '数据结构(上)', '282', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (58, 2, '数据结构(上)', '13', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (59, 2, '数据结构(上)', '475', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (60, 2, '数据结构(上)', '504', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (61, 2, '数据结构(上)', '419', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (62, 2, '数据结构(上)', '95', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (63, 2, '数据结构(上)', '320', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (64, 2, '数据结构(上)', '242', 1232141425, '700002', '2024-12-31 00:41:21', 15, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (65, 3, '数据结构(下)', '238', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (66, 3, '数据结构(下)', '27', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (67, 3, '数据结构(下)', '462', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (68, 3, '数据结构(下)', '191', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (69, 3, '数据结构(下)', '73', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (70, 3, '数据结构(下)', '303', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (71, 3, '数据结构(下)', '403', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (72, 3, '数据结构(下)', '165', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (73, 3, '数据结构(下)', '439', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (74, 3, '数据结构(下)', '69', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (75, 3, '数据结构(下)', '249', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (76, 3, '数据结构(下)', '77', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (77, 3, '数据结构(下)', '92', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (78, 3, '数据结构(下)', '268', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (79, 3, '数据结构(下)', '169', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (80, 4, '操作系统', '150', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (81, 4, '操作系统', '306', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (82, 4, '操作系统', '468', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (83, 4, '操作系统', '283', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (84, 4, '操作系统', '332', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (85, 4, '操作系统', '268', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (86, 4, '操作系统', '398', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (87, 4, '操作系统', '338', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (88, 4, '操作系统', '43', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (89, 4, '操作系统', '492', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (90, 4, '操作系统', '26', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (91, 4, '操作系统', '191', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (92, 4, '操作系统', '328', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (93, 4, '操作系统', '276', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (94, 4, '操作系统', '252', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (95, 4, '操作系统', '164', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (96, 4, '操作系统', '342', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (97, 4, '操作系统', '84', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (98, 4, '操作系统', '18', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (99, 4, '操作系统', '298', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (100, 4, '操作系统', '428', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (101, 4, '操作系统', '109', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (102, 4, '操作系统', '389', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (103, 4, '操作系统', '411', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (104, 4, '操作系统', '485', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (105, 4, '操作系统', '59', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (106, 4, '操作系统', '311', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (107, 4, '操作系统', '147', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (108, 4, '操作系统', '170', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (109, 4, '操作系统', '363', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (110, 4, '操作系统', '390', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (111, 4, '操作系统', '171', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (112, 4, '操作系统', '23', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (113, 4, '操作系统', '155', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (114, 4, '操作系统', '120', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (115, 4, '操作系统', '206', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (116, 4, '操作系统', '493', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (117, 4, '操作系统', '68', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (118, 4, '操作系统', '121', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (119, 4, '操作系统', '282', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (120, 4, '操作系统', '201', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (121, 4, '操作系统', '474', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (122, 4, '操作系统', '98', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (123, 4, '操作系统', '469', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (124, 4, '操作系统', '63', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (125, 4, '操作系统', '487', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (126, 4, '操作系统', '403', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (127, 5, 'Java程序设计', '40', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (128, 5, 'Java程序设计', '363', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (129, 5, 'Java程序设计', '55', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (130, 5, 'Java程序设计', '193', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (131, 5, 'Java程序设计', '393', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (132, 5, 'Java程序设计', '266', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (133, 5, 'Java程序设计', '404', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (134, 5, 'Java程序设计', '382', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (135, 5, 'Java程序设计', '177', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (136, 5, 'Java程序设计', '483', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (137, 5, 'Java程序设计', '259', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (138, 5, 'Java程序设计', '270', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (139, 5, 'Java程序设计', '59', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (140, 5, 'Java程序设计', '123', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (141, 5, 'Java程序设计', '13', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (142, 5, 'Java程序设计', '114', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (143, 5, 'Java程序设计', '493', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (144, 5, 'Java程序设计', '104', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (145, 5, 'Java程序设计', '441', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (146, 5, 'Java程序设计', '207', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (147, 5, 'Java程序设计', '167', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (148, 5, 'Java程序设计', '137', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (149, 5, 'Java程序设计', '213', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (150, 5, 'Java程序设计', '299', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (151, 5, 'Java程序设计', '510', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (152, 5, 'Java程序设计', '423', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (153, 5, 'Java程序设计', '65', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (154, 6, '网络技术与应用', '219', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (155, 6, '网络技术与应用', '193', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (156, 6, '网络技术与应用', '118', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (157, 6, '网络技术与应用', '429', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (158, 6, '网络技术与应用', '87', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (159, 6, '网络技术与应用', '350', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (160, 6, '网络技术与应用', '15', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (161, 6, '网络技术与应用', '41', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (162, 6, '网络技术与应用', '163', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (163, 6, '网络技术与应用', '422', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (164, 6, '网络技术与应用', '14', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (165, 6, '网络技术与应用', '455', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (166, 6, '网络技术与应用', '435', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (167, 6, '网络技术与应用', '124', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (168, 6, '网络技术与应用', '223', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (169, 6, '网络技术与应用', '497', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (170, 6, '网络技术与应用', '302', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (171, 6, '网络技术与应用', '120', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (172, 6, '网络技术与应用', '500', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (173, 6, '网络技术与应用', '25', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (174, 6, '网络技术与应用', '187', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (175, 6, '网络技术与应用', '432', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (176, 6, '网络技术与应用', '89', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (177, 6, '网络技术与应用', '451', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (178, 6, '网络技术与应用', '161', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (179, 6, '网络技术与应用', '406', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (180, 6, '网络技术与应用', '55', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (181, 6, '网络技术与应用', '247', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (182, 6, '网络技术与应用', '337', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (183, 6, '网络技术与应用', '485', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (184, 6, '网络技术与应用', '487', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (185, 6, '网络技术与应用', '204', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (186, 6, '网络技术与应用', '50', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (187, 6, '网络技术与应用', '127', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (188, 6, '网络技术与应用', '502', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (189, 6, '网络技术与应用', '60', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (190, 6, '网络技术与应用', '290', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (191, 6, '网络技术与应用', '330', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (192, 6, '网络技术与应用', '231', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (193, 6, '网络技术与应用', '40', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (194, 6, '网络技术与应用', '199', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (195, 6, '网络技术与应用', '280', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (196, 6, '网络技术与应用', '409', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (197, 6, '网络技术与应用', '499', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (198, 6, '网络技术与应用', '24', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (199, 6, '网络技术与应用', '481', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (200, 6, '网络技术与应用', '392', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (201, 6, '网络技术与应用', '252', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (202, 6, '网络技术与应用', '213', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (203, 7, '人工智能原理', '270', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (204, 7, '人工智能原理', '295', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (205, 7, '人工智能原理', '366', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (206, 7, '人工智能原理', '404', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (207, 7, '人工智能原理', '458', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (208, 7, '人工智能原理', '346', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (209, 7, '人工智能原理', '67', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (210, 7, '人工智能原理', '503', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (211, 7, '人工智能原理', '82', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (212, 7, '人工智能原理', '232', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (213, 7, '人工智能原理', '180', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (214, 7, '人工智能原理', '263', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (215, 7, '人工智能原理', '473', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (216, 7, '人工智能原理', '147', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (217, 7, '人工智能原理', '386', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (218, 7, '人工智能原理', '120', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (219, 7, '人工智能原理', '107', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (220, 7, '人工智能原理', '508', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (221, 7, '人工智能原理', '106', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (222, 7, '人工智能原理', '300', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (223, 7, '人工智能原理', '365', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (224, 7, '人工智能原理', '27', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (225, 7, '人工智能原理', '151', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (226, 7, '人工智能原理', '206', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (227, 7, '人工智能原理', '140', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (228, 7, '人工智能原理', '16', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (229, 7, '人工智能原理', '65', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (230, 7, '人工智能原理', '396', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (231, 7, '人工智能原理', '283', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (232, 7, '人工智能原理', '460', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (233, 7, '人工智能原理', '402', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (234, 7, '人工智能原理', '490', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (235, 7, '人工智能原理', '368', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (236, 7, '人工智能原理', '342', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (237, 7, '人工智能原理', '139', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (238, 7, '人工智能原理', '291', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (239, 7, '人工智能原理', '117', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (240, 7, '人工智能原理', '435', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (241, 7, '人工智能原理', '113', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (242, 7, '人工智能原理', '496', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (243, 7, '人工智能原理', '284', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (244, 7, '人工智能原理', '53', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (245, 7, '人工智能原理', '317', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (246, 7, '人工智能原理', '103', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (247, 7, '人工智能原理', '437', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (248, 7, '人工智能原理', '462', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (249, 8, 'C++语言程序设计进阶', '512', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (250, 8, 'C++语言程序设计进阶', '260', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (251, 8, 'C++语言程序设计进阶', '27', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (252, 8, 'C++语言程序设计进阶', '289', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (253, 8, 'C++语言程序设计进阶', '454', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (254, 8, 'C++语言程序设计进阶', '346', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (255, 8, 'C++语言程序设计进阶', '423', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (256, 8, 'C++语言程序设计进阶', '405', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (257, 8, 'C++语言程序设计进阶', '48', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (258, 8, 'C++语言程序设计进阶', '163', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (259, 8, 'C++语言程序设计进阶', '314', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (260, 8, 'C++语言程序设计进阶', '391', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (261, 8, 'C++语言程序设计进阶', '81', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (262, 8, 'C++语言程序设计进阶', '281', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (263, 8, 'C++语言程序设计进阶', '506', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (264, 8, 'C++语言程序设计进阶', '325', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (265, 8, 'C++语言程序设计进阶', '319', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (266, 8, 'C++语言程序设计进阶', '232', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (267, 8, 'C++语言程序设计进阶', '90', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (268, 8, 'C++语言程序设计进阶', '258', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (269, 8, 'C++语言程序设计进阶', '460', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (270, 8, 'C++语言程序设计进阶', '197', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (271, 8, 'C++语言程序设计进阶', '219', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (272, 8, 'C++语言程序设计进阶', '207', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (273, 8, 'C++语言程序设计进阶', '54', 1232141425, '700002', '2024-12-31 00:41:21', 12, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (274, 9, 'C程序设计案例教程（基础）', '198', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (275, 9, 'C程序设计案例教程（基础）', '80', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (276, 9, 'C程序设计案例教程（基础）', '271', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (277, 9, 'C程序设计案例教程（基础）', '276', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (278, 9, 'C程序设计案例教程（基础）', '316', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (279, 10, '软件工程', '472', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (280, 10, '软件工程', '53', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (281, 10, '软件工程', '136', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (282, 10, '软件工程', '401', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (283, 10, '软件工程', '125', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (284, 10, '软件工程', '13', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (285, 10, '软件工程', '127', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (286, 10, '软件工程', '501', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (287, 10, '软件工程', '354', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (288, 10, '软件工程', '358', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (289, 10, '软件工程', '436', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (290, 10, '软件工程', '227', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (291, 10, '软件工程', '142', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (292, 10, '软件工程', '109', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (293, 10, '软件工程', '402', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (294, 10, '软件工程', '349', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (295, 10, '软件工程', '121', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (296, 10, '软件工程', '83', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (297, 10, '软件工程', '474', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (298, 10, '软件工程', '28', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (299, 10, '软件工程', '137', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (300, 10, '软件工程', '207', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (301, 10, '软件工程', '395', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (302, 10, '软件工程', '215', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (303, 10, '软件工程', '503', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (304, 10, '软件工程', '103', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (305, 10, '软件工程', '368', 1232141425, '700002', '2024-12-31 00:41:21', 10, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (306, 11, '大数据技术与应用', '196', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (307, 11, '大数据技术与应用', '72', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (308, 11, '大数据技术与应用', '16', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (309, 11, '大数据技术与应用', '353', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (310, 11, '大数据技术与应用', '55', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (311, 11, '大数据技术与应用', '212', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (312, 11, '大数据技术与应用', '152', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (313, 11, '大数据技术与应用', '170', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (314, 11, '大数据技术与应用', '496', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (315, 11, '大数据技术与应用', '373', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (316, 11, '大数据技术与应用', '96', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (317, 11, '大数据技术与应用', '71', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (318, 11, '大数据技术与应用', '191', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (319, 11, '大数据技术与应用', '314', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (320, 11, '大数据技术与应用', '511', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (321, 11, '大数据技术与应用', '155', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (322, 11, '大数据技术与应用', '453', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (323, 12, 'Office办公软件应用', '502', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (324, 12, 'Office办公软件应用', '81', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (325, 12, 'Office办公软件应用', '51', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (326, 12, 'Office办公软件应用', '314', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (327, 12, 'Office办公软件应用', '213', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (328, 12, 'Office办公软件应用', '348', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (329, 12, 'Office办公软件应用', '42', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (330, 12, 'Office办公软件应用', '71', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (331, 12, 'Office办公软件应用', '188', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (332, 12, 'Office办公软件应用', '166', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (333, 12, 'Office办公软件应用', '158', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (334, 12, 'Office办公软件应用', '393', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (335, 12, 'Office办公软件应用', '159', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (336, 12, 'Office办公软件应用', '499', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (337, 12, 'Office办公软件应用', '398', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (338, 12, 'Office办公软件应用', '184', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (339, 12, 'Office办公软件应用', '149', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (340, 12, 'Office办公软件应用', '238', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (341, 12, 'Office办公软件应用', '469', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (342, 12, 'Office办公软件应用', '400', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (343, 12, 'Office办公软件应用', '511', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (344, 12, 'Office办公软件应用', '474', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (345, 12, 'Office办公软件应用', '309', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (346, 12, 'Office办公软件应用', '208', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (347, 12, 'Office办公软件应用', '307', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (348, 12, 'Office办公软件应用', '498', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (349, 12, 'Office办公软件应用', '45', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (350, 12, 'Office办公软件应用', '433', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (351, 12, 'Office办公软件应用', '79', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (352, 12, 'Office办公软件应用', '138', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (353, 12, 'Office办公软件应用', '226', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (354, 12, 'Office办公软件应用', '169', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (355, 12, 'Office办公软件应用', '463', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (356, 12, 'Office办公软件应用', '438', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (357, 12, 'Office办公软件应用', '232', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (358, 12, 'Office办公软件应用', '264', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (359, 12, 'Office办公软件应用', '269', 1232141425, '700002', '2024-12-31 00:41:21', 20, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (360, 13, 'C程序设计案例教程（进阶）', '92', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (361, 13, 'C程序设计案例教程（进阶）', '45', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (362, 13, 'C程序设计案例教程（进阶）', '386', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (363, 13, 'C程序设计案例教程（进阶）', '370', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (364, 13, 'C程序设计案例教程（进阶）', '54', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (365, 13, 'C程序设计案例教程（进阶）', '68', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (366, 13, 'C程序设计案例教程（进阶）', '501', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (367, 13, 'C程序设计案例教程（进阶）', '64', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (368, 14, '计算机文化基础', '165', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (369, 14, '计算机文化基础', '32', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (370, 14, '计算机文化基础', '405', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (371, 14, '计算机文化基础', '493', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (372, 14, '计算机文化基础', '511', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (373, 14, '计算机文化基础', '271', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (374, 14, '计算机文化基础', '429', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (375, 14, '计算机文化基础', '138', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (376, 14, '计算机文化基础', '216', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (377, 14, '计算机文化基础', '469', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (378, 14, '计算机文化基础', '218', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (379, 14, '计算机文化基础', '181', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (380, 14, '计算机文化基础', '85', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (381, 14, '计算机文化基础', '118', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (382, 14, '计算机文化基础', '328', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (383, 14, '计算机文化基础', '326', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (384, 14, '计算机文化基础', '407', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (385, 14, '计算机文化基础', '308', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (386, 14, '计算机文化基础', '498', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (387, 14, '计算机文化基础', '331', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (388, 14, '计算机文化基础', '306', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (389, 14, '计算机文化基础', '197', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (390, 14, '计算机文化基础', '214', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (391, 14, '计算机文化基础', '204', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (392, 14, '计算机文化基础', '251', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (393, 15, '大学计算机基础', '375', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (394, 15, '大学计算机基础', '310', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (395, 15, '大学计算机基础', '343', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (396, 15, '大学计算机基础', '210', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (397, 15, '大学计算机基础', '134', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (398, 15, '大学计算机基础', '159', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (399, 15, '大学计算机基础', '25', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (400, 15, '大学计算机基础', '418', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (401, 15, '大学计算机基础', '251', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (402, 15, '大学计算机基础', '267', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (403, 15, '大学计算机基础', '99', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (404, 15, '大学计算机基础', '332', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (405, 15, '大学计算机基础', '450', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (406, 15, '大学计算机基础', '185', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (407, 15, '大学计算机基础', '305', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (408, 15, '大学计算机基础', '443', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (409, 15, '大学计算机基础', '510', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (410, 15, '大学计算机基础', '400', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (411, 15, '大学计算机基础', '37', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (412, 15, '大学计算机基础', '92', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (413, 15, '大学计算机基础', '369', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (414, 15, '大学计算机基础', '172', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (415, 15, '大学计算机基础', '395', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (416, 15, '大学计算机基础', '177', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (417, 15, '大学计算机基础', '137', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (418, 15, '大学计算机基础', '385', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (419, 15, '大学计算机基础', '16', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (420, 15, '大学计算机基础', '72', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (421, 15, '大学计算机基础', '62', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (422, 15, '大学计算机基础', '501', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (423, 15, '大学计算机基础', '147', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (424, 15, '大学计算机基础', '489', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (425, 15, '大学计算机基础', '477', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (426, 15, '大学计算机基础', '224', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (427, 15, '大学计算机基础', '136', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (428, 15, '大学计算机基础', '406', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (429, 15, '大学计算机基础', '196', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (430, 15, '大学计算机基础', '187', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (431, 15, '大学计算机基础', '410', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (432, 15, '大学计算机基础', '235', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (433, 16, '程序设计基础', '195', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (434, 16, '程序设计基础', '369', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (435, 16, '程序设计基础', '436', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (436, 16, '程序设计基础', '376', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (437, 16, '程序设计基础', '217', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (438, 16, '程序设计基础', '319', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (439, 16, '程序设计基础', '466', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (440, 16, '程序设计基础', '431', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (441, 16, '程序设计基础', '211', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (442, 16, '程序设计基础', '112', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (443, 16, '程序设计基础', '154', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (444, 16, '程序设计基础', '422', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (445, 16, '程序设计基础', '172', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (446, 16, '程序设计基础', '143', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (447, 16, '程序设计基础', '240', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (448, 16, '程序设计基础', '36', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (449, 16, '程序设计基础', '42', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (450, 16, '程序设计基础', '127', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (451, 16, '程序设计基础', '212', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (452, 16, '程序设计基础', '368', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (453, 16, '程序设计基础', '230', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (454, 16, '程序设计基础', '161', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (455, 16, '程序设计基础', '351', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (456, 16, '程序设计基础', '145', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (457, 16, '程序设计基础', '222', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (458, 16, '程序设计基础', '377', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (459, 16, '程序设计基础', '121', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (460, 16, '程序设计基础', '67', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (461, 16, '程序设计基础', '155', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (462, 16, '程序设计基础', '506', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (463, 16, '程序设计基础', '499', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (464, 16, '程序设计基础', '221', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (465, 16, '程序设计基础', '367', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (466, 16, '程序设计基础', '280', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (467, 16, '程序设计基础', '241', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (468, 16, '程序设计基础', '78', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (469, 16, '程序设计基础', '278', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (470, 16, '程序设计基础', '119', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (471, 16, '程序设计基础', '92', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (472, 16, '程序设计基础', '453', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (473, 17, '大数据系统基础', '259', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (474, 17, '大数据系统基础', '495', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (475, 17, '大数据系统基础', '449', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (476, 17, '大数据系统基础', '32', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (477, 17, '大数据系统基础', '325', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (478, 17, '大数据系统基础', '510', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (479, 17, '大数据系统基础', '283', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (480, 17, '大数据系统基础', '406', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (481, 17, '大数据系统基础', '443', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (482, 17, '大数据系统基础', '27', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (483, 17, '大数据系统基础', '508', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (484, 17, '大数据系统基础', '193', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (485, 17, '大数据系统基础', '450', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (486, 17, '大数据系统基础', '301', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (487, 17, '大数据系统基础', '136', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (488, 17, '大数据系统基础', '184', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (489, 17, '大数据系统基础', '74', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (490, 17, '大数据系统基础', '156', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (491, 17, '大数据系统基础', '402', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (492, 17, '大数据系统基础', '171', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (493, 17, '大数据系统基础', '327', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (494, 17, '大数据系统基础', '89', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (495, 17, '大数据系统基础', '455', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (496, 17, '大数据系统基础', '388', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (497, 17, '大数据系统基础', '417', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (498, 17, '大数据系统基础', '196', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (499, 17, '大数据系统基础', '280', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (500, 17, '大数据系统基础', '145', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (501, 17, '大数据系统基础', '159', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (502, 17, '大数据系统基础', '192', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (503, 17, '大数据系统基础', '138', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (504, 17, '大数据系统基础', '287', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (505, 17, '大数据系统基础', '359', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (506, 17, '大数据系统基础', '26', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (507, 17, '大数据系统基础', '334', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (508, 17, '大数据系统基础', '115', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (509, 17, '大数据系统基础', '479', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (510, 17, '大数据系统基础', '55', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (511, 17, '大数据系统基础', '164', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (512, 17, '大数据系统基础', '117', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (513, 17, '大数据系统基础', '362', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (514, 17, '大数据系统基础', '321', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (515, 17, '大数据系统基础', '174', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (516, 17, '大数据系统基础', '290', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (517, 17, '大数据系统基础', '383', 1232141425, '700002', '2024-12-31 00:41:21', 9, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (518, 18, '算法设计与分析', '338', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (519, 18, '算法设计与分析', '209', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (520, 18, '算法设计与分析', '367', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (521, 18, '算法设计与分析', '427', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (522, 18, '算法设计与分析', '234', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (523, 18, '算法设计与分析', '413', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (524, 18, '算法设计与分析', '67', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (525, 18, '算法设计与分析', '403', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (526, 18, '算法设计与分析', '307', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (527, 18, '算法设计与分析', '454', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (528, 18, '算法设计与分析', '341', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (529, 18, '算法设计与分析', '122', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (530, 18, '算法设计与分析', '312', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (531, 18, '算法设计与分析', '89', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (532, 18, '算法设计与分析', '512', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (533, 18, '算法设计与分析', '237', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (534, 18, '算法设计与分析', '225', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (535, 18, '算法设计与分析', '375', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (536, 18, '算法设计与分析', '482', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (537, 18, '算法设计与分析', '111', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (538, 18, '算法设计与分析', '441', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (539, 18, '算法设计与分析', '186', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (540, 18, '算法设计与分析', '293', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (541, 18, '算法设计与分析', '431', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (542, 18, '算法设计与分析', '333', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (543, 18, '算法设计与分析', '475', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (544, 18, '算法设计与分析', '239', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (545, 18, '算法设计与分析', '150', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (546, 18, '算法设计与分析', '394', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (547, 18, '算法设计与分析', '487', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (548, 18, '算法设计与分析', '361', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (549, 18, '算法设计与分析', '255', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (550, 18, '算法设计与分析', '397', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (551, 18, '算法设计与分析', '399', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (552, 18, '算法设计与分析', '45', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (553, 18, '算法设计与分析', '350', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (554, 18, '算法设计与分析', '374', 1232141425, '700002', '2024-12-31 00:41:21', 11, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (555, 19, '组合数学', '216', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (556, 19, '组合数学', '438', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (557, 19, '组合数学', '41', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (558, 19, '组合数学', '446', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (559, 19, '组合数学', '328', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (560, 19, '组合数学', '76', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (561, 19, '组合数学', '190', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (562, 19, '组合数学', '479', 1232141425, '700002', '2024-12-31 00:41:21', 13, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (563, 20, '计算机应用基础', '65', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (564, 20, '计算机应用基础', '383', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (565, 20, '计算机应用基础', '166', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (566, 20, '计算机应用基础', '291', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (567, 20, '计算机应用基础', '462', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (568, 20, '计算机应用基础', '453', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (569, 20, '计算机应用基础', '435', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (570, 20, '计算机应用基础', '216', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (571, 20, '计算机应用基础', '509', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (572, 20, '计算机应用基础', '69', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (573, 20, '计算机应用基础', '316', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (574, 20, '计算机应用基础', '27', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (575, 20, '计算机应用基础', '68', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (576, 20, '计算机应用基础', '463', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (577, 20, '计算机应用基础', '438', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (578, 20, '计算机应用基础', '474', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (579, 20, '计算机应用基础', '495', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (580, 20, '计算机应用基础', '210', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (581, 20, '计算机应用基础', '418', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (582, 20, '计算机应用基础', '424', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (583, 20, '计算机应用基础', '129', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (584, 20, '计算机应用基础', '309', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (585, 20, '计算机应用基础', '395', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (586, 20, '计算机应用基础', '354', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (587, 20, '计算机应用基础', '353', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (588, 20, '计算机应用基础', '434', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (589, 20, '计算机应用基础', '503', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (590, 20, '计算机应用基础', '259', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (591, 20, '计算机应用基础', '371', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (592, 20, '计算机应用基础', '364', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (593, 20, '计算机应用基础', '458', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (594, 20, '计算机应用基础', '478', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (595, 20, '计算机应用基础', '130', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (596, 20, '计算机应用基础', '494', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (597, 20, '计算机应用基础', '164', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (598, 20, '计算机应用基础', '30', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (599, 20, '计算机应用基础', '211', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (600, 20, '计算机应用基础', '368', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (601, 21, 'R语言数据分析', '247', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (602, 21, 'R语言数据分析', '322', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (603, 21, 'R语言数据分析', '180', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (604, 21, 'R语言数据分析', '254', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (605, 21, 'R语言数据分析', '328', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (606, 21, 'R语言数据分析', '321', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (607, 21, 'R语言数据分析', '399', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (608, 21, 'R语言数据分析', '34', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (609, 21, 'R语言数据分析', '154', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (610, 21, 'R语言数据分析', '439', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (611, 21, 'R语言数据分析', '370', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (612, 21, 'R语言数据分析', '248', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (613, 21, 'R语言数据分析', '453', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (614, 21, 'R语言数据分析', '416', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (615, 21, 'R语言数据分析', '293', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (616, 21, 'R语言数据分析', '408', 1232141425, '700002', '2024-12-31 00:41:21', 2, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (617, 22, '大学计算机', '406', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (618, 22, '大学计算机', '303', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (619, 22, '大学计算机', '192', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (620, 22, '大学计算机', '175', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (621, 22, '大学计算机', '353', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (622, 22, '大学计算机', '225', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (623, 22, '大学计算机', '27', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (624, 22, '大学计算机', '21', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (625, 22, '大学计算机', '267', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (626, 22, '大学计算机', '37', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (627, 22, '大学计算机', '102', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (628, 22, '大学计算机', '471', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (629, 22, '大学计算机', '315', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (630, 22, '大学计算机', '331', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (631, 22, '大学计算机', '89', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (632, 22, '大学计算机', '379', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (633, 22, '大学计算机', '361', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (634, 22, '大学计算机', '36', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (635, 22, '大学计算机', '69', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    

    INSERT INTO `choose_course` (`id`, `course_id`, `course_name`, `user_id`, `company_id`, `order_type`, `create_date`, `course_price`, `valid_days`, `status`, `validtime_start`, `validtime_end`, `remarks`)
    VALUES (636, 22, '大学计算机', '210', 1232141425, '700001', '2024-12-31 00:41:21', 0, 365, '701001', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '');
    
