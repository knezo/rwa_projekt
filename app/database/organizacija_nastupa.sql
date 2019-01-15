-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: organizacija_nastupa
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ŽANR`
--

DROP TABLE IF EXISTS `ŽANR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ŽANR` (
  `idŽANR` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_žanra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idŽANR`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ŽANR`
--

LOCK TABLES `ŽANR` WRITE;
/*!40000 ALTER TABLE `ŽANR` DISABLE KEYS */;
INSERT INTO `ŽANR` VALUES (1,'Alternative rock'),(2,'Hard rock'),(3,'Pop rock'),(4,'Indie rock'),(5,'R&B'),(6,'Blues'),(7,'Hip hop'),(8,'Rap'),(9,'Emo'),(10,'Pop punk'),(11,'Surf punk'),(12,'Hardcore'),(13,'Classical'),(14,'Symphonic metal'),(15,'Dance-pop');
/*!40000 ALTER TABLE `ŽANR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BEND`
--

DROP TABLE IF EXISTS `BEND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BEND` (
  `idBEND` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_benda` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBEND`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BEND`
--

LOCK TABLES `BEND` WRITE;
/*!40000 ALTER TABLE `BEND` DISABLE KEYS */;
INSERT INTO `BEND` VALUES (1,'Descendents'),(2,'FIDLAR'),(3,'Foxing'),(4,'The Hotelier'),(5,'Jonathan'),(6,'Krankšvester'),(7,'Me and That Man'),(8,'Modern Baseball'),(9,'Post Malone'),(10,'Tiny Moving Parts'),(11,'Queens of the Stone Age'),(12,'Rancid'),(13,'Red City Radio'),(14,'Bones'),(15,'Thursday'),(16,'Twenty One Pilots'),(17,'2Cellos'),(18,'Nightwish'),(19,'Imagine Dragons'),(20,'Skillet'),(21,'Colonia'),(22,'Psihomodo Pop');
/*!40000 ALTER TABLE `BEND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BEND_ŽANR`
--

DROP TABLE IF EXISTS `BEND_ŽANR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BEND_ŽANR` (
  `idŽANR` int(11) NOT NULL,
  `idBEND` int(11) NOT NULL,
  PRIMARY KEY (`idBEND`,`idŽANR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BEND_ŽANR`
--

LOCK TABLES `BEND_ŽANR` WRITE;
/*!40000 ALTER TABLE `BEND_ŽANR` DISABLE KEYS */;
INSERT INTO `BEND_ŽANR` VALUES (10,1),(12,1),(4,2),(10,2),(11,2),(4,3),(9,3),(4,4),(9,4),(10,4),(1,5),(3,5),(7,6),(8,6),(6,7),(3,8),(9,8),(5,9),(7,9),(9,10),(10,10),(1,11),(2,11),(13,12),(10,13),(7,14),(8,14),(9,15),(10,15),(3,16),(13,17),(14,18),(1,19),(4,19),(1,20),(2,20),(15,21),(1,22),(10,22);
/*!40000 ALTER TABLE `BEND_ŽANR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRŽAVA`
--

DROP TABLE IF EXISTS `DRŽAVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DRŽAVA` (
  `idDRŽAVA` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_države` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDRŽAVA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRŽAVA`
--

LOCK TABLES `DRŽAVA` WRITE;
/*!40000 ALTER TABLE `DRŽAVA` DISABLE KEYS */;
INSERT INTO `DRŽAVA` VALUES (1,'Republika Hrvatska'),(2,'Sjedinjene Americke Drzave'),(3,'Austrija'),(4,'Slovenija');
/*!40000 ALTER TABLE `DRŽAVA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GRAD`
--

DROP TABLE IF EXISTS `GRAD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GRAD` (
  `idGRAD` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_grada` varchar(45) DEFAULT NULL,
  `idDRŽAVA` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGRAD`),
  KEY `idDRŽAVA` (`idDRŽAVA`),
  CONSTRAINT `GRAD_ibfk_1` FOREIGN KEY (`idDRŽAVA`) REFERENCES `DRŽAVA` (`idDRŽAVA`),
  CONSTRAINT `GRAD_ibfk_2` FOREIGN KEY (`idDRŽAVA`) REFERENCES `DRŽAVA` (`idDRŽAVA`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GRAD`
--

LOCK TABLES `GRAD` WRITE;
/*!40000 ALTER TABLE `GRAD` DISABLE KEYS */;
INSERT INTO `GRAD` VALUES (1,'Zagreb',1),(2,'Pula',1),(3,'Philadelphia',2),(4,'Bec',3),(5,'Ljubljana',4),(6,'Split',1);
/*!40000 ALTER TABLE `GRAD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NASTUP`
--

DROP TABLE IF EXISTS `NASTUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NASTUP` (
  `idNASTUP` int(11) NOT NULL AUTO_INCREMENT,
  `datum_nastupa` varchar(45) DEFAULT NULL,
  `vrijeme_nastupa` varchar(45) DEFAULT NULL,
  `broj_zainteresiranih` int(11) DEFAULT NULL,
  `idPROSTOR` int(11) DEFAULT NULL,
  `idBEND` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNASTUP`),
  KEY `idBEND` (`idBEND`),
  KEY `idPROSTOR` (`idPROSTOR`),
  CONSTRAINT `NASTUP_ibfk_1` FOREIGN KEY (`idBEND`) REFERENCES `BEND` (`idBEND`),
  CONSTRAINT `NASTUP_ibfk_2` FOREIGN KEY (`idPROSTOR`) REFERENCES `PROSTOR` (`idPROSTOR`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NASTUP`
--

LOCK TABLES `NASTUP` WRITE;
/*!40000 ALTER TABLE `NASTUP` DISABLE KEYS */;
INSERT INTO `NASTUP` VALUES (1,'20.1.2018.','22:00',3500,3,1),(2,'27.1.2018.','22:30',1500,10,1),(3,'20.1.2018.','20:00',2000,7,2),(4,'15.6.2018.','23:00',1200,9,3),(5,'3.2.2018.','21:30',9000,2,4),(6,'25.5.2018.','21:00',18000,1,5),(7,'27.5.2018.','21:30',11500,6,5),(8,'19.9.2018.','23:00',1300,7,6),(9,'1.12.2018.','22:00',10500,8,7),(10,'17.4.2018.','22:30',19500,4,8),(11,'5.7.2018.','21:30',14000,5,9),(12,'16.7.2018.','21:00',18000,4,9),(13,'30.5.2018.','21:30',3500,3,10),(14,'8.8.2018.','22:00',1700,9,11),(15,'21.10.2018.','22:30',12500,2,12),(16,'25.10.2018.','22:30',11000,6,12),(17,'16.7.2018.','21:00',16000,5,13),(18,'19.4.2018.','21:30',2000,10,14),(19,'25.4.2018.','22:00',16000,1,14),(20,'16.7.2018.','23:00',1500,7,15),(21,'30.5.2018.','22:00',11500,8,16),(22,'3.6.2018.','21:30',1800,9,16),(23,'8.3.2018','22:30',15000,4,17),(24,'22.2.2018.','22:00',16500,5,18),(25,'25.10.2018.','21:00',11000,2,19),(26,'19.4.2018.','21:30',2500,3,20),(27,'10.9.2018.','22:00',17000,1,21),(28,'12.9.2018.','23:00',9500,2,21),(29,'3.6.2018.','22:30',1800,7,22);
/*!40000 ALTER TABLE `NASTUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROSTOR`
--

DROP TABLE IF EXISTS `PROSTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROSTOR` (
  `idPROSTOR` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_prostora` varchar(45) DEFAULT NULL,
  `adresa_prostora` varchar(45) DEFAULT NULL,
  `kapacitet_prostora` int(11) DEFAULT NULL,
  `idGRAD` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPROSTOR`),
  KEY `idGRAD` (`idGRAD`),
  CONSTRAINT `PROSTOR_ibfk_1` FOREIGN KEY (`idGRAD`) REFERENCES `GRAD` (`idGRAD`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROSTOR`
--

LOCK TABLES `PROSTOR` WRITE;
/*!40000 ALTER TABLE `PROSTOR` DISABLE KEYS */;
INSERT INTO `PROSTOR` VALUES (1,'Arena Zagreb','Ulica Vice Vukova 8',16500,1),(2,'Arena Pula','Flavijevska ulica',10000,2),(3,'Electric Factory','421 N 7th St',3000,3),(4,'Wiener Stadthalle','Roland-Rainer-Platz 1',16000,4),(5,'Arena Stozice','Arena Stozice',14500,5),(6,'Dom Sportova','Trg Kresimira Cosica 11',10000,1),(7,'Tvornica Kulture','Subiceva 2',1600,1),(8,'Spaladium Arena','Zrinsko-frankopanska 211',12000,6),(9,'Kino Siska','Trg prekomorskih brigad 3',1500,5),(10,'Webster Hall','125 E 11th St',1600,7);
/*!40000 ALTER TABLE `PROSTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROSTOR_BEND`
--

DROP TABLE IF EXISTS `PROSTOR_BEND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROSTOR_BEND` (
  `idPROSTOR` int(11) NOT NULL,
  `idBEND` int(11) NOT NULL,
  PRIMARY KEY (`idBEND`,`idPROSTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROSTOR_BEND`
--

LOCK TABLES `PROSTOR_BEND` WRITE;
/*!40000 ALTER TABLE `PROSTOR_BEND` DISABLE KEYS */;
INSERT INTO `PROSTOR_BEND` VALUES (3,1),(10,1),(7,2),(9,3),(2,4),(1,5),(6,5),(7,6),(8,7),(4,8),(4,9),(5,9),(3,10),(9,11),(2,12),(6,12),(5,13),(1,14),(10,14),(7,15),(8,16),(9,16),(4,17),(5,18),(2,19),(3,20),(1,21),(2,21),(7,22);
/*!40000 ALTER TABLE `PROSTOR_BEND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ULAZNICA`
--

DROP TABLE IF EXISTS `ULAZNICA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ULAZNICA` (
  `idULAZNICA` int(11) NOT NULL AUTO_INCREMENT,
  `cijena_ulaznice` varchar(45) DEFAULT NULL,
  `idNASTUP` int(11) DEFAULT NULL,
  PRIMARY KEY (`idULAZNICA`),
  KEY `idNASTUP` (`idNASTUP`),
  CONSTRAINT `ULAZNICA_ibfk_1` FOREIGN KEY (`idNASTUP`) REFERENCES `NASTUP` (`idNASTUP`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ULAZNICA`
--

LOCK TABLES `ULAZNICA` WRITE;
/*!40000 ALTER TABLE `ULAZNICA` DISABLE KEYS */;
INSERT INTO `ULAZNICA` VALUES (1,'150 kn',1),(2,'200 kn',1),(3,'100 kn',2),(4,'150 kn',3),(5,'80 kn',4),(6,'90 kn',5),(7,'120 kn',5),(8,'80 kn',6),(9,'50 kn',7),(10,'60 kn',8),(11,'80 kn',9),(12,'100 kn',9),(13,'140 kn',10),(14,'250 kn',11),(15,'260 kn',12),(16,'300 kn',12),(17,'100 kn',13),(18,'240 kn',14),(19,'270 kn',14),(20,'120 kn',15),(21,'130 kn',16),(22,'80 kn',17),(23,'150 kn',18),(24,'180 kn',18),(25,'160 kn',19),(26,'70 kn',20),(27,'300 kn',21),(28,'280 kn',22),(29,'330 kn',22),(30,'160 kn',23),(31,'200 kn',24),(32,'220 kn',24),(33,'250 kn',25),(34,'120 kn',26),(35,'130 kn',27),(36,'150 kn',28),(37,'100 kn',29),(38,'140 kn',29);
/*!40000 ALTER TABLE `ULAZNICA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09 19:02:32
