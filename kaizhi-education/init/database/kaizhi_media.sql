-- Host: 192.168.101.65    Database: kaizhi_edu_media
/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;



--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files`
(
    `id`           varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '文件id,md5值',
    `company_id`   bigint                                                   DEFAULT NULL COMMENT '机构ID',
    `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '机构名称',
    `filename`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
    `file_type`    varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci   DEFAULT NULL COMMENT '文件类型（图片、文档，视频）',
    `tags`         varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '标签',
    `bucket`       varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '存储目录',
    `file_path`    varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '存储路径',
    `file_id`      varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '文件id',
    `url`          varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '媒资文件访问地址',
    `username`     varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci   DEFAULT NULL COMMENT '上传人',
    `create_date`  datetime                                                 DEFAULT NULL COMMENT '上传时间',
    `change_date`  datetime                                                 DEFAULT NULL COMMENT '修改时间',
    `status`       varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci   DEFAULT '1' COMMENT '状态,1:正常，0:不展示',
    `remark`       varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci   DEFAULT NULL COMMENT '备注',
    `audit_status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci   DEFAULT NULL COMMENT '审核状态',
    `audit_mind`   varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '审核意见',
    `file_size`    bigint                                                   DEFAULT NULL COMMENT '文件大小',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `unique_fileid` (`file_id`) USING BTREE COMMENT '文件id唯一索引 '
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb3
  ROW_FORMAT = DYNAMIC COMMENT ='媒资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files`
    DISABLE KEYS */;
INSERT INTO `media_files`
VALUES ('3aad1f3480ad0725f2a31e5127edbc6a', 1232141425, NULL, ' (1).mp4', '001002', '课程视频', 'video',
        '3/a/3aad1f3480ad0725f2a31e5127edbc6a/3aad1f3480ad0725f2a31e5127edbc6a.mp4', '3aad1f3480ad0725f2a31e5127edbc6a',
        '/video/3/a/3aad1f3480ad0725f2a31e5127edbc6a/3aad1f3480ad0725f2a31e5127edbc6a.mp4', NULL, '2024-11-28 21:41:03',
        NULL, '1', '', '002003', NULL, 175554);
INSERT INTO `media_files`
VALUES ('5cc8e1cd17c5fff55aef29508f363095', 1232141425, NULL, ' (13).mp4', '001002', '课程视频', 'video',
        '5/c/5cc8e1cd17c5fff55aef29508f363095/5cc8e1cd17c5fff55aef29508f363095.mp4', '5cc8e1cd17c5fff55aef29508f363095',
        '/video/5/c/5cc8e1cd17c5fff55aef29508f363095/5cc8e1cd17c5fff55aef29508f363095.mp4', NULL, '2024-11-28 21:55:57',
        NULL, '1', '', '002003', NULL, 647858);
INSERT INTO `media_files`
VALUES ('602edfc767f1a656612d8c9a9137d617', 1232141425, NULL, ' (9).mp4', '001002', '课程视频', 'video',
        '6/0/602edfc767f1a656612d8c9a9137d617/602edfc767f1a656612d8c9a9137d617.mp4', '602edfc767f1a656612d8c9a9137d617',
        '/video/6/0/602edfc767f1a656612d8c9a9137d617/602edfc767f1a656612d8c9a9137d617.mp4', NULL, '2024-11-28 21:55:45',
        NULL, '1', '', '002003', NULL, 394330);
INSERT INTO `media_files`
VALUES ('701b9289b467c0fdb608a65ac5dec016', 1232141425, NULL, ' (10).mp4', '001002', '课程视频', 'video',
        '7/0/701b9289b467c0fdb608a65ac5dec016/701b9289b467c0fdb608a65ac5dec016.mp4', '701b9289b467c0fdb608a65ac5dec016',
        '/video/7/0/701b9289b467c0fdb608a65ac5dec016/701b9289b467c0fdb608a65ac5dec016.mp4', NULL, '2024-11-28 21:55:48',
        NULL, '1', '', '002003', NULL, 504316);
