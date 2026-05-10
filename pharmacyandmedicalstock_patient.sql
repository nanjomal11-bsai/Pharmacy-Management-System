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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (4001,'Ali Raza',25,'Karachi'),(4002,'Ahmed Khan',30,'Lahore'),(4003,'Usman Ali',22,'Islamabad'),(4004,'Hassan Raza',28,'Faisalabad'),(4005,'Bilal Ahmed',35,'Rawalpindi'),(4006,'Zain Khan',19,'Multan'),(4007,'Saad Ali',27,'Peshawar'),(4008,'Farhan Raza',33,'Quetta'),(4009,'Imran Khan',40,'Sialkot'),(4010,'Kamran Ali',31,'Hyderabad'),(4011,'Naveed Ahmed',45,'Karachi'),(4012,'Junaid Khan',29,'Lahore'),(4013,'Adnan Raza',26,'Islamabad'),(4014,'Shahbaz Ali',34,'Faisalabad'),(4015,'Adeel Khan',38,'Rawalpindi'),(4016,'Faizan Ahmed',21,'Multan'),(4017,'Rehan Ali',24,'Peshawar'),(4018,'Danish Khan',32,'Quetta'),(4019,'Umer Raza',36,'Sialkot'),(4020,'Hamza Ali',23,'Hyderabad'),(4021,'Arslan Khan',28,'Karachi'),(4022,'Salman Ahmed',41,'Lahore'),(4023,'Ahsan Raza',37,'Islamabad'),(4024,'Babar Ali',33,'Faisalabad'),(4025,'Qasim Khan',27,'Rawalpindi'),(4026,'Rizwan Ahmed',39,'Multan'),(4027,'Zubair Ali',42,'Peshawar'),(4028,'Sajid Khan',35,'Quetta'),(4029,'Nadeem Ahmed',48,'Sialkot'),(4030,'Kashif Ali',29,'Hyderabad'),(4031,'Javed Khan',50,'Karachi'),(4032,'Parvez Ahmed',44,'Lahore'),(4033,'Latif Ali',52,'Islamabad'),(4034,'Shabbir Khan',46,'Faisalabad'),(4035,'Akram Ahmed',55,'Rawalpindi'),(4036,'Bashir Ali',49,'Multan'),(4037,'Rasheed Khan',53,'Peshawar'),(4038,'Iqbal Ahmed',47,'Quetta'),(4039,'Nisar Ali',60,'Sialkot'),(4040,'Anwar Khan',58,'Hyderabad'),(4041,'Shaukat Ahmed',36,'Karachi'),(4042,'Munir Ali',34,'Lahore'),(4043,'Zafar Khan',38,'Islamabad'),(4044,'Younas Ahmed',31,'Faisalabad'),(4045,'Saleem Ali',45,'Rawalpindi'),(4046,'Majid Khan',43,'Multan'),(4047,'Tahir Ahmed',39,'Peshawar'),(4048,'Rauf Ali',41,'Quetta'),(4049,'Shamim Khan',37,'Sialkot'),(4050,'Ashraf Ahmed',33,'Hyderabad'),(4051,'Hanif Ali',28,'Karachi'),(4052,'Sohail Khan',35,'Lahore'),(4053,'Naeem Ahmed',30,'Islamabad'),(4054,'Waheed Ali',27,'Faisalabad'),(4055,'Jamil Khan',32,'Rawalpindi'),(4056,'Khalid Ahmed',40,'Multan'),(4057,'Pervez Ali',45,'Peshawar'),(4058,'Hameed Khan',38,'Quetta'),(4059,'Sharif Ahmed',42,'Sialkot'),(4060,'Rashid Ali',29,'Hyderabad'),(4061,'Zahid Khan',34,'Karachi'),(4062,'Tanveer Ahmed',37,'Lahore'),(4063,'Yaqoob Ali',31,'Islamabad'),(4064,'Nawaz Khan',48,'Faisalabad'),(4065,'Sabir Ahmed',44,'Rawalpindi'),(4066,'Aziz Ali',39,'Multan'),(4067,'Hafeez Khan',36,'Peshawar'),(4068,'Rafiq Ahmed',41,'Quetta'),(4069,'Aslam Ali',33,'Sialkot'),(4070,'Sarfraz Khan',47,'Hyderabad'),(4071,'Iqrar Ahmed',50,'Karachi'),(4072,'Jahangir Ali',52,'Lahore'),(4073,'Basit Khan',26,'Islamabad'),(4074,'Shakir Ahmed',28,'Faisalabad'),(4075,'Haroon Ali',35,'Rawalpindi'),(4076,'Naveed Khan',40,'Multan'),(4077,'Shakeel Ahmed',38,'Peshawar'),(4078,'Faisal Ali',29,'Quetta'),(4079,'Imtiaz Khan',42,'Sialkot'),(4080,'Amin Ahmed',36,'Hyderabad'),(4081,'Qadeer Ali',31,'Karachi'),(4082,'Akhtar Khan',45,'Lahore'),(4083,'Sultan Ahmed',39,'Islamabad'),(4084,'Rameez Ali',27,'Faisalabad'),(4085,'Fahad Khan',25,'Rawalpindi'),(4086,'Sameer Ahmed',34,'Multan'),(4087,'Dawood Ali',41,'Peshawar'),(4088,'Usman Khan',33,'Quetta'),(4089,'Bilal Raza',29,'Sialkot'),(4090,'Hassan Ali',37,'Hyderabad'),(4091,'Ali Khan',24,'Karachi'),(4092,'Ahmed Raza',30,'Lahore'),(4093,'Usman Raza',26,'Islamabad'),(4094,'Hassan Khan',35,'Faisalabad'),(4095,'Bilal Ali',32,'Rawalpindi'),(4096,'Zain Ahmed',21,'Multan'),(4097,'Saad Khan',28,'Peshawar'),(4098,'Farhan Ali',33,'Quetta'),(4099,'Imran Ahmed',45,'Sialkot'),(4100,'Kamran Khan',38,'Hyderabad');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-10 17:33:15
