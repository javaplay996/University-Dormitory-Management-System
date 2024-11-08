/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - susheguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`susheguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `susheguanlixitong`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin` varchar(200) DEFAULT NULL COMMENT '物品 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `baoxiu_content` text COMMENT '报修详情',
  `baoxiu_types` int(11) DEFAULT NULL COMMENT '是否维修',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`wupin`,`insert_time`,`baoxiu_content`,`baoxiu_types`,`create_time`) values (1,1,'凳子','2021-04-23 20:38:29','凳子坏了\r\n',1,'2021-04-23 20:38:29');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dianbiao` */

DROP TABLE IF EXISTS `dianbiao`;

CREATE TABLE `dianbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `dianbiao_number` varchar(200) DEFAULT NULL COMMENT '电表编号 Search111 ',
  `dianbiao_money` decimal(10,2) DEFAULT NULL COMMENT '电表余额 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='电表';

/*Data for the table `dianbiao` */

insert  into `dianbiao`(`id`,`sushe_id`,`dianbiao_number`,`dianbiao_money`,`create_time`) values (1,2,'101','0.00','2021-04-23 20:15:43'),(2,1,'103','100.00','2021-04-23 20:17:30'),(3,3,'104','10.00','2021-04-23 20:30:55');

/*Table structure for table `dianbiao_jiaofei` */

DROP TABLE IF EXISTS `dianbiao_jiaofei`;

CREATE TABLE `dianbiao_jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianbiao_id` int(11) DEFAULT NULL COMMENT '电表',
  `dianbiao_jiaofei_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='电表缴费';

/*Data for the table `dianbiao_jiaofei` */

insert  into `dianbiao_jiaofei`(`id`,`dianbiao_id`,`dianbiao_jiaofei_money`,`insert_time`,`create_time`) values (1,2,'100.00','2021-04-23 20:23:23','2021-04-23 20:23:23'),(2,3,'10.00','2021-04-23 20:31:08','2021-04-23 20:31:08');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-23 19:25:42'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-23 19:25:42'),(3,'weishengjiancha_types','卫生检查类型名称',1,'优',NULL,'2021-04-23 19:25:42'),(4,'weishengjiancha_types','卫生检查类型名称',2,'良',NULL,'2021-04-23 19:25:42'),(5,'weishengjiancha_types','卫生检查类型名称',2,'差',NULL,'2021-04-23 19:25:43'),(6,'baoxiu_types','是否维修',1,'已维修',NULL,'2021-04-23 19:25:43'),(7,'baoxiu_types','是否维修',2,'未维修',NULL,'2021-04-23 19:25:43'),(8,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-23 19:25:43'),(9,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-23 19:25:43'),(10,'gonggao_types','公告类型名称',3,'类型3',NULL,'2021-04-23 20:32:37');

/*Table structure for table `fangke` */

DROP TABLE IF EXISTS `fangke`;

CREATE TABLE `fangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangke_name` varchar(200) DEFAULT NULL COMMENT '访客姓名 Search111 ',
  `fangke_phone` varchar(200) DEFAULT NULL COMMENT '访客手机号 Search111 ',
  `fangke_id_number` varchar(200) DEFAULT NULL COMMENT '访客身份证号 Search111 ',
  `fangke_wendu` varchar(200) DEFAULT NULL COMMENT '温度 Search111 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `fangke_content` text COMMENT '来访事由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '来访日期 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='访客';

/*Data for the table `fangke` */

insert  into `fangke`(`id`,`fangke_name`,`fangke_phone`,`fangke_id_number`,`fangke_wendu`,`sushe_id`,`fangke_content`,`insert_time`,`create_time`) values (1,'张33','17703786931','410224199610232011','39度',1,'找我弟弟\r\n','2021-04-23 20:25:25','2021-04-23 20:25:25'),(2,'黄启明','17703786931','410224199610232011','38度',3,'找我姐\r\n','2021-04-23 20:32:07','2021-04-23 20:32:07'),(3,'胡启臻','17703786931','410224196110241022','36.6度',2,'找我哥们\r\n','2021-04-23 20:51:42','2021-04-23 20:51:42');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-04-23 20:25:45','公告1的内容\r\n','2021-04-23 20:25:45'),(4,'公告2',2,'2021-04-23 20:32:22','公告2的详情\r\n','2021-04-23 20:32:22');

/*Table structure for table `queqin` */

DROP TABLE IF EXISTS `queqin`;

CREATE TABLE `queqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `queqin_time` varchar(200) DEFAULT NULL COMMENT '缺勤日期 Search111 ',
  `queqin_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='缺勤';

/*Data for the table `queqin` */

insert  into `queqin`(`id`,`yonghu_id`,`queqin_time`,`queqin_content`,`insert_time`,`create_time`) values (1,3,'2021-04-22','','2021-04-23 20:17:08','2021-04-23 20:17:08'),(2,4,'2021-04-22','','2021-04-23 20:30:26','2021-04-23 20:30:26'),(3,4,'2021-04-21','据宿舍人员说 去网吧包夜去了\r\n','2021-04-23 20:49:25','2021-04-23 20:49:25');

/*Table structure for table `shuibiao` */

DROP TABLE IF EXISTS `shuibiao`;

CREATE TABLE `shuibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `shuibiao_number` varchar(200) DEFAULT NULL COMMENT '水表编号 Search111 ',
  `shuibiao_money` decimal(10,2) DEFAULT NULL COMMENT '水表余额 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='水表';

