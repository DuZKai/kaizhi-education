/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.101.65
 Source Server Type    : MySQL
 Source Server Version : 80026 (8.0.26)
 Source Host           : 192.168.101.65:3306
 Source Schema         : kaizhi_edu_content

 Target Server Type    : MySQL
 Target Server Version : 80026 (8.0.26)
 File Encoding         : 65001

 Date: 06/12/2024 15:49:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course_audit
-- ----------------------------
DROP TABLE IF EXISTS `course_audit`;
CREATE TABLE `course_audit`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL COMMENT '课程id',
  `audit_mind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `audit_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '审核状态',
  `audit_people` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_audit
-- ----------------------------

-- ----------------------------
-- Table structure for course_base
-- ----------------------------
DROP TABLE IF EXISTS `course_base`;
CREATE TABLE `course_base`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_id` bigint NOT NULL COMMENT '机构ID',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `users` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用人群',
  `tags` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程标签',
  `mt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大分类',
  `st` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小分类',
  `grade` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程等级',
  `teachmode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教育模式(common普通，record 录播，live直播等）',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程介绍',
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程图片',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `change_date` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_people` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `change_people` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `audit_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核状态',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '课程发布状态 未发布  已发布 下线',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程基本信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_base
-- ----------------------------
INSERT INTO `course_base` VALUES (1, 1232141425, NULL, 'C++语言程序设计基础', '所有人', '一流课程', '1-5', '1-5-1', '204001', '200002', 'C++是从C语言发展演变而来的一种面向对象的程序设计语言，本课程是一门面向广大初学者的入门课程。', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', '2024-12-03 17:22:19', '2024-12-23 21:19:02', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (2, 1232141425, NULL, '数据结构(上)', '学过邓俊辉 著 《数据结构（C++语言版 第3版）》  清华大学出版社  2013.9的人', '一流课程', '1-9', '1-9-4', '204001', '200002', '本课程旨在围绕各类数据结构的设计与实现，揭示其中的规律原理与方法技巧；同时针对算法设计及其性能分析，使学生了解并掌握主要的套路与手段。', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '2024-12-03 17:22:19', '2024-12-06 14:06:50', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (3, 1232141425, NULL, '数据结构(下)', '学过邓俊辉 著 《数据结构（C++语言版 第3版）》  清华大学出版社  2013.9的人', '一流课程', '1-7', '1-7-1', '204001', '200002', '本课程旨在围绕各类数据结构的设计与实现，揭示其中的规律原理与方法技巧；同时针对算法设计及其性能分析，使学生了解并掌握主要的套路与手段。', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '2024-12-03 17:22:19', '2024-12-06 14:07:10', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (4, 1232141425, NULL, '操作系统', '学过数据结构、汇编语言、计算机组成原理的人', '一流课程', '1-9', '1-9-10', '204001', '200002', '操作系统课讲解操作系统中如何管理和协调应用程序对计算机系统中软硬件资源的使用。', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '2024-12-03 17:22:19', '2024-12-06 14:07:27', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (5, 1232141425, NULL, 'Java程序设计', '程序设计初学者', '一流课程', '1-13', '1-13-4', '204001', '200002', '【国家精品课】课程介绍Java的基础语法和面向对象的程序设计方法和GUI程序开发方法。', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '2024-12-03 17:22:19', '2024-12-06 14:07:42', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (6, 1232141425, NULL, '网络技术与应用', '学过具备计算机基础知识的人', '一流课程', '1-2', '1-2-5', '204001', '200002', '为了有效利用网络，就应该掌握网络的基本知识和使用网络的基本技能，也需要我们具备防御网络攻击的能力。如果你想跟上网络时代的步伐，或者正在准备全国计算机等级考试三级，或者Cisco CCNA认证考试，就请走进我们的MOOC吧。', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '2024-12-03 17:22:19', '2024-12-06 14:07:58', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (7, 1232141425, NULL, '人工智能原理', '具备一定的数据结构、算法等计算机知识，线性代数、概率论等数学知识，以及机器学习的基础知识即可', '一流课程', '1-14', '1-14-9', '204001', '200002', '本课程在系统回顾人工智能发展史的基础上，重点介绍人工智能的核心思想、基本理论，基本方法与部分应用。 课程以英文原版教材为主，并根据人工智能、特别是机器学习领域的发展和变化，编撰和充实了大量内容。采用中英文PPT，中文讲授。', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '2024-12-03 17:22:19', '2024-12-06 14:09:44', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (8, 1232141425, NULL, 'C++语言程序设计进阶', '所有人', '一流课程', '1-1', '1-1-1', '204001', '200002', 'C++是从C语言发展演变而来的一种面向对象的程序设计语言，本课程是一门面向广大初学者的入门课程。', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '2024-12-03 17:22:19', '2024-12-06 14:13:02', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (9, 1232141425, NULL, 'C程序设计案例教程（基础）', '所有人', '一流课程', '1-6', '1-6-9', '204001', '200002', 'C语言曾开发出UNIX操作系统等经典系统。随着物联网、人工智能、大数据、云计算等新技术不断发展，也广泛用于开发各种应用程序，且易于使用，还具有硬件底层执行能力，因此能够持久丰富与发展，在TIOBE世界排行榜中始终位于前列。', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '2024-12-03 17:22:19', '2024-12-06 14:13:32', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (10, 1232141425, NULL, '软件工程', '所有人', '一流课程', '1-2', '1-2-2', '204001', '200002', '用正确的方式建造有价值的软件，软件工程课程为您讲授软件系统的构建之道！ 本课程为国家级精品在线开放课程和国家级一流本科课程，并入围首批中国高校计算机教育慕课联盟—华为技术公司\"智能基座\"课程。', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '2024-12-03 17:22:19', '2024-12-23 21:17:34', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (11, 1232141425, NULL, '大数据技术与应用', '学过的人', '一流课程', '1-2', '1-2-8', '204001', '200002', '结合应用实例融会贯通大数据中的理论方法和系统知识（平台、模块、工具），体会运用大数据技术解决实际问题的思路和效果。', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '2024-12-03 17:22:19', '2024-12-06 14:15:18', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (12, 1232141425, NULL, 'Office办公软件应用', '所有人', '一流课程', '1-2', '1-2-2', '204001', '200002', 'Microsoft Office是微软公司开发的一套应用较为广泛的办公软件套装，是日常工作和生活中信息处理的重要工具。本课程主要介绍Microsoft Office中的文字处理软件Word、电子表格处理软件Excel、演示文稿处理软件PowerPoint三个常用组件的基本操作方法。', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2024-12-03 17:22:19', '2024-12-06 14:15:34', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (13, 1232141425, NULL, 'C程序设计案例教程（进阶）', '所有人', '一流课程', '1-2', '1-2-1', '204001', '200002', 'C语言随新技术发展经久不衰持续发展，是现代信息技术开发应用的重要组成部分。系统学习掌握C程序设计，熟练掌握核心要点和知识体系，是掌握现代编程的重要基础。本课成作为进阶篇，是C程序设计的精华所在，通过各种实用案例分析，来解析相关知识要点难点，系统理解掌握相关知识要点和算法实现技术方法。', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', '2024-12-03 17:22:19', '2024-12-06 14:15:57', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (14, 1232141425, NULL, '计算机文化基础', '所有人', '一流课程', '1-4', '1-4-3', '204001', '200002', '面对无处不在的信息技术，你一定希望应用工具和技术解决常见的学习工作问题。甚至希望能够将信息技术应用到新的地方，那么，请加入课程学习！', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2024-12-03 17:22:19', '2024-12-06 14:16:43', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (15, 1232141425, NULL, '大学计算机基础', '所有人', '一流课程', '1-9', '1-9-1', '204001', '200002', '《大学计算机基础》是为非计算机专业学生开设的第一门计算机基础课。想一网打尽计算机的基础知识，培养计算思维能力，了解常用软件的用途及操作技巧，在互联网+时代成为精通计算机及相关技术的专业人才，那就快来学习这门课程吧！', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2024-12-03 17:22:19', '2024-12-06 14:16:56', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (16, 1232141425, NULL, '程序设计基础', '学过程序设计基础的人', '一流课程', '1-8', '1-8-5', '204001', '200002', '如何从生活中提炼算法，使计算机能象人一样解决问题？如何运用计算思维，用计算机来提高人的能力？我们将为你呈现一个既熟悉又陌生的精彩世界，带你感悟不一样的计算人生。', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '2024-12-03 17:22:19', '2024-12-06 14:17:13', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (17, 1232141425, NULL, '大数据系统基础', '具备编程语言（Java或C）、数据库原理、操作系统相关知识的人', '一流课程', '1-3', '1-3-1', '204001', '200002', '大数据是一门交叉学科。本门课程重点介绍大数据管理的工具平台、开发环境、基本原理。', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '2024-12-03 17:22:19', '2024-12-06 14:17:28', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (18, 1232141425, NULL, '算法设计与分析', '所有人', '一流课程', '1-1', '1-1-2', '204001', '200002', '信息时代，算法为王，和我一起进入算法的世界。', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '2024-12-03 17:22:19', '2024-12-06 14:17:48', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (19, 1232141425, NULL, '组合数学', '所有人', '一流课程', '1-14', '1-14-7', '204001', '200002', '本课程是计算机专业核心的基础理论课，是计算机理论分析和算法设计的基础，侧重介绍组合数学的概念和思想，研究离散对象的计数方法和相关理论。', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '2024-12-03 17:22:19', '2024-12-06 14:18:04', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (20, 1232141425, NULL, '计算机应用基础', '所有人', '一流课程', '1-13', '1-13-3', '204001', '200002', '《计算机应用基础》课程将以计算机应用技能培养为导向，以计算机原理、概念为基础，以新技术新方法为牵引，以信息化办公和计算机维护为突破口，以创新思维能力培养为目标，和学习者一起了解计算机的发展史及软硬件结构，掌握计算机操作系统及各种办公软件的使用技巧，熟悉计算机网络基础知识、Internet技术和计算机安全维护等相关知识，为学习者职业生涯发展、终身学习和社会服务奠定基础。', '/mediafiles/2024/12/06/dcb647367ea1550e83074acd7864f353.png', '2024-12-03 17:22:19', '2024-12-29 23:13:40', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (21, 1232141425, NULL, 'R语言数据分析', '具有大学计算机及数学基础的人', '一流课程', '1-13', '1-13-1', '204001', '200002', '数据赋人工系统以智能。《R语言数据分析》从问道、执具、博术三个方面，阐述机器学习/数据挖掘的方法论（道）、编程工具R语言（具）以及经典算法模型（术）。通过课程的学习，可一起领悟数据分析之哲理、掌握模型算法之要义、提升工程实践之素养，推开人工智能的大门，为同学们在机器学习/数据挖掘领域登堂入室奠定基础', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '2024-12-03 17:22:19', '2024-12-11 15:55:29', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (22, 1232141425, NULL, '大学计算机', '所有人', '一流课程', '1-11', '1-11-10', '204002', '200002', '大学计算机课程将以计算思维为导向，以计算机原理、概念为基础，以新技术新方法为牵引，以创新思维能力培养为目标，和学习者一起了解计算机科学，学习计算技术，掌握思维方法。', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '2024-12-03 17:22:19', '2024-12-06 14:18:31', NULL, NULL, '202004', '203002');
INSERT INTO `course_base` VALUES (23, 1232141425, NULL, 'Web前端攻城狮', '学过高级语言程序设计，具备较熟练的程序设计与实现能力的人', '一流课程', '1-3', '1-3-6', '204001', '200002', '作为一名合格的前端攻城狮，要写得了样式磕得了脚本，玩得转ES6，架得起业务框架拎得起动画效果，撑得住浏览器抵得住服务端，这门课值得拥有！', '/mediafiles/2024/12/06/b8c2f33722e0d733ce42369985ef7c1e.png', '2024-12-03 17:22:19', '2024-12-29 23:35:44', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (24, 1232141425, NULL, '大数据平台核心技术', '所有人', '一流课程', '1-9', '1-9-3', '204001', '200002', '讲授分布式系统构架、分布式编程、分布式流处理、分布式数据存储管理、内存计算支持等内容，突出技术深度和实战性。', '/mediafiles/2024/12/06/2c1bea77a09f7dd523e6ac4584371da4.png', '2024-12-03 17:22:19', '2024-12-06 14:18:46', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (25, 1232141425, NULL, 'VC++面向对象与可视化程序设计（上）：Windows编程基础', '所有人', '一流课程', '1-7', '1-7-10', '204001', '200002', 'Visual C++程序设计基础包含两个部分，一部分是基于Windows的编程，另一部分是基于MFC的编程，本课程“上”的部分主要介绍Windows编程技术基础。', '/mediafiles/2024/12/06/ef62427ec365af1bb67aabe54f3e3434.png', '2024-12-03 17:22:19', '2024-12-06 14:19:00', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (26, 1232141425, NULL, 'VC++面向对象与可视化程序设计（下）：MFC编程基础', '所有人', '一流课程', '1-12', '1-12-6', '204001', '200002', '本部分课程是介绍基于MFC的面向对象程序设计，内容涉及MFC构架、一系列常用控件、资源、单文档、多文档、数据库编程、多媒体编程等内容。', '/mediafiles/2024/12/06/7349fc0cb1539b7d0009767ab6f03d3c.png', '2024-12-03 17:22:19', '2024-12-06 14:27:02', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (27, 1232141425, NULL, '计算机网络', '学过二进制、十进制和十六进制之间的转换的人', '一流课程', '1-6', '1-6-1', '204001', '200002', '本课程是计算机类专业的基础课程，是研究生入学考试中的计综科目之一。本课程围绕参考模型，探讨信息从源到目的，穿越中间交换设备所遇到的问题和解决办法；涉及到基本原理和重要协议。', '/mediafiles/2024/12/06/b5efc74e1548d3a870749a570368dccc.png', '2024-12-03 17:22:19', '2024-12-06 14:27:36', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (28, 1232141425, NULL, '学做小程序——基础篇', '所有人', '一流课程', '1-8', '1-8-3', '204001', '200002', '《学做小程序》为中国高校微信应用教育联盟推出的小程序开发系列课程，由资深前端工程师主讲，微信团队担任技术顾问。', '/mediafiles/2024/12/06/b2b001bbb956f25ac8129a1500d3ed89.png', '2024-12-03 17:22:19', '2024-12-06 14:27:53', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (29, 1232141425, NULL, '汇编语言程序设计', '学过C语言的人', '一流课程', '1-3', '1-3-8', '204001', '200002', '不仅仅是一门编程语言，汇编语言更是计算机系统软硬件的分界与桥梁，是理解整个计算机系统的有效起点，为学习后续的计算机系统课程打下基础。', '/mediafiles/2024/12/06/05800fbcf3c5136cdab2203ee87fc447.png', '2024-12-03 17:22:19', '2024-12-06 14:28:09', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (30, 1232141425, NULL, '区块链和加密数字货币', '所有人', '一流课程', '1-12', '1-12-2', '204001', '200002', '抓住数字经济时代机遇，学习区块链和数字货币的精髓。本门课程从简单通俗的语言、商业的逻辑、国际化的高度带你走进区块链和数字货币的世界。', '/mediafiles/2024/12/06/ca6738cc76040b927461e81fe1587341.png', '2024-12-03 17:22:19', '2024-12-06 14:28:29', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (31, 1232141425, NULL, '基于Linux的C++', '所有人', '一流课程', '1-12', '1-12-3', '204001', '200002', '本课程旨在建立Linux环境下进行C++程序开发和系统编程时的正确思维和方法，构筑计算思维与实践能力之间的桥梁。', '/mediafiles/2024/12/06/b73aadd177344b8b6b12540142c6c6a2.png', '2024-12-03 17:22:19', '2024-12-06 14:29:16', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (32, 1232141425, NULL, '物联网概论', '所有人', '一流课程', '1-4', '1-4-7', '204001', '200002', '在万物互联的时代即将到来之时，让我们一起通过这门课程，认识物联网的基本概念，掌握物联网的关键技术，了解物联网的前沿动态，领略物联网的应用发展。', '/mediafiles/2024/12/06/7437d4ce41585dee5c6e7311e6db456c.png', '2024-12-03 17:22:19', '2024-12-06 14:30:02', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (33, 1232141425, NULL, '大学计算机教程', '所有人', '一流课程', '1-12', '1-12-5', '204001', '200002', '新时代、新技术、新发展，不能没有新知识新技能，在越来越多中小学生加入到学编程玩竞赛的今天，智者有志必先行。 本课程作为高校新生入学第一门计算机导论和公共基础核心课，跟随新时代新技术发展，不断建设不断提升，已成为深入系统自主创新学习、自我全面提升必修环节。本课程基于新版教材，是长期主持“大学计算机基础”教改立项建设积累的提升发展，校内外广泛应用至今，获奖多项。本课程是高校学科交叉融合人才培养必不可少核心课程，相关内容也是国内外高校重基础理论，强化计算思维综合能力系统提升的必备基础核心课程（core courses）。', '/mediafiles/2024/12/06/f594a709bf486565a20f9cf5142f4e48.png', '2024-12-03 17:22:19', '2024-12-06 14:32:14', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (34, 1232141425, NULL, '数据挖掘', '所有人', '一流课程', '1-8', '1-8-1', '204001', '200002', '随着信息时代数据的不断积累，如何从大量不完全、有噪声、模糊的数据中提取潜在有用信息和知识，成为各类人才必备的技能。基于此背景，课程面向各专业本科生和研究生，以数据分析与挖掘中常用的方法和模型为载体，讲授数据分析与数据挖掘的基本流程和基本算法。', '/mediafiles/2024/12/06/e4e7b0f795ef073d6302b6e7314b9a5b.png', '2024-12-03 17:22:19', '2024-12-06 14:32:30', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (35, 1232141425, NULL, '大学计算机基础', '所有人', '一流课程', '1-7', '1-7-10', '204001', '200002', '“大学计算机基础”分为两大部分，一部分是计算机理论教学，另一部分是计算机的应用能力的培养。', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2024-12-03 17:22:19', '2024-12-06 14:32:43', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (36, 1232141425, NULL, '机器学习初步', '学习者需具备一定的微积分、线性代数、概率统计、最优化方法的基础知识', '一流课程', '1-14', '1-14-4', '204001', '200002', '​机器学习（Machine Learning）是人工智能的核心研究领域之一，并取得了广泛的应用效果，是引领这一轮“人工智能热潮”的关键技术支撑。《机器学习初步》课程覆盖机器学习的入门基石内容，课程主讲人周志华教授是领域内学者，所著《机器学习》（网友昵称为“西瓜书”）正是本课程的教材。本课程的教学目标是使学生对机器学习有初步的认识，初步掌握机器学习的基本原理和方法，并初步形成利用机器学习技术解决问题的思维方式。', '/mediafiles/2024/12/06/2393f414139578c47e2ea4ce77ef4331.png', '2024-12-03 17:22:19', '2024-12-06 14:32:59', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (37, 1232141425, NULL, 'JAVA程序设计进阶', '学过java编程基础的人', '一流课程', '1-11', '1-11-2', '204001', '200002', '本课程内容主要包括java线程、网络编程、java虚拟机、垃圾回收机制、java集合类详解、java反射与代理以及java的字节码技术。', '/mediafiles/2024/12/06/29315b8b8c7ad4c1e6bbdc2527bf5984.png', '2024-12-03 17:22:19', '2024-12-06 14:33:10', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (38, 1232141425, NULL, '大数据机器学习', '所有人', '一流课程', '1-5', '1-5-2', '204001', '200002', '《大数据机器学习》课程是面向信息学科的高年级本科生或研究生开设的基础理论课，目的是培养学生深入理解大数据机器学习理论基础，牢固掌握大数据机器学习方法，并能够解决实际问题等综合能力。课程的主要内容包括：统计学习基本理论，机器学习基本方法，深度学习理论和方法。', '/mediafiles/2024/12/06/5954aa449cf56ada35ee67a53ee75a71.png', '2024-12-03 17:22:19', '2024-12-06 14:33:23', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (39, 1232141425, NULL, '面向对象程序设计（C++）', '所有人', '一流课程', '1-9', '1-9-11', '204001', '200002', '以C++语言为基础，从设计层面介绍程序设计的重要设计思想和经典设计模式，如面向对象程序设计、基于接口编程、泛型编程等，还将介绍对标准模板库STL。', '/mediafiles/2024/12/06/66f89d5d475d4675087f8b48504b7aa2.png', '2024-12-03 17:22:19', '2024-12-06 14:33:36', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (40, 1232141425, NULL, 'Python程序设计基础', '学过计算机基础的人', '一流课程', '1-13', '1-13-5', '204001', '200002', '本课程以任务驱动的方式引导学生完成\"十点半游戏”和“2048游戏”开发，融入Python语言的基础知识，掌握面向对象的程序设计技术，掌握Python基本语法、函数、面向对象、图形图像、数据库编程等方面的知识与技能，为从事Python应用程序开发打下基础。', '/mediafiles/2024/12/06/afc4ba90a64dc71a4a4c83a1684c4a8e.png', '2024-12-03 17:22:19', '2024-12-06 14:34:12', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (41, 1232141425, NULL, '计算几何', '所有人', '一流课程', '1-2', '1-2-8', '204001', '200002', '体味几何之趣，领悟算法之美', '/mediafiles/2024/12/06/90317e2712c87e7b7daba2b985984cf8.png', '2024-12-03 17:22:19', '2024-12-06 14:34:41', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (42, 1232141425, NULL, 'Linux 内核分析与应用', '所有人', '一流课程', '1-7', '1-7-6', '204001', '200002', '在庞大的Linux内核源代码学习中，如何抓住主要线索和思路，如何让所学能够切实地应用起来，本课程主讲以自己20年来对Linux内核的研究和教学为基础，对所讲内容进行有效的归纳，以机制与策略分离为指导思想，对Linux内核的设计思想和数据结构进行分析，让大家在每一章学习后，通过编写Linux内核模块并分析源代码，引领大家进入Linux内核的大门。同时邀请内核专家谢宝友老师和一线工程师张天飞，分享多年企业一线的内核实战经验，让你在动手实践的同时，能够一以贯之，从理论到实践，从实践到理论，打通知识之间的脉络，掌握系统级软件设计的思路和方法。欢迎大家学习开源世界的顶级作品-Linux内核。', '/mediafiles/2024/12/06/e493a1d686a8e58495e0e9cd235fd20f.png', '2024-12-03 17:22:19', '2024-12-06 14:34:54', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (43, 1232141425, NULL, '微软亚洲研究院大数据系列讲座', '所有人', '一流课程', '1-1', '1-1-2', '204001', '200002', '“这门课程涵盖了互联网搜索、城市计算、社会计算、软件分析、可视化等大数据研究中的热门和前沿领域，课程设计兼具前所未有的广度和深度，我真诚地推荐所有对大数据研究感兴趣的同学去学习这门课程。', '/mediafiles/2024/12/06/950ecca9e38f820ca91c67314f834210.png', '2024-12-03 17:22:19', '2024-12-06 14:35:09', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (44, 1232141425, NULL, 'C语言程序设计（上）', '所有人', '一流课程', '1-8', '1-8-4', '204001', '200002', 'Kenneeth Lane Thompson为了方便玩自己的游戏程序，用汇编写了UNIX操作系统，又为了更方便的写这个UNIX创造了C。创造在游戏中产生，业绩在创造中成就！从此，C便一发不可收拾，独领风骚！当计算遇上了困惑，当编程选择了C，当面向问题的计算机程序设计加入了优秀团队，就是这门课程！', '/mediafiles/2024/12/06/e50b5d0814e2092be7cfde2b2ac4d0cf.png', '2024-12-03 17:22:19', '2024-12-06 14:35:22', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (45, 1232141425, NULL, '网络安全概述', '所有人', '一流课程', '1-6', '1-6-5', '204001', '200002', '本课程主要在六个方面进行介绍：计算机网络基础知识－简短回顾；网络安全研究的是什么问题；编码解码学；网络安全协议；无线网络安全；防火墙及攻防系统。', '/mediafiles/2024/12/06/9c90ded41ae54aa09b3fb80b04012c64.png', '2024-12-03 17:22:19', '2024-12-06 14:35:40', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (46, 1232141425, NULL, '大学计算机——计算思维的视角', '所有人', '一流课程', '1-13', '1-13-6', '204001', '200002', '全面培养学生的计算科学修养，信息素养，培养学生良好的计算思维能力，提高学生的计算机应用水平和计算机问题求解能力。', '/mediafiles/2024/12/06/48410f279d1cae4b551976a718c11717.png', '2024-12-03 17:22:19', '2024-12-06 14:35:52', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (47, 1232141425, NULL, '单片机原理及应用', '学过C语言程序设计，电子技术基础的人', '一流课程', '1-4', '1-4-2', '204001', '200002', '在数字化转型的大变革中，每天都会遇到上百片单片机的应用，你想学习一门技能吗？你想为人工智能的到来做点准备吗？本课程为你轻松解决学习单片机知识和技能。今天学的将是明天用的！', '/mediafiles/2024/12/06/b8f4e6cf541c4654a5cc03251c277ea8.png', '2024-12-03 17:22:19', '2024-12-06 14:36:06', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (48, 1232141425, NULL, '大学计算机基础', '所有人', '一流课程', '1-10', '1-10-3', '204001', '200002', '人工智能、物联网、云计算、大数据、区块链标志着智能新时代的到来！作为当代大学生，不仅需要掌握计算机的基本应用和基础理论知识，更重要的是要具备利用计算机分析和解决学习和工作中实际问题的能力！探索基于计算思维的问题求解之路，从这门课开始！', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '2024-12-03 17:22:19', '2024-12-06 14:36:22', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (49, 1232141425, NULL, '数据库技术与程序设计', '所有人', '一流课程', '1-13', '1-13-3', '204001', '200002', '没有哪种工具能像数据库那样，在几乎所有计算机领域中都有涉及。无论身处校园还是人在职场，数据管理都是必备能力。无论是专业人士的职场需要，还是在校学生的自主学习，或者想考一个国家计算机等级考试，本课程都不会让你失望！让我们用知识点拼图，逐步解锁数据库系统设计新技能吧！', '/mediafiles/2024/12/06/dd5d4ac6cdb073be17fe3cbf7e160e40.png', '2024-12-03 17:22:19', '2024-12-06 14:37:12', NULL, NULL, '202002', '203001');
INSERT INTO `course_base` VALUES (50, 1232141425, NULL, 'ARM微控制器与嵌入式系统', '学过C语言程序设计基础的人', '一流课程', '1-10', '1-10-1', '204001', '200002', '国家精品在线开放课程。 本课程基于清华大学本科生课程“数字电路与嵌入式系统”，同时是“全国大学生智能车竞赛”微控制器培训课程。 本课程讲授ARM嵌入式系统，鼓励动手实践和自由创新，适合想参与科技活动的本科生和爱好者。', '/mediafiles/2024/12/06/480c655840310b73eb9518e258c05c86.png', '2024-12-03 17:22:19', '2024-12-23 21:06:31', NULL, NULL, '202002', '203001');

SET FOREIGN_KEY_CHECKS = 1;
-- ----------------------------
-- Table structure for course_category
-- ----------------------------
DROP TABLE IF EXISTS `course_category`;
CREATE TABLE `course_category`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `label` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类标签默认和名称一样',
  `parentid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '父结点id（第一级的父节点是0，自关联字段id）',
  `is_show` tinyint NULL DEFAULT NULL COMMENT '是否显示',
  `orderby` int NULL DEFAULT NULL COMMENT '排序字段',
  `is_leaf` tinyint NULL DEFAULT NULL COMMENT '是否叶子',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_category
-- ----------------------------
INSERT INTO `course_category` VALUES ('1', '根结点', '根结点', '0', 1, 1, 0);
INSERT INTO `course_category` VALUES ('1-1', '前端开发', '前端开发', '1', 1, 1, 0);
INSERT INTO `course_category` VALUES ('1-1-1', 'HTML/CSS', 'HTML/CSS', '1-1', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-1-10', '其它', '其它', '1-1', 1, 10, 1);
INSERT INTO `course_category` VALUES ('1-1-2', 'JavaScript', 'JavaScript', '1-1', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-1-3', 'jQuery', 'jQuery', '1-1', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-1-4', 'ExtJS', 'ExtJS', '1-1', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-1-5', 'AngularJS', 'AngularJS', '1-1', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-1-6', 'ReactJS', 'ReactJS', '1-1', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-1-7', 'Bootstrap', 'Bootstrap', '1-1', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-1-8', 'Node.js', 'Node.js', '1-1', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-1-9', 'Vue', 'Vue', '1-1', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-10', '研发管理', '研发管理', '1', 1, 10, 0);
INSERT INTO `course_category` VALUES ('1-10-1', '敏捷开发', '敏捷开发', '1-10', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-10-2', '软件设计', '软件设计', '1-10', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-10-3', '软件测试', '软件测试', '1-10', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-10-4', '研发管理', '研发管理', '1-10', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-10-5', '其它', '其它', '1-10', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-11', '系统运维', '系统运维', '1', 1, 11, 0);
INSERT INTO `course_category` VALUES ('1-11-1', 'Linux', 'Linux', '1-11', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-11-10', '其它', '其它', '1-11', 1, 10, 1);
INSERT INTO `course_category` VALUES ('1-11-2', 'Windows', 'Windows', '1-11', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-11-3', 'UNIX', 'UNIX', '1-11', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-11-4', 'Mac OS', 'Mac OS', '1-11', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-11-5', '网络技术', '网络技术', '1-11', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-11-6', '路由协议', '路由协议', '1-11', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-11-7', '无线网络', '无线网络', '1-11', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-11-8', 'Ngnix', 'Ngnix', '1-11', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-11-9', '邮件服务器', '邮件服务器', '1-11', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-12', '产品经理', '产品经理', '1', 1, 12, 0);
INSERT INTO `course_category` VALUES ('1-12-1', '交互设计', '交互设计', '1-12', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-12-2', '产品设计', '产品设计', '1-12', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-12-3', '原型设计', '原型设计', '1-12', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-12-4', '用户体验', '用户体验', '1-12', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-12-5', '需求分析', '需求分析', '1-12', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-12-6', '其它', '其它', '1-12', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-13', '企业/办公/职场', '企业/办公/职场', '1', 1, 13, 0);
INSERT INTO `course_category` VALUES ('1-13-1', '运营管理', '运营管理', '1-13', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-13-2', '企业信息化', '企业信息化', '1-13', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-13-3', '网络营销', '网络营销', '1-13', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-13-4', 'Office/WPS', 'Office/WPS', '1-13', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-13-5', '招聘/面试', '招聘/面试', '1-13', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-13-6', '电子商务', '电子商务', '1-13', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-13-7', 'CRM', 'CRM', '1-13', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-13-8', 'ERP', 'ERP', '1-13', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-13-9', '其它', '其它', '1-13', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-14', '信息安全', '信息安全', '1', 1, 14, 0);
INSERT INTO `course_category` VALUES ('1-14-1', '密码学/加密/破解', '密码学/加密/破解', '1-14', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-14-10', '其它', '其它', '1-14', 1, 10, 1);
INSERT INTO `course_category` VALUES ('1-14-2', '渗透测试', '渗透测试', '1-14', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-14-3', '社会工程', '社会工程', '1-14', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-14-4', '漏洞挖掘与利用', '漏洞挖掘与利用', '1-14', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-14-5', '云安全', '云安全', '1-14', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-14-6', '防护加固', '防护加固', '1-14', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-14-7', '代码审计', '代码审计', '1-14', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-14-8', '移动安全', '移动安全', '1-14', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-14-9', '病毒木马', '病毒木马', '1-14', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-2', '移动开发', '移动开发', '1', 1, 2, 0);
INSERT INTO `course_category` VALUES ('1-2-1', '微信开发', '微信开发', '1-2', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-2-2', 'iOS', 'iOS', '1-2', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-2-3', '手游开发', '手游开发', '1-2', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-2-4', 'Swift', 'Swift', '1-2', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-2-5', 'Android', 'Android', '1-2', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-2-6', 'ReactNative', 'ReactNative', '1-2', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-2-7', 'Cordova', 'Cordova', '1-2', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-2-8', '其它', '其它', '1-2', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-3', '编程开发', '编程开发', '1', 1, 3, 0);
INSERT INTO `course_category` VALUES ('1-3-1', 'C/C++', 'C/C++', '1-3', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-3-2', 'Java', 'Java', '1-3', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-3-3', '.NET', '.NET', '1-3', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-3-4', 'Objective-C', 'Objective-C', '1-3', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-3-5', 'Go语言', 'Go语言', '1-3', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-3-6', 'Python', 'Python', '1-3', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-3-7', 'Ruby/Rails', 'Ruby/Rails', '1-3', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-3-8', '其它', '其它', '1-3', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-4', '数据库', '数据库', '1', 1, 4, 0);
INSERT INTO `course_category` VALUES ('1-4-1', 'Oracle', 'Oracle', '1-4', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-4-2', 'MySQL', 'MySQL', '1-4', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-4-3', 'SQL Server', 'SQL Server', '1-4', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-4-4', 'DB2', 'DB2', '1-4', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-4-5', 'NoSQL', 'NoSQL', '1-4', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-4-6', 'Mongo DB', 'Mongo DB', '1-4', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-4-7', 'Hbase', 'Hbase', '1-4', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-4-8', '数据仓库', '数据仓库', '1-4', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-4-9', '其它', '其它', '1-4', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-5', '人工智能', '人工智能', '1', 1, 5, 0);
INSERT INTO `course_category` VALUES ('1-5-1', '机器学习', '机器学习', '1-5', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-5-2', '深度学习', '深度学习', '1-5', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-5-3', '语音识别', '语音识别', '1-5', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-5-4', '计算机视觉', '计算机视觉', '1-5', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-5-5', 'NLP', 'NLP', '1-5', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-5-6', '强化学习', '强化学习', '1-5', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-5-7', '其它', '其它', '1-5', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-6', '云计算/大数据', '云计算/大数据', '1', 1, 6, 0);
INSERT INTO `course_category` VALUES ('1-6-1', 'Spark', 'Spark', '1-6', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-6-2', 'Hadoop', 'Hadoop', '1-6', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-6-3', 'OpenStack', 'OpenStack', '1-6', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-6-4', 'Docker/K8S', 'Docker/K8S', '1-6', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-6-5', '云计算基础架构', '云计算基础架构', '1-6', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-6-6', '虚拟化技术', '虚拟化技术', '1-6', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-6-7', '云平台', '云平台', '1-6', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-6-8', 'ELK', 'ELK', '1-6', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-6-9', '其它', '其它', '1-6', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-7', 'UI设计', 'UI设计', '1', 1, 7, 0);
INSERT INTO `course_category` VALUES ('1-7-1', 'Photoshop', 'Photoshop', '1-7', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-7-10', 'InDesign', 'InDesign', '1-7', 1, 10, 1);
INSERT INTO `course_category` VALUES ('1-7-11', 'Pro/Engineer', 'Pro/Engineer', '1-7', 1, 11, 1);
INSERT INTO `course_category` VALUES ('1-7-12', 'Cinema 4D', 'Cinema 4D', '1-7', 1, 12, 1);
INSERT INTO `course_category` VALUES ('1-7-13', '3D Studio', '3D Studio', '1-7', 1, 13, 1);
INSERT INTO `course_category` VALUES ('1-7-14', 'After Effects（AE）', 'After Effects（AE）', '1-7', 1, 14, 1);
INSERT INTO `course_category` VALUES ('1-7-15', '原画设计', '原画设计', '1-7', 1, 15, 1);
INSERT INTO `course_category` VALUES ('1-7-16', '动画制作', '动画制作', '1-7', 1, 16, 1);
INSERT INTO `course_category` VALUES ('1-7-17', 'Dreamweaver', 'Dreamweaver', '1-7', 1, 17, 1);
INSERT INTO `course_category` VALUES ('1-7-18', 'Axure', 'Axure', '1-7', 1, 18, 1);
INSERT INTO `course_category` VALUES ('1-7-19', '其它', '其它', '1-7', 1, 19, 1);
INSERT INTO `course_category` VALUES ('1-7-2', '3Dmax', '3Dmax', '1-7', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-7-3', 'Illustrator', 'Illustrator', '1-7', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-7-4', 'Flash', 'Flash', '1-7', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-7-5', 'Maya', 'Maya', '1-7', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-7-6', 'AUTOCAD', 'AUTOCAD', '1-7', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-7-7', 'UG', 'UG', '1-7', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-7-8', 'SolidWorks', 'SolidWorks', '1-7', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-7-9', 'CorelDraw', 'CorelDraw', '1-7', 1, 9, 1);
INSERT INTO `course_category` VALUES ('1-8', '游戏开发', '游戏开发', '1', 1, 8, 0);
INSERT INTO `course_category` VALUES ('1-8-1', 'Cocos', 'Cocos', '1-8', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-8-2', 'Unity3D', 'Unity3D', '1-8', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-8-3', 'Flash', 'Flash', '1-8', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-8-4', 'SpriteKit 2D', 'SpriteKit 2D', '1-8', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-8-5', 'Unreal', 'Unreal', '1-8', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-8-6', '其它', '其它', '1-8', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-9', '智能硬件/物联网', '智能硬件/物联网', '1', 1, 9, 0);
INSERT INTO `course_category` VALUES ('1-9-1', '无线通信', '无线通信', '1-9', 1, 1, 1);
INSERT INTO `course_category` VALUES ('1-9-10', '物联网技术', '物联网技术', '1-9', 1, 10, 1);
INSERT INTO `course_category` VALUES ('1-9-11', '其它', '其它', '1-9', 1, 11, 1);
INSERT INTO `course_category` VALUES ('1-9-2', '电子工程', '电子工程', '1-9', 1, 2, 1);
INSERT INTO `course_category` VALUES ('1-9-3', 'Arduino', 'Arduino', '1-9', 1, 3, 1);
INSERT INTO `course_category` VALUES ('1-9-4', '体感技术', '体感技术', '1-9', 1, 4, 1);
INSERT INTO `course_category` VALUES ('1-9-5', '智能硬件', '智能硬件', '1-9', 1, 5, 1);
INSERT INTO `course_category` VALUES ('1-9-6', '驱动/内核开发', '驱动/内核开发', '1-9', 1, 6, 1);
INSERT INTO `course_category` VALUES ('1-9-7', '单片机/工控', '单片机/工控', '1-9', 1, 7, 1);
INSERT INTO `course_category` VALUES ('1-9-8', 'WinCE', 'WinCE', '1-9', 1, 8, 1);
INSERT INTO `course_category` VALUES ('1-9-9', '嵌入式', '嵌入式', '1-9', 1, 9, 1);

-- ----------------------------
-- Table structure for course_market
-- ----------------------------
DROP TABLE IF EXISTS `course_market`;
CREATE TABLE `course_market`  (
  `id` bigint NOT NULL COMMENT '主键，课程id',
  `charge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收费规则，对应数据字典',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `original_price` float(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `is_ad` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否为广告',
  `qq` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '咨询qq',
  `wechat` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `valid_days` int NULL DEFAULT NULL COMMENT '有效期天数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程营销信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_market
-- ----------------------------
INSERT INTO `course_market` VALUES (1, '201001', 2.00, 56.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (2, '201001', 15.00, 46.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (3, '201001', 9.00, 67.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (4, '201000', 0.00, 117.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (5, '201000', 0.00, 78.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (6, '201000', 0.00, 65.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (7, '201001', 12.00, 95.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (8, '201001', 12.00, 22.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (9, '201000', 0.00, 96.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (10, '201001', 15.00, 103.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (11, '201000', 0.00, 195.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (12, '201001', 20.00, 65.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (13, '201001', 13.00, 36.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (14, '201000', 0.00, 171.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (15, '201000', 0.00, 69.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (16, '201000', 0.00, 127.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (17, '201001', 9.00, 144.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (18, '201001', 11.00, 144.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (19, '201001', 13.00, 182.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (20, '201000', 0.00, 195.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (21, '201001', 2.00, 22.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (22, '201000', 0.00, 191.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (23, '201000', 0.00, 23.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (24, '201000', 0.00, 185.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (25, '201000', 0.00, 43.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (26, '201000', 0.00, 197.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (27, '201001', 13.00, 46.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (28, '201000', 0.00, 139.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (29, '201001', 13.00, 188.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (30, '201001', 11.00, 40.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (31, '201000', 0.00, 60.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (32, '201001', 9.00, 113.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (33, '201001', 15.00, 72.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (34, '201000', 0.00, 105.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (35, '201001', 1.00, 98.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (36, '201001', 16.00, 113.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (37, '201001', 1.00, 191.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (38, '201001', 6.00, 127.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (39, '201001', 15.00, 94.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (40, '201001', 17.00, 60.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (41, '201001', 5.00, 193.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (42, '201000', 0.00, 134.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (43, '201001', 16.00, 140.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (44, '201000', 0.00, 54.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (45, '201001', 2.00, 160.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (46, '201000', 0.00, 108.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (47, '201000', 0.00, 44.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (48, '201000', 0.00, 119.00, '800002', '', '', '', 365);
INSERT INTO `course_market` VALUES (49, '201001', 5.00, 129.00, '800001', '', '', '', 365);
INSERT INTO `course_market` VALUES (50, '201001', 3.00, 44.00, '800002', '', '', '', 365);

-- ----------------------------
-- Table structure for course_publish
-- ----------------------------
DROP TABLE IF EXISTS `course_publish`;
CREATE TABLE `course_publish`  (
  `id` bigint NOT NULL COMMENT '主键',
  `company_id` bigint NOT NULL COMMENT '机构ID',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `users` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '适用人群',
  `tags` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `mt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大分类',
  `mt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大分类名称',
  `st` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小分类',
  `st_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小分类名称',
  `grade` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程等级',
  `teachmode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教育模式',
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程图片',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程介绍',
  `market` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程营销信息，json格式',
  `teachplan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '所有课程计划，json格式',
  `teachers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '教师信息，json格式',
  `create_date` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `online_date` datetime NULL DEFAULT NULL COMMENT '上架时间',
  `offline_date` datetime NULL DEFAULT NULL COMMENT '下架时间',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '发布状态',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `charge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收费规则，对应数据字典--203',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `original_price` float(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `valid_days` int NULL DEFAULT NULL COMMENT '课程有效期天数',
  `is_ad` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否为广告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程发布' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_publish
-- ----------------------------
INSERT INTO `course_publish` VALUES (1, 1232141425, NULL, 'C++语言程序设计基础', '所有人', '一流课程', NULL, '1-5', '人工智能', '1-5-1', '机器学习', '204001', '200002', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', 'C++是从C语言发展演变而来的一种面向对象的程序设计语言，本课程是一门面向广大初学者的入门课程。', '{\"charge\":\"201001\",\"id\":1,\"isAd\":\"800001\",\"originalPrice\":56.0,\"phone\":\"\",\"price\":2.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":1,\"grade\":1,\"id\":1,\"orderby\":1,\"parentid\":0,\"pname\":\"第1章 绪论\",\"teachPlanTreeNodes\":[{\"courseId\":1,\"grade\":2,\"id\":2,\"orderby\":1,\"parentid\":1,\"pname\":\"导学\",\"teachplanMedia\":{\"courseId\":1,\"id\":1,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":2}},{\"courseId\":1,\"grade\":2,\"id\":3,\"orderby\":2,\"parentid\":1,\"pname\":\"计算机系统简介\",\"teachplanMedia\":{\"courseId\":1,\"id\":2,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":3}},{\"courseId\":1,\"grade\":2,\"id\":4,\"orderby\":3,\"parentid\":1,\"pname\":\"计算机语言和程序设计方法的发展\",\"teachplanMedia\":{\"courseId\":1,\"id\":3,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":4}}]},{\"courseId\":1,\"grade\":1,\"id\":5,\"orderby\":2,\"parentid\":0,\"pname\":\"第2章 C++简单程序设计（一）\",\"teachPlanTreeNodes\":[{\"courseId\":1,\"grade\":2,\"id\":6,\"orderby\":1,\"parentid\":5,\"pname\":\"导学\",\"teachplanMedia\":{\"courseId\":1,\"id\":4,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":6}},{\"courseId\":1,\"grade\":2,\"id\":7,\"orderby\":2,\"parentid\":5,\"pname\":\"C++语言概述\",\"teachplanMedia\":{\"courseId\":1,\"id\":5,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":7}},{\"courseId\":1,\"grade\":2,\"id\":8,\"orderby\":3,\"parentid\":5,\"pname\":\"基本数据类型、常量、变量\",\"teachplanMedia\":{\"courseId\":1,\"id\":6,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":8}}]},{\"courseId\":1,\"grade\":1,\"id\":9,\"orderby\":3,\"parentid\":0,\"pname\":\"第2章 C++简单程序设计（二）\",\"teachPlanTreeNodes\":[{\"courseId\":1,\"grade\":2,\"id\":10,\"orderby\":1,\"parentid\":9,\"pname\":\"数据的输入和输出\",\"teachplanMedia\":{\"courseId\":1,\"id\":7,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":10}},{\"courseId\":1,\"grade\":2,\"id\":11,\"orderby\":2,\"parentid\":9,\"pname\":\"选择结构\",\"teachplanMedia\":{\"courseId\":1,\"id\":8,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":11}},{\"courseId\":1,\"grade\":2,\"id\":12,\"orderby\":3,\"parentid\":9,\"pname\":\"循环结构\",\"teachplanMedia\":{\"courseId\":1,\"id\":9,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":12}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":1,\"introduction\":\"郑莉，教授，清华大学计算机科学与技术系。国家精品资源共享课负责人；北京市计算机教育研究会副理事长。全国高等学校计算机教育研究会常务理事。全国高等院校计算机基础教育研究会常务理事；文科计算机基础教学指导分委员会专家；ISO国际标准组织专家及标准编辑；全国信息技术标准化技术委员会教育技术分技术委员会委员兼秘书长。主要从事计算机教育及教育信息化研究，主持和参加多项国家863、支撑计划课题和教育部课题。 主编出版教材20部，其中《C++语言程序设计》获教育部自然科学奖和国家级精品教材称号。起草教育信息化相关国家标准5部、国际标准1部。 获国家级教学成果奖、北京市教学成果奖、教育部自然科学奖、教育部科技进步奖、北京市科技进步奖、电子学会科技进步奖等9项国家级、教育部、北京市奖励。 在清华校内开设本科生课程：《计算机程序设计基础》、《C++语言程序设计》和《Java语言程序设计》;研究生课程有面向对象的软件开发技术（英语）。\",\"photograph\":\"/mediafiles/2024/12/06/db66b0ae3c8ebabca1c2908f44d3fa85.png\",\"position\":\"清华大学 计算机科学与技术系 教授\",\"teacherName\":\"郑莉\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:20\",\"id\":2,\"introduction\":\"李超，博士，清华大学副研究员，信息国家研究中心大数据团队核心成员，曾任清华大学信息技术研究院WEB与软件技术研究中心副主任/数据科学研究院智慧城市大数据研究中心核心成员/倍肯智慧健康大数据联合研究中心主任。中国计算机学会高级会员/存储技术专委委员/术语委员会编辑，国家标准化管理委员会SAC/TC86/SC6和SAC/TC28/SC36委员，ISO/IEC JTC1 SC36 WG8 Learning Analytics Interoperability工作组专家，任ICADL、IEEE Healthcom /BIGMM/ICCSE、SSS、ICSH、NCIS等国内外学术会议的组委会或程序委员会成员。  在计算机基础教学领域具有十二年工作经验，是清华大学计算机基础课团队成员，长期担任程序设计课程主讲教师，2016年入选清华公派教师赴牛津大学EMI课程训练营，学成结业。是2018年教育部国家精品在线开放课程和2020年教育部国家级一流本科课程核心团队主讲教师，担任2019年教育部高教司国家级一流本科课程评审专家。长期从事产学研合作，获2021年中国产学研合作创新成果奖二等奖，担任中国智能计算产业联盟产教融合工作委员会共同主任并获“2021年优秀工作委员会”荣誉，发表产学研合作相关创新论文和专利多项、2022年在第17届IEEE International Conference on Computer Science and Education以本课程为案例发表基于开源的产教融合创新实践论文获Best Paper Award。在产教融合服务社会方面具有一定活跃度，受邀主讲中教全媒体人工智能教育线上公开课第九讲、观看人数破万，2021年中国人工智能教育大会嘉宾报告《泛在、融合、协同：在守正中创新教与学》、2021“慧源共享”全国高校开放数据创新大赛清华站主讲人等。  在数据与知识工程领域，从事海量数据安全高效的存储、组织、管理与分析及领域应用。 主持或作为骨干承担多项863、973、科技支撑、重点研发项目，以及部委和企事业单位委托项目，发表SCI、EI论文70余篇，获发明专利20余项。发表于数字图书馆顶级会议ACM/IEEE-CS JCDL的论文为我校实现了零的突破；校内第二完成人“数字档案馆建设整体方案研究”项目获国家档案局优秀科技成果奖；作为研发骨干自主研发的华鼎（Huabase）列数据库委托工信部软件与集成电路促进中心赛普评测中心进行测试和鉴定 “系统在基于列存储的数据库管理系统的架构设计和关键技术实现上达到了国际先进水平”，在我国做出了开创性的工作。第一完成人主持起草的《非结构化数据采集及分析规范》 SJ/T11445.4-2017 在工信部作为行业标准已发布。牵头开展互联网感知大数据智能研究，基于该工作的“互联网感知大数据驱动的民生民情智能应用服务”作为清华唯一推荐项目获工信部2020年大数据产业发展试点示范项目（领域二/方向4 民生大数据创新应用/第54号）。\",\"photograph\":\"/mediafiles/2024/12/06/95fcfd0710e93f40b8dc9f73d90a5ee7.png\",\"position\":\"清华大学 北京信息科学与技术国家研究中心 副研究员\",\"teacherName\":\"李超\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:21\",\"id\":3,\"introduction\":\"博士，清华大学北京信息科学与技术国家研究中心副研究员。国家级精品课程“程序设计基础”课程负责人、国家级精品资源共享课“计算机语言与程序设计”建设负责人。主讲《程序设计基础》、《面向对象程序设计基础》、《信号处理原理》等计算机专业基础课程。作为主要成员参与编写的《程序设计基础（第3版）》（清华大学出版社出版）评为普通高等教育“十二五”规划教材。曾获北京市高等教育教学优秀成果一等奖、清华大学青年教师教学优秀奖、清华大学清韵烛光“学生最喜爱的老师”称号。主要研究兴趣包括：语音识别与理解、情感计算和跨媒体计算等。目前，作为项目负责人承担国家自然科学基金面上项目1项；作为项目骨干或子课题负责人参与国家973项目1项、自然科学基金重点项目1项、社会科学基金重点项目1项、863项目1项。\",\"photograph\":\"/mediafiles/2024/12/06/030f08ee81d384db123b68c4a02ddfb5.png\",\"position\":\"清华大学 北京信息科学与技术国家研究中心 副研究员\",\"teacherName\":\"徐明星\"}]', '2024-12-29 22:21:39', '2024-12-29 22:21:39', NULL, '203002', NULL, '201001', 2.00, 56.00, 365, '800001');
INSERT INTO `course_publish` VALUES (2, 1232141425, NULL, '数据结构(上)', '学过邓俊辉 著 《数据结构（C++语言版 第3版）》  清华大学出版社  2013.9的人', '一流课程', NULL, '1-9', '智能硬件/物联网', '1-9-4', '体感技术', '204001', '200002', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '本课程旨在围绕各类数据结构的设计与实现，揭示其中的规律原理与方法技巧；同时针对算法设计及其性能分析，使学生了解并掌握主要的套路与手段。', '{\"charge\":\"201001\",\"id\":2,\"isAd\":\"800001\",\"originalPrice\":46.0,\"phone\":\"\",\"price\":15.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":2,\"grade\":1,\"id\":13,\"orderby\":1,\"parentid\":0,\"pname\":\"第零章 课程相关信息\",\"teachPlanTreeNodes\":[{\"courseId\":2,\"grade\":2,\"id\":14,\"orderby\":1,\"parentid\":13,\"pname\":\"选课之前\",\"teachplanMedia\":{\"courseId\":2,\"id\":10,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":14}},{\"courseId\":2,\"grade\":2,\"id\":15,\"orderby\":2,\"parentid\":13,\"pname\":\"考核方式\",\"teachplanMedia\":{\"courseId\":2,\"id\":11,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":15}},{\"courseId\":2,\"grade\":2,\"id\":16,\"orderby\":3,\"parentid\":13,\"pname\":\"OJ系统说明\",\"teachplanMedia\":{\"courseId\":2,\"id\":12,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":16}}]},{\"courseId\":2,\"grade\":1,\"id\":17,\"orderby\":2,\"parentid\":0,\"pname\":\"第一章 绪论\",\"teachPlanTreeNodes\":[{\"courseId\":2,\"grade\":2,\"id\":18,\"orderby\":1,\"parentid\":17,\"pname\":\"A. 计算\",\"teachplanMedia\":{\"courseId\":2,\"id\":13,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":18}},{\"courseId\":2,\"grade\":2,\"id\":19,\"orderby\":2,\"parentid\":17,\"pname\":\"B. 计算模型\",\"teachplanMedia\":{\"courseId\":2,\"id\":14,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":19}},{\"courseId\":2,\"grade\":2,\"id\":20,\"orderby\":3,\"parentid\":17,\"pname\":\"C. 渐进复杂度\",\"teachplanMedia\":{\"courseId\":2,\"id\":15,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":20}}]},{\"courseId\":2,\"grade\":1,\"id\":21,\"orderby\":3,\"parentid\":0,\"pname\":\"第二章 向量\",\"teachPlanTreeNodes\":[{\"courseId\":2,\"grade\":2,\"id\":22,\"orderby\":1,\"parentid\":21,\"pname\":\"A. 抽象数据类型\",\"teachplanMedia\":{\"courseId\":2,\"id\":16,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":22}},{\"courseId\":2,\"grade\":2,\"id\":23,\"orderby\":2,\"parentid\":21,\"pname\":\"B. 可扩充向量\",\"teachplanMedia\":{\"courseId\":2,\"id\":17,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":23}},{\"courseId\":2,\"grade\":2,\"id\":24,\"orderby\":3,\"parentid\":21,\"pname\":\"C. 无序向量\",\"teachplanMedia\":{\"courseId\":2,\"id\":18,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":24}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:22\",\"id\":4,\"introduction\":\"邓俊辉，清华大学计算机系教授。1993和1997年分别于清华大学计算机系获学士、博士学位，1997年起在清华大学任教，他在讲授“数据结构”和“计算几何”方面拥有20多年的经验。\",\"photograph\":\"/mediafiles/2024/12/06/0a17b0bad9295a6240838be7fe035463.png\",\"position\":\"清华大学 计算机科学与技术系 教授\",\"teacherName\":\"邓俊辉\"}]', '2024-12-08 23:04:29', NULL, NULL, '203002', NULL, '201001', 15.00, 46.00, 365, '800001');
INSERT INTO `course_publish` VALUES (3, 1232141425, NULL, '数据结构(下)', '学过邓俊辉 著 《数据结构（C++语言版 第3版）》  清华大学出版社  2013.9的人', '一流课程', NULL, '1-7', 'UI设计', '1-7-1', 'Photoshop', '204001', '200002', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', '本课程旨在围绕各类数据结构的设计与实现，揭示其中的规律原理与方法技巧；同时针对算法设计及其性能分析，使学生了解并掌握主要的套路与手段。', '{\"charge\":\"201001\",\"id\":3,\"isAd\":\"800001\",\"originalPrice\":67.0,\"phone\":\"\",\"price\":9.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":3,\"grade\":1,\"id\":25,\"orderby\":1,\"parentid\":0,\"pname\":\"第零章 课程相关信息\",\"teachPlanTreeNodes\":[{\"courseId\":3,\"grade\":2,\"id\":26,\"orderby\":1,\"parentid\":25,\"pname\":\"选课之前\",\"teachplanMedia\":{\"courseId\":3,\"id\":19,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":26}},{\"courseId\":3,\"grade\":2,\"id\":27,\"orderby\":2,\"parentid\":25,\"pname\":\"考核方式\",\"teachplanMedia\":{\"courseId\":3,\"id\":20,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":27}},{\"courseId\":3,\"grade\":2,\"id\":28,\"orderby\":3,\"parentid\":25,\"pname\":\"OJ系统说明\",\"teachplanMedia\":{\"courseId\":3,\"id\":21,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":28}}]},{\"courseId\":3,\"grade\":1,\"id\":29,\"orderby\":2,\"parentid\":0,\"pname\":\"第八章 二叉搜索树\",\"teachPlanTreeNodes\":[{\"courseId\":3,\"grade\":2,\"id\":30,\"orderby\":1,\"parentid\":29,\"pname\":\"A. 概述\",\"teachplanMedia\":{\"courseId\":3,\"id\":22,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":30}},{\"courseId\":3,\"grade\":2,\"id\":31,\"orderby\":2,\"parentid\":29,\"pname\":\"B1. BST：查找\",\"teachplanMedia\":{\"courseId\":3,\"id\":23,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":31}},{\"courseId\":3,\"grade\":2,\"id\":32,\"orderby\":3,\"parentid\":29,\"pname\":\"B2. BST：插入\",\"teachplanMedia\":{\"courseId\":3,\"id\":24,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":32}}]},{\"courseId\":3,\"grade\":1,\"id\":33,\"orderby\":3,\"parentid\":0,\"pname\":\"第十章 高级搜索树\",\"teachPlanTreeNodes\":[{\"courseId\":3,\"grade\":2,\"id\":34,\"orderby\":1,\"parentid\":33,\"pname\":\"A1. 伸展树：逐层伸展\",\"teachplanMedia\":{\"courseId\":3,\"id\":25,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":34}},{\"courseId\":3,\"grade\":2,\"id\":35,\"orderby\":2,\"parentid\":33,\"pname\":\"A2. 伸展树：双层伸展\",\"teachplanMedia\":{\"courseId\":3,\"id\":26,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":35}},{\"courseId\":3,\"grade\":2,\"id\":36,\"orderby\":3,\"parentid\":33,\"pname\":\"A3. 伸展树：算法实现\",\"teachplanMedia\":{\"courseId\":3,\"id\":27,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":36}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:22\",\"id\":4,\"introduction\":\"邓俊辉，清华大学计算机系教授。1993和1997年分别于清华大学计算机系获学士、博士学位，1997年起在清华大学任教，他在讲授“数据结构”和“计算几何”方面拥有20多年的经验。\",\"photograph\":\"/mediafiles/2024/12/06/0a17b0bad9295a6240838be7fe035463.png\",\"position\":\"清华大学 计算机科学与技术系 教授\",\"teacherName\":\"邓俊辉\"}]', '2024-12-08 23:04:30', NULL, NULL, '203002', NULL, '201001', 9.00, 67.00, 365, '800001');
INSERT INTO `course_publish` VALUES (4, 1232141425, NULL, '操作系统', '学过数据结构、汇编语言、计算机组成原理的人', '一流课程', NULL, '1-9', '智能硬件/物联网', '1-9-10', '物联网技术', '204001', '200002', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', '操作系统课讲解操作系统中如何管理和协调应用程序对计算机系统中软硬件资源的使用。', '{\"charge\":\"201000\",\"id\":4,\"isAd\":\"800001\",\"originalPrice\":117.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":4,\"grade\":1,\"id\":37,\"orderby\":1,\"parentid\":0,\"pname\":\"第零讲 在线教学环境准备\",\"teachPlanTreeNodes\":[{\"courseId\":4,\"grade\":2,\"id\":38,\"orderby\":1,\"parentid\":37,\"pname\":\"0.1 Piazza讨论区\",\"teachplanMedia\":{\"courseId\":4,\"id\":28,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":38}},{\"courseId\":4,\"grade\":2,\"id\":39,\"orderby\":2,\"parentid\":37,\"pname\":\"0.2 在线实验平台\",\"teachplanMedia\":{\"courseId\":4,\"id\":29,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":39}},{\"courseId\":4,\"grade\":2,\"id\":40,\"orderby\":3,\"parentid\":37,\"pname\":\"0.2在线实验平台\",\"teachplanMedia\":{\"courseId\":4,\"id\":30,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":40}}]},{\"courseId\":4,\"grade\":1,\"id\":41,\"orderby\":2,\"parentid\":0,\"pname\":\"第一讲 操作系统概述\",\"teachPlanTreeNodes\":[{\"courseId\":4,\"grade\":2,\"id\":42,\"orderby\":1,\"parentid\":41,\"pname\":\"1.1 课程概述\",\"teachplanMedia\":{\"courseId\":4,\"id\":31,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":42}},{\"courseId\":4,\"grade\":2,\"id\":43,\"orderby\":2,\"parentid\":41,\"pname\":\"1.2 教学安排\",\"teachplanMedia\":{\"courseId\":4,\"id\":32,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":43}},{\"courseId\":4,\"grade\":2,\"id\":44,\"orderby\":3,\"parentid\":41,\"pname\":\"1.3 什么是操作系统\",\"teachplanMedia\":{\"courseId\":4,\"id\":33,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":44}}]},{\"courseId\":4,\"grade\":1,\"id\":45,\"orderby\":3,\"parentid\":0,\"pname\":\"第二讲 实验零 操作系统实验环境准备\",\"teachPlanTreeNodes\":[{\"courseId\":4,\"grade\":2,\"id\":46,\"orderby\":1,\"parentid\":45,\"pname\":\"2.1 前言和国内外现状\",\"teachplanMedia\":{\"courseId\":4,\"id\":34,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":46}},{\"courseId\":4,\"grade\":2,\"id\":47,\"orderby\":2,\"parentid\":45,\"pname\":\"2.2 OS实验目标\",\"teachplanMedia\":{\"courseId\":4,\"id\":35,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":47}},{\"courseId\":4,\"grade\":2,\"id\":48,\"orderby\":3,\"parentid\":45,\"pname\":\"2.3 8个OS实验概述\",\"teachplanMedia\":{\"courseId\":4,\"id\":36,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":48}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:23\",\"id\":5,\"introduction\":\"向勇，博士，清华大学计算机系副教授，自2000年开始从事操作系统课的教学工作，科研方向包括无线自组网、计算机支持的协同工作和操作系统，曾主持或参与国家自然科学基金项目《支持多信道的自组网及其与Internet 互连的研究》和《多协作方式集成模型与环境研究》、863项目《车载自组网及其在智能导航中的应用》、核高基项目《开源操作系统内核分析和安全性评估：Linux体系结构及内核功能模块间关系分析》，以及多项企业合作项目，近5年发表10余篇论文(SCI检索2篇， EI检索5余篇)。\",\"photograph\":\"/mediafiles/2024/12/06/35dfab732ff71c5a8ec9a25f2c56173e.png\",\"position\":\"清华大学 计算机科学与技术系 副教授\",\"teacherName\":\"向勇\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:18\",\"id\":6,\"introduction\":\"陈渝，男，博士，清华大学计算机系副教授、中国计算机学会普适计算专委会副主任，系统软件专委委员，清华大学信息技术研究院操作系统研究中心负责人。主要科研方向：操作系统、系统安全，嵌入式系统，普适计算、高性能计算等。在操作系统相关领域的国际会议如VEE, ICPP, CLUSTER, PACT,  MASCOTS, ICPADS等，和国际期刊，如  IEEE Computer, ACM TACO，CCPE, TCJ,发表了学术论文，共计发表论文50余篇，申请专利6项。作为项目负责人承担了核高基子项目３项，国家863项目1项，国家科技支撑计划1项，自然科学基金项目2项，以及国际合作项目6项等。负责研发操作系统分析工具，OS kernel bug分析平台，SkyEye嵌入式系统模拟仿真环境软件系统，ucore教学操作系统等。承担清华大学计算机系本科和研究生的操作系统课程，翻译和出版6本操作系统与嵌入式系统等教材。获省部级一等奖３次，二等奖２次。\",\"photograph\":\"/mediafiles/2024/12/06/ef409d7c8978e3772a8f5b7214981fde.png\",\"position\":\"清华大学 计算机科学与技术系 副教授\",\"teacherName\":\"陈渝\"}]', '2024-12-08 23:04:32', NULL, NULL, '203002', NULL, '201000', 0.00, 117.00, 365, '800001');
INSERT INTO `course_publish` VALUES (5, 1232141425, NULL, 'Java程序设计', '程序设计初学者', '一流课程', NULL, '1-13', '企业/办公/职场', '1-13-4', 'Office/WPS', '204001', '200002', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '【国家精品课】课程介绍Java的基础语法和面向对象的程序设计方法和GUI程序开发方法。', '{\"charge\":\"201000\",\"id\":5,\"isAd\":\"800001\",\"originalPrice\":78.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":5,\"grade\":1,\"id\":49,\"orderby\":1,\"parentid\":0,\"pname\":\"第一章 Java语言基础知识\",\"teachPlanTreeNodes\":[{\"courseId\":5,\"grade\":2,\"id\":50,\"orderby\":1,\"parentid\":49,\"pname\":\"1.0-导学\",\"teachplanMedia\":{\"courseId\":5,\"id\":37,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":50}},{\"courseId\":5,\"grade\":2,\"id\":51,\"orderby\":2,\"parentid\":49,\"pname\":\"1.1-Java与面向对象程序设计简介\",\"teachplanMedia\":{\"courseId\":5,\"id\":38,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":51}},{\"courseId\":5,\"grade\":2,\"id\":52,\"orderby\":3,\"parentid\":49,\"pname\":\"1.2-基本数据类型与表达式\",\"teachplanMedia\":{\"courseId\":5,\"id\":39,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":52}}]},{\"courseId\":5,\"grade\":1,\"id\":53,\"orderby\":2,\"parentid\":0,\"pname\":\"第一章续-习题讲解视频\",\"teachPlanTreeNodes\":[{\"courseId\":5,\"grade\":2,\"id\":54,\"orderby\":1,\"parentid\":53,\"pname\":\"1.0Java环境配置、Eclipse使用、Helloworld程序详解\",\"teachplanMedia\":{\"courseId\":5,\"id\":40,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":54}},{\"courseId\":5,\"grade\":2,\"id\":55,\"orderby\":2,\"parentid\":53,\"pname\":\"1.1Java数据类型\",\"teachplanMedia\":{\"courseId\":5,\"id\":41,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":55}},{\"courseId\":5,\"grade\":2,\"id\":56,\"orderby\":3,\"parentid\":53,\"pname\":\"1.2Java数组\",\"teachplanMedia\":{\"courseId\":5,\"id\":42,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":56}}]},{\"courseId\":5,\"grade\":1,\"id\":57,\"orderby\":3,\"parentid\":0,\"pname\":\"第二章 类与对象\",\"teachPlanTreeNodes\":[{\"courseId\":5,\"grade\":2,\"id\":58,\"orderby\":1,\"parentid\":57,\"pname\":\"2.0-导学\",\"teachplanMedia\":{\"courseId\":5,\"id\":43,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":58}},{\"courseId\":5,\"grade\":2,\"id\":59,\"orderby\":2,\"parentid\":57,\"pname\":\"2.1-面向对象方法的特性\",\"teachplanMedia\":{\"courseId\":5,\"id\":44,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":59}},{\"courseId\":5,\"grade\":2,\"id\":60,\"orderby\":3,\"parentid\":57,\"pname\":\"2.2-1-类声明与对象创建\",\"teachplanMedia\":{\"courseId\":5,\"id\":45,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":60}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":1,\"introduction\":\"郑莉，教授，清华大学计算机科学与技术系。国家精品资源共享课负责人；北京市计算机教育研究会副理事长。全国高等学校计算机教育研究会常务理事。全国高等院校计算机基础教育研究会常务理事；文科计算机基础教学指导分委员会专家；ISO国际标准组织专家及标准编辑；全国信息技术标准化技术委员会教育技术分技术委员会委员兼秘书长。主要从事计算机教育及教育信息化研究，主持和参加多项国家863、支撑计划课题和教育部课题。 主编出版教材20部，其中《C++语言程序设计》获教育部自然科学奖和国家级精品教材称号。起草教育信息化相关国家标准5部、国际标准1部。 获国家级教学成果奖、北京市教学成果奖、教育部自然科学奖、教育部科技进步奖、北京市科技进步奖、电子学会科技进步奖等9项国家级、教育部、北京市奖励。 在清华校内开设本科生课程：《计算机程序设计基础》、《C++语言程序设计》和《Java语言程序设计》;研究生课程有面向对象的软件开发技术（英语）。\",\"photograph\":\"/mediafiles/2024/12/06/db66b0ae3c8ebabca1c2908f44d3fa85.png\",\"position\":\"清华大学 计算机科学与技术系 教授\",\"teacherName\":\"郑莉\"}]', '2024-12-08 23:04:34', NULL, NULL, '203002', NULL, '201000', 0.00, 78.00, 365, '800001');
INSERT INTO `course_publish` VALUES (6, 1232141425, NULL, '网络技术与应用', '学过具备计算机基础知识的人', '一流课程', NULL, '1-2', '移动开发', '1-2-5', 'Android', '204001', '200002', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '为了有效利用网络，就应该掌握网络的基本知识和使用网络的基本技能，也需要我们具备防御网络攻击的能力。如果你想跟上网络时代的步伐，或者正在准备全国计算机等级考试三级，或者Cisco CCNA认证考试，就请走进我们的MOOC吧。', '{\"charge\":\"201000\",\"id\":6,\"isAd\":\"800001\",\"originalPrice\":65.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":6,\"grade\":1,\"id\":61,\"orderby\":1,\"parentid\":0,\"pname\":\"先导语\",\"teachPlanTreeNodes\":[{\"courseId\":6,\"grade\":2,\"id\":62,\"orderby\":1,\"parentid\":61,\"pname\":\"课程先导语\",\"teachplanMedia\":{\"courseId\":6,\"id\":46,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":62}}]},{\"courseId\":6,\"grade\":1,\"id\":63,\"orderby\":2,\"parentid\":0,\"pname\":\"第1讲 概论\",\"teachPlanTreeNodes\":[{\"courseId\":6,\"grade\":2,\"id\":64,\"orderby\":1,\"parentid\":63,\"pname\":\"1.1 网络内涵\",\"teachplanMedia\":{\"courseId\":6,\"id\":47,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":64}},{\"courseId\":6,\"grade\":2,\"id\":65,\"orderby\":2,\"parentid\":63,\"pname\":\"1.2 互联网发展过程\",\"teachplanMedia\":{\"courseId\":6,\"id\":48,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":65}},{\"courseId\":6,\"grade\":2,\"id\":66,\"orderby\":3,\"parentid\":63,\"pname\":\"1.3 交换方式\",\"teachplanMedia\":{\"courseId\":6,\"id\":49,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":66}}]},{\"courseId\":6,\"grade\":1,\"id\":67,\"orderby\":3,\"parentid\":0,\"pname\":\"第2讲 数据通信基础\",\"teachPlanTreeNodes\":[{\"courseId\":6,\"grade\":2,\"id\":68,\"orderby\":1,\"parentid\":67,\"pname\":\"本讲内容简介\",\"teachplanMedia\":{\"courseId\":6,\"id\":50,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":68}},{\"courseId\":6,\"grade\":2,\"id\":69,\"orderby\":2,\"parentid\":67,\"pname\":\"2.1 数据传输系统\",\"teachplanMedia\":{\"courseId\":6,\"id\":51,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":69}},{\"courseId\":6,\"grade\":2,\"id\":70,\"orderby\":3,\"parentid\":67,\"pname\":\"2.2 信号\",\"teachplanMedia\":{\"courseId\":6,\"id\":52,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":70}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:17\",\"id\":7,\"introduction\":\"沈鑫剡，男，1962年出生，教授，本科和研究生毕业于国防科技大学。长期从事《网络技术与应用》和《计算机网络安全》等课程的教学与研究,获总参军队院校育才奖银奖。编著并由清华大学出版社出版的计算机网络类教材有：《计算机网络技术及应用》（第二版）、《计算机网络技术及应用学习辅导与实验指南》、《计算机网络》（第二版）、《计算机网络学习辅导与实验指南》、《计算机网络安全》、《计算机网络安全学习辅导与实验指南》、《路由和交换技术》、《路由和交换技术实验及实训》、《计算机网络工程》、《计算机网络工程实验教程》等。\",\"photograph\":\"/mediafiles/2024/12/06/66e5d6a9c4f34b3a4f84feb2848d3923.png\",\"position\":\"中国人民解放军陆军工程大学 国防工程学院 教授\",\"teacherName\":\"沈鑫剡\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:15\",\"id\":8,\"introduction\":\"俞海英，女，1964年出生，教授，硕士生导师，系统分析与集成学科带头人，本科毕业于武汉大学，研究生毕业于解放军理工大学。长期从事《网络技术与应用》课程的教学与研究工作，两次获总参军队院校育才奖银奖，2014年被评为全军优秀教师。参与编写计算机网络类教材5部。曾担任计算机应用教研室主任、人防工程教研中心副主任，现任大学在线教学专家组组长、学院教学督导组组长。获得全国多媒体课件大赛一等奖1项、二等奖1项，全国微课大赛二等奖1项，全军网络课程三等奖1项。\",\"photograph\":\"/mediafiles/2024/12/06/6d07cbf26ea0cd522e3e59872730499c.png\",\"position\":\"中国人民解放军陆军工程大学 国防工程学院 教授\",\"teacherName\":\"俞海英\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:14\",\"id\":9,\"introduction\":\"陆军工程大学教授，优秀教员，“百名英才”青年教学之星，三等功获得者，擅长多媒体课件开发设计，作品多次获全国比赛一等奖，公开发表学术论文二十余篇，参编出版教材论著14部，获软件著作权15项。\",\"photograph\":\"/mediafiles/2024/12/06/480bf556cd3ef88903bd69bc04c6c94a.png\",\"position\":\"中国人民解放军陆军工程大学 国防工程学院 教授\",\"teacherName\":\"李兴德\"}]', '2024-12-08 23:04:36', NULL, NULL, '203002', NULL, '201000', 0.00, 65.00, 365, '800001');
INSERT INTO `course_publish` VALUES (7, 1232141425, NULL, '人工智能原理', '具备一定的数据结构、算法等计算机知识，线性代数、概率论等数学知识，以及机器学习的基础知识即可', '一流课程', NULL, '1-14', '信息安全', '1-14-9', '病毒木马', '204001', '200002', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', '本课程在系统回顾人工智能发展史的基础上，重点介绍人工智能的核心思想、基本理论，基本方法与部分应用。 课程以英文原版教材为主，并根据人工智能、特别是机器学习领域的发展和变化，编撰和充实了大量内容。采用中英文PPT,中文讲授。', '{\"charge\":\"201001\",\"id\":7,\"isAd\":\"800002\",\"originalPrice\":95.0,\"phone\":\"\",\"price\":12.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":7,\"grade\":1,\"id\":71,\"orderby\":1,\"parentid\":0,\"pname\":\"Part I. Basics: Chapter 1.    Introduction（第I部分 基础：第1章 导论）\",\"teachPlanTreeNodes\":[{\"courseId\":7,\"grade\":2,\"id\":72,\"orderby\":1,\"parentid\":71,\"pname\":\"1.1 Overview of Artificial Intelligence (人工智能概述)\",\"teachplanMedia\":{\"courseId\":7,\"id\":53,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":72}},{\"courseId\":7,\"grade\":2,\"id\":73,\"orderby\":2,\"parentid\":71,\"pname\":\"1.2 Foundations of Artificial Intelligence(人工智能基础)\",\"teachplanMedia\":{\"courseId\":7,\"id\":54,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":73}},{\"courseId\":7,\"grade\":2,\"id\":74,\"orderby\":3,\"parentid\":71,\"pname\":\"1.3 History of Artificial Intelligence(人工智能历史)\",\"teachplanMedia\":{\"courseId\":7,\"id\":55,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":74}}]},{\"courseId\":7,\"grade\":1,\"id\":75,\"orderby\":2,\"parentid\":0,\"pname\":\"Part I. Basics: Chapter 2. Intelligent Agent（第I部分 基础：第2章 智能体）\",\"teachPlanTreeNodes\":[{\"courseId\":7,\"grade\":2,\"id\":76,\"orderby\":1,\"parentid\":75,\"pname\":\"2.1 Approaches for Artificial Intelligence(人工智能研究途径)\",\"teachplanMedia\":{\"courseId\":7,\"id\":56,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":76}},{\"courseId\":7,\"grade\":2,\"id\":77,\"orderby\":2,\"parentid\":75,\"pname\":\"2.2 Rational Agents  (理性主体)\",\"teachplanMedia\":{\"courseId\":7,\"id\":57,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":77}},{\"courseId\":7,\"grade\":2,\"id\":78,\"orderby\":3,\"parentid\":75,\"pname\":\"2.3 Task Environments  (任务环境）\",\"teachplanMedia\":{\"courseId\":7,\"id\":58,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":78}}]},{\"courseId\":7,\"grade\":1,\"id\":79,\"orderby\":3,\"parentid\":0,\"pname\":\"Part II. Searching: Chapter 3. Solving Problems by Search(第II部分 搜索：第3章 通过搜索求解问题）\",\"teachPlanTreeNodes\":[{\"courseId\":7,\"grade\":2,\"id\":80,\"orderby\":1,\"parentid\":79,\"pname\":\"3.1 Problem Solving Agents（问题求解Agent）\",\"teachplanMedia\":{\"courseId\":7,\"id\":59,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":80}},{\"courseId\":7,\"grade\":2,\"id\":81,\"orderby\":2,\"parentid\":79,\"pname\":\"3.2 Example Problems（问题实例）\",\"teachplanMedia\":{\"courseId\":7,\"id\":60,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":81}},{\"courseId\":7,\"grade\":2,\"id\":82,\"orderby\":3,\"parentid\":79,\"pname\":\"3.3 Searching for Solutions（通过搜索求解）\",\"teachplanMedia\":{\"courseId\":7,\"id\":61,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":82}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:13\",\"id\":10,\"introduction\":\"1989年3月取得哈工大计算机博士学位。毕业后任哈理工、哈工大副教授等。1992年出国并在日美知名公司担任主任研究员、主干研究员、中国区总工等。2009年底应邀回国，任北京大学数字视频编解码国家工程实验室广州中心副主任。2012年3月任北京大学信息工程学院常务副院长（主持工作），2013年9月至2016年3月任北京大学信息工程学院院长。攻读博士学位期间主要从事人工智能协同式问题求解的研究，目前的研究领域包括计算机视觉、多媒体检索、人工智能与机器学习。\",\"photograph\":\"/mediafiles/2024/12/06/7dc69cc44442f5420805a786a1e29577.png\",\"position\":\"北京大学 信息工程学院 教授\",\"teacherName\":\"王文敏\"}]', '2024-12-08 23:04:37', NULL, NULL, '203002', NULL, '201001', 12.00, 95.00, 365, '800002');
INSERT INTO `course_publish` VALUES (8, 1232141425, NULL, 'C++语言程序设计进阶', '所有人', '一流课程', NULL, '1-1', '前端开发', '1-1-1', 'HTML/CSS', '204001', '200002', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', 'C++是从C语言发展演变而来的一种面向对象的程序设计语言，本课程是一门面向广大初学者的入门课程。', '{\"charge\":\"201001\",\"id\":8,\"isAd\":\"800001\",\"originalPrice\":22.0,\"phone\":\"\",\"price\":12.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":8,\"grade\":1,\"id\":83,\"orderby\":1,\"parentid\":0,\"pname\":\"第七章 继承与派生\",\"teachPlanTreeNodes\":[{\"courseId\":8,\"grade\":2,\"id\":84,\"orderby\":1,\"parentid\":83,\"pname\":\"导学\",\"teachplanMedia\":{\"courseId\":8,\"id\":62,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":84}},{\"courseId\":8,\"grade\":2,\"id\":85,\"orderby\":2,\"parentid\":83,\"pname\":\"继承的基本概念和语法\",\"teachplanMedia\":{\"courseId\":8,\"id\":63,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":85}},{\"courseId\":8,\"grade\":2,\"id\":86,\"orderby\":3,\"parentid\":83,\"pname\":\"继承方式\",\"teachplanMedia\":{\"courseId\":8,\"id\":64,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":86}}]},{\"courseId\":8,\"grade\":1,\"id\":87,\"orderby\":2,\"parentid\":0,\"pname\":\"第八章 多态性\",\"teachPlanTreeNodes\":[{\"courseId\":8,\"grade\":2,\"id\":88,\"orderby\":1,\"parentid\":87,\"pname\":\"导学\",\"teachplanMedia\":{\"courseId\":8,\"id\":65,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":88}},{\"courseId\":8,\"grade\":2,\"id\":89,\"orderby\":2,\"parentid\":87,\"pname\":\"运算符重载\",\"teachplanMedia\":{\"courseId\":8,\"id\":66,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":89}},{\"courseId\":8,\"grade\":2,\"id\":90,\"orderby\":3,\"parentid\":87,\"pname\":\"虚函数\",\"teachplanMedia\":{\"courseId\":8,\"id\":67,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":90}}]},{\"courseId\":8,\"grade\":1,\"id\":91,\"orderby\":3,\"parentid\":0,\"pname\":\"第九章 模板与群体数据\",\"teachPlanTreeNodes\":[{\"courseId\":8,\"grade\":2,\"id\":92,\"orderby\":1,\"parentid\":91,\"pname\":\"导学\",\"teachplanMedia\":{\"courseId\":8,\"id\":68,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":92}},{\"courseId\":8,\"grade\":2,\"id\":93,\"orderby\":2,\"parentid\":91,\"pname\":\"模板\",\"teachplanMedia\":{\"courseId\":8,\"id\":69,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":93}},{\"courseId\":8,\"grade\":2,\"id\":94,\"orderby\":3,\"parentid\":91,\"pname\":\"线性群体\",\"teachplanMedia\":{\"courseId\":8,\"id\":70,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":94}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":1,\"introduction\":\"郑莉，教授，清华大学计算机科学与技术系。国家精品资源共享课负责人；北京市计算机教育研究会副理事长。全国高等学校计算机教育研究会常务理事。全国高等院校计算机基础教育研究会常务理事；文科计算机基础教学指导分委员会专家；ISO国际标准组织专家及标准编辑；全国信息技术标准化技术委员会教育技术分技术委员会委员兼秘书长。主要从事计算机教育及教育信息化研究，主持和参加多项国家863、支撑计划课题和教育部课题。 主编出版教材20部，其中《C++语言程序设计》获教育部自然科学奖和国家级精品教材称号。起草教育信息化相关国家标准5部、国际标准1部。 获国家级教学成果奖、北京市教学成果奖、教育部自然科学奖、教育部科技进步奖、北京市科技进步奖、电子学会科技进步奖等9项国家级、教育部、北京市奖励。 在清华校内开设本科生课程：《计算机程序设计基础》、《C++语言程序设计》和《Java语言程序设计》;研究生课程有面向对象的软件开发技术（英语）。\",\"photograph\":\"/mediafiles/2024/12/06/db66b0ae3c8ebabca1c2908f44d3fa85.png\",\"position\":\"清华大学 计算机科学与技术系 教授\",\"teacherName\":\"郑莉\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:20\",\"id\":2,\"introduction\":\"李超，博士，清华大学副研究员，信息国家研究中心大数据团队核心成员，曾任清华大学信息技术研究院WEB与软件技术研究中心副主任/数据科学研究院智慧城市大数据研究中心核心成员/倍肯智慧健康大数据联合研究中心主任。中国计算机学会高级会员/存储技术专委委员/术语委员会编辑，国家标准化管理委员会SAC/TC86/SC6和SAC/TC28/SC36委员，ISO/IEC JTC1 SC36 WG8 Learning Analytics Interoperability工作组专家，任ICADL、IEEE Healthcom /BIGMM/ICCSE、SSS、ICSH、NCIS等国内外学术会议的组委会或程序委员会成员。  在计算机基础教学领域具有十二年工作经验，是清华大学计算机基础课团队成员，长期担任程序设计课程主讲教师，2016年入选清华公派教师赴牛津大学EMI课程训练营，学成结业。是2018年教育部国家精品在线开放课程和2020年教育部国家级一流本科课程核心团队主讲教师，担任2019年教育部高教司国家级一流本科课程评审专家。长期从事产学研合作，获2021年中国产学研合作创新成果奖二等奖，担任中国智能计算产业联盟产教融合工作委员会共同主任并获“2021年优秀工作委员会”荣誉，发表产学研合作相关创新论文和专利多项、2022年在第17届IEEE International Conference on Computer Science and Education以本课程为案例发表基于开源的产教融合创新实践论文获Best Paper Award。在产教融合服务社会方面具有一定活跃度，受邀主讲中教全媒体人工智能教育线上公开课第九讲、观看人数破万，2021年中国人工智能教育大会嘉宾报告《泛在、融合、协同：在守正中创新教与学》、2021“慧源共享”全国高校开放数据创新大赛清华站主讲人等。  在数据与知识工程领域，从事海量数据安全高效的存储、组织、管理与分析及领域应用。 主持或作为骨干承担多项863、973、科技支撑、重点研发项目，以及部委和企事业单位委托项目，发表SCI、EI论文70余篇，获发明专利20余项。发表于数字图书馆顶级会议ACM/IEEE-CS JCDL的论文为我校实现了零的突破；校内第二完成人“数字档案馆建设整体方案研究”项目获国家档案局优秀科技成果奖；作为研发骨干自主研发的华鼎（Huabase）列数据库委托工信部软件与集成电路促进中心赛普评测中心进行测试和鉴定 “系统在基于列存储的数据库管理系统的架构设计和关键技术实现上达到了国际先进水平”，在我国做出了开创性的工作。第一完成人主持起草的《非结构化数据采集及分析规范》 SJ/T11445.4-2017 在工信部作为行业标准已发布。牵头开展互联网感知大数据智能研究，基于该工作的“互联网感知大数据驱动的民生民情智能应用服务”作为清华唯一推荐项目获工信部2020年大数据产业发展试点示范项目（领域二/方向4 民生大数据创新应用/第54号）。\",\"photograph\":\"/mediafiles/2024/12/06/95fcfd0710e93f40b8dc9f73d90a5ee7.png\",\"position\":\"清华大学 北京信息科学与技术国家研究中心 副研究员\",\"teacherName\":\"李超\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:21\",\"id\":3,\"introduction\":\"博士，清华大学北京信息科学与技术国家研究中心副研究员。国家级精品课程“程序设计基础”课程负责人、国家级精品资源共享课“计算机语言与程序设计”建设负责人。主讲《程序设计基础》、《面向对象程序设计基础》、《信号处理原理》等计算机专业基础课程。作为主要成员参与编写的《程序设计基础（第3版）》（清华大学出版社出版）评为普通高等教育“十二五”规划教材。曾获北京市高等教育教学优秀成果一等奖、清华大学青年教师教学优秀奖、清华大学清韵烛光“学生最喜爱的老师”称号。主要研究兴趣包括：语音识别与理解、情感计算和跨媒体计算等。目前，作为项目负责人承担国家自然科学基金面上项目1项；作为项目骨干或子课题负责人参与国家973项目1项、自然科学基金重点项目1项、社会科学基金重点项目1项、863项目1项。\",\"photograph\":\"/mediafiles/2024/12/06/030f08ee81d384db123b68c4a02ddfb5.png\",\"position\":\"清华大学 北京信息科学与技术国家研究中心 副研究员\",\"teacherName\":\"徐明星\"}]', '2024-12-08 23:04:39', NULL, NULL, '203002', NULL, '201001', 12.00, 22.00, 365, '800001');
INSERT INTO `course_publish` VALUES (9, 1232141425, NULL, 'C程序设计案例教程（基础）', '所有人', '一流课程', NULL, '1-6', '云计算/大数据', '1-6-9', '其它', '204001', '200002', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', 'C语言曾开发出UNIX操作系统等经典系统。随着物联网、人工智能、大数据、云计算等新技术不断发展，也广泛用于开发各种应用程序，且易于使用，还具有硬件底层执行能力，因此能够持久丰富与发展，在TIOBE世界排行榜中始终位于前列。', '{\"charge\":\"201000\",\"id\":9,\"isAd\":\"800001\",\"originalPrice\":96.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":9,\"grade\":1,\"id\":95,\"orderby\":1,\"parentid\":0,\"pname\":\"第0章 课前认知与体验\",\"teachPlanTreeNodes\":[{\"courseId\":9,\"grade\":2,\"id\":96,\"orderby\":1,\"parentid\":95,\"pname\":\"0.1 C程序设计编程基本结构与实验方法\",\"teachplanMedia\":{\"courseId\":9,\"id\":71,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":96}},{\"courseId\":9,\"grade\":2,\"id\":97,\"orderby\":2,\"parentid\":95,\"pname\":\"0.2 本章知识要点自测练习\",\"teachplanMedia\":{\"courseId\":9,\"id\":72,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":97}}]},{\"courseId\":9,\"grade\":1,\"id\":98,\"orderby\":2,\"parentid\":0,\"pname\":\"第1章 计算机程序设计算法实现\",\"teachPlanTreeNodes\":[{\"courseId\":9,\"grade\":2,\"id\":99,\"orderby\":1,\"parentid\":98,\"pname\":\"1.1  程序设计概述（1.1.1 程序设计语言、1.1.2 程序设计过程）\",\"teachplanMedia\":{\"courseId\":9,\"id\":73,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":99}},{\"courseId\":9,\"grade\":2,\"id\":100,\"orderby\":2,\"parentid\":98,\"pname\":\"1.2   程序设计算法与实现（程序设计算法与实现、例1.1案例实验与分析）\",\"teachplanMedia\":{\"courseId\":9,\"id\":74,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":100}},{\"courseId\":9,\"grade\":2,\"id\":101,\"orderby\":3,\"parentid\":98,\"pname\":\"1.3  计算机程序算法的表示（1.3.1 自然语言描述、1.3.2 程序流程图描述、1.3.3 N-S图描述、1.3.4 程序设计语言描述）\",\"teachplanMedia\":{\"courseId\":9,\"id\":75,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":101}}]},{\"courseId\":9,\"grade\":1,\"id\":102,\"orderby\":3,\"parentid\":0,\"pname\":\"第2章 C程序设计结构组成与编译运行\",\"teachPlanTreeNodes\":[{\"courseId\":9,\"grade\":2,\"id\":103,\"orderby\":1,\"parentid\":102,\"pname\":\"2.1  C语言程序设计概述(2.1.1 C语言程序设计的发展、2.1.2 C程序设计特点、2.1.3 C程序设计组成结构)\",\"teachplanMedia\":{\"courseId\":9,\"id\":76,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":103}},{\"courseId\":9,\"grade\":2,\"id\":104,\"orderby\":2,\"parentid\":102,\"pname\":\"2.2  C程序设计的编译与运行（2.2.1 编辑调试与编译运行步骤、2.2.2 常用编译运行环境）\",\"teachplanMedia\":{\"courseId\":9,\"id\":77,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":104}},{\"courseId\":9,\"grade\":2,\"id\":105,\"orderby\":3,\"parentid\":102,\"pname\":\"2.3 C语言程序设计语义规范（2.3.1 C语言程序的基本规范、例2-3案例实验与分析、2.3.2 C语言程序设计标识符、2.3.3 C语言的保留关键字）\",\"teachplanMedia\":{\"courseId\":9,\"id\":78,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":105}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:12\",\"id\":11,\"introduction\":\"中国农业大学教授，硕士生导师，教育部宝钢教育优秀教师。研究方向主要有信息系统建模、机器学习、数据库原理、智慧教育环境及农业信息化服务等教学科研。 主持完成主要有教育部“十一五”国家级规划教材，北京市精品教材2部，北京市高等教育教学成果奖、校级教学成果奖5项，校级精品教材、校级重点实验教材、农业部中华农业教育优秀教材等。 相关兼职主要有CCF（中国计算机学会）教育工作委员会委员、全国高等院校计算机教育研究会常务理事、CCF教育专业委员会委员、全国高等院校计算机基础教育研究会在线教育专业委员会副主任委员兼秘书长、北京市高教学会计算机教育研究会常务理事等。\",\"photograph\":\"/mediafiles/2024/12/06/d9e3ff3047955b38b95427228f158cbc.png\",\"position\":\"中国农业大学 信息与电气工程学院计算机系 教授\",\"teacherName\":\"张莉\"}]', '2024-12-08 23:04:41', NULL, NULL, '203002', NULL, '201000', 0.00, 96.00, 365, '800001');
INSERT INTO `course_publish` VALUES (10, 1232141425, NULL, '软件工程', '所有人', '一流课程', NULL, '1-2', '移动开发', '1-2-2', 'iOS', '204001', '200002', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', '用正确的方式建造有价值的软件，软件工程课程为您讲授软件系统的构建之道！ 本课程为国家级精品在线开放课程和国家级一流本科课程，并入围首批中国高校计算机教育慕课联盟—华为技术公司\"智能基座\"课程。', '{\"charge\":\"201001\",\"id\":10,\"isAd\":\"800002\",\"originalPrice\":103.0,\"phone\":\"\",\"price\":15.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":10,\"grade\":1,\"id\":106,\"orderby\":1,\"parentid\":0,\"pname\":\"第1章 初识软件工程\",\"teachPlanTreeNodes\":[{\"courseId\":10,\"grade\":2,\"id\":107,\"orderby\":1,\"parentid\":106,\"pname\":\"1.1 软件无处不在\",\"teachplanMedia\":{\"courseId\":10,\"id\":79,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":107}},{\"courseId\":10,\"grade\":2,\"id\":108,\"orderby\":2,\"parentid\":106,\"pname\":\"1.2 软件的本质特性\",\"teachplanMedia\":{\"courseId\":10,\"id\":80,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":108}},{\"courseId\":10,\"grade\":2,\"id\":109,\"orderby\":3,\"parentid\":106,\"pname\":\"1.3 软件工程的产生与发展\",\"teachplanMedia\":{\"courseId\":10,\"id\":81,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":109}}]},{\"courseId\":10,\"grade\":1,\"id\":110,\"orderby\":2,\"parentid\":0,\"pname\":\"第2章 编写高质量代码\",\"teachPlanTreeNodes\":[{\"courseId\":10,\"grade\":2,\"id\":111,\"orderby\":1,\"parentid\":110,\"pname\":\"2.1 编程过程与规范\",\"teachplanMedia\":{\"courseId\":10,\"id\":82,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":111}},{\"courseId\":10,\"grade\":2,\"id\":112,\"orderby\":2,\"parentid\":110,\"pname\":\"2.2 良好的编程实践\",\"teachplanMedia\":{\"courseId\":10,\"id\":83,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":112}},{\"courseId\":10,\"grade\":2,\"id\":113,\"orderby\":3,\"parentid\":110,\"pname\":\"2.3 Python集成开发环境\",\"teachplanMedia\":{\"courseId\":10,\"id\":84,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":113}}]},{\"courseId\":10,\"grade\":1,\"id\":114,\"orderby\":3,\"parentid\":0,\"pname\":\"第3章 单元测试\",\"teachPlanTreeNodes\":[{\"courseId\":10,\"grade\":2,\"id\":115,\"orderby\":1,\"parentid\":114,\"pname\":\"3.1 单元测试概述\",\"teachplanMedia\":{\"courseId\":10,\"id\":85,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":115}},{\"courseId\":10,\"grade\":2,\"id\":116,\"orderby\":2,\"parentid\":114,\"pname\":\"3.2 黑盒测试方法\",\"teachplanMedia\":{\"courseId\":10,\"id\":86,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":116}},{\"courseId\":10,\"grade\":2,\"id\":117,\"orderby\":3,\"parentid\":114,\"pname\":\"3.3 白盒测试方法\",\"teachplanMedia\":{\"courseId\":10,\"id\":87,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":117}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:10\",\"id\":12,\"introduction\":\"刘强，清华大学软件学院副教授，研究生导师，担任教育部软件工程专业教学指导分委员会委员，国家级精品资源共享课《软件工程》和《Web前端攻城狮》课程负责人。曾被评为清华大学研究生良师益友和国家示范性软件学院十佳教师，2014年获得国家教学成果二等奖。\",\"photograph\":\"/mediafiles/2024/12/06/2684a84a868ebd25659bf76fc1aae1f6.png\",\"position\":\"清华大学 软件学院 副教授\",\"teacherName\":\"刘强\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:25\",\"id\":13,\"introduction\":\"刘璘，清华大学，研究员，工程博士导师，刘璘博士主要从事需求工程与领域数据与知识工程研究工作。 她曾主持和参与软件需求工程及医疗数据工程相关的国家和企业科研项目十余项。 发表需求工程、服务建模与分析、数据与智能系统工程领域学术论文百余篇。 现任《大数据与智能国际期刊》国际期刊主编、《需求工程》、《信息系统建模与设计》国际期刊副主编。曾任《软件学报》编委。 负责第二章、第四章、第六章、第十二章\",\"photograph\":\"/mediafiles/2024/12/06/2c02d5196f0db8bfc7c34e46f11eebef.png\",\"position\":\"清华大学 软件学院 研究员\",\"teacherName\":\"刘璘\"}]', '2024-12-08 23:04:43', NULL, NULL, '203002', NULL, '201001', 15.00, 103.00, 365, '800002');
INSERT INTO `course_publish` VALUES (11, 1232141425, NULL, '大数据技术与应用', '学过的人', '一流课程', NULL, '1-2', '移动开发', '1-2-8', '其它', '204001', '200002', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', '结合应用实例融会贯通大数据中的理论方法和系统知识（平台、模块、工具），体会运用大数据技术解决实际问题的思路和效果。', '{\"charge\":\"201000\",\"id\":11,\"isAd\":\"800002\",\"originalPrice\":195.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":11,\"grade\":1,\"id\":118,\"orderby\":1,\"parentid\":0,\"pname\":\"李国杰：面向大数据的数据科学\",\"teachPlanTreeNodes\":[{\"courseId\":11,\"grade\":2,\"id\":119,\"orderby\":1,\"parentid\":118,\"pname\":\"完整讲座\",\"teachplanMedia\":{\"courseId\":11,\"id\":88,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":119}}]},{\"courseId\":11,\"grade\":1,\"id\":120,\"orderby\":2,\"parentid\":0,\"pname\":\"吴甘沙：大数据分析师的卓越之道\",\"teachPlanTreeNodes\":[{\"courseId\":11,\"grade\":2,\"id\":121,\"orderby\":1,\"parentid\":120,\"pname\":\"数据思维方式的改变\",\"teachplanMedia\":{\"courseId\":11,\"id\":89,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":121}},{\"courseId\":11,\"grade\":2,\"id\":122,\"orderby\":2,\"parentid\":120,\"pname\":\"数据的假设与采集\",\"teachplanMedia\":{\"courseId\":11,\"id\":90,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":122}},{\"courseId\":11,\"grade\":2,\"id\":123,\"orderby\":3,\"parentid\":120,\"pname\":\"数据的准备\",\"teachplanMedia\":{\"courseId\":11,\"id\":91,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":123}}]},{\"courseId\":11,\"grade\":1,\"id\":124,\"orderby\":3,\"parentid\":0,\"pname\":\"董飞：硅谷公司的大数据实战分析\",\"teachPlanTreeNodes\":[{\"courseId\":11,\"grade\":2,\"id\":125,\"orderby\":1,\"parentid\":124,\"pname\":\"个人介绍\",\"teachplanMedia\":{\"courseId\":11,\"id\":92,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":125}},{\"courseId\":11,\"grade\":2,\"id\":126,\"orderby\":2,\"parentid\":124,\"pname\":\"硅谷热门公司\",\"teachplanMedia\":{\"courseId\":11,\"id\":93,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":126}},{\"courseId\":11,\"grade\":2,\"id\":127,\"orderby\":3,\"parentid\":124,\"pname\":\"大数据简介\",\"teachplanMedia\":{\"courseId\":11,\"id\":94,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":127}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:29\",\"id\":14,\"introduction\":\"李军毕业于清华大学自动化系，1985年、1988年分获学士、硕士学位。1997年毕业于新泽西州理工学院计算机系，获博士学位。主要从事网络安全、模式识别和图像处理领域的科研和教学工作。现从事网络信息分类与过滤、网络流量观测与控制、数据中心网络虚拟化等算法和系统方面的研究。在多年的科研和教学工作中，著译中外教材3部，发表学术论文百余篇，获得美国专利2项，中国发明专利十余项。\",\"photograph\":\"/mediafiles/2024/12/06/5ab5fcebc724153560cd83f356ba2233.png\",\"position\":\"清华大学 信息技术研究院 院长\",\"teacherName\":\"李军\"}]', '2024-12-08 23:04:47', NULL, NULL, '203002', NULL, '201000', 0.00, 195.00, 365, '800002');
INSERT INTO `course_publish` VALUES (12, 1232141425, NULL, 'Office办公软件应用', '所有人', '一流课程', NULL, '1-2', '移动开发', '1-2-2', 'iOS', '204001', '200002', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', 'Microsoft Office是微软公司开发的一套应用较为广泛的办公软件套装，是日常工作和生活中信息处理的重要工具。本课程主要介绍Microsoft Office中的文字处理软件Word、电子表格处理软件Excel、演示文稿处理软件PowerPoint三个常用组件的基本操作方法。', '{\"charge\":\"201001\",\"id\":12,\"isAd\":\"800002\",\"originalPrice\":65.0,\"phone\":\"\",\"price\":20.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":12,\"grade\":1,\"id\":128,\"orderby\":1,\"parentid\":0,\"pname\":\"第0章 Microsoft Office软件基本概念\",\"teachPlanTreeNodes\":[{\"courseId\":12,\"grade\":2,\"id\":129,\"orderby\":1,\"parentid\":128,\"pname\":\"0-1 Microsoft Office的窗口布局与文件操作\",\"teachplanMedia\":{\"courseId\":12,\"id\":95,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":129}}]},{\"courseId\":12,\"grade\":1,\"id\":130,\"orderby\":2,\"parentid\":0,\"pname\":\"第1章 如何操作Microsoft Word\",\"teachPlanTreeNodes\":[{\"courseId\":12,\"grade\":2,\"id\":131,\"orderby\":1,\"parentid\":130,\"pname\":\"1-1 基本操作\",\"teachplanMedia\":{\"courseId\":12,\"id\":96,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":131}},{\"courseId\":12,\"grade\":2,\"id\":132,\"orderby\":2,\"parentid\":130,\"pname\":\"1-2 字体格式设置\",\"teachplanMedia\":{\"courseId\":12,\"id\":97,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":132}},{\"courseId\":12,\"grade\":2,\"id\":133,\"orderby\":3,\"parentid\":130,\"pname\":\"1-3 段落格式设置\",\"teachplanMedia\":{\"courseId\":12,\"id\":98,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":133}}]},{\"courseId\":12,\"grade\":1,\"id\":134,\"orderby\":3,\"parentid\":0,\"pname\":\"第2章 如何操作Microsoft Excel\",\"teachPlanTreeNodes\":[{\"courseId\":12,\"grade\":2,\"id\":135,\"orderby\":1,\"parentid\":134,\"pname\":\"2-1 基本概念与基本操作\",\"teachplanMedia\":{\"courseId\":12,\"id\":99,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":135}},{\"courseId\":12,\"grade\":2,\"id\":136,\"orderby\":2,\"parentid\":134,\"pname\":\"2-2 行与列的操作\",\"teachplanMedia\":{\"courseId\":12,\"id\":100,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":136}},{\"courseId\":12,\"grade\":2,\"id\":137,\"orderby\":3,\"parentid\":134,\"pname\":\"2-3 单元格的设置\",\"teachplanMedia\":{\"courseId\":12,\"id\":101,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":137}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:26\",\"id\":15,\"introduction\":\"史巧硕，博士学位，副教授，硕士生导师，课程负责人。\",\"photograph\":\"/mediafiles/2024/12/06/8872bb20d9026e871f1c4fd108243dc2.png\",\"position\":\"河北工业大学 计算机科学与软件学院 副教授\",\"teacherName\":\"史巧硕\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:27\",\"id\":16,\"introduction\":\"朱怀忠，硕士学位，讲师，负责课程的考试及练习系统的开发与维护。\",\"photograph\":\"/mediafiles/2024/12/06/6fae72c3c7384844790c911c0ee8e2bb.png\",\"position\":\"河北工业大学 计算机科学与软件学院 讲师\",\"teacherName\":\"朱怀忠\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:08\",\"id\":17,\"introduction\":\"刘洪普，硕士学位，讲师，负责课程的视频制作。\",\"photograph\":\"/mediafiles/2024/12/06/c8995f509fc24c5f49d458f2be6acb40.png\",\"position\":\"河北工业大学 计算机科学与软件学院 讲师\",\"teacherName\":\"刘洪普\"}]', '2024-12-08 23:04:48', NULL, NULL, '203002', NULL, '201001', 20.00, 65.00, 365, '800002');
INSERT INTO `course_publish` VALUES (13, 1232141425, NULL, 'C程序设计案例教程（进阶）', '所有人', '一流课程', NULL, '1-2', '移动开发', '1-2-1', '微信开发', '204001', '200002', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', 'C语言随新技术发展经久不衰持续发展，是现代信息技术开发应用的重要组成部分。系统学习掌握C程序设计，熟练掌握核心要点和知识体系，是掌握现代编程的重要基础。本课成作为进阶篇，是C程序设计的精华所在，通过各种实用案例分析，来解析相关知识要点难点，系统理解掌握相关知识要点和算法实现技术方法。', '{\"charge\":\"201001\",\"id\":13,\"isAd\":\"800001\",\"originalPrice\":36.0,\"phone\":\"\",\"price\":13.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":13,\"grade\":1,\"id\":138,\"orderby\":1,\"parentid\":0,\"pname\":\"C程序设计进阶\",\"teachPlanTreeNodes\":[{\"courseId\":13,\"grade\":2,\"id\":139,\"orderby\":1,\"parentid\":138,\"pname\":\"进阶与基础\",\"teachplanMedia\":{\"courseId\":13,\"id\":102,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":139}}]},{\"courseId\":13,\"grade\":1,\"id\":140,\"orderby\":2,\"parentid\":0,\"pname\":\"第10章 地址与指针变量——指针初步\",\"teachPlanTreeNodes\":[{\"courseId\":13,\"grade\":2,\"id\":141,\"orderby\":1,\"parentid\":140,\"pname\":\"10.1 变量的内存地址与指针（10.1.1 指针变量定义、 10.1.2指针变量的赋值、 10.1.3 指针变量运算符及运算、 10.1.4 指针变量作函数参数）\",\"teachplanMedia\":{\"courseId\":13,\"id\":103,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":141}}]},{\"courseId\":13,\"grade\":1,\"id\":142,\"orderby\":3,\"parentid\":0,\"pname\":\"第10章 地址与指针变量——指针与数组\",\"teachPlanTreeNodes\":[{\"courseId\":13,\"grade\":2,\"id\":143,\"orderby\":1,\"parentid\":142,\"pname\":\"10.2 数组与地址指针（10.2.1 指向数组的指针变量、 10.2.2 指向数组元素的指针变量、10.2.3 数组名作函数参数、 10.2.4 指向数组的指针变量作函数参数、 10.2.5 多维数\",\"teachplanMedia\":{\"courseId\":13,\"id\":104,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":143}},{\"courseId\":13,\"grade\":2,\"id\":144,\"orderby\":2,\"parentid\":142,\"pname\":\"10.3 字符串与指针变量(10.3.1 字符串处理方法、 10.3.2 字符串指针作函数参数)\",\"teachplanMedia\":{\"courseId\":13,\"id\":105,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":144}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:12\",\"id\":11,\"introduction\":\"中国农业大学教授，硕士生导师，教育部宝钢教育优秀教师。研究方向主要有信息系统建模、机器学习、数据库原理、智慧教育环境及农业信息化服务等教学科研。 主持完成主要有教育部“十一五”国家级规划教材，北京市精品教材2部，北京市高等教育教学成果奖、校级教学成果奖5项，校级精品教材、校级重点实验教材、农业部中华农业教育优秀教材等。 相关兼职主要有CCF（中国计算机学会）教育工作委员会委员、全国高等院校计算机教育研究会常务理事、CCF教育专业委员会委员、全国高等院校计算机基础教育研究会在线教育专业委员会副主任委员兼秘书长、北京市高教学会计算机教育研究会常务理事等。\",\"photograph\":\"/mediafiles/2024/12/06/d9e3ff3047955b38b95427228f158cbc.png\",\"position\":\"中国农业大学 信息与电气工程学院计算机系 教授\",\"teacherName\":\"张莉\"}]', '2024-12-08 23:04:50', NULL, NULL, '203002', NULL, '201001', 13.00, 36.00, 365, '800001');
INSERT INTO `course_publish` VALUES (14, 1232141425, NULL, '计算机文化基础', '所有人', '一流课程', NULL, '1-4', '数据库', '1-4-3', 'SQL Server', '204001', '200002', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', '面对无处不在的信息技术，你一定希望应用工具和技术解决常见的学习工作问题。甚至希望能够将信息技术应用到新的地方，那么，请加入课程学习！', '{\"charge\":\"201000\",\"id\":14,\"isAd\":\"800001\",\"originalPrice\":171.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":14,\"grade\":1,\"id\":145,\"orderby\":1,\"parentid\":0,\"pname\":\"第1课：说在前面的话\",\"teachPlanTreeNodes\":[{\"courseId\":14,\"grade\":2,\"id\":146,\"orderby\":1,\"parentid\":145,\"pname\":\"由一个短片引出......\",\"teachplanMedia\":{\"courseId\":14,\"id\":106,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":146}},{\"courseId\":14,\"grade\":2,\"id\":147,\"orderby\":2,\"parentid\":145,\"pname\":\"梳理IT产业大脉络（上）\",\"teachplanMedia\":{\"courseId\":14,\"id\":107,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":147}},{\"courseId\":14,\"grade\":2,\"id\":148,\"orderby\":3,\"parentid\":145,\"pname\":\"梳理IT产业大脉络（下）\",\"teachplanMedia\":{\"courseId\":14,\"id\":108,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":148}}]},{\"courseId\":14,\"grade\":1,\"id\":149,\"orderby\":2,\"parentid\":0,\"pname\":\"第2课：揭开计算机的神秘面纱\",\"teachPlanTreeNodes\":[{\"courseId\":14,\"grade\":2,\"id\":150,\"orderby\":1,\"parentid\":149,\"pname\":\"现代计算机为什么是电子数字的？\",\"teachplanMedia\":{\"courseId\":14,\"id\":109,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":150}},{\"courseId\":14,\"grade\":2,\"id\":151,\"orderby\":2,\"parentid\":149,\"pname\":\"二进制与十进制有什么区别?\",\"teachplanMedia\":{\"courseId\":14,\"id\":110,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":151}},{\"courseId\":14,\"grade\":2,\"id\":152,\"orderby\":3,\"parentid\":149,\"pname\":\"为什么莱布尼兹没有认识到二进制的重要性?\",\"teachplanMedia\":{\"courseId\":14,\"id\":111,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":152}}]},{\"courseId\":14,\"grade\":1,\"id\":153,\"orderby\":3,\"parentid\":0,\"pname\":\"第3课：数字世界中形形色色的“数”\",\"teachPlanTreeNodes\":[{\"courseId\":14,\"grade\":2,\"id\":154,\"orderby\":1,\"parentid\":153,\"pname\":\"数码相机是如何“计算”出一张数字照片？\",\"teachplanMedia\":{\"courseId\":14,\"id\":112,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":154}},{\"courseId\":14,\"grade\":2,\"id\":155,\"orderby\":2,\"parentid\":153,\"pname\":\"认识图像数字化过程中的采样和量化\",\"teachplanMedia\":{\"courseId\":14,\"id\":113,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":155}},{\"courseId\":14,\"grade\":2,\"id\":156,\"orderby\":3,\"parentid\":153,\"pname\":\"计算机是如何感知声音波形的？\",\"teachplanMedia\":{\"courseId\":14,\"id\":114,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":156}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:03\",\"id\":18,\"introduction\":\"从事基础教学工作20年。作为第一负责人承担多项部级、校级教学科研课题，负责计算机公共基础系列课程国家教学团队建设工作。以个人或第一负责人获得的教学奖励有：宝钢教育基金—优秀教师奖、清华大学优秀青年教师奖、北京市教学成果一等奖等。负责的计算机文化基础课程被评为首届国家精品课程称号。主编教材9本，其中2本获北京市精品教材称号，《计算机文化基础》教材被全国一百多所大专院校选用，印数过百万册。\",\"photograph\":\"/mediafiles/2024/12/06/f4e88b852c4fce8947cc7cb684ff0840.png\",\"position\":\"清华大学 计算机科学与技术系 副教授\",\"teacherName\":\"李秀\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-06T15:43:46\",\"id\":19,\"introduction\":\"长期从事计算机基础教学工作，作为国家级优秀教学团队的骨干成员，同时也是首届国家精品课程《计算机文化基础》的主讲老师，在清华承担多门计算机公共基础课程的教学工作。曾获得北京市高等教育教学成果一等奖，多项校级优秀教学成果奖。主编参编教材5本，其中1本获“北京市精品教材”。\",\"photograph\":\"/mediafiles/2024/12/06/988e09c449067357dbdd24b1575aaa77.png\",\"position\":\"清华大学 计算机系 实验技术人员\",\"teacherName\":\"姚瑞霞\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-06T15:43:47\",\"id\":20,\"introduction\":\"长期从事计算机基础教学工作，作为国家级优秀教学团队的骨干成员，所主讲的《计算机文化基础》课程获首届国家精品课程称号。曾获得北京市高等教育教学成果一等奖，多项校级优秀教学成果奖。主编参编教材7本，其中1本获“北京市精品教材”。\",\"photograph\":\"/mediafiles/2024/12/06/dca57977142de7665672d2d97271fa71.png\",\"position\":\"清华大学 计算机系 实验技术人员\",\"teacherName\":\"安颖莲\"}]', '2024-12-08 23:04:51', NULL, NULL, '203002', NULL, '201000', 0.00, 171.00, 365, '800001');
INSERT INTO `course_publish` VALUES (15, 1232141425, NULL, '大学计算机基础', '所有人', '一流课程', NULL, '1-9', '智能硬件/物联网', '1-9-1', '无线通信', '204001', '200002', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '《大学计算机基础》是为非计算机专业学生开设的第一门计算机基础课。想一网打尽计算机的基础知识，培养计算思维能力，了解常用软件的用途及操作技巧，在互联网+时代成为精通计算机及相关技术的专业人才，那就快来学习这门课程吧！', '{\"charge\":\"201000\",\"id\":15,\"isAd\":\"800002\",\"originalPrice\":69.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":15,\"grade\":1,\"id\":157,\"orderby\":1,\"parentid\":0,\"pname\":\"第一章概述\",\"teachPlanTreeNodes\":[{\"courseId\":15,\"grade\":2,\"id\":158,\"orderby\":1,\"parentid\":157,\"pname\":\"1-1 计算机的诞生与发展\",\"teachplanMedia\":{\"courseId\":15,\"id\":115,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":158}},{\"courseId\":15,\"grade\":2,\"id\":159,\"orderby\":2,\"parentid\":157,\"pname\":\"1-2 计算机的分类\",\"teachplanMedia\":{\"courseId\":15,\"id\":116,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":159}},{\"courseId\":15,\"grade\":2,\"id\":160,\"orderby\":3,\"parentid\":157,\"pname\":\"1-3 计算机的应用领域\",\"teachplanMedia\":{\"courseId\":15,\"id\":117,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":160}}]},{\"courseId\":15,\"grade\":1,\"id\":161,\"orderby\":2,\"parentid\":0,\"pname\":\"第二章 数据的表示与运算\",\"teachPlanTreeNodes\":[{\"courseId\":15,\"grade\":2,\"id\":162,\"orderby\":1,\"parentid\":161,\"pname\":\"2-1 进位记数制\",\"teachplanMedia\":{\"courseId\":15,\"id\":118,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":162}},{\"courseId\":15,\"grade\":2,\"id\":163,\"orderby\":2,\"parentid\":161,\"pname\":\"2-2  数制之间的相互转换\",\"teachplanMedia\":{\"courseId\":15,\"id\":119,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":163}},{\"courseId\":15,\"grade\":2,\"id\":164,\"orderby\":3,\"parentid\":161,\"pname\":\"2-3  整数的机器数表示\",\"teachplanMedia\":{\"courseId\":15,\"id\":120,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":164}}]},{\"courseId\":15,\"grade\":1,\"id\":165,\"orderby\":3,\"parentid\":0,\"pname\":\"第三章 计算机硬件\",\"teachPlanTreeNodes\":[{\"courseId\":15,\"grade\":2,\"id\":166,\"orderby\":1,\"parentid\":165,\"pname\":\"3-1  CPU\",\"teachplanMedia\":{\"courseId\":15,\"id\":121,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":166}},{\"courseId\":15,\"grade\":2,\"id\":167,\"orderby\":2,\"parentid\":165,\"pname\":\"3-2 存储器\",\"teachplanMedia\":{\"courseId\":15,\"id\":122,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":167}},{\"courseId\":15,\"grade\":2,\"id\":168,\"orderby\":3,\"parentid\":165,\"pname\":\"3-3   外部设备\",\"teachplanMedia\":{\"courseId\":15,\"id\":123,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":168}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-06T15:43:47\",\"id\":21,\"introduction\":\"徐红云，女，博士，教授, 华南理工大学计算机基础系列教学团队首席教授。主要研究领域：网络安全与隐私、移动和无线网络。  讲授的本科生课程有：高级语言程序设计C++、大学计算机基础、计算机科学概论、操作系统等。 近年来，公开发表国内外学术刊物和国际会议论文30多篇，出版教材4本。主持和参与国家自然科学基金项目、国家“863计划”项目、 国防科工委基础科研“十一五”规划项目、 中国科学院大型仪器开发等项目十多项。曾任2007年IEEE 普适计算与智能国际会议（the IEEE International Symposium on Ubiquitous Computing and Intelligence）程序委员会委员。现任中国计算机学会高级会员。 曾获湖南省科技进步二等奖，全国青年教师计算机教育优秀论文评比二等奖、华南理工大学教学优秀一等奖、优秀教师“南光奖”等奖项。\",\"photograph\":\"/mediafiles/2024/12/06/99fc990919623683e1865c8203e2e857.png\",\"position\":\"华南理工大学 计算机科学与工程学院 教授\",\"teacherName\":\"徐红云\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-06T15:43:49\",\"id\":22,\"introduction\":\"刘欣欣，女，博士，副教授。主要从事信息安全技术、软件自动化技术的研究，包括：数字认证技术、大规模分布式计算环境中的安全机制、移动计算环境的安全、安全协议的形式化分析和验证等。主讲《编译原理》、《计算机安全》、《大学计算机基础》等课程，发表学术论文10余篇，其中被SCI检索2篇，EI检索7篇。曾以第四完成人获2007年度高等学校科技进步二等奖。\",\"photograph\":\"/mediafiles/2024/12/06/99c1f79c9f735cd4dda92394f75d8a5a.png\",\"position\":\"华南理工大学 计算机科学与工程学院 副教授\",\"teacherName\":\"刘欣欣\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-06T15:43:46\",\"id\":23,\"introduction\":\"曹晓叶，女，博士，华南理工大学计算机科学与工程学院副教授，加州大学圣地亚哥分校访问学者。从事教学与科研工作十余年，主要承担的课程有：大学计算机基础、高级语言程序设计、数据结构等；主要研究领域为计算机图形学与图像处理，研究方向为三维建模与三维绘制，发表相关论文十余篇，被三大索引检索多篇，主持和参与科研项目多项\",\"photograph\":\"/mediafiles/2024/12/06/c01c665b9537d464c09eeac19245ece6.png\",\"position\":\"华南理工大学 计算机科学与工程学院 副教授\",\"teacherName\":\"曹晓叶\"}]', '2024-12-08 23:04:53', NULL, NULL, '203002', NULL, '201000', 0.00, 69.00, 365, '800002');
INSERT INTO `course_publish` VALUES (16, 1232141425, NULL, '程序设计基础', '学过程序设计基础的人', '一流课程', NULL, '1-8', '游戏开发', '1-8-5', 'Unreal', '204001', '200002', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '如何从生活中提炼算法，使计算机能象人一样解决问题？如何运用计算思维，用计算机来提高人的能力？我们将为你呈现一个既熟悉又陌生的精彩世界，带你感悟不一样的计算人生。', '{\"charge\":\"201000\",\"id\":16,\"isAd\":\"800002\",\"originalPrice\":127.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":16,\"grade\":1,\"id\":169,\"orderby\":1,\"parentid\":0,\"pname\":\"第一章 编程初步\",\"teachPlanTreeNodes\":[{\"courseId\":16,\"grade\":2,\"id\":170,\"orderby\":1,\"parentid\":169,\"pname\":\"1.1 基础知识\",\"teachplanMedia\":{\"courseId\":16,\"id\":124,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":170}},{\"courseId\":16,\"grade\":2,\"id\":171,\"orderby\":2,\"parentid\":169,\"pname\":\"1.2 买菜问题\",\"teachplanMedia\":{\"courseId\":16,\"id\":125,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":171}},{\"courseId\":16,\"grade\":2,\"id\":172,\"orderby\":3,\"parentid\":169,\"pname\":\"1.3 数学运算\",\"teachplanMedia\":{\"courseId\":16,\"id\":126,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":172}}]},{\"courseId\":16,\"grade\":1,\"id\":173,\"orderby\":2,\"parentid\":0,\"pname\":\"第二章 变量与代数思维\",\"teachPlanTreeNodes\":[{\"courseId\":16,\"grade\":2,\"id\":174,\"orderby\":1,\"parentid\":173,\"pname\":\"2.1 关于超级计算器的几点思考\",\"teachplanMedia\":{\"courseId\":16,\"id\":127,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":174}},{\"courseId\":16,\"grade\":2,\"id\":175,\"orderby\":2,\"parentid\":173,\"pname\":\"2.2 电子秤模拟 — 背景介绍及需求分析\",\"teachplanMedia\":{\"courseId\":16,\"id\":128,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":175}},{\"courseId\":16,\"grade\":2,\"id\":176,\"orderby\":3,\"parentid\":173,\"pname\":\"2.3 电子秤模拟 — 代码实现\",\"teachplanMedia\":{\"courseId\":16,\"id\":129,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":176}}]},{\"courseId\":16,\"grade\":1,\"id\":177,\"orderby\":3,\"parentid\":0,\"pname\":\"第三章 逻辑推理与枚举解题\",\"teachPlanTreeNodes\":[{\"courseId\":16,\"grade\":2,\"id\":178,\"orderby\":1,\"parentid\":177,\"pname\":\"3.1 谁做的好事——语义表示\",\"teachplanMedia\":{\"courseId\":16,\"id\":130,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":178}},{\"courseId\":16,\"grade\":2,\"id\":179,\"orderby\":2,\"parentid\":177,\"pname\":\"3.2 谁做的好事——真假检查\",\"teachplanMedia\":{\"courseId\":16,\"id\":131,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":179}},{\"courseId\":16,\"grade\":2,\"id\":180,\"orderby\":3,\"parentid\":177,\"pname\":\"3.3 谁做的好事——循环枚举\",\"teachplanMedia\":{\"courseId\":16,\"id\":132,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":180}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:21\",\"id\":3,\"introduction\":\"博士，清华大学北京信息科学与技术国家研究中心副研究员。国家级精品课程“程序设计基础”课程负责人、国家级精品资源共享课“计算机语言与程序设计”建设负责人。主讲《程序设计基础》、《面向对象程序设计基础》、《信号处理原理》等计算机专业基础课程。作为主要成员参与编写的《程序设计基础（第3版）》（清华大学出版社出版）评为普通高等教育“十二五”规划教材。曾获北京市高等教育教学优秀成果一等奖、清华大学青年教师教学优秀奖、清华大学清韵烛光“学生最喜爱的老师”称号。主要研究兴趣包括：语音识别与理解、情感计算和跨媒体计算等。目前，作为项目负责人承担国家自然科学基金面上项目1项；作为项目骨干或子课题负责人参与国家973项目1项、自然科学基金重点项目1项、社会科学基金重点项目1项、863项目1项。\",\"photograph\":\"/mediafiles/2024/12/06/030f08ee81d384db123b68c4a02ddfb5.png\",\"position\":\"清华大学 北京信息科学与技术国家研究中心 副研究员\",\"teacherName\":\"徐明星\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-06T15:43:49\",\"id\":24,\"introduction\":\"王瑀屏，博士，副教授。2009年1月于清华大学计算机系获得博士学位，2010年12月博士后出站后任清华大学计算机系助理研究员。主要研究方向包括：操作系统、系统安全、数字水印等。作为项目负责人承担国家青年科学基金项目一项，获北京市青年英才计划项目资助1项。作为项目骨干曾参与973项目2项、863项目3项。发表论文10余篇，其中SCI期刊论文5篇，1篇获得IEEE COMPSAC 2014大会最佳论文奖。\",\"photograph\":\"/mediafiles/2024/12/06/2648962293faff64b90921f21cb7e5ec.png\",\"position\":\"清华大学 计算机科学与技术系 副教授\",\"teacherName\":\"王瑀屏\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":25,\"introduction\":\"邬晓钧，2004年1月于清华大学获博士学位，研究方向为自然语言处理、说话人识别，现在计算机科学与技术系教学实验室任工程师。主讲“C++程序设计与训练”课程。作为主要人员参与国家级精品课“程序设计基础”的建设与教材编写，课程教材第3版被评为国家“十二五”规划教材。作为主要人员参与国家精品资源共享课程“计算机语言与程序设计”的建设。合作翻译国外教材《程序设计基础：第3版》、《程序设计语言概念（第9版）》。自2004年起担任清华大学ACM竞赛代表队主教练，率队在全球总决赛中获得2次亚军，1次季军。\",\"photograph\":\"/mediafiles/2024/12/06/08337216087420580696b639116c4742.png\",\"position\":\"清华大学 计算机科学与技术系 高级工程师\",\"teacherName\":\"邬晓钧\"}]', '2024-12-08 23:05:14', NULL, NULL, '203002', NULL, '201000', 0.00, 127.00, 365, '800002');
INSERT INTO `course_publish` VALUES (17, 1232141425, NULL, '大数据系统基础', '具备编程语言（Java或C）、数据库原理、操作系统相关知识的人', '一流课程', NULL, '1-3', '编程开发', '1-3-1', 'C/C++', '204001', '200002', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '大数据是一门交叉学科。本门课程重点介绍大数据管理的工具平台、开发环境、基本原理。', '{\"charge\":\"201001\",\"id\":17,\"isAd\":\"800001\",\"originalPrice\":144.0,\"phone\":\"\",\"price\":9.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":17,\"grade\":1,\"id\":181,\"orderby\":1,\"parentid\":0,\"pname\":\"1. 绪论\",\"teachPlanTreeNodes\":[{\"courseId\":17,\"grade\":2,\"id\":182,\"orderby\":1,\"parentid\":181,\"pname\":\"授课视频\",\"teachplanMedia\":{\"courseId\":17,\"id\":133,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":182}}]},{\"courseId\":17,\"grade\":1,\"id\":183,\"orderby\":2,\"parentid\":0,\"pname\":\"2.云计算\",\"teachPlanTreeNodes\":[{\"courseId\":17,\"grade\":2,\"id\":184,\"orderby\":1,\"parentid\":183,\"pname\":\"授课视频\",\"teachplanMedia\":{\"courseId\":17,\"id\":134,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":184}}]},{\"courseId\":17,\"grade\":1,\"id\":185,\"orderby\":3,\"parentid\":0,\"pname\":\"3.文件存储\",\"teachPlanTreeNodes\":[{\"courseId\":17,\"grade\":2,\"id\":186,\"orderby\":1,\"parentid\":185,\"pname\":\"授课视频\",\"teachplanMedia\":{\"courseId\":17,\"id\":135,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":186}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":26,\"introduction\":\"王建民博士，1968年生，吉林磐石人，清华大学软件学院教授、博士生导师、院长。国家杰出青年科学基金获得者、国家政府特殊津贴获得者。国家863计划先进制造技术领域“面向制造业的核心软件开发”重大项目总体专家组组长(2012年起)、全国信息安全标准化技术委员会大数据安全标准特别工作组组长（2016年起）、“十二五”国家863计划先进制造领域制造服务技术主题专家组成员、国家卫计委人口健康信息化专家咨询委员会委员（2014年起）、国家“核高基”科技重大专项总体组成员（2008-2013）。2008年以来在IEEE TKDE、VLDBJ、TIP、IEEE TSC、WWWJ等期刊和ACM SIGMOD、VLDB、IEEE ICDE、AAAI、ICML、NIPS、IJCAI、ACM Multimedia、CVPR、ICCV等会议上发表学术论文210余篇；获得中国发明专利授权20余项。2006年入选国家教育部新世纪优秀人才支持计划，同年获得北京市师德先进个人。1998年获国家科技进步二等奖(排名4)，2013年入选国家科技部中青年科技领军人才计划，2014年获得国家科技进步二等奖（排名1）。担任ICSOC 2017联合程序主席、WISE 2016联合程序主席、2015-2016年中国计算机学会CCF大数据学术会议联合程序主席。\",\"photograph\":\"/mediafiles/2024/12/06/66c6ea12022ab57fdfd85f016c274edc.png\",\"position\":\"清华大学 软件学院 教授\",\"teacherName\":\"王建民\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":27,\"introduction\":\"徐葳，清华大学交叉信息研究院助理教授，数据科学研究院管理委员会委员，教育部在线教育研究中心国际合作总监。研究方向：分布式系统设计、云计算系统设计、大数据分析\",\"photograph\":\"/mediafiles/2024/12/06/e468a8f18fcae5a6335fd8bcf1b6ebd0.png\",\"position\":\"清华大学 交叉信息研究院 助理教授\",\"teacherName\":\"徐葳\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":28,\"introduction\":\"清华大学工学博士，副研究员 主要研究方向是信息处理系统、操作系统、存储系统、计算系统虚拟化 参加与主持多个国家863、973以及自然科学基金项目 2014年度电子学会技术发明一等奖 2015年度国家技术发明二等奖\",\"photograph\":\"/mediafiles/2024/12/06/346c8adbfed9e31bd6eeaa8b12d30532.png\",\"position\":\"清华大学 区块链技术联合研究中心 副研究员\",\"teacherName\":\"陈康\"}]', '2024-12-08 23:05:16', NULL, NULL, '203002', NULL, '201001', 9.00, 144.00, 365, '800001');
INSERT INTO `course_publish` VALUES (18, 1232141425, NULL, '算法设计与分析', '所有人', '一流课程', NULL, '1-1', '前端开发', '1-1-2', 'JavaScript', '204001', '200002', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '信息时代，算法为王，和我一起进入算法的世界。', '{\"charge\":\"201001\",\"id\":18,\"isAd\":\"800001\",\"originalPrice\":144.0,\"phone\":\"\",\"price\":11.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":18,\"grade\":1,\"id\":187,\"orderby\":1,\"parentid\":0,\"pname\":\"1  Introduction of Algorithm\",\"teachPlanTreeNodes\":[{\"courseId\":18,\"grade\":2,\"id\":188,\"orderby\":1,\"parentid\":187,\"pname\":\"1.1 Introduction\",\"teachplanMedia\":{\"courseId\":18,\"id\":136,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":188}},{\"courseId\":18,\"grade\":2,\"id\":189,\"orderby\":2,\"parentid\":187,\"pname\":\"1.2 A First Problem: Stable Matching\",\"teachplanMedia\":{\"courseId\":18,\"id\":137,\"mediaFilename\":\"15.mp4\",\"mediaId\":\"c834cb8e731a58231cea7845fe2e985d\",\"teachplanId\":189}},{\"courseId\":18,\"grade\":2,\"id\":190,\"orderby\":3,\"parentid\":187,\"pname\":\"1.3 Gale-Shapley Algorithm\",\"teachplanMedia\":{\"courseId\":18,\"id\":138,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":190}}]},{\"courseId\":18,\"grade\":1,\"id\":191,\"orderby\":2,\"parentid\":0,\"pname\":\"2  Basics of Algorithm Analysis\",\"teachPlanTreeNodes\":[{\"courseId\":18,\"grade\":2,\"id\":192,\"orderby\":1,\"parentid\":191,\"pname\":\"2.1 Computational Tractability\",\"teachplanMedia\":{\"courseId\":18,\"id\":139,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":192}},{\"courseId\":18,\"grade\":2,\"id\":193,\"orderby\":2,\"parentid\":191,\"pname\":\"2.2 Asymptotic Order of Growth\",\"teachplanMedia\":{\"courseId\":18,\"id\":140,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":193}},{\"courseId\":18,\"grade\":2,\"id\":194,\"orderby\":3,\"parentid\":191,\"pname\":\"2.3 A Survey of Common Running Times\",\"teachplanMedia\":{\"courseId\":18,\"id\":141,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":194}}]},{\"courseId\":18,\"grade\":1,\"id\":195,\"orderby\":3,\"parentid\":0,\"pname\":\"3  Graph\",\"teachPlanTreeNodes\":[{\"courseId\":18,\"grade\":2,\"id\":196,\"orderby\":1,\"parentid\":195,\"pname\":\"3.1 Basic Definitions and Applications\",\"teachplanMedia\":{\"courseId\":18,\"id\":142,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":196}},{\"courseId\":18,\"grade\":2,\"id\":197,\"orderby\":2,\"parentid\":195,\"pname\":\"3.2 Graph Traversal\",\"teachplanMedia\":{\"courseId\":18,\"id\":143,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":197}},{\"courseId\":18,\"grade\":2,\"id\":198,\"orderby\":3,\"parentid\":195,\"pname\":\"3.3 Testing Bipartiteness\",\"teachplanMedia\":{\"courseId\":18,\"id\":144,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":198}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":29,\"introduction\":\"王振波，清华大学数学科学系副教授，2006年在清华大学数学科学系获得博士学位。主要研究方向为算法设计与分析。曾获清华大学优秀博士后，清华大学研究生精品课课程负责人，清华大学教学成果一等奖，北京青年优秀科技论文奖等。讲授《高等数学》、《线性代数》、《数学实验》等本科生课程，及《算法设计与分析》、《计算复杂性理论》、《网络优化》等研究生课程。\",\"photograph\":\"/mediafiles/2024/12/06/4e3d2357bef5a865815f11a560796f13.png\",\"position\":\"清华大学 数学科学系 副教授\",\"teacherName\":\"王振波\"}]', '2024-12-08 23:05:17', NULL, NULL, '203002', NULL, '201001', 11.00, 144.00, 365, '800001');
INSERT INTO `course_publish` VALUES (19, 1232141425, NULL, '组合数学', '所有人', '一流课程', NULL, '1-14', '信息安全', '1-14-7', '代码审计', '204001', '200002', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '本课程是计算机专业核心的基础理论课，是计算机理论分析和算法设计的基础，侧重介绍组合数学的概念和思想，研究离散对象的计数方法和相关理论。', '{\"charge\":\"201001\",\"id\":19,\"isAd\":\"800002\",\"originalPrice\":182.0,\"phone\":\"\",\"price\":13.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":19,\"grade\":1,\"id\":199,\"orderby\":1,\"parentid\":0,\"pname\":\"漫谈组合数学\",\"teachPlanTreeNodes\":[{\"courseId\":19,\"grade\":2,\"id\":200,\"orderby\":1,\"parentid\":199,\"pname\":\"什么是组合数学\",\"teachplanMedia\":{\"courseId\":19,\"id\":145,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":200}},{\"courseId\":19,\"grade\":2,\"id\":201,\"orderby\":2,\"parentid\":199,\"pname\":\"最精巧的排列——幻方\",\"teachplanMedia\":{\"courseId\":19,\"id\":146,\"mediaFilename\":\"13.mp4\",\"mediaId\":\"5cc8e1cd17c5fff55aef29508f363095\",\"teachplanId\":201}},{\"courseId\":19,\"grade\":2,\"id\":202,\"orderby\":3,\"parentid\":199,\"pname\":\"苦难的羊皮纸卷\",\"teachplanMedia\":{\"courseId\":19,\"id\":147,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":202}}]},{\"courseId\":19,\"grade\":1,\"id\":203,\"orderby\":2,\"parentid\":0,\"pname\":\"小乒乓球的组合之旅\",\"teachPlanTreeNodes\":[{\"courseId\":19,\"grade\":2,\"id\":204,\"orderby\":1,\"parentid\":203,\"pname\":\"加减乘除来计数\",\"teachplanMedia\":{\"courseId\":19,\"id\":148,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":204}},{\"courseId\":19,\"grade\":2,\"id\":205,\"orderby\":2,\"parentid\":203,\"pname\":\"排列还是组合\",\"teachplanMedia\":{\"courseId\":19,\"id\":149,\"mediaFilename\":\"10.mp4\",\"mediaId\":\"701b9289b467c0fdb608a65ac5dec016\",\"teachplanId\":205}},{\"courseId\":19,\"grade\":2,\"id\":206,\"orderby\":3,\"parentid\":203,\"pname\":\"各种各样的排列\",\"teachplanMedia\":{\"courseId\":19,\"id\":150,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":206}}]},{\"courseId\":19,\"grade\":1,\"id\":207,\"orderby\":3,\"parentid\":0,\"pname\":\"初识母函数\",\"teachPlanTreeNodes\":[{\"courseId\":19,\"grade\":2,\"id\":208,\"orderby\":1,\"parentid\":207,\"pname\":\"母函数是函数的母亲吗\",\"teachplanMedia\":{\"courseId\":19,\"id\":151,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":208}},{\"courseId\":19,\"grade\":2,\"id\":209,\"orderby\":2,\"parentid\":207,\"pname\":\"母函数的简单应用\",\"teachplanMedia\":{\"courseId\":19,\"id\":152,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":209}},{\"courseId\":19,\"grade\":2,\"id\":210,\"orderby\":3,\"parentid\":207,\"pname\":\"整数拆分\",\"teachplanMedia\":{\"courseId\":19,\"id\":153,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":210}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":30,\"introduction\":\"博士，清华大学计算机科学与技术系教授，2004年毕业于清华大学计算机系，获清华大学优秀毕业生称号，2005年-2006年赴美国加州大学洛杉矶分校访问，主要从事微处理器系统设计以及芯片自动化设计研究，参与多项国家重点科研项目，在国际一流期刊和学术会议上发表论文60余篇，其中SCI检索15篇，多次获得国际会议的最佳论文奖以及最佳论文候选。教学方面成果突出，其负责的《组合数学》课程连续被评为清华大学研究生精品课，2013年获得北京高校第八届青年教师教学基本功比赛理工组一等奖，2014年获得清华大学青年教师教学优秀奖。目前其讲授的《组合数学》注册学习人数超过6万人。该课程自2014年上线以来就以其精巧的设计，清晰的讲授，极具特色的诠释方法受到学习者的喜爱。课程的运营中充分体现以学习者为中心的理念，让一门传统意义上枯燥晦涩的计算机专业基础理论课变得生动而富有活力，备受国内外学习者好评。2017年被评为首批国家级精品在线开放课程。\",\"photograph\":\"/mediafiles/2024/12/06/d724f433f54bf86a6e01be56dbc1804a.png\",\"position\":\"清华大学 计算机科学与技术系 教授\",\"teacherName\":\"马昱春\"}]', '2024-12-08 23:05:19', NULL, NULL, '203002', NULL, '201001', 13.00, 182.00, 365, '800002');
INSERT INTO `course_publish` VALUES (20, 1232141425, NULL, '计算机应用基础', '所有人', '一流课程', NULL, '1-13', '企业/办公/职场', '1-13-3', '网络营销', '204001', '200002', '/mediafiles/2024/12/29/dcb647367ea1550e83074acd7864f353.png', '《计算机应用基础》课程将以计算机应用技能培养为导向，以计算机原理、概念为基础，以新技术新方法为牵引，以信息化办公和计算机维护为突破口，以创新思维能力培养为目标，和学习者一起了解计算机的发展史及软硬件结构，掌握计算机操作系统及各种办公软件的使用技巧，熟悉计算机网络基础知识、Internet技术和计算机安全维护等相关知识，为学习者职业生涯发展、终身学习和社会服务奠定基础。', '{\"charge\":\"201000\",\"id\":20,\"isAd\":\"800001\",\"originalPrice\":195.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":20,\"grade\":1,\"id\":542,\"mediaType\":\"\",\"orderby\":1,\"parentid\":0,\"pname\":\"第一章 计算机的基础知识\",\"teachPlanTreeNodes\":[{\"courseId\":20,\"grade\":2,\"id\":545,\"mediaType\":\"\",\"orderby\":1,\"parentid\":542,\"pname\":\"课程介绍\",\"teachplanMedia\":{\"courseId\":20,\"id\":398,\"mediaFilename\":\"1.mp4\",\"mediaId\":\"3aad1f3480ad0725f2a31e5127edbc6a\",\"teachplanId\":545}},{\"courseId\":20,\"grade\":2,\"id\":546,\"mediaType\":\"\",\"orderby\":2,\"parentid\":542,\"pname\":\"教师介绍\",\"teachplanMedia\":{\"courseId\":20,\"id\":399,\"mediaFilename\":\"2.mp4\",\"mediaId\":\"e2268d52dea91b85e18fd7fe2b386452\",\"teachplanId\":546}},{\"courseId\":20,\"grade\":2,\"id\":547,\"mediaType\":\"\",\"orderby\":3,\"parentid\":542,\"pname\":\"考核介绍\",\"teachplanMedia\":{\"courseId\":20,\"id\":400,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":547}}]},{\"courseId\":20,\"grade\":1,\"id\":543,\"mediaType\":\"\",\"orderby\":2,\"parentid\":0,\"pname\":\"第二章 Windows7的使用\",\"teachPlanTreeNodes\":[{\"courseId\":20,\"grade\":2,\"id\":548,\"mediaType\":\"\",\"orderby\":1,\"parentid\":543,\"pname\":\"window7介绍\",\"teachplanMedia\":{\"courseId\":20,\"id\":401,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":548}},{\"courseId\":20,\"grade\":2,\"id\":549,\"mediaType\":\"\",\"orderby\":2,\"parentid\":543,\"pname\":\"window7使用\",\"teachplanMedia\":{\"courseId\":20,\"id\":402,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":549}},{\"courseId\":20,\"grade\":2,\"id\":550,\"mediaType\":\"\",\"orderby\":3,\"parentid\":543,\"pname\":\"window7怎么用\",\"teachplanMedia\":{\"courseId\":20,\"id\":403,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":550}}]},{\"courseId\":20,\"grade\":1,\"id\":544,\"mediaType\":\"\",\"orderby\":3,\"parentid\":0,\"pname\":\"第三章 Word2010的使用\",\"teachPlanTreeNodes\":[{\"courseId\":20,\"grade\":2,\"id\":551,\"mediaType\":\"\",\"orderby\":1,\"parentid\":544,\"pname\":\"word2010介绍\",\"teachplanMedia\":{\"courseId\":20,\"id\":404,\"mediaFilename\":\"7.mp4\",\"mediaId\":\"c65857cc726ae5593fe99783edb39d37\",\"teachplanId\":551}},{\"courseId\":20,\"grade\":2,\"id\":552,\"mediaType\":\"\",\"orderby\":2,\"parentid\":544,\"pname\":\"word2010使用\",\"teachplanMedia\":{\"courseId\":20,\"id\":405,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":552}},{\"courseId\":20,\"grade\":2,\"id\":553,\"mediaType\":\"\",\"orderby\":3,\"parentid\":544,\"pname\":\"word2010怎么使用好\",\"teachplanMedia\":{\"courseId\":20,\"id\":406,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":553}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":31,\"introduction\":\"宋承继，硕士，陕西工业职业技术学院副教授，《计算机应用基础》主讲教师、负责人，在学堂在线和智慧职教上开课上线，自2005～2009年先后承担完成省级多门精品课程建设工作，国家软件技术专业教学资源库建设组成员，职业院校微课开发技术实战派培训师，教学富有激情，风趣幽默，深受广大学员喜爱！本人先后获得陕西省第二届微课教学比赛一等奖、国家优秀奖。\",\"photograph\":\"/mediafiles/2024/12/06/27f156eb6779af458b0648e6b0961021.png\",\"position\":\"陕西工业职业技术学院 信息工程学院 教授\",\"teacherName\":\"宋承继\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":32,\"introduction\":\"陕西省高等学校教学名师，咸阳市政协委员。现任信息和数字媒体技术教研室主任，专业带头人，兼任陕西计算机教育学会常务理事，陕西高职高专计算机学会秘书长。主持国家数字媒体专业教学资源库子项目《多媒体技术基础》课程，获陕西省人民政府普通高等学校优秀教学成果奖2项，主持陕西省图形图像制作专业综合改革试点项目和陕西省一流专业，主持陕西省精品课程《多媒体技术及制作》和《计算机组装与维护》两门，主持参与陕西省教学科研研究项目4项，主要参与完成咸阳市科技局科研项目2项。主编出版教材六部，发表论文18篇。\",\"photograph\":\"/mediafiles/2024/12/06/a5f00af064b490a7a5776f475de6891e.png\",\"position\":\"陕西工业职业技术学院 信息工程学院 教授\",\"teacherName\":\"王坤\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":33,\"introduction\":\"李龙龙，博士，陕西工业职业技术学院副教授，英国诺丁汉大学访问学者，主要研究方向为智能信息系统、智能检测技术，参与国家863项目1项、国家自然科学基金项目1项，在国内外知名期刊发表论文10余篇。\",\"photograph\":\"/mediafiles/2024/12/06/ae680c72a87716070599991cfd4e4d3e.png\",\"position\":\"陕西工业职业技术学院 信息工程学院 副教授\",\"teacherName\":\"李龙龙\"}]', '2024-12-29 23:24:12', '2024-12-29 23:24:12', NULL, '203002', NULL, '201000', 0.00, 195.00, 365, '800001');
INSERT INTO `course_publish` VALUES (21, 1232141425, NULL, 'R语言数据分析', '具有大学计算机及数学基础的人', '一流课程', NULL, '1-13', '企业/办公/职场', '1-13-1', '运营管理', '204001', '200002', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', '数据赋人工系统以智能。《R语言数据分析》从问道、执具、博术三个方面，阐述机器学习/数据挖掘的方法论（道）、编程工具R语言（具）以及经典算法模型（术）。通过课程的学习，可一起领悟数据分析之哲理、掌握模型算法之要义、提升工程实践之素养，推开人工智能的大门，为同学们在机器学习/数据挖掘领域登堂入室奠定基础', '{\"charge\":\"201001\",\"id\":21,\"isAd\":\"800001\",\"originalPrice\":22.0,\"phone\":\"\",\"price\":2.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":21,\"grade\":1,\"id\":211,\"orderby\":1,\"parentid\":0,\"pname\":\"上部：问道\",\"teachPlanTreeNodes\":[{\"courseId\":21,\"grade\":2,\"id\":212,\"orderby\":1,\"parentid\":211,\"pname\":\"第1章 气象万千、数以等观\",\"teachplanMedia\":{\"courseId\":21,\"id\":154,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":212}},{\"courseId\":21,\"grade\":2,\"id\":213,\"orderby\":2,\"parentid\":211,\"pname\":\"第2章 所谓学习、归类而已\",\"teachplanMedia\":{\"courseId\":21,\"id\":155,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":213}},{\"courseId\":21,\"grade\":2,\"id\":214,\"orderby\":3,\"parentid\":211,\"pname\":\"第3章 格言联璧话学习\",\"teachplanMedia\":{\"courseId\":21,\"id\":156,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":214}}]},{\"courseId\":21,\"grade\":1,\"id\":215,\"orderby\":2,\"parentid\":0,\"pname\":\"中部：执具\",\"teachPlanTreeNodes\":[{\"courseId\":21,\"grade\":2,\"id\":216,\"orderby\":1,\"parentid\":215,\"pname\":\"第5章 工欲善其事、必先利其器\",\"teachplanMedia\":{\"courseId\":21,\"id\":157,\"mediaFilename\":\"9.mp4\",\"mediaId\":\"602edfc767f1a656612d8c9a9137d617\",\"teachplanId\":216}},{\"courseId\":21,\"grade\":2,\"id\":217,\"orderby\":2,\"parentid\":215,\"pname\":\"第6章 基础编程——用别人的包和函数讲述自己的故事\",\"teachplanMedia\":{\"courseId\":21,\"id\":158,\"mediaFilename\":\"12.mp4\",\"mediaId\":\"faf3a36b168a0859fed78d1a3b0b9895\",\"teachplanId\":217}},{\"courseId\":21,\"grade\":2,\"id\":218,\"orderby\":3,\"parentid\":215,\"pname\":\"第7章 数据对象——面向数据对象学习R语言\",\"teachplanMedia\":{\"courseId\":21,\"id\":159,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":218}}]},{\"courseId\":21,\"grade\":1,\"id\":219,\"orderby\":3,\"parentid\":0,\"pname\":\"下部：博术\",\"teachPlanTreeNodes\":[{\"courseId\":21,\"grade\":2,\"id\":220,\"orderby\":1,\"parentid\":219,\"pname\":\"第10章 观数以形\",\"teachplanMedia\":{\"courseId\":21,\"id\":160,\"mediaFilename\":\"6.mp4\",\"mediaId\":\"ff141b6db970fb19debff6f006cde7e4\",\"teachplanId\":220}},{\"courseId\":21,\"grade\":2,\"id\":221,\"orderby\":2,\"parentid\":219,\"pname\":\"第11章 相随相伴、谓之关联\",\"teachplanMedia\":{\"courseId\":21,\"id\":161,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":221}},{\"courseId\":21,\"grade\":2,\"id\":222,\"orderby\":3,\"parentid\":219,\"pname\":\"第12章 既是世间法、自当有分别\",\"teachplanMedia\":{\"courseId\":21,\"id\":162,\"mediaFilename\":\"5.mp4\",\"mediaId\":\"e7b6689813479f1a4bcbda99d882550d\",\"teachplanId\":222}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":34,\"introduction\":\"艾新波（1981-），江西南昌人，博士、教授、博导，北京邮电大学人工智能学院副院长。主要从事机器学习与复杂系统建模的科研和教学工作。作为项目负责人，承担国家自然科学基金重大仪器项目、国家重点研发计划、北京市科委计划项目/课题/子课题多项，获北京市科学技术奖、第一届安全科技奖等省部级科技奖4项，其中一等奖1项、排名第二。曾先后为北京市应急管理局、国家能源集团、农业部信息中心、北京市农业局等提供数据建模服务，在机器学习与复杂系统建模领域有一定的学术积累和项目经验。注重学术科研与教书育人工作的结合，独立承担国家级一流本科课程1门；所录制的MOOC课程参加由中宣部、发改委、中央军委、北京市委市政府主办的二十大“奋进新时代”主题成就展；曾获北京高校第十二届青年教师教学基本功比赛三等奖、北京邮电大学第十五届教学观摩评比一等奖；曾获评北京邮电大学研究生优秀授课老师、北京邮电大学首届优秀研究生育人导师（2018年度）；曾指导学生获得CCF大数据与智能计算大赛冠军，获CCF优秀指导教师奖。\",\"photograph\":\"/mediafiles/2024/12/06/a9b8151d85fbffc2f30ed0bca65554f3.png\",\"position\":\"北京邮电大学 人工智能学院 教授\",\"teacherName\":\"艾新波\"}]', '2024-12-14 23:09:32', NULL, NULL, '203002', NULL, '201001', 2.00, 22.00, 365, '800001');
INSERT INTO `course_publish` VALUES (22, 1232141425, NULL, '大学计算机', '所有人', '一流课程', NULL, '1-11', '系统运维', '1-11-10', '其它', '204002', '200002', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', '大学计算机课程将以计算思维为导向，以计算机原理、概念为基础，以新技术新方法为牵引，以创新思维能力培养为目标，和学习者一起了解计算机科学，学习计算技术，掌握思维方法。', '{\"charge\":\"201000\",\"id\":22,\"isAd\":\"800001\",\"originalPrice\":191.0,\"phone\":\"\",\"price\":0.0,\"qq\":\"\",\"validDays\":365,\"wechat\":\"\"}', '[{\"courseId\":22,\"grade\":1,\"id\":223,\"orderby\":1,\"parentid\":0,\"pname\":\"第1周： 基于计算机的问题求解\",\"teachPlanTreeNodes\":[{\"courseId\":22,\"grade\":2,\"id\":224,\"orderby\":1,\"parentid\":223,\"pname\":\"课程介绍\",\"teachplanMedia\":{\"courseId\":22,\"id\":163,\"mediaFilename\":\"14.mp4\",\"mediaId\":\"e1d907d7f3fc6aade54c4e12c87f328b\",\"teachplanId\":224}},{\"courseId\":22,\"grade\":2,\"id\":225,\"orderby\":2,\"parentid\":223,\"pname\":\"1.0 本章导学\",\"teachplanMedia\":{\"courseId\":22,\"id\":164,\"mediaFilename\":\"11.mp4\",\"mediaId\":\"e16e6220e4195a46316b17e0b3bee63b\",\"teachplanId\":225}},{\"courseId\":22,\"grade\":2,\"id\":226,\"orderby\":3,\"parentid\":223,\"pname\":\"1.1 基于计算机的问题求解方法\",\"teachplanMedia\":{\"courseId\":22,\"id\":165,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":226}}]},{\"courseId\":22,\"grade\":1,\"id\":227,\"orderby\":2,\"parentid\":0,\"pname\":\"第2周：计算机信息数字化基础\",\"teachPlanTreeNodes\":[{\"courseId\":22,\"grade\":2,\"id\":228,\"orderby\":1,\"parentid\":227,\"pname\":\"2.0 本章导学\",\"teachplanMedia\":{\"courseId\":22,\"id\":166,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":228}},{\"courseId\":22,\"grade\":2,\"id\":229,\"orderby\":2,\"parentid\":227,\"pname\":\"2.1 数制及其在计算机中的表示\",\"teachplanMedia\":{\"courseId\":22,\"id\":167,\"mediaFilename\":\"4.mp4\",\"mediaId\":\"ede081035592464b387a43de1e88e1e5\",\"teachplanId\":229}},{\"courseId\":22,\"grade\":2,\"id\":230,\"orderby\":3,\"parentid\":227,\"pname\":\"2.2 二进制数据计算\",\"teachplanMedia\":{\"courseId\":22,\"id\":168,\"mediaFilename\":\"8.mp4\",\"mediaId\":\"878c02a0df04f94144ab808b1c4b74a0\",\"teachplanId\":230}}]},{\"courseId\":22,\"grade\":1,\"id\":231,\"orderby\":3,\"parentid\":0,\"pname\":\"百家视点\",\"teachPlanTreeNodes\":[{\"courseId\":22,\"grade\":2,\"id\":232,\"orderby\":1,\"parentid\":231,\"pname\":\"百家视点\",\"teachplanMedia\":{\"courseId\":22,\"id\":169,\"mediaFilename\":\"3.mp4\",\"mediaId\":\"e6ecda8e6c1ff312efcd8a76037225ac\",\"teachplanId\":232}}]}]', '[{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":35,\"introduction\":\"李凤霞, 女，北京理工大学计算机学院教授，北京市教学名师。在教学方面是计算机公共教学国家级优秀教学团队带头人、《C语言程序设计》MOOC课程负责人，《C语言程序设计》国家精品课程、精品资源共享课程负责人。是北京市优秀教师、师德先进个人。曾获北京市优秀教学成果一等奖、二等奖，主编的教材多次获北京市精品教材、国家规划教材，连续获省部级科研奖6项，获得授权专利13项，发表学术论文上百篇。\",\"photograph\":\"/mediafiles/2024/12/06/c08eceb4982899bb2c979dac8277bbee.png\",\"position\":\"北京理工大学 计算机学院 教授\",\"teacherName\":\"李凤霞\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":36,\"introduction\":\"陈宇峰，男，副教授，研究生导师，分别于1999年2002年于武汉大学自动化系获得学士、硕士学位；2006年于中科院自动化所获得模式识别与智能系统博士学位，2006年在香港中文大学从事智能监控项目的研究；2006年至今任北京理工大学博士后、讲师。期间承担包括博士后基金、博士点基金、校基金以及多项产学研应用横向项目。获得国防科学技术进步三等奖3次，发表包括SCI、EI检索文章十余篇，获得国家发明专利授权十余项。主讲包括《计算机基础》《计算机科学与程序设计》《计算机仿真》等大学基础课和研究生课程。\",\"photograph\":\"/mediafiles/2024/12/06/254b7ae7db269063a019275025055b98.png\",\"position\":\"北京理工大学 计算机学院 副教授\",\"teacherName\":\"陈宇峰\"},{\"companyId\":1232141425,\"createDate\":\"2024-12-03T17:22:19\",\"id\":37,\"introduction\":\"赵三元，女，北京理工大学计算机学院，副教授，硕士生导师，任全国高等院校计算机基础教育研究会智能技术应用专业委员会副秘书长，中国图象图形学会虚拟现实专委会委员，中国计算机学会多媒体专委会会员。获国家级教学成果奖二等奖一项，主持国家自然科学基金一项，在 SCI 重要刊物上和计算机视觉三大顶会（CVPR、ECCV、ICCV）上发表多篇科研论文，担任多个 SCI 期刊审稿人，是多项顶级科研会议的程序委员会成员，科研方向为计算机视觉和虚拟现实。\",\"photograph\":\"/mediafiles/2024/12/06/443d1e32f9917934ea0ef481beefe7c8.png\",\"position\":\"北京理工大学 计算机学院\",\"teacherName\":\"赵三元\"}]', '2024-12-16 17:01:06', NULL, NULL, '203002', NULL, '201000', 0.00, 191.00, 365, '800001');


-- ----------------------------
-- Table structure for course_publish_pre
-- ----------------------------
DROP TABLE IF EXISTS `course_publish_pre`;
CREATE TABLE `course_publish_pre`  (
  `id` bigint NOT NULL COMMENT '主键',
  `company_id` bigint NOT NULL COMMENT '机构ID',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `users` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '适用人群',
  `tags` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `mt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大分类',
  `mt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大分类名称',
  `st` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小分类',
  `st_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小分类名称',
  `grade` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程等级',
  `teachmode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教育模式',
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程图片',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程介绍',
  `market` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程营销信息，json格式',
  `teachplan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '所有课程计划，json格式',
  `teachers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '教师信息，json格式',
  `create_date` datetime NULL DEFAULT NULL COMMENT '提交时间',
  `audit_date` datetime NULL DEFAULT NULL COMMENT '审核时间',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `charge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收费规则，对应数据字典--203',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `original_price` float(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `valid_days` int NULL DEFAULT NULL COMMENT '课程有效期天数',
  `is_ad` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否为广告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程发布' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_publish_pre
-- ----------------------------

-- ----------------------------
-- Table structure for course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `course_teacher`;
CREATE TABLE `course_teacher`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint NULL DEFAULT NULL COMMENT '课程表示',
  `teacher_id` bigint NULL DEFAULT NULL COMMENT '教师标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_teacher
-- ----------------------------
INSERT INTO `course_teacher` VALUES (1, 1, 1);
INSERT INTO `course_teacher` VALUES (2, 1, 2);
INSERT INTO `course_teacher` VALUES (3, 1, 3);
INSERT INTO `course_teacher` VALUES (4, 2, 4);
INSERT INTO `course_teacher` VALUES (5, 3, 4);
INSERT INTO `course_teacher` VALUES (6, 4, 5);
INSERT INTO `course_teacher` VALUES (7, 4, 6);
INSERT INTO `course_teacher` VALUES (8, 5, 1);
INSERT INTO `course_teacher` VALUES (9, 6, 7);
INSERT INTO `course_teacher` VALUES (10, 6, 8);
INSERT INTO `course_teacher` VALUES (11, 6, 9);
INSERT INTO `course_teacher` VALUES (12, 7, 10);
INSERT INTO `course_teacher` VALUES (13, 8, 1);
INSERT INTO `course_teacher` VALUES (14, 8, 2);
INSERT INTO `course_teacher` VALUES (15, 8, 3);
INSERT INTO `course_teacher` VALUES (16, 9, 11);
INSERT INTO `course_teacher` VALUES (17, 10, 12);
INSERT INTO `course_teacher` VALUES (18, 10, 13);
INSERT INTO `course_teacher` VALUES (19, 11, 14);
INSERT INTO `course_teacher` VALUES (20, 12, 15);
INSERT INTO `course_teacher` VALUES (21, 12, 16);
INSERT INTO `course_teacher` VALUES (22, 12, 17);
INSERT INTO `course_teacher` VALUES (23, 13, 11);
INSERT INTO `course_teacher` VALUES (24, 14, 18);
INSERT INTO `course_teacher` VALUES (25, 14, 19);
INSERT INTO `course_teacher` VALUES (26, 14, 20);
INSERT INTO `course_teacher` VALUES (27, 15, 21);
INSERT INTO `course_teacher` VALUES (28, 15, 22);
INSERT INTO `course_teacher` VALUES (29, 15, 23);
INSERT INTO `course_teacher` VALUES (30, 16, 3);
INSERT INTO `course_teacher` VALUES (31, 16, 24);
INSERT INTO `course_teacher` VALUES (32, 16, 25);
INSERT INTO `course_teacher` VALUES (33, 17, 26);
INSERT INTO `course_teacher` VALUES (34, 17, 27);
INSERT INTO `course_teacher` VALUES (35, 17, 28);
INSERT INTO `course_teacher` VALUES (36, 18, 29);
INSERT INTO `course_teacher` VALUES (37, 19, 30);
INSERT INTO `course_teacher` VALUES (38, 20, 31);
INSERT INTO `course_teacher` VALUES (39, 20, 32);
INSERT INTO `course_teacher` VALUES (40, 20, 33);
INSERT INTO `course_teacher` VALUES (41, 21, 34);
INSERT INTO `course_teacher` VALUES (42, 22, 35);
INSERT INTO `course_teacher` VALUES (43, 22, 36);
INSERT INTO `course_teacher` VALUES (44, 22, 37);
INSERT INTO `course_teacher` VALUES (45, 23, 12);
INSERT INTO `course_teacher` VALUES (46, 23, 38);
INSERT INTO `course_teacher` VALUES (47, 23, 39);
INSERT INTO `course_teacher` VALUES (48, 24, 40);
INSERT INTO `course_teacher` VALUES (49, 24, 41);
INSERT INTO `course_teacher` VALUES (50, 24, 42);
INSERT INTO `course_teacher` VALUES (51, 25, 43);
INSERT INTO `course_teacher` VALUES (52, 26, 43);
INSERT INTO `course_teacher` VALUES (53, 27, 44);
INSERT INTO `course_teacher` VALUES (54, 27, 45);
INSERT INTO `course_teacher` VALUES (55, 27, 46);
INSERT INTO `course_teacher` VALUES (56, 28, 12);
INSERT INTO `course_teacher` VALUES (57, 28, 47);
INSERT INTO `course_teacher` VALUES (58, 29, 48);
INSERT INTO `course_teacher` VALUES (59, 29, 49);
INSERT INTO `course_teacher` VALUES (60, 30, 50);
INSERT INTO `course_teacher` VALUES (61, 31, 51);
INSERT INTO `course_teacher` VALUES (62, 32, 52);
INSERT INTO `course_teacher` VALUES (63, 32, 53);
INSERT INTO `course_teacher` VALUES (64, 32, 54);
INSERT INTO `course_teacher` VALUES (65, 33, 11);
INSERT INTO `course_teacher` VALUES (66, 33, 55);
INSERT INTO `course_teacher` VALUES (67, 34, 56);
INSERT INTO `course_teacher` VALUES (68, 34, 57);
INSERT INTO `course_teacher` VALUES (69, 34, 58);
INSERT INTO `course_teacher` VALUES (70, 35, 59);
INSERT INTO `course_teacher` VALUES (71, 36, 60);
INSERT INTO `course_teacher` VALUES (72, 37, 61);
INSERT INTO `course_teacher` VALUES (73, 38, 62);
INSERT INTO `course_teacher` VALUES (74, 39, 63);
INSERT INTO `course_teacher` VALUES (75, 39, 3);
INSERT INTO `course_teacher` VALUES (76, 40, 64);
INSERT INTO `course_teacher` VALUES (77, 41, 4);
INSERT INTO `course_teacher` VALUES (78, 42, 65);
INSERT INTO `course_teacher` VALUES (79, 42, 66);
INSERT INTO `course_teacher` VALUES (80, 42, 67);
INSERT INTO `course_teacher` VALUES (81, 43, 68);
INSERT INTO `course_teacher` VALUES (82, 43, 69);
INSERT INTO `course_teacher` VALUES (83, 43, 70);
INSERT INTO `course_teacher` VALUES (84, 44, 35);
INSERT INTO `course_teacher` VALUES (85, 44, 71);
INSERT INTO `course_teacher` VALUES (86, 44, 36);
INSERT INTO `course_teacher` VALUES (87, 45, 72);
INSERT INTO `course_teacher` VALUES (88, 46, 73);
INSERT INTO `course_teacher` VALUES (89, 47, 74);
INSERT INTO `course_teacher` VALUES (90, 47, 75);
INSERT INTO `course_teacher` VALUES (91, 47, 76);
INSERT INTO `course_teacher` VALUES (92, 48, 77);
INSERT INTO `course_teacher` VALUES (93, 48, 78);
INSERT INTO `course_teacher` VALUES (94, 49, 79);
INSERT INTO `course_teacher` VALUES (95, 49, 80);
INSERT INTO `course_teacher` VALUES (96, 49, 81);
INSERT INTO `course_teacher` VALUES (97, 50, 82);
INSERT INTO `course_teacher` VALUES (98, 50, 83);
INSERT INTO `course_teacher` VALUES (99, 50, 84);

-- ----------------------------
-- Table structure for mq_message
-- ----------------------------
DROP TABLE IF EXISTS `mq_message`;
CREATE TABLE `mq_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `message_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型代码: course_publish ,  media_test',
  `business_key1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `execute_num` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '通知次数',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '处理状态，0:初始，1:成功',
  `returnfailure_date` datetime NULL DEFAULT NULL COMMENT '回复失败时间',
  `returnsuccess_date` datetime NULL DEFAULT NULL COMMENT '回复成功时间',
  `returnfailure_msg` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复失败内容',
  `execute_date` datetime NULL DEFAULT NULL COMMENT '最近通知时间',
  `stage_state1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '阶段1处理状态, 0:初始，1:成功',
  `stage_state2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '阶段2处理状态, 0:初始，1:成功',
  `stage_state3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '阶段3处理状态, 0:初始，1:成功',
  `stage_state4` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '阶段4处理状态, 0:初始，1:成功',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mq_message
-- ----------------------------
INSERT INTO `mq_message` VALUES (1, 'course_publish', '1', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (2, 'course_publish', '2', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (3, 'course_publish', '3', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (4, 'course_publish', '4', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (5, 'course_publish', '5', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (6, 'course_publish', '6', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (7, 'course_publish', '7', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (8, 'course_publish', '8', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (9, 'course_publish', '9', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (10, 'course_publish', '10', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (11, 'course_publish', '11', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (12, 'course_publish', '12', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (13, 'course_publish', '13', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (14, 'course_publish', '14', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (15, 'course_publish', '15', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (16, 'course_publish', '16', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (17, 'course_publish', '17', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (18, 'course_publish', '18', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (19, 'course_publish', '19', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (20, 'course_publish', '20', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (21, 'course_publish', '21', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');
INSERT INTO `mq_message` VALUES (22, 'course_publish', '22', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0');

-- ----------------------------
-- Table structure for mq_message_history
-- ----------------------------
DROP TABLE IF EXISTS `mq_message_history`;
CREATE TABLE `mq_message_history`  (
  `id` bigint NOT NULL COMMENT '消息id',
  `message_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型代码',
  `business_key1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `execute_num` int UNSIGNED NULL DEFAULT NULL COMMENT '通知次数',
  `state` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '处理状态，0:初始，1:成功，2:失败',
  `returnfailure_date` datetime NULL DEFAULT NULL COMMENT '回复失败时间',
  `returnsuccess_date` datetime NULL DEFAULT NULL COMMENT '回复成功时间',
  `returnfailure_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复失败内容',
  `execute_date` datetime NULL DEFAULT NULL COMMENT '最近通知时间',
  `stage_state1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage_state2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage_state3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage_state4` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mq_message_history
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_id` bigint NULL DEFAULT NULL COMMENT '公司标识',
  `teacher_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师标识',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师职位',
  `introduction` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师简介',
  `photograph` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '照片',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程-教师关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 1232141425, '郑莉', '清华大学 计算机科学与技术系 教授', '郑莉，教授，清华大学计算机科学与技术系。国家精品资源共享课负责人；北京市计算机教育研究会副理事长。全国高等学校计算机教育研究会常务理事。全国高等院校计算机基础教育研究会常务理事；文科计算机基础教学指导分委员会专家；ISO国际标准组织专家及标准编辑；全国信息技术标准化技术委员会教育技术分技术委员会委员兼秘书长。主要从事计算机教育及教育信息化研究，主持和参加多项国家863、支撑计划课题和教育部课题。 主编出版教材20部，其中《C++语言程序设计》获教育部自然科学奖和国家级精品教材称号。起草教育信息化相关国家标准5部、国际标准1部。 获国家级教学成果奖、北京市教学成果奖、教育部自然科学奖、教育部科技进步奖、北京市科技进步奖、电子学会科技进步奖等9项国家级、教育部、北京市奖励。 在清华校内开设本科生课程：《计算机程序设计基础》、《C++语言程序设计》和《Java语言程序设计》;研究生课程有面向对象的软件开发技术（英语）。', '/mediafiles/2024/12/06/db66b0ae3c8ebabca1c2908f44d3fa85.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (2, 1232141425, '李超', '清华大学 北京信息科学与技术国家研究中心 副研究员', '李超，博士，清华大学副研究员，信息国家研究中心大数据团队核心成员，曾任清华大学信息技术研究院WEB与软件技术研究中心副主任/数据科学研究院智慧城市大数据研究中心核心成员/倍肯智慧健康大数据联合研究中心主任。中国计算机学会高级会员/存储技术专委委员/术语委员会编辑，国家标准化管理委员会SAC/TC86/SC6和SAC/TC28/SC36委员，ISO/IEC JTC1 SC36 WG8 Learning Analytics Interoperability工作组专家，任ICADL、IEEE Healthcom /BIGMM/ICCSE、SSS、ICSH、NCIS等国内外学术会议的组委会或程序委员会成员。  在计算机基础教学领域具有十二年工作经验，是清华大学计算机基础课团队成员，长期担任程序设计课程主讲教师，2016年入选清华公派教师赴牛津大学EMI课程训练营，学成结业。是2018年教育部国家精品在线开放课程和2020年教育部国家级一流本科课程核心团队主讲教师，担任2019年教育部高教司国家级一流本科课程评审专家。长期从事产学研合作，获2021年中国产学研合作创新成果奖二等奖，担任中国智能计算产业联盟产教融合工作委员会共同主任并获“2021年优秀工作委员会”荣誉，发表产学研合作相关创新论文和专利多项、2022年在第17届IEEE International Conference on Computer Science and Education以本课程为案例发表基于开源的产教融合创新实践论文获Best Paper Award。在产教融合服务社会方面具有一定活跃度，受邀主讲中教全媒体人工智能教育线上公开课第九讲、观看人数破万，2021年中国人工智能教育大会嘉宾报告《泛在、融合、协同：在守正中创新教与学》、2021“慧源共享”全国高校开放数据创新大赛清华站主讲人等。  在数据与知识工程领域，从事海量数据安全高效的存储、组织、管理与分析及领域应用。 主持或作为骨干承担多项863、973、科技支撑、重点研发项目，以及部委和企事业单位委托项目，发表SCI、EI论文70余篇，获发明专利20余项。发表于数字图书馆顶级会议ACM/IEEE-CS JCDL的论文为我校实现了零的突破；校内第二完成人“数字档案馆建设整体方案研究”项目获国家档案局优秀科技成果奖；作为研发骨干自主研发的华鼎（Huabase）列数据库委托工信部软件与集成电路促进中心赛普评测中心进行测试和鉴定 “系统在基于列存储的数据库管理系统的架构设计和关键技术实现上达到了国际先进水平”，在我国做出了开创性的工作。第一完成人主持起草的《非结构化数据采集及分析规范》 SJ/T11445.4-2017 在工信部作为行业标准已发布。牵头开展互联网感知大数据智能研究，基于该工作的“互联网感知大数据驱动的民生民情智能应用服务”作为清华唯一推荐项目获工信部2020年大数据产业发展试点示范项目（领域二/方向4 民生大数据创新应用/第54号）。', '/mediafiles/2024/12/06/95fcfd0710e93f40b8dc9f73d90a5ee7.png', '2024-12-03 17:22:20');
INSERT INTO `teacher` VALUES (3, 1232141425, '徐明星', '清华大学 北京信息科学与技术国家研究中心 副研究员', '博士，清华大学北京信息科学与技术国家研究中心副研究员。国家级精品课程“程序设计基础”课程负责人、国家级精品资源共享课“计算机语言与程序设计”建设负责人。主讲《程序设计基础》、《面向对象程序设计基础》、《信号处理原理》等计算机专业基础课程。作为主要成员参与编写的《程序设计基础（第3版）》（清华大学出版社出版）评为普通高等教育“十二五”规划教材。曾获北京市高等教育教学优秀成果一等奖、清华大学青年教师教学优秀奖、清华大学清韵烛光“学生最喜爱的老师”称号。主要研究兴趣包括：语音识别与理解、情感计算和跨媒体计算等。目前，作为项目负责人承担国家自然科学基金面上项目1项；作为项目骨干或子课题负责人参与国家973项目1项、自然科学基金重点项目1项、社会科学基金重点项目1项、863项目1项。', '/mediafiles/2024/12/06/030f08ee81d384db123b68c4a02ddfb5.png', '2024-12-03 17:22:21');
INSERT INTO `teacher` VALUES (4, 1232141425, '邓俊辉', '清华大学 计算机科学与技术系 教授', '邓俊辉，清华大学计算机系教授。1993和1997年分别于清华大学计算机系获学士、博士学位，1997年起在清华大学任教，他在讲授“数据结构”和“计算几何”方面拥有20多年的经验。', '/mediafiles/2024/12/06/0a17b0bad9295a6240838be7fe035463.png', '2024-12-03 17:22:22');
INSERT INTO `teacher` VALUES (5, 1232141425, '向勇', '清华大学 计算机科学与技术系 副教授', '向勇，博士，清华大学计算机系副教授，自2000年开始从事操作系统课的教学工作，科研方向包括无线自组网、计算机支持的协同工作和操作系统，曾主持或参与国家自然科学基金项目《支持多信道的自组网及其与Internet 互连的研究》和《多协作方式集成模型与环境研究》、863项目《车载自组网及其在智能导航中的应用》、核高基项目《开源操作系统内核分析和安全性评估：Linux体系结构及内核功能模块间关系分析》，以及多项企业合作项目，近5年发表10余篇论文(SCI检索2篇， EI检索5余篇)。', '/mediafiles/2024/12/06/35dfab732ff71c5a8ec9a25f2c56173e.png', '2024-12-03 17:22:23');
INSERT INTO `teacher` VALUES (6, 1232141425, '陈渝', '清华大学 计算机科学与技术系 副教授', '陈渝，男，博士，清华大学计算机系副教授、中国计算机学会普适计算专委会副主任，系统软件专委委员，清华大学信息技术研究院操作系统研究中心负责人。主要科研方向：操作系统、系统安全，嵌入式系统，普适计算、高性能计算等。在操作系统相关领域的国际会议如VEE, ICPP, CLUSTER, PACT,  MASCOTS, ICPADS等，和国际期刊，如  IEEE Computer, ACM TACO，CCPE, TCJ,发表了学术论文，共计发表论文50余篇，申请专利6项。作为项目负责人承担了核高基子项目３项，国家863项目1项，国家科技支撑计划1项，自然科学基金项目2项，以及国际合作项目6项等。负责研发操作系统分析工具，OS kernel bug分析平台，SkyEye嵌入式系统模拟仿真环境软件系统，ucore教学操作系统等。承担清华大学计算机系本科和研究生的操作系统课程，翻译和出版6本操作系统与嵌入式系统等教材。获省部级一等奖３次，二等奖２次。', '/mediafiles/2024/12/06/ef409d7c8978e3772a8f5b7214981fde.png', '2024-12-03 17:22:18');
INSERT INTO `teacher` VALUES (7, 1232141425, '沈鑫剡', '中国人民解放军陆军工程大学 国防工程学院 教授', '沈鑫剡，男，1962年出生，教授，本科和研究生毕业于国防科技大学。长期从事《网络技术与应用》和《计算机网络安全》等课程的教学与研究,获总参军队院校育才奖银奖。编著并由清华大学出版社出版的计算机网络类教材有：《计算机网络技术及应用》（第二版）、《计算机网络技术及应用学习辅导与实验指南》、《计算机网络》（第二版）、《计算机网络学习辅导与实验指南》、《计算机网络安全》、《计算机网络安全学习辅导与实验指南》、《路由和交换技术》、《路由和交换技术实验及实训》、《计算机网络工程》、《计算机网络工程实验教程》等。', '/mediafiles/2024/12/06/66e5d6a9c4f34b3a4f84feb2848d3923.png', '2024-12-03 17:22:17');
INSERT INTO `teacher` VALUES (8, 1232141425, '俞海英', '中国人民解放军陆军工程大学 国防工程学院 教授', '俞海英，女，1964年出生，教授，硕士生导师，系统分析与集成学科带头人，本科毕业于武汉大学，研究生毕业于解放军理工大学。长期从事《网络技术与应用》课程的教学与研究工作，两次获总参军队院校育才奖银奖，2014年被评为全军优秀教师。参与编写计算机网络类教材5部。曾担任计算机应用教研室主任、人防工程教研中心副主任，现任大学在线教学专家组组长、学院教学督导组组长。获得全国多媒体课件大赛一等奖1项、二等奖1项，全国微课大赛二等奖1项，全军网络课程三等奖1项。', '/mediafiles/2024/12/06/6d07cbf26ea0cd522e3e59872730499c.png', '2024-12-03 17:22:15');
INSERT INTO `teacher` VALUES (9, 1232141425, '李兴德', '中国人民解放军陆军工程大学 国防工程学院 教授', '陆军工程大学教授，优秀教员，“百名英才”青年教学之星，三等功获得者，擅长多媒体课件开发设计，作品多次获全国比赛一等奖，公开发表学术论文二十余篇，参编出版教材论著14部，获软件著作权15项。', '/mediafiles/2024/12/06/480bf556cd3ef88903bd69bc04c6c94a.png', '2024-12-03 17:22:14');
INSERT INTO `teacher` VALUES (10, 1232141425, '王文敏', '北京大学 信息工程学院 教授', '1989年3月取得哈工大计算机博士学位。毕业后任哈理工、哈工大副教授等。1992年出国并在日美知名公司担任主任研究员、主干研究员、中国区总工等。2009年底应邀回国，任北京大学数字视频编解码国家工程实验室广州中心副主任。2012年3月任北京大学信息工程学院常务副院长（主持工作），2013年9月至2016年3月任北京大学信息工程学院院长。攻读博士学位期间主要从事人工智能协同式问题求解的研究，目前的研究领域包括计算机视觉、多媒体检索、人工智能与机器学习。', '/mediafiles/2024/12/06/7dc69cc44442f5420805a786a1e29577.png', '2024-12-03 17:22:13');
INSERT INTO `teacher` VALUES (11, 1232141425, '张莉', '中国农业大学 信息与电气工程学院计算机系 教授', '中国农业大学教授，硕士生导师，教育部宝钢教育优秀教师。研究方向主要有信息系统建模、机器学习、数据库原理、智慧教育环境及农业信息化服务等教学科研。 主持完成主要有教育部“十一五”国家级规划教材，北京市精品教材2部，北京市高等教育教学成果奖、校级教学成果奖5项，校级精品教材、校级重点实验教材、农业部中华农业教育优秀教材等。 相关兼职主要有CCF（中国计算机学会）教育工作委员会委员、全国高等院校计算机教育研究会常务理事、CCF教育专业委员会委员、全国高等院校计算机基础教育研究会在线教育专业委员会副主任委员兼秘书长、北京市高教学会计算机教育研究会常务理事等。', '/mediafiles/2024/12/06/d9e3ff3047955b38b95427228f158cbc.png', '2024-12-03 17:22:12');
INSERT INTO `teacher` VALUES (12, 1232141425, '刘强', '清华大学 软件学院 副教授', '刘强，清华大学软件学院副教授，研究生导师，担任教育部软件工程专业教学指导分委员会委员，国家级精品资源共享课《软件工程》和《Web前端攻城狮》课程负责人。曾被评为清华大学研究生良师益友和国家示范性软件学院十佳教师，2014年获得国家教学成果二等奖。', '/mediafiles/2024/12/06/2684a84a868ebd25659bf76fc1aae1f6.png', '2024-12-03 17:22:10');
INSERT INTO `teacher` VALUES (13, 1232141425, '刘璘', '清华大学 软件学院 研究员', '刘璘，清华大学，研究员，工程博士导师，刘璘博士主要从事需求工程与领域数据与知识工程研究工作。 她曾主持和参与软件需求工程及医疗数据工程相关的国家和企业科研项目十余项。 发表需求工程、服务建模与分析、数据与智能系统工程领域学术论文百余篇。 现任《大数据与智能国际期刊》国际期刊主编、《需求工程》、《信息系统建模与设计》国际期刊副主编。曾任《软件学报》编委。 负责第二章、第四章、第六章、第十二章', '/mediafiles/2024/12/06/2c02d5196f0db8bfc7c34e46f11eebef.png', '2024-12-03 17:22:25');
INSERT INTO `teacher` VALUES (14, 1232141425, '李军', '清华大学 信息技术研究院 院长', '李军毕业于清华大学自动化系，1985年、1988年分获学士、硕士学位。1997年毕业于新泽西州理工学院计算机系，获博士学位。主要从事网络安全、模式识别和图像处理领域的科研和教学工作。现从事网络信息分类与过滤、网络流量观测与控制、数据中心网络虚拟化等算法和系统方面的研究。在多年的科研和教学工作中，著译中外教材3部，发表学术论文百余篇，获得美国专利2项，中国发明专利十余项。', '/mediafiles/2024/12/06/5ab5fcebc724153560cd83f356ba2233.png', '2024-12-03 17:22:29');
INSERT INTO `teacher` VALUES (15, 1232141425, '史巧硕', '河北工业大学 计算机科学与软件学院 副教授', '史巧硕，博士学位，副教授，硕士生导师，课程负责人。', '/mediafiles/2024/12/06/8872bb20d9026e871f1c4fd108243dc2.png', '2024-12-03 17:22:26');
INSERT INTO `teacher` VALUES (16, 1232141425, '朱怀忠', '河北工业大学 计算机科学与软件学院 讲师', '朱怀忠，硕士学位，讲师，负责课程的考试及练习系统的开发与维护。', '/mediafiles/2024/12/06/6fae72c3c7384844790c911c0ee8e2bb.png', '2024-12-03 17:22:27');
INSERT INTO `teacher` VALUES (17, 1232141425, '刘洪普', '河北工业大学 计算机科学与软件学院 讲师', '刘洪普，硕士学位，讲师，负责课程的视频制作。', '/mediafiles/2024/12/06/c8995f509fc24c5f49d458f2be6acb40.png', '2024-12-03 17:22:08');
INSERT INTO `teacher` VALUES (18, 1232141425, '李秀', '清华大学 计算机科学与技术系 副教授', '从事基础教学工作20年。作为第一负责人承担多项部级、校级教学科研课题，负责计算机公共基础系列课程国家教学团队建设工作。以个人或第一负责人获得的教学奖励有：宝钢教育基金—优秀教师奖、清华大学优秀青年教师奖、北京市教学成果一等奖等。负责的计算机文化基础课程被评为首届国家精品课程称号。主编教材9本，其中2本获北京市精品教材称号，《计算机文化基础》教材被全国一百多所大专院校选用，印数过百万册。', '/mediafiles/2024/12/06/f4e88b852c4fce8947cc7cb684ff0840.png', '2024-12-03 17:22:03');
INSERT INTO `teacher` VALUES (19, 1232141425, '姚瑞霞', '清华大学 计算机系 实验技术人员', '长期从事计算机基础教学工作，作为国家级优秀教学团队的骨干成员，同时也是首届国家精品课程《计算机文化基础》的主讲老师，在清华承担多门计算机公共基础课程的教学工作。曾获得北京市高等教育教学成果一等奖，多项校级优秀教学成果奖。主编参编教材5本，其中1本获“北京市精品教材”。', '/mediafiles/2024/12/06/988e09c449067357dbdd24b1575aaa77.png', '2024-12-06 15:43:46');
INSERT INTO `teacher` VALUES (20, 1232141425, '安颖莲', '清华大学 计算机系 实验技术人员', '长期从事计算机基础教学工作，作为国家级优秀教学团队的骨干成员，所主讲的《计算机文化基础》课程获首届国家精品课程称号。曾获得北京市高等教育教学成果一等奖，多项校级优秀教学成果奖。主编参编教材7本，其中1本获“北京市精品教材”。', '/mediafiles/2024/12/06/dca57977142de7665672d2d97271fa71.png', '2024-12-06 15:43:47');
INSERT INTO `teacher` VALUES (21, 1232141425, '徐红云', '华南理工大学 计算机科学与工程学院 教授', '徐红云，女，博士，教授, 华南理工大学计算机基础系列教学团队首席教授。主要研究领域：网络安全与隐私、移动和无线网络。  讲授的本科生课程有：高级语言程序设计C++、大学计算机基础、计算机科学概论、操作系统等。 近年来，公开发表国内外学术刊物和国际会议论文30多篇，出版教材4本。主持和参与国家自然科学基金项目、国家“863计划”项目、 国防科工委基础科研“十一五”规划项目、 中国科学院大型仪器开发等项目十多项。曾任2007年IEEE 普适计算与智能国际会议（the IEEE International Symposium on Ubiquitous Computing and Intelligence）程序委员会委员。现任中国计算机学会高级会员。 曾获湖南省科技进步二等奖，全国青年教师计算机教育优秀论文评比二等奖、华南理工大学教学优秀一等奖、优秀教师“南光奖”等奖项。', '/mediafiles/2024/12/06/99fc990919623683e1865c8203e2e857.png', '2024-12-06 15:43:47');
INSERT INTO `teacher` VALUES (22, 1232141425, '刘欣欣', '华南理工大学 计算机科学与工程学院 副教授', '刘欣欣，女，博士，副教授。主要从事信息安全技术、软件自动化技术的研究，包括：数字认证技术、大规模分布式计算环境中的安全机制、移动计算环境的安全、安全协议的形式化分析和验证等。主讲《编译原理》、《计算机安全》、《大学计算机基础》等课程，发表学术论文10余篇，其中被SCI检索2篇，EI检索7篇。曾以第四完成人获2007年度高等学校科技进步二等奖。', '/mediafiles/2024/12/06/99c1f79c9f735cd4dda92394f75d8a5a.png', '2024-12-06 15:43:49');
INSERT INTO `teacher` VALUES (23, 1232141425, '曹晓叶', '华南理工大学 计算机科学与工程学院 副教授', '曹晓叶，女，博士，华南理工大学计算机科学与工程学院副教授，加州大学圣地亚哥分校访问学者。从事教学与科研工作十余年，主要承担的课程有：大学计算机基础、高级语言程序设计、数据结构等；主要研究领域为计算机图形学与图像处理，研究方向为三维建模与三维绘制，发表相关论文十余篇，被三大索引检索多篇，主持和参与科研项目多项', '/mediafiles/2024/12/06/c01c665b9537d464c09eeac19245ece6.png', '2024-12-06 15:43:46');
INSERT INTO `teacher` VALUES (24, 1232141425, '王瑀屏', '清华大学 计算机科学与技术系 副教授', '王瑀屏，博士，副教授。2009年1月于清华大学计算机系获得博士学位，2010年12月博士后出站后任清华大学计算机系助理研究员。主要研究方向包括：操作系统、系统安全、数字水印等。作为项目负责人承担国家青年科学基金项目一项，获北京市青年英才计划项目资助1项。作为项目骨干曾参与973项目2项、863项目3项。发表论文10余篇，其中SCI期刊论文5篇，1篇获得IEEE COMPSAC 2014大会最佳论文奖。', '/mediafiles/2024/12/06/2648962293faff64b90921f21cb7e5ec.png', '2024-12-06 15:43:49');
INSERT INTO `teacher` VALUES (25, 1232141425, '邬晓钧', '清华大学 计算机科学与技术系 高级工程师', '邬晓钧，2004年1月于清华大学获博士学位，研究方向为自然语言处理、说话人识别，现在计算机科学与技术系教学实验室任工程师。主讲“C++程序设计与训练”课程。作为主要人员参与国家级精品课“程序设计基础”的建设与教材编写，课程教材第3版被评为国家“十二五”规划教材。作为主要人员参与国家精品资源共享课程“计算机语言与程序设计”的建设。合作翻译国外教材《程序设计基础：第3版》、《程序设计语言概念（第9版）》。自2004年起担任清华大学ACM竞赛代表队主教练，率队在全球总决赛中获得2次亚军，1次季军。', '/mediafiles/2024/12/06/08337216087420580696b639116c4742.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (26, 1232141425, '王建民', '清华大学 软件学院 教授', '王建民博士，1968年生，吉林磐石人，清华大学软件学院教授、博士生导师、院长。国家杰出青年科学基金获得者、国家政府特殊津贴获得者。国家863计划先进制造技术领域“面向制造业的核心软件开发”重大项目总体专家组组长(2012年起)、全国信息安全标准化技术委员会大数据安全标准特别工作组组长（2016年起）、“十二五”国家863计划先进制造领域制造服务技术主题专家组成员、国家卫计委人口健康信息化专家咨询委员会委员（2014年起）、国家“核高基”科技重大专项总体组成员（2008-2013）。2008年以来在IEEE TKDE、VLDBJ、TIP、IEEE TSC、WWWJ等期刊和ACM SIGMOD、VLDB、IEEE ICDE、AAAI、ICML、NIPS、IJCAI、ACM Multimedia、CVPR、ICCV等会议上发表学术论文210余篇；获得中国发明专利授权20余项。2006年入选国家教育部新世纪优秀人才支持计划，同年获得北京市师德先进个人。1998年获国家科技进步二等奖(排名4)，2013年入选国家科技部中青年科技领军人才计划，2014年获得国家科技进步二等奖（排名1）。担任ICSOC 2017联合程序主席、WISE 2016联合程序主席、2015-2016年中国计算机学会CCF大数据学术会议联合程序主席。', '/mediafiles/2024/12/06/66c6ea12022ab57fdfd85f016c274edc.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (27, 1232141425, '徐葳', '清华大学 交叉信息研究院 助理教授', '徐葳，清华大学交叉信息研究院助理教授，数据科学研究院管理委员会委员，教育部在线教育研究中心国际合作总监。研究方向：分布式系统设计、云计算系统设计、大数据分析', '/mediafiles/2024/12/06/e468a8f18fcae5a6335fd8bcf1b6ebd0.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (28, 1232141425, '陈康', '清华大学 区块链技术联合研究中心 副研究员', '清华大学工学博士，副研究员 主要研究方向是信息处理系统、操作系统、存储系统、计算系统虚拟化 参加与主持多个国家863、973以及自然科学基金项目 2014年度电子学会技术发明一等奖 2015年度国家技术发明二等奖', '/mediafiles/2024/12/06/346c8adbfed9e31bd6eeaa8b12d30532.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (29, 1232141425, '王振波', '清华大学 数学科学系 副教授', '王振波，清华大学数学科学系副教授，2006年在清华大学数学科学系获得博士学位。主要研究方向为算法设计与分析。曾获清华大学优秀博士后，清华大学研究生精品课课程负责人，清华大学教学成果一等奖，北京青年优秀科技论文奖等。讲授《高等数学》、《线性代数》、《数学实验》等本科生课程，及《算法设计与分析》、《计算复杂性理论》、《网络优化》等研究生课程。', '/mediafiles/2024/12/06/4e3d2357bef5a865815f11a560796f13.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (30, 1232141425, '马昱春', '清华大学 计算机科学与技术系 教授', '博士，清华大学计算机科学与技术系教授，2004年毕业于清华大学计算机系，获清华大学优秀毕业生称号，2005年-2006年赴美国加州大学洛杉矶分校访问，主要从事微处理器系统设计以及芯片自动化设计研究，参与多项国家重点科研项目，在国际一流期刊和学术会议上发表论文60余篇，其中SCI检索15篇，多次获得国际会议的最佳论文奖以及最佳论文候选。教学方面成果突出，其负责的《组合数学》课程连续被评为清华大学研究生精品课，2013年获得北京高校第八届青年教师教学基本功比赛理工组一等奖，2014年获得清华大学青年教师教学优秀奖。目前其讲授的《组合数学》注册学习人数超过6万人。该课程自2014年上线以来就以其精巧的设计，清晰的讲授，极具特色的诠释方法受到学习者的喜爱。课程的运营中充分体现以学习者为中心的理念，让一门传统意义上枯燥晦涩的计算机专业基础理论课变得生动而富有活力，备受国内外学习者好评。2017年被评为首批国家级精品在线开放课程。', '/mediafiles/2024/12/06/d724f433f54bf86a6e01be56dbc1804a.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (31, 1232141425, '宋承继', '陕西工业职业技术学院 信息工程学院 教授', '宋承继，硕士，陕西工业职业技术学院副教授，《计算机应用基础》主讲教师、负责人，在学堂在线和智慧职教上开课上线，自2005～2009年先后承担完成省级多门精品课程建设工作，国家软件技术专业教学资源库建设组成员，职业院校微课开发技术实战派培训师，教学富有激情，风趣幽默，深受广大学员喜爱！本人先后获得陕西省第二届微课教学比赛一等奖、国家优秀奖。', '/mediafiles/2024/12/06/27f156eb6779af458b0648e6b0961021.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (32, 1232141425, '王坤', '陕西工业职业技术学院 信息工程学院 教授', '陕西省高等学校教学名师，咸阳市政协委员。现任信息和数字媒体技术教研室主任，专业带头人，兼任陕西计算机教育学会常务理事，陕西高职高专计算机学会秘书长。主持国家数字媒体专业教学资源库子项目《多媒体技术基础》课程，获陕西省人民政府普通高等学校优秀教学成果奖2项，主持陕西省图形图像制作专业综合改革试点项目和陕西省一流专业，主持陕西省精品课程《多媒体技术及制作》和《计算机组装与维护》两门，主持参与陕西省教学科研研究项目4项，主要参与完成咸阳市科技局科研项目2项。主编出版教材六部，发表论文18篇。', '/mediafiles/2024/12/06/a5f00af064b490a7a5776f475de6891e.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (33, 1232141425, '李龙龙', '陕西工业职业技术学院 信息工程学院 副教授', '李龙龙，博士，陕西工业职业技术学院副教授，英国诺丁汉大学访问学者，主要研究方向为智能信息系统、智能检测技术，参与国家863项目1项、国家自然科学基金项目1项，在国内外知名期刊发表论文10余篇。', '/mediafiles/2024/12/06/ae680c72a87716070599991cfd4e4d3e.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (34, 1232141425, '艾新波', '北京邮电大学 人工智能学院 教授', '艾新波（1981-），江西南昌人，博士、教授、博导，北京邮电大学人工智能学院副院长。主要从事机器学习与复杂系统建模的科研和教学工作。作为项目负责人，承担国家自然科学基金重大仪器项目、国家重点研发计划、北京市科委计划项目/课题/子课题多项，获北京市科学技术奖、第一届安全科技奖等省部级科技奖4项，其中一等奖1项、排名第二。曾先后为北京市应急管理局、国家能源集团、农业部信息中心、北京市农业局等提供数据建模服务，在机器学习与复杂系统建模领域有一定的学术积累和项目经验。注重学术科研与教书育人工作的结合，独立承担国家级一流本科课程1门；所录制的MOOC课程参加由中宣部、发改委、中央军委、北京市委市政府主办的二十大“奋进新时代”主题成就展；曾获北京高校第十二届青年教师教学基本功比赛三等奖、北京邮电大学第十五届教学观摩评比一等奖；曾获评北京邮电大学研究生优秀授课老师、北京邮电大学首届优秀研究生育人导师（2018年度）；曾指导学生获得CCF大数据与智能计算大赛冠军，获CCF优秀指导教师奖。', '/mediafiles/2024/12/06/a9b8151d85fbffc2f30ed0bca65554f3.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (35, 1232141425, '李凤霞', '北京理工大学 计算机学院 教授', '李凤霞, 女，北京理工大学计算机学院教授，北京市教学名师。在教学方面是计算机公共教学国家级优秀教学团队带头人、《C语言程序设计》MOOC课程负责人，《C语言程序设计》国家精品课程、精品资源共享课程负责人。是北京市优秀教师、师德先进个人。曾获北京市优秀教学成果一等奖、二等奖，主编的教材多次获北京市精品教材、国家规划教材，连续获省部级科研奖6项，获得授权专利13项，发表学术论文上百篇。', '/mediafiles/2024/12/06/c08eceb4982899bb2c979dac8277bbee.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (36, 1232141425, '陈宇峰', '北京理工大学 计算机学院 副教授', '陈宇峰，男，副教授，研究生导师，分别于1999年2002年于武汉大学自动化系获得学士、硕士学位；2006年于中科院自动化所获得模式识别与智能系统博士学位，2006年在香港中文大学从事智能监控项目的研究；2006年至今任北京理工大学博士后、讲师。期间承担包括博士后基金、博士点基金、校基金以及多项产学研应用横向项目。获得国防科学技术进步三等奖3次，发表包括SCI、EI检索文章十余篇，获得国家发明专利授权十余项。主讲包括《计算机基础》《计算机科学与程序设计》《计算机仿真》等大学基础课和研究生课程。', '/mediafiles/2024/12/06/254b7ae7db269063a019275025055b98.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (37, 1232141425, '赵三元', '北京理工大学 计算机学院', '赵三元，女，北京理工大学计算机学院，副教授，硕士生导师，任全国高等院校计算机基础教育研究会智能技术应用专业委员会副秘书长，中国图象图形学会虚拟现实专委会委员，中国计算机学会多媒体专委会会员。获国家级教学成果奖二等奖一项，主持国家自然科学基金一项，在 SCI 重要刊物上和计算机视觉三大顶会（CVPR、ECCV、ICCV）上发表多篇科研论文，担任多个 SCI 期刊审稿人，是多项顶级科研会议的程序委员会成员，科研方向为计算机视觉和虚拟现实。', '/mediafiles/2024/12/06/443d1e32f9917934ea0ef481beefe7c8.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (38, 1232141425, '吴亮', '北京奇虎科技有限公司 Web平台部 技术总监', '吴亮，花名月影，前360公司奇舞团负责人，主任架构师，《JavaScript王者归来》作者，曾在清华大学《Web前端技术实训》课程中担任前端课程讲师。', '/mediafiles/2024/12/06/11cfdc79c1645ce3a835e1664795dbad.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (39, 1232141425, '赵文博', '北京奇虎科技有限公司 Web平台部 高级技术经理', '赵文博，目前是360公司奇舞团资深前端工程师，高级技术经理，360TC前端技术委员会常务委员，优秀前端技术培训讲师，曾在清华大学《Web前端技术实训》课程中担任前端课程讲师。', '/mediafiles/2024/12/06/b90f5b344dc466d8636797db6d33efb7.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (40, 1232141425, '武永卫', '清华大学 计算机科学与技术系 教授', '清华大学计算机科学与技术系教授。主要从事并行与分布式系统方面的研究，在IEEE ToC、IEEE TPDS、ACM FSE、ACM HPDC、USENIX ATC等期刊和国际会议上发表论文100余篇，其中SCI检索论文40篇；承担了863项目、97课题3、国家自然科学基金重点、欧盟FP6、中法国际合作基金、日本大川基金、Intel、HP等项目；曾获2007年教育部科技进步一等奖，2008年国家科技进步二等奖，2011年中创软件人才奖。', '/mediafiles/2024/12/06/ed9525b88163efcd81cd24a7cbb96d3d.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (41, 1232141425, '姚文辉', '阿里云', '姚文辉，2009年加入阿里巴巴，从事阿里巴巴自主研发的云计算平台-飞天分布式操作系统中的分布式存储系统-盘古，阿里云高级专家。从事阿里云飞天分布式存储系统研发。', '/mediafiles/2024/12/06/3b9cd60b75cfa8b54f34d578acb474e2.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (42, 1232141425, '陶阳宇', '阿里云', '阿里云高级专家。阿里云飞天分布式调度系统研发。毕业于中科大电子专业，博士学历，15年机器学习、大数据、云计算相关领域经验，曾在微软MSRA、阿里云从事大规模分布式系统研发，现任腾讯TEG机器学习平台部总监，负责腾讯太极MLOps机器学习平台的研发，支持海量数据、万卡大规模GPU集群的模型训练、推理部署，研发的Angel系列AI框架AngelGraph、AngelRec、AngelPTM等支持了腾讯广告、视频推荐、金融风控、AIGC大模型等多个应用场景，大幅提升AI落地效率，降低资源成本。曾获中国电子学会科技进步奖特等奖，清华大学、北航研究生客座讲师，在NIPS/VLDB/SIGMOD等国际学术会议发表多篇论文。', '/mediafiles/2024/12/06/a2ab7506286ee54bcb11b72b8ca04dd1.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (43, 1232141425, '黄维通', '清华大学 计算机科学与技术系 教授', '黄维通，博士，清华大学计算机系教授。《Visual C++面向对象与可视化程序设计》（上，下）课程主讲教师和负责人。曾获全国宝钢优秀教师奖、教育部优秀教学成果奖、国家级精品课程奖、教育部优秀教 材二等奖，部级科技进步二、三等奖、北京市两项精品教材奖、清华大学青年教师教学优秀奖、清华大学优秀教学成果一等奖。', '/mediafiles/2024/12/06/47beacf7346cee49d57e94136b6d7b9d.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (44, 1232141425, '袁华', '华南理工大学 计算机科学与工程学院 教授', '袁华，博士，华南理工大学教授，是慕课课程《计算机网络》的主讲教师；主要承担《计算机网络》本科课程和研究生《高级计算机网络》课程的教学任务，在教学一线积累了丰富的经验；连年获得华南理工大学本科优秀教学奖励和研究生优秀教学奖励；并获2017年度思科网院“最美教师”荣誉称号。', '/mediafiles/2024/12/06/426f5545f588226f9492a649c7fed4e7.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (45, 1232141425, '杜广龙', '华南理工大学 计算机科学与工程学院 教授', '杜广龙：博士，教授。《计算机网络》课程SPOC践行者。主持国家自然科学基金项目一项，省部级项目三项，CCF-腾讯犀牛鸟创意基金一项，参与多项863科研项目。申请发明专利20余项，其中5项发明专利已授权；发表期刊论文50余篇，其中被SCI收录20余篇（包括4篇IEEE Trans一区Top期刊论文，5篇二区期刊论文）、SCI他引100余次。', '/mediafiles/2024/12/06/0a3902a739f26a0423e916ab415de726.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (46, 1232141425, '张凌', '华南理工大学 计算机科学与工程学院 教授', '张凌，教授，博导，《计算机网络》课程内容指导。以主要成员参加中国第一个国家级互联网（CERNET）的研发建设，牵头创建广东省第一个互联网——广东省教育科研计算机网（GDERNET）。任国家科技部“十五”863计划信息技术领域通信技术主题专家、国家发改委“中国下一代互联网CNGI”重大专项专家；创建学校信息网络工程研究中心、软件学院；历任华南理工大学电子与通信工程系主任、电子与信息学院副院长、计算机科学与工程学院院长。', '/mediafiles/2024/12/06/f91cfa3020dc364fdd1be3b7ff0f347c.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (47, 1232141425, '小程序慕课讲师', '中国高校微信应用教育联盟', '“微信小程序”系列课程为中国高校微信应用教育联盟推出的小程序开发系列课程，由资深前端工程师主讲，微信团队担任技术顾问。', '/mediafiles/2024/12/06/2ad90bd1f40fc1fbcc559c2cbbe22984.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (48, 1232141425, '张悠慧', '清华大学 计算机科学与技术系 教授', '张悠慧，博士，教授，博士生导师。2006年赴美国加州大学伯克利分校访问一年。国家级精品课“汇编语言程序设计”课程负责人。主讲《汇编语言程序设计》，《计算机组成与系统结构》等。研究方向为计算机系统结构、微处理器体系结构与系统虚拟化技术。获得国家科技进步二等奖、教育部科技进步一等奖、电子学会科学技术一等奖各一项。', '/mediafiles/2024/12/06/e9a2121fd48496917c4280068a45827e.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (49, 1232141425, '翟季冬', '清华大学 计算机科学与技术系 副教授', '翟季冬，博士，助理研究员。主要研究领域为大规模并行程序性能分析和优化，高性能计算机系统性能评测。在并行计算领域的重要期刊和学术会议发表论文多篇，获2010年中国计算机学会优秀博士学位论文。获中国电子学会电子信息科技一等奖，教育部科技进步一等奖，2009年西贝尔学者。', '/mediafiles/2024/12/06/54e2d0f3e4b052ef4a098c29363569de.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (50, 1232141425, '罗玫', '清华大学 经济管理学院 博士生导师，数字金融资产研究中心主任', '清华大学经济管理学院博士生导师，清华大学经济管理学院数字金融资产研究中心主任。获得清华大学经济管理学院学士学位，美国加州伯克利大学Haas商学院博士学位。在清华大学主要讲授课程为区块链和加密数字货币，财务分析和证券投资，获得清华大学教学优秀者前5%，清华大学经管学院教学优秀奖。研究领域主要是证券投资和财务会计，区块链和加密数字货币。学术成果被美国华尔街日报等媒体报道，在Review of Accounting Studies，《会计研究》，《金融研究》等国际国内顶级期刊发表了多篇论文，多次主持国家自然科学基金项目。与数字金融和区块链领域专家共同撰写权威专著《数字货币-领导干部读本》，《中国区块链应用发展报告2019》，和学术期刊论文等。受聘为人民创投区块链研究院专家委员，中国通信学会区块链委员会首届委员。受贵阳数博会、俄罗斯央行金融创新年会等会议邀请发表区块链和数字货币的演讲，接受新华社、中央台、人民网、北京电视台等各大媒体专访关于区块链的发展。曾在境内A股、香港H股和美国Nasdaq上市公司担任独立董事。', '/mediafiles/2024/12/06/f136476adfe159f4b6123375642f311a.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (51, 1232141425, '乔林', '清华大学 计算机科学与技术系 副教授', '清华大学计算机系副教授，工学博士。国家级教学团队骨干成员，曾获清华大学青年教师教学基本功比赛一等奖，清华大学青年教师教学优秀奖，出版教材和著作二十余部。主要研究兴趣有多核处理器系统结构、片上网络、无线传感器网络等，在国内外刊物和会议上发表论文多篇，主持和参与973、863、国家自然科学基金、重大科技专项等项目多项。', '/mediafiles/2024/12/06/d7be3160aac13ced465fc718ff00b2ef.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (52, 1232141425, '何源', '清华大学 软件学院 副教授', '何源，清华大学软件学院长聘副教授、博导，中国计算机学会杰出会员、物联网专委会常委，ACM SIGBED China常委，中国自动化学会工业物联网技术与应用专委会委员。在清华大学讲授《嵌入式系统》、《网络测量与分析技术》、《组合数学》、《计算机网络与体系结构》、《网络系统》等本科生和研究生课程。  研究领域涉及物联网、无线网络、移动和普适计算等。担任ACM TIOT、IEEE IoT Journal、JCST、《计算机研究与发展》等期刊编委，SECON 2022、EWSN 2019、DCOSS 2018等国际会议程序委员会主席，CPS-IoT Week研讨会主席，以及SenSys、IPSN、INFOCOM、WWW等国际会议的程序委员会委员，获得中国计算机学会自然科学二等奖、SenSys 2023时间检验大奖和SenSys 2022等多个学术会议的最佳论文奖。', '/mediafiles/2024/12/06/cb944f48a5ffba23ab07ec808bac9e8f.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (53, 1232141425, '张佳', '清华大学 软件学院 博士生', '课程助教', '/mediafiles/2024/12/06/20f3227258d5837b507be6267c54f928.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (54, 1232141425, '张家成', '清华大学 软件学院 硕士生', '课程助教', '/mediafiles/2024/12/06/eb8a80886a212c4ad911b44d387658bf.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (55, 1232141425, '马钦', '中国农业大学 信息与电气工程学院计算机系 副教授', '博士，硕士生导师，中国农业大学信息与电气工程学院计算机系教学主任、副教授，主要研究方向计算机视觉与虚拟现实技术、表型测试技术、种业信息化。主讲程《人工智能》、《数据结构》、《面向对象程序设计》和《大学计算机基础》等课程。主持《大学生实践创新训练方法及运行机制研究》等教改项目，获北京市高等教育教学成果奖1次。', '/mediafiles/2024/12/06/8bd29f2e34fdc2e4db68f8fb98734f4f.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (56, 1232141425, '喻梅', '天津大学 智能与计算学部 教授', '天津大学智能与计算学部教授，博士生导师。长期从事本科生、研究生课堂一线教学，坚持“立德树人”，治学严谨，教学经验丰富。 主要研究方向为数据挖掘、知识图谱和教育技术等。', '/mediafiles/2024/12/06/4aa18265a77055c26af183ed6d83bc7e.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (57, 1232141425, '徐天一', '天津大学 智能与计算学部 高级工程师', '长期承担数据挖掘课程教学与教改任务，面向国家新工科人才培养，秉持三全育人、五育并举理念，以培养学生创新实践能力为核心，从德育品质、专业知识、实践能力、创新思维四个维度出发，开展教学改革，主持及参与教改项目15项，指导多项学科竞赛并获得奖项。', '/mediafiles/2024/12/06/568e51446d04542d1dd84ae1edbba866.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (58, 1232141425, '于瑞国', '天津大学 智能与计算学部 教授', '天津大学智能与计算学部教授、博士生导师，信息与网络中心主任。重点研究人工智能在医疗影像、网络安全中的应用、领域知识图谱等方向。', '/mediafiles/2024/12/06/71c952ca6cb8e676ea87b91af5e71fff.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (59, 1232141425, '卫春芳', '湖北大学 计算机与信息工程学院 副教授', '卫春芳，硕士，湖北大学计信学院副教授，慕课《大学计算机基础》主讲教师和负责人，在学堂在线和优课在线上线。主编了4本普通高等教育“十二五/十三五”规划教材，《大学计算机基础教程》、《C语言程序设计》、《大学计算机基础》、《大学计算机基础简明教程》，有科学出版社先后出版。', '/mediafiles/2024/12/06/61d2476f96609971f6d57dde0bec9c4d.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (60, 1232141425, '周志华', '南京大学 教授', '周志华教授是南京大学副校长，国际人工智能联合会理事会主席、ACM、AAAI、IEEE等主流国际学术组织的Fellow，曾获国家自然科学二等奖2项、国家级教学成果一等奖、IEEE计算机学会Edward J. McCluskey技术成就奖、首届CCF-ACM人工智能奖、南京大学卓越教学奖等。', '/mediafiles/2024/12/06/96a8bdbd5bf857a2ed1380c8c363e156.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (61, 1232141425, '许斌', '清华大学 计算机科学与技术系 研究员', '许斌，清华大学计算机科学与技术系研究员，博士生导师。中国计算机学会理事、杰出会员、计算机应用专委会主任，互联网教育智能技术及应用国家工程实验室的知识建模与分析实验室主任，IEEE基础教育知识图谱标准工作组主席。主要从事知识图谱、大模型和数据挖掘方面的研究，主持国家863课题“面向基础教育的海量知识库建设与构建关键技术及系统”等多个国家项目，在AAAI/ACL/TKDE等高水平学术会议与期刊上发表了近百篇论文。曾任中国计算机学会第38届中国计算机应用大会主席，中国科协青年科学家论坛执行主席。先后获得2020年国家科技进步二等奖、2017年北京市科技进步一等奖、2013年中国人工智能学会科技进步一等奖等多个科研奖项。     许斌于2005年被美国SUN公司（Java语言发明单位）评为全球一百名Java Champion之一，中国大陆仅此一位。2002年至今，每年面向清华大学计算机系本科生开设专业课“Java程序设计与训练(30240332)”，年均选课人数约200人，自2016年起在学堂在线开设“Java程序设计进阶”课程。先后获得北京市高等教育教学成果二等奖、北京市高等教育精品教材奖、清华大学青年教师教学大赛一等奖、清华大学教学成果一等奖等奖项。     2023年，许斌老师开设的“Java程序设计进阶”课程入选教育部第二批国家级一流本科课程。', '/mediafiles/2024/12/06/583f99ca791f6b5f3dfa74f5f3020206.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (62, 1232141425, '袁春', '清华大学 深圳国际研究生院 教授', '清华大学博士生导师，教授，清华大学－香港中文大学媒体科学、技术与系统联合研究中心常委副主任，清华大学深圳研究生院计算机应用技术实验室主任，中国计算机协会高级会员，多媒体专委会委员。长期从事机器学习，计算机视觉，多媒体技术等方面的研究。承担清华大学深圳研究生院的大数据方向的研究生重点课程：“大数据机器学习”，“大数据分析”，以及“计算机视觉”的授课。', '/mediafiles/2024/12/06/b1c699c30fc5ab5a7bbcaab88ac42261.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (63, 1232141425, '黄震春', '清华大学 计算机科学与技术系 副研究员', '黄震春，清华大学计算机科学与技术系副研究员。2002年获得博士学位并留校任教，主要从事分布式计算、并行计算和空间信息系统方面的研究工作，曾主讲“面向对象的程序设计”、“微计算机技术”、“数据库技术及应用”等多门计算机专业基础和专业课程。', '/mediafiles/2024/12/06/4be80e95f8886c4254512da11ead38ff.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (64, 1232141425, '许志良', '深圳信息职业技术学院 电子与通信学院 教授', '许志良，博士、教授，广东省“特支计划”教学名师，广深省软件技术专业高职专业领军人才，编写国家“十二五”规划教材2部，主持校级课程2门，指导学生竞赛荣获省级一等奖以上6项，主讲《Python程序设计基础》3轮，出版《Python程序设计》教材1部，是课程主讲教师。', '/mediafiles/2024/12/06/5ba1227b86e0b02cca3f95fe2e195fc8.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (65, 1232141425, '陈莉君', '西安邮电大学 计算机学院 教授', '陈莉君，教授，任教于西安邮电大学，自1999年以来致力于推动Linux在中国的发展，深入研究Linux内核相关理论以及技术，跟踪Linux内核发展动向，针对Linux内核版本的不断演化，连续编写和翻译了十多部相关专著、译著及教材。其中专著《Linux操作系统内核分析》曾被指定为中科院考博参考书。翻译的《深入理解Linux内核》和《Linux内核设计与实现》（各三版）是Linux内核爱好者的必读书。撰写的《Linux操作系统原理与应用》被列为国家“十一五”规划教材，并获陕西省优秀教材二等奖。带领的西邮Linux兴趣小组成功举办了十多届“国际自由软件日”活动。在多年的教学和科研中，培养了一批批活跃在Linux第一线的科技人员和优秀学生。2014年被评为陕西省教学名师，2015年获得陕西省师德先进的荣誉称号，2012年和2018年被中国开源联盟授予“开源杰出贡献奖”。', '/mediafiles/2024/12/06/9f276b2c04e9739d6741993b68ddda59.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (66, 1232141425, '谢宝友', '西安邮电大学 软件事业部 软件工程师', '谢宝友，阿里巴巴系统软件事业部内核软件工程师。他以奇特的经历进入IT行业，在编程一线工作已经有20年时间，其中最近10年时间工作于Linux操作系统内核。在中兴通讯操作系统产品部工作期间，他作为技术总工参与的电信级嵌入式实时操作系统,获得了行业最高奖----中国工业大奖。同时，他也是中国开源软件推进联盟专家委员会委员，Linux ZTE架构的Maintainer，向Linux提交了4000多行代码。他翻译的《深入理解并行编程》一书已经于2017年出版。该书原作者PaulE.McKeney是IBM Linux中心领导者、Linux RCU Maintainer。 目前，他在维护阿里集团数以万计生产服务器稳定性的同时，也在利用业余时间继续编写DIM-SUM操作系统，并根据此操作系统编写《国产自研操作系统设计与实现》一书。', '/mediafiles/2024/12/06/61f56a1db2290f6734f8dfa1e252b821.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (67, 1232141425, '刘霞林', '西安邮电大学 计算机学院 讲师', '刘霞林，西安邮电大学计算机学院软工系讲师，在读博士。多年来教授《操作系统》、《Linux操作系统原理与应用》、《Linux操作系统》等课程，长期深入研究Linux内核、从事Linux内核级开发。曾参与编写《Linux内核编程》第一版、第二版，发表多篇Linux开发的学术文章。近年来从事云计算数据中心能耗优化的科学研究，参加多个有关云计算、复杂网络、信息安全方向的科研项目并发表相关文章。', '/mediafiles/2024/12/06/8a753082529f7d63f577f5575d737818.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (68, 1232141425, '洪小文', 'Microsoft', '洪小文博士现任微软公司资深副总裁，微软亚太研发集团主席兼微软亚洲研究院院长，全面负责微软在亚太地区的科研及产品开发工作，以及与中国及亚太地区学术界的合作。洪小文博士是电气电子工程师学会院士（IEEE Fellow），微软杰出首席科学家和国际公认的语音识别专家。洪博士现任《美国计算机协会通讯》(Communications of the ACM) 的编委，并在国际著名学术刊物及大会上发表过百余篇学术论文。他参与合著的《语音技术处理》（Spoken Language Processing）一书被全世界多所大学采用为语音技术教学课本。另外，洪博士在多个技术领域拥有36项专利发明。洪小文博士已在微软公司工作了20年。他于2004年加入微软亚洲研究院担任副院长，2007年升任微软亚洲研究院院长，2014年兼任微软亚太研发集团主席。与此同时，洪博士于2005年至2007年间创立并领导了搜索技术中心（STC），该中心负责微软搜索产品（必应）在中国的开发工作。在加入微软亚洲研究院之前，洪博士是微软公司自然交互服务部门的创始成员和架构师，除了全面负责屡获殊荣的微软语音服务器产品、自然用户界面平台以及微软协助平台的架构及技术工作，他还负责管理和交付统计学习技术和高级搜索。洪博士于1995年加入微软研究院美国总部任高级研究员，并为微软的SAPI和语音引擎技术做出了突出贡献。此前，洪博士曾任职于苹果公司，带领团队研发出了苹果中文译写器。洪小文博士毕业于台湾大学，获电机工程学士学位，之后在卡内基梅隆大学深造，先后获得计算机硕士及博士学位。', '/mediafiles/2024/12/06/5e5dd862f1e9be6830db9debd33fe23f.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (69, 1232141425, '宋睿华', 'Microsoft', '宋睿华博士现任微软亚洲研究院主管研究员，从事搜索和数据挖掘方面的研究。她的研究兴趣包括互联网搜索与评价、数据抽取和挖掘。近期特别对用户建模、社交网络挖掘和智能手机挖掘感兴趣。宋睿华博士在国内外顶级会议和杂志上发表论文30余篇，并曾任SIGIR、SIGKDD、CIKM、WWW、WSDM等国际会议和TKDE、TOIS、Information Retrieval等国际杂志的评审委员。她是EVIA2013和2014的主席。她还提出并组织了NTCIR Intent tasks。宋睿华于2000年和2003年在清华计算接科学与技术系获得学士和硕士学位。之后，加入微软亚洲研究院工作至今。工作的同时，她于2010年取得了上海交通大学计算机系博士学位。', '/mediafiles/2024/12/06/d6fa9a3518e018d7197eae1fc07283b2.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (70, 1232141425, '谢幸', 'Microsoft', '谢幸博士于2001年7月加入微软亚洲研究院，现任高级研究员，并任中国科技大学兼职博士生导师。他分别于1996年和2001年在中国科技大学获得计算机软件专业学士和博士学位。目前，他的团队在空间数据挖掘、位置服务、社交网络和普适计算等领域展开创新性的研究。他在国际会议和学术期刊上发表了160余篇学术论文，并拥有50余项专利。他是ACM、IEEE高级会员和计算机学会杰出会员，多次担任WWW、UbiComp、ACM SIGSPATIAL、KDD等国际会议程序委员会委员。他是ACM Transactions on Intelligent Systems and Technology、Springer GeoInformatica、Elsevier Pervasive and Mobile Computing、Journal of Location Based Services和中国计算机学会通讯等杂志编委。他参与创立了ACM SIGSPATIAL中国分会，并曾担任UbiComp 2011，PCC 2012和UIC 2015等会议程序委员会共同主席。', '/mediafiles/2024/12/06/2c7c1020d1053947dcc126b928f788fd.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (71, 1232141425, '薛静锋', '北京理工大学 计算机学院', '薛静锋，男，1975年12月生，教授，博士生导师。1998年7月毕业于北京理工大学计算机科学工程系信息科学专业，获学士学位，2003年4月毕业于北京理工大学计算机科学工程系计算机应用技术专业（硕博连读），获博士学位，后留校工作。2005年11月至2006年11月受国家留学基金委资助，在美国加州大学圣迭戈分校（UCSD）做访问学者。2005年受聘副教授，2012年受聘教授。现任北京理工大学计算机学院副院长，软件评测中心主任。', '/mediafiles/2024/12/06/b5501bacc01b974cc1e9d1da12cbaab0.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (72, 1232141425, '纪平', '美国纽约市立大学 博士生院 教授', '纪平博士于1998年取得清华大学计算机科学与技术本科学位，2003年取得美国麻省大学阿默斯特分校计算机科学博士学位，并从2003年开始于美国纽约市立大学（CUNY）博士生院和约翰金分校的计算机系和数学系任教至今；现任正教授、博士生导师、CUNY博士生院计算机系副系主任、数据科学硕士学位主任。纪平博士多年以来一直从事计算机网络的理论和应用研究，她的研究方向包括各类计算机网络（包括有线网、无线网、物联网）的协议、算法设计，性能分析，数据分析，安全及取证等等。', '/mediafiles/2024/12/06/af1ed244eb793219248a1e0313b6692d.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (73, 1232141425, '郝兴伟', '山东大学 计算机科学与技术学院 教授', '山东大学计算机科学与技术学院教授，博士。兼任教育部高等学校大学计算机课程教学指导委员会委员，中国计算机学会（CCF）高级会员，第七届山东省教学名师。长期从事计算机通识教育教学、科研和软件研发工作。在科研领域，参与多项国家自然科学基金项目，主要研究领域为E-learning与知识管理，Web挖掘，大数据管理等。主持开发了“面向过程管理的计算机基础课程网络教学平台”、“基于网络的论文评审与会议综合管理系统”、“高等学校本科教学基本状态数据统计平台”、“山东大学数字化共青团”等Web应用系统。在教学领域，获国家级教学成果二等奖一项，省级教学成果一等奖一项，三等奖两项。编写教材十多部，五部教材获“十一五”国家级规划教材建设立项，两部教材获“十二五”国家级规划教材建设立项。主持的“大学计算机基础”、“计算机网络技术及应用”课程分别于2008年、2010年获国家级精品课程称号，“计算机网络技术及应用”于2013年入选国家精品资源共享课程。', '/mediafiles/2024/12/06/da39f7ba2d73a9c8a0fc7f39c82ae9ba.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (74, 1232141425, '杨居义', '绵阳职业技术学院 计算机科学系 教授', '杨居义，男，中共党员，教授、高级工程师，曾任学校教学督导室主任、教学指导委员会委员、信息化大赛、微课大赛、课堂信息化教学指导专家、教学名师、黄炎培省级技能专家。主要研究方向：嵌入式系统与设计、物联网工程应用。长期从事教学工作，主要担任《单片机原理及应用》、《单片机原理与接口技术》、《嵌入式系统与设计》、《微机原理与接口技术》、《计算机网络技术》等课程的教学工作。是省级精品在线开放课程《单片机原理及应用》负责人，是2020国家精品在线开放课程、2022职业教育国家在线精品课程《单片机原理及应用》负责人，是省级本科一流课程《单片机原理与接口技术》负责人，是省级本科课程思政示范课《单片机原理与接口技术》负责人，是省级高职课程思政示范课《计算机网络技术》负责人。开发微课260多个，学堂在线上建设有《单片机原理及应用》、《计算机文化基础》2门课程。在中文核心期刊《微电子学与计算机》、《计算机工程》、《计算机应用与软件》、《计算机工程与科学》发表论文8篇，在国家级刊物发表论文30余篇。主编出版《单片机原理及应用》、《STM32嵌入式原理及应用》、《微机原理与接口技术》等教材21部（新形态立体化微课教材2部，完成980万字编写工作）。主持完成省市教学改革项目5项、学校教学改革项目10项，荣获省民办协会教学成果二等奖一项、学校教学改革成果奖二等奖、三等奖各一项、教育部在线学习中心 “智慧之星”称号、全国高校（高职高专）微课教学比赛四川省赛区一等奖一项、全国蓝桥杯软件技能比赛优秀指导教师3次、学校“优秀毕业设计（论文）指导教师” 3次、获学校教学质量优秀奖8次，6次被学院评为“优秀共产党员”。', '/mediafiles/2024/12/06/3a0d5ab3659ee384e8eb84fe0338e93b.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (75, 1232141425, '蒲敏', '绵阳职业技术学院 计算机科学系 讲师', '蒲敏，女，讲师，电子科大电子与通信工程工程硕士。主要承担计算机文化基础，单片机原理及应用教学工作。副主编《计算机文化基础》新形态-立体化教材一部（特色教材），参编数十本高职高专教材。在《低温物理学报》等刊物发表论文5篇(中文核心1篇，科技核心1篇)。几年来参与了学堂在线MOOCs《单片机原理及应用》课程、2014年省级《单片机原理及应用》精品资源共享课程、2017年省级精品在线开放课程《单片机原理及应用》、微知库、智慧职教MOOCs《计算机应用基础》课程、2013年学院《计算机文化基础》精品资源共享课程、2017年学院精品在线开放课程《计算机文化基础》建设工作。主持完成院级科研课题1项，横项课题1项；参与教改项目3项，参与了优秀教学团队建设工作，2017年《计算机文化基础微课群》应用获得教学成果三等奖。', '/mediafiles/2024/12/06/adf267d7a0cf140ee20b854bfd72c843.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (76, 1232141425, '王颖丽', '绵阳职业技术学院 计算机科学系 副教授', '王颖丽，女，副教授，电子科大电子与通信工程工程硕士，主要担任计算机文化基础，单片机原理及应用课程教学任务。副主编《计算机文化基础》新形态-立体化教材一部，参编3本高职高专教材。发表论文8篇。参与了《计算机文化基础》精品资源共享课程、学院精品在线开放课程《计算机文化基础》、学堂在线MOOCs《单片机原理及应用》课程、2017年省级精品在线开放课程《单片机原理及应用》、微知库、智慧职教MOOCs《计算机应用基础》课程、2013年学院《计算机文化基础》精品资源共享课程建设工作。主持完成院级科研课题3项，横项课题1项；参与教改项目2项，2017年《计算机文化基础微课群》应用获得教学成果三等奖。', '/mediafiles/2024/12/06/3c499aada149d3273a0705ed314f5553.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (77, 1232141425, '李敏', '南开大学 计算机学院 副教授', '李敏，博士，南开大学计算机学院副教授，南开大学《大学计算机基础》课程负责人，主讲《人工智能与创新》、《大学计算机基础》、《C++程序设计基础》、《区块链原理与应用基础》等课程，科研方向为密码学应用及隐私保护。获天津市线上线下混合式一流本科建设课程1门、线上一流本科建设课程1门；获天津市教学成果奖特等奖2项、一等奖1项；南开大学教学成果奖一等奖2项、二等奖3项；南开大学教学创新大赛一等奖；发表论文10余篇；主持省部级、校级教学改革项目13余项；主编教材7部，参编教材9部。', '/mediafiles/2024/12/06/2f55ccf456a72e1477e685ec92da7394.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (78, 1232141425, '蔡庆琼', '南开大学 计算机学院 副教授', '蔡庆琼，博士，南开大学计算机学院教师，主讲《计算机基础》《Python编程基础》《数据库技术与应用》等课程，主讲的课程获教育部思政示范课程，入选课程思政教学名师和教学团队，主持国家自然科学基金项目、天津市自然科学基金项目，参与科技部青年科学家项目，同时参与教学改革项目十余项，发表论文十余篇，参与编写《大学计算机》《智能计算技术与应用基础》《大学计算机应用经典案例》等多本教材。', '/mediafiles/2024/12/06/836b4a8452f5e1defddf7724a1f2714d.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (79, 1232141425, '高裴裴', '南开大学 计算机学院 副教授', '高裴裴，博士，南开大学计算机学院副教授，南开大学教学名师，伦敦布鲁内尔大学访问学者。国家级一流课程负责人、天津市级一流课程负责人；获国家级教学成果二等奖；天津市教学成果特等奖2项、一等奖1项；全国高校教师教学创新大赛全国二等奖、天津市一等奖；全国高校混合式教学设计创新大赛一等奖；西浦全国大学教学创新大赛特等奖等。主持多项省部级、国家一级学会教改项目，发表论文20余篇，编写教材15部，指导学生参加国家级、省部级计算机竞赛获一、二、三等奖38项。', '/mediafiles/2024/12/06/622b0fc5b2f467fdf2565f2384cb6b61.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (80, 1232141425, '康介恢', '南开大学 计算机学院 实验师', '硕士，实验师。2012年本科毕业于天津大学软件工程专业。2015年研究生毕业于南开大学机器智能研究所，研究方向为软件工程和软件测试。现任南开大学《数据库技术与程序设计》、《大学计算机基础》等课程教师，承担或参与省部级、校级教改项目十余项。', '/mediafiles/2024/12/06/b3c7f17f1516ed6acc90f0b7c7ac9ab2.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (81, 1232141425, '路明晓', '南开大学 计算机学院 实验师', '路明晓，硕士，实验师。2014年本科毕业于西安交通大学自动化专业。2017年研究生毕业于中国科学院自动化研究所，研究方向为无线传感器网络与机器人导航。现任南开大学《数据库技术与程序设计》、《大学计算机基础》、《C++程序设计基础》实验课教师，主持或参与省部级、校级教改项目十余项，发表高水平教改论文十余篇。', '/mediafiles/2024/12/06/e23c5cc83f598f88e981214564131cc2.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (82, 1232141425, '曾鸣', '清华大学 工程物理系 副教授', '曾鸣，博士，清华大学工程物理系长聘副教授，主要研究领域为核电子学与嵌入式实时系统，中国核学会核电子学与探测技术分会副秘书长、理事，长期参与高能物理国际合作研究，是欧洲核子中心LHCb实验国际合作组成员、国家十三五重大科技基础设施 “极深地下极低辐射本底前沿物理实验设施”项目组成员，曾参与承担多项国家基金委重点项目、科技部重点研发计划研究工作，发起和指导了“天格计划”学生团队伽马暴探测卫星网项目，曾获北京市高等教育教学成果一等奖、清华大学青年教师教学优秀奖，主讲国家精品在线开放课程“ARM微控制器与嵌入式系统”。', '/mediafiles/2024/12/06/eb33c0c5cf81f202879b06457fa762b7.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (83, 1232141425, '薛涛', '清华大学 工程物理系 副教授', '薛涛 清华大学工程物理系 副教授，研究领域：面向粒子物理等领域的高速波形数字化、读出电子学、数字滤波和数据采集系统及其关键技术。', '/mediafiles/2024/12/06/2902b5c91b4198dd157f5db344ae6ba2.png', '2024-12-03 17:22:19');
INSERT INTO `teacher` VALUES (84, 1232141425, '龚光华', '清华大学 工程物理系 副教授', '龚光华 清华大学工程物理系 副教授，1999-2005年清华大学 工程物理专业 博士，教学科研领域:核电子学与数据采集，系统控制与应用。', '/mediafiles/2024/12/06/0639870f8dc872341a97ecf131dc1ce2.png', '2024-12-03 17:22:19');

-- ----------------------------
-- Table structure for teachplan
-- ----------------------------
DROP TABLE IF EXISTS `teachplan`;
CREATE TABLE `teachplan`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pname` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程计划名称',
  `parentid` bigint NOT NULL COMMENT '课程计划父级Id',
  `grade` smallint NOT NULL COMMENT '层级，分为1、2、3级',
  `media_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程类型:1视频、2文档',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始直播时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '直播结束时间',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '章节及课程时介绍',
  `timelength` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时长，单位时:分:秒',
  `orderby` int NULL DEFAULT 0 COMMENT '排序字段',
  `course_id` bigint NOT NULL COMMENT '课程标识',
  `course_pub_id` bigint NULL DEFAULT NULL COMMENT '课程发布标识',
  `status` int NOT NULL DEFAULT 1 COMMENT '状态（1正常  0删除）',
  `is_preview` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否支持试学或预览（试看）',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `change_date` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程计划' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teachplan
-- ----------------------------
INSERT INTO `teachplan` VALUES (1, '第1章 绪论', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (2, '导学', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (3, '计算机系统简介', 1, 2, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (4, '计算机语言和程序设计方法的发展', 1, 2, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (5, '第2章 C++简单程序设计（一）', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (6, '导学', 5, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (7, 'C++语言概述', 5, 2, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (8, '基本数据类型、常量、变量', 5, 2, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (9, '第2章 C++简单程序设计（二）', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (10, '数据的输入和输出', 9, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (11, '选择结构', 9, 2, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (12, '循环结构', 9, 2, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (13, '第零章 课程相关信息', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (14, '选课之前', 13, 2, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (15, '考核方式', 13, 2, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (16, 'OJ系统说明', 13, 2, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (17, '第一章 绪论', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (18, 'A. 计算', 17, 2, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (19, 'B. 计算模型', 17, 2, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (20, 'C. 渐进复杂度', 17, 2, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (21, '第二章 向量', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (22, 'A. 抽象数据类型', 21, 2, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (23, 'B. 可扩充向量', 21, 2, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (24, 'C. 无序向量', 21, 2, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (25, '第零章 课程相关信息', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (26, '选课之前', 25, 2, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (27, '考核方式', 25, 2, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (28, 'OJ系统说明', 25, 2, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (29, '第八章 二叉搜索树', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (30, 'A. 概述', 29, 2, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (31, 'B1. BST：查找', 29, 2, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (32, 'B2. BST：插入', 29, 2, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (33, '第十章 高级搜索树', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (34, 'A1. 伸展树：逐层伸展', 33, 2, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (35, 'A2. 伸展树：双层伸展', 33, 2, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (36, 'A3. 伸展树：算法实现', 33, 2, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (37, '第零讲 在线教学环境准备', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (38, '0.1 Piazza讨论区', 37, 2, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (39, '0.2 在线实验平台', 37, 2, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (40, '0.2在线实验平台', 37, 2, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (41, '第一讲 操作系统概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (42, '1.1 课程概述', 41, 2, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (43, '1.2 教学安排', 41, 2, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (44, '1.3 什么是操作系统', 41, 2, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (45, '第二讲 实验零 操作系统实验环境准备', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (46, '2.1 前言和国内外现状', 45, 2, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (47, '2.2 OS实验目标', 45, 2, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (48, '2.3 8个OS实验概述', 45, 2, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (49, '第一章 Java语言基础知识', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (50, '1.0-导学', 49, 2, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (51, '1.1-Java与面向对象程序设计简介', 49, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (52, '1.2-基本数据类型与表达式', 49, 2, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (53, '第一章续-习题讲解视频', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (54, '1.0Java环境配置、Eclipse使用、Helloworld程序详解', 53, 2, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (55, '1.1Java数据类型', 53, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (56, '1.2Java数组', 53, 2, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (57, '第二章 类与对象', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (58, '2.0-导学', 57, 2, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (59, '2.1-面向对象方法的特性', 57, 2, NULL, NULL, NULL, NULL, NULL, 2, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (60, '2.2-1-类声明与对象创建', 57, 2, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (61, '先导语', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (62, '课程先导语', 61, 2, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (63, '第1讲 概论', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (64, '1.1 网络内涵', 63, 2, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (65, '1.2 互联网发展过程', 63, 2, NULL, NULL, NULL, NULL, NULL, 2, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (66, '1.3 交换方式', 63, 2, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (67, '第2讲 数据通信基础', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (68, '本讲内容简介', 67, 2, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (69, '2.1 数据传输系统', 67, 2, NULL, NULL, NULL, NULL, NULL, 2, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (70, '2.2 信号', 67, 2, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (71, 'Part I. Basics: Chapter 1.    Introduction（第I部分 基础：第1章 导论）', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (72, '1.1 Overview of Artificial Intelligence (人工智能概述)', 71, 2, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (73, '1.2 Foundations of Artificial Intelligence(人工智能基础)', 71, 2, NULL, NULL, NULL, NULL, NULL, 2, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (74, '1.3 History of Artificial Intelligence(人工智能历史)', 71, 2, NULL, NULL, NULL, NULL, NULL, 3, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (75, 'Part I. Basics: Chapter 2. Intelligent Agent（第I部分 基础：第2章 智能体）', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (76, '2.1 Approaches for Artificial Intelligence(人工智能研究途径)', 75, 2, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (77, '2.2 Rational Agents  (理性主体)', 75, 2, NULL, NULL, NULL, NULL, NULL, 2, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (78, '2.3 Task Environments  (任务环境）', 75, 2, NULL, NULL, NULL, NULL, NULL, 3, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (79, 'Part II. Searching: Chapter 3. Solving Problems by Search(第II部分 搜索：第3章 通过搜索求解问题）', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (80, '3.1 Problem Solving Agents（问题求解Agent）', 79, 2, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (81, '3.2 Example Problems（问题实例）', 79, 2, NULL, NULL, NULL, NULL, NULL, 2, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (82, '3.3 Searching for Solutions（通过搜索求解）', 79, 2, NULL, NULL, NULL, NULL, NULL, 3, 7, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (83, '第七章 继承与派生', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (84, '导学', 83, 2, NULL, NULL, NULL, NULL, NULL, 1, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (85, '继承的基本概念和语法', 83, 2, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (86, '继承方式', 83, 2, NULL, NULL, NULL, NULL, NULL, 3, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (87, '第八章 多态性', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (88, '导学', 87, 2, NULL, NULL, NULL, NULL, NULL, 1, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (89, '运算符重载', 87, 2, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (90, '虚函数', 87, 2, NULL, NULL, NULL, NULL, NULL, 3, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (91, '第九章 模板与群体数据', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (92, '导学', 91, 2, NULL, NULL, NULL, NULL, NULL, 1, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (93, '模板', 91, 2, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (94, '线性群体', 91, 2, NULL, NULL, NULL, NULL, NULL, 3, 8, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (95, '第0章 课前认知与体验', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (96, '0.1 C程序设计编程基本结构与实验方法', 95, 2, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (97, '0.2 本章知识要点自测练习', 95, 2, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (98, '第1章 计算机程序设计算法实现', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (99, '1.1  程序设计概述（1.1.1 程序设计语言、1.1.2 程序设计过程）', 98, 2, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (100, '1.2   程序设计算法与实现（程序设计算法与实现、例1.1案例实验与分析）', 98, 2, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (101, '1.3  计算机程序算法的表示（1.3.1 自然语言描述、1.3.2 程序流程图描述、1.3.3 N-S图描述、1.3.4 程序设计语言描述）', 98, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (102, '第2章 C程序设计结构组成与编译运行', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (103, '2.1  C语言程序设计概述(2.1.1 C语言程序设计的发展、2.1.2 C程序设计特点、2.1.3 C程序设计组成结构)', 102, 2, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (104, '2.2  C程序设计的编译与运行（2.2.1 编辑调试与编译运行步骤、2.2.2 常用编译运行环境）', 102, 2, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (105, '2.3 C语言程序设计语义规范（2.3.1 C语言程序的基本规范、例2-3案例实验与分析、2.3.2 C语言程序设计标识符、2.3.3 C语言的保留关键字）', 102, 2, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (106, '第1章 初识软件工程', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (107, '1.1 软件无处不在', 106, 2, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (108, '1.2 软件的本质特性', 106, 2, NULL, NULL, NULL, NULL, NULL, 2, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (109, '1.3 软件工程的产生与发展', 106, 2, NULL, NULL, NULL, NULL, NULL, 3, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (110, '第2章 编写高质量代码', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (111, '2.1 编程过程与规范', 110, 2, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (112, '2.2 良好的编程实践', 110, 2, NULL, NULL, NULL, NULL, NULL, 2, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (113, '2.3 Python集成开发环境', 110, 2, NULL, NULL, NULL, NULL, NULL, 3, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (114, '第3章 单元测试', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (115, '3.1 单元测试概述', 114, 2, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (116, '3.2 黑盒测试方法', 114, 2, NULL, NULL, NULL, NULL, NULL, 2, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (117, '3.3 白盒测试方法', 114, 2, NULL, NULL, NULL, NULL, NULL, 3, 10, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (118, '李国杰：面向大数据的数据科学', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (119, '完整讲座', 118, 2, NULL, NULL, NULL, NULL, NULL, 1, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (120, '吴甘沙：大数据分析师的卓越之道', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (121, '数据思维方式的改变', 120, 2, NULL, NULL, NULL, NULL, NULL, 1, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (122, '数据的假设与采集', 120, 2, NULL, NULL, NULL, NULL, NULL, 2, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (123, '数据的准备', 120, 2, NULL, NULL, NULL, NULL, NULL, 3, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (124, '董飞：硅谷公司的大数据实战分析', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (125, '个人介绍', 124, 2, NULL, NULL, NULL, NULL, NULL, 1, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (126, '硅谷热门公司', 124, 2, NULL, NULL, NULL, NULL, NULL, 2, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (127, '大数据简介', 124, 2, NULL, NULL, NULL, NULL, NULL, 3, 11, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (128, '第0章 Microsoft Office软件基本概念', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (129, '0-1 Microsoft Office的窗口布局与文件操作', 128, 2, NULL, NULL, NULL, NULL, NULL, 1, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (130, '第1章 如何操作Microsoft Word', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (131, '1-1 基本操作', 130, 2, NULL, NULL, NULL, NULL, NULL, 1, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (132, '1-2 字体格式设置', 130, 2, NULL, NULL, NULL, NULL, NULL, 2, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (133, '1-3 段落格式设置', 130, 2, NULL, NULL, NULL, NULL, NULL, 3, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (134, '第2章 如何操作Microsoft Excel', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (135, '2-1 基本概念与基本操作', 134, 2, NULL, NULL, NULL, NULL, NULL, 1, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (136, '2-2 行与列的操作', 134, 2, NULL, NULL, NULL, NULL, NULL, 2, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (137, '2-3 单元格的设置', 134, 2, NULL, NULL, NULL, NULL, NULL, 3, 12, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (138, 'C程序设计进阶', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (139, '进阶与基础', 138, 2, NULL, NULL, NULL, NULL, NULL, 1, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (140, '第10章 地址与指针变量——指针初步', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (141, '10.1 变量的内存地址与指针（10.1.1 指针变量定义、 10.1.2指针变量的赋值、 10.1.3 指针变量运算符及运算、 10.1.4 指针变量作函数参数）', 140, 2, NULL, NULL, NULL, NULL, NULL, 1, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (142, '第10章 地址与指针变量——指针与数组', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (143, '10.2 数组与地址指针（10.2.1 指向数组的指针变量、 10.2.2 指向数组元素的指针变量、10.2.3 数组名作函数参数、 10.2.4 指向数组的指针变量作函数参数、 10.2.5 多维数', 142, 2, NULL, NULL, NULL, NULL, NULL, 1, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (144, '10.3 字符串与指针变量(10.3.1 字符串处理方法、 10.3.2 字符串指针作函数参数)', 142, 2, NULL, NULL, NULL, NULL, NULL, 2, 13, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (145, '第1课：说在前面的话', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (146, '由一个短片引出......', 145, 2, NULL, NULL, NULL, NULL, NULL, 1, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (147, '梳理IT产业大脉络（上）', 145, 2, NULL, NULL, NULL, NULL, NULL, 2, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (148, '梳理IT产业大脉络（下）', 145, 2, NULL, NULL, NULL, NULL, NULL, 3, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (149, '第2课：揭开计算机的神秘面纱', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (150, '现代计算机为什么是电子数字的？', 149, 2, NULL, NULL, NULL, NULL, NULL, 1, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (151, '二进制与十进制有什么区别?', 149, 2, NULL, NULL, NULL, NULL, NULL, 2, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (152, '为什么莱布尼兹没有认识到二进制的重要性?', 149, 2, NULL, NULL, NULL, NULL, NULL, 3, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (153, '第3课：数字世界中形形色色的“数”', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (154, '数码相机是如何“计算”出一张数字照片？', 153, 2, NULL, NULL, NULL, NULL, NULL, 1, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (155, '认识图像数字化过程中的采样和量化', 153, 2, NULL, NULL, NULL, NULL, NULL, 2, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (156, '计算机是如何感知声音波形的？', 153, 2, NULL, NULL, NULL, NULL, NULL, 3, 14, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (157, '第一章概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (158, '1-1 计算机的诞生与发展', 157, 2, NULL, NULL, NULL, NULL, NULL, 1, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (159, '1-2 计算机的分类', 157, 2, NULL, NULL, NULL, NULL, NULL, 2, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (160, '1-3 计算机的应用领域', 157, 2, NULL, NULL, NULL, NULL, NULL, 3, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (161, '第二章 数据的表示与运算', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (162, '2-1 进位记数制', 161, 2, NULL, NULL, NULL, NULL, NULL, 1, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (163, '2-2  数制之间的相互转换', 161, 2, NULL, NULL, NULL, NULL, NULL, 2, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (164, '2-3  整数的机器数表示', 161, 2, NULL, NULL, NULL, NULL, NULL, 3, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (165, '第三章 计算机硬件', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (166, '3-1  CPU', 165, 2, NULL, NULL, NULL, NULL, NULL, 1, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (167, '3-2 存储器', 165, 2, NULL, NULL, NULL, NULL, NULL, 2, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (168, '3-3   外部设备', 165, 2, NULL, NULL, NULL, NULL, NULL, 3, 15, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (169, '第一章 编程初步', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (170, '1.1 基础知识', 169, 2, NULL, NULL, NULL, NULL, NULL, 1, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (171, '1.2 买菜问题', 169, 2, NULL, NULL, NULL, NULL, NULL, 2, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (172, '1.3 数学运算', 169, 2, NULL, NULL, NULL, NULL, NULL, 3, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (173, '第二章 变量与代数思维', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (174, '2.1 关于超级计算器的几点思考', 173, 2, NULL, NULL, NULL, NULL, NULL, 1, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (175, '2.2 电子秤模拟 — 背景介绍及需求分析', 173, 2, NULL, NULL, NULL, NULL, NULL, 2, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (176, '2.3 电子秤模拟 — 代码实现', 173, 2, NULL, NULL, NULL, NULL, NULL, 3, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (177, '第三章 逻辑推理与枚举解题', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (178, '3.1 谁做的好事——语义表示', 177, 2, NULL, NULL, NULL, NULL, NULL, 1, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (179, '3.2 谁做的好事——真假检查', 177, 2, NULL, NULL, NULL, NULL, NULL, 2, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (180, '3.3 谁做的好事——循环枚举', 177, 2, NULL, NULL, NULL, NULL, NULL, 3, 16, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (181, '1. 绪论', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 17, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (182, '授课视频', 181, 2, NULL, NULL, NULL, NULL, NULL, 1, 17, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (183, '2.云计算', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 17, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (184, '授课视频', 183, 2, NULL, NULL, NULL, NULL, NULL, 1, 17, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (185, '3.文件存储', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 17, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (186, '授课视频', 185, 2, NULL, NULL, NULL, NULL, NULL, 1, 17, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (187, '1  Introduction of Algorithm', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (188, '1.1 Introduction', 187, 2, NULL, NULL, NULL, NULL, NULL, 1, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (189, '1.2 A First Problem: Stable Matching', 187, 2, NULL, NULL, NULL, NULL, NULL, 2, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (190, '1.3 Gale-Shapley Algorithm', 187, 2, NULL, NULL, NULL, NULL, NULL, 3, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (191, '2  Basics of Algorithm Analysis', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (192, '2.1 Computational Tractability', 191, 2, NULL, NULL, NULL, NULL, NULL, 1, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (193, '2.2 Asymptotic Order of Growth', 191, 2, NULL, NULL, NULL, NULL, NULL, 2, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (194, '2.3 A Survey of Common Running Times', 191, 2, NULL, NULL, NULL, NULL, NULL, 3, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (195, '3  Graph', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (196, '3.1 Basic Definitions and Applications', 195, 2, NULL, NULL, NULL, NULL, NULL, 1, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (197, '3.2 Graph Traversal', 195, 2, NULL, NULL, NULL, NULL, NULL, 2, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (198, '3.3 Testing Bipartiteness', 195, 2, NULL, NULL, NULL, NULL, NULL, 3, 18, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (199, '漫谈组合数学', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (200, '什么是组合数学', 199, 2, NULL, NULL, NULL, NULL, NULL, 1, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (201, '最精巧的排列——幻方', 199, 2, NULL, NULL, NULL, NULL, NULL, 2, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (202, '苦难的羊皮纸卷', 199, 2, NULL, NULL, NULL, NULL, NULL, 3, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (203, '小乒乓球的组合之旅', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (204, '加减乘除来计数', 203, 2, NULL, NULL, NULL, NULL, NULL, 1, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (205, '排列还是组合', 203, 2, NULL, NULL, NULL, NULL, NULL, 2, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (206, '各种各样的排列', 203, 2, NULL, NULL, NULL, NULL, NULL, 3, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (207, '初识母函数', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (208, '母函数是函数的母亲吗', 207, 2, NULL, NULL, NULL, NULL, NULL, 1, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (209, '母函数的简单应用', 207, 2, NULL, NULL, NULL, NULL, NULL, 2, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (210, '整数拆分', 207, 2, NULL, NULL, NULL, NULL, NULL, 3, 19, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (211, '上部：问道', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (212, '第1章 气象万千、数以等观', 211, 2, NULL, NULL, NULL, NULL, NULL, 1, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (213, '第2章 所谓学习、归类而已', 211, 2, NULL, NULL, NULL, NULL, NULL, 2, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (214, '第3章 格言联璧话学习', 211, 2, NULL, NULL, NULL, NULL, NULL, 3, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (215, '中部：执具', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (216, '第5章 工欲善其事、必先利其器', 215, 2, NULL, NULL, NULL, NULL, NULL, 1, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (217, '第6章 基础编程——用别人的包和函数讲述自己的故事', 215, 2, NULL, NULL, NULL, NULL, NULL, 2, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (218, '第7章 数据对象——面向数据对象学习R语言', 215, 2, NULL, NULL, NULL, NULL, NULL, 3, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (219, '下部：博术', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (220, '第10章 观数以形', 219, 2, NULL, NULL, NULL, NULL, NULL, 1, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (221, '第11章 相随相伴、谓之关联', 219, 2, NULL, NULL, NULL, NULL, NULL, 2, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (222, '第12章 既是世间法、自当有分别', 219, 2, NULL, NULL, NULL, NULL, NULL, 3, 21, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (223, '第1周： 基于计算机的问题求解', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (224, '课程介绍', 223, 2, NULL, NULL, NULL, NULL, NULL, 1, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (225, '1.0 本章导学', 223, 2, NULL, NULL, NULL, NULL, NULL, 2, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (226, '1.1 基于计算机的问题求解方法', 223, 2, NULL, NULL, NULL, NULL, NULL, 3, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (227, '第2周：计算机信息数字化基础', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (228, '2.0 本章导学', 227, 2, NULL, NULL, NULL, NULL, NULL, 1, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (229, '2.1 数制及其在计算机中的表示', 227, 2, NULL, NULL, NULL, NULL, NULL, 2, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (230, '2.2 二进制数据计算', 227, 2, NULL, NULL, NULL, NULL, NULL, 3, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (231, '百家视点', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (232, '百家视点', 231, 2, NULL, NULL, NULL, NULL, NULL, 1, 22, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (233, '第一讲 大数据和ODPS', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (234, '主讲人：武永卫', 233, 2, NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (235, '主讲人：程永', 233, 2, NULL, NULL, NULL, NULL, NULL, 2, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (236, 'QUIZ', 233, 2, NULL, NULL, NULL, NULL, NULL, 3, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (237, '第二讲 分布式存储', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (238, '大纲', 237, 2, NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (239, '初步认识大数据对分布式存储系统的需求', 237, 2, NULL, NULL, NULL, NULL, NULL, 2, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (240, '理解大数据对分布式存储系统的需求', 237, 2, NULL, NULL, NULL, NULL, NULL, 3, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (241, '第三讲 资源管理与任务调度', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (242, '阿里云飞天分布式调度', 241, 2, NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (243, '任务调度', 241, 2, NULL, NULL, NULL, NULL, NULL, 2, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (244, '资源调度', 241, 2, NULL, NULL, NULL, NULL, NULL, 3, 24, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (245, '第0章  课前讨论', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (246, '讨论实录', 245, 2, NULL, NULL, NULL, NULL, NULL, 1, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (247, '第1章  Windows应用程序基础', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (248, '1-1  Windows应用程序的特点', 247, 2, NULL, NULL, NULL, NULL, NULL, 1, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (249, '1-2 可视化编程', 247, 2, NULL, NULL, NULL, NULL, NULL, 2, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (250, '1-3 关于API', 247, 2, NULL, NULL, NULL, NULL, NULL, 3, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (251, '第2章 Windows的图形设备接口及Windows绘图', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (252, '02-1 Windows图形设备接口', 251, 2, NULL, NULL, NULL, NULL, NULL, 1, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (253, '02-2 绘图工具与颜色', 251, 2, NULL, NULL, NULL, NULL, NULL, 2, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (254, '02-3 常用绘图函数', 251, 2, NULL, NULL, NULL, NULL, NULL, 3, 25, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (255, '第0章  课前讨论', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (256, '讨论实录', 255, 2, NULL, NULL, NULL, NULL, NULL, 1, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (257, '第6章 MFC基础知识', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (258, '6-1 MFC概述', 257, 2, NULL, NULL, NULL, NULL, NULL, 1, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (259, '6-2 C++的基本知识', 257, 2, NULL, NULL, NULL, NULL, NULL, 2, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (260, '6-3 MFC类的组织结构及主要的类的简介', 257, 2, NULL, NULL, NULL, NULL, NULL, 3, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (261, '第7章 Windows标准控件在可视化编程中的应用', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (262, '7-1 概述', 261, 2, NULL, NULL, NULL, NULL, NULL, 1, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (263, '7-2 按钮控件及其应用', 261, 2, NULL, NULL, NULL, NULL, NULL, 2, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (264, '7-3 按钮控件及其应用', 261, 2, NULL, NULL, NULL, NULL, NULL, 3, 26, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (265, '第零章', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (266, '本课程简介', 265, 2, NULL, NULL, NULL, NULL, NULL, 1, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (267, '第一章 概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (268, '1.1 为什么要学习计算机网络？', 267, 2, NULL, NULL, NULL, NULL, NULL, 1, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (269, '1.2 互联网络发展史', 267, 2, NULL, NULL, NULL, NULL, NULL, 2, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (270, '1.3 常用的基本概念', 267, 2, NULL, NULL, NULL, NULL, NULL, 3, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (271, '第二章 物理层', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (272, '2.1 数据通信的理论基础', 271, 2, NULL, NULL, NULL, NULL, NULL, 1, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (273, '2.2 有导向的传输介质', 271, 2, NULL, NULL, NULL, NULL, NULL, 2, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (274, '2.3复用技术', 271, 2, NULL, NULL, NULL, NULL, NULL, 3, 27, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (275, '第1讲  微信小程序概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (276, '1.1 小程序的基本情况', 275, 2, NULL, NULL, NULL, NULL, NULL, 1, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (277, '1.2 开发小程序的准备工作', 275, 2, NULL, NULL, NULL, NULL, NULL, 2, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (278, '1.3 小程序的设计规范', 275, 2, NULL, NULL, NULL, NULL, NULL, 3, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (279, '第2讲 初识微信小程序', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (280, '2.1 实战项目：电影周周看V1', 279, 2, NULL, NULL, NULL, NULL, NULL, 1, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (281, '2.2 创建项目和目录文件结构', 279, 2, NULL, NULL, NULL, NULL, NULL, 2, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (282, '2.3 页面配置初探', 279, 2, NULL, NULL, NULL, NULL, NULL, 3, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (283, '第3讲 电影周周看V2', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (284, '3.1 数据绑定', 283, 2, NULL, NULL, NULL, NULL, NULL, 1, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (285, '3.2 小程序运行环境与基本架构', 283, 2, NULL, NULL, NULL, NULL, NULL, 2, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (286, '3.3 条件渲染', 283, 2, NULL, NULL, NULL, NULL, NULL, 3, 28, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (287, '一、基础知识', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (288, '在计算机系统结构中的定位、指令系统概念及分类', 287, 2, NULL, NULL, NULL, NULL, NULL, 1, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (289, '课程内容与目标', 287, 2, NULL, NULL, NULL, NULL, NULL, 2, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (290, '指令集简介', 287, 2, NULL, NULL, NULL, NULL, NULL, 3, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (291, '二、X86体系结构初步', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (292, '80x86计算机系统初步', 291, 2, NULL, NULL, NULL, NULL, NULL, 1, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (293, '80x86处理器与保护模式初步', 291, 2, NULL, NULL, NULL, NULL, NULL, 2, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (294, '三、C与汇编语言', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (295, '80x86汇编与C语言-1', 294, 2, NULL, NULL, NULL, NULL, NULL, 1, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (296, '80x86汇编与C语言-2', 294, 2, NULL, NULL, NULL, NULL, NULL, 2, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (297, '80x86汇编与C语言-2 (续)', 294, 2, NULL, NULL, NULL, NULL, NULL, 3, 29, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (298, '第一章 比特币-区块链的首个应用', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (299, '第一节 区块链简介', 298, 2, NULL, NULL, NULL, NULL, NULL, 1, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (300, '第二节 比特币的来源', 298, 2, NULL, NULL, NULL, NULL, NULL, 2, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (301, '第三节 比特币是什么', 298, 2, NULL, NULL, NULL, NULL, NULL, 3, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (302, '第二章 比特币的共识机制', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (303, '第一节 工作量证明机制', 302, 2, NULL, NULL, NULL, NULL, NULL, 1, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (304, '第二节 矿工的激励', 302, 2, NULL, NULL, NULL, NULL, NULL, 2, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (305, '第三节 矿工的算力', 302, 2, NULL, NULL, NULL, NULL, NULL, 3, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (306, '第三章 公链之争', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (307, '第一节 以太坊', 306, 2, NULL, NULL, NULL, NULL, NULL, 1, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (308, '第二节 以太坊的应用', 306, 2, NULL, NULL, NULL, NULL, NULL, 2, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (309, '第三节 加密数字货币的繁荣和衰败', 306, 2, NULL, NULL, NULL, NULL, NULL, 3, 30, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (310, '第一讲  C/C++基本语法元素', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (311, '1.1  提纲', 310, 2, NULL, NULL, NULL, NULL, NULL, 1, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (312, '1.2  程序设计的基本概念', 310, 2, NULL, NULL, NULL, NULL, NULL, 2, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (313, '1.3  简单C/C++程序介绍', 310, 2, NULL, NULL, NULL, NULL, NULL, 3, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (314, '第二讲  程序控制结构', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (315, '2.1  提纲', 314, 2, NULL, NULL, NULL, NULL, NULL, 1, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (316, '2.2  结构化程序设计基础', 314, 2, NULL, NULL, NULL, NULL, NULL, 2, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (317, '2.3  布尔数据', 314, 2, NULL, NULL, NULL, NULL, NULL, 3, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (318, '第三讲  函数', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (319, '3.1  提纲', 318, 2, NULL, NULL, NULL, NULL, NULL, 1, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (320, '3.2  函数声明、调用与定义', 318, 2, NULL, NULL, NULL, NULL, NULL, 2, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (321, '3.3  函数调用栈框架', 318, 2, NULL, NULL, NULL, NULL, NULL, 3, 31, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (322, '概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (323, '物联网概述', 322, 2, NULL, NULL, NULL, NULL, NULL, 1, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (324, '感知识别', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (325, 'RFID技术', 324, 2, NULL, NULL, NULL, NULL, NULL, 1, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (326, '无线传感网', 324, 2, NULL, NULL, NULL, NULL, NULL, 2, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (327, '定位', 324, 2, NULL, NULL, NULL, NULL, NULL, 3, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (328, '网络构建', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (329, '短距离无线连接', 328, 2, NULL, NULL, NULL, NULL, NULL, 1, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (330, '移动通信技术', 328, 2, NULL, NULL, NULL, NULL, NULL, 2, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (331, '新型无线接入技术', 328, 2, NULL, NULL, NULL, NULL, NULL, 3, 32, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (332, '第0章    课前摸底测试', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (333, '课前摸底测试', 332, 2, NULL, NULL, NULL, NULL, NULL, 1, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (334, '第1章 计算思维与计算机信息技术', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (335, '1.1 计算思维培养信息技术创新意识(1.1.1计算思维与新技术发展、1.1.2计算思维与计算机科学、1.1.3 计算思维与大学计算机教学)', 334, 2, NULL, NULL, NULL, NULL, NULL, 1, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (336, '1.2 计算机信息技术基础(1.2.1 计算机与信息技术、1.2.2 计算机用户与计算机系统、1.2.3 现代计算机技术的演变与发展)', 334, 2, NULL, NULL, NULL, NULL, NULL, 2, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (337, '1.3 信息道德与系统安全(1.3.1 信息道德与系统安全、1.3.2 计算机信息系统安全、1.3.3 计算机病毒与防范)', 334, 2, NULL, NULL, NULL, NULL, NULL, 3, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (338, '第2章 计算机系统构建', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (339, '2.1 计算机系统及管理应用(2.1.1 计算机系统组成、2.1.2 计算机系统应用平台)', 338, 2, NULL, NULL, NULL, NULL, NULL, 1, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (340, '2.2 计算机硬件系统(2.2.1 计算机的体系结构、2.2.2 中央处理器、2.2.3 主板、2.2.4 内存储器、2.2.5 外存储器、2.2.6 USB移动硬盘、2.2.7 计算机系统输入设备、', 338, 2, NULL, NULL, NULL, NULL, NULL, 2, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (341, '2.3 计算机软件系统(2.3.1 计算机软件、2.3.2 系统软件、2.3.3 应用软件)', 338, 2, NULL, NULL, NULL, NULL, NULL, 3, 33, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (342, '第1章 概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (343, '1.1 数据分析与数据挖掘', 342, 2, NULL, NULL, NULL, NULL, NULL, 1, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (344, '1.2 分析与挖掘的数据类型', 342, 2, NULL, NULL, NULL, NULL, NULL, 2, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (345, '1.3 数据分析与数据挖掘的方法', 342, 2, NULL, NULL, NULL, NULL, NULL, 3, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (346, '第2章 数据', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (347, '2.1 数据的属性', 346, 2, NULL, NULL, NULL, NULL, NULL, 1, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (348, '2.2 数据的基本统计描述', 346, 2, NULL, NULL, NULL, NULL, NULL, 2, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (349, '2.3 数据的相似性和相异性', 346, 2, NULL, NULL, NULL, NULL, NULL, 3, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (350, '第3章 数据预处理', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (351, '3.1 数据存在的问题', 350, 2, NULL, NULL, NULL, NULL, NULL, 1, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (352, '3.2 数据清理', 350, 2, NULL, NULL, NULL, NULL, NULL, 2, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (353, '3.3 数据集成', 350, 2, NULL, NULL, NULL, NULL, NULL, 3, 34, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (354, '第1章计算机基础知识', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (355, '1.1计算机的产生与发展', 354, 2, NULL, NULL, NULL, NULL, NULL, 1, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (356, '1.2数制及其运算', 354, 2, NULL, NULL, NULL, NULL, NULL, 2, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (357, '1.3 数制转换', 354, 2, NULL, NULL, NULL, NULL, NULL, 3, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (358, '第2章硬件基础', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (359, '2.1计算机系统的基本组成', 358, 2, NULL, NULL, NULL, NULL, NULL, 1, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (360, '2.2中央处理器', 358, 2, NULL, NULL, NULL, NULL, NULL, 2, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (361, '2.3存储器', 358, 2, NULL, NULL, NULL, NULL, NULL, 3, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (362, '第3章操作系统基础', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (363, '3.1操作系统的定义和发展', 362, 2, NULL, NULL, NULL, NULL, NULL, 1, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (364, '3.2资源管理功能', 362, 2, NULL, NULL, NULL, NULL, NULL, 2, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (365, '3.3从用户的角度操作系统的功能', 362, 2, NULL, NULL, NULL, NULL, NULL, 3, 35, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (366, '绪论', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (367, '1.1 教材', 366, 2, NULL, NULL, NULL, NULL, NULL, 1, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (368, '1.2 课程定位', 366, 2, NULL, NULL, NULL, NULL, NULL, 2, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (369, '1.3 机器学习', 366, 2, NULL, NULL, NULL, NULL, NULL, 3, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (370, '模型评估与选择', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (371, '2.1 泛化能力', 370, 2, NULL, NULL, NULL, NULL, NULL, 1, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (372, '2.2 过拟合和欠拟合', 370, 2, NULL, NULL, NULL, NULL, NULL, 2, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (373, '2.3 三大问题', 370, 2, NULL, NULL, NULL, NULL, NULL, 3, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (374, '线性模型', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (375, '3.1 线性回归', 374, 2, NULL, NULL, NULL, NULL, NULL, 1, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (376, '3.2 最小二乘解', 374, 2, NULL, NULL, NULL, NULL, NULL, 2, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (377, '3.3 多元线性回归', 374, 2, NULL, NULL, NULL, NULL, NULL, 3, 36, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (378, '第一章 线程（上）', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (379, '1.0 导学', 378, 2, NULL, NULL, NULL, NULL, NULL, 1, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (380, '1.1 线程的基本概念', 378, 2, NULL, NULL, NULL, NULL, NULL, 2, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (381, '1.2 通过Thread类创建线程', 378, 2, NULL, NULL, NULL, NULL, NULL, 3, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (382, '第二章 线程（中）', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (383, '2.0 导学', 382, 2, NULL, NULL, NULL, NULL, NULL, 1, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (384, '2.1 线程同步的思路', 382, 2, NULL, NULL, NULL, NULL, NULL, 2, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (385, '2.2 线程同步的实现方式—Synchronization', 382, 2, NULL, NULL, NULL, NULL, NULL, 3, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (386, '第三章 线程（下）', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (387, '3.0 导学', 386, 2, NULL, NULL, NULL, NULL, NULL, 1, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (388, '3.1 线程安全与线程兼容与对立', 386, 2, NULL, NULL, NULL, NULL, NULL, 2, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (389, '3.2 线程的安全实现-互斥同步', 386, 2, NULL, NULL, NULL, NULL, NULL, 3, 37, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (390, '第一章 概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (391, '1.机器学习定义和典型应用', 390, 2, NULL, NULL, NULL, NULL, NULL, 1, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (392, '2.机器学习和人工智能的关系', 390, 2, NULL, NULL, NULL, NULL, NULL, 2, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (393, '3.深度学习方法和其它人工智能方法的共性和差异', 390, 2, NULL, NULL, NULL, NULL, NULL, 3, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (394, '第二章 机器学习基本概念', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (395, '1机器学习的基本术语', 394, 2, NULL, NULL, NULL, NULL, NULL, 1, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (396, '2.监督学习', 394, 2, NULL, NULL, NULL, NULL, NULL, 2, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (397, '3.假设空间', 394, 2, NULL, NULL, NULL, NULL, NULL, 3, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (398, '第三章 模型性能评估', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (399, '1.留出法', 398, 2, NULL, NULL, NULL, NULL, NULL, 1, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (400, '2.交叉验证法', 398, 2, NULL, NULL, NULL, NULL, NULL, 2, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (401, '3.自助法', 398, 2, NULL, NULL, NULL, NULL, NULL, 3, 38, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (402, '第一讲 课程简介与编程环境', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (403, '1.0 课程定位、教学内容', 402, 2, NULL, NULL, NULL, NULL, NULL, 1, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (404, '1.1 编程环境与工具', 402, 2, NULL, NULL, NULL, NULL, NULL, 2, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (405, '1.2 main函数的命令行参数', 402, 2, NULL, NULL, NULL, NULL, NULL, 3, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (406, '第二讲 基础语法（1）', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (407, '2.1 变量定义', 406, 2, NULL, NULL, NULL, NULL, NULL, 1, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (408, '2.2 变量的初始化、类型推导与基于范围的循环', 406, 2, NULL, NULL, NULL, NULL, NULL, 2, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (409, '2.3 函数重载', 406, 2, NULL, NULL, NULL, NULL, NULL, 3, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (410, '第三讲 基础语法（2）', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (411, '3.1 构造函数析构函数', 410, 2, NULL, NULL, NULL, NULL, NULL, 1, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (412, '3.2 赋值运算符重载', 410, 2, NULL, NULL, NULL, NULL, NULL, 2, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (413, '3.3 流运算符重载', 410, 2, NULL, NULL, NULL, NULL, NULL, 3, 39, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (414, '课程介绍', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (415, '课程性质与课程设计', 414, 2, NULL, NULL, NULL, NULL, NULL, 1, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (416, '任务一：创建玩家', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (417, '1.1 十点半游戏简介', 416, 2, NULL, NULL, NULL, NULL, NULL, 1, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (418, '1.2 任务描述与目标要求', 416, 2, NULL, NULL, NULL, NULL, NULL, 2, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (419, '1.3 Python的安装与使用 视频讲解', 416, 2, NULL, NULL, NULL, NULL, NULL, 3, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (420, '任务二：计算出两张牌的点数', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (421, '2.1 任务描述与目标要求', 420, 2, NULL, NULL, NULL, NULL, NULL, 1, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (422, '2.2 基础数据类型与运算符 知识点视频讲解', 420, 2, NULL, NULL, NULL, NULL, NULL, 2, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (423, '2.3条件语句 知识点视频讲解', 420, 2, NULL, NULL, NULL, NULL, NULL, 3, 40, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (424, '00. Introduction', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (425, 'Before we start', 424, 2, NULL, NULL, NULL, NULL, NULL, 1, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (426, 'Evaluation', 424, 2, NULL, NULL, NULL, NULL, NULL, 2, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (427, 'Online Judge', 424, 2, NULL, NULL, NULL, NULL, NULL, 3, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (428, '01. Convex Hull', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (429, 'A. Convexity', 428, 2, NULL, NULL, NULL, NULL, NULL, 1, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (430, 'B. Extreme Points', 428, 2, NULL, NULL, NULL, NULL, NULL, 2, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (431, 'C. Extreme Edges', 428, 2, NULL, NULL, NULL, NULL, NULL, 3, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (432, '02. Geometric Intersection', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (433, '0. Introduction', 432, 2, NULL, NULL, NULL, NULL, NULL, 1, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (434, 'A. Preliminary', 432, 2, NULL, NULL, NULL, NULL, NULL, 2, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (435, 'B. Interval Intersection Detection', 432, 2, NULL, NULL, NULL, NULL, NULL, 3, 41, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (436, '第1章 概述', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (437, '1.1  Linux操作系统概述', 436, 2, NULL, NULL, NULL, NULL, NULL, 1, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (438, '1.2  Linux内核结构以及内核模块编程', 436, 2, NULL, NULL, NULL, NULL, NULL, 2, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (439, '1.3 Linux内核源码中的双链表结构', 436, 2, NULL, NULL, NULL, NULL, NULL, 3, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (440, '第2章 内存寻址', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (441, '2.1  内存管理之内存寻址', 440, 2, NULL, NULL, NULL, NULL, NULL, 1, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (442, '2.2 段机制', 440, 2, NULL, NULL, NULL, NULL, NULL, 2, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (443, '2.3分页机制', 440, 2, NULL, NULL, NULL, NULL, NULL, 3, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (444, '第3章  进程管理', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (445, '3.1 进程概述', 444, 2, NULL, NULL, NULL, NULL, NULL, 1, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (446, '3.2 Linux进程创建', 444, 2, NULL, NULL, NULL, NULL, NULL, 2, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (447, '3.3 Linux进程调度', 444, 2, NULL, NULL, NULL, NULL, NULL, 3, 42, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (448, '第一讲：大数据研究现状及未来趋势（洪小文）', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (449, '什么是大数据(What is big data?)', 448, 2, NULL, NULL, NULL, NULL, NULL, 1, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (450, '为什么大数据是当前热点（Why big data is a nature phenomenon?)', 448, 2, NULL, NULL, NULL, NULL, NULL, 2, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (451, '新的计算基础设施和工具(New Infrastructure and tools)', 448, 2, NULL, NULL, NULL, NULL, NULL, 3, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (452, '第二讲：互联网搜索中的大数据研究（宋睿华）', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (453, '大规模超文本网络搜索引擎的解析(the anatomy of a large scale hypertextual web search engine)', 452, 2, NULL, NULL, NULL, NULL, NULL, 1, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (454, '搜索引擎如何实现每秒数千次的查询(How does a web search engine process thousands of queries per second?)', 452, 2, NULL, NULL, NULL, NULL, NULL, 2, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (455, '探寻搜索的多个维度(finding dimensions for queries)', 452, 2, NULL, NULL, NULL, NULL, NULL, 3, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (456, '第三讲：社会计算中的大数据研究（谢幸）', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (457, '背景介绍(background)', 456, 2, NULL, NULL, NULL, NULL, NULL, 1, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (458, '用户移动规律的理解-1(user mobility understanding-1)', 456, 2, NULL, NULL, NULL, NULL, NULL, 2, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (459, '用户移动规律的理解-2(user mobility understanding-2)', 456, 2, NULL, NULL, NULL, NULL, NULL, 3, 43, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (460, '从问题到C语言程序设计', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (461, '1.1 计算机的问题求解方法', 460, 2, NULL, NULL, NULL, NULL, NULL, 1, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (462, '1.2 C语言与C程序', 460, 2, NULL, NULL, NULL, NULL, NULL, 2, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (463, '1.3 C语言处理系统与程序调试运行', 460, 2, NULL, NULL, NULL, NULL, NULL, 3, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (464, '数据计算实现与顺序结构程序设计（一）', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (465, '2.1 算术运算的C程序实现', 464, 2, NULL, NULL, NULL, NULL, NULL, 1, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (466, '2.2 关系运算的C程序实现', 464, 2, NULL, NULL, NULL, NULL, NULL, 2, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (467, '第二周作业', 464, 2, NULL, NULL, NULL, NULL, NULL, 3, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (468, '数据计算实现与顺序结构程序设计（二）', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (469, '2.3 逻辑运算的C程序实现', 468, 2, NULL, NULL, NULL, NULL, NULL, 1, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (470, '2.4 位运算的C程序实现', 468, 2, NULL, NULL, NULL, NULL, NULL, 2, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (471, '2.5 几种很个别的运算', 468, 2, NULL, NULL, NULL, NULL, NULL, 3, 44, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (472, '第一章   计算机网络基础知识－简短回顾', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (473, '第一节  电子邮件e-mail的安全', 472, 2, NULL, NULL, NULL, NULL, NULL, 1, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (474, '第二节  计算机网络的服务', 472, 2, NULL, NULL, NULL, NULL, NULL, 2, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (475, '第三节  网络协议的分层结构', 472, 2, NULL, NULL, NULL, NULL, NULL, 3, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (476, '第二章  网络安全研究的是什么问题', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (477, '第一节  计算机网络为什么不安全', 476, 2, NULL, NULL, NULL, NULL, NULL, 1, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (478, '第二节  网络安全技术需要提供的服务', 476, 2, NULL, NULL, NULL, NULL, NULL, 2, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (479, '第三节  网络安全讨论的情景设置', 476, 2, NULL, NULL, NULL, NULL, NULL, 3, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (480, '第三章  编码解码学', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (481, '第一节   编码解码学的基本概念', 480, 2, NULL, NULL, NULL, NULL, NULL, 1, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (482, '第二节  攻击编码解码技术的方法', 480, 2, NULL, NULL, NULL, NULL, NULL, 2, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (483, '第三节  共享密钥加密法', 480, 2, NULL, NULL, NULL, NULL, NULL, 3, 45, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (484, '第一章 绪论', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (485, '1.1 信息社会与信息素养', 484, 2, NULL, NULL, NULL, NULL, NULL, 1, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (486, '1.2 人类思维与逻辑学', 484, 2, NULL, NULL, NULL, NULL, NULL, 2, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (487, '1.3 计算科学与计算思维', 484, 2, NULL, NULL, NULL, NULL, NULL, 3, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (488, '第二章 计算与计算机', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (489, '2.1 计算工具及其发展', 488, 2, NULL, NULL, NULL, NULL, NULL, 1, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (490, '2.2 数的表示与存储', 488, 2, NULL, NULL, NULL, NULL, NULL, 2, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (491, '2.3 字符数据及字符编码', 488, 2, NULL, NULL, NULL, NULL, NULL, 3, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (492, '第三章 问题求解与算法', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (493, '3.1 问题与问题求解', 492, 2, NULL, NULL, NULL, NULL, NULL, 1, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (494, '3.2 算法及其复杂性', 492, 2, NULL, NULL, NULL, NULL, NULL, 2, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (495, '3.3 算法设计与分类', 492, 2, NULL, NULL, NULL, NULL, NULL, 3, 46, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (496, '第1周---模块1：单片机', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (497, '任务1-1：认识单片机及应用系统', 496, 2, NULL, NULL, NULL, NULL, NULL, 1, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (498, '任务1-2：80C51单片机系列', 496, 2, NULL, NULL, NULL, NULL, NULL, 2, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (499, '任务1-3：Proteus ISIS上机步骤', 496, 2, NULL, NULL, NULL, NULL, NULL, 3, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (500, '第2-3周---模块2：单片机内部结构技术', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (501, '任务2-1：用单片机P1口来点亮LED0～LED7', 500, 2, NULL, NULL, NULL, NULL, NULL, 1, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (502, '任务2-2：80C51单片机的结构', 500, 2, NULL, NULL, NULL, NULL, NULL, 2, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (503, '任务2-3：80C51单片机的引脚及功能', 500, 2, NULL, NULL, NULL, NULL, NULL, 3, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (504, '第4-6周---模块3：单片机C51程序设计', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (505, '任务3-1：用不同数据类型控制P2口的8位LED闪烁', 504, 2, NULL, NULL, NULL, NULL, NULL, 1, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (506, '任务3-2：分别用P2、P3口显示“加减”运算结果', 504, 2, NULL, NULL, NULL, NULL, NULL, 2, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (507, '任务3-3：用P1口显示逻辑“与或”运算结果', 504, 2, NULL, NULL, NULL, NULL, NULL, 3, 47, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (508, '技术分享合集', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (509, 'Office-Word', 508, 2, NULL, NULL, NULL, NULL, NULL, 1, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (510, 'Office-Excel', 508, 2, NULL, NULL, NULL, NULL, NULL, 2, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (511, 'Office-PowerPoint', 508, 2, NULL, NULL, NULL, NULL, NULL, 3, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (512, '第1章 计算文化与计算思维', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (513, '1.1 计算文化', 512, 2, NULL, NULL, NULL, NULL, NULL, 1, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (514, '1.2 计算思维', 512, 2, NULL, NULL, NULL, NULL, NULL, 2, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (515, '第2章 数据编码：计算机是如何存储数据的', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (516, '2.1 计算机中的0和1', 515, 2, NULL, NULL, NULL, NULL, NULL, 1, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (517, '2.2 0/1世界中的数值编码', 515, 2, NULL, NULL, NULL, NULL, NULL, 2, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (518, '2.3 0/1世界中的字符编码', 515, 2, NULL, NULL, NULL, NULL, NULL, 3, 48, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (519, '【有奖竞赛报名】数据库应用系统设计竞赛', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (520, '往届竞赛获奖作品展示——第1轮开课', 519, 2, NULL, NULL, NULL, NULL, NULL, 1, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (521, '往届竞赛获奖作品展示——第2轮开课', 519, 2, NULL, NULL, NULL, NULL, NULL, 2, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (522, '往届竞赛获奖作品展示——第3轮开课', 519, 2, NULL, NULL, NULL, NULL, NULL, 3, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (523, '第一章 数据管理技术——数据库', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (524, '1.1 数据与数据管理', 523, 2, NULL, NULL, NULL, NULL, NULL, 1, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (525, '1.2 DBS=DB+DBMS', 523, 2, NULL, NULL, NULL, NULL, NULL, 2, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (526, '1.3 不以六律不能正五音——数据模型', 523, 2, NULL, NULL, NULL, NULL, NULL, 3, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (527, '第二章 数据库概念、逻辑结构设计', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (528, '2.1 数据库设计流程', 527, 2, NULL, NULL, NULL, NULL, NULL, 1, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (529, '2.2 概念结构设计', 527, 2, NULL, NULL, NULL, NULL, NULL, 2, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (530, '2.3 逻辑结构设计', 527, 2, NULL, NULL, NULL, NULL, NULL, 3, 49, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (531, '第一章 概览', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (532, '1.1 课程概览', 531, 2, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (533, '1.2 如何学好嵌入式系统', 531, 2, NULL, NULL, NULL, NULL, NULL, 2, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (534, '第二章 绪论', 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (535, '2.1 计算机的基本概念、发展历史', 534, 2, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (536, '2.2 从晶体管到CPU', 534, 2, NULL, NULL, NULL, NULL, NULL, 2, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (537, '2.3 概念CPU、微控制器MCU和嵌入式系统', 534, 2, NULL, NULL, NULL, NULL, NULL, 3, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (538, '第三章 MCU基础', 0, 1, NULL, NULL, NULL, NULL, NULL, 3, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (539, '3.1 CPU的基本结构和运行机制', 538, 2, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (540, '3.2.1 堆栈的概念', 538, 2, NULL, NULL, NULL, NULL, NULL, 2, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (541, '3.2.2 堆栈的概念-头脑体操', 538, 2, NULL, NULL, NULL, NULL, NULL, 3, 50, NULL, 1, '0', '2024-11-28 23:18:50', NULL);
INSERT INTO `teachplan` VALUES (542, '第一章 计算机的基础知识', 0, 1, '', NULL, NULL, NULL, NULL, 1, 20, NULL, 1, '0', '2024-12-29 23:13:42', NULL);
INSERT INTO `teachplan` VALUES (543, '第二章 Windows7的使用', 0, 1, '', NULL, NULL, NULL, NULL, 2, 20, NULL, 1, '0', '2024-12-29 23:13:56', NULL);
INSERT INTO `teachplan` VALUES (544, '第三章 Word2010的使用', 0, 1, '', NULL, NULL, NULL, NULL, 3, 20, NULL, 1, '0', '2024-12-29 23:14:05', NULL);
INSERT INTO `teachplan` VALUES (545, '课程介绍', 542, 2, '', NULL, NULL, NULL, NULL, 1, 20, NULL, 1, '0', '2024-12-29 23:14:08', NULL);
INSERT INTO `teachplan` VALUES (546, '教师介绍', 542, 2, '', NULL, NULL, NULL, NULL, 2, 20, NULL, 1, '0', '2024-12-29 23:14:31', NULL);
INSERT INTO `teachplan` VALUES (547, '考核介绍', 542, 2, '', NULL, NULL, NULL, NULL, 3, 20, NULL, 1, '0', '2024-12-29 23:14:41', NULL);
INSERT INTO `teachplan` VALUES (548, 'window7介绍', 543, 2, '', NULL, NULL, NULL, NULL, 1, 20, NULL, 1, '0', '2024-12-29 23:15:03', NULL);
INSERT INTO `teachplan` VALUES (549, 'window7使用', 543, 2, '', NULL, NULL, NULL, NULL, 2, 20, NULL, 1, '0', '2024-12-29 23:15:49', NULL);
INSERT INTO `teachplan` VALUES (550, 'window7怎么用', 543, 2, '', NULL, NULL, NULL, NULL, 3, 20, NULL, 1, '0', '2024-12-29 23:16:01', NULL);
INSERT INTO `teachplan` VALUES (551, 'word2010介绍', 544, 2, '', NULL, NULL, NULL, NULL, 1, 20, NULL, 1, '0', '2024-12-29 23:16:57', NULL);
INSERT INTO `teachplan` VALUES (552, 'word2010使用', 544, 2, '', NULL, NULL, NULL, NULL, 2, 20, NULL, 1, '0', '2024-12-29 23:17:18', NULL);
INSERT INTO `teachplan` VALUES (553, 'word2010怎么使用好', 544, 2, '', NULL, NULL, NULL, NULL, 3, 20, NULL, 1, '0', '2024-12-29 23:17:32', NULL);

-- ----------------------------
-- Table structure for teachplan_media
-- ----------------------------
DROP TABLE IF EXISTS `teachplan_media`;
CREATE TABLE `teachplan_media`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `media_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '媒资文件id',
  `teachplan_id` bigint NOT NULL COMMENT '课程计划标识',
  `course_id` bigint NOT NULL COMMENT '课程标识',
  `media_fileName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '媒资文件原始名称',
  `create_date` datetime NULL DEFAULT NULL,
  `create_people` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `change_people` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teachplan_media
-- ----------------------------
INSERT INTO `teachplan_media` VALUES (1, 'ff141b6db970fb19debff6f006cde7e4', 2, 1, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (2, 'e2268d52dea91b85e18fd7fe2b386452', 3, 1, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (3, 'ede081035592464b387a43de1e88e1e5', 4, 1, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (4, 'c65857cc726ae5593fe99783edb39d37', 6, 1, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (5, '5cc8e1cd17c5fff55aef29508f363095', 7, 1, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (6, '5cc8e1cd17c5fff55aef29508f363095', 8, 1, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (7, 'e6ecda8e6c1ff312efcd8a76037225ac', 10, 1, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (8, 'faf3a36b168a0859fed78d1a3b0b9895', 11, 1, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (9, 'e7b6689813479f1a4bcbda99d882550d', 12, 1, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (10, 'e16e6220e4195a46316b17e0b3bee63b', 14, 2, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (11, 'e1d907d7f3fc6aade54c4e12c87f328b', 15, 2, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (12, '878c02a0df04f94144ab808b1c4b74a0', 16, 2, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (13, 'faf3a36b168a0859fed78d1a3b0b9895', 18, 2, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (14, 'e7b6689813479f1a4bcbda99d882550d', 19, 2, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (15, 'e2268d52dea91b85e18fd7fe2b386452', 20, 2, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (16, '701b9289b467c0fdb608a65ac5dec016', 22, 2, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (17, 'e2268d52dea91b85e18fd7fe2b386452', 23, 2, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (18, '878c02a0df04f94144ab808b1c4b74a0', 24, 2, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (19, 'ede081035592464b387a43de1e88e1e5', 26, 3, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (20, '5cc8e1cd17c5fff55aef29508f363095', 27, 3, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (21, '5cc8e1cd17c5fff55aef29508f363095', 28, 3, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (22, 'e6ecda8e6c1ff312efcd8a76037225ac', 30, 3, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (23, '3aad1f3480ad0725f2a31e5127edbc6a', 31, 3, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (24, 'c834cb8e731a58231cea7845fe2e985d', 32, 3, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (25, '878c02a0df04f94144ab808b1c4b74a0', 34, 3, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (26, 'e7b6689813479f1a4bcbda99d882550d', 35, 3, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (27, 'e7b6689813479f1a4bcbda99d882550d', 36, 3, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (28, 'e16e6220e4195a46316b17e0b3bee63b', 38, 4, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (29, '701b9289b467c0fdb608a65ac5dec016', 39, 4, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (30, 'ff141b6db970fb19debff6f006cde7e4', 40, 4, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (31, 'e16e6220e4195a46316b17e0b3bee63b', 42, 4, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (32, '3aad1f3480ad0725f2a31e5127edbc6a', 43, 4, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (33, 'e6ecda8e6c1ff312efcd8a76037225ac', 44, 4, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (34, '5cc8e1cd17c5fff55aef29508f363095', 46, 4, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (35, 'e16e6220e4195a46316b17e0b3bee63b', 47, 4, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (36, '3aad1f3480ad0725f2a31e5127edbc6a', 48, 4, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (37, '701b9289b467c0fdb608a65ac5dec016', 50, 5, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (38, 'e16e6220e4195a46316b17e0b3bee63b', 51, 5, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (39, 'e16e6220e4195a46316b17e0b3bee63b', 52, 5, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (40, '701b9289b467c0fdb608a65ac5dec016', 54, 5, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (41, '878c02a0df04f94144ab808b1c4b74a0', 55, 5, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (42, '5cc8e1cd17c5fff55aef29508f363095', 56, 5, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (43, 'e16e6220e4195a46316b17e0b3bee63b', 58, 5, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (44, 'ede081035592464b387a43de1e88e1e5', 59, 5, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (45, '5cc8e1cd17c5fff55aef29508f363095', 60, 5, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (46, 'e1d907d7f3fc6aade54c4e12c87f328b', 62, 6, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (47, '878c02a0df04f94144ab808b1c4b74a0', 64, 6, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (48, 'ede081035592464b387a43de1e88e1e5', 65, 6, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (49, '5cc8e1cd17c5fff55aef29508f363095', 66, 6, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (50, '878c02a0df04f94144ab808b1c4b74a0', 68, 6, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (51, 'e1d907d7f3fc6aade54c4e12c87f328b', 69, 6, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (52, 'c834cb8e731a58231cea7845fe2e985d', 70, 6, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (53, 'ff141b6db970fb19debff6f006cde7e4', 72, 7, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (54, 'ff141b6db970fb19debff6f006cde7e4', 73, 7, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (55, '3aad1f3480ad0725f2a31e5127edbc6a', 74, 7, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (56, 'ede081035592464b387a43de1e88e1e5', 76, 7, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (57, 'e6ecda8e6c1ff312efcd8a76037225ac', 77, 7, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (58, '3aad1f3480ad0725f2a31e5127edbc6a', 78, 7, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (59, 'faf3a36b168a0859fed78d1a3b0b9895', 80, 7, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (60, '701b9289b467c0fdb608a65ac5dec016', 81, 7, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (61, 'c65857cc726ae5593fe99783edb39d37', 82, 7, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (62, 'faf3a36b168a0859fed78d1a3b0b9895', 84, 8, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (63, '701b9289b467c0fdb608a65ac5dec016', 85, 8, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (64, 'e2268d52dea91b85e18fd7fe2b386452', 86, 8, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (65, 'e16e6220e4195a46316b17e0b3bee63b', 88, 8, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (66, '602edfc767f1a656612d8c9a9137d617', 89, 8, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (67, '602edfc767f1a656612d8c9a9137d617', 90, 8, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (68, 'e16e6220e4195a46316b17e0b3bee63b', 92, 8, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (69, 'c65857cc726ae5593fe99783edb39d37', 93, 8, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (70, '878c02a0df04f94144ab808b1c4b74a0', 94, 8, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (71, 'e7b6689813479f1a4bcbda99d882550d', 96, 9, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (72, '602edfc767f1a656612d8c9a9137d617', 97, 9, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (73, '701b9289b467c0fdb608a65ac5dec016', 99, 9, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (74, '5cc8e1cd17c5fff55aef29508f363095', 100, 9, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (75, 'e6ecda8e6c1ff312efcd8a76037225ac', 101, 9, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (76, 'faf3a36b168a0859fed78d1a3b0b9895', 103, 9, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (77, 'faf3a36b168a0859fed78d1a3b0b9895', 104, 9, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (78, 'c834cb8e731a58231cea7845fe2e985d', 105, 9, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (79, '602edfc767f1a656612d8c9a9137d617', 107, 10, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (80, '878c02a0df04f94144ab808b1c4b74a0', 108, 10, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (81, '3aad1f3480ad0725f2a31e5127edbc6a', 109, 10, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (82, 'e6ecda8e6c1ff312efcd8a76037225ac', 111, 10, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (83, 'c834cb8e731a58231cea7845fe2e985d', 112, 10, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (84, 'faf3a36b168a0859fed78d1a3b0b9895', 113, 10, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (85, 'e6ecda8e6c1ff312efcd8a76037225ac', 115, 10, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (86, 'e6ecda8e6c1ff312efcd8a76037225ac', 116, 10, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (87, 'e1d907d7f3fc6aade54c4e12c87f328b', 117, 10, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (88, 'c65857cc726ae5593fe99783edb39d37', 119, 11, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (89, 'c834cb8e731a58231cea7845fe2e985d', 121, 11, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (90, '878c02a0df04f94144ab808b1c4b74a0', 122, 11, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (91, '3aad1f3480ad0725f2a31e5127edbc6a', 123, 11, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (92, 'c65857cc726ae5593fe99783edb39d37', 125, 11, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (93, 'c65857cc726ae5593fe99783edb39d37', 126, 11, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (94, 'ede081035592464b387a43de1e88e1e5', 127, 11, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (95, '701b9289b467c0fdb608a65ac5dec016', 129, 12, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (96, '3aad1f3480ad0725f2a31e5127edbc6a', 131, 12, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (97, '701b9289b467c0fdb608a65ac5dec016', 132, 12, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (98, 'e1d907d7f3fc6aade54c4e12c87f328b', 133, 12, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (99, 'faf3a36b168a0859fed78d1a3b0b9895', 135, 12, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (100, '5cc8e1cd17c5fff55aef29508f363095', 136, 12, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (101, '701b9289b467c0fdb608a65ac5dec016', 137, 12, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (102, 'ede081035592464b387a43de1e88e1e5', 139, 13, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (103, 'e6ecda8e6c1ff312efcd8a76037225ac', 141, 13, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (104, '5cc8e1cd17c5fff55aef29508f363095', 143, 13, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (105, 'c65857cc726ae5593fe99783edb39d37', 144, 13, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (106, 'ff141b6db970fb19debff6f006cde7e4', 146, 14, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (107, 'e6ecda8e6c1ff312efcd8a76037225ac', 147, 14, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (108, 'e1d907d7f3fc6aade54c4e12c87f328b', 148, 14, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (109, '602edfc767f1a656612d8c9a9137d617', 150, 14, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (110, 'e7b6689813479f1a4bcbda99d882550d', 151, 14, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (111, 'c834cb8e731a58231cea7845fe2e985d', 152, 14, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (112, 'c65857cc726ae5593fe99783edb39d37', 154, 14, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (113, 'c834cb8e731a58231cea7845fe2e985d', 155, 14, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (114, '878c02a0df04f94144ab808b1c4b74a0', 156, 14, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (115, '878c02a0df04f94144ab808b1c4b74a0', 158, 15, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (116, 'e1d907d7f3fc6aade54c4e12c87f328b', 159, 15, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (117, 'ff141b6db970fb19debff6f006cde7e4', 160, 15, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (118, '602edfc767f1a656612d8c9a9137d617', 162, 15, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (119, 'e2268d52dea91b85e18fd7fe2b386452', 163, 15, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (120, '3aad1f3480ad0725f2a31e5127edbc6a', 164, 15, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (121, '3aad1f3480ad0725f2a31e5127edbc6a', 166, 15, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (122, 'e7b6689813479f1a4bcbda99d882550d', 167, 15, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (123, 'e2268d52dea91b85e18fd7fe2b386452', 168, 15, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (124, 'e6ecda8e6c1ff312efcd8a76037225ac', 170, 16, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (125, 'e2268d52dea91b85e18fd7fe2b386452', 171, 16, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (126, '5cc8e1cd17c5fff55aef29508f363095', 172, 16, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (127, '701b9289b467c0fdb608a65ac5dec016', 174, 16, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (128, 'c834cb8e731a58231cea7845fe2e985d', 175, 16, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (129, '3aad1f3480ad0725f2a31e5127edbc6a', 176, 16, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (130, 'faf3a36b168a0859fed78d1a3b0b9895', 178, 16, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (131, '701b9289b467c0fdb608a65ac5dec016', 179, 16, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (132, 'e7b6689813479f1a4bcbda99d882550d', 180, 16, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (133, 'e16e6220e4195a46316b17e0b3bee63b', 182, 17, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (134, '5cc8e1cd17c5fff55aef29508f363095', 184, 17, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (135, 'e6ecda8e6c1ff312efcd8a76037225ac', 186, 17, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (136, 'faf3a36b168a0859fed78d1a3b0b9895', 188, 18, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (137, 'c834cb8e731a58231cea7845fe2e985d', 189, 18, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (138, 'e16e6220e4195a46316b17e0b3bee63b', 190, 18, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (139, 'e6ecda8e6c1ff312efcd8a76037225ac', 192, 18, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (140, 'e2268d52dea91b85e18fd7fe2b386452', 193, 18, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (141, 'c65857cc726ae5593fe99783edb39d37', 194, 18, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (142, 'e2268d52dea91b85e18fd7fe2b386452', 196, 18, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (143, 'ede081035592464b387a43de1e88e1e5', 197, 18, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (144, '602edfc767f1a656612d8c9a9137d617', 198, 18, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (145, 'e1d907d7f3fc6aade54c4e12c87f328b', 200, 19, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (146, '5cc8e1cd17c5fff55aef29508f363095', 201, 19, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (147, 'e6ecda8e6c1ff312efcd8a76037225ac', 202, 19, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (148, 'e1d907d7f3fc6aade54c4e12c87f328b', 204, 19, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (149, '701b9289b467c0fdb608a65ac5dec016', 205, 19, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (150, '3aad1f3480ad0725f2a31e5127edbc6a', 206, 19, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (151, '602edfc767f1a656612d8c9a9137d617', 208, 19, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (152, '3aad1f3480ad0725f2a31e5127edbc6a', 209, 19, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (153, 'c65857cc726ae5593fe99783edb39d37', 210, 19, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (154, 'e6ecda8e6c1ff312efcd8a76037225ac', 212, 21, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (155, '878c02a0df04f94144ab808b1c4b74a0', 213, 21, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (156, 'ff141b6db970fb19debff6f006cde7e4', 214, 21, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (157, '602edfc767f1a656612d8c9a9137d617', 216, 21, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (158, 'faf3a36b168a0859fed78d1a3b0b9895', 217, 21, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (159, 'ff141b6db970fb19debff6f006cde7e4', 218, 21, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (160, 'ff141b6db970fb19debff6f006cde7e4', 220, 21, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (161, 'ede081035592464b387a43de1e88e1e5', 221, 21, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (162, 'e7b6689813479f1a4bcbda99d882550d', 222, 21, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (163, 'e1d907d7f3fc6aade54c4e12c87f328b', 224, 22, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (164, 'e16e6220e4195a46316b17e0b3bee63b', 225, 22, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (165, 'ede081035592464b387a43de1e88e1e5', 226, 22, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (166, '878c02a0df04f94144ab808b1c4b74a0', 228, 22, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (167, 'ede081035592464b387a43de1e88e1e5', 229, 22, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (168, '878c02a0df04f94144ab808b1c4b74a0', 230, 22, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (169, 'e6ecda8e6c1ff312efcd8a76037225ac', 232, 22, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (170, '602edfc767f1a656612d8c9a9137d617', 234, 24, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (171, 'e6ecda8e6c1ff312efcd8a76037225ac', 235, 24, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (172, 'e6ecda8e6c1ff312efcd8a76037225ac', 236, 24, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (173, 'e1d907d7f3fc6aade54c4e12c87f328b', 238, 24, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (174, '602edfc767f1a656612d8c9a9137d617', 239, 24, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (175, 'e16e6220e4195a46316b17e0b3bee63b', 240, 24, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (176, 'c65857cc726ae5593fe99783edb39d37', 242, 24, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (177, '701b9289b467c0fdb608a65ac5dec016', 243, 24, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (178, 'c834cb8e731a58231cea7845fe2e985d', 244, 24, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (179, 'faf3a36b168a0859fed78d1a3b0b9895', 246, 25, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (180, 'c65857cc726ae5593fe99783edb39d37', 248, 25, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (181, 'c834cb8e731a58231cea7845fe2e985d', 249, 25, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (182, '5cc8e1cd17c5fff55aef29508f363095', 250, 25, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (183, 'e2268d52dea91b85e18fd7fe2b386452', 252, 25, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (184, 'e16e6220e4195a46316b17e0b3bee63b', 253, 25, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (185, 'c834cb8e731a58231cea7845fe2e985d', 254, 25, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (186, '3aad1f3480ad0725f2a31e5127edbc6a', 256, 26, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (187, '701b9289b467c0fdb608a65ac5dec016', 258, 26, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (188, 'e16e6220e4195a46316b17e0b3bee63b', 259, 26, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (189, 'ede081035592464b387a43de1e88e1e5', 260, 26, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (190, 'e6ecda8e6c1ff312efcd8a76037225ac', 262, 26, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (191, '701b9289b467c0fdb608a65ac5dec016', 263, 26, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (192, 'c834cb8e731a58231cea7845fe2e985d', 264, 26, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (193, 'e16e6220e4195a46316b17e0b3bee63b', 266, 27, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (194, 'e16e6220e4195a46316b17e0b3bee63b', 268, 27, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (195, 'e6ecda8e6c1ff312efcd8a76037225ac', 269, 27, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (196, 'e16e6220e4195a46316b17e0b3bee63b', 270, 27, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (197, 'ede081035592464b387a43de1e88e1e5', 272, 27, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (198, '878c02a0df04f94144ab808b1c4b74a0', 273, 27, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (199, '701b9289b467c0fdb608a65ac5dec016', 274, 27, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (200, 'faf3a36b168a0859fed78d1a3b0b9895', 276, 28, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (201, 'faf3a36b168a0859fed78d1a3b0b9895', 277, 28, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (202, 'e2268d52dea91b85e18fd7fe2b386452', 278, 28, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (203, 'c65857cc726ae5593fe99783edb39d37', 280, 28, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (204, 'e16e6220e4195a46316b17e0b3bee63b', 281, 28, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (205, 'c834cb8e731a58231cea7845fe2e985d', 282, 28, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (206, 'e16e6220e4195a46316b17e0b3bee63b', 284, 28, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (207, 'e1d907d7f3fc6aade54c4e12c87f328b', 285, 28, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (208, '602edfc767f1a656612d8c9a9137d617', 286, 28, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (209, '701b9289b467c0fdb608a65ac5dec016', 288, 29, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (210, '5cc8e1cd17c5fff55aef29508f363095', 289, 29, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (211, 'e1d907d7f3fc6aade54c4e12c87f328b', 290, 29, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (212, '602edfc767f1a656612d8c9a9137d617', 292, 29, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (213, 'e2268d52dea91b85e18fd7fe2b386452', 293, 29, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (214, '878c02a0df04f94144ab808b1c4b74a0', 295, 29, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (215, 'e16e6220e4195a46316b17e0b3bee63b', 296, 29, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (216, 'c834cb8e731a58231cea7845fe2e985d', 297, 29, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (217, '3aad1f3480ad0725f2a31e5127edbc6a', 299, 30, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (218, 'ff141b6db970fb19debff6f006cde7e4', 300, 30, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (219, 'e1d907d7f3fc6aade54c4e12c87f328b', 301, 30, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (220, 'e2268d52dea91b85e18fd7fe2b386452', 303, 30, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (221, 'e16e6220e4195a46316b17e0b3bee63b', 304, 30, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (222, 'e1d907d7f3fc6aade54c4e12c87f328b', 305, 30, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (223, 'e2268d52dea91b85e18fd7fe2b386452', 307, 30, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (224, 'e1d907d7f3fc6aade54c4e12c87f328b', 308, 30, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (225, '701b9289b467c0fdb608a65ac5dec016', 309, 30, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (226, 'ff141b6db970fb19debff6f006cde7e4', 311, 31, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (227, 'ede081035592464b387a43de1e88e1e5', 312, 31, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (228, 'e6ecda8e6c1ff312efcd8a76037225ac', 313, 31, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (229, '3aad1f3480ad0725f2a31e5127edbc6a', 315, 31, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (230, '3aad1f3480ad0725f2a31e5127edbc6a', 316, 31, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (231, 'ff141b6db970fb19debff6f006cde7e4', 317, 31, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (232, '5cc8e1cd17c5fff55aef29508f363095', 319, 31, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (233, 'e1d907d7f3fc6aade54c4e12c87f328b', 320, 31, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (234, 'e6ecda8e6c1ff312efcd8a76037225ac', 321, 31, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (235, 'e7b6689813479f1a4bcbda99d882550d', 323, 32, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (236, 'faf3a36b168a0859fed78d1a3b0b9895', 325, 32, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (237, 'ff141b6db970fb19debff6f006cde7e4', 326, 32, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (238, 'e1d907d7f3fc6aade54c4e12c87f328b', 327, 32, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (239, 'e2268d52dea91b85e18fd7fe2b386452', 329, 32, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (240, 'c65857cc726ae5593fe99783edb39d37', 330, 32, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (241, 'ff141b6db970fb19debff6f006cde7e4', 331, 32, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (242, 'e2268d52dea91b85e18fd7fe2b386452', 333, 33, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (243, '701b9289b467c0fdb608a65ac5dec016', 335, 33, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (244, 'c65857cc726ae5593fe99783edb39d37', 336, 33, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (245, 'e6ecda8e6c1ff312efcd8a76037225ac', 337, 33, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (246, '602edfc767f1a656612d8c9a9137d617', 339, 33, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (247, '602edfc767f1a656612d8c9a9137d617', 340, 33, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (248, '878c02a0df04f94144ab808b1c4b74a0', 341, 33, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (249, 'ede081035592464b387a43de1e88e1e5', 343, 34, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (250, 'c65857cc726ae5593fe99783edb39d37', 344, 34, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (251, '602edfc767f1a656612d8c9a9137d617', 345, 34, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (252, 'ff141b6db970fb19debff6f006cde7e4', 347, 34, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (253, 'e1d907d7f3fc6aade54c4e12c87f328b', 348, 34, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (254, 'c65857cc726ae5593fe99783edb39d37', 349, 34, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (255, '878c02a0df04f94144ab808b1c4b74a0', 351, 34, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (256, '701b9289b467c0fdb608a65ac5dec016', 352, 34, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (257, 'e16e6220e4195a46316b17e0b3bee63b', 353, 34, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (258, 'e2268d52dea91b85e18fd7fe2b386452', 355, 35, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (259, '3aad1f3480ad0725f2a31e5127edbc6a', 356, 35, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (260, '5cc8e1cd17c5fff55aef29508f363095', 357, 35, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (261, 'e7b6689813479f1a4bcbda99d882550d', 359, 35, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (262, 'e2268d52dea91b85e18fd7fe2b386452', 360, 35, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (263, 'c65857cc726ae5593fe99783edb39d37', 361, 35, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (264, 'e1d907d7f3fc6aade54c4e12c87f328b', 363, 35, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (265, '878c02a0df04f94144ab808b1c4b74a0', 364, 35, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (266, 'e1d907d7f3fc6aade54c4e12c87f328b', 365, 35, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (267, 'ede081035592464b387a43de1e88e1e5', 367, 36, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (268, 'e16e6220e4195a46316b17e0b3bee63b', 368, 36, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (269, 'e6ecda8e6c1ff312efcd8a76037225ac', 369, 36, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (270, 'e7b6689813479f1a4bcbda99d882550d', 371, 36, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (271, '602edfc767f1a656612d8c9a9137d617', 372, 36, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (272, '701b9289b467c0fdb608a65ac5dec016', 373, 36, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (273, 'faf3a36b168a0859fed78d1a3b0b9895', 375, 36, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (274, 'ff141b6db970fb19debff6f006cde7e4', 376, 36, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (275, '878c02a0df04f94144ab808b1c4b74a0', 377, 36, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (276, 'c834cb8e731a58231cea7845fe2e985d', 379, 37, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (277, '701b9289b467c0fdb608a65ac5dec016', 380, 37, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (278, 'ff141b6db970fb19debff6f006cde7e4', 381, 37, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (279, '701b9289b467c0fdb608a65ac5dec016', 383, 37, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (280, '602edfc767f1a656612d8c9a9137d617', 384, 37, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (281, '3aad1f3480ad0725f2a31e5127edbc6a', 385, 37, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (282, '3aad1f3480ad0725f2a31e5127edbc6a', 387, 37, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (283, '5cc8e1cd17c5fff55aef29508f363095', 388, 37, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (284, 'e6ecda8e6c1ff312efcd8a76037225ac', 389, 37, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (285, 'c834cb8e731a58231cea7845fe2e985d', 391, 38, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (286, 'e7b6689813479f1a4bcbda99d882550d', 392, 38, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (287, 'ede081035592464b387a43de1e88e1e5', 393, 38, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (288, 'ff141b6db970fb19debff6f006cde7e4', 395, 38, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (289, '3aad1f3480ad0725f2a31e5127edbc6a', 396, 38, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (290, 'ede081035592464b387a43de1e88e1e5', 397, 38, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (291, 'e6ecda8e6c1ff312efcd8a76037225ac', 399, 38, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (292, 'e1d907d7f3fc6aade54c4e12c87f328b', 400, 38, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (293, 'c834cb8e731a58231cea7845fe2e985d', 401, 38, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (294, 'e2268d52dea91b85e18fd7fe2b386452', 403, 39, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (295, '878c02a0df04f94144ab808b1c4b74a0', 404, 39, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (296, 'e6ecda8e6c1ff312efcd8a76037225ac', 405, 39, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (297, 'ede081035592464b387a43de1e88e1e5', 407, 39, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (298, 'ede081035592464b387a43de1e88e1e5', 408, 39, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (299, '602edfc767f1a656612d8c9a9137d617', 409, 39, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (300, 'e2268d52dea91b85e18fd7fe2b386452', 411, 39, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (301, '602edfc767f1a656612d8c9a9137d617', 412, 39, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (302, 'e16e6220e4195a46316b17e0b3bee63b', 413, 39, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (303, 'e1d907d7f3fc6aade54c4e12c87f328b', 415, 40, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (304, 'ede081035592464b387a43de1e88e1e5', 417, 40, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (305, 'e7b6689813479f1a4bcbda99d882550d', 418, 40, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (306, '701b9289b467c0fdb608a65ac5dec016', 419, 40, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (307, 'faf3a36b168a0859fed78d1a3b0b9895', 421, 40, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (308, 'e6ecda8e6c1ff312efcd8a76037225ac', 422, 40, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (309, '602edfc767f1a656612d8c9a9137d617', 423, 40, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (310, 'c65857cc726ae5593fe99783edb39d37', 425, 41, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (311, 'e16e6220e4195a46316b17e0b3bee63b', 426, 41, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (312, 'c65857cc726ae5593fe99783edb39d37', 427, 41, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (313, 'ff141b6db970fb19debff6f006cde7e4', 429, 41, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (314, 'e16e6220e4195a46316b17e0b3bee63b', 430, 41, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (315, 'e1d907d7f3fc6aade54c4e12c87f328b', 431, 41, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (316, 'ff141b6db970fb19debff6f006cde7e4', 433, 41, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (317, 'e1d907d7f3fc6aade54c4e12c87f328b', 434, 41, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (318, '5cc8e1cd17c5fff55aef29508f363095', 435, 41, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (319, '701b9289b467c0fdb608a65ac5dec016', 437, 42, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (320, '5cc8e1cd17c5fff55aef29508f363095', 438, 42, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (321, 'e1d907d7f3fc6aade54c4e12c87f328b', 439, 42, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (322, 'e6ecda8e6c1ff312efcd8a76037225ac', 441, 42, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (323, 'e7b6689813479f1a4bcbda99d882550d', 442, 42, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (324, '602edfc767f1a656612d8c9a9137d617', 443, 42, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (325, '602edfc767f1a656612d8c9a9137d617', 445, 42, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (326, 'e6ecda8e6c1ff312efcd8a76037225ac', 446, 42, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (327, 'e2268d52dea91b85e18fd7fe2b386452', 447, 42, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (328, 'e16e6220e4195a46316b17e0b3bee63b', 449, 43, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (329, 'ff141b6db970fb19debff6f006cde7e4', 450, 43, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (330, 'ff141b6db970fb19debff6f006cde7e4', 451, 43, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (331, 'faf3a36b168a0859fed78d1a3b0b9895', 453, 43, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (332, 'e2268d52dea91b85e18fd7fe2b386452', 454, 43, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (333, 'e16e6220e4195a46316b17e0b3bee63b', 455, 43, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (334, '701b9289b467c0fdb608a65ac5dec016', 457, 43, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (335, '878c02a0df04f94144ab808b1c4b74a0', 458, 43, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (336, '5cc8e1cd17c5fff55aef29508f363095', 459, 43, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (337, 'c65857cc726ae5593fe99783edb39d37', 461, 44, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (338, 'e2268d52dea91b85e18fd7fe2b386452', 462, 44, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (339, 'e2268d52dea91b85e18fd7fe2b386452', 463, 44, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (340, 'faf3a36b168a0859fed78d1a3b0b9895', 465, 44, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (341, 'faf3a36b168a0859fed78d1a3b0b9895', 466, 44, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (342, 'ff141b6db970fb19debff6f006cde7e4', 467, 44, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (343, '602edfc767f1a656612d8c9a9137d617', 469, 44, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (344, 'e6ecda8e6c1ff312efcd8a76037225ac', 470, 44, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (345, '3aad1f3480ad0725f2a31e5127edbc6a', 471, 44, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (346, '602edfc767f1a656612d8c9a9137d617', 473, 45, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (347, 'c834cb8e731a58231cea7845fe2e985d', 474, 45, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (348, 'ede081035592464b387a43de1e88e1e5', 475, 45, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (349, 'c834cb8e731a58231cea7845fe2e985d', 477, 45, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (350, 'c65857cc726ae5593fe99783edb39d37', 478, 45, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (351, '3aad1f3480ad0725f2a31e5127edbc6a', 479, 45, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (352, 'faf3a36b168a0859fed78d1a3b0b9895', 481, 45, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (353, 'ff141b6db970fb19debff6f006cde7e4', 482, 45, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (354, 'e2268d52dea91b85e18fd7fe2b386452', 483, 45, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (355, '5cc8e1cd17c5fff55aef29508f363095', 485, 46, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (356, 'e7b6689813479f1a4bcbda99d882550d', 486, 46, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (357, 'e16e6220e4195a46316b17e0b3bee63b', 487, 46, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (358, '3aad1f3480ad0725f2a31e5127edbc6a', 489, 46, '1.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (359, 'c65857cc726ae5593fe99783edb39d37', 490, 46, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (360, 'e2268d52dea91b85e18fd7fe2b386452', 491, 46, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (361, 'e1d907d7f3fc6aade54c4e12c87f328b', 493, 46, '14.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (362, 'ff141b6db970fb19debff6f006cde7e4', 494, 46, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (363, 'e2268d52dea91b85e18fd7fe2b386452', 495, 46, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (364, '5cc8e1cd17c5fff55aef29508f363095', 497, 47, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (365, 'ff141b6db970fb19debff6f006cde7e4', 498, 47, '6.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (366, 'e16e6220e4195a46316b17e0b3bee63b', 499, 47, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (367, '701b9289b467c0fdb608a65ac5dec016', 501, 47, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (368, '701b9289b467c0fdb608a65ac5dec016', 502, 47, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (369, 'e6ecda8e6c1ff312efcd8a76037225ac', 503, 47, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (370, 'c65857cc726ae5593fe99783edb39d37', 505, 47, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (371, 'e16e6220e4195a46316b17e0b3bee63b', 506, 47, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (372, 'e2268d52dea91b85e18fd7fe2b386452', 507, 47, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (373, '602edfc767f1a656612d8c9a9137d617', 509, 48, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (374, '878c02a0df04f94144ab808b1c4b74a0', 510, 48, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (375, '701b9289b467c0fdb608a65ac5dec016', 511, 48, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (376, '701b9289b467c0fdb608a65ac5dec016', 513, 48, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (377, 'ede081035592464b387a43de1e88e1e5', 514, 48, '4.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (378, '5cc8e1cd17c5fff55aef29508f363095', 516, 48, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (379, 'e16e6220e4195a46316b17e0b3bee63b', 517, 48, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (380, 'e7b6689813479f1a4bcbda99d882550d', 518, 48, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (381, '878c02a0df04f94144ab808b1c4b74a0', 520, 49, '8.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (382, 'c834cb8e731a58231cea7845fe2e985d', 521, 49, '15.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (383, 'faf3a36b168a0859fed78d1a3b0b9895', 522, 49, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (384, '5cc8e1cd17c5fff55aef29508f363095', 524, 49, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (385, 'e2268d52dea91b85e18fd7fe2b386452', 525, 49, '2.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (386, 'faf3a36b168a0859fed78d1a3b0b9895', 526, 49, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (387, '701b9289b467c0fdb608a65ac5dec016', 528, 49, '10.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (388, 'e7b6689813479f1a4bcbda99d882550d', 529, 49, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (389, '602edfc767f1a656612d8c9a9137d617', 530, 49, '9.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (390, 'faf3a36b168a0859fed78d1a3b0b9895', 532, 50, '12.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (391, 'e7b6689813479f1a4bcbda99d882550d', 533, 50, '5.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (392, 'e6ecda8e6c1ff312efcd8a76037225ac', 535, 50, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (393, 'e6ecda8e6c1ff312efcd8a76037225ac', 536, 50, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (394, 'e6ecda8e6c1ff312efcd8a76037225ac', 537, 50, '3.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (395, 'c65857cc726ae5593fe99783edb39d37', 539, 50, '7.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (396, 'e16e6220e4195a46316b17e0b3bee63b', 540, 50, '11.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (397, '5cc8e1cd17c5fff55aef29508f363095', 541, 50, '13.mp4', '2024-12-03 17:22:19', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (398, '3aad1f3480ad0725f2a31e5127edbc6a', 545, 20, '1.mp4', '2024-12-29 23:14:30', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (399, 'e2268d52dea91b85e18fd7fe2b386452', 546, 20, '2.mp4', '2024-12-29 23:14:39', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (400, 'e6ecda8e6c1ff312efcd8a76037225ac', 547, 20, '3.mp4', '2024-12-29 23:14:59', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (401, 'ede081035592464b387a43de1e88e1e5', 548, 20, '4.mp4', '2024-12-29 23:15:48', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (402, 'e7b6689813479f1a4bcbda99d882550d', 549, 20, '5.mp4', '2024-12-29 23:16:00', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (403, 'ff141b6db970fb19debff6f006cde7e4', 550, 20, '6.mp4', '2024-12-29 23:16:21', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (404, 'c65857cc726ae5593fe99783edb39d37', 551, 20, '7.mp4', '2024-12-29 23:17:16', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (405, '878c02a0df04f94144ab808b1c4b74a0', 552, 20, '8.mp4', '2024-12-29 23:17:30', NULL, NULL);
INSERT INTO `teachplan_media` VALUES (406, '602edfc767f1a656612d8c9a9137d617', 553, 20, '9.mp4', '2024-12-29 23:17:46', NULL, NULL);
-- ----------------------------
-- Table structure for teachplan_work
-- ----------------------------
DROP TABLE IF EXISTS `teachplan_work`;
CREATE TABLE `teachplan_work`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `work_id` bigint NOT NULL COMMENT '作业信息标识',
  `work_title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作业标题',
  `teachplan_id` bigint NOT NULL COMMENT '课程计划标识',
  `course_id` bigint NULL DEFAULT NULL COMMENT '课程标识',
  `create_date` datetime NULL DEFAULT NULL,
  `course_pub_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teachplan_work
-- ----------------------------
INSERT INTO `teachplan_work` VALUES (1, 8, '测试作业1', 138, 79, '2021-12-27 10:35:15', NULL);

SET FOREIGN_KEY_CHECKS = 1;
