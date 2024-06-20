/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot07j52
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot07j52` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot07j52`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot07j52/upload/1620269548220.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot07j52/upload/1620269800481.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot07j52/upload/1620269808559.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusssheyingzuopin` */

DROP TABLE IF EXISTS `discusssheyingzuopin`;

CREATE TABLE `discusssheyingzuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620270281456 DEFAULT CHARSET=utf8 COMMENT='摄影作品评论表';

/*Data for the table `discusssheyingzuopin` */

insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-05-06 10:41:40',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (72,'2021-05-06 10:41:40',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (73,'2021-05-06 10:41:40',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (74,'2021-05-06 10:41:40',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (75,'2021-05-06 10:41:40',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (76,'2021-05-06 10:41:40',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusssheyingzuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620270027140,'2021-05-06 11:00:26',36,1620269840250,'1','拍摄得不错',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620270086496 DEFAULT CHARSET=utf8 COMMENT='摄影圈';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (41,'2021-05-06 10:41:40','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (42,'2021-05-06 10:41:40','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (44,'2021-05-06 10:41:40','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (45,'2021-05-06 10:41:40','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (46,'2021-05-06 10:41:40','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1620270078277,'2021-05-06 11:01:17','西湖的美','<p>都说西湖美，可是很多人亲身去了西湖却又周多抱怨&ldquo;不过如此！&rdquo;。西湖的美，到底美在哪里，确实是个值得探讨的问题。</p>\n<p>&nbsp;</p>\n<p>记得第一次游西湖是大学军训后去的，那个时候还是初秋，太阳并没有收敛什么依旧的带着炎热。</p>\n<p>&nbsp;</p>\n<p>早上八点坐公交在苏堤下了车，由于是周末人特别多，一车人挤在一节车厢里在那个节气简直令人窒息。还没游西湖人已憔悴了一半，玩的心情似乎也凉了一截。</p>\n<p>&nbsp;</p>\n<p>下了车来到外湖旁的一个小卖部，说是小卖部其实就是赚西湖钱的部。问老板娘租一台相机多少钱，她竟一口说出押金两百、一小时十块的高价，吓得旁边的同学惊呼&ldquo;两百块啊！靠！我买台相机也才几百块&hellip;..&rdquo;。我摇摇头，唉了一声招手走人。反正人也累得没多少力气了，还拿个相机添什么麻烦，手上轻点又不会死。</p>\n<p>&nbsp;</p>\n<p>没走多远我们还是被眼前的美景给镇住了，后悔刚才没跟那老婆子多讨价还价一会。看着满湖的碧水，清澈见底湖水下的游鱼，微风轻拂掠过湖面卷起的涟漪，以及那水波逐影折出一道道弯曲的碧影&hellip;&hellip;这数不尽、看不完的景色似乎把眼球里都装饰得美轮美奂，此刻才真正的感受到来杭州旅游真的很醉人。</p>\n<p>&nbsp;</p>',0,1620269840250,'1','开放');

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
) ENGINE=InnoDB AUTO_INCREMENT=1620269793182 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-05-06 10:41:40','标题1','简介1','http://localhost:8080/springboot07j52/upload/1620269488304.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (62,'2021-05-06 10:41:40','标题2','简介2','http://localhost:8080/springboot07j52/upload/1620269494908.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (63,'2021-05-06 10:41:40','标题3','简介3','http://localhost:8080/springboot07j52/upload/1620269506968.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (64,'2021-05-06 10:41:40','标题4','简介4','http://localhost:8080/springboot07j52/upload/1620269514685.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (65,'2021-05-06 10:41:40','标题5','简介5','http://localhost:8080/springboot07j52/upload/1620269522251.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (66,'2021-05-06 10:41:40','标题6','简介6','http://localhost:8080/springboot07j52/upload/1620269537718.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1620269793181,'2021-05-06 10:56:32','公告A','公告','http://localhost:8080/springboot07j52/upload/1620269776792.jpg','<p>公告内容KFSKGJDKGDTH</p><p><img src=\"http://localhost:8080/springboot07j52/upload/1620269791172.jpg\"></p>');

/*Table structure for table `sheyingzuopin` */

DROP TABLE IF EXISTS `sheyingzuopin`;

CREATE TABLE `sheyingzuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinmingcheng` varchar(200) DEFAULT NULL COMMENT '作品名称',
  `zuopinfenlei` varchar(200) DEFAULT NULL COMMENT '作品分类',
  `zuopinfengmian` varchar(200) DEFAULT NULL COMMENT '作品封面',
  `zuopinjianjie` longtext COMMENT '作品简介',
  `zuopinneirong` longtext COMMENT '作品内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620270233622 DEFAULT CHARSET=utf8 COMMENT='摄影作品';

/*Data for the table `sheyingzuopin` */

insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-05-06 10:41:39','作品名称1','作品分类1','http://localhost:8080/springboot07j52/upload/1620269396233.jpg','作品简介1','<p>作品内容1</p>','2021-05-06','用户名1','昵称1',1,1,'2021-05-06 10:49:46',2);
insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (32,'2021-05-06 10:41:39','作品名称2','作品分类2','http://localhost:8080/springboot07j52/upload/1620269404048.jpg','作品简介2','<p>作品内容2</p>','2021-05-06','用户名2','昵称2',6,2,'2021-05-08 11:04:06',14);
insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (33,'2021-05-06 10:41:39','作品名称3','作品分类3','http://localhost:8080/springboot07j52/upload/1620269411074.jpg','作品简介3','<p>作品内容3</p>','2021-05-06','用户名3','昵称3',3,3,'2021-05-06 11:02:12',7);
insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (34,'2021-05-06 10:41:39','作品名称4','作品分类4','http://localhost:8080/springboot07j52/upload/1620269446974.jpg','作品简介4','<p>作品内容4</p>','2021-05-06','用户名4','昵称4',4,4,'2021-05-06 10:50:15',5);
insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (35,'2021-05-06 10:41:39','作品名称5','作品分类5','http://localhost:8080/springboot07j52/upload/1620269456311.jpg','作品简介5','<p>作品内容5</p>','2021-05-06','用户名5','昵称5',5,5,'2021-05-06 10:50:51',6);
insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (36,'2021-05-06 10:41:39','作品名称6','作品分类6','http://localhost:8080/springboot07j52/upload/1620269476126.jpg','作品简介6','<p>作品内容6</p>','2021-05-06','用户名6','昵称6',7,6,'2021-05-06 11:00:29',12);
insert  into `sheyingzuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinjianjie`,`zuopinneirong`,`faburiqi`,`yonghuming`,`nicheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1620270233621,'2021-05-06 11:03:53','花红柳绿','风景','http://localhost:8080/springboot07j52/upload/1620270189182.jpg','在春暖花开之际，青塔湖龙井徒步穿越，寻找春天的脚步，感受明媚春光中，不自然所赐予的花红柳绿的美景，不禁令人神清气爽；','<p>在春暖花开之际，青塔湖龙井徒步穿越，寻找春天的脚步，感受明媚春光中，不自然所赐予的花红柳绿的美景，不禁令人神清气爽；</p><p><img src=\"http://localhost:8080/springboot07j52/upload/1620270231392.jpg\"></p>','2021-05-06','1','小鱼',1,0,'2021-05-06 11:04:44',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=1620270270543 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620270270542,'2021-05-06 11:04:29',11,1620270233621,'sheyingzuopin','花红柳绿','http://localhost:8080/springboot07j52/upload/1620270189182.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ahk88zmaib9lezketyw3l6l4i26zzjng','2021-05-06 10:49:42','2021-05-06 12:05:39');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1620269840250,'1','yonghu','用户','xzvjpintvexxgxbqihufpvd0lu5smaqv','2021-05-06 10:58:13','2021-05-06 12:04:56');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,11,'用户1','yonghu','用户','hr8rwoek3hf1t47frkji5riurel7l7oq','2021-05-06 11:04:20','2021-05-08 12:04:06');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-05-06 10:41:40');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620269840251 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (11,'2021-05-06 10:41:39','用户1','123456','姓名1','http://localhost:8080/springboot07j52/upload/yonghu_touxiang1.jpg','昵称1','男',1,'13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (12,'2021-05-06 10:41:39','用户2','123456','姓名2','http://localhost:8080/springboot07j52/upload/yonghu_touxiang2.jpg','昵称2','男',2,'13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (13,'2021-05-06 10:41:39','用户3','123456','姓名3','http://localhost:8080/springboot07j52/upload/yonghu_touxiang3.jpg','昵称3','男',3,'13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (14,'2021-05-06 10:41:39','用户4','123456','姓名4','http://localhost:8080/springboot07j52/upload/yonghu_touxiang4.jpg','昵称4','男',4,'13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (15,'2021-05-06 10:41:39','用户5','123456','姓名5','http://localhost:8080/springboot07j52/upload/yonghu_touxiang5.jpg','昵称5','男',5,'13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (16,'2021-05-06 10:41:39','用户6','123456','姓名6','http://localhost:8080/springboot07j52/upload/yonghu_touxiang6.jpg','昵称6','男',6,'13823888886');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`nicheng`,`xingbie`,`nianling`,`lianxidianhua`) values (1620269840250,'2021-05-06 10:57:20','1','11','陈一','http://localhost:8080/springboot07j52/upload/1620270169412.png','小鱼','女',22,'12312312312');

/*Table structure for table `zuopinfenlei` */

DROP TABLE IF EXISTS `zuopinfenlei`;

CREATE TABLE `zuopinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinfenlei` varchar(200) NOT NULL COMMENT '作品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuopinfenlei` (`zuopinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1620269766290 DEFAULT CHARSET=utf8 COMMENT='作品分类';

/*Data for the table `zuopinfenlei` */

insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (21,'2021-05-06 10:41:39','作品分类1');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (22,'2021-05-06 10:41:39','作品分类2');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (23,'2021-05-06 10:41:39','作品分类3');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (24,'2021-05-06 10:41:39','作品分类4');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (25,'2021-05-06 10:41:39','作品分类5');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (26,'2021-05-06 10:41:39','作品分类6');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (1620269761093,'2021-05-06 10:56:00','风景');
insert  into `zuopinfenlei`(`id`,`addtime`,`zuopinfenlei`) values (1620269766289,'2021-05-06 10:56:05','建筑');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
