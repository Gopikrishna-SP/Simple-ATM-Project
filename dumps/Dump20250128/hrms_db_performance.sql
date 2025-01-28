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
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance` (
  `performance_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `rating` int NOT NULL,
  `review_period` date DEFAULT NULL,
  `review_period_end` date DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`performance_id`),
  KEY `FKf44b7anrgetq4n9j7q9jt013j` (`department_id`),
  KEY `FKgnrih50e9vd2u791msuqhg73a` (`user_id`),
  CONSTRAINT `FKf44b7anrgetq4n9j7q9jt013j` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `FKgnrih50e9vd2u791msuqhg73a` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES (1,'2025-01-22 07:11:48.965722','Excellent progress on customer service goals. Demonstrated strong leadership in implementing a new ticketing system, reducing response time by 20%.','Improve customer service response time by 15% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,1),(2,'2025-01-22 07:11:56.092288','Excellent progress on customer service goals. Demonstrated strong leadership in implementing a new ticketing system, reducing response time by 20%.','Improve customer service response time by 15% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,2),(3,'2025-01-22 07:12:02.233101','Excellent progress on customer service goals. Demonstrated strong leadership in implementing a new ticketing system, reducing response time by 20%.','Improve customer service response time by 15% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,3),(4,'2025-01-22 07:12:07.109154','Excellent progress on customer service goals. Demonstrated strong leadership in implementing a new ticketing system, reducing response time by 20%.','Improve customer service response time by 15% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,4),(5,'2025-01-22 07:13:29.731717','Successfully completed the feature implementation, but there were some delays. Needs to improve time management.','Complete the new software feature implementation by end of the quarter.',3,'2025-02-01','2025-03-31',NULL,NULL,4),(6,'2025-01-22 07:13:35.049604','Successfully completed the feature implementation, but there were some delays. Needs to improve time management.','Complete the new software feature implementation by end of the quarter.',3,'2025-02-01','2025-03-31',NULL,NULL,3),(7,'2025-01-22 07:13:42.242638','Successfully completed the feature implementation, but there were some delays. Needs to improve time management.','Complete the new software feature implementation by end of the quarter.',3,'2025-02-01','2025-03-31',NULL,NULL,2),(8,'2025-01-22 07:13:47.039156','Successfully completed the feature implementation, but there were some delays. Needs to improve time management.','Complete the new software feature implementation by end of the quarter.',3,'2025-02-01','2025-03-31',NULL,NULL,1),(9,'2025-01-22 07:14:07.712479','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,1),(10,'2025-01-22 07:14:13.529362','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,2),(11,'2025-01-22 07:14:21.431515','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,3),(12,'2025-01-22 07:14:26.227703','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,4),(13,'2025-01-22 07:14:53.267798','Launched a successful marketing campaign, achieving significant brand awareness. Exceptional leadership and creativity.','Develop and launch the marketing campaign for the new product.',4,'2025-02-01','2025-03-31',NULL,NULL,1),(14,'2025-01-22 07:14:57.953434','Launched a successful marketing campaign, achieving significant brand awareness. Exceptional leadership and creativity.','Develop and launch the marketing campaign for the new product.',4,'2025-02-01','2025-03-31',NULL,NULL,2),(15,'2025-01-22 07:15:02.042057','Launched a successful marketing campaign, achieving significant brand awareness. Exceptional leadership and creativity.','Develop and launch the marketing campaign for the new product.',4,'2025-02-01','2025-03-31',NULL,NULL,3),(16,'2025-01-22 07:15:05.846705','Launched a successful marketing campaign, achieving significant brand awareness. Exceptional leadership and creativity.','Develop and launch the marketing campaign for the new product.',4,'2025-02-01','2025-03-31',NULL,NULL,4),(17,'2025-01-22 07:56:54.697130','Excellent progress on customer service goals. Demonstrated strong leadership in implementing a new ticketing system, reducing response time by 20%.','Improve customer service response time by 15% within the quarter.',4,'2025-02-01','2025-03-31','2025-01-28 11:19:20.141120',NULL,5),(18,'2025-01-22 07:57:27.065115','Successfully completed the feature implementation, but there were some delays. Needs to improve time management.','Complete the new software feature implementation by end of the quarter.',3,'2025-02-01','2025-03-31',NULL,NULL,5),(19,'2025-01-22 07:57:41.227872','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,5),(20,'2025-01-22 07:57:43.258343','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,5),(21,'2025-01-22 07:57:44.275729','Exceeded sales targets by 25%. Strong negotiation skills and excellent customer relationships.','Increase sales targets by 20% within the quarter.',4,'2025-02-01','2025-03-31',NULL,NULL,5),(22,'2025-01-22 07:57:57.283907','Launched a successful marketing campaign, achieving significant brand awareness. Exceptional leadership and creativity.','Develop and launch the marketing campaign for the new product.',4,'2025-02-01','2025-03-31',NULL,NULL,5);
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 17:34:01