INSERT INTO `media_files`
VALUES ('878c02a0df04f94144ab808b1c4b74a0', 1232141425, NULL, ' (8).mp4', '001002', '课程视频', 'video',
        '8/7/878c02a0df04f94144ab808b1c4b74a0/878c02a0df04f94144ab808b1c4b74a0.mp4', '878c02a0df04f94144ab808b1c4b74a0',
        '/video/8/7/878c02a0df04f94144ab808b1c4b74a0/878c02a0df04f94144ab808b1c4b74a0.mp4', NULL, '2024-11-28 21:55:42',
        NULL, '1', '', '002003', NULL, 410012);
INSERT INTO `media_files`
VALUES ('c65857cc726ae5593fe99783edb39d37', 1232141425, NULL, ' (7).mp4', '001002', '课程视频', 'video',
        'c/6/c65857cc726ae5593fe99783edb39d37/c65857cc726ae5593fe99783edb39d37.mp4', 'c65857cc726ae5593fe99783edb39d37',
        '/video/c/6/c65857cc726ae5593fe99783edb39d37/c65857cc726ae5593fe99783edb39d37.mp4', NULL, '2024-11-28 21:55:39',
        NULL, '1', '', '002003', NULL, 489406);
INSERT INTO `media_files`
VALUES ('c834cb8e731a58231cea7845fe2e985d', 1232141425, NULL, ' (15).mp4', '001002', '课程视频', 'video',
        'c/8/c834cb8e731a58231cea7845fe2e985d/c834cb8e731a58231cea7845fe2e985d.mp4', 'c834cb8e731a58231cea7845fe2e985d',
        '/video/c/8/c834cb8e731a58231cea7845fe2e985d/c834cb8e731a58231cea7845fe2e985d.mp4', NULL, '2024-11-28 21:56:04',
        NULL, '1', '', '002003', NULL, 237107);
INSERT INTO `media_files`
VALUES ('e16e6220e4195a46316b17e0b3bee63b', 1232141425, NULL, ' (11).mp4', '001002', '课程视频', 'video',
        'e/1/e16e6220e4195a46316b17e0b3bee63b/e16e6220e4195a46316b17e0b3bee63b.mp4', 'e16e6220e4195a46316b17e0b3bee63b',
        '/video/e/1/e16e6220e4195a46316b17e0b3bee63b/e16e6220e4195a46316b17e0b3bee63b.mp4', NULL, '2024-11-28 21:55:51',
        NULL, '1', '', '002003', NULL, 498043);
INSERT INTO `media_files`
VALUES ('e1d907d7f3fc6aade54c4e12c87f328b', 1232141425, NULL, ' (14).mp4', '001002', '课程视频', 'video',
        'e/1/e1d907d7f3fc6aade54c4e12c87f328b/e1d907d7f3fc6aade54c4e12c87f328b.mp4', 'e1d907d7f3fc6aade54c4e12c87f328b',
        '/video/e/1/e1d907d7f3fc6aade54c4e12c87f328b/e1d907d7f3fc6aade54c4e12c87f328b.mp4', NULL, '2024-11-28 21:56:01',
        NULL, '1', '', '002003', NULL, 637635);
INSERT INTO `media_files`
VALUES ('e2268d52dea91b85e18fd7fe2b386452', 1232141425, NULL, ' (2).mp4', '001002', '课程视频', 'video',
        'e/2/e2268d52dea91b85e18fd7fe2b386452/e2268d52dea91b85e18fd7fe2b386452.mp4', 'e2268d52dea91b85e18fd7fe2b386452',
        '/video/e/2/e2268d52dea91b85e18fd7fe2b386452/e2268d52dea91b85e18fd7fe2b386452.mp4', NULL, '2024-11-28 21:55:23',
        NULL, '1', '', '002003', NULL, 450822);
INSERT INTO `media_files`
VALUES ('e6ecda8e6c1ff312efcd8a76037225ac', 1232141425, NULL, ' (3).mp4', '001002', '课程视频', 'video',
        'e/6/e6ecda8e6c1ff312efcd8a76037225ac/e6ecda8e6c1ff312efcd8a76037225ac.mp4', 'e6ecda8e6c1ff312efcd8a76037225ac',
        '/video/e/6/e6ecda8e6c1ff312efcd8a76037225ac/e6ecda8e6c1ff312efcd8a76037225ac.mp4', NULL, '2024-11-28 21:55:26',
        NULL, '1', '', '002003', NULL, 386712);
