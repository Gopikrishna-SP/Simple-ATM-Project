-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hrms_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves` (
  `leave_id` bigint NOT NULL AUTO_INCREMENT,
  `approver` varchar(255) DEFAULT NULL,
  `casual_taken` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `leave_duration` int NOT NULL,
  `leave_type` enum('CASUAL','PUBLIC_HOLIDAY','SICK') DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `sick_taken` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`leave_id`),
  KEY `FK30had39bhp0k0yadgvk4m618c` (`department_id`),
  KEY `FKa3vfaevh5a44ccfq2wodxoxig` (`user_id`),
  CONSTRAINT `FK30had39bhp0k0yadgvk4m618c` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `FKa3vfaevh5a44ccfq2wodxoxig` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,'David Wilson',0,'2025-01-22 06:52:24.646043','2025-01-24',3,'SICK','Flu and fever, as advised by a doctor.',0,'2025-01-22',0,NULL,4,4),(2,'David Wilson',0,'2025-01-22 06:52:53.379091','2025-01-24',4,'SICK','Chicken Pox and fever, as advised by a doctor.',0,'2025-01-21',0,NULL,4,4),(3,'David Wilson',0,'2025-01-22 06:53:18.824392','2025-01-24',4,'SICK','Viral fever, as advised by a doctor.',0,'2025-01-21',0,NULL,4,4),(4,'David Wilson',0,'2025-01-22 06:53:55.637264','2025-01-30',10,'CASUAL','Going on a vacation.',0,'2025-01-21',0,NULL,4,4),(5,'David Wilson',0,'2025-01-22 06:54:28.021387','2025-01-30',10,'CASUAL','Going on a vacation.',0,'2025-01-21',0,NULL,3,3),(6,'David Wilson',0,'2025-01-22 06:54:54.208323','2025-01-24',4,'CASUAL','Viral fever, as advised by a doctor.',0,'2025-01-21',0,NULL,3,3),(7,'David Wilson',0,'2025-01-22 06:55:21.856051','2025-01-24',4,'SICK','Chicken Pox and fever, as advised by a doctor.',0,'2025-01-21',0,NULL,3,3),(8,'David Wilson',0,'2025-01-22 06:55:41.974968','2025-01-24',3,'SICK','Flu and fever, as advised by a doctor.',0,'2025-01-22',0,NULL,3,3),(9,'David Wilson',0,'2025-01-22 06:55:51.409717','2025-01-24',3,'SICK','Flu and fever, as advised by a doctor.',0,'2025-01-22',1,'2025-01-23 09:39:52.505234',2,2),(10,'David Wilson',0,'2025-01-22 06:56:18.007143','2025-01-24',3,'SICK','Viral fever, as advised by a doctor.',0,'2025-01-22',0,NULL,2,2),(11,'David Wilson',0,'2025-01-22 06:56:38.938160','2025-01-30',9,'SICK','Going on Vacation.',0,'2025-01-22',0,NULL,2,2),(12,'David Wilson',0,'2025-01-22 06:57:24.558234','2025-01-30',9,'CASUAL','Going on Vacation.',0,'2025-01-22',0,NULL,1,1),(14,'David Wilson',0,'2025-01-22 07:06:23.199050','2025-01-30',9,'SICK','Viral fever',0,'2025-01-22',1,'2025-01-23 09:07:20.522000',1,1),(15,'David Wilson',0,'2025-01-22 07:06:23.528407','2025-01-30',9,'CASUAL','Going on Vacation.',0,'2025-01-22',0,NULL,1,1),(16,'David Wilson',0,'2025-01-22 07:06:24.429535','2025-01-30',9,'SICK','Viral fever',0,'2025-01-22',0,'2025-01-22 07:07:26.322691',1,1),(17,'David Wilson',0,'2025-01-22 07:06:38.148298','2025-01-30',9,'CASUAL','Going on Vacation.',0,'2025-01-22',0,NULL,1,1),(18,NULL,0,'2025-01-22 07:59:20.664303','2025-01-28',3,'CASUAL',NULL,0,'2025-01-26',1,'2025-01-23 09:28:54.219184',1,5),(19,NULL,0,'2025-01-23 07:30:07.741511','2025-01-23',1,'CASUAL','Viral fever',0,'2025-01-23',0,NULL,1,5),(20,NULL,0,'2025-01-23 07:33:09.669790','2025-01-23',1,'SICK','Viral fever',0,'2025-01-23',0,NULL,1,5);
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 17:34:03
