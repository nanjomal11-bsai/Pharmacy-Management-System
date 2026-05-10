-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacyandmedicalstock
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `saleId` int NOT NULL AUTO_INCREMENT,
  `medicineId` varchar(20) DEFAULT NULL,
  `medicineName` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `saleDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `customerName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`saleId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'6001','Panadol',10,50.00,500.00,'2026-05-10 13:33:39','Anand'),(2,'6002','Brufen',15,80.00,1200.00,'2026-05-10 13:33:39','Anand'),(3,'6006','Flagyl',2,120.00,240.00,'2026-05-10 13:33:39','Anand'),(4,'6008','Arinac',5,150.00,750.00,'2026-05-10 13:33:39','Anand'),(5,'6014','Seretide',1,450.00,450.00,'2026-05-10 14:14:12','Anand'),(6,'6013','Ventolin',2,300.00,600.00,'2026-05-10 14:14:12','Anand'),(7,'6001','Panadol',7,50.00,350.00,'2026-05-10 14:17:23','Anand'),(8,'6001','Panadol',8,50.00,400.00,'2026-05-10 14:17:23','Anand'),(9,'6030','Primolut N',20,350.00,7000.00,'2026-05-10 14:17:23','Anand'),(10,'6001','Panadol',4,50.00,200.00,'2026-05-10 16:10:36','Ali'),(11,'6004','Augmentin',10,250.00,2500.00,'2026-05-10 16:10:36','Ali'),(12,'6002','Brufen',5,80.00,400.00,'2026-05-10 16:23:46','Ali'),(13,'6003','Disprin',10,30.00,300.00,'2026-05-10 16:23:46','Ali');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-10 17:33:16
