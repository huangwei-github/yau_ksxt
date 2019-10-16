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
  `tel` varchar(32) NOT NULL COMMENT '电话',
  `email` varchar(32) NOT NULL COMMENT '邮件',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`admin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin_info`
--

LOCK TABLES `tb_admin_info` WRITE;
/*!40000 ALTER TABLE `tb_admin_info` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course`
--

LOCK TABLES `tb_course` WRITE;
/*!40000 ALTER TABLE `tb_course` DISABLE KEYS */;
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
  `author` varchar(64) DEFAULT NULL COMMENT '作者id',
  `rank` tinyint(4) DEFAULT NULL COMMENT '优先级',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1(启用) 2(销毁)',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_news`
--

LOCK TABLES `tb_news` WRITE;
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
INSERT INTO `tb_news` VALUES (1,'中华航空-变脸最快的航空公司，取消TW个签后变脸如变天','https://wx3.sinaimg.cn/large/005wUFwNgy1g5r9awue75j30c906w0uz.jpg','自7月31日大陆取消TW个签后，多家航司纷纷推出了自家的退票政策，唯有华航，霸道且无理，简单阐述下事情的经过。\r\n\r\n8月1日华航官方放出了大陆往来TW退改机票的政策：','2019-08-08 14:45:34','1',1,1,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notice`
--

LOCK TABLES `tb_notice` WRITE;
/*!40000 ALTER TABLE `tb_notice` DISABLE KEYS */;
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
  `question` text NOT NULL COMMENT '题目',
  `score` int(11) NOT NULL DEFAULT '15' COMMENT '分值',
  `weight` tinyint(4) NOT NULL COMMENT '权值(难度1,2,3)',
  `course` int(11) NOT NULL COMMENT '课程号',
  `referrence` text NOT NULL COMMENT '参考答案',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `teacher` varchar(32) NOT NULL COMMENT '上传老师',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `teacher` varchar(32) NOT NULL COMMENT '上传老师',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
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
  `question` text NOT NULL COMMENT '题目',
  `score` int(11) NOT NULL DEFAULT '8' COMMENT '分值',
  `weight` tinyint(4) NOT NULL COMMENT '权值(难度1,2,3)',
  `course` int(11) NOT NULL COMMENT '课程号',
  `referrence` text NOT NULL COMMENT '参考答案',
  `notes` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `teacher` varchar(32) NOT NULL COMMENT '上传老师',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher_info`
--

LOCK TABLES `tb_teacher_info` WRITE;
/*!40000 ALTER TABLE `tb_teacher_info` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'test','test',1,NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
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

-- Dump completed on 2019-08-08 16:21:36