INSERT INTO `media_files`
VALUES ('e7b6689813479f1a4bcbda99d882550d', 1232141425, NULL, ' (5).mp4', '001002', '课程视频', 'video',
        'e/7/e7b6689813479f1a4bcbda99d882550d/e7b6689813479f1a4bcbda99d882550d.mp4', 'e7b6689813479f1a4bcbda99d882550d',
        '/video/e/7/e7b6689813479f1a4bcbda99d882550d/e7b6689813479f1a4bcbda99d882550d.mp4', NULL, '2024-11-28 21:55:32',
        NULL, '1', '', '002003', NULL, 416377);
INSERT INTO `media_files`
VALUES ('ede081035592464b387a43de1e88e1e5', 1232141425, NULL, ' (4).mp4', '001002', '课程视频', 'video',
        'e/d/ede081035592464b387a43de1e88e1e5/ede081035592464b387a43de1e88e1e5.mp4', 'ede081035592464b387a43de1e88e1e5',
        '/video/e/d/ede081035592464b387a43de1e88e1e5/ede081035592464b387a43de1e88e1e5.mp4', NULL, '2024-11-28 21:55:29',
        NULL, '1', '', '002003', NULL, 423670);
INSERT INTO `media_files`
VALUES ('faf3a36b168a0859fed78d1a3b0b9895', 1232141425, NULL, ' (12).mp4', '001002', '课程视频', 'video',
        'f/a/faf3a36b168a0859fed78d1a3b0b9895/faf3a36b168a0859fed78d1a3b0b9895.mp4', 'faf3a36b168a0859fed78d1a3b0b9895',
        '/video/f/a/faf3a36b168a0859fed78d1a3b0b9895/faf3a36b168a0859fed78d1a3b0b9895.mp4', NULL, '2024-11-28 21:55:54',
        NULL, '1', '', '002003', NULL, 372505);
INSERT INTO `media_files`
VALUES ('ff141b6db970fb19debff6f006cde7e4', 1232141425, NULL, ' (6).mp4', '001002', '课程视频', 'video',
        'f/f/ff141b6db970fb19debff6f006cde7e4/ff141b6db970fb19debff6f006cde7e4.mp4', 'ff141b6db970fb19debff6f006cde7e4',
        '/video/f/f/ff141b6db970fb19debff6f006cde7e4/ff141b6db970fb19debff6f006cde7e4.mp4', NULL, '2024-11-28 21:55:36',
        NULL, '1', '', '002003', NULL, 417742);
