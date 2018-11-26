-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: seumstc
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_activity_comment`
--

DROP TABLE IF EXISTS `user_activity_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_activity_comment` (
  `activity_comment_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `content` text,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_replyed` smallint(6) DEFAULT NULL,
  `hot` bit(1) DEFAULT NULL,
  `stick` bit(1) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_comment`
--

LOCK TABLES `user_activity_comment` WRITE;
/*!40000 ALTER TABLE `user_activity_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_activity_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_comment_reply`
--

DROP TABLE IF EXISTS `user_activity_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_activity_comment_reply` (
  `activity_comment_reply_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `publish_time` datetime DEFAULT NULL,
  `reply_type` int(1) DEFAULT NULL,
  `activity_comment_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `comment_reply_reply_id` int(11) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_comment_reply`
--

LOCK TABLES `user_activity_comment_reply` WRITE;
/*!40000 ALTER TABLE `user_activity_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_activity_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_information`
--

DROP TABLE IF EXISTS `user_activity_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_activity_information` (
  `activity_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_font_size` int(10) unsigned DEFAULT NULL,
  `title_font_color` int(10) unsigned DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `recommended` bit(1) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `number_collected` smallint(6) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_readed` mediumint(9) DEFAULT NULL,
  `number_commented` smallint(6) DEFAULT NULL,
  `lasted_commented_time` datetime DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_information`
--

LOCK TABLES `user_activity_information` WRITE;
/*!40000 ALTER TABLE `user_activity_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_activity_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_blog_comment`
--

DROP TABLE IF EXISTS `user_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_blog_comment` (
  `blog_comment_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `content` text,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_replyed` smallint(6) DEFAULT NULL,
  `hot` bit(1) DEFAULT NULL,
  `stick` bit(1) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_blog_comment`
--

LOCK TABLES `user_blog_comment` WRITE;
/*!40000 ALTER TABLE `user_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_blog_comment_reply`
--

DROP TABLE IF EXISTS `user_blog_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_blog_comment_reply` (
  `blog_comment_reply_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `publish_time` datetime DEFAULT NULL,
  `reply_type` int(1) DEFAULT NULL,
  `blog_comment_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `comment_reply_reply_id` int(11) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_blog_comment_reply`
--

LOCK TABLES `user_blog_comment_reply` WRITE;
/*!40000 ALTER TABLE `user_blog_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_blog_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_blog_information`
--

DROP TABLE IF EXISTS `user_blog_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_blog_information` (
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `html_source_address` text,
  `topic` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_font_size` int(10) unsigned DEFAULT NULL,
  `title_font_color` int(10) unsigned DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `recommended` bit(1) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `number_collected` smallint(6) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_readed` mediumint(9) DEFAULT NULL,
  `number_commented` smallint(6) DEFAULT NULL,
  `lasted_commented_time` datetime DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_blog_information`
--

LOCK TABLES `user_blog_information` WRITE;
/*!40000 ALTER TABLE `user_blog_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_blog_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_collect`
--

DROP TABLE IF EXISTS `user_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_collect` (
  `user_id` int(11) DEFAULT NULL,
  `collect_type` int(1) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `technical_discussion_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `collect_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_collect`
--

LOCK TABLES `user_collect` WRITE;
/*!40000 ALTER TABLE `user_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_information`
--

DROP TABLE IF EXISTS `user_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_information` (
  `user_id` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `hobby` text,
  `head_portrait` varchar(255) DEFAULT NULL,
  `blacklist` text,
  `contribution_degree` smallint(6) DEFAULT NULL,
  `number_collect` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information`
--

LOCK TABLES `user_information` WRITE;
/*!40000 ALTER TABLE `user_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_program_comment`
--

DROP TABLE IF EXISTS `user_program_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_program_comment` (
  `program_comment_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `content` text,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_replyed` smallint(6) DEFAULT NULL,
  `hot` bit(1) DEFAULT NULL,
  `stick` bit(1) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_program_comment`
--

LOCK TABLES `user_program_comment` WRITE;
/*!40000 ALTER TABLE `user_program_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_program_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_program_comment_reply`
--

DROP TABLE IF EXISTS `user_program_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_program_comment_reply` (
  `program_comment_reply_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `publish_time` datetime DEFAULT NULL,
  `reply_type` int(1) DEFAULT NULL,
  `program_comment_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `comment_reply_reply_id` int(11) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_program_comment_reply`
--

LOCK TABLES `user_program_comment_reply` WRITE;
/*!40000 ALTER TABLE `user_program_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_program_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_program_information`
--

DROP TABLE IF EXISTS `user_program_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_program_information` (
  `program_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_font_size` int(10) unsigned DEFAULT NULL,
  `title_font_color` int(10) unsigned DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `recommended` bit(1) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `number_collected` smallint(6) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_readed` mediumint(9) DEFAULT NULL,
  `number_commented` smallint(6) DEFAULT NULL,
  `lasted_commented_time` datetime DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_program_information`
--

LOCK TABLES `user_program_information` WRITE;
/*!40000 ALTER TABLE `user_program_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_program_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_register`
--

DROP TABLE IF EXISTS `user_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_register` (
  `user_id` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `register_status` char(1) DEFAULT NULL,
  `IP_address` varchar(255) DEFAULT NULL,
  `last_time` timestamp NULL DEFAULT NULL,
  `authority` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_register`
--

LOCK TABLES `user_register` WRITE;
/*!40000 ALTER TABLE `user_register` DISABLE KEYS */;
INSERT INTO `user_register` VALUES (220181499,'seuwh2018@foxmail.com','123456','1','192.168.1.1','1999-09-09 04:12:12','1');
/*!40000 ALTER TABLE `user_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_technical_discussion_comment`
--

DROP TABLE IF EXISTS `user_technical_discussion_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_technical_discussion_comment` (
  `technical_discussion_comment_id` int(11) DEFAULT NULL,
  `technical_discussion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `content` text,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_replyed` smallint(6) DEFAULT NULL,
  `hot` bit(1) DEFAULT NULL,
  `stick` bit(1) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_technical_discussion_comment`
--

LOCK TABLES `user_technical_discussion_comment` WRITE;
/*!40000 ALTER TABLE `user_technical_discussion_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_technical_discussion_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_technical_discussion_comment_reply`
--

DROP TABLE IF EXISTS `user_technical_discussion_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_technical_discussion_comment_reply` (
  `technical_discussion_comment_reply_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `publish_time` datetime DEFAULT NULL,
  `reply_type` int(1) DEFAULT NULL,
  `technical_discussion_comment_id` int(11) DEFAULT NULL,
  `technical_discussion_id` int(11) DEFAULT NULL,
  `comment_reply_reply_id` int(11) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_technical_discussion_comment_reply`
--

LOCK TABLES `user_technical_discussion_comment_reply` WRITE;
/*!40000 ALTER TABLE `user_technical_discussion_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_technical_discussion_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_technical_discussion_information`
--

DROP TABLE IF EXISTS `user_technical_discussion_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_technical_discussion_information` (
  `technical_discussion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_font_size` int(10) unsigned DEFAULT NULL,
  `title_font_color` int(10) unsigned DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `recommended` bit(1) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `number_collected` smallint(6) DEFAULT NULL,
  `number_like` smallint(6) DEFAULT NULL,
  `number_dislike` smallint(6) DEFAULT NULL,
  `number_readed` mediumint(9) DEFAULT NULL,
  `number_commented` smallint(6) DEFAULT NULL,
  `lasted_commented_time` datetime DEFAULT NULL,
  `status_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_technical_discussion_information`
--

LOCK TABLES `user_technical_discussion_information` WRITE;
/*!40000 ALTER TABLE `user_technical_discussion_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_technical_discussion_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 21:53:40
