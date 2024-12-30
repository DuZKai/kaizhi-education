-- Host: 192.168.101.65    Database: kaizhi_edu_learning

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `choose_course`
--

DROP TABLE IF EXISTS `choose_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choose_course`
--

LOCK TABLES `choose_course` WRITE;
/*!40000 ALTER TABLE `choose_course` DISABLE KEYS */;

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


/*!40000 ALTER TABLE `choose_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tables`
--

DROP TABLE IF EXISTS `course_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tables`
--

LOCK TABLES `course_tables` WRITE;
/*!40000 ALTER TABLE `course_tables` DISABLE KEYS */;

INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (1, 1, '378', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (2, 2, '205', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (3, 3, '259', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (4, 4, '35', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (5, 5, '86', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (6, 6, '417', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (7, 7, '399', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (8, 8, '14', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (9, 9, '39', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (10, 10, '434', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (11, 11, '472', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (12, 12, '291', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (13, 13, '299', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (14, 14, '273', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (15, 15, '314', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (16, 16, '347', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (17, 17, '173', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (18, 18, '143', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (19, 19, '154', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (20, 20, '128', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (21, 21, '286', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (22, 22, '383', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (23, 23, '442', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (24, 24, '474', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (25, 25, '498', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (26, 26, '406', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (27, 27, '319', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (28, 28, '68', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (29, 29, '303', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (30, 30, '469', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (31, 31, '354', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (32, 32, '393', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (33, 33, '329', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (34, 34, '316', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (35, 35, '42', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (36, 36, '138', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (37, 37, '512', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (38, 38, '130', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (39, 39, '114', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (40, 40, '18', 1, 1232141425, 'C++语言程序设计基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (41, 41, '191', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (42, 42, '81', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (43, 43, '478', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (44, 44, '222', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (45, 45, '304', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (46, 46, '461', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (47, 47, '474', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (48, 48, '118', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (49, 49, '65', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (50, 50, '59', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (51, 51, '87', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (52, 52, '131', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (53, 53, '142', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (54, 54, '383', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (55, 55, '154', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (56, 56, '362', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (57, 57, '282', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (58, 58, '13', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (59, 59, '475', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (60, 60, '504', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (61, 61, '419', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (62, 62, '95', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (63, 63, '320', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (64, 64, '242', 2, 1232141425, '数据结构(上)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (65, 65, '238', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (66, 66, '27', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (67, 67, '462', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (68, 68, '191', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (69, 69, '73', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (70, 70, '303', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (71, 71, '403', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (72, 72, '165', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (73, 73, '439', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (74, 74, '69', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (75, 75, '249', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (76, 76, '77', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (77, 77, '92', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (78, 78, '268', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (79, 79, '169', 3, 1232141425, '数据结构(下)', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (80, 80, '150', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (81, 81, '306', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (82, 82, '468', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (83, 83, '283', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (84, 84, '332', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (85, 85, '268', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (86, 86, '398', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (87, 87, '338', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (88, 88, '43', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (89, 89, '492', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (90, 90, '26', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (91, 91, '191', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (92, 92, '328', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (93, 93, '276', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (94, 94, '252', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (95, 95, '164', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (96, 96, '342', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (97, 97, '84', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (98, 98, '18', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (99, 99, '298', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (100, 100, '428', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (101, 101, '109', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (102, 102, '389', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (103, 103, '411', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (104, 104, '485', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (105, 105, '59', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (106, 106, '311', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (107, 107, '147', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (108, 108, '170', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (109, 109, '363', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (110, 110, '390', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (111, 111, '171', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (112, 112, '23', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (113, 113, '155', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (114, 114, '120', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (115, 115, '206', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (116, 116, '493', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (117, 117, '68', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (118, 118, '121', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (119, 119, '282', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (120, 120, '201', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (121, 121, '474', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (122, 122, '98', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (123, 123, '469', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (124, 124, '63', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (125, 125, '487', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (126, 126, '403', 4, 1232141425, '操作系统', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (127, 127, '40', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (128, 128, '363', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (129, 129, '55', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (130, 130, '193', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (131, 131, '393', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (132, 132, '266', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (133, 133, '404', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (134, 134, '382', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (135, 135, '177', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (136, 136, '483', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (137, 137, '259', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (138, 138, '270', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (139, 139, '59', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (140, 140, '123', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (141, 141, '13', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (142, 142, '114', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (143, 143, '493', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (144, 144, '104', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (145, 145, '441', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (146, 146, '207', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (147, 147, '167', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (148, 148, '137', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (149, 149, '213', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (150, 150, '299', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (151, 151, '510', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (152, 152, '423', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (153, 153, '65', 5, 1232141425, 'Java程序设计', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (154, 154, '219', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (155, 155, '193', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (156, 156, '118', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (157, 157, '429', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (158, 158, '87', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (159, 159, '350', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (160, 160, '15', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (161, 161, '41', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (162, 162, '163', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (163, 163, '422', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (164, 164, '14', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (165, 165, '455', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (166, 166, '435', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (167, 167, '124', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (168, 168, '223', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (169, 169, '497', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (170, 170, '302', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (171, 171, '120', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (172, 172, '500', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (173, 173, '25', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (174, 174, '187', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (175, 175, '432', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (176, 176, '89', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (177, 177, '451', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (178, 178, '161', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (179, 179, '406', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (180, 180, '55', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (181, 181, '247', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (182, 182, '337', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (183, 183, '485', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (184, 184, '487', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (185, 185, '204', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (186, 186, '50', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (187, 187, '127', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (188, 188, '502', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (189, 189, '60', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (190, 190, '290', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (191, 191, '330', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (192, 192, '231', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (193, 193, '40', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (194, 194, '199', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (195, 195, '280', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (196, 196, '409', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (197, 197, '499', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (198, 198, '24', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (199, 199, '481', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (200, 200, '392', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (201, 201, '252', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (202, 202, '213', 6, 1232141425, '网络技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (203, 203, '270', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (204, 204, '295', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (205, 205, '366', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (206, 206, '404', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (207, 207, '458', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (208, 208, '346', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (209, 209, '67', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (210, 210, '503', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (211, 211, '82', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (212, 212, '232', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (213, 213, '180', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (214, 214, '263', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (215, 215, '473', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (216, 216, '147', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (217, 217, '386', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (218, 218, '120', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (219, 219, '107', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (220, 220, '508', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (221, 221, '106', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (222, 222, '300', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (223, 223, '365', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (224, 224, '27', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (225, 225, '151', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (226, 226, '206', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (227, 227, '140', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (228, 228, '16', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (229, 229, '65', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (230, 230, '396', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (231, 231, '283', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (232, 232, '460', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (233, 233, '402', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (234, 234, '490', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (235, 235, '368', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (236, 236, '342', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (237, 237, '139', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (238, 238, '291', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (239, 239, '117', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (240, 240, '435', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (241, 241, '113', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (242, 242, '496', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (243, 243, '284', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (244, 244, '53', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (245, 245, '317', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (246, 246, '103', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (247, 247, '437', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (248, 248, '462', 7, 1232141425, '人工智能原理', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (249, 249, '512', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (250, 250, '260', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (251, 251, '27', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (252, 252, '289', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (253, 253, '454', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (254, 254, '346', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (255, 255, '423', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (256, 256, '405', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (257, 257, '48', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (258, 258, '163', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (259, 259, '314', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (260, 260, '391', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (261, 261, '81', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (262, 262, '281', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (263, 263, '506', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (264, 264, '325', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (265, 265, '319', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (266, 266, '232', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (267, 267, '90', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (268, 268, '258', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (269, 269, '460', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (270, 270, '197', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (271, 271, '219', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (272, 272, '207', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (273, 273, '54', 8, 1232141425, 'C++语言程序设计进阶', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (274, 274, '198', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (275, 275, '80', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (276, 276, '271', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (277, 277, '276', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (278, 278, '316', 9, 1232141425, 'C程序设计案例教程（基础）', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (279, 279, '472', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (280, 280, '53', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (281, 281, '136', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (282, 282, '401', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (283, 283, '125', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (284, 284, '13', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (285, 285, '127', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (286, 286, '501', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (287, 287, '354', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (288, 288, '358', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (289, 289, '436', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (290, 290, '227', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (291, 291, '142', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (292, 292, '109', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (293, 293, '402', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (294, 294, '349', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (295, 295, '121', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (296, 296, '83', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (297, 297, '474', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (298, 298, '28', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (299, 299, '137', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (300, 300, '207', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (301, 301, '395', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (302, 302, '215', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (303, 303, '503', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (304, 304, '103', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (305, 305, '368', 10, 1232141425, '软件工程', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (306, 306, '196', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (307, 307, '72', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (308, 308, '16', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (309, 309, '353', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (310, 310, '55', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (311, 311, '212', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (312, 312, '152', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (313, 313, '170', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (314, 314, '496', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (315, 315, '373', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (316, 316, '96', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (317, 317, '71', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (318, 318, '191', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (319, 319, '314', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (320, 320, '511', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (321, 321, '155', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (322, 322, '453', 11, 1232141425, '大数据技术与应用', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (323, 323, '502', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (324, 324, '81', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (325, 325, '51', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (326, 326, '314', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (327, 327, '213', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (328, 328, '348', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (329, 329, '42', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (330, 330, '71', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (331, 331, '188', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (332, 332, '166', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (333, 333, '158', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (334, 334, '393', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (335, 335, '159', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (336, 336, '499', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (337, 337, '398', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (338, 338, '184', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (339, 339, '149', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (340, 340, '238', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (341, 341, '469', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (342, 342, '400', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (343, 343, '511', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (344, 344, '474', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (345, 345, '309', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (346, 346, '208', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (347, 347, '307', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (348, 348, '498', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (349, 349, '45', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (350, 350, '433', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (351, 351, '79', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (352, 352, '138', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (353, 353, '226', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (354, 354, '169', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (355, 355, '463', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (356, 356, '438', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (357, 357, '232', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (358, 358, '264', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (359, 359, '269', 12, 1232141425, 'Office办公软件应用', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (360, 360, '92', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (361, 361, '45', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (362, 362, '386', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (363, 363, '370', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (364, 364, '54', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (365, 365, '68', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (366, 366, '501', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (367, 367, '64', 13, 1232141425, 'C程序设计案例教程（进阶）', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (368, 368, '165', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (369, 369, '32', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (370, 370, '405', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (371, 371, '493', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (372, 372, '511', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (373, 373, '271', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (374, 374, '429', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (375, 375, '138', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (376, 376, '216', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (377, 377, '469', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (378, 378, '218', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (379, 379, '181', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (380, 380, '85', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (381, 381, '118', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (382, 382, '328', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (383, 383, '326', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (384, 384, '407', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (385, 385, '308', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (386, 386, '498', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (387, 387, '331', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (388, 388, '306', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (389, 389, '197', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (390, 390, '214', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (391, 391, '204', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (392, 392, '251', 14, 1232141425, '计算机文化基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (393, 393, '375', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (394, 394, '310', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (395, 395, '343', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (396, 396, '210', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (397, 397, '134', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (398, 398, '159', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (399, 399, '25', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (400, 400, '418', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (401, 401, '251', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (402, 402, '267', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (403, 403, '99', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (404, 404, '332', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (405, 405, '450', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (406, 406, '185', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (407, 407, '305', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (408, 408, '443', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (409, 409, '510', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (410, 410, '400', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (411, 411, '37', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (412, 412, '92', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (413, 413, '369', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (414, 414, '172', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (415, 415, '395', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (416, 416, '177', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (417, 417, '137', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (418, 418, '385', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (419, 419, '16', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (420, 420, '72', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (421, 421, '62', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (422, 422, '501', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (423, 423, '147', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (424, 424, '489', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (425, 425, '477', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (426, 426, '224', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (427, 427, '136', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (428, 428, '406', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (429, 429, '196', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (430, 430, '187', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (431, 431, '410', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (432, 432, '235', 15, 1232141425, '大学计算机基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (433, 433, '195', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (434, 434, '369', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (435, 435, '436', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (436, 436, '376', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (437, 437, '217', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (438, 438, '319', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (439, 439, '466', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (440, 440, '431', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (441, 441, '211', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (442, 442, '112', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (443, 443, '154', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (444, 444, '422', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (445, 445, '172', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (446, 446, '143', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (447, 447, '240', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (448, 448, '36', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (449, 449, '42', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (450, 450, '127', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (451, 451, '212', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (452, 452, '368', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (453, 453, '230', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (454, 454, '161', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (455, 455, '351', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (456, 456, '145', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (457, 457, '222', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (458, 458, '377', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (459, 459, '121', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (460, 460, '67', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (461, 461, '155', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (462, 462, '506', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (463, 463, '499', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (464, 464, '221', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (465, 465, '367', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (466, 466, '280', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (467, 467, '241', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (468, 468, '78', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (469, 469, '278', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (470, 470, '119', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (471, 471, '92', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (472, 472, '453', 16, 1232141425, '程序设计基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (473, 473, '259', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (474, 474, '495', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (475, 475, '449', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (476, 476, '32', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (477, 477, '325', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (478, 478, '510', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (479, 479, '283', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (480, 480, '406', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (481, 481, '443', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (482, 482, '27', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (483, 483, '508', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (484, 484, '193', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (485, 485, '450', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (486, 486, '301', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (487, 487, '136', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (488, 488, '184', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (489, 489, '74', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (490, 490, '156', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (491, 491, '402', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (492, 492, '171', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (493, 493, '327', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (494, 494, '89', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (495, 495, '455', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (496, 496, '388', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (497, 497, '417', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (498, 498, '196', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (499, 499, '280', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (500, 500, '145', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (501, 501, '159', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (502, 502, '192', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (503, 503, '138', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (504, 504, '287', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (505, 505, '359', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (506, 506, '26', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (507, 507, '334', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (508, 508, '115', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (509, 509, '479', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (510, 510, '55', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (511, 511, '164', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (512, 512, '117', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (513, 513, '362', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (514, 514, '321', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (515, 515, '174', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (516, 516, '290', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (517, 517, '383', 17, 1232141425, '大数据系统基础', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (518, 518, '338', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (519, 519, '209', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (520, 520, '367', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (521, 521, '427', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (522, 522, '234', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (523, 523, '413', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (524, 524, '67', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (525, 525, '403', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (526, 526, '307', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (527, 527, '454', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (528, 528, '341', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (529, 529, '122', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (530, 530, '312', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (531, 531, '89', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (532, 532, '512', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (533, 533, '237', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (534, 534, '225', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (535, 535, '375', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (536, 536, '482', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (537, 537, '111', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (538, 538, '441', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (539, 539, '186', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (540, 540, '293', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (541, 541, '431', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (542, 542, '333', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (543, 543, '475', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (544, 544, '239', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (545, 545, '150', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (546, 546, '394', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (547, 547, '487', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (548, 548, '361', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (549, 549, '255', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (550, 550, '397', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (551, 551, '399', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (552, 552, '45', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (553, 553, '350', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (554, 554, '374', 18, 1232141425, '算法设计与分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (555, 555, '216', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (556, 556, '438', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (557, 557, '41', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (558, 558, '446', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (559, 559, '328', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (560, 560, '76', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (561, 561, '190', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (562, 562, '479', 19, 1232141425, '组合数学', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (563, 563, '65', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (564, 564, '383', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (565, 565, '166', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (566, 566, '291', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (567, 567, '462', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (568, 568, '453', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (569, 569, '435', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (570, 570, '216', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (571, 571, '509', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (572, 572, '69', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (573, 573, '316', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (574, 574, '27', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (575, 575, '68', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (576, 576, '463', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (577, 577, '438', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (578, 578, '474', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (579, 579, '495', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (580, 580, '210', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (581, 581, '418', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (582, 582, '424', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (583, 583, '129', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (584, 584, '309', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (585, 585, '395', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (586, 586, '354', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (587, 587, '353', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (588, 588, '434', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (589, 589, '503', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (590, 590, '259', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (591, 591, '371', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (592, 592, '364', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (593, 593, '458', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (594, 594, '478', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (595, 595, '130', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (596, 596, '494', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (597, 597, '164', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (598, 598, '30', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (599, 599, '211', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (600, 600, '368', 20, 1232141425, '计算机应用基础', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (601, 601, '247', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (602, 602, '322', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (603, 603, '180', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (604, 604, '254', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (605, 605, '328', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (606, 606, '321', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (607, 607, '399', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (608, 608, '34', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (609, 609, '154', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (610, 610, '439', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (611, 611, '370', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (612, 612, '248', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (613, 613, '453', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (614, 614, '416', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (615, 615, '293', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (616, 616, '408', 21, 1232141425, 'R语言数据分析', '700002', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (617, 617, '406', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (618, 618, '303', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (619, 619, '192', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (620, 620, '175', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (621, 621, '353', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (622, 622, '225', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (623, 623, '27', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (624, 624, '21', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (625, 625, '267', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (626, 626, '37', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (627, 627, '102', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (628, 628, '471', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (629, 629, '315', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (630, 630, '331', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (631, 631, '89', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (632, 632, '379', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (633, 633, '361', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (634, 634, '36', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (635, 635, '69', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');


INSERT INTO `course_tables` (`id`, `choose_course_id`, `user_id`, `course_id`, `company_id`, `course_name`, `course_type`, `create_date`, `validtime_start`, `validtime_end`, `update_date`, `remarks`)
VALUES (636, 636, '210', 22, 1232141425, '大学计算机', '700001', '2024-12-31 00:41:21', '2024-12-31 00:41:21', '2025-12-31 00:41:21', '2024-12-31 00:41:21', '');

/*!40000 ALTER TABLE `course_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learn_record`
--

DROP TABLE IF EXISTS `learn_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learn_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL COMMENT '课程id',
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '课程名称',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户id',
  `learn_date` datetime DEFAULT NULL COMMENT '最近学习时间',
  `learn_length` bigint DEFAULT NULL COMMENT '学习时长',
  `teachplan_id` bigint DEFAULT NULL COMMENT '章节id',
  `teachplan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '章节名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `learn_record_unique` (`course_id`,`user_id`,`teachplan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learn_record`
--

LOCK TABLES `learn_record` WRITE;
/*!40000 ALTER TABLE `learn_record` DISABLE KEYS */;
INSERT INTO `learn_record` (`id`, `course_id`, `course_name`, `user_id`, `learn_date`, `learn_length`, `teachplan_id`, `teachplan_name`)
VALUES (1,123,'SpringBoot实战','52','2022-10-06 11:31:19',22,222,'入门程序'),
       (2,121,'Java编程思想','52','2022-10-06 11:31:57',10,333,'Java学习路径'),
       (7,117,'Nacos微服务开发实战','52','2022-10-06 13:18:24',0,269,'1.1 什么是配置中心'),
       (8,117,'Nacos微服务开发实战','52','2022-10-06 13:18:23',0,270,'1.2Nacos简介'),
       (9,117,'Nacos微服务开发实战','52','2022-10-06 13:18:25',0,271,'1.3安装Nacos Server'),
       (10,117,'Nacos微服务开发实战','52','2022-10-06 13:18:27',0,272,'1.4Nacos配置入门'),
       (11,117,'Nacos微服务开发实战','52','2022-10-06 13:41:08',0,275,'2.1什么是服务发现'),(12,117,'Nacos微服务开发实战','52','2022-10-06 13:18:46',0,276,'2.2服务发现快速入门');
/*!40000 ALTER TABLE `learn_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 16:51:22
