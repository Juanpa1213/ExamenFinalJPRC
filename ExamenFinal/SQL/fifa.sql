-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fifa
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `delete_logs`
--

DROP TABLE IF EXISTS `delete_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delete_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delete_logs`
--

LOCK TABLES `delete_logs` WRITE;
/*!40000 ALTER TABLE `delete_logs` DISABLE KEYS */;
INSERT INTO `delete_logs` VALUES (8,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-02 13:26:45'),(9,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-03 10:05:10'),(10,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-07 20:30:46'),(11,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-08 19:34:11'),(12,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-08 19:34:29'),(13,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-08 19:34:29'),(14,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-09 07:36:37'),(15,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-09 07:44:33'),(16,'Deleted Successfully in PLAYER CLUB\'S Table','2018-12-09 08:13:36'),(17,'Deleted Successfully in PLAYER CLUB\'S Table','2018-12-09 08:20:21'),(18,'Deleted Successfully in PLAYER\'S POSITION Table','2018-12-09 08:26:29'),(19,'Deleted Successfully in PLAYER\'S SALARY Table','2018-12-09 10:03:03'),(20,'Deleted Successfully in PLAYER\'S POSITION Table','2018-12-09 10:03:42'),(21,'Deleted Successfully in PLAYER STATS Table','2018-12-09 10:18:02'),(22,'Deleted Successfully in PLAYER STATS Table','2018-12-09 10:53:38'),(23,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-09 11:03:31'),(24,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-09 15:17:18'),(25,'Deleted Successfully in PERSONAL DETAILS Table','2018-12-09 16:30:06');
/*!40000 ALTER TABLE `delete_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insert_logs`
--

DROP TABLE IF EXISTS `insert_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insert_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insert_logs`
--

LOCK TABLES `insert_logs` WRITE;
/*!40000 ALTER TABLE `insert_logs` DISABLE KEYS */;
INSERT INTO `insert_logs` VALUES (6,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-02 13:24:27'),(7,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-03 10:04:37'),(8,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-07 20:30:34'),(9,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-08 17:11:38'),(10,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-08 19:01:40'),(11,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-08 19:02:55'),(12,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-09 07:31:53'),(13,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-09 07:37:05'),(14,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-09 08:09:09'),(15,'Inserted Successfully in PLAYER CLUB\'S Table','2018-12-09 08:09:31'),(22,'Inserted Successfully in PLAYER STATS Table','2018-12-09 08:12:05'),(23,'Inserted Successfully in PLAYER\'S POSITION Table','2018-12-09 08:12:18'),(24,'Inserted Successfully in PLAYER SALARY Table','2018-12-09 08:12:29'),(25,'Inserted Successfully in PLAYER CLUB\'S Table','2018-12-09 08:14:08'),(26,'Inserted Successfully in PLAYER\'S POSITION Table','2018-12-09 08:26:45'),(27,'Inserted Successfully in PLAYER STATS Table','2018-12-09 10:18:30'),(28,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-09 15:15:06'),(29,'Inserted Successfully in PERSONAL DETAILS Table','2018-12-09 15:21:05');
/*!40000 ALTER TABLE `insert_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_details`
--

DROP TABLE IF EXISTS `other_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` int NOT NULL,
  `club` char(30) DEFAULT NULL,
  `preferred_position` char(20) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_details`
--

LOCK TABLES `other_details` WRITE;
/*!40000 ALTER TABLE `other_details` DISABLE KEYS */;
INSERT INTO `other_details` VALUES (19,1179,'Juventus','GK'),(1,20801,'Real Madrid CF','LW'),(18,138956,'Juventus','CB'),(17,153079,'Manchester City','ST'),(11,155862,'Real Madrid CF','CB'),(2,158023,'FC Barcelona','RW'),(5,167495,'FC Bayern Munich','GK'),(10,167664,'Juventus','ST'),(16,173731,'Real Madrid CF','RW'),(4,176580,'FC Barcelona','ST'),(15,177003,'Real Madrid CF','CM'),(9,182521,'Real Madrid CF','CM'),(8,183277,'Chelsea','LW'),(14,184941,'Arsenal','LW'),(6,188545,'FC Bayern Munich','ST'),(3,190871,'Paris Saint-Germain','LW'),(13,192119,'Chelsea','GK'),(12,192985,'Manchester City','RM'),(7,193080,'Manchester United','GK'),(20,211110,'Juventus','RW');
/*!40000 ALTER TABLE `other_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` int NOT NULL,
  `player_name` char(30) NOT NULL,
  `age` int DEFAULT NULL,
  `overall_rating` int DEFAULT NULL,
  `nationality` char(30) DEFAULT NULL,
  PRIMARY KEY (`player_id`,`player_name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES (19,1179,'G BUFFON',39,89,'Italy'),(1,20801,'CRISTIANO RONALDO',32,94,'Portugal'),(18,138956,'G CHIELLINI',32,89,'Italy'),(17,153079,'S AGUERO',29,89,'Argentina'),(11,155862,'SERGIO RAMOS',31,90,'Spain'),(2,158023,'LIONEL MESSI',30,94,'Argentina'),(5,167495,'M NEUER',31,92,'Germany'),(10,167664,'G HIGUAIN',29,90,'Argentina'),(16,173731,'G BALE',27,89,'Wales'),(4,176580,'LUIS SUAREZ',30,92,'Uruguay'),(15,177003,'LUKA MODRIC',31,89,'Croatia'),(9,182521,'TONI KROOS',27,90,'Germany'),(8,183277,'EDEN HAZARD',26,90,'Belgium'),(14,184941,'ALEXIS SANCHEZ',28,89,'Chile'),(6,188545,'R LEWANDOWSKI',28,91,'Poland'),(3,190871,'NEYMAR',25,92,'Brazil'),(13,192119,'T COURTOIS',25,89,'Belgium'),(12,192985,'K DE BRUYNE',26,89,'Belgium'),(7,193080,'DE GEA',26,90,'Spain'),(20,211110,'P DYBALA',23,88,'Argentina');
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` int NOT NULL,
  `acceleration` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `ball_control` int DEFAULT NULL,
  `crossing` int DEFAULT NULL,
  `curve` int DEFAULT NULL,
  `dribbling` int DEFAULT NULL,
  `finishing` int DEFAULT NULL,
  `gk_kicking` int DEFAULT NULL,
  `gk_positioning` int DEFAULT NULL,
  `penalties` int DEFAULT NULL,
  `short_pass` int DEFAULT NULL,
  `stamina` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES (19,1179,49,49,28,13,20,25,15,74,90,22,37,39,69),(1,20801,89,63,93,85,81,91,94,15,14,85,83,92,80),(18,138956,68,64,57,58,60,58,33,2,4,50,59,68,91),(17,153079,90,91,89,70,82,89,90,6,11,83,79,74,74),(11,155862,75,60,84,66,73,61,60,9,7,68,78,84,81),(2,158023,92,95,95,77,89,97,95,15,14,74,88,73,59),(5,167495,58,35,48,15,14,30,13,95,91,47,55,44,83),(10,167664,78,69,85,68,74,84,91,7,5,70,75,72,85),(16,173731,93,65,87,87,86,89,87,11,5,76,86,76,80),(4,176580,88,60,91,77,86,86,94,31,33,85,83,89,80),(15,177003,75,94,92,78,79,86,71,7,14,80,92,52,88),(9,182521,60,69,89,85,85,79,76,13,7,73,90,77,74),(8,183277,93,91,92,80,82,93,83,6,8,86,86,79,65),(14,184941,88,87,87,80,78,90,85,15,12,77,81,85,72),(6,188545,79,80,89,62,77,85,91,12,8,81,83,79,84),(3,190871,94,82,95,75,81,96,89,15,15,81,81,78,53),(13,192119,46,45,23,14,19,13,14,69,86,27,32,38,70),(12,192985,76,75,87,90,83,85,83,5,10,77,90,87,73),(7,193080,57,43,42,17,21,18,13,87,86,40,50,40,64),(20,211110,88,85,93,80,88,92,85,4,5,86,83,83,65);
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` int NOT NULL,
  `gk` int DEFAULT NULL,
  `df` int DEFAULT NULL,
  `cm` int DEFAULT NULL,
  `fr` int DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (19,1179,89,30,15,10),(1,20801,13,26,82,94),(18,138956,30,89,60,55),(17,153079,20,44,75,89),(11,155862,23,89,74,70),(2,158023,6,45,82,94),(5,167495,92,10,8,4),(10,167664,12,46,71,89),(16,173731,24,67,81,89),(4,176580,12,50,80,92),(15,177003,30,72,89,83),(9,182521,16,72,90,84),(8,183277,12,47,81,90),(14,184941,20,56,79,89),(6,188545,12,57,78,91),(3,190871,10,46,79,93),(13,192119,89,20,15,10),(12,192985,30,57,89,85),(7,193080,90,16,9,6),(20,211110,26,43,78,88);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` int NOT NULL,
  `wage` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (19,1179,110,450000),(1,20801,565,95500000),(18,138956,225,38000000),(17,153079,325,6650000),(11,155862,310,5200000),(2,158023,565,10500000),(5,167495,230,6100000),(10,167664,275,7750000),(16,173731,370,6950000),(4,176580,510,9700000),(15,177003,340,5700000),(9,182521,340,7900000),(8,183277,290,9050000),(14,184941,265,6750000),(6,188545,335,9200000),(3,190871,280,12300000),(13,192119,190,5900000),(12,192985,285,8300000),(7,193080,215,6450000),(20,211110,215,7900000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_logs`
--

DROP TABLE IF EXISTS `update_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_logs`
--

LOCK TABLES `update_logs` WRITE;
/*!40000 ALTER TABLE `update_logs` DISABLE KEYS */;
INSERT INTO `update_logs` VALUES (1,'Updated Successfully in PERSONAL DETAILS Table','2018-12-07 20:48:39'),(2,'Updated Successfully in PERSONAL DETAILS Table','2018-12-07 20:50:42'),(3,'Updated Successfully in PERSONAL DETAILS Table','2018-12-08 09:30:19'),(4,'Updated Successfully in PERSONAL DETAILS Table','2018-12-08 19:34:45'),(5,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:41:48'),(6,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:42:03'),(7,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:43:35'),(8,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:44:08'),(9,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:44:23'),(10,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:47:32'),(11,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 07:47:50'),(12,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 08:14:47'),(13,'Updated Successfully in CLUB\'s Table','2018-12-09 08:19:48'),(14,'Updated Successfully in CLUB\'s Table','2018-12-09 08:20:00'),(15,'Updated Successfully in CLUB\'s Table','2018-12-09 08:20:12'),(16,'Updated Successfully in PLAYER SALARY Table','2018-12-09 10:01:00'),(17,'Updated Successfully in PLAYER SALARY Table','2018-12-09 10:01:12'),(18,'Updated Successfully in PLAYER SALARY Table','2018-12-09 10:01:18'),(19,'Updated Successfully in PLAYER SALARY Table','2018-12-09 10:02:58'),(20,'Updated Successfully in PLAYER\'S POSITION Table','2018-12-09 10:03:21'),(21,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:16:27'),(22,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:25:04'),(23,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:43:47'),(24,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:44:30'),(25,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:46:45'),(26,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:46:52'),(27,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:49:37'),(28,'Updated Successfully in PLAYER STATS Table','2018-12-09 10:52:48'),(29,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 11:03:29'),(30,'Updated Successfully in PLAYER\'S POSITION Table','2018-12-09 13:31:53'),(31,'Updated Successfully in PLAYER\'S POSITION Table','2018-12-09 13:31:59'),(32,'Updated Successfully in PERSONAL DETAILS Table','2018-12-09 15:16:34');
/*!40000 ALTER TABLE `update_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23 19:52:51
