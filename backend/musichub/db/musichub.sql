/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : 127.0.0.1:3306
 Source Schema         : musichub

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 14/09/2022 10:43:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_singer_info
-- ----------------------------
DROP TABLE IF EXISTS `m_singer_info`;
CREATE TABLE `m_singer_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌手姓名',
  `sex` tinyint DEFAULT NULL COMMENT '性别',
  `picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌手照片',
  `birthday` datetime DEFAULT NULL COMMENT '歌手生日',
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌手地区',
  `introduction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌手介绍',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='歌手信息表';

-- ----------------------------
-- Table structure for m_song_collections
-- ----------------------------
DROP TABLE IF EXISTS `m_song_collections`;
CREATE TABLE `m_song_collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '收藏类型：0歌曲，1歌单',
  `song_id` int DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int DEFAULT NULL COMMENT '歌单id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='收藏';

-- ----------------------------
-- Table structure for m_song_comment
-- ----------------------------
DROP TABLE IF EXISTS `m_song_comment`;
CREATE TABLE `m_song_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '收藏类型：0歌曲，1歌单',
  `song_id` int DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int DEFAULT NULL COMMENT '歌单id',
  `content` text COLLATE utf8mb4_general_ci COMMENT '评论内容',
  `praise_num` int DEFAULT '0' COMMENT '评论点赞数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='歌曲评论表';

-- ----------------------------
-- Table structure for m_song_info
-- ----------------------------
DROP TABLE IF EXISTS `m_song_info`;
CREATE TABLE `m_song_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `singer_id` int DEFAULT NULL COMMENT '歌手id',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌曲名称',
  `introduction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌曲介绍',
  `album` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属专辑',
  `picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌曲封面',
  `lyrics` text COLLATE utf8mb4_general_ci COMMENT '歌词',
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌曲链接',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='歌曲信息表';

-- ----------------------------
-- Table structure for m_song_list
-- ----------------------------
DROP TABLE IF EXISTS `m_song_list`;
CREATE TABLE `m_song_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌单标题',
  `picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌单封面',
  `introduction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌单介绍',
  `style` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '歌单风格',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='歌单表';

-- ----------------------------
-- Table structure for m_song_list_details
-- ----------------------------
DROP TABLE IF EXISTS `m_song_list_details`;
CREATE TABLE `m_song_list_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `song_id` int DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int DEFAULT NULL COMMENT '歌单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='歌单明细表';

-- ----------------------------
-- Table structure for m_song_score
-- ----------------------------
DROP TABLE IF EXISTS `m_song_score`;
CREATE TABLE `m_song_score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `song_list_id` int DEFAULT NULL COMMENT '歌单id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `score` int DEFAULT NULL COMMENT '打分',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='歌曲打分表';

-- ----------------------------
-- Table structure for m_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `m_sys_user`;
CREATE TABLE `m_sys_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='管理员表';

-- ----------------------------
-- Table structure for m_user_info
-- ----------------------------
DROP TABLE IF EXISTS `m_user_info`;
CREATE TABLE `m_user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别：1男，0女',
  `phone` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系方式',
  `email` char(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `introduction` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '自我介绍',
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址',
  `avator` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户表';

SET FOREIGN_KEY_CHECKS = 1;
