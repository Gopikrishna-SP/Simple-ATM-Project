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
-- Table structure for table `talent_acquisition`
--

DROP TABLE IF EXISTS `talent_acquisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talent_acquisition` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `closing_date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `posted_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talent_acquisition`
--

LOCK TABLES `talent_acquisition` WRITE;
/*!40000 ALTER TABLE `talent_acquisition` DISABLE KEYS */;
INSERT INTO `talent_acquisition` VALUES (1,'2025-02-25','We are looking for a skilled Software Engineer to join our development team. The ideal candidate should have experience in full-stack development, with a focus on JavaScript and Python. Responsibilities include designing, coding, testing, and maintaining software solutions.','Software Engineer','2025-01-22'),(2,'2025-02-10','We are seeking a Marketing Manager to lead our marketing team. The ideal candidate should have experience in developing and executing marketing strategies, including digital campaigns, brand development, and event management. Must be a creative thinker with strong leadership skills.','Marketing Manager','2025-01-22'),(3,'2025-02-05','We are looking for an HR Specialist to manage recruitment, employee relations, and performance management. The ideal candidate will have experience in HR operations and a deep understanding of employment laws and regulations. Strong communication and organizational skills are required.','HR Specialist','2025-01-22'),(4,'2025-02-15','We are seeking a Data Analyst to join our analytics team. The candidate should be proficient in data analysis tools such as SQL, Python, and Tableau, and have the ability to generate reports and insights to guide business decisions. Strong problem-solving and analytical skills are a must.','Data Analyst','2025-01-22');
/*!40000 ALTER TABLE `talent_acquisition` ENABLE KEYS */;
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
