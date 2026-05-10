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
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicineId` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`medicineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (6001,'Panadol','Painkiller',50,'2027-05-12',21),(6002,'Brufen','Painkiller',80,'2026-11-20',30),(6003,'Disprin','Painkiller',30,'2027-03-15',40),(6004,'Augmentin','Antibiotic',250,'2026-09-10',20),(6005,'Amoxil','Antibiotic',180,'2027-01-25',30),(6006,'Flagyl','Antibiotic',120,'2026-12-18',28),(6007,'Ponstan','Painkiller',90,'2027-06-22',50),(6008,'Arinac','Cold & Flu',150,'2026-10-05',35),(6009,'Actifed','Cold & Flu',140,'2027-02-11',40),(6010,'Calpol','Fever',60,'2027-04-30',60),(6011,'Rigix','Allergy',110,'2026-08-19',45),(6012,'Clarinex','Allergy',200,'2027-07-09',45),(6013,'Ventolin','Asthma',300,'2026-09-28',23),(6014,'Seretide','Asthma',450,'2027-03-03',24),(6015,'Glucophage','Diabetes',220,'2027-01-14',35),(6016,'Amaryl','Diabetes',260,'2026-11-29',35),(6017,'Lipitor','Cholesterol',500,'2027-06-18',30),(6018,'Zocor','Cholesterol',480,'2026-10-12',30),(6019,'Nexium','Acidity',350,'2027-02-20',50),(6020,'Losec','Acidity',330,'2026-12-07',50),(6021,'Motilium','Digestive',170,'2027-05-25',40),(6022,'Imodium','Digestive',140,'2026-09-16',40),(6023,'ORS Sachet','Rehydration',40,'2027-08-01',80),(6024,'Surbex Z','Vitamin',190,'2026-11-11',100),(6025,'One A Day','Vitamin',210,'2027-03-27',100),(6026,'Calcium Sandoz','Supplement',230,'2026-10-30',90),(6027,'Feroglobin','Supplement',260,'2027-04-08',90),(6028,'Neurobion','Vitamin',150,'2026-12-22',100),(6029,'Duphaston','Hormonal',400,'2027-07-15',20),(6030,'Primolut N','Hormonal',350,'2026-09-05',0),(6031,'Xyzal','Allergy',180,'2027-02-28',45),(6032,'Zyrtec','Allergy',160,'2026-11-18',45),(6033,'Septran','Antibiotic',210,'2027-01-09',30),(6034,'Ciproxin','Antibiotic',270,'2026-08-25',30),(6035,'Risek','Acidity',320,'2027-05-02',50),(6036,'Gaviscon','Acidity',290,'2026-12-14',50),(6037,'Benylin','Cough',130,'2027-03-19',40),(6038,'Corex','Cough',120,'2026-10-07',40),(6039,'Sancos','Cough',140,'2027-06-11',40),(6040,'Phenergan','Allergy',100,'2026-09-21',45),(6041,'Flagentyl','Antibiotic',150,'2027-04-17',30),(6042,'Myonal','Muscle Relaxant',280,'2026-11-03',25),(6043,'Voltral','Painkiller',200,'2027-01-30',50),(6044,'Ansaid','Painkiller',190,'2026-10-26',50),(6045,'Ketorol','Painkiller',170,'2027-07-06',50),(6046,'Sitagliptin','Diabetes',600,'2026-12-09',35),(6047,'Insulin Actrapid','Diabetes',900,'2027-03-12',35),(6048,'Telmisartan','Blood Pressure',550,'2026-08-14',30),(6049,'Amlodipine','Blood Pressure',300,'2027-02-23',30),(6050,'Losartan','Blood Pressure',320,'2026-11-27',30),(6051,'Panadol Extra','Painkiller',55,'2027-05-18',50),(6052,'Brufen Forte','Painkiller',95,'2026-12-02',50),(6053,'Flagyl DS','Antibiotic',130,'2027-01-18',30),(6054,'Amoxil DS','Antibiotic',200,'2026-10-11',30),(6055,'Augmentin Duo','Antibiotic',280,'2027-06-09',30),(6056,'Arinac Forte','Cold & Flu',160,'2026-09-22',40),(6057,'Actifed Plus','Cold & Flu',145,'2027-03-08',40),(6058,'Calpol DS','Fever',70,'2026-11-17',60),(6059,'Panadol Syrup','Fever',65,'2027-04-06',60),(6060,'Rigix Plus','Allergy',120,'2026-08-28',45),(6061,'Zyrtec Plus','Allergy',170,'2027-02-14',45),(6062,'Ventolin Inhaler','Asthma',320,'2026-12-25',25),(6063,'Seretide Evohaler','Asthma',480,'2027-05-30',25),(6064,'Glucophage XR','Diabetes',240,'2026-10-19',35),(6065,'Amaryl M','Diabetes',270,'2027-07-12',35),(6066,'Lipitor Forte','Cholesterol',520,'2026-11-06',30),(6067,'Zocor Plus','Cholesterol',500,'2027-03-21',30),(6068,'Nexium 40mg','Acidity',360,'2026-09-13',50),(6069,'Losec Mups','Acidity',340,'2027-06-01',50),(6070,'Gaviscon Advance','Acidity',300,'2026-12-30',50),(6071,'Motilium DS','Digestive',180,'2027-01-27',40),(6072,'Imodium Plus','Digestive',150,'2026-10-04',40),(6073,'ORS Lemon','Rehydration',45,'2027-08-15',80),(6074,'Surbex Gold','Vitamin',200,'2026-09-09',100),(6075,'One A Day Max','Vitamin',220,'2027-04-20',100),(6076,'Calcium Forte','Supplement',240,'2026-11-23',90),(6077,'Feroglobin Plus','Supplement',270,'2027-05-14',90),(6078,'Neurobion Forte','Vitamin',160,'2026-12-11',100),(6079,'Duphaston 10mg','Hormonal',420,'2027-03-29',20),(6080,'Primolut Forte','Hormonal',370,'2026-10-01',20),(6081,'Xyzal 5mg','Allergy',190,'2027-06-17',45),(6082,'Septran DS','Antibiotic',220,'2026-09-27',30),(6083,'Ciproxin 500','Antibiotic',290,'2027-02-05',30),(6084,'Risek 20mg','Acidity',330,'2026-12-19',50),(6085,'Benylin Dry Cough','Cough',135,'2027-05-11',40),(6086,'Corex DX','Cough',125,'2026-11-08',40),(6087,'Sancos Syrup','Cough',145,'2027-03-16',40),(6088,'Phenergan Syrup','Allergy',105,'2026-10-29',45),(6089,'Myonal 50mg','Muscle Relaxant',290,'2027-07-08',25),(6090,'Voltral SR','Painkiller',210,'2026-09-18',50),(6091,'Ansaid 100mg','Painkiller',200,'2027-01-21',50),(6092,'Ketorol DT','Painkiller',180,'2026-12-05',50),(6093,'Sitagliptin 50mg','Diabetes',620,'2027-04-13',35),(6094,'Insulin Mix','Diabetes',950,'2026-11-15',35),(6095,'Telmisartan 40mg','Blood Pressure',570,'2027-06-26',30),(6096,'Amlodipine 10mg','Blood Pressure',310,'2026-10-22',30),(6097,'Losartan Potassium','Blood Pressure',330,'2027-02-17',30),(6098,'Flagyl Suspension','Antibiotic',140,'2026-09-06',30),(6099,'Amoxil Suspension','Antibiotic',210,'2027-05-27',30),(6100,'Augmentin Suspension','Antibiotic',290,'2026-12-08',30);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
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
