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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `VEHICLE_PLATE_NO` varchar(20) NOT NULL,
  `EMAIL_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `PHONE_NO` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `MIDDLE_NAME` varchar(30) DEFAULT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  UNIQUE KEY `VEHICLE_PLATE_NO` (`VEHICLE_PLATE_NO`),
  UNIQUE KEY `EMAIL_ID` (`EMAIL_ID`),
  UNIQUE KEY `PHONE_NO` (`PHONE_NO`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`VEHICLE_PLATE_NO`) REFERENCES `vehicle` (`VEHICLE_PLATE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('1','kbruna0@ustream.tv','vweNGz','+420 419 528 8415','Kathe','Fitchet','Bruna'),('10','wsprionghall9@51.la','LS5G4NWE3','+86 878 625 6933','Witty','Corish','Sprionghall'),('100','mpaynton2r@sourceforge.net','iqhKH7qgSnu','+7 449 729 0758','Mar','Edgars','Paynton'),('11','dtarriera@wikia.com','NXYN3I009d','+86 703 167 7426','Dana','De Zuani','Tarrier'),('12','rcecelyb@state.tx.us','EfqDSZkZKJ','+1 154 606 7551','Rawley','Bigadike','Cecely'),('13','ebootherc@upenn.edu','FzaCNLl','+62 948 553 8203','Elka','Primarolo','Boother'),('14','mclived@hhs.gov','3PMeoiyZ','+53 296 680 6089','Maddalena','Wenman','Clive'),('15','pkalberere@accuweather.com','W5DiQAK','+63 924 352 7055','Pablo','Bartalini','Kalberer'),('16','lionnf@blog.com','BIfCny1JtM4','+63 402 326 4133','Lock','Bools','Ionn'),('17','dselbieg@pagesperso-orange.fr','GMqfmU6L','+46 842 803 6057','Darin','Mateu','Selbie'),('18','mharrowsmithh@gizmodo.com','vhqaq2evCi','+86 833 478 9879','Milena','Brumbye','Harrowsmith'),('19','ffilippozzii@nyu.edu','GCgLjHp8ZwO','+86 580 998 4536','Freida','Bulfit','Filippozzi'),('2','kpetroff1@theguardian.com','EfK5nJ3','+33 776 373 2620','Kristos','Raggett','Petroff'),('20','agudgej@surveymonkey.com','aZm77m','+1 909 158 9857','Axe','Uren','Gudge'),('21','dcanfieldk@dmoz.org','uwmGFJn','+30 778 126 9949','Diane-marie','Frenzl','Canfield'),('22','dpyffel@bluehost.com','cSiOGdX','+53 434 948 8293','Dinah','Raine','Pyffe'),('23','jdavidovem@tuttocitta.it','gJMhKaLAQ0mU','+62 647 543 8992','Jerrilyn','Woolen','Davidove'),('24','dmarlonn@cam.ac.uk','kZiOwFBuL','+86 257 221 8760','Dolf','Kuhle','Marlon'),('25','cgethino@gmpg.org','hRocin','+30 569 897 9905','Corabel','Brickstock','Gethin'),('26','ttrevenap@imdb.com','WllIJALgHfmy','+86 354 872 0555','Teddy','Dadley','Trevena'),('27','cmurgatroydq@a8.net','kfjJbAZpk','+91 412 200 1632','Caitrin','Kettridge','Murgatroyd'),('28','cmeenehanr@adobe.com','W3DuJLM5','+46 180 564 5033','Colleen','Dofty','Meenehan'),('29','ikeepins@arstechnica.com','0vxTeutA','+351 962 618 6259','Irv','Giraudat','Keepin'),('3','jlabbati2@latimes.com','m09FFI2c','+54 267 526 9881','Jacklin','Highway','Labbati'),('30','mflaubertt@joomla.org','Txpq6A481W','+55 465 489 5853','Meggie','Stocken','Flaubert'),('31','msybryu@msu.edu','Ab6fY2wQMy','+370 778 723 7687','Maribelle','Gorey','Sybry'),('32','swinnettv@java.com','BSuaoAR5V','+33 199 675 0654','Scot','Hardbattle','Winnett'),('33','dtrengrousew@mit.edu','fJR6i2R7i','+46 127 553 6631','Dani','Sellen','Trengrouse'),('34','tstclairx@twitpic.com','cPpwbbFFN','+30 695 106 8110','Thaddus','Pridie','St. Clair'),('35','bedwiny@youtube.com','na3ldbcL','+63 886 938 4332','Bordy','Brunton','Edwin'),('36','zcullonz@senate.gov','qStbd3','+55 562 773 3953','Zora','Walkden','Cullon'),('37','evenning10@irs.gov','kr76wk','+84 343 658 4965','Ewell','Dugan','Venning'),('38','ethemann11@github.io','dHrwuZpAX','+966 349 865 5540','Emanuel','Chesher','Themann'),('39','lrichmond12@google.de','VZ6vhjE','+967 512 833 8963','Linc','Garthside','Richmond'),('4','dbircher3@bandcamp.com','GYy4Y9DZ','+995 105 403 8143','Devan','Sauniere','Bircher'),('40','aellams13@msn.com','pNYtSO','+51 953 763 4438','Arlyn','Roon','Ellams'),('41','elinstead14@vk.com','EPnEggWSPa','+27 929 265 8620','Erskine','Bertome','Linstead'),('42','wswindin15@wunderground.com','vN9DRdG','+351 554 260 4639','Willa','Begg','Swindin'),('43','atellenbach16@mediafire.com','xvaY3jegeUWQ','+27 720 764 2420','Anstice','Vitte','Tellenbach'),('44','rfalconar17@usda.gov','3cxlKiUTHZV','+62 372 674 9759','Reider','Kmicicki','Falconar'),('45','hthomel18@surveymonkey.com','vFeNhR4m1jmc','+51 497 471 2243','Hyacinth','Yitzhakov','Thomel'),('46','nlukasik19@google.com.hk','H4F6g9','+63 239 617 3153','Noe','Peacock','Lukasik'),('47','mdunbar1a@free.fr','5eZvL9','+86 330 943 6660','Matias','Morrison','Dunbar'),('48','tfoyston1b@mysql.com','nRwPuWGHL2Jx','+86 519 744 9563','Tracy','Champain','Foyston'),('49','bheiton1c@barnesandnoble.com','naC62SOwZl','+351 644 455 6428','Blondelle','Bleasdille','Heiton'),('5','travenshaw4@bloomberg.com','AU4usM','+54 411 742 7827','Tandy','Baglan','Ravenshaw'),('50','pwhitten1d@wordpress.org','Ynm701','+57 311 468 9448','Phillip','Asey','Whitten'),('51','kbrocklesby1e@engadget.com','dZUNE4a1M','+994 109 805 7801','Karry','Dobbie','Brocklesby'),('52','wbowerman1f@washington.edu','6TIKXeq','+872 204 721 0017','Wylma','Robben','Bowerman'),('53','astronach1g@nsw.gov.au','BG9sdCGr','+57 397 705 3004','Aloysia','Milverton','Stronach'),('54','cetheredge1h@multiply.com','3rOFOcs','+81 969 958 1614','Cristin','Potebury','Etheredge'),('55','ocrother1i@pagesperso-orange.fr','RQxPqQCiuN8j','+351 304 805 8901','Orelie','Plumridege','Crother'),('56','hmcgrouther1j@reddit.com','Q6FKJtIoL8l','+1 666 647 9829','Heath','Kock','McGrouther'),('57','whymas1k@blogs.com','BkuV1mA28Y','+86 917 558 9130','Wilmar','Slowey','Hymas'),('58','crannigan1l@paypal.com','lBeJf3','+7 548 188 7021','Clayton','Dodge','Rannigan'),('59','rclingan1m@4shared.com','Qggrnuv5iPG','+86 907 135 5787','Renee','Chicotti','Clingan'),('6','rbencher5@cam.ac.uk','auGHx6oISu','+216 549 315 9483','Rick','Knath','Bencher'),('60','yflatley1n@google.com.br','RofKHuGkj0','+1 513 634 3131','Yehudi','Callaway','Flatley'),('61','rproswell1o@mtv.com','8zjMpzS','+251 200 344 1204','Roarke','Tummasutti','Proswell'),('62','scarne1p@merriam-webster.com','OvWU1WnnAQ','+81 139 744 4916','Shermie','Dudeney','Carne'),('63','nicom1q@technorati.com','Yo449mycyt9','+356 485 360 9455','Netta','Hoult','Icom'),('64','lwalaron1r@livejournal.com','unMHHwJK5N0','+1 274 231 1559','Loria','Kenealy','Walaron'),('65','cbanisch1s@seattletimes.com','SBGITiQCLnY','+55 224 984 7040','Charmane','Haruard','Banisch'),('66','hblanckley1t@china.com.cn','pReYzxeLBj','+7 468 611 1454','Hyman','McKie','Blanckley'),('67','bcowoppe1u@dion.ne.jp','2Pgy4vKbWz','+44 408 126 5333','Barnabas','Poore','Cowoppe'),('68','bhinge1v@unblog.fr','8gXP70KoC4PQ','+48 556 802 6279','Burk','Van der Krui','Hinge'),('69','pmassel1w@usda.gov','3Qf7WOKh','+46 114 786 2559','Patin','Speer','Massel'),('7','tbuckleigh6@auda.org.au','5eNZgsT7','+963 221 273 7546','Tabatha','Kelmere','Buckleigh'),('70','fbride1x@techcrunch.com','yWv39iJ3h','+7 448 218 8898','Filip','Farlham','Bride'),('71','fnewlan1y@infoseek.co.jp','q8DhHZNfI02','+86 676 862 1773','Flinn','Fergusson','Newlan'),('72','kbelham1z@myspace.com','VMCvoYR2aVFd','+504 800 777 3296','Kellby','Muzzi','Belham'),('73','tbauldrey20@indiegogo.com','pek0LWV9','+33 641 354 4446','Tatum','Paladino','Bauldrey'),('74','wkerrane21@howstuffworks.com','TODC3StqEwqz','+62 640 732 4238','Wilie','Roscher','Kerrane'),('75','eandresen22@reuters.com','hq01vvru','+351 315 427 5345','Edita','Condict','Andresen'),('76','dboal23@lycos.com','HMNF1bkuNkg','+62 293 625 4694','Duff','Franzini','Boal'),('77','dleinthall24@cnet.com','Nygsn6HOx','+86 179 923 4403','Dredi','Spraggs','Leinthall'),('78','mgiacomini25@etsy.com','KnBE6zeLKD','+351 904 767 2165','Maryjo','Sheen','Giacomini'),('79','kroseborough26@washingtonpost.com','oV80Vsm','+351 819 565 8410','Karee','Swanson','Roseborough'),('8','bschroder7@bravesites.com','Gpk8dgEa4njZ','+84 454 302 1660','Belvia','Jocelyn','Schroder'),('80','aharpham27@oaic.gov.au','40Ztn2BE','+7 316 203 3428','Al','Lively','Harpham'),('81','ljedrys28@devhub.com','YnBrp9FGuh33','+234 236 584 9642','Lauri','Jochen','Jedrys'),('82','tmansfield29@psu.edu','rSEddEy','+591 876 996 5815','Trixy','Hefferan','Mansfield'),('83','rbendel2a@earthlink.net','l6fqABtnC','+30 581 496 3707','Ruddy','Smallpeace','Bendel'),('84','mangerstein2b@mtv.com','6FFUDVwHriDS','+7 915 859 0938','Marve','Rowell','Angerstein'),('85','ablinde2c@paypal.com','9oAZ403','+963 873 447 5186','Adham','O\' Kelleher','Blinde'),('86','ddienes2d@ted.com','Kdjp7pMsW5bR','+1 808 999 4520','Dennie','Ebi','Dienes'),('87','tharlett2e@archive.org','GwXwxqC','+86 618 981 8550','Theobald','Mosson','Harlett'),('88','scarman2f@si.edu','RnIuT3D6Rv','+353 133 831 9216','Saree','Spowage','Carman'),('89','tstopper2g@noaa.gov','8NyBFgT','+86 683 968 8462','Trisha','Pelham','Stopper'),('9','cruppelin8@netvibes.com','n6DGGz03DKZ','+86 227 644 7808','Christoforo','Moyle','Ruppelin'),('90','zmcalinion2h@pcworld.com','wwpqeXd4uMFt','+51 868 122 1841','Zack','Garmston','McAlinion'),('91','jdrezzer2i@columbia.edu','4vRl7Kc8QIqo','+33 915 323 2420','Janenna','Abendroth','Drezzer'),('92','hennor2j@surveymonkey.com','0mLJHrC','+221 190 941 8064','Hartley','Heakey','Ennor'),('93','ldunnet2k@discuz.net','NXgtzOT2EyW','+46 476 161 6336','Leonhard','Bartolomieu','Dunnet'),('94','chalbard2l@psu.edu','GFVrQ0NHk5V','+86 491 906 5564','Clarabelle','Collis','Halbard'),('95','htight2m@oaic.gov.au','pYMTzi3hN','+39 262 850 3939','Honoria','Hoy','Tight'),('96','fniblock2n@webmd.com','rUZdEa','+967 929 947 0565','Forest','Matusiak','Niblock'),('97','mheelis2o@51.la','0mXtChIl','+62 543 497 5478','Mendy','Wharmby','Heelis'),('98','kmerrington2p@simplemachines.org','2CD4MLwFo3A','+1 626 360 4750','Krysta','Brusby','Merrington'),('99','amcmanus2q@opensource.org','9onEESaHYIF','+33 204 751 0344','Aarika','Paice','McManus');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
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
