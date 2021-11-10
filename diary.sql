-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: diary
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diary_content`
--

create database diary DEFAULT CHARACTER SET utf8;
use diary;
DROP TABLE IF EXISTS `diary_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diary_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(10) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `content` varchar(15000) NOT NULL,
  `publishTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10035 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary_content`
--

LOCK TABLES `diary_content` WRITE;
/*!40000 ALTER TABLE `diary_content` DISABLE KEYS */;
INSERT INTO `diary_content` VALUES (10012,'zhangsan','第一天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:26:41'),(10013,'zhangsan','第二天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:26:48'),(10014,'zhangsan','第三天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:26:59'),(10015,'zhangsan','第四天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:04'),(10016,'zhangsan','第五天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:11'),(10017,'zhangsan','第六天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:19'),(10018,'zhangsan','第七天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:23'),(10019,'zhangsan','第八天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:29'),(10020,'zhangsan','第九天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:37'),(10021,'zhangsan','第十天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:42'),(10022,'zhangsan','第十一天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:27:53'),(10023,'zhangsan','第十二天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:28:02'),(10024,'zhangsan','第十三天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:28:11'),(10025,'zhangsan','第十四天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:28:22'),(10026,'zhangsan','第十五天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:28:28'),(10027,'zhangsan','第十六天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。\r\n\r\n这是生活里可以观察到的。\r\n\r\n因为两个人一旦出现利益分歧，就是考验底线的时候。\r\n\r\n（不要幻想永远不出现分歧） ​​​','2021-07-01 22:28:39'),(10032,'zhangsan','第十七天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​','2021-07-02 10:27:12'),(10033,'zhangsan','第十八天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​','2021-07-02 10:27:19'),(10034,'zhangsan','第十九天','谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​谈恋爱不要看对方最高的优点在哪里，还是好好看看他的底线在哪里比较重要。 这是生活里可以观察到的。 因为两个人一旦出现利益分歧，就是考验底线的时候。 （不要幻想永远不出现分歧） ​​​','2021-07-02 10:27:30');
/*!40000 ALTER TABLE `diary_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1000,'zhangsan','991205'),(1001,'lisi','991205'),(1003,'zhangsan1','123456'),(1004,'zhangsan12','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'diary'
--

--
-- Dumping routines for database 'diary'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-02 10:29:43