/*Data for the table `shuibiao` */

insert  into `shuibiao`(`id`,`sushe_id`,`shuibiao_number`,`shuibiao_money`,`create_time`) values (1,2,'101','30.00','2021-04-23 20:23:42'),(2,1,'102','100.00','2021-04-23 20:24:23');

/*Table structure for table `shuibiao_jiaofei` */

DROP TABLE IF EXISTS `shuibiao_jiaofei`;

CREATE TABLE `shuibiao_jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuibiao_id` int(11) DEFAULT NULL COMMENT '水表',
  `shuibiao_jiaofei_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='水表缴费';

/*Data for the table `shuibiao_jiaofei` */

insert  into `shuibiao_jiaofei`(`id`,`shuibiao_id`,`shuibiao_jiaofei_money`,`insert_time`,`create_time`) values (1,1,'10.00','2021-04-23 20:23:53','2021-04-23 20:23:53'),(2,1,'20.00','2021-04-23 20:23:59','2021-04-23 20:23:59'),(3,2,'100.00','2021-04-23 20:50:06','2021-04-23 20:50:06');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `sushe_number` int(11) DEFAULT '0' COMMENT '已住人员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`building`,`unit`,`room`,`sushe_number`,`create_time`) values (1,'1','1','101',1,'2021-04-23 20:06:16'),(2,'1','1','102',2,'2021-04-23 20:06:40'),(3,'1','2','1033',0,'2021-04-23 20:28:03');

/*Table structure for table `sushe_yonghu` */

DROP TABLE IF EXISTS `sushe_yonghu`;

CREATE TABLE `sushe_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='人员与宿舍关系';

/*Data for the table `sushe_yonghu` */

insert  into `sushe_yonghu`(`id`,`yonghu_id`,`sushe_id`,`create_time`) values (2,2,2,'2021-04-23 20:06:50'),(3,1,1,'2021-04-23 20:24:44'),(5,3,2,'2021-04-23 20:29:06');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','br7i6r1no86ls6z3q91rdib9rvag0ay7','2021-04-23 19:50:17','2021-04-23 22:03:39'),(2,8,'a22','users','宿舍管理员','u7f1nlx0fmynajdba34c2ar3stdtf96u','2021-04-23 20:33:31','2021-04-23 21:38:36'),(3,1,'a1','yonghu','用户','h7a0y11cdnm4ho4clrygzgbmz5wauyl7','2021-04-23 20:34:43','2021-04-23 22:03:56'),(4,4,'a4','yonghu','用户','sm05u0jhd1z3dxu7nj17f46vbrtygg73','2021-04-23 20:53:14','2021-04-23 21:53:15'),(5,5,'a5','yonghu','用户','56aqun79i5gpd9dflg2i3ja7dz2pxxy9','2021-04-23 21:08:15','2021-04-23 22:08:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13'),(7,'a11','123456','宿舍管理员','2021-04-23 19:51:22'),(8,'a222','123456','宿舍管理员','2021-04-23 20:26:58');

/*Table structure for table `weishengjiancha` */

DROP TABLE IF EXISTS `weishengjiancha`;

CREATE TABLE `weishengjiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `weishengjiancha_time` varchar(200) DEFAULT NULL COMMENT '检查日期 Search111 ',
  `weishengjiancha_types` int(11) DEFAULT NULL COMMENT '检查结果 Search111 ',
  `weishengjiancha_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='卫生检查';

/*Data for the table `weishengjiancha` */

insert  into `weishengjiancha`(`id`,`sushe_id`,`weishengjiancha_time`,`weishengjiancha_types`,`weishengjiancha_content`,`insert_time`,`create_time`) values (1,2,'2021-04-23',2,'','2021-04-23 20:16:08','2021-04-23 20:16:08'),(2,2,'2021-04-22',2,'','2021-04-23 20:16:18','2021-04-23 20:16:18'),(3,1,'2021-04-24',2,'','2021-04-23 20:16:29','2021-04-23 20:16:29'),(4,2,'2021-04-24',1,'','2021-04-23 20:16:44','2021-04-23 20:16:44'),(5,3,'2021-04-22',2,'还好\r\n','2021-04-23 20:29:35','2021-04-23 20:29:35'),(6,3,'2021-04-23',2,'宿舍\r\n','2021-04-23 20:30:09','2021-04-23 20:30:09'),(7,3,'2021-04-13',2,'....\r\n','2021-04-23 20:48:44','2021-04-23 20:48:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张111111111111','17703786901','410224199610232001','http://localhost:8080/susheguanlixitong/file/download?fileName=1619178716190.jpg',2,'2021-04-23 19:51:57'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/susheguanlixitong/file/download?fileName=1619178732081.jpg',1,'2021-04-23 19:52:15'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/susheguanlixitong/file/download?fileName=1619179551201.jpg',2,'2021-04-23 20:05:52'),(4,'a4','123456','张4','17703786904','410224199610232004','http://localhost:8080/susheguanlixitong/file/download?fileName=1619180845516.jpg',2,'2021-04-23 20:27:33'),(5,'a5','123456','张5','17703786905','410224199610232005','http://localhost:8080/susheguanlixitong/file/download?fileName=1619183283442.jpg',1,'2021-04-23 21:08:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
