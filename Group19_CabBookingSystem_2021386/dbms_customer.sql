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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUSTOMER_ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `PHONE_NO` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `MIDDLE_NAME` varchar(30) DEFAULT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `EMAIL_ID` (`EMAIL_ID`),
  UNIQUE KEY `PHONE_NO` (`PHONE_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'hflemyng0@php.net','2uDeNPjWMxp','+86 778 111 0731','Harrison','Izzett','Flemyng'),(2,'rmacrorie1@spiegel.de','apM15V7g','+62 867 278 5142','Ricki','Peddel','MacRorie'),(3,'ccottam2@a8.net','GrHSfOv2','+54 358 383 0391','Caye','Pantin','Cottam'),(4,'kdacre3@xinhuanet.com','xpBxbQe','+7 680 878 4737','Kathie','Forsyde','Dacre'),(5,'leggleson4@sfgate.com','2hjdl63rsiOX','+62 685 960 1138','Laughton','Yateman','Eggleson'),(6,'slackinton5@icio.us','CGWwoESf45T','+63 575 812 4369','Sarine','Dudlestone','Lackinton'),(7,'lfindlow6@miibeian.gov.cn','EOiaUsrTnO0','+48 900 668 2121','Laird','Tenbrug','Findlow'),(8,'ryanez7@hud.gov','eLj4yuuQz','+51 622 956 7783','Reed','Allott','Yanez'),(9,'ecraker8@hatena.ne.jp','wgUop8i','+7 786 400 2995','Ephrayim','Thay','Craker'),(10,'cmacronald9@sakura.ne.jp','mHEc0RLzMpE','+48 496 866 5379','Corrinne','Swannell','MacRonald'),(11,'afoystona@answers.com','UK4naaVzH','+33 264 980 0259','Antin','Caress','Foyston'),(12,'acawthryb@a8.net','1EF6mLTxj','+880 490 775 5772','Adolpho','Lofty','Cawthry'),(13,'iodyc@bbb.org','EZu1uYFCy','+93 733 847 2249','Ignace','Twining','Ody'),(14,'hpedlinghamd@salon.com','bIzxfL0z','+389 321 971 4509','Hermina','Aspey','Pedlingham'),(15,'padese@wiley.com','H5UMP8W','+52 308 844 5728','Price','Slaymaker','Ades'),(16,'bantonsenf@nhs.uk','Eh0aduaXtPC','+62 638 252 6569','Barthel','Upcott','Antonsen'),(17,'gahrendseng@dropbox.com','DXQhuUenjtjj','+31 422 474 4731','Giralda','Forrest','Ahrendsen'),(18,'hhalleyboneh@sina.com.cn','Kt1vFM','+374 707 689 7263','Hazel','Halls','Halleybone'),(19,'vwannelli@storify.com','qSvsW7y','+46 635 431 9479','Vlad','ducarme','Wannell'),(20,'hreddochj@dot.gov','bBxTLd','+86 104 202 3658','Hartwell','Oselton','Reddoch'),(21,'lselkirkk@last.fm','iZY0DyEMd8J','+7 977 420 1434','Lizzie','Merwe','Selkirk'),(22,'rpickworthl@vk.com','ndMtghjIT','+63 964 385 3659','Rutger','Scougal','Pickworth'),(23,'sperkinsonm@github.com','54yzCOZPa','+86 539 656 6696','Selma','Spurdle','Perkinson'),(24,'kbrasn@photobucket.com','vKZDq1Wl0Sw','+58 564 391 6608','Kara-lynn','Tuffley','Bras'),(25,'kmenloveo@artisteer.com','RRo8XZtkRI','+1 630 180 2840','Katherina','Gronav','Menlove'),(26,'ktomaszewiczp@guardian.co.uk','5T9GSq','+351 396 254 4338','Kaylyn','Browett','Tomaszewicz'),(27,'tneilsonq@sohu.com','OHxxaH','+47 975 219 2561','Tessie','Simounet','Neilson'),(28,'ttulipr@google.com.au','P0qxgqnzej1u','+86 676 126 9996','Thia','Heather','Tulip'),(29,'dpratens@patch.com','fVriMAl','+30 365 901 8571','Drusi','Mackneis','Praten'),(30,'awillishiret@hao123.com','jBazla','+63 996 797 3655','Ashley','Comrie','Willishire'),(31,'lsnarttu@census.gov','wyyJRLAOA0uq','+62 838 400 3484','Lesly','Carillo','Snartt'),(32,'airesonv@cdc.gov','pCWmaCS1','+380 489 926 6949','Alvira','Nossent','Ireson'),(33,'rgoodlifew@si.edu','Sq8syBuzpa','+55 310 700 3280','Rosella','Hardware','Goodlife'),(34,'fadamekx@sogou.com','PtXtJmc','+86 847 305 9628','Field','Izzatt','Adamek'),(35,'asibthorpey@mapquest.com','FzkqDsnLW','+973 281 389 3296','Alastair','McDonough','Sibthorpe'),(36,'mstrangmanz@utexas.edu','orWYLMNWDR','+1 914 235 2822','Monti','Jacobbe','Strangman'),(37,'dhamp10@ft.com','TsXrG8ATEa','+503 374 991 7312','Dunn','Sheal','Hamp'),(38,'tantham11@github.io','8EhO6cRj','+359 521 973 7706','Tobias','Yerlett','Antham'),(39,'eclandillon12@ca.gov','RLEcnimh','+86 525 643 5379','Emile','Brumbie','Clandillon'),(40,'acawkwell13@statcounter.com','4b25Qn','+63 464 122 4002','Aurea','Heed','Cawkwell'),(41,'eoakenfall14@sourceforge.net','wvsavde','+86 574 589 9576','Emlyn','Pretty','Oakenfall'),(42,'rtrass15@networksolutions.com','fPHyoU7Qh','+57 982 978 9308','Roland','Vaughn','Trass'),(43,'chardman16@ucoz.com','fw0ce2tlo','+7 615 449 6529','Consuelo','Barensky','Hardman'),(44,'nodams17@sciencedaily.com','e0wpxnKGgX2','+86 854 442 4247','Nikolaos','Baudouin','Odams'),(45,'scardero18@taobao.com','UZFA3A','+86 324 292 2311','Shel','Aggus','Cardero'),(46,'rdysart19@1688.com','7ffiQriF','+380 711 610 9820','Rube','Credland','Dysart'),(47,'sjeroch1a@jigsy.com','GMFm68X','+66 237 890 9095','Shea','Prenty','Jeroch'),(48,'vcrich1b@google.ca','AKD2jY635vrJ','+54 781 903 3466','Vitoria','Shutt','Crich'),(49,'asnoddon1c@washington.edu','a1lhn0Li','+389 181 233 7904','Ardella','Craker','Snoddon'),(50,'dwilman1d@jalbum.net','4uV9Lk9MPD','+86 250 967 3176','Daveta','Galero','Wilman'),(51,'stuckwell1e@shinystat.com','LHA6209h','+62 803 132 8481','Sergio','Mellsop','Tuckwell'),(52,'wanmore1f@whitehouse.gov','akMlwresx','+86 595 267 0273','Walden','Cusiter','Anmore'),(53,'dsmurfitt1g@amazon.co.jp','585EPubWp','+62 998 324 5157','Danya','Lafuente','Smurfitt'),(54,'olusted1h@creativecommons.org','IINnmU1f4','+55 216 365 5939','Oliver','Cradock','Lusted'),(55,'econstant1i@prweb.com','PZ9AQKiHTm','+44 256 111 6668','Elbertina','Fiveash','Constant'),(56,'twrangle1j@weather.com','N0nmhcol0OG','+86 810 124 4665','Timothea','Molines','Wrangle'),(57,'lgidney1k@samsung.com','lSVxKa9','+48 208 455 0207','Larina','Fairlaw','Gidney'),(58,'cblaskett1l@time.com','jh3php06TB1','+7 162 155 6365','Colman','Wharby','Blaskett'),(59,'gbruckner1m@sphinn.com','8DyGCrIZW','+31 541 470 3933','Garrek','Browne','Bruckner'),(60,'nalbutt1n@posterous.com','lkXS1b9q','+380 649 613 4540','Nancy','Mugg','Albutt'),(61,'lcovino1o@hatena.ne.jp','4mHmKqPq6t','+54 449 757 9872','Lanny','Foord','covino'),(62,'btropman1p@vistaprint.com','qfphQ6WT','+48 943 296 8242','Brandon','Gebuhr','Tropman'),(63,'mdello1q@issuu.com','xKRLgLTTY6','+86 563 241 8422','Mendie','Oliphand','Dello'),(64,'alohoar1r@instagram.com','js8Zix2Cthjv','+30 518 965 1643','Albie','Housby','Lohoar'),(65,'aharman1s@cargocollective.com','47gdzOSSAvR','+86 579 266 1925','Artair','Luffman','Harman'),(66,'hvallery1t@google.nl','Y2Xk5LkXV','+358 254 924 3182','Hammad','Juanico','Vallery'),(67,'cchurcher1u@google.com.hk','55vMAdT8','+63 973 272 4097','Chrisy','Bisset','Churcher'),(68,'fbeasleigh1v@theguardian.com','Zj8SiXC7dkAl','+63 273 250 7124','Farly','Pain','Beasleigh'),(69,'cjaquet1w@japanpost.jp','DxhDcjI','+95 841 819 9916','Celka','Cottesford','Jaquet'),(70,'kskitterel1x@virginia.edu','rej7bvIjUAm','+62 649 117 7800','Karrah','Olerenshaw','Skitterel'),(71,'cwelden1y@netlog.com','bBjYhQp0','+81 387 802 6552','Calv','Avon','Welden'),(72,'mwolstenholme1z@eepurl.com','SP4aIlZMvkN','+356 180 518 3450','Maren','Kingzet','Wolstenholme'),(73,'rcrosetto20@etsy.com','jX1746o','+53 379 554 1981','Randal','Fulger','Crosetto'),(74,'mridsdole21@usgs.gov','f40z0vr0rsD','+7 493 943 0078','Mannie','Cranke','Ridsdole'),(75,'lfalks22@youtu.be','QJdylK','+63 827 242 3194','Lissie','Swiffin','Falks'),(76,'abuscombe23@geocities.jp','90dyD1krBBc','+7 577 486 8454','Amalita','Acarson','Buscombe'),(77,'bfagence24@theglobeandmail.com','ngsU9I0','+7 955 436 8139','Betteanne','Angless','Fagence'),(78,'mespina25@globo.com','PVIcEgBw6','+1 115 739 8861','Melisandra','Methley','Espina'),(79,'jockleshaw26@topsy.com','jPahU0ziQQ2','+57 554 106 3444','Joshuah','Pantone','Ockleshaw'),(80,'fcescoti27@elpais.com','6OFUjRG5OI0','+86 124 684 0279','Fayina','Bonnick','Cescoti'),(81,'troxby28@army.mil','EAEipFMNV','+63 590 307 8405','Tony','Rickasse','Roxby'),(82,'rhinstock29@t-online.de','lJyrbquPC','+351 181 667 1873','Rudy','Pruckner','Hinstock'),(83,'dprestedge2a@time.com','HouDnAI','+62 940 920 9664','Diannne','Minger','Prestedge'),(84,'ifairleigh2b@slideshare.net','SlBfrKkHETO8','+55 589 490 0163','Isabelita','Mateus','Fairleigh'),(85,'echown2c@weibo.com','J3ixyDAr','+251 743 121 6292','Eduard','Celez','Chown'),(86,'okeddie2d@nih.gov','ZGLjzgL','+420 266 569 9592','Orion','Thyng','Keddie'),(87,'sstpaul2e@europa.eu','rtAK0GXuuMT','+86 436 210 5825','Shelia','Joskovitch','St. Paul'),(88,'nmathely2f@jiathis.com','ApOBrvx','+593 625 594 5820','Nananne','Lewsley','Mathely'),(89,'hpetegre2g@cisco.com','6ttgojUuUb','+386 326 108 3408','Hope','Berrick','Petegre'),(90,'aborg2h@godaddy.com','SPyd0yn2efQW','+86 404 364 2300','Arlette','Favill','Borg'),(91,'pliversedge2i@cpanel.net','TrMLbV5REH','+49 591 893 0592','Parker','Rouf','Liversedge'),(92,'slideard2j@miibeian.gov.cn','RP920v','+55 598 221 3755','Sonny','Lawes','Lideard'),(93,'tfitzhenry2k@1und1.de','AGGGQ0f','+46 638 926 3036','Tallie','Gooderridge','Fitzhenry'),(94,'rjervis2l@skyrock.com','eTVJNE7xvWK4','+63 218 571 8169','Rebbecca','Daldry','Jervis'),(95,'dphidgin2m@google.co.uk','9lwXVZG3848Z','+63 324 611 3242','Douglas','Hasel','Phidgin'),(96,'rfairbanks2n@drupal.org','b6rSMSltK08','+48 532 404 2431','Randolf','Deguara','Fairbanks'),(97,'zmayor2o@economist.com','14BXSl','+86 658 777 2556','Zeb','Sheere','Mayor'),(98,'cpuvia2p@amazon.de','J49dpg8lcV','+54 607 718 3196','Codi','Sugg','Puvia'),(99,'hkelwaybamber2q@ezinearticles.com','dIUFjRrt','+62 360 359 7210','Heida','Bickley','Kelwaybamber'),(100,'spatience2r@jalbum.net','b6PK6lLn','+46 434 510 2693','Salvatore','Goldster','Patience');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
