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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `VEHICLE_PLATE_NO` varchar(20) NOT NULL,
  `MODEL` varchar(50) NOT NULL,
  `COMPANY` varchar(30) NOT NULL,
  `VEHICLE_TYPE` varchar(30) NOT NULL,
  `YEAR_OF_MANUFACTURE` int NOT NULL,
  PRIMARY KEY (`VEHICLE_PLATE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('1','Cooper','MINI','Sedan',2002),('10','Chariot','Mitsubishi','SUV',1991),('100','Envoy','GMC','SUV',1999),('11','Tahoe','Chevrolet','Hatchback',2002),('12','Viper RT/10','Dodge','Hatchback',1995),('13','Montana','Pontiac','Hatchback',2005),('14','9000','Saab','Sedan',1995),('15','Sephia','Kia','Hatchback',2001),('16','Eldorado','Cadillac','Sedan',1998),('17','Navajo','Mazda','SUV',1992),('18','S60','Volvo','Sedan',2003),('19','Baja','Subaru','Sedan',2006),('2','LS','Lexus','Hatchback',1991),('20','Civic','Honda','Hatchback',2004),('21','Charger','Dodge','SUV',2010),('22','Tacoma','Toyota','SUV',2005),('23','Town & Country','Chrysler','Hatchback',1993),('24','Passport','Honda','Hatchback',2000),('25','Silverado 1500','Chevrolet','SUV',2011),('26','Topaz','Mercury','Hatchback',1986),('27','CR-V','Honda','Sedan',2002),('28','Z4','BMW','Sedan',2008),('29','Skyhawk','Buick','Sedan',1987),('3','CTS','Cadillac','Hatchback',2010),('30','Blazer','Chevrolet','Sedan',1995),('31','Wrangler','Jeep','Sedan',2000),('32','Z8','BMW','Hatchback',2000),('33','NSX','Acura','Sedan',1999),('34','GL-Class','Mercedes-Benz','Sedan',2012),('35','Monte Carlo','Chevrolet','Hatchback',2001),('36','Z4','BMW','Sedan',2011),('37','599 GTB Fiorano','Ferrari','Hatchback',2009),('38','Avalon','Toyota','Hatchback',2001),('39','Cabriolet','Audi','SUV',1996),('4','MKZ','Lincoln','Sedan',2007),('40','Sportvan G10','Chevrolet','Sedan',1992),('41','Cooper Countryman','MINI','Hatchback',2012),('42','Q7','Audi','SUV',2007),('43','T100 Xtra','Toyota','SUV',1995),('44','Crown Victoria','Ford','Sedan',2009),('45','Chariot','Mitsubishi','Sedan',1991),('46','Leone','Subaru','SUV',1985),('47','2500','GMC','Hatchback',1998),('48','Versa','Nissan','Hatchback',2007),('49','Monte Carlo','Chevrolet','Sedan',1998),('5','Tribeca','Subaru','Sedan',2009),('50','Integra','Acura','Hatchback',2000),('51','Range Rover','Land Rover','SUV',1997),('52','LeSabre','Buick','Hatchback',1996),('53','458 Italia','Ferrari','SUV',2011),('54','Mark LT','Lincoln','SUV',2007),('55','XJ','Jaguar','Hatchback',2006),('56','Corvette','Chevrolet','Hatchback',2002),('57','Explorer','Ford','SUV',2005),('58','LX','Lexus','Sedan',2001),('59','G-Series G30','Chevrolet','Hatchback',1993),('6','FX','Infiniti','Sedan',2004),('60','QX','Infiniti','SUV',2005),('61','SSR','Chevrolet','Sedan',2003),('62','Lumina','Chevrolet','Sedan',1992),('63','Diamante','Mitsubishi','Hatchback',1996),('64','Tredia','Mitsubishi','SUV',1988),('65','Jimmy','GMC','SUV',1994),('66','IS','Lexus','Sedan',2001),('67','Intrepid','Dodge','SUV',1994),('68','CTS','Cadillac','Hatchback',2011),('69','Cabriolet','Volkswagen','Hatchback',1989),('7','Dakota Club','Dodge','Sedan',1993),('70','Rio','Kia','Hatchback',2011),('71','Freelander','Land Rover','Hatchback',2008),('72','200SX','Nissan','Hatchback',1995),('73','Seville','Cadillac','SUV',2001),('74','Durango','Dodge','SUV',2011),('75','V40','Volvo','Sedan',2002),('76','E-Series','Ford','Hatchback',2009),('77','5000S','Audi','SUV',1988),('78','Corolla','Toyota','Hatchback',1996),('79','Sierra 3500','GMC','Hatchback',2004),('8','Camry','Toyota','Sedan',1994),('80','F250','Ford','Sedan',2010),('81','Crosstour','Honda','SUV',2012),('82','3500','Chevrolet','Sedan',1996),('83','Maxima','Nissan','SUV',2005),('84','E-Class','Mercedes-Benz','Hatchback',1988),('85','S-Class','Mercedes-Benz','Sedan',2009),('86','LTD','Ford','Sedan',1986),('87','Escalade EXT','Cadillac','SUV',2007),('88','xB','Scion','Sedan',2005),('89','B-Series','Mazda','Sedan',1995),('9','Impala','Chevrolet','Sedan',2002),('90','Escalade ESV','Cadillac','Hatchback',2005),('91','MDX','Acura','Sedan',2006),('92','Accord','Honda','Hatchback',1995),('93','Chariot','Mitsubishi','Sedan',1985),('94','Swift','Suzuki','Sedan',2004),('95','1500','GMC','SUV',1994),('96','Grand Marquis','Mercury','Sedan',2001),('97','Town & Country','Chrysler','Sedan',1992),('98','VehiCROSS','Isuzu','Hatchback',2001),('99','GTI','Volkswagen','Hatchback',1992);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 20:50:37
