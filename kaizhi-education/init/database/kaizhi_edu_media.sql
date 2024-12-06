/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.101.65
 Source Server Type    : MySQL
 Source Server Version : 80026 (8.0.26)
 Source Host           : 192.168.101.65:3306
 Source Schema         : kaizhi_edu_media

 Target Server Type    : MySQL
 Target Server Version : 80026 (8.0.26)
 File Encoding         : 65001

 Date: 06/12/2024 15:50:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for media_files
-- ----------------------------
DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件id,md5值',
  `company_id` bigint NULL DEFAULT NULL COMMENT '机构ID',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `file_type` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型（图片、文档，视频）',
  `tags` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `bucket` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储目录',
  `file_path` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储路径',
  `file_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件id',
  `url` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '媒资文件访问地址',
  `username` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传人',
  `create_date` datetime NULL DEFAULT NULL COMMENT '上传时间',
  `change_date` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态,1:正常，0:不展示',
  `remark` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `audit_status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `audit_mind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `file_size` bigint NULL DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_fileid`(`file_id` ASC) USING BTREE COMMENT '文件id唯一索引 '
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '媒资信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media_files
-- ----------------------------
INSERT INTO `media_files` VALUES ('030f08ee81d384db123b68c4a02ddfb5', 1232141425, NULL, '徐明星.png', '001001', '课程文件', 'mediafiles', '2024/12/06/030f08ee81d384db123b68c4a02ddfb5.png', '030f08ee81d384db123b68c4a02ddfb5', '/mediafiles/2024/12/06/030f08ee81d384db123b68c4a02ddfb5.png', NULL, '2024-12-06 14:44:32', NULL, '1', NULL, '002003', NULL, 16905);
INSERT INTO `media_files` VALUES ('05800fbcf3c5136cdab2203ee87fc447', 1232141425, NULL, '汇编语言程序设计.png', '001001', '课程文件', 'mediafiles', '2024/12/06/05800fbcf3c5136cdab2203ee87fc447.png', '05800fbcf3c5136cdab2203ee87fc447', '/mediafiles/2024/12/06/05800fbcf3c5136cdab2203ee87fc447.png', NULL, '2024-12-06 14:28:08', NULL, '1', NULL, '002003', NULL, 236579);
INSERT INTO `media_files` VALUES ('0600327d459860fc5faf280bb36284fa', 1232141425, NULL, 'C++语言程序设计基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/0600327d459860fc5faf280bb36284fa.png', '0600327d459860fc5faf280bb36284fa', '/mediafiles/2024/12/06/0600327d459860fc5faf280bb36284fa.png', NULL, '2024-12-06 14:06:19', NULL, '1', NULL, '002003', NULL, 102222);
INSERT INTO `media_files` VALUES ('0639870f8dc872341a97ecf131dc1ce2', 1232141425, NULL, '龚光华.png', '001001', '课程文件', 'mediafiles', '2024/12/06/0639870f8dc872341a97ecf131dc1ce2.png', '0639870f8dc872341a97ecf131dc1ce2', '/mediafiles/2024/12/06/0639870f8dc872341a97ecf131dc1ce2.png', NULL, '2024-12-06 15:42:17', NULL, '1', NULL, '002003', NULL, 52478);
INSERT INTO `media_files` VALUES ('08337216087420580696b639116c4742', 1232141425, NULL, '邬晓钧.png', '001001', '课程文件', 'mediafiles', '2024/12/06/08337216087420580696b639116c4742.png', '08337216087420580696b639116c4742', '/mediafiles/2024/12/06/08337216087420580696b639116c4742.png', NULL, '2024-12-06 15:36:07', NULL, '1', NULL, '002003', NULL, 151220);
INSERT INTO `media_files` VALUES ('0a17b0bad9295a6240838be7fe035463', 1232141425, NULL, '邓俊辉.png', '001001', '课程文件', 'mediafiles', '2024/12/06/0a17b0bad9295a6240838be7fe035463.png', '0a17b0bad9295a6240838be7fe035463', '/mediafiles/2024/12/06/0a17b0bad9295a6240838be7fe035463.png', NULL, '2024-12-06 14:44:41', NULL, '1', NULL, '002003', NULL, 3427);
INSERT INTO `media_files` VALUES ('0a3902a739f26a0423e916ab415de726', 1232141425, NULL, '杜广龙.png', '001001', '课程文件', 'mediafiles', '2024/12/06/0a3902a739f26a0423e916ab415de726.png', '0a3902a739f26a0423e916ab415de726', '/mediafiles/2024/12/06/0a3902a739f26a0423e916ab415de726.png', NULL, '2024-12-06 15:38:24', NULL, '1', NULL, '002003', NULL, 93330);
INSERT INTO `media_files` VALUES ('11cfdc79c1645ce3a835e1664795dbad', 1232141425, NULL, '吴亮.png', '001001', '课程文件', 'mediafiles', '2024/12/06/11cfdc79c1645ce3a835e1664795dbad.png', '11cfdc79c1645ce3a835e1664795dbad', '/mediafiles/2024/12/06/11cfdc79c1645ce3a835e1664795dbad.png', NULL, '2024-12-06 15:37:36', NULL, '1', NULL, '002003', NULL, 81643);
INSERT INTO `media_files` VALUES ('20f3227258d5837b507be6267c54f928', 1232141425, NULL, '张佳.png', '001001', '课程文件', 'mediafiles', '2024/12/06/20f3227258d5837b507be6267c54f928.png', '20f3227258d5837b507be6267c54f928', '/mediafiles/2024/12/06/20f3227258d5837b507be6267c54f928.png', NULL, '2024-12-06 14:48:37', NULL, '1', NULL, '002003', NULL, 122310);
INSERT INTO `media_files` VALUES ('2393f414139578c47e2ea4ce77ef4331', 1232141425, NULL, '机器学习初步.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2393f414139578c47e2ea4ce77ef4331.png', '2393f414139578c47e2ea4ce77ef4331', '/mediafiles/2024/12/06/2393f414139578c47e2ea4ce77ef4331.png', NULL, '2024-12-06 14:32:57', NULL, '1', NULL, '002003', NULL, 57499);
INSERT INTO `media_files` VALUES ('2429b2ac8082b2ff4e66460ddae345ee', 1232141425, NULL, 'Office办公软件应用.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', '2429b2ac8082b2ff4e66460ddae345ee', '/mediafiles/2024/12/06/2429b2ac8082b2ff4e66460ddae345ee.png', NULL, '2024-12-06 14:15:33', NULL, '1', NULL, '002003', NULL, 103140);
INSERT INTO `media_files` VALUES ('254b7ae7db269063a019275025055b98', 1232141425, NULL, '陈宇峰.png', '001001', '课程文件', 'mediafiles', '2024/12/06/254b7ae7db269063a019275025055b98.png', '254b7ae7db269063a019275025055b98', '/mediafiles/2024/12/06/254b7ae7db269063a019275025055b98.png', NULL, '2024-12-06 15:37:24', NULL, '1', NULL, '002003', NULL, 9186);
INSERT INTO `media_files` VALUES ('2648962293faff64b90921f21cb7e5ec', 1232141425, NULL, '王瑀屏.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2648962293faff64b90921f21cb7e5ec.png', '2648962293faff64b90921f21cb7e5ec', '/mediafiles/2024/12/06/2648962293faff64b90921f21cb7e5ec.png', NULL, '2024-12-06 15:36:00', NULL, '1', NULL, '002003', NULL, 75550);
INSERT INTO `media_files` VALUES ('2677372143892fe256eac13ed71a9d76', 1232141425, NULL, '计算机文化基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2677372143892fe256eac13ed71a9d76.png', '2677372143892fe256eac13ed71a9d76', '/mediafiles/2024/12/06/2677372143892fe256eac13ed71a9d76.png', NULL, '2024-12-06 14:16:39', NULL, '1', NULL, '002003', NULL, 178062);
INSERT INTO `media_files` VALUES ('2684a84a868ebd25659bf76fc1aae1f6', 1232141425, NULL, '刘强.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2684a84a868ebd25659bf76fc1aae1f6.png', '2684a84a868ebd25659bf76fc1aae1f6', '/mediafiles/2024/12/06/2684a84a868ebd25659bf76fc1aae1f6.png', NULL, '2024-12-06 15:34:27', NULL, '1', NULL, '002003', NULL, 65677);
INSERT INTO `media_files` VALUES ('27f156eb6779af458b0648e6b0961021', 1232141425, NULL, '宋承继.png', '001001', '课程文件', 'mediafiles', '2024/12/06/27f156eb6779af458b0648e6b0961021.png', '27f156eb6779af458b0648e6b0961021', '/mediafiles/2024/12/06/27f156eb6779af458b0648e6b0961021.png', NULL, '2024-12-06 15:36:52', NULL, '1', NULL, '002003', NULL, 139932);
INSERT INTO `media_files` VALUES ('2902b5c91b4198dd157f5db344ae6ba2', 1232141425, NULL, '薛涛.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2902b5c91b4198dd157f5db344ae6ba2.png', '2902b5c91b4198dd157f5db344ae6ba2', '/mediafiles/2024/12/06/2902b5c91b4198dd157f5db344ae6ba2.png', NULL, '2024-12-06 15:42:11', NULL, '1', NULL, '002003', NULL, 56904);
INSERT INTO `media_files` VALUES ('29315b8b8c7ad4c1e6bbdc2527bf5984', 1232141425, NULL, 'JAVA程序设计进阶.png', '001001', '课程文件', 'mediafiles', '2024/12/06/29315b8b8c7ad4c1e6bbdc2527bf5984.png', '29315b8b8c7ad4c1e6bbdc2527bf5984', '/mediafiles/2024/12/06/29315b8b8c7ad4c1e6bbdc2527bf5984.png', NULL, '2024-12-06 14:33:09', NULL, '1', NULL, '002003', NULL, 134312);
INSERT INTO `media_files` VALUES ('2ad90bd1f40fc1fbcc559c2cbbe22984', 1232141425, NULL, '小程序慕课讲师.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2ad90bd1f40fc1fbcc559c2cbbe22984.png', '2ad90bd1f40fc1fbcc559c2cbbe22984', '/mediafiles/2024/12/06/2ad90bd1f40fc1fbcc559c2cbbe22984.png', NULL, '2024-12-06 15:38:38', NULL, '1', NULL, '002003', NULL, 3333);
INSERT INTO `media_files` VALUES ('2c02d5196f0db8bfc7c34e46f11eebef', 1232141425, NULL, '刘璘.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2c02d5196f0db8bfc7c34e46f11eebef.png', '2c02d5196f0db8bfc7c34e46f11eebef', '/mediafiles/2024/12/06/2c02d5196f0db8bfc7c34e46f11eebef.png', NULL, '2024-12-06 15:34:37', NULL, '1', NULL, '002003', NULL, 98422);
INSERT INTO `media_files` VALUES ('2c1bea77a09f7dd523e6ac4584371da4', 1232141425, NULL, '大数据平台核心技术.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2c1bea77a09f7dd523e6ac4584371da4.png', '2c1bea77a09f7dd523e6ac4584371da4', '/mediafiles/2024/12/06/2c1bea77a09f7dd523e6ac4584371da4.png', NULL, '2024-12-06 14:18:43', NULL, '1', NULL, '002003', NULL, 23208);
INSERT INTO `media_files` VALUES ('2c7c1020d1053947dcc126b928f788fd', 1232141425, NULL, '谢幸.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2c7c1020d1053947dcc126b928f788fd.png', '2c7c1020d1053947dcc126b928f788fd', '/mediafiles/2024/12/06/2c7c1020d1053947dcc126b928f788fd.png', NULL, '2024-12-06 15:40:19', NULL, '1', NULL, '002003', NULL, 6340);
INSERT INTO `media_files` VALUES ('2f55ccf456a72e1477e685ec92da7394', 1232141425, NULL, '李敏.png', '001001', '课程文件', 'mediafiles', '2024/12/06/2f55ccf456a72e1477e685ec92da7394.png', '2f55ccf456a72e1477e685ec92da7394', '/mediafiles/2024/12/06/2f55ccf456a72e1477e685ec92da7394.png', NULL, '2024-12-06 15:41:09', NULL, '1', NULL, '002003', NULL, 147742);
INSERT INTO `media_files` VALUES ('32aa41ff606ca5d55a3774e9fc330a69', 1232141425, NULL, '大数据系统基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', '32aa41ff606ca5d55a3774e9fc330a69', '/mediafiles/2024/12/06/32aa41ff606ca5d55a3774e9fc330a69.png', NULL, '2024-12-06 14:17:26', NULL, '1', NULL, '002003', NULL, 141703);
INSERT INTO `media_files` VALUES ('346c8adbfed9e31bd6eeaa8b12d30532', 1232141425, NULL, '陈康.png', '001001', '课程文件', 'mediafiles', '2024/12/06/346c8adbfed9e31bd6eeaa8b12d30532.png', '346c8adbfed9e31bd6eeaa8b12d30532', '/mediafiles/2024/12/06/346c8adbfed9e31bd6eeaa8b12d30532.png', NULL, '2024-12-06 15:36:26', NULL, '1', NULL, '002003', NULL, 23281);
INSERT INTO `media_files` VALUES ('35dfab732ff71c5a8ec9a25f2c56173e', 1232141425, NULL, '向勇.png', '001001', '课程文件', 'mediafiles', '2024/12/06/35dfab732ff71c5a8ec9a25f2c56173e.png', '35dfab732ff71c5a8ec9a25f2c56173e', '/mediafiles/2024/12/06/35dfab732ff71c5a8ec9a25f2c56173e.png', NULL, '2024-12-06 14:44:48', NULL, '1', NULL, '002003', NULL, 48814);
INSERT INTO `media_files` VALUES ('37c2dbb5b60aeb89bc9fb1ceed36bd02', 1232141425, NULL, 'C++语言程序设计进阶.png', '001001', '课程文件', 'mediafiles', '2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', '37c2dbb5b60aeb89bc9fb1ceed36bd02', '/mediafiles/2024/12/06/37c2dbb5b60aeb89bc9fb1ceed36bd02.png', NULL, '2024-12-06 14:13:00', NULL, '1', NULL, '002003', NULL, 104325);
INSERT INTO `media_files` VALUES ('393b40d55ca93f02cb707130403f689f', 1232141425, NULL, '数据结构(下).png', '001001', '课程文件', 'mediafiles', '2024/12/06/393b40d55ca93f02cb707130403f689f.png', '393b40d55ca93f02cb707130403f689f', '/mediafiles/2024/12/06/393b40d55ca93f02cb707130403f689f.png', NULL, '2024-12-06 14:07:08', NULL, '1', NULL, '002003', NULL, 229785);
INSERT INTO `media_files` VALUES ('3a0d5ab3659ee384e8eb84fe0338e93b', 1232141425, NULL, '杨居义.png', '001001', '课程文件', 'mediafiles', '2024/12/06/3a0d5ab3659ee384e8eb84fe0338e93b.png', '3a0d5ab3659ee384e8eb84fe0338e93b', '/mediafiles/2024/12/06/3a0d5ab3659ee384e8eb84fe0338e93b.png', NULL, '2024-12-06 15:40:48', NULL, '1', NULL, '002003', NULL, 68002);
INSERT INTO `media_files` VALUES ('3aad1f3480ad0725f2a31e5127edbc6a', 1232141425, NULL, '1.mp4', '001002', '课程视频', 'video', '3/a/3aad1f3480ad0725f2a31e5127edbc6a/3aad1f3480ad0725f2a31e5127edbc6a.mp4', '3aad1f3480ad0725f2a31e5127edbc6a', '/video/3/a/3aad1f3480ad0725f2a31e5127edbc6a/3aad1f3480ad0725f2a31e5127edbc6a.mp4', NULL, '2024-11-28 21:41:03', NULL, '1', '', '002003', NULL, 175554);
INSERT INTO `media_files` VALUES ('3b9cd60b75cfa8b54f34d578acb474e2', 1232141425, NULL, '姚文辉.png', '001001', '课程文件', 'mediafiles', '2024/12/06/3b9cd60b75cfa8b54f34d578acb474e2.png', '3b9cd60b75cfa8b54f34d578acb474e2', '/mediafiles/2024/12/06/3b9cd60b75cfa8b54f34d578acb474e2.png', NULL, '2024-12-06 15:37:56', NULL, '1', NULL, '002003', NULL, 144138);
INSERT INTO `media_files` VALUES ('3c499aada149d3273a0705ed314f5553', 1232141425, NULL, '王颖丽.png', '001001', '课程文件', 'mediafiles', '2024/12/06/3c499aada149d3273a0705ed314f5553.png', '3c499aada149d3273a0705ed314f5553', '/mediafiles/2024/12/06/3c499aada149d3273a0705ed314f5553.png', NULL, '2024-12-06 15:41:02', NULL, '1', NULL, '002003', NULL, 56839);
INSERT INTO `media_files` VALUES ('426f5545f588226f9492a649c7fed4e7', 1232141425, NULL, '袁华.png', '001001', '课程文件', 'mediafiles', '2024/12/06/426f5545f588226f9492a649c7fed4e7.png', '426f5545f588226f9492a649c7fed4e7', '/mediafiles/2024/12/06/426f5545f588226f9492a649c7fed4e7.png', NULL, '2024-12-06 15:38:16', NULL, '1', NULL, '002003', NULL, 55050);
INSERT INTO `media_files` VALUES ('443d1e32f9917934ea0ef481beefe7c8', 1232141425, NULL, '赵三元.png', '001001', '课程文件', 'mediafiles', '2024/12/06/443d1e32f9917934ea0ef481beefe7c8.png', '443d1e32f9917934ea0ef481beefe7c8', '/mediafiles/2024/12/06/443d1e32f9917934ea0ef481beefe7c8.png', NULL, '2024-12-06 15:37:30', NULL, '1', NULL, '002003', NULL, 40366);
INSERT INTO `media_files` VALUES ('47beacf7346cee49d57e94136b6d7b9d', 1232141425, NULL, '黄维通.png', '001001', '课程文件', 'mediafiles', '2024/12/06/47beacf7346cee49d57e94136b6d7b9d.png', '47beacf7346cee49d57e94136b6d7b9d', '/mediafiles/2024/12/06/47beacf7346cee49d57e94136b6d7b9d.png', NULL, '2024-12-06 15:38:09', NULL, '1', NULL, '002003', NULL, 9163);
INSERT INTO `media_files` VALUES ('480bf556cd3ef88903bd69bc04c6c94a', 1232141425, NULL, '李兴德.png', '001001', '课程文件', 'mediafiles', '2024/12/06/480bf556cd3ef88903bd69bc04c6c94a.png', '480bf556cd3ef88903bd69bc04c6c94a', '/mediafiles/2024/12/06/480bf556cd3ef88903bd69bc04c6c94a.png', NULL, '2024-12-06 14:47:47', NULL, '1', NULL, '002003', NULL, 15797);
INSERT INTO `media_files` VALUES ('480c655840310b73eb9518e258c05c86', 1232141425, NULL, 'ARM微控制器与嵌入式系统.png', '001001', '课程文件', 'mediafiles', '2024/12/06/480c655840310b73eb9518e258c05c86.png', '480c655840310b73eb9518e258c05c86', '/mediafiles/2024/12/06/480c655840310b73eb9518e258c05c86.png', NULL, '2024-12-06 14:37:29', NULL, '1', NULL, '002003', NULL, 102145);
INSERT INTO `media_files` VALUES ('48410f279d1cae4b551976a718c11717', 1232141425, NULL, '大学计算机——计算思维的视角.png', '001001', '课程文件', 'mediafiles', '2024/12/06/48410f279d1cae4b551976a718c11717.png', '48410f279d1cae4b551976a718c11717', '/mediafiles/2024/12/06/48410f279d1cae4b551976a718c11717.png', NULL, '2024-12-06 14:35:51', NULL, '1', NULL, '002003', NULL, 236052);
INSERT INTO `media_files` VALUES ('4aa18265a77055c26af183ed6d83bc7e', 1232141425, NULL, '喻梅.png', '001001', '课程文件', 'mediafiles', '2024/12/06/4aa18265a77055c26af183ed6d83bc7e.png', '4aa18265a77055c26af183ed6d83bc7e', '/mediafiles/2024/12/06/4aa18265a77055c26af183ed6d83bc7e.png', NULL, '2024-12-06 14:49:23', NULL, '1', NULL, '002003', NULL, 10930);
INSERT INTO `media_files` VALUES ('4be80e95f8886c4254512da11ead38ff', 1232141425, NULL, '黄震春.png', '001001', '课程文件', 'mediafiles', '2024/12/06/4be80e95f8886c4254512da11ead38ff.png', '4be80e95f8886c4254512da11ead38ff', '/mediafiles/2024/12/06/4be80e95f8886c4254512da11ead38ff.png', NULL, '2024-12-06 14:50:23', NULL, '1', NULL, '002003', NULL, 4286);
INSERT INTO `media_files` VALUES ('4e3d2357bef5a865815f11a560796f13', 1232141425, NULL, '王振波.png', '001001', '课程文件', 'mediafiles', '2024/12/06/4e3d2357bef5a865815f11a560796f13.png', '4e3d2357bef5a865815f11a560796f13', '/mediafiles/2024/12/06/4e3d2357bef5a865815f11a560796f13.png', NULL, '2024-12-06 15:36:32', NULL, '1', NULL, '002003', NULL, 688846);
INSERT INTO `media_files` VALUES ('54e2d0f3e4b052ef4a098c29363569de', 1232141425, NULL, '翟季冬.png', '001001', '课程文件', 'mediafiles', '2024/12/06/54e2d0f3e4b052ef4a098c29363569de.png', '54e2d0f3e4b052ef4a098c29363569de', '/mediafiles/2024/12/06/54e2d0f3e4b052ef4a098c29363569de.png', NULL, '2024-12-06 15:38:52', NULL, '1', NULL, '002003', NULL, 26566);
INSERT INTO `media_files` VALUES ('568e51446d04542d1dd84ae1edbba866', 1232141425, NULL, '徐天一.png', '001001', '课程文件', 'mediafiles', '2024/12/06/568e51446d04542d1dd84ae1edbba866.png', '568e51446d04542d1dd84ae1edbba866', '/mediafiles/2024/12/06/568e51446d04542d1dd84ae1edbba866.png', NULL, '2024-12-06 14:49:31', NULL, '1', NULL, '002003', NULL, 44644);
INSERT INTO `media_files` VALUES ('583f99ca791f6b5f3dfa74f5f3020206', 1232141425, NULL, '许斌.png', '001001', '课程文件', 'mediafiles', '2024/12/06/583f99ca791f6b5f3dfa74f5f3020206.png', '583f99ca791f6b5f3dfa74f5f3020206', '/mediafiles/2024/12/06/583f99ca791f6b5f3dfa74f5f3020206.png', NULL, '2024-12-06 14:50:09', NULL, '1', NULL, '002003', NULL, 172668);
INSERT INTO `media_files` VALUES ('5954aa449cf56ada35ee67a53ee75a71', 1232141425, NULL, '大数据机器学习.png', '001001', '课程文件', 'mediafiles', '2024/12/06/5954aa449cf56ada35ee67a53ee75a71.png', '5954aa449cf56ada35ee67a53ee75a71', '/mediafiles/2024/12/06/5954aa449cf56ada35ee67a53ee75a71.png', NULL, '2024-12-06 14:33:22', NULL, '1', NULL, '002003', NULL, 182568);
INSERT INTO `media_files` VALUES ('5ab5fcebc724153560cd83f356ba2233', 1232141425, NULL, '李军.png', '001001', '课程文件', 'mediafiles', '2024/12/06/5ab5fcebc724153560cd83f356ba2233.png', '5ab5fcebc724153560cd83f356ba2233', '/mediafiles/2024/12/06/5ab5fcebc724153560cd83f356ba2233.png', NULL, '2024-12-06 15:34:45', NULL, '1', NULL, '002003', NULL, 65887);
INSERT INTO `media_files` VALUES ('5ba1227b86e0b02cca3f95fe2e195fc8', 1232141425, NULL, '许志良.png', '001001', '课程文件', 'mediafiles', '2024/12/06/5ba1227b86e0b02cca3f95fe2e195fc8.png', '5ba1227b86e0b02cca3f95fe2e195fc8', '/mediafiles/2024/12/06/5ba1227b86e0b02cca3f95fe2e195fc8.png', NULL, '2024-12-06 15:39:34', NULL, '1', NULL, '002003', NULL, 141356);
INSERT INTO `media_files` VALUES ('5cc8e1cd17c5fff55aef29508f363095', 1232141425, NULL, '13.mp4', '001002', '课程视频', 'video', '5/c/5cc8e1cd17c5fff55aef29508f363095/5cc8e1cd17c5fff55aef29508f363095.mp4', '5cc8e1cd17c5fff55aef29508f363095', '/video/5/c/5cc8e1cd17c5fff55aef29508f363095/5cc8e1cd17c5fff55aef29508f363095.mp4', NULL, '2024-11-28 21:55:57', NULL, '1', '', '002003', NULL, 647858);
INSERT INTO `media_files` VALUES ('5e5dd862f1e9be6830db9debd33fe23f', 1232141425, NULL, '洪小文.png', '001001', '课程文件', 'mediafiles', '2024/12/06/5e5dd862f1e9be6830db9debd33fe23f.png', '5e5dd862f1e9be6830db9debd33fe23f', '/mediafiles/2024/12/06/5e5dd862f1e9be6830db9debd33fe23f.png', NULL, '2024-12-06 15:40:06', NULL, '1', NULL, '002003', NULL, 9047);
INSERT INTO `media_files` VALUES ('602edfc767f1a656612d8c9a9137d617', 1232141425, NULL, '9.mp4', '001002', '课程视频', 'video', '6/0/602edfc767f1a656612d8c9a9137d617/602edfc767f1a656612d8c9a9137d617.mp4', '602edfc767f1a656612d8c9a9137d617', '/video/6/0/602edfc767f1a656612d8c9a9137d617/602edfc767f1a656612d8c9a9137d617.mp4', NULL, '2024-11-28 21:55:45', NULL, '1', '', '002003', NULL, 394330);
INSERT INTO `media_files` VALUES ('61d2476f96609971f6d57dde0bec9c4d', 1232141425, NULL, '卫春芳.png', '001001', '课程文件', 'mediafiles', '2024/12/06/61d2476f96609971f6d57dde0bec9c4d.png', '61d2476f96609971f6d57dde0bec9c4d', '/mediafiles/2024/12/06/61d2476f96609971f6d57dde0bec9c4d.png', NULL, '2024-12-06 14:49:53', NULL, '1', NULL, '002003', NULL, 52805);
INSERT INTO `media_files` VALUES ('61f56a1db2290f6734f8dfa1e252b821', 1232141425, NULL, '谢宝友.png', '001001', '课程文件', 'mediafiles', '2024/12/06/61f56a1db2290f6734f8dfa1e252b821.png', '61f56a1db2290f6734f8dfa1e252b821', '/mediafiles/2024/12/06/61f56a1db2290f6734f8dfa1e252b821.png', NULL, '2024-12-06 15:39:48', NULL, '1', NULL, '002003', NULL, 79171);
INSERT INTO `media_files` VALUES ('622b0fc5b2f467fdf2565f2384cb6b61', 1232141425, NULL, '高裴裴.png', '001001', '课程文件', 'mediafiles', '2024/12/06/622b0fc5b2f467fdf2565f2384cb6b61.png', '622b0fc5b2f467fdf2565f2384cb6b61', '/mediafiles/2024/12/06/622b0fc5b2f467fdf2565f2384cb6b61.png', NULL, '2024-12-06 15:41:44', NULL, '1', NULL, '002003', NULL, 33688);
INSERT INTO `media_files` VALUES ('642f53fe9edb78329c31550d5dd9fc24', 1232141425, NULL, '组合数学.png', '001001', '课程文件', 'mediafiles', '2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', '642f53fe9edb78329c31550d5dd9fc24', '/mediafiles/2024/12/06/642f53fe9edb78329c31550d5dd9fc24.png', NULL, '2024-12-06 14:18:02', NULL, '1', NULL, '002003', NULL, 30644);
INSERT INTO `media_files` VALUES ('66c6ea12022ab57fdfd85f016c274edc', 1232141425, NULL, '王建民.png', '001001', '课程文件', 'mediafiles', '2024/12/06/66c6ea12022ab57fdfd85f016c274edc.png', '66c6ea12022ab57fdfd85f016c274edc', '/mediafiles/2024/12/06/66c6ea12022ab57fdfd85f016c274edc.png', NULL, '2024-12-06 15:36:13', NULL, '1', NULL, '002003', NULL, 700372);
INSERT INTO `media_files` VALUES ('66e5d6a9c4f34b3a4f84feb2848d3923', 1232141425, NULL, '沈鑫剡.png', '001001', '课程文件', 'mediafiles', '2024/12/06/66e5d6a9c4f34b3a4f84feb2848d3923.png', '66e5d6a9c4f34b3a4f84feb2848d3923', '/mediafiles/2024/12/06/66e5d6a9c4f34b3a4f84feb2848d3923.png', NULL, '2024-12-06 14:47:29', NULL, '1', NULL, '002003', NULL, 21820);
INSERT INTO `media_files` VALUES ('66f89d5d475d4675087f8b48504b7aa2', 1232141425, NULL, '面向对象程序设计（C++）.png', '001001', '课程文件', 'mediafiles', '2024/12/06/66f89d5d475d4675087f8b48504b7aa2.png', '66f89d5d475d4675087f8b48504b7aa2', '/mediafiles/2024/12/06/66f89d5d475d4675087f8b48504b7aa2.png', NULL, '2024-12-06 14:33:35', NULL, '1', NULL, '002003', NULL, 201392);
INSERT INTO `media_files` VALUES ('6d07cbf26ea0cd522e3e59872730499c', 1232141425, NULL, '俞海英.png', '001001', '课程文件', 'mediafiles', '2024/12/06/6d07cbf26ea0cd522e3e59872730499c.png', '6d07cbf26ea0cd522e3e59872730499c', '/mediafiles/2024/12/06/6d07cbf26ea0cd522e3e59872730499c.png', NULL, '2024-12-06 14:47:38', NULL, '1', NULL, '002003', NULL, 15380);
INSERT INTO `media_files` VALUES ('6fae72c3c7384844790c911c0ee8e2bb', 1232141425, NULL, '朱怀忠.png', '001001', '课程文件', 'mediafiles', '2024/12/06/6fae72c3c7384844790c911c0ee8e2bb.png', '6fae72c3c7384844790c911c0ee8e2bb', '/mediafiles/2024/12/06/6fae72c3c7384844790c911c0ee8e2bb.png', NULL, '2024-12-06 15:34:59', NULL, '1', NULL, '002003', NULL, 36660);
INSERT INTO `media_files` VALUES ('701b9289b467c0fdb608a65ac5dec016', 1232141425, NULL, '10.mp4', '001002', '课程视频', 'video', '7/0/701b9289b467c0fdb608a65ac5dec016/701b9289b467c0fdb608a65ac5dec016.mp4', '701b9289b467c0fdb608a65ac5dec016', '/video/7/0/701b9289b467c0fdb608a65ac5dec016/701b9289b467c0fdb608a65ac5dec016.mp4', NULL, '2024-11-28 21:55:48', NULL, '1', '', '002003', NULL, 504316);
INSERT INTO `media_files` VALUES ('70f0123fdccb39050f673b481548cbcf', 1232141425, NULL, '网络技术与应用.png', '001001', '课程文件', 'mediafiles', '2024/12/06/70f0123fdccb39050f673b481548cbcf.png', '70f0123fdccb39050f673b481548cbcf', '/mediafiles/2024/12/06/70f0123fdccb39050f673b481548cbcf.png', NULL, '2024-12-06 14:07:57', NULL, '1', NULL, '002003', NULL, 198493);
INSERT INTO `media_files` VALUES ('71c952ca6cb8e676ea87b91af5e71fff', 1232141425, NULL, '于瑞国.png', '001001', '课程文件', 'mediafiles', '2024/12/06/71c952ca6cb8e676ea87b91af5e71fff.png', '71c952ca6cb8e676ea87b91af5e71fff', '/mediafiles/2024/12/06/71c952ca6cb8e676ea87b91af5e71fff.png', NULL, '2024-12-06 14:49:45', NULL, '1', NULL, '002003', NULL, 48157);
INSERT INTO `media_files` VALUES ('7349fc0cb1539b7d0009767ab6f03d3c', 1232141425, NULL, 'VC++面向对象与可视化程序设计（下）：MFC编程基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/7349fc0cb1539b7d0009767ab6f03d3c.png', '7349fc0cb1539b7d0009767ab6f03d3c', '/mediafiles/2024/12/06/7349fc0cb1539b7d0009767ab6f03d3c.png', NULL, '2024-12-06 14:27:00', NULL, '1', NULL, '002003', NULL, 56546);
INSERT INTO `media_files` VALUES ('7437d4ce41585dee5c6e7311e6db456c', 1232141425, NULL, '物联网概论.png', '001001', '课程文件', 'mediafiles', '2024/12/06/7437d4ce41585dee5c6e7311e6db456c.png', '7437d4ce41585dee5c6e7311e6db456c', '/mediafiles/2024/12/06/7437d4ce41585dee5c6e7311e6db456c.png', NULL, '2024-12-06 14:30:00', NULL, '1', NULL, '002003', NULL, 168757);
INSERT INTO `media_files` VALUES ('7c6cb2c70cc4d29adfa985e876837986', 1232141425, NULL, 'C程序设计案例教程（基础）.png', '001001', '课程文件', 'mediafiles', '2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', '7c6cb2c70cc4d29adfa985e876837986', '/mediafiles/2024/12/06/7c6cb2c70cc4d29adfa985e876837986.png', NULL, '2024-12-06 14:13:30', NULL, '1', NULL, '002003', NULL, 90122);
INSERT INTO `media_files` VALUES ('7dc69cc44442f5420805a786a1e29577', 1232141425, NULL, '王文敏.png', '001001', '课程文件', 'mediafiles', '2024/12/06/7dc69cc44442f5420805a786a1e29577.png', '7dc69cc44442f5420805a786a1e29577', '/mediafiles/2024/12/06/7dc69cc44442f5420805a786a1e29577.png', NULL, '2024-12-06 14:48:26', NULL, '1', NULL, '002003', NULL, 39961);
INSERT INTO `media_files` VALUES ('7e401f3152a8cb2ba2af39efc19c8aea', 1232141425, NULL, '大学计算机基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', '7e401f3152a8cb2ba2af39efc19c8aea', '/mediafiles/2024/12/06/7e401f3152a8cb2ba2af39efc19c8aea.png', NULL, '2024-12-06 14:16:55', NULL, '1', NULL, '002003', NULL, 829197);
INSERT INTO `media_files` VALUES ('818283c189ada56bce35dd5783192581', 1232141425, NULL, 'C程序设计案例教程（进阶）.png', '001001', '课程文件', 'mediafiles', '2024/12/06/818283c189ada56bce35dd5783192581.png', '818283c189ada56bce35dd5783192581', '/mediafiles/2024/12/06/818283c189ada56bce35dd5783192581.png', NULL, '2024-12-06 14:15:56', NULL, '1', NULL, '002003', NULL, 83680);
INSERT INTO `media_files` VALUES ('836b4a8452f5e1defddf7724a1f2714d', 1232141425, NULL, '蔡庆琼.png', '001001', '课程文件', 'mediafiles', '2024/12/06/836b4a8452f5e1defddf7724a1f2714d.png', '836b4a8452f5e1defddf7724a1f2714d', '/mediafiles/2024/12/06/836b4a8452f5e1defddf7724a1f2714d.png', NULL, '2024-12-06 15:41:23', NULL, '1', NULL, '002003', NULL, 157777);
INSERT INTO `media_files` VALUES ('878c02a0df04f94144ab808b1c4b74a0', 1232141425, NULL, '8.mp4', '001002', '课程视频', 'video', '8/7/878c02a0df04f94144ab808b1c4b74a0/878c02a0df04f94144ab808b1c4b74a0.mp4', '878c02a0df04f94144ab808b1c4b74a0', '/video/8/7/878c02a0df04f94144ab808b1c4b74a0/878c02a0df04f94144ab808b1c4b74a0.mp4', NULL, '2024-11-28 21:55:42', NULL, '1', '', '002003', NULL, 410012);
INSERT INTO `media_files` VALUES ('8872bb20d9026e871f1c4fd108243dc2', 1232141425, NULL, '史巧硕.png', '001001', '课程文件', 'mediafiles', '2024/12/06/8872bb20d9026e871f1c4fd108243dc2.png', '8872bb20d9026e871f1c4fd108243dc2', '/mediafiles/2024/12/06/8872bb20d9026e871f1c4fd108243dc2.png', NULL, '2024-12-06 15:34:53', NULL, '1', NULL, '002003', NULL, 32034);
INSERT INTO `media_files` VALUES ('8a753082529f7d63f577f5575d737818', 1232141425, NULL, '刘霞林.png', '001001', '课程文件', 'mediafiles', '2024/12/06/8a753082529f7d63f577f5575d737818.png', '8a753082529f7d63f577f5575d737818', '/mediafiles/2024/12/06/8a753082529f7d63f577f5575d737818.png', NULL, '2024-12-06 15:39:57', NULL, '1', NULL, '002003', NULL, 76732);
INSERT INTO `media_files` VALUES ('8af00247f22a68105b4e02abbcb0294f', 1232141425, NULL, 'Java程序设计.png', '001001', '课程文件', 'mediafiles', '2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', '8af00247f22a68105b4e02abbcb0294f', '/mediafiles/2024/12/06/8af00247f22a68105b4e02abbcb0294f.png', NULL, '2024-12-06 14:07:39', NULL, '1', NULL, '002003', NULL, 195841);
INSERT INTO `media_files` VALUES ('8b2d2afa81bdc0aac6686be59f81a2f3', 1232141425, NULL, '数据结构(上).png', '001001', '课程文件', 'mediafiles', '2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', '8b2d2afa81bdc0aac6686be59f81a2f3', '/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png', NULL, '2024-12-06 14:06:45', NULL, '1', NULL, '002003', NULL, 232961);
INSERT INTO `media_files` VALUES ('8bd29f2e34fdc2e4db68f8fb98734f4f', 1232141425, NULL, '马钦.png', '001001', '课程文件', 'mediafiles', '2024/12/06/8bd29f2e34fdc2e4db68f8fb98734f4f.png', '8bd29f2e34fdc2e4db68f8fb98734f4f', '/mediafiles/2024/12/06/8bd29f2e34fdc2e4db68f8fb98734f4f.png', NULL, '2024-12-06 14:49:15', NULL, '1', NULL, '002003', NULL, 114550);
INSERT INTO `media_files` VALUES ('90317e2712c87e7b7daba2b985984cf8', 1232141425, NULL, '计算几何.png', '001001', '课程文件', 'mediafiles', '2024/12/06/90317e2712c87e7b7daba2b985984cf8.png', '90317e2712c87e7b7daba2b985984cf8', '/mediafiles/2024/12/06/90317e2712c87e7b7daba2b985984cf8.png', NULL, '2024-12-06 14:34:41', NULL, '1', NULL, '002003', NULL, 49253);
INSERT INTO `media_files` VALUES ('950ecca9e38f820ca91c67314f834210', 1232141425, NULL, '微软亚洲研究院大数据系列讲座.png', '001001', '课程文件', 'mediafiles', '2024/12/06/950ecca9e38f820ca91c67314f834210.png', '950ecca9e38f820ca91c67314f834210', '/mediafiles/2024/12/06/950ecca9e38f820ca91c67314f834210.png', NULL, '2024-12-06 14:35:08', NULL, '1', NULL, '002003', NULL, 215314);
INSERT INTO `media_files` VALUES ('95fcfd0710e93f40b8dc9f73d90a5ee7', 1232141425, NULL, '李超.png', '001001', '课程文件', 'mediafiles', '2024/12/06/95fcfd0710e93f40b8dc9f73d90a5ee7.png', '95fcfd0710e93f40b8dc9f73d90a5ee7', '/mediafiles/2024/12/06/95fcfd0710e93f40b8dc9f73d90a5ee7.png', NULL, '2024-12-06 14:44:22', NULL, '1', NULL, '002003', NULL, 27808);
INSERT INTO `media_files` VALUES ('96a8bdbd5bf857a2ed1380c8c363e156', 1232141425, NULL, '周志华.png', '001001', '课程文件', 'mediafiles', '2024/12/06/96a8bdbd5bf857a2ed1380c8c363e156.png', '96a8bdbd5bf857a2ed1380c8c363e156', '/mediafiles/2024/12/06/96a8bdbd5bf857a2ed1380c8c363e156.png', NULL, '2024-12-06 14:50:02', NULL, '1', NULL, '002003', NULL, 57209);
INSERT INTO `media_files` VALUES ('988e09c449067357dbdd24b1575aaa77', 1232141425, NULL, '姚瑞霞.png', '001001', '课程文件', 'mediafiles', '2024/12/06/988e09c449067357dbdd24b1575aaa77.png', '988e09c449067357dbdd24b1575aaa77', '/mediafiles/2024/12/06/988e09c449067357dbdd24b1575aaa77.png', NULL, '2024-12-06 15:35:19', NULL, '1', NULL, '002003', NULL, 54574);
INSERT INTO `media_files` VALUES ('99c1f79c9f735cd4dda92394f75d8a5a', 1232141425, NULL, '刘欣欣.png', '001001', '课程文件', 'mediafiles', '2024/12/06/99c1f79c9f735cd4dda92394f75d8a5a.png', '99c1f79c9f735cd4dda92394f75d8a5a', '/mediafiles/2024/12/06/99c1f79c9f735cd4dda92394f75d8a5a.png', NULL, '2024-12-06 15:35:44', NULL, '1', NULL, '002003', NULL, 111567);
INSERT INTO `media_files` VALUES ('99fc990919623683e1865c8203e2e857', 1232141425, NULL, '徐红云.png', '001001', '课程文件', 'mediafiles', '2024/12/06/99fc990919623683e1865c8203e2e857.png', '99fc990919623683e1865c8203e2e857', '/mediafiles/2024/12/06/99fc990919623683e1865c8203e2e857.png', NULL, '2024-12-06 15:35:38', NULL, '1', NULL, '002003', NULL, 151215);
INSERT INTO `media_files` VALUES ('9a71ea46156ca8bd5ee64e497d8c62de', 1232141425, NULL, '算法设计与分析.png', '001001', '课程文件', 'mediafiles', '2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', '9a71ea46156ca8bd5ee64e497d8c62de', '/mediafiles/2024/12/06/9a71ea46156ca8bd5ee64e497d8c62de.png', NULL, '2024-12-06 14:17:46', NULL, '1', NULL, '002003', NULL, 123486);
INSERT INTO `media_files` VALUES ('9c90ded41ae54aa09b3fb80b04012c64', 1232141425, NULL, '网络安全概述.png', '001001', '课程文件', 'mediafiles', '2024/12/06/9c90ded41ae54aa09b3fb80b04012c64.png', '9c90ded41ae54aa09b3fb80b04012c64', '/mediafiles/2024/12/06/9c90ded41ae54aa09b3fb80b04012c64.png', NULL, '2024-12-06 14:35:38', NULL, '1', NULL, '002003', NULL, 37425);
INSERT INTO `media_files` VALUES ('9d73caa918009bbcbf6f97a60d70eb52', 1232141425, NULL, '程序设计基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', '9d73caa918009bbcbf6f97a60d70eb52', '/mediafiles/2024/12/06/9d73caa918009bbcbf6f97a60d70eb52.png', NULL, '2024-12-06 14:17:12', NULL, '1', NULL, '002003', NULL, 123435);
INSERT INTO `media_files` VALUES ('9f276b2c04e9739d6741993b68ddda59', 1232141425, NULL, '陈莉君.png', '001001', '课程文件', 'mediafiles', '2024/12/06/9f276b2c04e9739d6741993b68ddda59.png', '9f276b2c04e9739d6741993b68ddda59', '/mediafiles/2024/12/06/9f276b2c04e9739d6741993b68ddda59.png', NULL, '2024-12-06 15:39:40', NULL, '1', NULL, '002003', NULL, 595245);
INSERT INTO `media_files` VALUES ('9f616d09ab280930a976dc0090197439', 1232141425, NULL, '人工智能原理.png', '001001', '课程文件', 'mediafiles', '2024/12/06/9f616d09ab280930a976dc0090197439.png', '9f616d09ab280930a976dc0090197439', '/mediafiles/2024/12/06/9f616d09ab280930a976dc0090197439.png', NULL, '2024-12-06 14:09:42', NULL, '1', NULL, '002003', NULL, 94646);
INSERT INTO `media_files` VALUES ('a2862c7d51f52931a1c92624c4fdaf99', 1232141425, NULL, '大数据技术与应用.png', '001001', '课程文件', 'mediafiles', '2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', 'a2862c7d51f52931a1c92624c4fdaf99', '/mediafiles/2024/12/06/a2862c7d51f52931a1c92624c4fdaf99.png', NULL, '2024-12-06 14:15:17', NULL, '1', NULL, '002003', NULL, 363909);
INSERT INTO `media_files` VALUES ('a2ab7506286ee54bcb11b72b8ca04dd1', 1232141425, NULL, '陶阳宇.png', '001001', '课程文件', 'mediafiles', '2024/12/06/a2ab7506286ee54bcb11b72b8ca04dd1.png', 'a2ab7506286ee54bcb11b72b8ca04dd1', '/mediafiles/2024/12/06/a2ab7506286ee54bcb11b72b8ca04dd1.png', NULL, '2024-12-06 15:38:03', NULL, '1', NULL, '002003', NULL, 253400);
INSERT INTO `media_files` VALUES ('a5f00af064b490a7a5776f475de6891e', 1232141425, NULL, '王坤.png', '001001', '课程文件', 'mediafiles', '2024/12/06/a5f00af064b490a7a5776f475de6891e.png', 'a5f00af064b490a7a5776f475de6891e', '/mediafiles/2024/12/06/a5f00af064b490a7a5776f475de6891e.png', NULL, '2024-12-06 15:36:58', NULL, '1', NULL, '002003', NULL, 274585);
INSERT INTO `media_files` VALUES ('a9b8151d85fbffc2f30ed0bca65554f3', 1232141425, NULL, '艾新波.png', '001001', '课程文件', 'mediafiles', '2024/12/06/a9b8151d85fbffc2f30ed0bca65554f3.png', 'a9b8151d85fbffc2f30ed0bca65554f3', '/mediafiles/2024/12/06/a9b8151d85fbffc2f30ed0bca65554f3.png', NULL, '2024-12-06 15:37:10', NULL, '1', NULL, '002003', NULL, 327136);
INSERT INTO `media_files` VALUES ('adf267d7a0cf140ee20b854bfd72c843', 1232141425, NULL, '蒲敏.png', '001001', '课程文件', 'mediafiles', '2024/12/06/adf267d7a0cf140ee20b854bfd72c843.png', 'adf267d7a0cf140ee20b854bfd72c843', '/mediafiles/2024/12/06/adf267d7a0cf140ee20b854bfd72c843.png', NULL, '2024-12-06 15:40:55', NULL, '1', NULL, '002003', NULL, 71533);
INSERT INTO `media_files` VALUES ('ae680c72a87716070599991cfd4e4d3e', 1232141425, NULL, '李龙龙.png', '001001', '课程文件', 'mediafiles', '2024/12/06/ae680c72a87716070599991cfd4e4d3e.png', 'ae680c72a87716070599991cfd4e4d3e', '/mediafiles/2024/12/06/ae680c72a87716070599991cfd4e4d3e.png', NULL, '2024-12-06 15:37:04', NULL, '1', NULL, '002003', NULL, 79330);
INSERT INTO `media_files` VALUES ('af1ed244eb793219248a1e0313b6692d', 1232141425, NULL, '纪平.png', '001001', '课程文件', 'mediafiles', '2024/12/06/af1ed244eb793219248a1e0313b6692d.png', 'af1ed244eb793219248a1e0313b6692d', '/mediafiles/2024/12/06/af1ed244eb793219248a1e0313b6692d.png', NULL, '2024-12-06 15:40:34', NULL, '1', NULL, '002003', NULL, 72175);
INSERT INTO `media_files` VALUES ('afc4ba90a64dc71a4a4c83a1684c4a8e', 1232141425, NULL, 'Python程序设计基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/afc4ba90a64dc71a4a4c83a1684c4a8e.png', 'afc4ba90a64dc71a4a4c83a1684c4a8e', '/mediafiles/2024/12/06/afc4ba90a64dc71a4a4c83a1684c4a8e.png', NULL, '2024-12-06 14:34:10', NULL, '1', NULL, '002003', NULL, 110120);
INSERT INTO `media_files` VALUES ('b1c699c30fc5ab5a7bbcaab88ac42261', 1232141425, NULL, '袁春.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b1c699c30fc5ab5a7bbcaab88ac42261.png', 'b1c699c30fc5ab5a7bbcaab88ac42261', '/mediafiles/2024/12/06/b1c699c30fc5ab5a7bbcaab88ac42261.png', NULL, '2024-12-06 14:50:16', NULL, '1', NULL, '002003', NULL, 171080);
INSERT INTO `media_files` VALUES ('b2b001bbb956f25ac8129a1500d3ed89', 1232141425, NULL, '学做小程序——基础篇.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b2b001bbb956f25ac8129a1500d3ed89.png', 'b2b001bbb956f25ac8129a1500d3ed89', '/mediafiles/2024/12/06/b2b001bbb956f25ac8129a1500d3ed89.png', NULL, '2024-12-06 14:27:52', NULL, '1', NULL, '002003', NULL, 151354);
INSERT INTO `media_files` VALUES ('b3a454feeef5efa50e4e49c268ce7af1', 1232141425, NULL, '操作系统.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', 'b3a454feeef5efa50e4e49c268ce7af1', '/mediafiles/2024/12/06/b3a454feeef5efa50e4e49c268ce7af1.png', NULL, '2024-12-06 14:07:24', NULL, '1', NULL, '002003', NULL, 12734);
INSERT INTO `media_files` VALUES ('b3c7f17f1516ed6acc90f0b7c7ac9ab2', 1232141425, NULL, '康介恢.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b3c7f17f1516ed6acc90f0b7c7ac9ab2.png', 'b3c7f17f1516ed6acc90f0b7c7ac9ab2', '/mediafiles/2024/12/06/b3c7f17f1516ed6acc90f0b7c7ac9ab2.png', NULL, '2024-12-06 15:41:50', NULL, '1', NULL, '002003', NULL, 76338);
INSERT INTO `media_files` VALUES ('b5501bacc01b974cc1e9d1da12cbaab0', 1232141425, NULL, '薛静锋.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b5501bacc01b974cc1e9d1da12cbaab0.png', 'b5501bacc01b974cc1e9d1da12cbaab0', '/mediafiles/2024/12/06/b5501bacc01b974cc1e9d1da12cbaab0.png', NULL, '2024-12-06 15:40:27', NULL, '1', NULL, '002003', NULL, 17902);
INSERT INTO `media_files` VALUES ('b5efc74e1548d3a870749a570368dccc', 1232141425, NULL, '计算机网络.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b5efc74e1548d3a870749a570368dccc.png', 'b5efc74e1548d3a870749a570368dccc', '/mediafiles/2024/12/06/b5efc74e1548d3a870749a570368dccc.png', NULL, '2024-12-06 14:27:35', NULL, '1', NULL, '002003', NULL, 130260);
INSERT INTO `media_files` VALUES ('b73aadd177344b8b6b12540142c6c6a2', 1232141425, NULL, '基于Linux的C++.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b73aadd177344b8b6b12540142c6c6a2.png', 'b73aadd177344b8b6b12540142c6c6a2', '/mediafiles/2024/12/06/b73aadd177344b8b6b12540142c6c6a2.png', NULL, '2024-12-06 14:29:15', NULL, '1', NULL, '002003', NULL, 36851);
INSERT INTO `media_files` VALUES ('b8f4e6cf541c4654a5cc03251c277ea8', 1232141425, NULL, '单片机原理及应用.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b8f4e6cf541c4654a5cc03251c277ea8.png', 'b8f4e6cf541c4654a5cc03251c277ea8', '/mediafiles/2024/12/06/b8f4e6cf541c4654a5cc03251c277ea8.png', NULL, '2024-12-06 14:36:04', NULL, '1', NULL, '002003', NULL, 684705);
INSERT INTO `media_files` VALUES ('b90f5b344dc466d8636797db6d33efb7', 1232141425, NULL, '赵文博.png', '001001', '课程文件', 'mediafiles', '2024/12/06/b90f5b344dc466d8636797db6d33efb7.png', 'b90f5b344dc466d8636797db6d33efb7', '/mediafiles/2024/12/06/b90f5b344dc466d8636797db6d33efb7.png', NULL, '2024-12-06 15:37:42', NULL, '1', NULL, '002003', NULL, 49771);
INSERT INTO `media_files` VALUES ('bf42b5a021da2fd3958cbe25729a229a', 1232141425, NULL, '软件工程.png', '001001', '课程文件', 'mediafiles', '2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', 'bf42b5a021da2fd3958cbe25729a229a', '/mediafiles/2024/12/06/bf42b5a021da2fd3958cbe25729a229a.png', NULL, '2024-12-06 14:13:46', NULL, '1', NULL, '002003', NULL, 33473);
INSERT INTO `media_files` VALUES ('c01c665b9537d464c09eeac19245ece6', 1232141425, NULL, '曹晓叶.png', '001001', '课程文件', 'mediafiles', '2024/12/06/c01c665b9537d464c09eeac19245ece6.png', 'c01c665b9537d464c09eeac19245ece6', '/mediafiles/2024/12/06/c01c665b9537d464c09eeac19245ece6.png', NULL, '2024-12-06 15:35:50', NULL, '1', NULL, '002003', NULL, 67194);
INSERT INTO `media_files` VALUES ('c08eceb4982899bb2c979dac8277bbee', 1232141425, NULL, '李凤霞.png', '001001', '课程文件', 'mediafiles', '2024/12/06/c08eceb4982899bb2c979dac8277bbee.png', 'c08eceb4982899bb2c979dac8277bbee', '/mediafiles/2024/12/06/c08eceb4982899bb2c979dac8277bbee.png', NULL, '2024-12-06 15:37:16', NULL, '1', NULL, '002003', NULL, 10013);
INSERT INTO `media_files` VALUES ('c65857cc726ae5593fe99783edb39d37', 1232141425, NULL, '7.mp4', '001002', '课程视频', 'video', 'c/6/c65857cc726ae5593fe99783edb39d37/c65857cc726ae5593fe99783edb39d37.mp4', 'c65857cc726ae5593fe99783edb39d37', '/video/c/6/c65857cc726ae5593fe99783edb39d37/c65857cc726ae5593fe99783edb39d37.mp4', NULL, '2024-11-28 21:55:39', NULL, '1', '', '002003', NULL, 489406);
INSERT INTO `media_files` VALUES ('c834cb8e731a58231cea7845fe2e985d', 1232141425, NULL, '15.mp4', '001002', '课程视频', 'video', 'c/8/c834cb8e731a58231cea7845fe2e985d/c834cb8e731a58231cea7845fe2e985d.mp4', 'c834cb8e731a58231cea7845fe2e985d', '/video/c/8/c834cb8e731a58231cea7845fe2e985d/c834cb8e731a58231cea7845fe2e985d.mp4', NULL, '2024-11-28 21:56:04', NULL, '1', '', '002003', NULL, 237107);
INSERT INTO `media_files` VALUES ('c8995f509fc24c5f49d458f2be6acb40', 1232141425, NULL, '刘洪普.png', '001001', '课程文件', 'mediafiles', '2024/12/06/c8995f509fc24c5f49d458f2be6acb40.png', 'c8995f509fc24c5f49d458f2be6acb40', '/mediafiles/2024/12/06/c8995f509fc24c5f49d458f2be6acb40.png', NULL, '2024-12-06 15:35:06', NULL, '1', NULL, '002003', NULL, 39031);
INSERT INTO `media_files` VALUES ('ca6738cc76040b927461e81fe1587341', 1232141425, NULL, '区块链和加密数字货币.png', '001001', '课程文件', 'mediafiles', '2024/12/06/ca6738cc76040b927461e81fe1587341.png', 'ca6738cc76040b927461e81fe1587341', '/mediafiles/2024/12/06/ca6738cc76040b927461e81fe1587341.png', NULL, '2024-12-06 14:28:28', NULL, '1', NULL, '002003', NULL, 153066);
INSERT INTO `media_files` VALUES ('cb944f48a5ffba23ab07ec808bac9e8f', 1232141425, NULL, '何源.png', '001001', '课程文件', 'mediafiles', '2024/12/06/cb944f48a5ffba23ab07ec808bac9e8f.png', 'cb944f48a5ffba23ab07ec808bac9e8f', '/mediafiles/2024/12/06/cb944f48a5ffba23ab07ec808bac9e8f.png', NULL, '2024-12-06 15:39:16', NULL, '1', NULL, '002003', NULL, 298945);
INSERT INTO `media_files` VALUES ('d6fa9a3518e018d7197eae1fc07283b2', 1232141425, NULL, '宋睿华.png', '001001', '课程文件', 'mediafiles', '2024/12/06/d6fa9a3518e018d7197eae1fc07283b2.png', 'd6fa9a3518e018d7197eae1fc07283b2', '/mediafiles/2024/12/06/d6fa9a3518e018d7197eae1fc07283b2.png', NULL, '2024-12-06 15:40:12', NULL, '1', NULL, '002003', NULL, 17445);
INSERT INTO `media_files` VALUES ('d724f433f54bf86a6e01be56dbc1804a', 1232141425, NULL, '马昱春.png', '001001', '课程文件', 'mediafiles', '2024/12/06/d724f433f54bf86a6e01be56dbc1804a.png', 'd724f433f54bf86a6e01be56dbc1804a', '/mediafiles/2024/12/06/d724f433f54bf86a6e01be56dbc1804a.png', NULL, '2024-12-06 15:36:40', NULL, '1', NULL, '002003', NULL, 195792);
INSERT INTO `media_files` VALUES ('d7be3160aac13ced465fc718ff00b2ef', 1232141425, NULL, '乔林.png', '001001', '课程文件', 'mediafiles', '2024/12/06/d7be3160aac13ced465fc718ff00b2ef.png', 'd7be3160aac13ced465fc718ff00b2ef', '/mediafiles/2024/12/06/d7be3160aac13ced465fc718ff00b2ef.png', NULL, '2024-12-06 15:39:09', NULL, '1', NULL, '002003', NULL, 68293);
INSERT INTO `media_files` VALUES ('d9e3ff3047955b38b95427228f158cbc', 1232141425, NULL, '张莉.png', '001001', '课程文件', 'mediafiles', '2024/12/06/d9e3ff3047955b38b95427228f158cbc.png', 'd9e3ff3047955b38b95427228f158cbc', '/mediafiles/2024/12/06/d9e3ff3047955b38b95427228f158cbc.png', NULL, '2024-12-06 15:34:19', NULL, '1', NULL, '002003', NULL, 40819);
INSERT INTO `media_files` VALUES ('da39f7ba2d73a9c8a0fc7f39c82ae9ba', 1232141425, NULL, '郝兴伟.png', '001001', '课程文件', 'mediafiles', '2024/12/06/da39f7ba2d73a9c8a0fc7f39c82ae9ba.png', 'da39f7ba2d73a9c8a0fc7f39c82ae9ba', '/mediafiles/2024/12/06/da39f7ba2d73a9c8a0fc7f39c82ae9ba.png', NULL, '2024-12-06 15:40:41', NULL, '1', NULL, '002003', NULL, 8503);
INSERT INTO `media_files` VALUES ('db66b0ae3c8ebabca1c2908f44d3fa85', 1232141425, NULL, '郑莉.png', '001001', '课程文件', 'mediafiles', '2024/12/06/db66b0ae3c8ebabca1c2908f44d3fa85.png', 'db66b0ae3c8ebabca1c2908f44d3fa85', '/mediafiles/2024/12/06/db66b0ae3c8ebabca1c2908f44d3fa85.png', NULL, '2024-12-06 14:43:22', NULL, '1', NULL, '002003', NULL, 168191);
INSERT INTO `media_files` VALUES ('dc978edd97e2b7b92a2c09de5a70cc60', 1232141425, NULL, '大学计算机.png', '001001', '课程文件', 'mediafiles', '2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', 'dc978edd97e2b7b92a2c09de5a70cc60', '/mediafiles/2024/12/06/dc978edd97e2b7b92a2c09de5a70cc60.png', NULL, '2024-12-06 14:18:30', NULL, '1', NULL, '002003', NULL, 159089);
INSERT INTO `media_files` VALUES ('dca57977142de7665672d2d97271fa71', 1232141425, NULL, '安颖莲.png', '001001', '课程文件', 'mediafiles', '2024/12/06/dca57977142de7665672d2d97271fa71.png', 'dca57977142de7665672d2d97271fa71', '/mediafiles/2024/12/06/dca57977142de7665672d2d97271fa71.png', NULL, '2024-12-06 15:35:26', NULL, '1', NULL, '002003', NULL, 50972);
INSERT INTO `media_files` VALUES ('dd5d4ac6cdb073be17fe3cbf7e160e40', 1232141425, NULL, '数据库技术与程序设计.png', '001001', '课程文件', 'mediafiles', '2024/12/06/dd5d4ac6cdb073be17fe3cbf7e160e40.png', 'dd5d4ac6cdb073be17fe3cbf7e160e40', '/mediafiles/2024/12/06/dd5d4ac6cdb073be17fe3cbf7e160e40.png', NULL, '2024-12-06 14:37:07', NULL, '1', NULL, '002003', NULL, 124138);
INSERT INTO `media_files` VALUES ('e16e6220e4195a46316b17e0b3bee63b', 1232141425, NULL, '11.mp4', '001002', '课程视频', 'video', 'e/1/e16e6220e4195a46316b17e0b3bee63b/e16e6220e4195a46316b17e0b3bee63b.mp4', 'e16e6220e4195a46316b17e0b3bee63b', '/video/e/1/e16e6220e4195a46316b17e0b3bee63b/e16e6220e4195a46316b17e0b3bee63b.mp4', NULL, '2024-11-28 21:55:51', NULL, '1', '', '002003', NULL, 498043);
INSERT INTO `media_files` VALUES ('e1d907d7f3fc6aade54c4e12c87f328b', 1232141425, NULL, '14.mp4', '001002', '课程视频', 'video', 'e/1/e1d907d7f3fc6aade54c4e12c87f328b/e1d907d7f3fc6aade54c4e12c87f328b.mp4', 'e1d907d7f3fc6aade54c4e12c87f328b', '/video/e/1/e1d907d7f3fc6aade54c4e12c87f328b/e1d907d7f3fc6aade54c4e12c87f328b.mp4', NULL, '2024-11-28 21:56:01', NULL, '1', '', '002003', NULL, 637635);
INSERT INTO `media_files` VALUES ('e2268d52dea91b85e18fd7fe2b386452', 1232141425, NULL, '2.mp4', '001002', '课程视频', 'video', 'e/2/e2268d52dea91b85e18fd7fe2b386452/e2268d52dea91b85e18fd7fe2b386452.mp4', 'e2268d52dea91b85e18fd7fe2b386452', '/video/e/2/e2268d52dea91b85e18fd7fe2b386452/e2268d52dea91b85e18fd7fe2b386452.mp4', NULL, '2024-11-28 21:55:23', NULL, '1', '', '002003', NULL, 450822);
INSERT INTO `media_files` VALUES ('e23c5cc83f598f88e981214564131cc2', 1232141425, NULL, '路明晓.png', '001001', '课程文件', 'mediafiles', '2024/12/06/e23c5cc83f598f88e981214564131cc2.png', 'e23c5cc83f598f88e981214564131cc2', '/mediafiles/2024/12/06/e23c5cc83f598f88e981214564131cc2.png', NULL, '2024-12-06 15:41:59', NULL, '1', NULL, '002003', NULL, 418755);
INSERT INTO `media_files` VALUES ('e468a8f18fcae5a6335fd8bcf1b6ebd0', 1232141425, NULL, '徐葳.png', '001001', '课程文件', 'mediafiles', '2024/12/06/e468a8f18fcae5a6335fd8bcf1b6ebd0.png', 'e468a8f18fcae5a6335fd8bcf1b6ebd0', '/mediafiles/2024/12/06/e468a8f18fcae5a6335fd8bcf1b6ebd0.png', NULL, '2024-12-06 15:36:19', NULL, '1', NULL, '002003', NULL, 6853);
INSERT INTO `media_files` VALUES ('e493a1d686a8e58495e0e9cd235fd20f', 1232141425, NULL, 'Linux 内核分析与应用.png', '001001', '课程文件', 'mediafiles', '2024/12/06/e493a1d686a8e58495e0e9cd235fd20f.png', 'e493a1d686a8e58495e0e9cd235fd20f', '/mediafiles/2024/12/06/e493a1d686a8e58495e0e9cd235fd20f.png', NULL, '2024-12-06 14:34:54', NULL, '1', NULL, '002003', NULL, 69237);
INSERT INTO `media_files` VALUES ('e4e7b0f795ef073d6302b6e7314b9a5b', 1232141425, NULL, '数据挖掘.png', '001001', '课程文件', 'mediafiles', '2024/12/06/e4e7b0f795ef073d6302b6e7314b9a5b.png', 'e4e7b0f795ef073d6302b6e7314b9a5b', '/mediafiles/2024/12/06/e4e7b0f795ef073d6302b6e7314b9a5b.png', NULL, '2024-12-06 14:32:28', NULL, '1', NULL, '002003', NULL, 49393);
INSERT INTO `media_files` VALUES ('e50b5d0814e2092be7cfde2b2ac4d0cf', 1232141425, NULL, 'C语言程序设计（上）.png', '001001', '课程文件', 'mediafiles', '2024/12/06/e50b5d0814e2092be7cfde2b2ac4d0cf.png', 'e50b5d0814e2092be7cfde2b2ac4d0cf', '/mediafiles/2024/12/06/e50b5d0814e2092be7cfde2b2ac4d0cf.png', NULL, '2024-12-06 14:35:21', NULL, '1', NULL, '002003', NULL, 43527);
INSERT INTO `media_files` VALUES ('e6ecda8e6c1ff312efcd8a76037225ac', 1232141425, NULL, '3.mp4', '001002', '课程视频', 'video', 'e/6/e6ecda8e6c1ff312efcd8a76037225ac/e6ecda8e6c1ff312efcd8a76037225ac.mp4', 'e6ecda8e6c1ff312efcd8a76037225ac', '/video/e/6/e6ecda8e6c1ff312efcd8a76037225ac/e6ecda8e6c1ff312efcd8a76037225ac.mp4', NULL, '2024-11-28 21:55:26', NULL, '1', '', '002003', NULL, 386712);
INSERT INTO `media_files` VALUES ('e7b6689813479f1a4bcbda99d882550d', 1232141425, NULL, '5.mp4', '001002', '课程视频', 'video', 'e/7/e7b6689813479f1a4bcbda99d882550d/e7b6689813479f1a4bcbda99d882550d.mp4', 'e7b6689813479f1a4bcbda99d882550d', '/video/e/7/e7b6689813479f1a4bcbda99d882550d/e7b6689813479f1a4bcbda99d882550d.mp4', NULL, '2024-11-28 21:55:32', NULL, '1', '', '002003', NULL, 416377);
INSERT INTO `media_files` VALUES ('e9a2121fd48496917c4280068a45827e', 1232141425, NULL, '张悠慧.png', '001001', '课程文件', 'mediafiles', '2024/12/06/e9a2121fd48496917c4280068a45827e.png', 'e9a2121fd48496917c4280068a45827e', '/mediafiles/2024/12/06/e9a2121fd48496917c4280068a45827e.png', NULL, '2024-12-06 15:38:45', NULL, '1', NULL, '002003', NULL, 24875);
INSERT INTO `media_files` VALUES ('eb33c0c5cf81f202879b06457fa762b7', 1232141425, NULL, '曾鸣.png', '001001', '课程文件', 'mediafiles', '2024/12/06/eb33c0c5cf81f202879b06457fa762b7.png', 'eb33c0c5cf81f202879b06457fa762b7', '/mediafiles/2024/12/06/eb33c0c5cf81f202879b06457fa762b7.png', NULL, '2024-12-06 15:42:05', NULL, '1', NULL, '002003', NULL, 69313);
INSERT INTO `media_files` VALUES ('eb8a80886a212c4ad911b44d387658bf', 1232141425, NULL, '张家成.png', '001001', '课程文件', 'mediafiles', '2024/12/06/eb8a80886a212c4ad911b44d387658bf.png', 'eb8a80886a212c4ad911b44d387658bf', '/mediafiles/2024/12/06/eb8a80886a212c4ad911b44d387658bf.png', NULL, '2024-12-06 15:39:24', NULL, '1', NULL, '002003', NULL, 142332);
INSERT INTO `media_files` VALUES ('ed9525b88163efcd81cd24a7cbb96d3d', 1232141425, NULL, '武永卫.png', '001001', '课程文件', 'mediafiles', '2024/12/06/ed9525b88163efcd81cd24a7cbb96d3d.png', 'ed9525b88163efcd81cd24a7cbb96d3d', '/mediafiles/2024/12/06/ed9525b88163efcd81cd24a7cbb96d3d.png', NULL, '2024-12-06 15:37:48', NULL, '1', NULL, '002003', NULL, 7401);
INSERT INTO `media_files` VALUES ('ede081035592464b387a43de1e88e1e5', 1232141425, NULL, '4.mp4', '001002', '课程视频', 'video', 'e/d/ede081035592464b387a43de1e88e1e5/ede081035592464b387a43de1e88e1e5.mp4', 'ede081035592464b387a43de1e88e1e5', '/video/e/d/ede081035592464b387a43de1e88e1e5/ede081035592464b387a43de1e88e1e5.mp4', NULL, '2024-11-28 21:55:29', NULL, '1', '', '002003', NULL, 423670);
INSERT INTO `media_files` VALUES ('ee983c4c53aa79b66f29e7e68ac05f72', 1232141425, NULL, 'R语言数据分析.png', '001001', '课程文件', 'mediafiles', '2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', 'ee983c4c53aa79b66f29e7e68ac05f72', '/mediafiles/2024/12/06/ee983c4c53aa79b66f29e7e68ac05f72.png', NULL, '2024-12-06 14:18:16', NULL, '1', NULL, '002003', NULL, 205885);
INSERT INTO `media_files` VALUES ('ef409d7c8978e3772a8f5b7214981fde', 1232141425, NULL, '陈渝.png', '001001', '课程文件', 'mediafiles', '2024/12/06/ef409d7c8978e3772a8f5b7214981fde.png', 'ef409d7c8978e3772a8f5b7214981fde', '/mediafiles/2024/12/06/ef409d7c8978e3772a8f5b7214981fde.png', NULL, '2024-12-06 14:46:22', NULL, '1', NULL, '002003', NULL, 48556);
INSERT INTO `media_files` VALUES ('ef62427ec365af1bb67aabe54f3e3434', 1232141425, NULL, 'VC++面向对象与可视化程序设计（上）：Windows编程基础.png', '001001', '课程文件', 'mediafiles', '2024/12/06/ef62427ec365af1bb67aabe54f3e3434.png', 'ef62427ec365af1bb67aabe54f3e3434', '/mediafiles/2024/12/06/ef62427ec365af1bb67aabe54f3e3434.png', NULL, '2024-12-06 14:18:59', NULL, '1', NULL, '002003', NULL, 113785);
INSERT INTO `media_files` VALUES ('f136476adfe159f4b6123375642f311a', 1232141425, NULL, '罗玫.png', '001001', '课程文件', 'mediafiles', '2024/12/06/f136476adfe159f4b6123375642f311a.png', 'f136476adfe159f4b6123375642f311a', '/mediafiles/2024/12/06/f136476adfe159f4b6123375642f311a.png', NULL, '2024-12-06 15:38:59', NULL, '1', NULL, '002003', NULL, 40520);
INSERT INTO `media_files` VALUES ('f4e88b852c4fce8947cc7cb684ff0840', 1232141425, NULL, '李秀.png', '001001', '课程文件', 'mediafiles', '2024/12/06/f4e88b852c4fce8947cc7cb684ff0840.png', 'f4e88b852c4fce8947cc7cb684ff0840', '/mediafiles/2024/12/06/f4e88b852c4fce8947cc7cb684ff0840.png', NULL, '2024-12-06 15:35:13', NULL, '1', NULL, '002003', NULL, 50921);
INSERT INTO `media_files` VALUES ('f594a709bf486565a20f9cf5142f4e48', 1232141425, NULL, '大学计算机教程.png', '001001', '课程文件', 'mediafiles', '2024/12/06/f594a709bf486565a20f9cf5142f4e48.png', 'f594a709bf486565a20f9cf5142f4e48', '/mediafiles/2024/12/06/f594a709bf486565a20f9cf5142f4e48.png', NULL, '2024-12-06 14:32:13', NULL, '1', NULL, '002003', NULL, 184217);
INSERT INTO `media_files` VALUES ('f91cfa3020dc364fdd1be3b7ff0f347c', 1232141425, NULL, '张凌.png', '001001', '课程文件', 'mediafiles', '2024/12/06/f91cfa3020dc364fdd1be3b7ff0f347c.png', 'f91cfa3020dc364fdd1be3b7ff0f347c', '/mediafiles/2024/12/06/f91cfa3020dc364fdd1be3b7ff0f347c.png', NULL, '2024-12-06 15:38:30', NULL, '1', NULL, '002003', NULL, 134709);
INSERT INTO `media_files` VALUES ('faf3a36b168a0859fed78d1a3b0b9895', 1232141425, NULL, '12.mp4', '001002', '课程视频', 'video', 'f/a/faf3a36b168a0859fed78d1a3b0b9895/faf3a36b168a0859fed78d1a3b0b9895.mp4', 'faf3a36b168a0859fed78d1a3b0b9895', '/video/f/a/faf3a36b168a0859fed78d1a3b0b9895/faf3a36b168a0859fed78d1a3b0b9895.mp4', NULL, '2024-11-28 21:55:54', NULL, '1', '', '002003', NULL, 372505);
INSERT INTO `media_files` VALUES ('ff141b6db970fb19debff6f006cde7e4', 1232141425, NULL, '6.mp4', '001002', '课程视频', 'video', 'f/f/ff141b6db970fb19debff6f006cde7e4/ff141b6db970fb19debff6f006cde7e4.mp4', 'ff141b6db970fb19debff6f006cde7e4', '/video/f/f/ff141b6db970fb19debff6f006cde7e4/ff141b6db970fb19debff6f006cde7e4.mp4', NULL, '2024-11-28 21:55:36', NULL, '1', '', '002003', NULL, 417742);

