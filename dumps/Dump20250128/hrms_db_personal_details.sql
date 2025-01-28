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
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_exit` date DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `salary` float NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrimuq3l0uch83snau9oux2208` (`user_id`),
  CONSTRAINT `FKrimuq3l0uch83snau9oux2208` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES (9,_binary '','123 Elm Street, Springfield, IL, USA','2025-01-22 00:29:20.140000','1990-05-14',NULL,'2022-07-01','Technology','adminnew@gmail.com','Emma','Female','Jones','John Smith','Grace','+1-555-123-4567','Software Engineer',85000,NULL,5),(10,_binary '\0','',NULL,NULL,NULL,NULL,'','','','','','','','',NULL,0,NULL,6),(13,_binary '','45 Oak Avenue, Chicago, IL, USA','2025-01-22 00:29:20.140000','1985-10-22',NULL,'2018-03-15','Technology','manager@gmail.com','David','Male','Wilson','Sarah Thompson','Michael','+1-555-987-6543','Team Manager',120000,NULL,2),(16,_binary '\0','123 Elm Street, Springfield, IL, USA','2025-01-22 00:29:20.140000','1990-01-24',NULL,'2022-07-01','Administration','admin@gmail.com','Emma','Female','Jones','David Wilson','Grace','+1-555-123-4567','Admin',85000,NULL,1),(49,_binary '','78 Maple Drive, Boston, MA, USA','2025-01-22 06:35:01.448066','1988-01-25',NULL,'2019-09-10','Human Resources','hr@gmail.com','Sara','Female','Thompson','Michael Brown','Elizabeth','+1-555-321-9876','HR Specialist',95000,'2025-01-22 09:55:47.338022',3),(50,_binary '','101 Pine Street, Seattle, WA, USA','2025-01-22 00:29:20.140000','1980-04-08',NULL,'2015-01-20','Administration','employee@gmail.com','Michael','Male','Brown','David Wilson','James','+1-555-654-3210','System Administrator',140000,NULL,4),(51,_binary '','string','2025-01-28 06:09:56.429000','2002-06-30','2025-01-28','2025-02-03','Development','gopikrishna@kryptosinfosys.com','Gopikrishna','Male','S P','Sheikdawood',' ','9361572957','Employee',15000,'2025-01-28 06:09:56.429000',7);
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 17:34:00
