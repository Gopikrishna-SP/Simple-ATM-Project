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
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `task_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FKbhwpp8tr117vvbxhf5sbkdkc9` (`user_id`),
  CONSTRAINT `FKbhwpp8tr117vvbxhf5sbkdkc9` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'2025-01-22 07:21:07.212068','Perform a system update to the latest software version. Ensure all security patches are applied and conduct testing after the update.','2025-01-28',0,'Update Software Version',NULL,1),(10,'2025-01-22 07:26:28.286184','Review and analyze the quarterly budget to ensure all expenditures align with the forecast. Identify any discrepancies and prepare a report for senior management.','2025-01-30',0,'Review Quarterly Budget',NULL,1),(15,'2025-01-22 07:27:23.394346','Launch the new marketing campaign for the upcoming product launch. This involves coordinating with the marketing team, preparing content, and scheduling advertisements.','2025-02-10',0,'Launch Marketing Campaign',NULL,1),(16,'2025-01-22 08:20:49.874553','Perform a system update to the latest software version.','2025-01-22',0,'Update Software Version	',NULL,5),(17,'2025-01-22 08:21:30.783244','	Review and analyze the quarterly budget to ensure all expenditures align with the forecast. Identify any discrepancies and prepare a report for senior management.','2025-01-31',0,'Review Quarterly Budget	',NULL,5),(18,'2025-01-22 08:22:01.667736','	Launch the new marketing campaign for the upcoming product launch. This involves coordinating with the marketing team, preparing content, and scheduling advertisements.','2025-01-24',0,'Launch Marketing Campaign',NULL,5),(19,'2025-01-23 06:27:33.766424','Perform a system update to the latest software version. Ensure all security patches are applied and conduct testing after the update.','2025-01-23',0,'Update Software Version	',NULL,4);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
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
