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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_opening_date` date DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `department_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  KEY `FKfi832e3qv89fq376fuh8920y4` (`department_id`),
  CONSTRAINT `FKfi832e3qv89fq376fuh8920y4` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Emma Jones','123456789012','2019-06-01','Savings','First National Bank','Downtown Springfield','FNB0012345',_binary '','2025-01-22 06:27:55.831649','$2a$10$KIP/P1Q6v86ML0.xh8XTYOeO1iARkAOeajCWAtljD2F14OSBZVrty','2025-01-22 09:24:48.632296','admin@gmail.com',1),(2,'David Wilson','987654321098','2016-04-10','Current','Bank of America','Main Street, Chicago','BOA9876543',_binary '','2025-01-22 06:31:23.917868','$2a$10$Nd3d5UeRgVP.KI4Xp6QzJeS6OR35RH.StN/YwtP.ZHJ2xsiGWW5fu','2025-01-22 09:21:43.182729','manager@gmail.com',2),(3,'Sarah Thompson','567890123456','2017-05-01','Savings','Citibank','Downtown Boston','CITI567890',_binary '','2025-01-22 06:35:01.448066','$2a$10$WjacSIy0OwjEvMZftk0PZOQtj6O2Tm7TcI6RX3A7QhhAt4BYXV4U6','2025-01-22 12:03:46.927821','hr@gmail.com',3),(4,'Michael Brown','098765432109','2013-11-15','Current','Wells Fargo','Seattle Central','WF0987654',_binary '','2025-01-22 06:39:36.945789','$2a$10$F4TU7qT6LYy/dlD4LK5oYOMHeow.iXUYl1DsPHu7lVGkgquh1QqCW','2025-01-22 12:04:15.401943','employee@gmail.com',4),(5,'Emma Jones','123456789012','2019-06-01','Savings','First National Bank','Downtown Springfield','FNB0012345',_binary '','2025-01-22 07:52:26.841628','$2a$10$KQI5FzrlOfAxMgvMoIEI0OaSd0Q0fQ53VstaA5Ve2.VxUxC4B7Iya',NULL,'adminnew@gmail.com',1),(6,'','',NULL,'','','','',_binary '','2025-01-22 08:30:01.226458','$2a$10$JOF6JwGHECl5UXOffnU0xOJB7KvR3IRJEPxsN7tIUvuDT2zY0Xqze',NULL,'john.doe@gmail.com',1),(7,'string','string','2025-01-28','string','string','string','string',_binary '','2025-01-28 11:44:20.020310','$2a$10$Rqq3VPUHHi4xPBgDqQw80./L8WGQR1U8N38BFgfkRYOEDTkqh34DS',NULL,'gopikrishna@kryptosinfosys.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
