-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboott17xx
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
-- Current Database: `springboott17xx`
--

/*!40000 DROP DATABASE IF EXISTS `springboott17xx`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboott17xx` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboott17xx`;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) NOT NULL COMMENT '班级名称',
  `banjirenshu` varchar(200) DEFAULT NULL COMMENT '班级人数',
  `yuanxiao` varchar(200) NOT NULL COMMENT '院校',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (51,'2023-02-15 02:46:56','班级名称1','班级人数1','院校1','专业1','教师工号1','教师姓名1'),(52,'2023-02-15 02:46:56','班级名称2','班级人数2','院校2','专业2','教师工号2','教师姓名2'),(53,'2023-02-15 02:46:56','班级名称3','班级人数3','院校3','专业3','教师工号3','教师姓名3'),(54,'2023-02-15 02:46:56','班级名称4','班级人数4','院校4','专业4','教师工号4','教师姓名4'),(55,'2023-02-15 02:46:56','班级名称5','班级人数5','院校5','专业5','教师工号5','教师姓名5'),(56,'2023-02-15 02:46:56','班级名称6','班级人数6','院校6','专业6','教师工号6','教师姓名6'),(57,'2023-02-15 02:46:56','班级名称7','班级人数7','院校7','专业7','教师工号7','教师姓名7'),(58,'2023-02-15 02:46:56','班级名称8','班级人数8','院校8','专业8','教师工号8','教师姓名8');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
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
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` longtext COMMENT '头像',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2023-02-15 02:46:56','教师工号1','123456','upload/jiaoshi_touxiang1.jpg','教师姓名1','男','13823888881','773890001@qq.com'),(22,'2023-02-15 02:46:56','教师工号2','123456','upload/jiaoshi_touxiang2.jpg','教师姓名2','男','13823888882','773890002@qq.com'),(23,'2023-02-15 02:46:56','教师工号3','123456','upload/jiaoshi_touxiang3.jpg','教师姓名3','男','13823888883','773890003@qq.com'),(24,'2023-02-15 02:46:56','教师工号4','123456','upload/jiaoshi_touxiang4.jpg','教师姓名4','男','13823888884','773890004@qq.com'),(25,'2023-02-15 02:46:56','教师工号5','123456','upload/jiaoshi_touxiang5.jpg','教师姓名5','男','13823888885','773890005@qq.com'),(26,'2023-02-15 02:46:56','教师工号6','123456','upload/jiaoshi_touxiang6.jpg','教师姓名6','男','13823888886','773890006@qq.com'),(27,'2023-02-15 02:46:56','教师工号7','123456','upload/jiaoshi_touxiang7.jpg','教师姓名7','男','13823888887','773890007@qq.com'),(28,'2023-02-15 02:46:56','教师工号8','123456','upload/jiaoshi_touxiang8.jpg','教师姓名8','男','13823888888','773890008@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `fengmian` longtext COMMENT '封面',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  `shangkedidian` varchar(200) NOT NULL COMMENT '上课地点',
  `shangkeshijian` longtext NOT NULL COMMENT '上课时间',
  `xueqi` varchar(200) NOT NULL COMMENT '学期',
  `nianxian` varchar(200) NOT NULL COMMENT '年限',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (61,'2023-02-15 02:46:56','课程名称1','upload/kechengxinxi_fengmian1.jpg,upload/kechengxinxi_fengmian2.jpg,upload/kechengxinxi_fengmian3.jpg','课时1','班级1','专业1','上课地点1','上课时间1','上学期','年限1','课程详情1','教师工号1','教师姓名1'),(62,'2023-02-15 02:46:56','课程名称2','upload/kechengxinxi_fengmian2.jpg,upload/kechengxinxi_fengmian3.jpg,upload/kechengxinxi_fengmian4.jpg','课时2','班级2','专业2','上课地点2','上课时间2','上学期','年限2','课程详情2','教师工号2','教师姓名2'),(63,'2023-02-15 02:46:56','课程名称3','upload/kechengxinxi_fengmian3.jpg,upload/kechengxinxi_fengmian4.jpg,upload/kechengxinxi_fengmian5.jpg','课时3','班级3','专业3','上课地点3','上课时间3','上学期','年限3','课程详情3','教师工号3','教师姓名3'),(64,'2023-02-15 02:46:56','课程名称4','upload/kechengxinxi_fengmian4.jpg,upload/kechengxinxi_fengmian5.jpg,upload/kechengxinxi_fengmian6.jpg','课时4','班级4','专业4','上课地点4','上课时间4','上学期','年限4','课程详情4','教师工号4','教师姓名4'),(65,'2023-02-15 02:46:56','课程名称5','upload/kechengxinxi_fengmian5.jpg,upload/kechengxinxi_fengmian6.jpg,upload/kechengxinxi_fengmian7.jpg','课时5','班级5','专业5','上课地点5','上课时间5','上学期','年限5','课程详情5','教师工号5','教师姓名5'),(66,'2023-02-15 02:46:56','课程名称6','upload/kechengxinxi_fengmian6.jpg,upload/kechengxinxi_fengmian7.jpg,upload/kechengxinxi_fengmian8.jpg','课时6','班级6','专业6','上课地点6','上课时间6','上学期','年限6','课程详情6','教师工号6','教师姓名6'),(67,'2023-02-15 02:46:56','课程名称7','upload/kechengxinxi_fengmian7.jpg,upload/kechengxinxi_fengmian8.jpg,upload/kechengxinxi_fengmian9.jpg','课时7','班级7','专业7','上课地点7','上课时间7','上学期','年限7','课程详情7','教师工号7','教师姓名7'),(68,'2023-02-15 02:46:56','课程名称8','upload/kechengxinxi_fengmian8.jpg,upload/kechengxinxi_fengmian9.jpg,upload/kechengxinxi_fengmian10.jpg','课时8','班级8','专业8','上课地点8','上课时间8','上学期','年限8','课程详情8','教师工号8','教师姓名8');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','xagdal79en9ciqn31k759r248211m3so','2023-02-15 02:48:05','2023-02-15 03:48:06'),(2,28,'教师工号8','jiaoshi','教师','f8ft77a95wjif262z6kpx42lnbpfgkwb','2023-02-15 02:49:09','2023-02-15 03:49:10');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-15 02:46:56');
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
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-02-15 02:46:56','学号1','123456','学生姓名1','upload/xuesheng_touxiang1.jpg','男','13823888881','籍贯1','住址1','班级1','专业1'),(12,'2023-02-15 02:46:56','学号2','123456','学生姓名2','upload/xuesheng_touxiang2.jpg','男','13823888882','籍贯2','住址2','班级2','专业2'),(13,'2023-02-15 02:46:56','学号3','123456','学生姓名3','upload/xuesheng_touxiang3.jpg','男','13823888883','籍贯3','住址3','班级3','专业3'),(14,'2023-02-15 02:46:56','学号4','123456','学生姓名4','upload/xuesheng_touxiang4.jpg','男','13823888884','籍贯4','住址4','班级4','专业4'),(15,'2023-02-15 02:46:56','学号5','123456','学生姓名5','upload/xuesheng_touxiang5.jpg','男','13823888885','籍贯5','住址5','班级5','专业5'),(16,'2023-02-15 02:46:56','学号6','123456','学生姓名6','upload/xuesheng_touxiang6.jpg','男','13823888886','籍贯6','住址6','班级6','专业6'),(17,'2023-02-15 02:46:56','学号7','123456','学生姓名7','upload/xuesheng_touxiang7.jpg','男','13823888887','籍贯7','住址7','班级7','专业7'),(18,'2023-02-15 02:46:56','学号8','123456','学生姓名8','upload/xuesheng_touxiang8.jpg','男','13823888888','籍贯8','住址8','班级8','专业8');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengchengji`
--

DROP TABLE IF EXISTS `xueshengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `nianxian` varchar(200) DEFAULT NULL COMMENT '年限',
  `chengji` float NOT NULL COMMENT '成绩',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='学生成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengchengji`
--

LOCK TABLES `xueshengchengji` WRITE;
/*!40000 ALTER TABLE `xueshengchengji` DISABLE KEYS */;
INSERT INTO `xueshengchengji` VALUES (71,'2023-02-15 02:46:56','课程名称1','学期1','年限1',1,'学号1','学生姓名1','教师工号1','教师姓名1'),(72,'2023-02-15 02:46:56','课程名称2','学期2','年限2',2,'学号2','学生姓名2','教师工号2','教师姓名2'),(73,'2023-02-15 02:46:56','课程名称3','学期3','年限3',3,'学号3','学生姓名3','教师工号3','教师姓名3'),(74,'2023-02-15 02:46:56','课程名称4','学期4','年限4',4,'学号4','学生姓名4','教师工号4','教师姓名4'),(75,'2023-02-15 02:46:56','课程名称5','学期5','年限5',5,'学号5','学生姓名5','教师工号5','教师姓名5'),(76,'2023-02-15 02:46:56','课程名称6','学期6','年限6',6,'学号6','学生姓名6','教师工号6','教师姓名6'),(77,'2023-02-15 02:46:56','课程名称7','学期7','年限7',7,'学号7','学生姓名7','教师工号7','教师姓名7'),(78,'2023-02-15 02:46:56','课程名称8','学期8','年限8',8,'学号8','学生姓名8','教师工号8','教师姓名8');
/*!40000 ALTER TABLE `xueshengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxueji`
--

DROP TABLE IF EXISTS `xueshengxueji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxueji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `zhengzhimianmao` varchar(200) NOT NULL COMMENT '政治面貌',
  `ruxueriqi` date NOT NULL COMMENT '入学日期',
  `danganwenjian` longtext COMMENT '档案文件',
  `gerenjianjie` longtext COMMENT '个人简介',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='学生学籍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxueji`
--

LOCK TABLES `xueshengxueji` WRITE;
/*!40000 ALTER TABLE `xueshengxueji` DISABLE KEYS */;
INSERT INTO `xueshengxueji` VALUES (81,'2023-02-15 02:46:56','学号1','学生姓名1','性别1','班级1','专业1','13823888881','住址1','籍贯1','政治面貌1','2023-02-15','','个人简介1','教师工号1'),(82,'2023-02-15 02:46:56','学号2','学生姓名2','性别2','班级2','专业2','13823888882','住址2','籍贯2','政治面貌2','2023-02-15','','个人简介2','教师工号2'),(83,'2023-02-15 02:46:56','学号3','学生姓名3','性别3','班级3','专业3','13823888883','住址3','籍贯3','政治面貌3','2023-02-15','','个人简介3','教师工号3'),(84,'2023-02-15 02:46:56','学号4','学生姓名4','性别4','班级4','专业4','13823888884','住址4','籍贯4','政治面貌4','2023-02-15','','个人简介4','教师工号4'),(85,'2023-02-15 02:46:56','学号5','学生姓名5','性别5','班级5','专业5','13823888885','住址5','籍贯5','政治面貌5','2023-02-15','','个人简介5','教师工号5'),(86,'2023-02-15 02:46:56','学号6','学生姓名6','性别6','班级6','专业6','13823888886','住址6','籍贯6','政治面貌6','2023-02-15','','个人简介6','教师工号6'),(87,'2023-02-15 02:46:56','学号7','学生姓名7','性别7','班级7','专业7','13823888887','住址7','籍贯7','政治面貌7','2023-02-15','','个人简介7','教师工号7'),(88,'2023-02-15 02:46:56','学号8','学生姓名8','性别8','班级8','专业8','13823888888','住址8','籍贯8','政治面貌8','2023-02-15','','个人简介8','教师工号8');
/*!40000 ALTER TABLE `xueshengxueji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuanxiao`
--

DROP TABLE IF EXISTS `yuanxiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuanxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxiao` varchar(200) DEFAULT NULL COMMENT '院校',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='院校';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuanxiao`
--

LOCK TABLES `yuanxiao` WRITE;
/*!40000 ALTER TABLE `yuanxiao` DISABLE KEYS */;
INSERT INTO `yuanxiao` VALUES (31,'2023-02-15 02:46:56','院校1'),(32,'2023-02-15 02:46:56','院校2'),(33,'2023-02-15 02:46:56','院校3'),(34,'2023-02-15 02:46:56','院校4'),(35,'2023-02-15 02:46:56','院校5'),(36,'2023-02-15 02:46:56','院校6'),(37,'2023-02-15 02:46:56','院校7'),(38,'2023-02-15 02:46:56','院校8');
/*!40000 ALTER TABLE `yuanxiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanye`
--

DROP TABLE IF EXISTS `zhuanye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanye`
--

LOCK TABLES `zhuanye` WRITE;
/*!40000 ALTER TABLE `zhuanye` DISABLE KEYS */;
INSERT INTO `zhuanye` VALUES (41,'2023-02-15 02:46:56','专业1'),(42,'2023-02-15 02:46:56','专业2'),(43,'2023-02-15 02:46:56','专业3'),(44,'2023-02-15 02:46:56','专业4'),(45,'2023-02-15 02:46:56','专业5'),(46,'2023-02-15 02:46:56','专业6'),(47,'2023-02-15 02:46:56','专业7'),(48,'2023-02-15 02:46:56','专业8');
/*!40000 ALTER TABLE `zhuanye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-19 14:01:13
