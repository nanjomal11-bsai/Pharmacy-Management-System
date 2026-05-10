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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierId` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1001,'Ali Traders','Karachi','03001234567'),(1002,'Ahmed Medical Store','Lahore','03111234567'),(1003,'Khan Pharma','Islamabad','03211234567'),(1004,'Usman Distributors','Faisalabad','03331234567'),(1005,'Hassan Suppliers','Rawalpindi','03451234567'),(1006,'Bilal & Sons','Multan','03021234567'),(1007,'Zain Medicos','Peshawar','03121234567'),(1008,'Farooq Traders','Quetta','03221234567'),(1009,'Raza Pharma','Sialkot','03321234567'),(1010,'Imran Medical','Hyderabad','03421234567'),(1011,'Shahid Distributors','Karachi','03031234567'),(1012,'Naveed Pharma','Lahore','03131234567'),(1013,'Junaid Medicos','Islamabad','03231234567'),(1014,'Saad Traders','Faisalabad','03341234567'),(1015,'Tariq Medical Store','Rawalpindi','03461234567'),(1016,'Waqas Pharma','Multan','03041234567'),(1017,'Asif & Co','Peshawar','03141234567'),(1018,'Yasir Distributors','Quetta','03241234567'),(1019,'Mudassir Traders','Sialkot','03351234567'),(1020,'Kamran Medicos','Hyderabad','03431234567'),(1021,'Irfan Pharma','Karachi','03051234567'),(1022,'Noman Traders','Lahore','03151234567'),(1023,'Adnan Medical','Islamabad','03251234567'),(1024,'Shahbaz Distributors','Faisalabad','03361234567'),(1025,'Adeel Pharma','Rawalpindi','03471234567'),(1026,'Faizan Medicos','Multan','03061234567'),(1027,'Rehan Traders','Peshawar','03161234567'),(1028,'Danish Pharma','Quetta','03261234567'),(1029,'Umer Medical','Sialkot','03371234567'),(1030,'Hamza Distributors','Hyderabad','03441234567'),(1031,'Arslan Traders','Karachi','03071234567'),(1032,'Salman Pharma','Lahore','03171234567'),(1033,'Ahsan Medical','Islamabad','03271234567'),(1034,'Babar Distributors','Faisalabad','03381234567'),(1035,'Qasim Pharma','Rawalpindi','03481234567'),(1036,'Rizwan Medicos','Multan','03081234567'),(1037,'Zubair Traders','Peshawar','03181234567'),(1038,'Sajid Pharma','Quetta','03281234567'),(1039,'Nadeem Medical','Sialkot','03391234567'),(1040,'Kashif Distributors','Hyderabad','03451234568'),(1041,'Javed Traders','Karachi','03091234567'),(1042,'Parvez Pharma','Lahore','03191234567'),(1043,'Latif Medical','Islamabad','03291234567'),(1044,'Shabbir Distributors','Faisalabad','03301234567'),(1045,'Ghulam Pharma','Rawalpindi','03491234567'),(1046,'Akram Medicos','Multan','03002234567'),(1047,'Bashir Traders','Peshawar','03102234567'),(1048,'Rasheed Pharma','Quetta','03202234567'),(1049,'Iqbal Medical','Sialkot','03302234567'),(1050,'Nisar Distributors','Hyderabad','03402234567'),(1051,'Anwar Traders','Karachi','03012234567'),(1052,'Shaukat Pharma','Lahore','03112234567'),(1053,'Munir Medical','Islamabad','03212234567'),(1054,'Zafar Distributors','Faisalabad','03312234567'),(1055,'Younas Pharma','Rawalpindi','03412234567'),(1056,'Saleem Medicos','Multan','03022234567'),(1057,'Majid Traders','Peshawar','03122234567'),(1058,'Tahir Pharma','Quetta','03222234567'),(1059,'Rauf Medical','Sialkot','03322234567'),(1060,'Shamim Distributors','Hyderabad','03422234567'),(1061,'Ashraf Traders','Karachi','03032234567'),(1062,'Hanif Pharma','Lahore','03132234567'),(1063,'Sohail Medical','Islamabad','03232234567'),(1064,'Naeem Distributors','Faisalabad','03332234567'),(1065,'Waheed Pharma','Rawalpindi','03432234567'),(1066,'Jamil Medicos','Multan','03042234567'),(1067,'Khalid Traders','Peshawar','03142234567'),(1068,'Pervez Pharma','Quetta','03242234567'),(1069,'Hameed Medical','Sialkot','03342234567'),(1070,'Sharif Distributors','Hyderabad','03442234567'),(1071,'Rashid Traders','Karachi','03052234567'),(1072,'Naeem Pharma','Lahore','03152234567'),(1073,'Zahid Medical','Islamabad','03252234567'),(1074,'Sikandar Distributors','Faisalabad','03352234567'),(1075,'Tanveer Pharma','Rawalpindi','03452234567'),(1076,'Yaqoob Medicos','Multan','03062234567'),(1077,'Nawaz Traders','Peshawar','03162234567'),(1078,'Sabir Pharma','Quetta','03262234567'),(1079,'Aziz Medical','Sialkot','03362234567'),(1080,'Hafeez Distributors','Hyderabad','03462234567'),(1081,'Rafiq Traders','Karachi','03072234567'),(1082,'Aslam Pharma','Lahore','03172234567'),(1083,'Sarfraz Medical','Islamabad','03272234567'),(1084,'Iqrar Distributors','Faisalabad','03372234567'),(1085,'Jahangir Pharma','Rawalpindi','03472234567'),(1086,'Basit Medicos','Multan','03082234567'),(1087,'Shakir Traders','Peshawar','03182234567'),(1088,'Haroon Pharma','Quetta','03282234567'),(1089,'Naveed Medical','Sialkot','03382234567'),(1090,'Shakeel Distributors','Hyderabad','03482234567'),(1091,'Faisal Traders','Karachi','03092234567'),(1092,'Imtiaz Pharma','Lahore','03192234567'),(1093,'Amin Medical','Islamabad','03292234567'),(1094,'Qadeer Distributors','Faisalabad','03392234567'),(1095,'Akhtar Pharma','Rawalpindi','03492234567'),(1096,'Sultan Medicos','Multan','03013234567'),(1097,'Rameez Traders','Peshawar','03113234567'),(1098,'Fahad Pharma','Quetta','03213234567'),(1099,'Sameer Medical','Sialkot','03313234567'),(1100,'Dawood Distributors','Hyderabad','03413234567'),(1101,'Nanjo Tradder','Mithi','0343-0355404');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
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
