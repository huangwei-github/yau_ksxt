-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 118.24.219.49    Database: db_ksxt
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_admin_info`
--

DROP TABLE IF EXISTS `tb_admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` int(11) NOT NULL COMMENT '管理员id',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `email` varchar(32) NOT NULL COMMENT '邮件',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`admin`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin_info`
--

LOCK TABLES `tb_admin_info` WRITE;
/*!40000 ALTER TABLE `tb_admin_info` DISABLE KEYS */;
INSERT INTO `tb_admin_info` VALUES (1,39,'管理员1','158*****','guanliyuan@gmail.com',NULL),(2,40,'管理员2','158*****','guanliyuan@gmail.com',NULL);
/*!40000 ALTER TABLE `tb_admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course`
--

DROP TABLE IF EXISTS `tb_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(32) NOT NULL COMMENT '课程名称',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course`
--

LOCK TABLES `tb_course` WRITE;
/*!40000 ALTER TABLE `tb_course` DISABLE KEYS */;
INSERT INTO `tb_course` VALUES (1,'JAVA语言程序设计',NULL);
/*!40000 ALTER TABLE `tb_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course_info`
--

DROP TABLE IF EXISTS `tb_course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_course_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nature` tinyint(4) NOT NULL COMMENT '课程性质:必修1/选修2',
  `score` int(11) NOT NULL COMMENT '学分',
  `year` int(11) NOT NULL COMMENT '修读学年:按学期分',
  `attr` int(11) NOT NULL COMMENT '课程归属:学位1/非学位2',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course_info`
--

LOCK TABLES `tb_course_info` WRITE;
/*!40000 ALTER TABLE `tb_course_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course_student`
--

DROP TABLE IF EXISTS `tb_course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_course_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL COMMENT '课程号',
  `student` int(11) NOT NULL COMMENT '学号',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course_student`
--

LOCK TABLES `tb_course_student` WRITE;
/*!40000 ALTER TABLE `tb_course_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_course_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course_teacher`
--

DROP TABLE IF EXISTS `tb_course_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_course_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL COMMENT '课程号',
  `teacher` int(11) NOT NULL COMMENT '老师号',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course_teacher`
--

LOCK TABLES `tb_course_teacher` WRITE;
/*!40000 ALTER TABLE `tb_course_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_course_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_examination`
--

DROP TABLE IF EXISTS `tb_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_examination` (
  `teacher` int(11) NOT NULL AUTO_INCREMENT,
  `create` datetime NOT NULL COMMENT '组卷时间',
  `selection` int(11) NOT NULL COMMENT '选择题',
  `online` int(11) NOT NULL COMMENT '机试题',
  `subjective` int(11) NOT NULL COMMENT '主观题',
  PRIMARY KEY (`teacher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_examination`
--

LOCK TABLES `tb_examination` WRITE;
/*!40000 ALTER TABLE `tb_examination` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grade`
--

DROP TABLE IF EXISTS `tb_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL COMMENT '学生id',
  `course` int(11) DEFAULT NULL COMMENT '课程id',
  `grade` int(11) DEFAULT NULL COMMENT '学生成绩',
  `grade1` int(11) DEFAULT NULL COMMENT '补考成绩',
  `grade2` int(11) DEFAULT NULL COMMENT '重修成绩',
  `notes` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grade`
--

LOCK TABLES `tb_grade` WRITE;
/*!40000 ALTER TABLE `tb_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_major`
--

DROP TABLE IF EXISTS `tb_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school` int(11) DEFAULT NULL COMMENT '学院id',
  `major` varchar(128) DEFAULT NULL COMMENT '专业名称',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_major`
--

LOCK TABLES `tb_major` WRITE;
/*!40000 ALTER TABLE `tb_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_news`
--

DROP TABLE IF EXISTS `tb_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL COMMENT '新闻标题',
  `cover` varchar(255) DEFAULT NULL COMMENT '新闻封面',
  `content` text COMMENT '新闻内容',
  `create` datetime DEFAULT NULL COMMENT '创建时间',
  `author` int(11) DEFAULT NULL COMMENT '作者id',
  `rank` tinyint(4) DEFAULT NULL COMMENT '优先级',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1(启用) 2(销毁)',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_news`
--

LOCK TABLES `tb_news` WRITE;
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
INSERT INTO `tb_news` VALUES (2,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w1uz.jpg','唯有随着“低头族”不断增加，一些人却开始在寻常事上打起了主意。一批打着“看新闻、看视频、走路能赚钱”旗号唯有随着“低头族”不断增加，一些人却开始在寻常事上打起了主意。一批打着“看新闻、看视频、走路能赚钱”旗号的赚钱类APP唯有随着“低头族”不断增加，一些人却开始在寻常事上打起了主意。一批打着“看新闻、看视频、走路能赚钱”旗号的赚钱类APP的赚钱类APP','2019-08-09 14:45:34',1,1,1,NULL),(3,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w2uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月3日华航官方放出了大陆往来TW退改机票的政策：','2019-08-10 14:45:34',1,1,1,NULL),(4,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w3uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月4日华航官方放出了大陆往来TW退改机票的政策：','2019-08-11 14:45:34',1,1,1,NULL),(5,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w4uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月5日华航官方放出了大陆往来TW退改机票的政策：','2019-08-12 14:45:34',1,1,1,NULL),(6,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w5uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月6日华航官方放出了大陆往来TW退改机票的政策：','2019-08-13 14:45:34',1,1,1,NULL),(7,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w6uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月7日华航官方放出了大陆往来TW退改机票的政策：','2019-08-14 14:45:34',1,1,1,NULL),(8,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w7uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月8日华航官方放出了大陆往来TW退改机票的政策：','2019-08-15 14:45:34',1,1,1,NULL),(9,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w8uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月9日华航官方放出了大陆往来TW退改机票的政策：','2019-08-16 14:45:34',1,1,1,NULL),(10,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w9uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月10日华航官方放出了大陆往来TW退改机票的政策：','2019-08-17 14:45:34',1,1,1,NULL),(11,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w10uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月11日华航官方放出了大陆往来TW退改机票的政策：','2019-08-18 14:45:34',1,1,1,NULL),(12,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w11uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月12日华航官方放出了大陆往来TW退改机票的政策：','2019-08-19 14:45:34',1,1,1,NULL),(13,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w12uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月13日华航官方放出了大陆往来TW退改机票的政策：','2019-08-20 14:45:34',1,1,1,NULL),(14,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w13uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月14日华航官方放出了大陆往来TW退改机票的政策：','2019-08-21 14:45:34',1,1,1,NULL),(15,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w14uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月15日华航官方放出了大陆往来TW退改机票的政策：','2019-08-22 14:45:34',1,1,1,NULL),(16,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w15uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月16日华航官方放出了大陆往来TW退改机票的政策：','2019-08-23 14:45:34',1,1,1,NULL),(17,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w16uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月17日华航官方放出了大陆往来TW退改机票的政策：','2019-08-24 14:45:34',1,1,1,NULL),(18,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w17uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月18日华航官方放出了大陆往来TW退改机票的政策：','2019-08-25 14:45:34',1,1,1,NULL),(19,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w18uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月19日华航官方放出了大陆往来TW退改机票的政策：','2019-08-26 14:45:34',1,1,1,NULL),(20,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w19uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月20日华航官方放出了大陆往来TW退改机票的政策：','2019-08-27 14:45:34',1,1,1,NULL),(21,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w20uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月21日华航官方放出了大陆往来TW退改机票的政策：','2019-08-28 14:45:34',1,1,1,NULL),(22,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w21uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月22日华航官方放出了大陆往来TW退改机票的政策：','2019-08-29 14:45:34',1,1,1,NULL),(23,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w22uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月23日华航官方放出了大陆往来TW退改机票的政策：','2019-08-30 14:45:34',1,1,1,NULL),(24,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w23uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月24日华航官方放出了大陆往来TW退改机票的政策：','2019-08-31 14:45:34',1,1,1,NULL),(25,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w24uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月25日华航官方放出了大陆往来TW退改机票的政策：','2019-09-01 14:45:34',1,1,1,NULL);
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_notice`
--

DROP TABLE IF EXISTS `tb_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice` text NOT NULL COMMENT '通知内容',
  `title` text NOT NULL COMMENT '通知标题',
  `time` date NOT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notice`
--

LOCK TABLES `tb_notice` WRITE;
/*!40000 ALTER TABLE `tb_notice` DISABLE KEYS */;
INSERT INTO `tb_notice` VALUES (1,'据人社部网站消息，近日，人力资源社会保障部发布关于开展2019年全国高校毕业生就业服务行动的通知。通知指出，深入开展分类帮扶，对未就业毕业生组织不少于2场专场招聘，提供不少于3次有针对性的岗位推介。','通知公告1','2019-08-14'),(2,'据人社部网站消息，近日，人力资源社会保障部发布关于开展2019年全国高校毕业生就业服务行动的通知。通知指出，深入开展分类帮扶，对未就业毕业生组织不少于2场专场招聘，提供不少于3次有针对性的岗位推介。','通知公告2','2019-08-13'),(3,'据人社部网站消息，近日，人力资源社会保障部发布关于开展2019年全国高校毕业生就业服务行动的通知。通知指出，深入开展分类帮扶，对未就业毕业生组织不少于2场专场招聘，提供不少于3次有针对性的岗位推介。','通知公告3','2019-08-01'),(4,'据人社部网站消息，近日，人力资源社会保障部发布关于开展2019年全国高校毕业生就业服务行动的通知。通知指出，深入开展分类帮扶，对未就业毕业生组织不少于2场专场招聘，提供不少于3次有针对性的岗位推介。','通知公告5','2019-08-16'),(5,'据人社部网站消息，近日，人力资源社会保障部发布关于开展2019年全国高校毕业生就业服务行动的通知。通知指出，深入开展分类帮扶，对未就业毕业生组织不少于2场专场招聘，提供不少于3次有针对性的岗位推介。','通知公告6','2019-08-05');
/*!40000 ALTER TABLE `tb_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_online`
--

DROP TABLE IF EXISTS `tb_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '15' COMMENT '分值',
  `weight` tinyint(4) NOT NULL COMMENT '权值(难度1,2,3)',
  `course` int(11) NOT NULL COMMENT '课程号',
  `referrence` varchar(512) NOT NULL COMMENT '参考答案',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  `question` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_online`
--

LOCK TABLES `tb_online` WRITE;
/*!40000 ALTER TABLE `tb_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_online_file`
--

DROP TABLE IF EXISTS `tb_online_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_online_file` (
  `

id` int(11) unsigned zerofill NOT NULL,
  `filename` varchar(255) NOT NULL COMMENT '文件名称',
  `upload` date NOT NULL COMMENT '上传时间',
  `teacher` int(11) NOT NULL COMMENT '上传老师',
  `location` varchar(255) NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`

id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_online_file`
--

LOCK TABLES `tb_online_file` WRITE;
/*!40000 ALTER TABLE `tb_online_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_online_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_permission`
--

DROP TABLE IF EXISTS `tb_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) DEFAULT NULL COMMENT '权限说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_permission`
--

LOCK TABLES `tb_permission` WRITE;
/*!40000 ALTER TABLE `tb_permission` DISABLE KEYS */;
INSERT INTO `tb_permission` VALUES (1,'user:view'),(2,'user:create'),(3,'user:update'),(4,'user:delete'),(5,'course:view'),(6,'course:create'),(7,'course:update'),(8,'course:delete'),(9,'grade:view'),(10,'grade:create'),(11,'grade:update'),(12,'grade:delete'),(13,'notice:view'),(14,'notice:create'),(15,'notice:update'),(16,'notice:delete'),(17,'news:view'),(18,'news:create'),(19,'news:update'),(20,'news:delete'),(21,'remark:view'),(22,'remark:create'),(23,'remark:update'),(24,'remark:delete');
/*!40000 ALTER TABLE `tb_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_remark`
--

DROP TABLE IF EXISTS `tb_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL COMMENT '评论内容',
  `student` int(11) NOT NULL COMMENT '评论学生',
  `create` datetime NOT NULL COMMENT '评论时间',
  `pid` int(11) DEFAULT NULL COMMENT '上一条评论id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_remark`
--

LOCK TABLES `tb_remark` WRITE;
/*!40000 ALTER TABLE `tb_remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES (1,'学生'),(2,'老师'),(3,'管理员');
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_permission`
--

DROP TABLE IF EXISTS `tb_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role_permission` (
  `role` int(11) NOT NULL COMMENT '角色id',
  `permission` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`role`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_permission`
--

LOCK TABLES `tb_role_permission` WRITE;
/*!40000 ALTER TABLE `tb_role_permission` DISABLE KEYS */;
INSERT INTO `tb_role_permission` VALUES (1,5),(1,9),(1,13),(1,17),(1,21),(1,22),(1,23),(1,24),(2,5),(2,6),(2,7),(2,9),(2,10),(2,13),(2,17),(2,21),(2,22),(2,23),(2,24),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24);
/*!40000 ALTER TABLE `tb_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_school`
--

DROP TABLE IF EXISTS `tb_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(128) DEFAULT NULL COMMENT '学院名称',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_school`
--

LOCK TABLES `tb_school` WRITE;
/*!40000 ALTER TABLE `tb_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_selection`
--

DROP TABLE IF EXISTS `tb_selection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_selection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '3' COMMENT '分值',
  `weight` tinyint(4) NOT NULL COMMENT '权值(难度1,2,3)',
  `course` int(11) NOT NULL COMMENT '课程号',
  `selectionA` varchar(256) NOT NULL COMMENT '选项A',
  `selectionB` varchar(256) NOT NULL COMMENT '选项B',
  `selectionC` varchar(256) NOT NULL COMMENT '选项C',
  `selectionD` varchar(256) NOT NULL COMMENT '选项D',
  `selectionE` varchar(256) DEFAULT NULL COMMENT '选项D',
  `selectionF` varchar(256) DEFAULT NULL COMMENT '选项F',
  `answer` varchar(16) NOT NULL COMMENT '答案',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  `question` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_selection`
--

LOCK TABLES `tb_selection` WRITE;
/*!40000 ALTER TABLE `tb_selection` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_selection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_selection_file`
--

DROP TABLE IF EXISTS `tb_selection_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_selection_file` (
  `

id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL COMMENT '文件名称',
  `upload` date NOT NULL COMMENT '上传时间',
  `teacher` int(11) NOT NULL COMMENT '上传老师',
  `location` varchar(255) NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`

id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_selection_file`
--

LOCK TABLES `tb_selection_file` WRITE;
/*!40000 ALTER TABLE `tb_selection_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_selection_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_exam`
--

DROP TABLE IF EXISTS `tb_student_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_student_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL COMMENT '学生信息',
  `examination` int(11) NOT NULL COMMENT '组卷id（老师生成）',
  `selection` text NOT NULL COMMENT '选择题答案',
  `online` text NOT NULL COMMENT '答案',
  `subjection` text NOT NULL COMMENT '主观题答案',
  `notes` int(11) NOT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_exam`
--

LOCK TABLES `tb_student_exam` WRITE;
/*!40000 ALTER TABLE `tb_student_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_student_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info`
--

DROP TABLE IF EXISTS `tb_student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL COMMENT '学生id',
  `name` varchar(64) NOT NULL COMMENT '姓名',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别: 1(男) 2(女)',
  `birth` date DEFAULT NULL COMMENT '出生日期',
  `addr` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `nation` varchar(16) DEFAULT NULL COMMENT '民族',
  `identify` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`student`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
INSERT INTO `tb_student_info` VALUES (1,1,'张三',1,'2009-08-12','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496',' 24523699984','lanoukj@gmail.com','张三的备注'),(2,2,'学生2',1,'2009-08-12','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699984','xuesheng@gmail.com','备注1'),(3,3,'学生3',2,'2009-08-13','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699985','xuesheng@gmail.com','备注2'),(4,4,'学生4',1,'2009-08-14','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699986','xuesheng@gmail.com','备注3'),(5,5,'学生5',2,'2009-08-15','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699987','xuesheng@gmail.com','备注4'),(6,6,'学生6',1,'2009-08-16','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699988','xuesheng@gmail.com','备注5'),(7,7,'学生7',1,'2009-08-17','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699989','xuesheng@gmail.com','备注6'),(8,8,'学生8',2,'2009-08-18','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699990','xuesheng@gmail.com','备注7'),(9,9,'学生9',2,'2009-08-19','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699991','xuesheng@gmail.com','备注8'),(10,10,'学生10',1,'2009-08-20','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699992','xuesheng@gmail.com','备注9'),(11,11,'学生11',2,'2009-08-21','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699993','xuesheng@gmail.com','备注10'),(12,12,'学生12',1,'2009-08-22','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699994','xuesheng@gmail.com','备注11'),(13,13,'学生13',2,'2009-08-23','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699995','xuesheng@gmail.com','备注12');
/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_school`
--

DROP TABLE IF EXISTS `tb_student_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_student_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL COMMENT '学生id',
  `school` int(11) DEFAULT NULL COMMENT '学院id',
  `major` int(11) DEFAULT NULL COMMENT '专业id',
  `clazz` int(11) DEFAULT NULL COMMENT '班级id',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`student`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_school`
--

LOCK TABLES `tb_student_school` WRITE;
/*!40000 ALTER TABLE `tb_student_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_student_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subjection`
--

DROP TABLE IF EXISTS `tb_subjection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_subjection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(512) NOT NULL COMMENT '题目',
  `score` int(11) NOT NULL DEFAULT '8' COMMENT '分值',
  `weight` tinyint(4) NOT NULL COMMENT '权值(难度1,2,3)',
  `course` int(11) NOT NULL COMMENT '课程号',
  `referrence` text NOT NULL COMMENT '参考答案',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subjection`
--

LOCK TABLES `tb_subjection` WRITE;
/*!40000 ALTER TABLE `tb_subjection` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_subjection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subjection_file`
--

DROP TABLE IF EXISTS `tb_subjection_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_subjection_file` (
  `

id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL COMMENT '文件名称',
  `upload` date NOT NULL COMMENT '上传时间',
  `teacher` int(11) NOT NULL COMMENT '上传老师',
  `location` varchar(255) NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`

id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subjection_file`
--

LOCK TABLES `tb_subjection_file` WRITE;
/*!40000 ALTER TABLE `tb_subjection_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_subjection_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_teacher_info`
--

DROP TABLE IF EXISTS `tb_teacher_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_teacher_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher` int(11) NOT NULL COMMENT '老师id',
  `name` varchar(32) DEFAULT NULL COMMENT '老师姓名\r\n',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别: 1(男) 2(女)',
  `birth` date DEFAULT NULL COMMENT '出生日期',
  `addr` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `nation` varchar(32) DEFAULT NULL COMMENT '民族',
  `identity` varchar(32) DEFAULT NULL COMMENT '身份证号码',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮件',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`teacher`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher_info`
--

LOCK TABLES `tb_teacher_info` WRITE;
/*!40000 ALTER TABLE `tb_teacher_info` DISABLE KEYS */;
INSERT INTO `tb_teacher_info` VALUES (1,14,'教师1',1,'2009-08-12','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699984','xuesheng@gmail.com','备注1'),(2,15,'教师2',2,'2009-08-13','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699985','xuesheng@gmail.com','备注2'),(3,16,'教师3',1,'2009-08-14','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699986','xuesheng@gmail.com','备注3'),(4,17,'教师4',2,'2009-08-15','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699987','xuesheng@gmail.com','备注4'),(5,18,'教师5',1,'2009-08-16','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699988','xuesheng@gmail.com','备注5'),(6,19,'教师6',1,'2009-08-17','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699989','xuesheng@gmail.com','备注6'),(7,20,'教师7',2,'2009-08-18','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699990','xuesheng@gmail.com','备注7'),(8,21,'教师8',2,'2009-08-19','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699991','xuesheng@gmail.com','备注8'),(9,22,'教师9',1,'2009-08-20','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699992','xuesheng@gmail.com','备注9'),(10,23,'教师10',2,'2009-08-21','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699993','xuesheng@gmail.com','备注10'),(11,24,'教师11',1,'2009-08-22','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699994','xuesheng@gmail.com','备注11'),(12,25,'教师12',2,'2009-08-23','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699995','xuesheng@gmail.com','备注12'),(13,26,'教师13',1,'2009-08-24','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699996','xuesheng@gmail.com','备注13'),(14,27,'教师14',1,'2009-08-25','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699997','xuesheng@gmail.com','备注14'),(15,28,'教师15',1,'2009-08-26','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699998','xuesheng@gmail.com','备注15'),(16,29,'教师16',1,'2009-08-27','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523699999','xuesheng@gmail.com','备注16'),(17,30,'教师17',1,'2009-08-28','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700000','xuesheng@gmail.com','备注17'),(18,31,'教师18',1,'2009-08-29','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700001','xuesheng@gmail.com','备注18'),(19,32,'教师19',1,'2009-08-30','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700002','xuesheng@gmail.com','备注19'),(20,33,'教师20',1,'2009-08-31','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700003','xuesheng@gmail.com','备注20'),(21,34,'教师21',1,'2009-09-01','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700004','xuesheng@gmail.com','备注21'),(22,35,'教师22',2,'2009-09-02','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700005','xuesheng@gmail.com','备注22'),(23,36,'教师23',2,'2009-09-03','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700006','xuesheng@gmail.com','备注23'),(24,37,'教师24',2,'2009-09-04','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700007','xuesheng@gmail.com','备注24'),(25,38,'教师25',2,'2009-09-05','陕西省西安市雁塔区丈八四路蓝鸥科技有限公司',' 汉','251329259812365496','24523700008','xuesheng@gmail.com','备注25');
/*!40000 ALTER TABLE `tb_teacher_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_teacher_privilege`
--

DROP TABLE IF EXISTS `tb_teacher_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_teacher_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher` int(11) NOT NULL COMMENT '老师id',
  `modGrade` tinyint(4) DEFAULT NULL COMMENT '修改成绩权限 1(启用) 2(未启用)',
  `buildCourse` tinyint(4) DEFAULT NULL COMMENT '建立课程权限 1(启用) 2(未启用)',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`teacher`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher_privilege`
--

LOCK TABLES `tb_teacher_privilege` WRITE;
/*!40000 ALTER TABLE `tb_teacher_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_teacher_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_teacher_school`
--

DROP TABLE IF EXISTS `tb_teacher_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_teacher_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher` int(11) NOT NULL COMMENT '老师id',
  `school` int(11) DEFAULT NULL COMMENT '学院id',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`teacher`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher_school`
--

LOCK TABLES `tb_teacher_school` WRITE;
/*!40000 ALTER TABLE `tb_teacher_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_teacher_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_temp_online`
--

DROP TABLE IF EXISTS `tb_temp_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_temp_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `online1` int(11) NOT NULL COMMENT '选择的第一个题',
  `online2` int(11) NOT NULL COMMENT '选择的第二个题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_temp_online`
--

LOCK TABLES `tb_temp_online` WRITE;
/*!40000 ALTER TABLE `tb_temp_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_temp_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_temp_selection`
--

DROP TABLE IF EXISTS `tb_temp_selection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_temp_selection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question1` int(11) NOT NULL COMMENT '选择题1',
  `question2` int(11) NOT NULL COMMENT '选择题2',
  `question3` int(11) NOT NULL COMMENT '选择题3',
  `question4` int(11) NOT NULL COMMENT '选择题4',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_temp_selection`
--

LOCK TABLES `tb_temp_selection` WRITE;
/*!40000 ALTER TABLE `tb_temp_selection` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_temp_selection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_temp_subjection`
--

DROP TABLE IF EXISTS `tb_temp_subjection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_temp_subjection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjection1` int(11) NOT NULL COMMENT '选择的第一个题',
  `subjection2` int(11) NOT NULL COMMENT '选择的第二个题',
  `subjection3` int(11) NOT NULL COMMENT '选择的第三个题',
  `subjection4` int(11) NOT NULL COMMENT '选择的第四个题',
  `subjection5` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_temp_subjection`
--

LOCK TABLES `tb_temp_subjection` WRITE;
/*!40000 ALTER TABLE `tb_temp_subjection` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_temp_subjection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT '0' COMMENT '密码',
  `status` tinyint(4) DEFAULT NULL COMMENT '1:启用  2:未启用',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'test','test',1,NULL),(2,'test1','test1',1,NULL),(3,'test3','test3',1,NULL),(4,'test4','test4',1,NULL),(5,'test5','test5',1,NULL),(6,'test6','test6',1,NULL),(7,'test7','test7',1,NULL),(8,'test8','test8',1,NULL),(9,'test9','test9',1,NULL),(10,'test10','test10',1,NULL),(11,'test11','test11',1,NULL),(12,'test12','test12',1,NULL),(13,'test13','test13',1,NULL),(14,'test14','test14',1,NULL),(15,'test15','test15',1,NULL),(16,'test16','test16',1,NULL),(17,'test17','test17',1,NULL),(18,'test18','test18',1,NULL),(19,'test19','test19',1,NULL),(20,'test20','test20',1,NULL),(21,'test21','test21',1,NULL),(22,'test22','test22',1,NULL),(23,'test23','test23',1,NULL),(24,'test24','test24',1,NULL),(25,'test25','test25',1,NULL),(26,'test26','test26',1,NULL),(27,'test27','test27',1,NULL),(28,'test28','test28',1,NULL),(29,'test29','test29',1,NULL),(30,'test30','test30',1,NULL),(31,'test31','test31',1,NULL),(32,'test32','test32',1,NULL),(33,'test33','test33',1,NULL),(34,'test34','test34',1,NULL),(35,'test35','test35',1,NULL),(36,'test36','test36',1,NULL),(37,'test37','test37',1,NULL),(38,'test38','test38',1,NULL),(39,'test39','test39',1,NULL),(40,'test40','test40',1,NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_permission`
--

DROP TABLE IF EXISTS `tb_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_permission` (
  `user` int(11) DEFAULT NULL COMMENT '用户id',
  `permission` int(11) DEFAULT NULL COMMENT '权限id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_permission`
--

LOCK TABLES `tb_user_permission` WRITE;
/*!40000 ALTER TABLE `tb_user_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_role`
--

DROP TABLE IF EXISTS `tb_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_role` (
  `user` int(11) NOT NULL COMMENT '用户id',
  `role` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_role`
--

LOCK TABLES `tb_user_role` WRITE;
/*!40000 ALTER TABLE `tb_user_role` DISABLE KEYS */;
INSERT INTO `tb_user_role` VALUES (1,1);
/*!40000 ALTER TABLE `tb_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-15 16:11:54
