-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm6p3nm
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm6p3nm/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm6p3nm/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6p3nm/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianzishuziyuan`
--

DROP TABLE IF EXISTS `dianzishuziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianzishuziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `dianzishu` varchar(200) DEFAULT NULL COMMENT '电子书',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618984631868 DEFAULT CHARSET=utf8 COMMENT='电子书资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianzishuziyuan`
--

LOCK TABLES `dianzishuziyuan` WRITE;
/*!40000 ALTER TABLE `dianzishuziyuan` DISABLE KEYS */;
INSERT INTO `dianzishuziyuan` VALUES (51,'2021-04-21 05:52:12','订单编号1','图书名称1','','图书作者1','出版社1','用户账号1','用户姓名1'),(52,'2021-04-21 05:52:12','订单编号2','图书名称2','','图书作者2','出版社2','用户账号2','用户姓名2'),(53,'2021-04-21 05:52:12','订单编号3','图书名称3','','图书作者3','出版社3','用户账号3','用户姓名3'),(54,'2021-04-21 05:52:12','订单编号4','图书名称4','','图书作者4','出版社4','用户账号4','用户姓名4'),(55,'2021-04-21 05:52:12','订单编号5','图书名称5','','图书作者5','出版社5','用户账号5','用户姓名5'),(56,'2021-04-21 05:52:12','订单编号6','图书名称6','','图书作者6','出版社6','用户账号6','用户姓名6'),(1618984631867,'2021-04-21 05:57:11','202142113533311566590','图书名称1','http://localhost:8080/ssm6p3nm/upload/1618984629983.docx','图书作者1','出版社1','1','xxx用户');
/*!40000 ALTER TABLE `dianzishuziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstushuxinxi`
--

DROP TABLE IF EXISTS `discusstushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618984579174 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstushuxinxi`
--

LOCK TABLES `discusstushuxinxi` WRITE;
/*!40000 ALTER TABLE `discusstushuxinxi` DISABLE KEYS */;
INSERT INTO `discusstushuxinxi` VALUES (91,'2021-04-21 05:52:12',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-21 05:52:12',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-21 05:52:12',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-21 05:52:12',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-21 05:52:12',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-21 05:52:12',6,6,'用户名6','评论内容6','回复内容6'),(1618984579173,'2021-04-21 05:56:18',31,1618984526279,'1','评论评论评论评论评论',NULL);
/*!40000 ALTER TABLE `discusstushuxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1618984549209 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (81,'2021-04-21 05:52:12',1,'用户名1','留言内容1','回复内容1'),(82,'2021-04-21 05:52:12',2,'用户名2','留言内容2','回复内容2'),(83,'2021-04-21 05:52:12',3,'用户名3','留言内容3','回复内容3'),(84,'2021-04-21 05:52:12',4,'用户名4','留言内容4','回复内容4'),(85,'2021-04-21 05:52:12',5,'用户名5','留言内容5','回复内容5'),(86,'2021-04-21 05:52:12',6,'用户名6','留言内容6','回复内容6'),(1618984549208,'2021-04-21 05:55:49',1618984526279,'1','留言留言留言留言留言留言留言留言留言留言留言留言',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='图书馆资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-04-21 05:52:12','标题1','简介1','http://localhost:8080/ssm6p3nm/upload/news_picture1.jpg','<h1>内容1</h1><p><br></p><h1>内容1</h1><p><br></p><p><br></p><h1>内容1</h1><p><br></p><p><br></p><h1>内容1</h1><p><br></p><p><br></p><h1>内容1</h1><p><br></p>'),(72,'2021-04-21 05:52:12','标题2','简介2','http://localhost:8080/ssm6p3nm/upload/news_picture2.jpg','内容2'),(73,'2021-04-21 05:52:12','标题3','简介3','http://localhost:8080/ssm6p3nm/upload/news_picture3.jpg','内容3'),(74,'2021-04-21 05:52:12','标题4','简介4','http://localhost:8080/ssm6p3nm/upload/news_picture4.jpg','内容4'),(75,'2021-04-21 05:52:12','标题5','简介5','http://localhost:8080/ssm6p3nm/upload/news_picture5.jpg','内容5'),(76,'2021-04-21 05:52:12','标题6','简介6','http://localhost:8080/ssm6p3nm/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618984560119 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1618984560118,'2021-04-21 05:55:59',1618984526279,31,'tushuxinxi','图书名称1','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','nnu0z6z4axa8djbkdtokq6d0tdlbhjpq','2021-04-21 05:53:48','2021-04-21 06:53:48'),(2,1618984526279,'1','yonghu','用户','25sv9ziph1cg0osxdnz811qxvr8yvjg2','2021-04-21 05:55:30','2021-04-21 06:55:30');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushudingdan`
--

DROP TABLE IF EXISTS `tushudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `isbn` varchar(200) DEFAULT NULL COMMENT 'isbn',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `dianzibanjiage` varchar(200) DEFAULT NULL COMMENT '电子版价格',
  `shitijiage` varchar(200) DEFAULT NULL COMMENT '实体价格',
  `goumaileixing` varchar(200) DEFAULT NULL COMMENT '购买类型',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618984571628 DEFAULT CHARSET=utf8 COMMENT='图书订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushudingdan`
--

LOCK TABLES `tushudingdan` WRITE;
/*!40000 ALTER TABLE `tushudingdan` DISABLE KEYS */;
INSERT INTO `tushudingdan` VALUES (41,'2021-04-21 05:52:12','订单编号1','图书名称1','图书分类1','isbn1','图书作者1','出版社1','电子版价格1','实体价格1','电子版','用户账号1','用户姓名1','用户手机1','2021-04-21 13:52:12','备注1','是','','未支付'),(42,'2021-04-21 05:52:12','订单编号2','图书名称2','图书分类2','isbn2','图书作者2','出版社2','电子版价格2','实体价格2','电子版','用户账号2','用户姓名2','用户手机2','2021-04-21 13:52:12','备注2','是','','未支付'),(43,'2021-04-21 05:52:12','订单编号3','图书名称3','图书分类3','isbn3','图书作者3','出版社3','电子版价格3','实体价格3','电子版','用户账号3','用户姓名3','用户手机3','2021-04-21 13:52:12','备注3','是','','未支付'),(44,'2021-04-21 05:52:12','订单编号4','图书名称4','图书分类4','isbn4','图书作者4','出版社4','电子版价格4','实体价格4','电子版','用户账号4','用户姓名4','用户手机4','2021-04-21 13:52:12','备注4','是','','未支付'),(45,'2021-04-21 05:52:12','订单编号5','图书名称5','图书分类5','isbn5','图书作者5','出版社5','电子版价格5','实体价格5','电子版','用户账号5','用户姓名5','用户手机5','2021-04-21 13:52:12','备注5','是','','未支付'),(46,'2021-04-21 05:52:12','订单编号6','图书名称6','图书分类6','isbn6','图书作者6','出版社6','电子版价格6','实体价格6','电子版','用户账号6','用户姓名6','用户手机6','2021-04-21 13:52:12','备注6','是','','未支付'),(1618984571627,'2021-04-21 05:56:11','202142113533311566590','图书名称1','xxx分类','isbn1','图书作者1','出版社1','11','11','电子版','1','xxx用户','12345678910','2021-04-21 13:53:33','无','是','111','已支付');
/*!40000 ALTER TABLE `tushudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushufenlei`
--

DROP TABLE IF EXISTS `tushufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618984444711 DEFAULT CHARSET=utf8 COMMENT='图书分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushufenlei`
--

LOCK TABLES `tushufenlei` WRITE;
/*!40000 ALTER TABLE `tushufenlei` DISABLE KEYS */;
INSERT INTO `tushufenlei` VALUES (21,'2021-04-21 05:52:12','图书分类1'),(22,'2021-04-21 05:52:12','图书分类2'),(23,'2021-04-21 05:52:12','图书分类3'),(24,'2021-04-21 05:52:12','图书分类4'),(25,'2021-04-21 05:52:12','图书分类5'),(26,'2021-04-21 05:52:12','图书分类6'),(1618984444710,'2021-04-21 05:54:04','xxx分类');
/*!40000 ALTER TABLE `tushufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `isbn` varchar(200) DEFAULT NULL COMMENT 'isbn',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushufengmian` varchar(200) DEFAULT NULL COMMENT '图书封面',
  `tushugaiyao` longtext COMMENT '图书概要',
  `shitijiage` int(11) NOT NULL COMMENT '实体价格',
  `dianzibanjiage` int(11) NOT NULL COMMENT '电子版价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (31,'2021-04-21 05:52:12','图书名称1','xxx分类','isbn1','图书作者1','出版社1','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian1.jpg','<h1>图书概要1</h1><p>xxxxxxxx</p><p><br></p><h1>图书概要1</h1><p>xxxxxxxx</p><p><br></p><p><br></p><h1>图书概要1</h1><p>xxxxxxxx</p><p><br></p><p><br></p><h1>图书概要1</h1><p>xxxxxxxx</p>',11,11),(32,'2021-04-21 05:52:12','图书名称2','图书分类2','isbn2','图书作者2','出版社2','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian2.jpg','图书概要2',2,2),(33,'2021-04-21 05:52:12','图书名称3','图书分类3','isbn3','图书作者3','出版社3','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian3.jpg','图书概要3',3,3),(34,'2021-04-21 05:52:12','图书名称4','图书分类4','isbn4','图书作者4','出版社4','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian4.jpg','图书概要4',4,4),(35,'2021-04-21 05:52:12','图书名称5','图书分类5','isbn5','图书作者5','出版社5','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian5.jpg','图书概要5',5,5),(36,'2021-04-21 05:52:12','图书名称6','图书分类6','isbn6','图书作者6','出版社6','http://localhost:8080/ssm6p3nm/upload/tushuxinxi_tushufengmian6.jpg','图书概要6',6,6);
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-21 05:52:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618984526280 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-21 05:52:12','用户1','123456','用户姓名1','男','http://localhost:8080/ssm6p3nm/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-04-21 05:52:12','用户2','123456','用户姓名2','男','http://localhost:8080/ssm6p3nm/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-04-21 05:52:12','用户3','123456','用户姓名3','男','http://localhost:8080/ssm6p3nm/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-04-21 05:52:12','用户4','123456','用户姓名4','男','http://localhost:8080/ssm6p3nm/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-04-21 05:52:12','用户5','123456','用户姓名5','男','http://localhost:8080/ssm6p3nm/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-04-21 05:52:12','用户6','123456','用户姓名6','男','http://localhost:8080/ssm6p3nm/upload/yonghu_touxiang6.jpg','13823888886'),(1618984526279,'2021-04-21 05:55:26','1','1','xxx用户','男','http://localhost:8080/ssm6p3nm/upload/1618984537375.png','12345678910');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21 16:36:54