/*!40000 ALTER TABLE `media_files`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_process`
--

DROP TABLE IF EXISTS `media_process`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_process`
(
    `id`          bigint                                                  NOT NULL AUTO_INCREMENT,
    `file_id`     varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件标识',
    `filename`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
    `bucket`      varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存储桶',
    `file_path`   varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '存储路径',
    `status`      varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '状态, 1: 未处理, 2: 处理成功, 3: 处理失败, 4: 正在处理（乐观锁）',
    `create_date` datetime                                                NOT NULL COMMENT '上传时间',
    `finish_date` datetime                                                 DEFAULT NULL COMMENT '完成时间',
    `fail_count`  int                                                      DEFAULT 0 COMMENT '失败次数',
    `url`         varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '媒资文件访问地址',
    `errormsg`    varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失败原因',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `unique_fileid` (`file_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb3
  ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_process`
--

LOCK TABLES `media_process` WRITE;
/*!40000 ALTER TABLE `media_process`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `media_process`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_process_history`
--

DROP TABLE IF EXISTS `media_process_history`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_process_history`
(
    `id`          bigint                                                   NOT NULL AUTO_INCREMENT,
    `file_id`     varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '文件标识',
    `filename`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '文件名称',
    `bucket`      varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '存储源',
    `status`      varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci   NOT NULL COMMENT '状态, 1: 未处理, 2: 处理成功, 3: 处理失败',
    `create_date` datetime                                                 NOT NULL COMMENT '上传时间',
    `finish_date` datetime                                                 NOT NULL COMMENT '完成时间',
    `url`         varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '媒资文件访问地址',
    `fail_count`  int                                                      DEFAULT 0 COMMENT '失败次数',
    `file_path`   varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '文件路径',
    `errormsg`    varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失败原因',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb3
  ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_process_history`
--

LOCK TABLES `media_process_history` WRITE;
/*!40000 ALTER TABLE `media_process_history`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `media_process_history`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mq_message`
--

DROP TABLE IF EXISTS `mq_message`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mq_message`
(
    `id`                 varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息id',
    `message_type`       varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型代码',
    `business_key1`      varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci   DEFAULT NULL COMMENT '关联业务信息',
    `business_key2`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '关联业务信息',
    `business_key3`      varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '关联业务信息',
    `mq_host`            varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列主机',
    `mq_port`            int                                                    NOT NULL COMMENT '消息队列端口',
    `mq_virtualhost`     varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列虚拟主机',
    `mq_queue`           varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '队列名称',
    `inform_num`         int unsigned                                           NOT NULL COMMENT '通知次数',
    `state`              char(1) CHARACTER SET utf8 COLLATE utf8_general_ci     NOT NULL COMMENT '处理状态，0:初始，1:成功',
    `returnfailure_date` datetime                                                 DEFAULT NULL COMMENT '回复失败时间',
    `returnsuccess_date` datetime                                                 DEFAULT NULL COMMENT '回复成功时间',
    `returnfailure_msg`  varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回复失败内容',
    `inform_date`        datetime                                                 DEFAULT NULL COMMENT '最近通知时间',
    `stage_state1`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci       DEFAULT NULL COMMENT '阶段1处理状态, 0:初始，1:成功',
    `stage_state2`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci       DEFAULT NULL COMMENT '阶段2处理状态, 0:初始，1:成功',
    `stage_state3`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci       DEFAULT NULL COMMENT '阶段3处理状态, 0:初始，1:成功',
    `stage_state4`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci       DEFAULT NULL COMMENT '阶段4处理状态, 0:初始，1:成功',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb3
  ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mq_message`
--

LOCK TABLES `mq_message` WRITE;
/*!40000 ALTER TABLE `mq_message`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mq_message`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mq_message_history`
--

DROP TABLE IF EXISTS `mq_message_history`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mq_message_history`
(
    `id`                 varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息id',
    `message_type`       varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型代码',
    `business_key1`      varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '关联业务信息',
    `business_key2`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联业务信息',
    `business_key3`      varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联业务信息',
    `mq_host`            varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列主机',
    `mq_port`            int                                                    NOT NULL COMMENT '消息队列端口',
    `mq_virtualhost`     varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息队列虚拟主机',
    `mq_queue`           varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '队列名称',
    `inform_num`         int(10) unsigned zerofill                               DEFAULT NULL COMMENT '通知次数',
    `state`              int(10) unsigned zerofill                               DEFAULT NULL COMMENT '处理状态，0:初始，1:成功，2:失败',
    `returnfailure_date` datetime                                                DEFAULT NULL COMMENT '回复失败时间',
    `returnsuccess_date` datetime                                                DEFAULT NULL COMMENT '回复成功时间',
    `returnfailure_msg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回复失败内容',
    `inform_date`        datetime                                                DEFAULT NULL COMMENT '最近通知时间',
    `stage_state1`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci      DEFAULT NULL,
    `stage_state2`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci      DEFAULT NULL,
    `stage_state3`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci      DEFAULT NULL,
    `stage_state4`       char(1) CHARACTER SET utf8 COLLATE utf8_general_ci      DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb3
  ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mq_message_history`
--

LOCK TABLES `mq_message_history` WRITE;
/*!40000 ALTER TABLE `mq_message_history`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mq_message_history`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

--
-- Table structure for table `media_minio_chunk`
--
CREATE TABLE `media_minio_chunk`
(
    `id`          bigint                                                  NOT NULL AUTO_INCREMENT,
    `file_id`     varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件标识',
    `bucket`      varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存储桶',
    `file_path`   varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '存储路径',
    `chunk`       int                                                     NOT NULL COMMENT '分块块数',
    `create_date` datetime                                                NOT NULL COMMENT '上传时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb3
  ROW_FORMAT = DYNAMIC;