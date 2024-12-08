/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.101.65
 Source Server Type    : MySQL
 Source Server Version : 80026 (8.0.26)
 Source Host           : 192.168.101.65:3306
 Source Schema         : kaizhi_edu_users

 Target Server Type    : MySQL
 Target Server Version : 80026 (8.0.26)
 File Encoding         : 65001

 Date: 08/12/2024 15:32:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kaizhi_company
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_company`;
CREATE TABLE `kaizhi_company`  (
                                   `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                   `linkname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人名称',
                                   `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
                                   `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                   `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                   `intro` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
                                   `logo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
                                   `identitypic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证照片',
                                   `worktype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工具性质',
                                   `businesspic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业执照',
                                   `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业状态',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_company
-- ----------------------------
INSERT INTO `kaizhi_company` VALUES ('1', '张老师', '传智播客', '13333334444', 'abc@126.com', '2006年创建', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `kaizhi_company` VALUES ('2', '李老师', '博学谷', '12233335555', 'abc@126.com', '2006年创建', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `kaizhi_company` VALUES ('1232141425', '陈老师', '传智教育', '123456789', 'abc@126.com', '2006年创建', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kaizhi_company_user
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_company_user`;
CREATE TABLE `kaizhi_company_user`  (
                                        `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                        `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                        `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                        PRIMARY KEY (`id`) USING BTREE,
                                        UNIQUE INDEX `kaizhi_company_user_unique`(`company_id` ASC, `user_id` ASC) USING BTREE,
                                        INDEX `FK_kaizhi_company_user_user_id`(`user_id` ASC) USING BTREE,
                                        CONSTRAINT `FK_kaizhi_company_user_company_id` FOREIGN KEY (`company_id`) REFERENCES `kaizhi_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                        CONSTRAINT `FK_kaizhi_company_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `kaizhi_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_company_user
-- ----------------------------
INSERT INTO `kaizhi_company_user` VALUES ('1', '1232141425', '3');
INSERT INTO `kaizhi_company_user` VALUES ('2', '1232141425', '4');
INSERT INTO `kaizhi_company_user` VALUES ('3', '1232141425', '5');
INSERT INTO `kaizhi_company_user` VALUES ('4', '1232141425', '6');
INSERT INTO `kaizhi_company_user` VALUES ('5', '1232141425', '7');
INSERT INTO `kaizhi_company_user` VALUES ('6', '1232141425', '8');
INSERT INTO `kaizhi_company_user` VALUES ('7', '1232141425', '9');
INSERT INTO `kaizhi_company_user` VALUES ('8', '1232141425', '10');
INSERT INTO `kaizhi_company_user` VALUES ('9', '1232141425', '11');
INSERT INTO `kaizhi_company_user` VALUES ('10', '1232141425', '12');

-- ----------------------------
-- Table structure for kaizhi_menu
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_menu`;
CREATE TABLE `kaizhi_menu`  (
                                `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单编码',
                                `p_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单ID',
                                `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
                                `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求地址',
                                `is_menu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是菜单',
                                `level` int NULL DEFAULT NULL COMMENT '菜单层级',
                                `sort` int NULL DEFAULT NULL COMMENT '菜单排序',
                                `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `create_time` datetime NULL DEFAULT NULL,
                                `update_time` datetime NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                UNIQUE INDEX `FK_CODE`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_menu
-- ----------------------------
INSERT INTO `kaizhi_menu` VALUES ('000000000000000000', 'root', '0', '系统根目录', NULL, '0', 0, 1, '1', NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('111111111111111111', 'kaizhi_sysmanager', '000000000000000000', '系统管理', NULL, '1', 1, 10, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('222222222222222222', 'kaizhi_teachmanager', '000000000000000000', '教学管理', NULL, '1', 1, 2, '1', NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('893288715881807872', 'kaizhi_sysmanager_user', '111111111111111111', '用户管理', NULL, '1', 2, 1, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('893304960282787840', 'kaizhi_sysmanager_user_add', '893288715881807872', '添加用户', NULL, '1', 3, 1, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894396523532517376', 'kaizhi_sysmanager_user_edit', '893288715881807872', '用户修改', NULL, '0', 3, 1, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894473486712438784', 'kaizhi_sysmanager_user_view', '893288715881807872', '用户列表', NULL, '1', 3, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894473651837992960', 'kaizhi_sysmanager_user_delete', '893288715881807872', '用户删除', NULL, '0', 3, 4, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894475142061621248', 'kaizhi_sysmanager_role', '111111111111111111', '角色管理', NULL, '1', 2, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894475827880656896', 'kaizhi_sysmanager_role_add', '894475142061621248', '角色添加', NULL, '0', 3, 1, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894475985452269568', 'kaizhi_sysmanager_role_edit', '894475142061621248', '角色编辑', NULL, '0', 3, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894476118730473472', 'kaizhi_sysmanager_role_delete', '894475142061621248', '角色删除', NULL, '0', 3, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894476276402749440', 'kaizhi_sysmanager_role_permission', '894475142061621248', '角色配权', NULL, '0', 3, 3, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894476950951690240', 'kaizhi_sysmanager_menu', '111111111111111111', '菜单管理', NULL, '1', 2, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894477107919323136', 'kaizhi_sysmanager_menu_add', '894476950951690240', '菜单添加', NULL, '0', 3, 1, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894477244926263296', 'kaizhi_sysmanager_menu_edit', '894476950951690240', '菜单编辑', NULL, '0', 3, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894477420512411648', 'kaizhi_sysmanager_menu_delete', '894476950951690240', '菜单删除', NULL, '0', 3, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894477851082883072', 'kaizhi_sysmanager_doc', '111111111111111111', '文档查询', NULL, '1', 2, 9, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894477995903811584', 'kaizhi_sysmanager_log', '111111111111111111', 'add', NULL, '1', 2, 10, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('894752734459199488', 'kaizhi_sysmanager_company', '111111111111111111', '机构管理', NULL, '1', 1, 1, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395840', 'kaizhi_sysmanager_user_resetpwd', '893288715881807872', '密码重置', NULL, '1', 3, 2, '1', '', '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395841', 'kaizhi_teachmanager_course', '222222222222222222', '课程管理', NULL, '1', 2, 1, '1', NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395842', 'kaizhi_teachmanager_course_add', '903459378655395841', '添加课程', NULL, '1', 3, 1, '1', NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395843', 'kaizhi_teachmanager_course_del', '903459378655395841', '删除课程', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395845', 'kaizhi_teachmanager_course_market', '903459378655395841', '编辑课程营销信息', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395846', 'kaizhi_teachmanager_course_base', '903459378655395841', '编辑课程基础信息', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395847', 'kaizhi_teachmanager_course_plan', '903459378655395841', '编辑课程计划', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395848', 'kaizhi_teachmanager_course_publish', '903459378655395841', '发布课程', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395849', 'kaizhi_teachmanager_course_list', '903459378655395841', '我的课程', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395850', 'kaizhi_teachmanager_course_pic', '903459378655395841', '课程图片', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');
INSERT INTO `kaizhi_menu` VALUES ('903459378655395851', 'course_find_list', '903459378655395841', '查询课程列表', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-28 08:35:25', '2022-09-28 08:35:25');

-- ----------------------------
-- Table structure for kaizhi_permission
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_permission`;
CREATE TABLE `kaizhi_permission`  (
                                      `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                      `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                      `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                      `create_time` datetime NULL DEFAULT NULL,
                                      PRIMARY KEY (`id`) USING BTREE,
                                      UNIQUE INDEX `xu_permission_unique`(`role_id` ASC, `menu_id` ASC) USING BTREE,
                                      INDEX `fk_kaizhi_permission_menu_id`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_permission
-- ----------------------------
INSERT INTO `kaizhi_permission` VALUES ('11', '20', '222222222222222222', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('12', '20', '903459378655395841', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('13', '20', '903459378655395842', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('14', '20', '903459378655395843', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('15', '20', '903459378655395845', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('16', '20', '903459378655395846', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('17', '20', '903459378655395847', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('18', '20', '903459378655395848', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('19', '20', '903459378655395849', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('89328714465778073617', '17', '111111111111111111', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8932871446577807366', '6', '111111111111111111', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8932871446577807367', '6', '903459378655395846', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8932871446577807368', '8', '111111111111111111', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8932887158818078726', '6', '893288715881807872', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8932887158818078728', '8', '893288715881807872', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8933049602827878406', '6', '893304960282787840', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8933049602827878408', '8', '893304960282787840', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8943965235325173766', '6', '894396523532517376', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8943965235325173768', '8', '894396523532517376', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944734867124387846', '6', '894473486712438784', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944734867124387848', '8', '894473486712438784', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944736518379929606', '6', '894473651837992960', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944736518379929608', '8', '894473651837992960', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944751420616212488', '8', '894475142061621248', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944758278806568968', '8', '894475827880656896', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944759854522695688', '8', '894475985452269568', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944761187304734728', '8', '894476118730473472', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944762764027494408', '8', '894476276402749440', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944769509516902408', '8', '894476950951690240', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944771079193231368', '8', '894477107919323136', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944772449262632968', '8', '894477244926263296', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944774205124116488', '8', '894477420512411648', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('89447785108288307217', '17', '894477851082883072', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944778510828830726', '6', '894477851082883072', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944778510828830728', '8', '894477851082883072', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('89447799590381158417', '17', '894477995903811584', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944779959038115846', '6', '894477995903811584', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8944779959038115848', '8', '894477995903811584', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('89475273445919948817', '17', '894752734459199488', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8947527344591994888', '8', '894752734459199488', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8947692177635409926', '6', '903459378655395842', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('8947692177635409930', '6', '903459378655395841', '2022-09-28 08:34:56');
INSERT INTO `kaizhi_permission` VALUES ('903459378655395849', '17', '903459378655395849', '2022-09-30 14:29:08');

-- ----------------------------
-- Table structure for kaizhi_role
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_role`;
CREATE TABLE `kaizhi_role`  (
                                `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `role_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `create_time` datetime NULL DEFAULT NULL,
                                `update_time` datetime NULL DEFAULT NULL,
                                `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                UNIQUE INDEX `unique_role_name`(`role_name` ASC) USING BTREE,
                                UNIQUE INDEX `unique_role_value`(`role_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_role
-- ----------------------------
INSERT INTO `kaizhi_role` VALUES ('17', '学生', 'student', NULL, '2022-09-28 08:32:57', '2022-09-28 08:32:57', '1');
INSERT INTO `kaizhi_role` VALUES ('18', '老师', 'teacher', NULL, '2022-09-28 08:32:57', '2022-09-28 08:32:57', '1');
INSERT INTO `kaizhi_role` VALUES ('20', '教学管理员', 'teachmanager', NULL, '2022-09-28 08:32:57', '2022-09-28 08:32:57', '1');
INSERT INTO `kaizhi_role` VALUES ('6', '管理员', 'admin', NULL, '2022-09-28 08:32:57', '2022-09-28 08:32:57', '1');
INSERT INTO `kaizhi_role` VALUES ('8', '超级管理员', 'super', NULL, '2022-09-28 08:32:57', '2022-09-28 08:32:57', '1');

-- ----------------------------
-- Table structure for kaizhi_teacher
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_teacher`;
CREATE TABLE `kaizhi_teacher`  (
                                   `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                   `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
                                   `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '称呼',
                                   `intro` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简介',
                                   `resume` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简历',
                                   `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '老师照片',
                                   PRIMARY KEY (`id`) USING BTREE,
                                   UNIQUE INDEX `xu_teacher_user_id`(`user_id` ASC) USING BTREE,
                                   CONSTRAINT `fk_kaizhi_teacher_user_id` FOREIGN KEY (`user_id`) REFERENCES `kaizhi_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for kaizhi_user
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_user`;
CREATE TABLE `kaizhi_user`  (
                                `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `password` varchar(96) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用BCrypt加密',
                                `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `wx_unionid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信unionid',
                                `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
                                `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `userpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
                                `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `utype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `birthday` datetime NULL DEFAULT NULL,
                                `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `cellphone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `qq` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户状态',
                                `create_time` datetime NOT NULL,
                                `update_time` datetime NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                UNIQUE INDEX `unique_user_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_user
-- ----------------------------
INSERT INTO `kaizhi_user` VALUES ('1', 'super', '$2b$12$ZVPvJq.6fRkI8fFaTFrg3uWAtMhT/yhRZDnzsgQjtcVHXW0MZkcUK', NULL, NULL, NULL, '超级管理员', NULL, NULL, '101003', NULL, '1', NULL, NULL, NULL, '1', '2023-12-18 10:55:25', NULL);
INSERT INTO `kaizhi_user` VALUES ('2', 'admin', '$2b$12$F4K9v478y3I/wHFITx1UnurZLUWThLWpJjRc9Ki9SPze6Tz29sRIu', NULL, NULL, NULL, '系统管理员', NULL, NULL, '101003', NULL, '1', NULL, NULL, NULL, '1', '2022-09-20 06:23:55', NULL);
INSERT INTO `kaizhi_user` VALUES ('3', 'teacher1', '$2b$12$kjR2jU91lI3lqigVoxxkuOrpMNVcKY5PGX5loSSo3i.4tFdD7nVAy', NULL, NULL, NULL, '陈老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2024-12-03 22:17:22', NULL);
INSERT INTO `kaizhi_user` VALUES ('4', 'teacher2', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, NULL, '王老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2023-07-06 01:32:03', NULL);
INSERT INTO `kaizhi_user` VALUES ('5', 'teacher3', '$2b$12$4laFQUfvus8cMZxSRvHLLOrQ6zn/vMLgp62gHHTFhj4DjRItj2nQy', NULL, NULL, NULL, '林老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2024-01-12 20:13:18', NULL);
INSERT INTO `kaizhi_user` VALUES ('6', 'teacher4', '$2b$12$jVc3WjZ58IKUzxVQJnee2eBUyovsb6AY9qmtwsWn9OAmiXk8vitOy', NULL, NULL, NULL, '张老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2022-11-01 04:20:58', NULL);
INSERT INTO `kaizhi_user` VALUES ('7', 'teacher5', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, NULL, '李老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2021-05-15 14:37:54', NULL);
INSERT INTO `kaizhi_user` VALUES ('8', 'teacher6', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, NULL, '叶老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2023-02-17 17:14:09', NULL);
INSERT INTO `kaizhi_user` VALUES ('9', 'teacher7', '$2b$12$Poo.gasy5i13qFXUWUmJGuF5sv7X09bRxcLmWU86F0aP1vCdZr/HS', NULL, NULL, NULL, '郑老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2020-10-02 23:20:03', NULL);
INSERT INTO `kaizhi_user` VALUES ('10', 'teacher8', '$2b$12$e/XXzSML7EG7dGv6MCw/IuTKZAs0jgGUOfDyKJsRK06lwY7Rlhzde', NULL, NULL, NULL, '吴老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2020-04-25 18:22:13', NULL);
INSERT INTO `kaizhi_user` VALUES ('11', 'teacher9', '$2b$12$z3r3/P9mNM0x2MAS50VR8OdqoERg60I4vnk/BZNULWEpVwnAh20SG', NULL, NULL, NULL, '徐老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2024-11-22 14:57:12', NULL);
INSERT INTO `kaizhi_user` VALUES ('12', 'teacher10', '$2b$12$vVXrXldg9XXHjWArBci2UOOGeBWCt1IEPt39Zq3lhkt4moQlD0rsW', NULL, NULL, NULL, '刘老师', NULL, '1232141425', '101002', NULL, '2', NULL, NULL, NULL, '1', '2023-04-02 01:47:04', NULL);
INSERT INTO `kaizhi_user` VALUES ('13', 'student1', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生1', '学生1', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-11-07 22:00:01', NULL);
INSERT INTO `kaizhi_user` VALUES ('14', 'student2', '$2b$12$z3r3/P9mNM0x2MAS50VR8OdqoERg60I4vnk/BZNULWEpVwnAh20SG', NULL, NULL, '学生2', '学生2', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2020-05-26 13:29:38', NULL);
INSERT INTO `kaizhi_user` VALUES ('15', 'student3', '$2b$12$jVc3WjZ58IKUzxVQJnee2eBUyovsb6AY9qmtwsWn9OAmiXk8vitOy', NULL, NULL, '学生3', '学生3', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2021-09-21 08:18:16', NULL);
INSERT INTO `kaizhi_user` VALUES ('16', 'student4', '$2b$12$4laFQUfvus8cMZxSRvHLLOrQ6zn/vMLgp62gHHTFhj4DjRItj2nQy', NULL, NULL, '学生4', '学生4', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2020-12-25 07:19:31', NULL);
INSERT INTO `kaizhi_user` VALUES ('17', 'student5', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生5', '学生5', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2021-09-02 17:37:53', NULL);
INSERT INTO `kaizhi_user` VALUES ('18', 'student6', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, '学生6', '学生6', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2020-03-05 00:26:36', NULL);
INSERT INTO `kaizhi_user` VALUES ('19', 'student7', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生7', '学生7', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-11-02 20:31:08', NULL);
INSERT INTO `kaizhi_user` VALUES ('20', 'student8', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生8', '学生8', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-05-06 02:57:32', NULL);
INSERT INTO `kaizhi_user` VALUES ('21', 'student9', '$2b$12$F4K9v478y3I/wHFITx1UnurZLUWThLWpJjRc9Ki9SPze6Tz29sRIu', NULL, NULL, '学生9', '学生9', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2024-05-26 03:48:16', NULL);
INSERT INTO `kaizhi_user` VALUES ('22', 'student10', '$2b$12$z3r3/P9mNM0x2MAS50VR8OdqoERg60I4vnk/BZNULWEpVwnAh20SG', NULL, NULL, '学生10', '学生10', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-06-15 19:30:15', NULL);
INSERT INTO `kaizhi_user` VALUES ('23', 'student11', '$2b$12$vVXrXldg9XXHjWArBci2UOOGeBWCt1IEPt39Zq3lhkt4moQlD0rsW', NULL, NULL, '学生11', '学生11', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2020-07-01 14:40:49', NULL);
INSERT INTO `kaizhi_user` VALUES ('24', 'student12', '$2b$12$kjR2jU91lI3lqigVoxxkuOrpMNVcKY5PGX5loSSo3i.4tFdD7nVAy', NULL, NULL, '学生12', '学生12', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-06-03 08:02:32', NULL);
INSERT INTO `kaizhi_user` VALUES ('25', 'student13', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生13', '学生13', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-05-13 10:43:29', NULL);
INSERT INTO `kaizhi_user` VALUES ('26', 'student14', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, '学生14', '学生14', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2024-10-08 09:26:55', NULL);
INSERT INTO `kaizhi_user` VALUES ('27', 'student15', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生15', '学生15', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-04-15 06:44:21', NULL);
INSERT INTO `kaizhi_user` VALUES ('28', 'student16', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生16', '学生16', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-07-10 07:10:24', NULL);
INSERT INTO `kaizhi_user` VALUES ('29', 'student17', '$2b$12$Poo.gasy5i13qFXUWUmJGuF5sv7X09bRxcLmWU86F0aP1vCdZr/HS', NULL, NULL, '学生17', '学生17', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-12-22 00:17:00', NULL);
INSERT INTO `kaizhi_user` VALUES ('30', 'student18', '$2b$12$kjR2jU91lI3lqigVoxxkuOrpMNVcKY5PGX5loSSo3i.4tFdD7nVAy', NULL, NULL, '学生18', '学生18', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2021-02-26 18:02:52', NULL);
INSERT INTO `kaizhi_user` VALUES ('31', 'student19', '$2b$12$4laFQUfvus8cMZxSRvHLLOrQ6zn/vMLgp62gHHTFhj4DjRItj2nQy', NULL, NULL, '学生19', '学生19', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2021-01-14 07:55:45', NULL);
INSERT INTO `kaizhi_user` VALUES ('32', 'student20', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生20', '学生20', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2024-12-11 15:33:07', NULL);
INSERT INTO `kaizhi_user` VALUES ('33', 'student21', '$2b$12$ZVPvJq.6fRkI8fFaTFrg3uWAtMhT/yhRZDnzsgQjtcVHXW0MZkcUK', NULL, NULL, '学生21', '学生21', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2023-09-25 07:28:44', NULL);
INSERT INTO `kaizhi_user` VALUES ('34', 'student22', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, '学生22', '学生22', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-12-27 08:56:51', NULL);
INSERT INTO `kaizhi_user` VALUES ('35', 'student23', '$2b$12$4laFQUfvus8cMZxSRvHLLOrQ6zn/vMLgp62gHHTFhj4DjRItj2nQy', NULL, NULL, '学生23', '学生23', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-07-09 09:35:46', NULL);
INSERT INTO `kaizhi_user` VALUES ('36', 'student24', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生24', '学生24', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-04-11 05:19:21', NULL);
INSERT INTO `kaizhi_user` VALUES ('37', 'student25', '$2b$12$jVc3WjZ58IKUzxVQJnee2eBUyovsb6AY9qmtwsWn9OAmiXk8vitOy', NULL, NULL, '学生25', '学生25', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2021-09-05 01:32:04', NULL);
INSERT INTO `kaizhi_user` VALUES ('38', 'student26', '$2b$12$kjR2jU91lI3lqigVoxxkuOrpMNVcKY5PGX5loSSo3i.4tFdD7nVAy', NULL, NULL, '学生26', '学生26', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2020-05-27 07:08:13', NULL);
INSERT INTO `kaizhi_user` VALUES ('39', 'student27', '$2b$12$F4K9v478y3I/wHFITx1UnurZLUWThLWpJjRc9Ki9SPze6Tz29sRIu', NULL, NULL, '学生27', '学生27', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-12-17 16:41:53', NULL);
INSERT INTO `kaizhi_user` VALUES ('40', 'student28', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生28', '学生28', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2020-08-04 12:37:40', NULL);
INSERT INTO `kaizhi_user` VALUES ('41', 'student29', '$2b$12$jVc3WjZ58IKUzxVQJnee2eBUyovsb6AY9qmtwsWn9OAmiXk8vitOy', NULL, NULL, '学生29', '学生29', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-03-04 14:52:17', NULL);
INSERT INTO `kaizhi_user` VALUES ('42', 'student30', '$2b$12$4laFQUfvus8cMZxSRvHLLOrQ6zn/vMLgp62gHHTFhj4DjRItj2nQy', NULL, NULL, '学生30', '学生30', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-06-03 04:55:26', NULL);
INSERT INTO `kaizhi_user` VALUES ('43', 'student31', '$2b$12$kjR2jU91lI3lqigVoxxkuOrpMNVcKY5PGX5loSSo3i.4tFdD7nVAy', NULL, NULL, '学生31', '学生31', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-11-01 00:51:41', NULL);
INSERT INTO `kaizhi_user` VALUES ('44', 'student32', '$2b$12$e/XXzSML7EG7dGv6MCw/IuTKZAs0jgGUOfDyKJsRK06lwY7Rlhzde', NULL, NULL, '学生32', '学生32', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-07-04 02:46:01', NULL);
INSERT INTO `kaizhi_user` VALUES ('45', 'student33', '$2b$12$jVc3WjZ58IKUzxVQJnee2eBUyovsb6AY9qmtwsWn9OAmiXk8vitOy', NULL, NULL, '学生33', '学生33', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2023-03-10 12:41:14', NULL);
INSERT INTO `kaizhi_user` VALUES ('46', 'student34', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生34', '学生34', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2021-10-11 15:14:49', NULL);
INSERT INTO `kaizhi_user` VALUES ('47', 'student35', '$2b$12$e/XXzSML7EG7dGv6MCw/IuTKZAs0jgGUOfDyKJsRK06lwY7Rlhzde', NULL, NULL, '学生35', '学生35', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-02-03 10:20:21', NULL);
INSERT INTO `kaizhi_user` VALUES ('48', 'student36', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, '学生36', '学生36', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2021-12-15 09:04:24', NULL);
INSERT INTO `kaizhi_user` VALUES ('49', 'student37', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, '学生37', '学生37', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-10-12 16:14:58', NULL);
INSERT INTO `kaizhi_user` VALUES ('50', 'student38', '$2b$12$Poo.gasy5i13qFXUWUmJGuF5sv7X09bRxcLmWU86F0aP1vCdZr/HS', NULL, NULL, '学生38', '学生38', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2022-11-06 08:08:24', NULL);
INSERT INTO `kaizhi_user` VALUES ('51', 'student39', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生39', '学生39', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2024-07-26 19:32:54', NULL);
INSERT INTO `kaizhi_user` VALUES ('52', 'student40', '$2b$12$e/XXzSML7EG7dGv6MCw/IuTKZAs0jgGUOfDyKJsRK06lwY7Rlhzde', NULL, NULL, '学生40', '学生40', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2023-05-10 18:42:53', NULL);
INSERT INTO `kaizhi_user` VALUES ('53', 'student41', '$2b$12$Poo.gasy5i13qFXUWUmJGuF5sv7X09bRxcLmWU86F0aP1vCdZr/HS', NULL, NULL, '学生41', '学生41', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2021-03-15 04:56:11', NULL);
INSERT INTO `kaizhi_user` VALUES ('54', 'student42', '$2b$12$F4K9v478y3I/wHFITx1UnurZLUWThLWpJjRc9Ki9SPze6Tz29sRIu', NULL, NULL, '学生42', '学生42', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2021-05-09 06:17:33', NULL);
INSERT INTO `kaizhi_user` VALUES ('55', 'student43', '$2b$12$bIWoxMVVP8Rqy4IAvonvCeGd2fg72H1PJMvNcVVyCp/Sd1v3BDYia', NULL, NULL, '学生43', '学生43', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-11-25 08:06:05', NULL);
INSERT INTO `kaizhi_user` VALUES ('56', 'student44', '$2b$12$Poo.gasy5i13qFXUWUmJGuF5sv7X09bRxcLmWU86F0aP1vCdZr/HS', NULL, NULL, '学生44', '学生44', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2021-04-16 21:04:38', NULL);
INSERT INTO `kaizhi_user` VALUES ('57', 'student45', '$2b$12$jVc3WjZ58IKUzxVQJnee2eBUyovsb6AY9qmtwsWn9OAmiXk8vitOy', NULL, NULL, '学生45', '学生45', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2023-10-06 14:15:26', NULL);
INSERT INTO `kaizhi_user` VALUES ('58', 'student46', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生46', '学生46', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2020-01-18 01:03:24', NULL);
INSERT INTO `kaizhi_user` VALUES ('59', 'student47', '$2b$12$ZVPvJq.6fRkI8fFaTFrg3uWAtMhT/yhRZDnzsgQjtcVHXW0MZkcUK', NULL, NULL, '学生47', '学生47', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2020-01-16 16:26:44', NULL);
INSERT INTO `kaizhi_user` VALUES ('60', 'student48', '$2b$12$ZVPvJq.6fRkI8fFaTFrg3uWAtMhT/yhRZDnzsgQjtcVHXW0MZkcUK', NULL, NULL, '学生48', '学生48', NULL, NULL, '101001', NULL, '1', NULL, NULL, NULL, '1', '2024-07-05 20:04:11', NULL);
INSERT INTO `kaizhi_user` VALUES ('61', 'student49', '$2b$12$E5eRMyyMRzOOS7hJZ6Wd0eyNxVbCRZyRCg4EXp/QF2kOnxQZ.60oy', NULL, NULL, '学生49', '学生49', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2022-04-08 19:06:35', NULL);
INSERT INTO `kaizhi_user` VALUES ('62', 'student50', '$2b$12$eJOwNRw3y/5lzJKbknTDdOnDLjGkg3AHmjCkKjf5E.af93kVRtaeS', NULL, NULL, '学生50', '学生50', NULL, NULL, '101001', NULL, '2', NULL, NULL, NULL, '1', '2023-12-20 06:16:18', NULL);


-- ----------------------------
-- Table structure for kaizhi_user_role
-- ----------------------------
DROP TABLE IF EXISTS `kaizhi_user_role`;
CREATE TABLE `kaizhi_user_role`  (
                                     `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                     `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                     `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                     `create_time` datetime NULL DEFAULT NULL,
                                     `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                     PRIMARY KEY (`id`) USING BTREE,
                                     INDEX `fk_kaizhi_user_role_user_id`(`user_id` ASC) USING BTREE,
                                     INDEX `fk_kaizhi_user_role_role_id`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kaizhi_user_role
-- ----------------------------
INSERT INTO `kaizhi_user_role` VALUES ('1', '1', '8', '2020-09-25 22:42:06', NULL);
INSERT INTO `kaizhi_user_role` VALUES ('2', '2', '6', '2023-01-09 02:34:27', '超级管理员');
INSERT INTO `kaizhi_user_role` VALUES ('3', '3', '18', '2021-08-05 07:15:36', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('4', '4', '18', '2020-10-09 23:44:25', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('5', '5', '18', '2021-12-12 23:59:31', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('6', '6', '18', '2024-07-27 11:34:13', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('7', '7', '18', '2024-02-04 05:15:03', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('8', '8', '18', '2020-01-08 01:34:56', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('9', '9', '18', '2023-12-25 04:19:50', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('10', '10', '18', '2020-04-28 21:33:27', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('11', '11', '18', '2022-08-28 06:45:30', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('12', '12', '18', '2023-11-05 18:08:01', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('13', '13', '17', '2024-08-03 12:28:48', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('14', '14', '17', '2023-11-04 09:24:08', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('15', '15', '17', '2021-02-01 10:32:37', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('16', '16', '17', '2021-01-27 01:14:02', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('17', '17', '17', '2024-02-19 09:36:16', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('18', '18', '17', '2024-06-04 15:32:23', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('19', '19', '17', '2024-04-26 10:50:13', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('20', '20', '17', '2023-12-08 07:58:12', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('21', '21', '17', '2020-07-14 16:16:37', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('22', '22', '17', '2022-08-06 10:33:21', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('23', '23', '17', '2020-04-11 14:15:52', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('24', '24', '17', '2020-12-15 02:47:18', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('25', '25', '17', '2021-07-21 01:22:50', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('26', '26', '17', '2021-06-20 04:16:52', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('27', '27', '17', '2023-10-20 23:09:54', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('28', '28', '17', '2023-10-18 06:57:42', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('29', '29', '17', '2022-04-11 09:41:20', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('30', '30', '17', '2022-08-13 18:03:46', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('31', '31', '17', '2021-10-24 17:26:31', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('32', '32', '17', '2024-03-04 10:14:36', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('33', '33', '17', '2023-12-14 00:13:50', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('34', '34', '17', '2020-08-25 15:32:39', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('35', '35', '17', '2022-02-03 16:50:36', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('36', '36', '17', '2021-10-08 15:10:52', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('37', '37', '17', '2023-03-25 19:53:23', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('38', '38', '17', '2020-03-24 04:54:42', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('39', '39', '17', '2021-10-22 06:56:27', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('40', '40', '17', '2022-10-07 02:12:13', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('41', '41', '17', '2024-01-15 08:24:05', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('42', '42', '17', '2023-10-13 03:57:57', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('43', '43', '17', '2022-02-13 16:46:06', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('44', '44', '17', '2023-04-17 12:38:48', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('45', '45', '17', '2022-02-08 22:35:17', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('46', '46', '17', '2022-10-04 10:19:52', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('47', '47', '17', '2021-04-04 18:54:54', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('48', '48', '17', '2024-06-07 09:24:20', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('49', '49', '17', '2023-10-13 22:38:37', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('50', '50', '17', '2022-08-08 16:19:37', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('51', '51', '17', '2022-08-20 14:49:23', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('52', '52', '17', '2021-08-01 10:05:43', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('53', '53', '17', '2021-07-04 03:30:43', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('54', '54', '17', '2023-11-18 15:02:35', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('55', '55', '17', '2021-01-03 02:12:15', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('56', '56', '17', '2024-03-22 17:15:15', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('57', '57', '17', '2024-12-10 22:21:34', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('58', '58', '17', '2023-06-24 08:18:30', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('59', '59', '17', '2022-02-10 08:03:36', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('60', '60', '17', '2021-09-09 18:45:55', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('61', '61', '17', '2024-10-16 17:22:49', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('62', '62', '17', '2023-04-14 22:34:39', '系统管理员');
INSERT INTO `kaizhi_user_role` VALUES ('63', '63', '17', '2021-03-16 00:57:06', '系统管理员');



-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
                                       `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       `token` blob NULL,
                                       `authentication_id` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                       `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       `authentication` blob NULL,
                                       `refresh_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals`  (
                                    `userId` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `clientId` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                    `lastModifiedAt` timestamp NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
                                         `client_id` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                         `resource_ids` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `client_secret` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `authorized_grant_types` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `web_server_redirect_uri` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `authorities` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `access_token_validity` int NULL DEFAULT NULL,
                                         `refresh_token_validity` int NULL DEFAULT NULL,
                                         `additional_information` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         `autoapprove` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                         PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('app', NULL, 'app', 'app', 'password,refresh_token', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oauth_client_details` VALUES ('WebApp', NULL, 'WebApp', 'app', 'authorization_code,password,refresh_token,client_credentials', NULL, NULL, 43200, 43200, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token`  (
                                       `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       `token` blob NULL,
                                       `authentication_id` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                       `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                       PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code`  (
                               `code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
                                        `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `token` blob NULL,
                                        `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
INSERT INTO `oauth_refresh_token` VALUES ('b96e057b4e1c4920428e833db48d4c15', 0xEFBFBDEFBFBD00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FEFBFBD4763EFBFBDEFBFBDC9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73EFBFBD0E0A6354EFBFBD5E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002462303132643438372D613930382D343361662D613865662D3533633533393963386264367372000E6A6176612E7574696C2E44617465686AEFBFBD014B59741903000078707708000001613B74C98E78, 0xEFBFBDEFBFBD0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EEFBFBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374EFBFBD0F2531EFBFBDEFBFBD100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E194200EFBFBDEFBFBD5EEFBFBD1E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C69737478EFBFBDEFBFBD1DEFBFBDEFBFBD61EFBFBD03000149000473697A65787000000009770400000009737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001EFBFBD0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F61646D696E7371007E000D740006617069646F637371007E000D74000C64617461626173652F6C6F677371007E000D74000673797374656D7371007E000D740008757365722F6164647371007E000D74000B757365722F64656C6574657371007E000D740009757365722F656469747371007E000D740009757365722F766965777371007E000D740008757365724C6973747871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0024787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EEFBFBD7169EFBFBD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00224C000573636F706571007E00247870740006776562417070737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170EFBFBDEFBFBD74EFBFBD07420200014C00016D71007E00227870737200116A6176612E7574696C2E486173684D61700507EFBFBDEFBFBDEFBFBD1660EFBFBD03000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000561646D696E78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574EFBFBD1DEFBFBDD18FEFBFBDEFBFBD550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574EFBFBD6CEFBFBD5AEFBFBDEFBFBD2A1E020000787200116A6176612E7574696C2E48617368536574EFBFBD44EFBFBDEFBFBDEFBFBDEFBFBDEFBFBD340300007870770C000000103F4000000000000174000361707078017371007E0033770C000000103F40000000000000787371007E002A3F40000000000000770800000010000000007870707371007E0033770C000000103F40000000000000787371007E0033770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001EFBFBD0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000977040000000971007E000F71007E001171007E001371007E001571007E001771007E001971007E001B71007E001D71007E001F7871007E003D737200176A6176612E7574696C2E4C696E6B6564486173684D617034EFBFBD4E5C106CEFBFBDEFBFBD0200015A000B6163636573734F726465727871007E002A3F400000000000067708000000080000000271007E002C71007E002D71007E002E71007E002F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001EFBFBD0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00244C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0030737200116A6176612E7574696C2E54726565536574DD9850EFBFBDEFBFBDEFBFBD5B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001EFBFBD020000787077040000000971007E000F71007E001171007E001371007E001571007E001771007E001971007E001B71007E001D71007E001F787074000561646D696E);

SET FOREIGN_KEY_CHECKS = 1;