-- ----------------------------
-- Table structure for media_minio_chunk
-- ----------------------------
DROP TABLE IF EXISTS `media_minio_chunk`;
CREATE TABLE `media_minio_chunk`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_id` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件标识',
  `bucket` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存储桶',
  `file_path` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储路径',
  `chunk` int NOT NULL COMMENT '分块块数',
  `create_date` datetime NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media_minio_chunk
-- ----------------------------

-- ----------------------------
-- Table structure for media_process
-- ----------------------------
DROP TABLE IF EXISTS `media_process`;
CREATE TABLE `media_process`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_id` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件标识',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `bucket` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存储桶',
  `file_path` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储路径',
  `status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态, 1: 未处理, 2: 处理成功, 3: 处理失败, 4: 正在处理（乐观锁）',
  `create_date` datetime NOT NULL COMMENT '上传时间',
  `finish_date` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `fail_count` int NULL DEFAULT 0 COMMENT '失败次数',
  `url` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '媒资文件访问地址',
  `errormsg` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失败原因',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_fileid`(`file_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media_process
-- ----------------------------
INSERT INTO `media_process` VALUES (9, '3aad1f3480ad0725f2a31e5127edbc6a', '1.mp4', 'video', '3/a/3aad1f3480ad0725f2a31e5127edbc6a/3aad1f3480ad0725f2a31e5127edbc6a.mp4', '1', '2024-11-28 21:38:08', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (11, 'e2268d52dea91b85e18fd7fe2b386452', '2.mp4', 'video', 'e/2/e2268d52dea91b85e18fd7fe2b386452/e2268d52dea91b85e18fd7fe2b386452.mp4', '1', '2024-11-28 21:55:23', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (12, 'e6ecda8e6c1ff312efcd8a76037225ac', '3.mp4', 'video', 'e/6/e6ecda8e6c1ff312efcd8a76037225ac/e6ecda8e6c1ff312efcd8a76037225ac.mp4', '1', '2024-11-28 21:55:26', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (13, 'ede081035592464b387a43de1e88e1e5', '4.mp4', 'video', 'e/d/ede081035592464b387a43de1e88e1e5/ede081035592464b387a43de1e88e1e5.mp4', '1', '2024-11-28 21:55:29', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (14, 'e7b6689813479f1a4bcbda99d882550d', '5.mp4', 'video', 'e/7/e7b6689813479f1a4bcbda99d882550d/e7b6689813479f1a4bcbda99d882550d.mp4', '1', '2024-11-28 21:55:32', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (15, 'ff141b6db970fb19debff6f006cde7e4', '6.mp4', 'video', 'f/f/ff141b6db970fb19debff6f006cde7e4/ff141b6db970fb19debff6f006cde7e4.mp4', '1', '2024-11-28 21:55:36', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (16, 'c65857cc726ae5593fe99783edb39d37', '7.mp4', 'video', 'c/6/c65857cc726ae5593fe99783edb39d37/c65857cc726ae5593fe99783edb39d37.mp4', '1', '2024-11-28 21:55:39', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (17, '878c02a0df04f94144ab808b1c4b74a0', '8.mp4', 'video', '8/7/878c02a0df04f94144ab808b1c4b74a0/878c02a0df04f94144ab808b1c4b74a0.mp4', '1', '2024-11-28 21:55:42', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (18, '602edfc767f1a656612d8c9a9137d617', '9.mp4', 'video', '6/0/602edfc767f1a656612d8c9a9137d617/602edfc767f1a656612d8c9a9137d617.mp4', '1', '2024-11-28 21:55:45', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (19, '701b9289b467c0fdb608a65ac5dec016', '10.mp4', 'video', '7/0/701b9289b467c0fdb608a65ac5dec016/701b9289b467c0fdb608a65ac5dec016.mp4', '1', '2024-11-28 21:55:48', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (20, 'e16e6220e4195a46316b17e0b3bee63b', '11.mp4', 'video', 'e/1/e16e6220e4195a46316b17e0b3bee63b/e16e6220e4195a46316b17e0b3bee63b.mp4', '1', '2024-11-28 21:55:51', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (21, 'faf3a36b168a0859fed78d1a3b0b9895', '12.mp4', 'video', 'f/a/faf3a36b168a0859fed78d1a3b0b9895/faf3a36b168a0859fed78d1a3b0b9895.mp4', '1', '2024-11-28 21:55:54', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (22, '5cc8e1cd17c5fff55aef29508f363095', '13.mp4', 'video', '5/c/5cc8e1cd17c5fff55aef29508f363095/5cc8e1cd17c5fff55aef29508f363095.mp4', '1', '2024-11-28 21:55:57', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (23, 'e1d907d7f3fc6aade54c4e12c87f328b', '14.mp4', 'video', 'e/1/e1d907d7f3fc6aade54c4e12c87f328b/e1d907d7f3fc6aade54c4e12c87f328b.mp4', '1', '2024-11-28 21:56:01', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (24, 'c834cb8e731a58231cea7845fe2e985d', '15.mp4', 'video', 'c/8/c834cb8e731a58231cea7845fe2e985d/c834cb8e731a58231cea7845fe2e985d.mp4', '1', '2024-11-28 21:56:04', NULL, 0, NULL, NULL);
INSERT INTO `media_process` VALUES (25, 'c54f72f7bcf0126b083828d2fd24ecfe', '16.mp4', 'video', 'c/5/c54f72f7bcf0126b083828d2fd24ecfe/c54f72f7bcf0126b083828d2fd24ecfe.mp4', '1', '2024-11-28 22:06:38', NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for media_process_history
-- ----------------------------
DROP TABLE IF EXISTS `media_process_history`;
CREATE TABLE `media_process_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_id` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件标识',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `bucket` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存储源',
  `status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态,1:未处理，2：处理成功  3处理失败',
  `create_date` datetime NOT NULL COMMENT '上传时间',
  `finish_date` datetime NOT NULL COMMENT '完成时间',
  `url` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '媒资文件访问地址',
  `fail_count` int NULL DEFAULT 0 COMMENT '失败次数',
  `file_path` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `errormsg` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失败原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media_process_history
-- ----------------------------

-- ----------------------------
-- Table structure for mq_message
-- ----------------------------
DROP TABLE IF EXISTS `mq_message`;
CREATE TABLE `mq_message`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息id',
  `message_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型代码',
  `business_key1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `mq_host` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列主机',
  `mq_port` int NOT NULL COMMENT '消息队列端口',
  `mq_virtualhost` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列虚拟主机',
  `mq_queue` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '队列名称',
  `inform_num` int UNSIGNED NOT NULL COMMENT '通知次数',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '处理状态，0:初始，1:成功',
  `returnfailure_date` datetime NULL DEFAULT NULL COMMENT '回复失败时间',
  `returnsuccess_date` datetime NULL DEFAULT NULL COMMENT '回复成功时间',
  `returnfailure_msg` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复失败内容',
  `inform_date` datetime NULL DEFAULT NULL COMMENT '最近通知时间',
  `stage_state1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阶段1处理状态, 0:初始，1:成功',
  `stage_state2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阶段2处理状态, 0:初始，1:成功',
  `stage_state3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阶段3处理状态, 0:初始，1:成功',
  `stage_state4` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阶段4处理状态, 0:初始，1:成功',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mq_message
-- ----------------------------

-- ----------------------------
-- Table structure for mq_message_history
-- ----------------------------
DROP TABLE IF EXISTS `mq_message_history`;
CREATE TABLE `mq_message_history`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息id',
  `message_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型代码',
  `business_key1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `business_key3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联业务信息',
  `mq_host` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列主机',
  `mq_port` int NOT NULL COMMENT '消息队列端口',
  `mq_virtualhost` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列虚拟主机',
  `mq_queue` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '队列名称',
  `inform_num` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '通知次数',
  `state` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '处理状态，0:初始，1:成功，2:失败',
  `returnfailure_date` datetime NULL DEFAULT NULL COMMENT '回复失败时间',
  `returnsuccess_date` datetime NULL DEFAULT NULL COMMENT '回复成功时间',
  `returnfailure_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复失败内容',
  `inform_date` datetime NULL DEFAULT NULL COMMENT '最近通知时间',
  `stage_state1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage_state2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage_state3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage_state4` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mq_message_history
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
