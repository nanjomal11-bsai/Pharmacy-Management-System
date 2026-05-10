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
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescription_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `medicine_id` int DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `prescribed_date` date DEFAULT NULL,
  `fulfilled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `patient_id` (`patient_id`),
  KEY `medicine_id` (`medicine_id`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (5001,4001,6001,'Dr. Ahmed Khan','2026-01-10',1),(5002,4002,6002,'Dr. Ali Raza','2026-01-12',0),(5003,4003,6003,'Dr. Usman Ali','2026-01-15',1),(5004,4004,6004,'Dr. Hassan Shah','2026-01-18',1),(5005,4005,6005,'Dr. Bilal Ahmed','2026-01-20',0),(5006,4006,6006,'Dr. Zain Malik','2026-01-22',1),(5007,4007,6007,'Dr. Saad Khan','2026-01-25',1),(5008,4008,6008,'Dr. Farhan Ali','2026-01-28',0),(5009,4009,6009,'Dr. Imran Raza','2026-02-01',1),(5010,4010,6010,'Dr. Kamran Shah','2026-02-03',1),(5011,4011,6011,'Dr. Naveed Khan','2026-02-05',0),(5012,4012,6012,'Dr. Junaid Ali','2026-02-07',1),(5013,4013,6013,'Dr. Adnan Malik','2026-02-09',1),(5014,4014,6014,'Dr. Shahbaz Ahmed','2026-02-12',0),(5015,4015,6015,'Dr. Adeel Khan','2026-02-15',1),(5016,4016,6016,'Dr. Faizan Raza','2026-02-18',1),(5017,4017,6017,'Dr. Rehan Ali','2026-02-20',0),(5018,4018,6018,'Dr. Danish Khan','2026-02-22',1),(5019,4019,6019,'Dr. Umer Shah','2026-02-25',1),(5020,4020,6020,'Dr. Hamza Ali','2026-02-28',0),(5021,4021,6021,'Dr. Arslan Khan','2026-03-02',1),(5022,4022,6022,'Dr. Salman Ahmed','2026-03-05',1),(5023,4023,6023,'Dr. Ahsan Raza','2026-03-07',0),(5024,4024,6024,'Dr. Babar Ali','2026-03-10',1),(5025,4025,6025,'Dr. Qasim Khan','2026-03-12',1),(5026,4026,6026,'Dr. Rizwan Ahmed','2026-03-15',0),(5027,4027,6027,'Dr. Zubair Ali','2026-03-18',1),(5028,4028,6028,'Dr. Sajid Khan','2026-03-20',1),(5029,4029,6029,'Dr. Nadeem Shah','2026-03-22',0),(5030,4030,6030,'Dr. Kashif Ali','2026-03-25',1),(5031,4031,6031,'Dr. Javed Khan','2026-03-28',1),(5032,4032,6032,'Dr. Parvez Ahmed','2026-03-30',0),(5033,4033,6033,'Dr. Latif Ali','2026-04-02',1),(5034,4034,6034,'Dr. Shabbir Khan','2026-04-05',1),(5035,4035,6035,'Dr. Akram Ahmed','2026-04-08',0),(5036,4036,6036,'Dr. Bashir Ali','2026-04-10',1),(5037,4037,6037,'Dr. Rasheed Khan','2026-04-12',1),(5038,4038,6038,'Dr. Iqbal Ahmed','2026-04-15',0),(5039,4039,6039,'Dr. Nisar Ali','2026-04-18',1),(5040,4040,6040,'Dr. Anwar Khan','2026-04-20',1),(5041,4041,6041,'Dr. Shaukat Ahmed','2026-04-22',0),(5042,4042,6042,'Dr. Munir Ali','2026-04-25',1),(5043,4043,6043,'Dr. Zafar Khan','2026-04-28',1),(5044,4044,6044,'Dr. Younas Ahmed','2026-05-01',0),(5045,4045,6045,'Dr. Saleem Ali','2026-05-03',1),(5046,4046,6046,'Dr. Majid Khan','2026-05-05',1),(5047,4047,6047,'Dr. Tahir Ahmed','2026-05-08',0),(5048,4048,6048,'Dr. Rauf Ali','2026-05-10',1),(5049,4049,6049,'Dr. Shamim Khan','2026-05-12',1),(5050,4050,6050,'Dr. Ashraf Ahmed','2026-05-15',0),(5051,4051,6051,'Dr. Hanif Ali','2026-05-18',1),(5052,4052,6052,'Dr. Sohail Khan','2026-05-20',1),(5053,4053,6053,'Dr. Naeem Ahmed','2026-05-22',0),(5054,4054,6054,'Dr. Waheed Ali','2026-05-25',1),(5055,4055,6055,'Dr. Jamil Khan','2026-05-27',1),(5056,4056,6056,'Dr. Khalid Ahmed','2026-05-30',0),(5057,4057,6057,'Dr. Pervez Ali','2026-06-02',1),(5058,4058,6058,'Dr. Hameed Khan','2026-06-05',1),(5059,4059,6059,'Dr. Sharif Ahmed','2026-06-08',0),(5060,4060,6060,'Dr. Rashid Ali','2026-06-10',1),(5061,4061,6061,'Dr. Zahid Khan','2026-06-12',1),(5062,4062,6062,'Dr. Tanveer Ahmed','2026-06-15',0),(5063,4063,6063,'Dr. Yaqoob Ali','2026-06-18',1),(5064,4064,6064,'Dr. Nawaz Khan','2026-06-20',1),(5065,4065,6065,'Dr. Sabir Ahmed','2026-06-22',0),(5066,4066,6066,'Dr. Aziz Ali','2026-06-25',1),(5067,4067,6067,'Dr. Hafeez Khan','2026-06-28',1),(5068,4068,6068,'Dr. Rafiq Ahmed','2026-07-01',0),(5069,4069,6069,'Dr. Aslam Ali','2026-07-03',1),(5070,4070,6070,'Dr. Sarfraz Khan','2026-07-05',1);
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
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
