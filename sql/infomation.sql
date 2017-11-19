/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : infomation

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-19 18:53:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(22) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(22) NOT NULL DEFAULT '0' COMMENT '父id',
  `name` varchar(20) NOT NULL COMMENT '名字',
  `url` varchar(200) NOT NULL COMMENT '连接',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '图标',
  `orders` int(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', '##', 'glyphicon glyphicon-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '用户管理', 'tables.html', 'glyphicon glyphicon-user', '0');
INSERT INTO `sys_menu` VALUES ('3', '1', '菜单管理', '###', 'glyphicon glyphicon-th-list', '0');
INSERT INTO `sys_menu` VALUES ('4', '1', '角色管理', '##', 'glyphicon glyphicon-asterisk', '0');
INSERT INTO `sys_menu` VALUES ('5', '1', '日志管理', 'icon.html', 'glyphicon glyphicon-eye-open', '0');
INSERT INTO `sys_menu` VALUES ('6', '0', '关于系统', '#', 'glyphicon glyphicon-fire', '0');
INSERT INTO `sys_menu` VALUES ('7', '0', 'tt', 'tt', 'glyphicon glyphicon-cog', '0');
INSERT INTO `sys_menu` VALUES ('8', '6', 'rr', 'test.html', 'glyphicon glyphicon-user', '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(22) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) NOT NULL COMMENT '角色名字',
  `create_time` datetime NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '2017-11-18 20:04:27');
INSERT INTO `sys_role` VALUES ('2', '普通管理员', '2017-11-18 20:04:43');
INSERT INTO `sys_role` VALUES ('3', '一般管理员', '2017-11-18 20:04:55');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `role_id` int(22) NOT NULL COMMENT '角色id',
  `menu_id` int(22) NOT NULL COMMENT '菜单id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色绑定菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1', '1', '2017-11-18 20:10:46');
INSERT INTO `sys_role_menu` VALUES ('2', '1', '2', '2017-11-18 20:10:53');
INSERT INTO `sys_role_menu` VALUES ('3', '1', '3', '2017-11-18 20:11:06');
INSERT INTO `sys_role_menu` VALUES ('4', '3', '5', '2017-11-18 20:11:22');
INSERT INTO `sys_role_menu` VALUES ('5', '3', '1', '2017-11-18 20:47:25');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(22) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(22) DEFAULT NULL COMMENT '用户名称',
  `nick_name` varchar(22) NOT NULL COMMENT '昵称',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建日期',
  `c_user` int(22) DEFAULT '0' COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2017-11-18 18:41:16', '0');
INSERT INTO `sys_user` VALUES ('2', '张三', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '2017-11-18 20:27:06', '0');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(22) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(22) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户绑定角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1', '2017-11-18 20:07:16');
INSERT INTO `sys_user_role` VALUES ('4', '2', '3', '2017-11-19 14:57:07');
INSERT INTO `sys_user_role` VALUES ('5', '1', '2', '2017-11-19 15:16:09');
INSERT INTO `sys_user_role` VALUES ('6', '1', '3', '2017-11-19 15:16:06');

-- ----------------------------
-- View structure for `user_menu`
-- ----------------------------
DROP VIEW IF EXISTS `user_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `user_menu` AS select `sys_menu`.`name` AS `menu_name`,`sys_menu`.`url` AS `url`,`sys_menu`.`icon` AS `icon`,`sys_menu`.`pid` AS `pid`,`sys_user`.`name` AS `user_name`,`sys_menu`.`id` AS `menu_id`,`sys_menu`.`orders` AS `orders`,`sys_user`.`id` AS `user_id` from ((((`sys_menu` join `sys_role`) join `sys_role_menu`) join `sys_user`) join `sys_user_role`) where ((`sys_user`.`id` = `sys_user_role`.`user_id`) and (`sys_role`.`id` = `sys_user_role`.`role_id`) and (`sys_role`.`id` = `sys_role_menu`.`role_id`) and (`sys_menu`.`id` = `sys_role_menu`.`menu_id`)) order by `sys_menu`.`id` desc,`sys_menu`.`orders` desc,`sys_user`.`id` ;
