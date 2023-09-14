-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbms
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `ride`
--

DROP TABLE IF EXISTS `ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride` (
  `VEHICLE_PLATE_NO` varchar(20) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `PICKUP_LOCATION` varchar(100) NOT NULL,
  `DROP_LOCATION` varchar(100) NOT NULL,
  KEY `VEHICLE_PLATE_NO` (`VEHICLE_PLATE_NO`),
  CONSTRAINT `ride_ibfk_1` FOREIGN KEY (`VEHICLE_PLATE_NO`) REFERENCES `vehicle` (`VEHICLE_PLATE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride`
--

LOCK TABLES `ride` WRITE;
/*!40000 ALTER TABLE `ride` DISABLE KEYS */;
INSERT INTO `ride` VALUES ('1','2022-09-16','03:19:23','5 Canary Avenue','23859 Swallow Circle'),('2','2022-10-30','08:03:35','09806 Little Fleur Road','3717 Westend Trail'),('3','2022-05-30','05:18:36','3 Merchant Court','8 Oak Valley Court'),('4','2022-06-28','12:02:52','40 Almo Court','13 Kim Terrace'),('5','2023-02-07','08:43:35','311 Sunfield Lane','494 Hauk Parkway'),('6','2022-07-14','16:21:54','93888 Anzinger Hill','77800 Truax Crossing'),('7','2023-01-03','22:25:04','7136 Merry Junction','2984 Buell Way'),('8','2022-08-27','06:32:28','6894 Mandrake Pass','7 John Wall Pass'),('9','2022-03-18','14:59:31','4784 Veith Drive','48207 Esch Point'),('10','2022-05-22','07:56:49','501 Granby Parkway','7 Sutteridge Way'),('11','2022-04-20','08:49:16','81584 Shopko Place','5106 Spohn Junction'),('12','2022-03-02','22:12:47','7095 Mallory Point','30446 Parkside Way'),('13','2022-11-25','10:09:14','7314 Steensland Court','4 Waubesa Junction'),('14','2022-11-23','18:04:29','0160 Forest Street','5609 Haas Junction'),('15','2022-07-09','17:26:00','28279 Sage Circle','97 Meadow Vale Trail'),('16','2022-04-14','18:26:13','78 Monterey Point','8 Maple Way'),('17','2022-06-01','14:13:07','216 Schiller Trail','9 Springs Avenue'),('18','2022-04-22','17:06:56','993 Red Cloud Point','0454 Division Circle'),('19','2022-05-05','17:30:21','68 Grover Crossing','6611 Mayfield Lane'),('20','2022-10-01','16:38:04','6369 Mccormick Plaza','6212 School Terrace'),('21','2022-12-09','12:34:06','591 5th Center','92580 Stang Park'),('22','2022-09-01','06:47:33','8880 Rusk Hill','988 Nelson Street'),('23','2022-06-12','20:54:07','3321 Moulton Circle','721 Parkside Court'),('24','2022-12-29','19:24:17','7 Brickson Park Road','2 Knutson Point'),('25','2022-08-17','08:27:56','8 Homewood Alley','88747 Morrow Pass'),('26','2023-02-09','13:02:11','93 Sloan Park','37 Sloan Place'),('27','2022-03-09','10:25:25','047 Crowley Park','3 Green Center'),('28','2022-03-30','17:14:02','41 Clemons Road','606 Transport Terrace'),('29','2022-08-18','03:35:09','7 Manufacturers Crossing','1 John Wall Street'),('30','2022-07-05','08:00:30','94633 Mockingbird Terrace','6 Westend Place'),('31','2022-07-01','18:44:40','265 Shoshone Pass','42191 Delladonna Pass'),('32','2022-07-28','14:27:31','6 Florence Crossing','2 Riverside Road'),('33','2022-04-07','04:41:05','12915 American Center','15 Dennis Court'),('34','2022-11-21','22:35:27','4 Doe Crossing Way','7 Marquette Avenue'),('35','2022-06-25','09:04:19','714 Birchwood Park','12 Riverside Trail'),('36','2022-09-02','08:27:39','3148 Sutherland Street','45246 Mendota Park'),('37','2022-05-27','13:26:46','5192 Macpherson Park','4741 Hovde Hill'),('38','2022-11-16','12:55:30','1629 Ruskin Terrace','85627 Sachs Court'),('39','2022-08-15','04:42:29','69 Oakridge Terrace','258 Dunning Park'),('40','2022-08-20','08:31:49','000 Vermont Parkway','48 Milwaukee Lane'),('41','2022-02-25','07:15:32','75 Graedel Crossing','805 Pleasure Crossing'),('42','2022-09-20','19:48:21','121 Judy Alley','62321 Mockingbird Junction'),('43','2022-05-09','06:42:15','04 Kim Street','8802 Thompson Point'),('44','2022-04-12','15:10:04','13297 Hoffman Street','55 Kenwood Terrace'),('45','2022-02-14','02:24:03','2 Fordem Terrace','2 Portage Point'),('46','2022-09-07','20:58:24','35 Carberry Way','146 Marquette Junction'),('47','2022-05-26','17:45:43','2817 Surrey Lane','6 Paget Point'),('48','2022-06-16','20:34:26','28491 Fallview Hill','87979 Oxford Trail'),('49','2022-08-18','08:41:16','4 Northfield Street','37675 Duke Court'),('50','2022-11-05','20:54:44','21484 Mallard Place','59947 Spenser Center'),('51','2023-01-10','12:51:46','662 Ridgeway Park','07825 Granby Road'),('52','2022-12-18','14:22:36','1 Shelley Plaza','4143 Hudson Road'),('53','2022-04-22','03:21:48','28 John Wall Place','725 Columbus Point'),('54','2022-12-17','17:41:11','49 Esch Road','35697 Melvin Road'),('55','2022-04-14','16:08:41','55825 Magdeline Crossing','2 Graedel Trail'),('56','2022-05-27','21:46:08','1930 Muir Terrace','34 Northview Court'),('57','2022-12-20','09:09:09','92080 Saint Paul Trail','511 Jackson Parkway'),('58','2022-08-02','23:05:41','6 Ilene Parkway','3587 Sachs Hill'),('59','2022-07-04','22:12:29','40320 Jackson Avenue','5 Eliot Avenue'),('60','2022-07-14','03:51:28','1 Spenser Parkway','5207 School Parkway'),('61','2023-02-02','16:27:33','84337 Declaration Road','7 Tennessee Plaza'),('62','2022-09-30','08:56:37','43304 Warrior Court','77406 Farwell Drive'),('63','2022-03-08','17:05:22','73 Dovetail Road','462 Valley Edge Lane'),('64','2022-05-08','14:04:34','7748 Towne Center','11 Annamark Junction'),('65','2022-07-03','05:00:14','575 Jenna Circle','232 Northland Street'),('66','2022-07-12','06:42:41','1 Helena Alley','6 Kenwood Point'),('67','2022-05-21','09:01:28','0 Jay Place','52 Northland Plaza'),('68','2022-02-27','16:47:31','446 Carioca Lane','798 Randy Avenue'),('69','2022-06-24','10:36:23','3 Carey Drive','5 Cascade Street'),('70','2022-03-28','19:54:51','218 Knutson Park','40031 Northwestern Point'),('71','2022-04-23','04:58:41','459 Corry Street','6 Alpine Road'),('72','2022-03-21','14:39:35','47168 Vernon Terrace','38 Bartillon Alley'),('73','2022-05-12','07:50:43','7106 Mosinee Hill','9 Anderson Circle'),('74','2022-03-28','14:50:30','46968 Walton Terrace','376 International Way'),('75','2022-04-05','12:16:52','724 Thompson Court','0 American Ash Junction'),('76','2022-03-19','22:56:39','58 Lien Road','20 Bobwhite Place'),('77','2023-01-30','20:51:01','66559 Katie Court','4 Katie Junction'),('78','2022-12-24','22:09:02','65 Russell Plaza','01 Division Way'),('79','2022-10-13','19:10:41','5 Orin Road','387 Ludington Way'),('80','2023-01-08','00:51:12','4757 Karstens Pass','9 Kim Avenue'),('81','2022-04-10','15:15:22','36 Judy Street','732 Everett Parkway'),('82','2023-01-03','02:20:01','3 Lakewood Gardens Plaza','12 Everett Park'),('83','2022-09-09','11:15:38','06 Browning Parkway','364 Northwestern Trail'),('84','2022-06-08','06:57:46','013 Kenwood Crossing','140 Iowa Point'),('85','2022-05-23','06:37:46','11 Schmedeman Court','35900 Schlimgen Terrace'),('86','2022-03-08','18:17:58','071 Lakeland Crossing','22435 Anzinger Way'),('87','2022-03-14','11:09:06','13 Hovde Avenue','7 Melvin Terrace'),('88','2022-11-22','02:16:38','507 Randy Alley','1238 Havey Drive'),('89','2022-12-07','14:11:45','344 Larry Avenue','0 Farmco Circle'),('90','2023-01-05','01:05:32','690 Hoffman Drive','23859 Sommers Point'),('91','2022-09-13','15:38:38','09 Oak Street','963 Scofield Lane'),('92','2022-11-17','01:10:46','872 Orin Junction','9944 Emmet Pass'),('93','2022-03-05','07:51:44','3 Hanson Trail','67087 Heffernan Point'),('94','2022-02-20','22:43:53','2 Sachtjen Terrace','8 Erie Plaza'),('95','2022-04-25','13:50:33','41 Golf Course Center','6 Burrows Pass'),('96','2022-10-11','23:05:35','00 Moulton Way','636 Sutherland Hill'),('97','2022-07-22','05:57:01','0302 Bartelt Alley','72 Redwing Junction'),('98','2022-09-17','15:01:39','0 Utah Plaza','3 Mccormick Road'),('99','2022-09-05','18:02:26','46827 Vidon Terrace','3 Kingsford Circle'),('100','2022-02-28','13:39:52','773 Schlimgen Court','345 Pennsylvania Court');
/*!40000 ALTER TABLE `ride` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 20:50:38
