-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmjqj9d
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmjqj9d/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmjqj9d/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmjqj9d/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1616511722251 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-23 14:39:39','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-23 14:39:39','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-23 14:39:39','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-23 14:39:39','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-23 14:39:39','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-23 14:39:39','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1616511687073,'2021-03-23 15:01:26','机房开放了','<p>机房开放了</p>',0,1616510759597,'200','开放'),(1616511722250,'2021-03-23 15:02:01',NULL,'课后就去上机',1616511687073,1616510732872,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616510759598 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-03-23 14:39:39','教师1','123456','姓名1','男','http://localhost:8080/jspmjqj9d/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881','773890001@qq.com'),(22,'2021-03-23 14:39:39','教师2','123456','姓名2','男','http://localhost:8080/jspmjqj9d/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882','773890002@qq.com'),(23,'2021-03-23 14:39:39','教师3','123456','姓名3','男','http://localhost:8080/jspmjqj9d/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883','773890003@qq.com'),(24,'2021-03-23 14:39:39','教师4','123456','姓名4','男','http://localhost:8080/jspmjqj9d/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884','773890004@qq.com'),(25,'2021-03-23 14:39:39','教师5','123456','姓名5','男','http://localhost:8080/jspmjqj9d/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885','773890005@qq.com'),(1616510759597,'2021-03-23 14:45:59','200','200','教一','男','http://localhost:8080/jspmjqj9d/upload/1616510838713.jpg','高级教师','13869852365','200@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifanghao`
--

DROP TABLE IF EXISTS `jifanghao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifanghao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jifangbianhao` varchar(200) NOT NULL COMMENT '机房编号',
  `zuidarongliang` varchar(200) DEFAULT NULL COMMENT '最大容量',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jifangbianhao` (`jifangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616510883168 DEFAULT CHARSET=utf8 COMMENT='机房号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifanghao`
--

LOCK TABLES `jifanghao` WRITE;
/*!40000 ALTER TABLE `jifanghao` DISABLE KEYS */;
INSERT INTO `jifanghao` VALUES (31,'2021-03-23 14:39:39','机房编号1','最大容量1','座位号1'),(32,'2021-03-23 14:39:39','机房编号2','最大容量2','座位号2'),(33,'2021-03-23 14:39:39','机房编号3','最大容量3','座位号3'),(34,'2021-03-23 14:39:39','机房编号4','最大容量4','座位号4'),(35,'2021-03-23 14:39:39','机房编号5','最大容量5','座位号5'),(36,'2021-03-23 14:39:39','机房编号6','最大容量6','座位号6'),(1616510861288,'2021-03-23 14:47:40','1号','50','8'),(1616510873773,'2021-03-23 14:47:53','2号','30','9'),(1616510883167,'2021-03-23 14:48:03','3号','35','10');
/*!40000 ALTER TABLE `jifanghao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifangxinxi`
--

DROP TABLE IF EXISTS `jifangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `jifanghao` varchar(200) DEFAULT NULL COMMENT '机房号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `shiduan` varchar(200) DEFAULT NULL COMMENT '时段',
  `kongxianzuowei` longtext COMMENT '空闲座位',
  `xiangqing` longtext COMMENT '详情',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616510997197 DEFAULT CHARSET=utf8 COMMENT='机房信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifangxinxi`
--

LOCK TABLES `jifangxinxi` WRITE;
/*!40000 ALTER TABLE `jifangxinxi` DISABLE KEYS */;
INSERT INTO `jifangxinxi` VALUES (41,'2021-03-23 14:39:39','编号1','机房号1','http://localhost:8080/jspmjqj9d/upload/jifangxinxi_tupian1.jpg','周一','上午','空闲座位1','详情1','未满'),(42,'2021-03-23 14:39:39','编号2','机房号2','http://localhost:8080/jspmjqj9d/upload/jifangxinxi_tupian2.jpg','周一','上午','空闲座位2','详情2','未满'),(43,'2021-03-23 14:39:39','编号3','机房号3','http://localhost:8080/jspmjqj9d/upload/jifangxinxi_tupian3.jpg','周一','上午','空闲座位3','详情3','未满'),(44,'2021-03-23 14:39:39','编号4','机房号4','http://localhost:8080/jspmjqj9d/upload/jifangxinxi_tupian4.jpg','周一','上午','空闲座位4','详情4','未满'),(45,'2021-03-23 14:39:39','编号5','机房号5','http://localhost:8080/jspmjqj9d/upload/jifangxinxi_tupian5.jpg','周一','上午','空闲座位5','详情5','未满'),(46,'2021-03-23 14:39:39','编号6','机房号6','http://localhost:8080/jspmjqj9d/upload/jifangxinxi_tupian6.jpg','周一','上午','空闲座位6','详情6','未满'),(1616510965262,'2021-03-23 14:49:24','003','1号','http://localhost:8080/jspmjqj9d/upload/1616510944510.jpg','周一','上午','8','有位置\r\n','未满'),(1616510997196,'2021-03-23 14:49:56','005','2号','http://localhost:8080/jspmjqj9d/upload/1616510984909.jpg','周二','下午','9','9号位\r\n','未满');
/*!40000 ALTER TABLE `jifangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616511561655 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (81,'2021-03-23 14:39:39',1,'用户名1','留言内容1','回复内容1'),(82,'2021-03-23 14:39:39',2,'用户名2','留言内容2','回复内容2'),(83,'2021-03-23 14:39:39',3,'用户名3','留言内容3','回复内容3'),(84,'2021-03-23 14:39:39',4,'用户名4','留言内容4','回复内容4'),(85,'2021-03-23 14:39:39',5,'用户名5','留言内容5','回复内容5'),(86,'2021-03-23 14:39:39',6,'用户名6','留言内容6','回复内容6'),(1616511108630,'2021-03-23 14:51:48',1616510732872,'001','申请上机','同意'),(1616511561654,'2021-03-23 14:59:21',1616510759597,'200','在吗','...');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaoyuyue`
--

DROP TABLE IF EXISTS `quxiaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `jifanghao` varchar(200) DEFAULT NULL COMMENT '机房号',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `shiduan` varchar(200) DEFAULT NULL COMMENT '时段',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `quxiaoliyou` longtext COMMENT '取消理由',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616511303063 DEFAULT CHARSET=utf8 COMMENT='取消预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaoyuyue`
--

LOCK TABLES `quxiaoyuyue` WRITE;
/*!40000 ALTER TABLE `quxiaoyuyue` DISABLE KEYS */;
INSERT INTO `quxiaoyuyue` VALUES (61,'2021-03-23 14:39:39','编号1','机房号1','日期1','时段1','座位号1','取消理由1','学号1','姓名1','身份证1','是',''),(62,'2021-03-23 14:39:39','编号2','机房号2','日期2','时段2','座位号2','取消理由2','学号2','姓名2','身份证2','是',''),(63,'2021-03-23 14:39:39','编号3','机房号3','日期3','时段3','座位号3','取消理由3','学号3','姓名3','身份证3','是',''),(64,'2021-03-23 14:39:39','编号4','机房号4','日期4','时段4','座位号4','取消理由4','学号4','姓名4','身份证4','是',''),(65,'2021-03-23 14:39:39','编号5','机房号5','日期5','时段5','座位号5','取消理由5','学号5','姓名5','身份证5','是',''),(66,'2021-03-23 14:39:39','编号6','机房号6','日期6','时段6','座位号6','取消理由6','学号6','姓名6','身份证6','是',''),(1616511303062,'2021-03-23 14:55:02','003','1号','周一','上午','8号',NULL,'001','学一','258963258963258963','是','同意');
/*!40000 ALTER TABLE `quxiaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingyuyue`
--

DROP TABLE IF EXISTS `shenqingyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `jifanghao` varchar(200) DEFAULT NULL COMMENT '机房号',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `shiduan` varchar(200) DEFAULT NULL COMMENT '时段',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `shenqingneirong` varchar(200) DEFAULT NULL COMMENT '申请内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616511087582 DEFAULT CHARSET=utf8 COMMENT='申请预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingyuyue`
--

LOCK TABLES `shenqingyuyue` WRITE;
/*!40000 ALTER TABLE `shenqingyuyue` DISABLE KEYS */;
INSERT INTO `shenqingyuyue` VALUES (51,'2021-03-23 14:39:39','编号1','机房号1','2021-03-23','时段1','座位号1','申请内容1','学号1','姓名1','身份证1','是',''),(52,'2021-03-23 14:39:39','编号2','机房号2','2021-03-23','时段2','座位号2','申请内容2','学号2','姓名2','身份证2','是',''),(53,'2021-03-23 14:39:39','编号3','机房号3','2021-03-23','时段3','座位号3','申请内容3','学号3','姓名3','身份证3','是',''),(54,'2021-03-23 14:39:39','编号4','机房号4','2021-03-23','时段4','座位号4','申请内容4','学号4','姓名4','身份证4','是',''),(55,'2021-03-23 14:39:39','编号5','机房号5','2021-03-23','时段5','座位号5','申请内容5','学号5','姓名5','身份证5','是',''),(56,'2021-03-23 14:39:39','编号6','机房号6','2021-03-23','时段6','座位号6','申请内容6','学号6','姓名6','身份证6','是',''),(1616511051873,'2021-03-23 14:50:51','003','1号','2021-03-16','上午','8','申请上机','001','学一','258963258963258963','是','同意'),(1616511087581,'2021-03-23 14:51:27','005','2号','2021-03-17','下午','9','申请上机','001','学一','258963258963258963','否','不同意');
/*!40000 ALTER TABLE `shenqingyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','jpq0ohga0rv40hzi7uijjb5w3u4e2ulg','2021-03-23 14:44:36','2021-03-23 15:59:41'),(2,1616510759597,'200','jiaoshi','教师','zkhwvqr4c3fwcj5455id1whrzxak5y2u','2021-03-23 14:46:08','2021-03-23 16:02:15'),(3,1616510732872,'001','xuesheng','学生','ekme2y3jlx8nfgog3d3fhz671ti0r2j0','2021-03-23 14:50:27','2021-03-23 16:01:39');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-23 14:39:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616510732873 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-23 14:39:39','学生1','123456','姓名1','男','http://localhost:8080/jspmjqj9d/upload/xuesheng_touxiang1.jpg','专业1','13823888881','440300199101010001'),(12,'2021-03-23 14:39:39','学生2','123456','姓名2','男','http://localhost:8080/jspmjqj9d/upload/xuesheng_touxiang2.jpg','专业2','13823888882','440300199202020002'),(13,'2021-03-23 14:39:39','学生3','123456','姓名3','男','http://localhost:8080/jspmjqj9d/upload/xuesheng_touxiang3.jpg','专业3','13823888883','440300199303030003'),(14,'2021-03-23 14:39:39','学生4','123456','姓名4','男','http://localhost:8080/jspmjqj9d/upload/xuesheng_touxiang4.jpg','专业4','13823888884','440300199404040004'),(15,'2021-03-23 14:39:39','学生5','123456','姓名5','男','http://localhost:8080/jspmjqj9d/upload/xuesheng_touxiang5.jpg','专业5','13823888885','440300199505050005'),(1616510732872,'2021-03-23 14:45:32','001','001','学一','男','http://localhost:8080/jspmjqj9d/upload/1616510816262.jpg','网络工程','15236985236','258963258963258963');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 20:05:52
