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
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `pharmacy_id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `area` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pharmacy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (3001,'Sehat Pharmacy','Gulshan','Karachi'),(3002,'HealthCare Pharmacy','Defence','Karachi'),(3003,'LifeCare Pharmacy','Clifton','Karachi'),(3004,'Medico Pharmacy','Nazimabad','Karachi'),(3005,'City Pharmacy','Saddar','Karachi'),(3006,'Wellness Pharmacy','Johar Town','Lahore'),(3007,'Cure Pharmacy','Model Town','Lahore'),(3008,'Green Pharmacy','DHA','Lahore'),(3009,'Trust Pharmacy','Gulberg','Lahore'),(3010,'SafeMed Pharmacy','Wapda Town','Lahore'),(3011,'Sehat Plus','Blue Area','Islamabad'),(3012,'Prime Pharmacy','F-10','Islamabad'),(3013,'Capital Pharmacy','G-11','Islamabad'),(3014,'Care Pharmacy','I-8','Islamabad'),(3015,'Health Hub','Bahria Town','Islamabad'),(3016,'Al Shifa Pharmacy','Satellite Town','Rawalpindi'),(3017,'Medicenter','Chaklala','Rawalpindi'),(3018,'LifeLine Pharmacy','Commercial Market','Rawalpindi'),(3019,'Cure Point','Scheme 3','Rawalpindi'),(3020,'WellCare Pharmacy','Adyala Road','Rawalpindi'),(3021,'Sehat Medical','Peoples Colony','Faisalabad'),(3022,'City Medicos','D Ground','Faisalabad'),(3023,'Health First','Madina Town','Faisalabad'),(3024,'Medix Pharmacy','Jaranwala Road','Faisalabad'),(3025,'WellMed Pharmacy','Satiana Road','Faisalabad'),(3026,'Al Rehman Pharmacy','Cantt','Multan'),(3027,'City Cure','Gulgasht','Multan'),(3028,'Life Aid Pharmacy','Shah Rukn-e-Alam','Multan'),(3029,'Sehat Zone','Boson Road','Multan'),(3030,'Care Plus','New Multan','Multan'),(3031,'Peshawar Pharmacy','University Town','Peshawar'),(3032,'Health Line','Hayatabad','Peshawar'),(3033,'Cure Care','Saddar','Peshawar'),(3034,'Medico Plus','Ring Road','Peshawar'),(3035,'Sehat Point','Charsadda Road','Peshawar'),(3036,'Quetta Pharmacy','Jinnah Road','Quetta'),(3037,'Care Pharmacy','Satellite Town','Quetta'),(3038,'Medico Hub','Samungli Road','Quetta'),(3039,'Health Zone','Airport Road','Quetta'),(3040,'LifeCare','Zarghoon Road','Quetta'),(3041,'Hyderabad Pharmacy','Latifabad','Hyderabad'),(3042,'Sehat Medicos','Qasimabad','Hyderabad'),(3043,'Cure Pharmacy','Auto Bhan','Hyderabad'),(3044,'WellCare','Station Road','Hyderabad'),(3045,'LifeLine','Market Area','Hyderabad'),(3046,'Sialkot Pharmacy','Cantt','Sialkot'),(3047,'City Health','Daska Road','Sialkot'),(3048,'Medico Care','Kashmir Road','Sialkot'),(3049,'Sehat Hub','Model Town','Sialkot'),(3050,'WellMed','Ugoki','Sialkot'),(3051,'Gujranwala Pharmacy','Satellite Town','Gujranwala'),(3052,'Care Point','DC Colony','Gujranwala'),(3053,'Medico Plus','Peoples Colony','Gujranwala'),(3054,'Health First','GT Road','Gujranwala'),(3055,'LifeCare','Model Town','Gujranwala'),(3056,'Abbottabad Pharmacy','Mandian','Abbottabad'),(3057,'Sehat Care','Supply','Abbottabad'),(3058,'Cure Pharmacy','Jinnahabad','Abbottabad'),(3059,'WellMed','Kakul Road','Abbottabad'),(3060,'LifeLine','Mansehra Road','Abbottabad'),(3061,'Bahawalpur Pharmacy','Satellite Town','Bahawalpur'),(3062,'Care Hub','Model Town','Bahawalpur'),(3063,'Medico Center','Circular Road','Bahawalpur'),(3064,'Health Zone','Yazman Road','Bahawalpur'),(3065,'LifeCare','Cantt','Bahawalpur'),(3066,'Sargodha Pharmacy','Satellite Town','Sargodha'),(3067,'Sehat Plus','University Road','Sargodha'),(3068,'Care Pharmacy','Club Road','Sargodha'),(3069,'Medico Care','Katchery Road','Sargodha'),(3070,'WellCare','Block X','Sargodha'),(3071,'Mirpur Pharmacy','Sector F','Mirpur'),(3072,'Health Care','Sector C','Mirpur'),(3073,'Medico Plus','Allama Iqbal Road','Mirpur'),(3074,'Care Point','Sector D','Mirpur'),(3075,'LifeLine','Main Bazar','Mirpur'),(3076,'Swat Pharmacy','Mingora','Swat'),(3077,'Sehat Center','Saidu Sharif','Swat'),(3078,'Care Pharmacy','Green Chowk','Swat'),(3079,'Medico Hub','Fiza Ghat','Swat'),(3080,'LifeCare','Kabal','Swat'),(3081,'Larkana Pharmacy','Station Road','Larkana'),(3082,'Health First','Resham Gali','Larkana'),(3083,'Medico Care','VIP Road','Larkana'),(3084,'Care Pharmacy','Shahi Bazar','Larkana'),(3085,'WellMed','Market Area','Larkana'),(3086,'Sukkur Pharmacy','Military Road','Sukkur'),(3087,'Sehat Hub','Shikarpur Road','Sukkur'),(3088,'Care Center','Clock Tower','Sukkur'),(3089,'Medico Plus','Barrage Road','Sukkur'),(3090,'LifeLine','Station Road','Sukkur'),(3091,'Gwadar Pharmacy','Marine Drive','Gwadar'),(3092,'Health Care','Airport Road','Gwadar'),(3093,'Medico Center','Fish Harbour','Gwadar'),(3094,'Care Point','New Town','Gwadar'),(3095,'LifeCare','Gwadar Port','Gwadar'),(3096,'Rahim Yar Khan Pharmacy','Model Town','Rahim Yar Khan'),(3097,'Sehat Care','Airport Road','Rahim Yar Khan'),(3098,'Medico Hub','City Center','Rahim Yar Khan'),(3099,'Care Pharmacy','Hospital Road','Rahim Yar Khan'),(3100,'LifeLine','Circular Road','Rahim Yar Khan');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
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
