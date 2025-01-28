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
-- Table structure for table `master_payroll`
--

DROP TABLE IF EXISTS `master_payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_payroll` (
  `payroll_default_id` bigint NOT NULL AUTO_INCREMENT,
  `annual_bonus` decimal(38,2) DEFAULT NULL,
  `basic_salary` decimal(38,2) NOT NULL,
  `hra` decimal(38,2) DEFAULT NULL,
  `income_tax` decimal(38,2) DEFAULT NULL,
  `medical_allowance` decimal(38,2) DEFAULT NULL,
  `overtime_rate` decimal(38,2) DEFAULT NULL,
  `pf` decimal(38,2) DEFAULT NULL,
  `role` enum('ROLE_ADMIN','ROLE_EMPLOYEE','ROLE_HUMANRESOURCE','ROLE_MANAGER') NOT NULL,
  PRIMARY KEY (`payroll_default_id`),
  UNIQUE KEY `UKf4f1ro5l6u5dfkj76rtvxtkk2` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_payroll`
--

LOCK TABLES `master_payroll` WRITE;
/*!40000 ALTER TABLE `master_payroll` DISABLE KEYS */;
INSERT INTO `master_payroll` VALUES (1,10000.00,100000.00,25000.00,15000.00,5000.00,NULL,12000.00,'ROLE_ADMIN'),(2,50000.00,500000.00,100000.00,80000.00,30000.00,NULL,60000.00,'ROLE_MANAGER'),(3,8000.00,70000.00,15000.00,10000.00,4000.00,NULL,8000.00,'ROLE_HUMANRESOURCE'),(4,5000.00,50000.00,10000.00,8000.00,3000.00,NULL,6000.00,'ROLE_EMPLOYEE');
/*!40000 ALTER TABLE `master_payroll` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 17:34:02
