/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - php9w1n3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`php9w1n3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `php9w1n3`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/php9w1n3/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/php9w1n3/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/php9w1n3/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussxinwenxinxi` */

DROP TABLE IF EXISTS `discussxinwenxinxi`;

CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';

/*Data for the table `discussxinwenxinxi` */

insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (61,'2021-02-21 19:18:34',1,1,'评论内容1','回复内容1');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (62,'2021-02-21 19:18:34',2,2,'评论内容2','回复内容2');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (63,'2021-02-21 19:18:34',3,3,'评论内容3','回复内容3');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (64,'2021-02-21 19:18:34',4,4,'评论内容4','回复内容4');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (65,'2021-02-21 19:18:34',5,5,'评论内容5','回复内容5');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (66,'2021-02-21 19:18:34',6,6,'评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (51,'2021-02-21 19:18:34','标题1','简介1','http://localhost:8080/php9w1n3/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (52,'2021-02-21 19:18:34','标题2','简介2','http://localhost:8080/php9w1n3/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (53,'2021-02-21 19:18:34','标题3','简介3','http://localhost:8080/php9w1n3/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (54,'2021-02-21 19:18:34','标题4','简介4','http://localhost:8080/php9w1n3/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (55,'2021-02-21 19:18:34','标题5','简介5','http://localhost:8080/php9w1n3/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (56,'2021-02-21 19:18:34','标题6','简介6','http://localhost:8080/php9w1n3/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-21 19:18:34');

/*Table structure for table `xinwenleibie` */

DROP TABLE IF EXISTS `xinwenleibie`;

CREATE TABLE `xinwenleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenleibie` varchar(200) NOT NULL COMMENT '新闻类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinwenleibie` (`xinwenleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='新闻类别';

/*Data for the table `xinwenleibie` */

insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (11,'2021-02-21 19:18:34','新闻类别1');
insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (12,'2021-02-21 19:18:34','新闻类别2');
insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (13,'2021-02-21 19:18:34','新闻类别3');
insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (14,'2021-02-21 19:18:34','新闻类别4');
insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (15,'2021-02-21 19:18:34','新闻类别5');
insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (16,'2021-02-21 19:18:34','新闻类别6');

/*Table structure for table `xinwenxinxi` */

DROP TABLE IF EXISTS `xinwenxinxi`;

CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenleibie` varchar(200) NOT NULL COMMENT '新闻类别',
  `xinwentupian` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `xinwenshipin` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `xinwenxiangqing` longtext COMMENT '新闻详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `xinwenxinxi` */

insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-02-21 19:18:34','新闻标题1','新闻类别1','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian1.jpg','','新闻详情1','2021-02-21',1,1,'2021-02-21 19:18:34',1);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (22,'2021-02-21 19:18:34','新闻标题2','新闻类别2','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian2.jpg','','新闻详情2','2021-02-21',2,2,'2021-02-21 19:18:34',2);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (23,'2021-02-21 19:18:34','新闻标题3','新闻类别3','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian3.jpg','','新闻详情3','2021-02-21',3,3,'2021-02-21 19:18:34',3);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (24,'2021-02-21 19:18:34','新闻标题4','新闻类别4','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian4.jpg','','新闻详情4','2021-02-21',4,4,'2021-02-21 19:18:34',4);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (25,'2021-02-21 19:18:34','新闻标题5','新闻类别5','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian5.jpg','','新闻详情5','2021-02-21',5,5,'2021-02-21 19:18:34',5);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (26,'2021-02-21 19:18:34','新闻标题6','新闻类别6','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian6.jpg','','新闻详情6','2021-02-21',6,6,'2021-02-21 19:18:34',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (31,'2021-02-21 19:18:34','用户1','123456','姓名1','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (32,'2021-02-21 19:18:34','用户2','123456','姓名2','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (33,'2021-02-21 19:18:34','用户3','123456','姓名3','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (34,'2021-02-21 19:18:34','用户4','123456','姓名4','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (35,'2021-02-21 19:18:34','用户5','123456','姓名5','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (36,'2021-02-21 19:18:34','用户6','123456','姓名6','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
