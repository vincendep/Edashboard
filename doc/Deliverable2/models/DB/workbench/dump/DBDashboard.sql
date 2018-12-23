CREATE DATABASE  IF NOT EXISTS `edashboard` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `edashboard`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: edashboard
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `amministratore`
--

DROP TABLE IF EXISTS `amministratore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amministratore` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `pw` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `pw` (`pw`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amministratore`
--

LOCK TABLES `amministratore` WRITE;
/*!40000 ALTER TABLE `amministratore` DISABLE KEYS */;
INSERT INTO `amministratore` VALUES (1,'Fabio','Gentile','F4biucci0000','fabiucciogentilino@gmail.com');
/*!40000 ALTER TABLE `amministratore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  `IDedificio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_edificio` (`IDedificio`),
  CONSTRAINT `id_edificio` FOREIGN KEY (`IDedificio`) REFERENCES `edificio` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'stanza',1),(2,'corriDoio',1),(3,'zona all\' aperto',1),(4,'stanza',1),(5,'corriDoio',2),(6,'zona all\' aperto',2),(7,'stanza',3),(8,'corrisoio',3),(9,'zona all\' aperto',3),(10,'stanza',3),(11,'corridoio',3),(12,'zona all\' aperto',3),(13,'stanza',4),(14,'corridoio',4),(15,'zona all\' aperto',2),(16,'stanza',2),(17,'stanza',3),(18,'corridoio',3),(19,'stanza',2),(20,'stanza',1),(21,'stanza',2),(22,'zona all\' aperto',3),(23,'stanza',2),(24,'corridoio',2),(25,'zona all\' aperto',3),(26,'stanza',2),(27,'stanza',3),(28,'corridoio',2),(29,'stanza',3),(30,'stanza',2),(31,'stanza',2),(32,'stanza',3),(33,'corriDoio',3),(34,'zona all\' aperto',1),(35,'stanza',1),(36,'corriDoio',1),(37,'zona all\' aperto',3),(38,'stanza',2),(39,'corrisoio',2),(40,'zona all\' aperto',3),(41,'stanza',3),(42,'corridoio',3),(43,'zona all\' aperto',3),(44,'stanza',2),(45,'corridoio',3),(46,'zona all\' aperto',3),(47,'stanza',1),(48,'stanza',1),(49,'corridoio',2),(50,'stanza',2),(51,'stanza',1),(52,'stanza',2);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distretto`
--

DROP TABLE IF EXISTS `distretto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distretto` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distretto`
--

LOCK TABLES `distretto` WRITE;
/*!40000 ALTER TABLE `distretto` DISABLE KEYS */;
INSERT INTO `distretto` VALUES (1,'Coppito'),(2,'Roio'),(3,'Fontana Luminosa');
/*!40000 ALTER TABLE `distretto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edificio`
--

DROP TABLE IF EXISTS `edificio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edificio` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `IDdistretto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_distretto` (`IDdistretto`),
  CONSTRAINT `id_distretto` FOREIGN KEY (`IDdistretto`) REFERENCES `distretto` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edificio`
--

LOCK TABLES `edificio` WRITE;
/*!40000 ALTER TABLE `edificio` DISABLE KEYS */;
INSERT INTO `edificio` VALUES (1,'C1',1),(2,'C1',1),(3,'C1',1),(4,'C1',1),(5,'C1',1),(6,'C2',1),(7,'C2',1),(8,'C2',1),(9,'C2',1),(10,'C0',1),(11,'C0',1),(12,'C0',1),(13,'C0',1),(14,'R1',2),(15,'R1',2),(16,'R1',2),(17,'R1',2),(18,'R2',2),(19,'R2',2),(20,'R2',2),(21,'FL',3),(22,'FL',3),(23,'FL',3),(24,'FL',3),(25,'FL',3);
/*!40000 ALTER TABLE `edificio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestore`
--

DROP TABLE IF EXISTS `gestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestore` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `pw` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `IDedificio` int(10) unsigned DEFAULT NULL,
  `IDdistretto` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `pw` (`pw`),
  KEY `IDedificio` (`IDedificio`),
  KEY `IDdistretto` (`IDdistretto`),
  CONSTRAINT `gestore_ibfk_1` FOREIGN KEY (`IDedificio`) REFERENCES `edificio` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gestore_ibfk_2` FOREIGN KEY (`IDdistretto`) REFERENCES `distretto` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestore`
--

LOCK TABLES `gestore` WRITE;
/*!40000 ALTER TABLE `gestore` DISABLE KEYS */;
INSERT INTO `gestore` VALUES (1,'Mario','Rossi','Mariewon3','mariorossi@gmail.com','GE',1,NULL),(2,'Patrizia','Verdi','Patrizfddi4','patriziaverdi@gmail.com','GE',2,NULL),(3,'Domenico','Neri','Domendsic0','domeniconeri@gmail.com','GE',2,NULL),(4,'Paola','Viola','Paoleedstt4','paolaviola@gmail.com','GE',2,NULL),(5,'Ilaria','Chiodo','442fdfds','IlariaChio@gmail.com','GE',3,NULL),(6,'Mario','Rossi','Maricson3','mariosi@gmail.com','GE',1,NULL),(7,'Patrizia','Verdi','Patrizi4','patriziavi@gmail.com','GE',1,NULL),(8,'Domenico','Neri','Domevdsnic0','domenneri@gmail.com','GE',1,NULL),(9,'Paola','Viola','Paolecsdd3tt4','paola@gmail.com','GE',1,NULL),(10,'Ilaria','Chiodo','Ilarics44','Ilariio@gmail.com','GE',1,NULL),(11,'Mario','Rossi','Mariwewqon3','marrossi@gmail.com','GD',NULL,2),(12,'Patrizia','Verdi','Patrifdszi4','ptriziaverdi@gmail.com','GD',NULL,2),(13,'Domenico','Neri','Domdsaenic0','deniconeri@gmail.com','GD',NULL,2),(14,'Paola','Viola','Paolettds4','plaviola@gmail.com','GD',NULL,2),(15,'Ilaria','Chiodo','Ilariasd44','ariaChio@gmail.com','GD',NULL,2),(16,'Mario','Rossi','Marsdion3','maiosi@gmail.com','GD',NULL,3),(17,'Patrizia','Verdi','Patrisdzi4','pariziavi@gmail.com','GD',NULL,3),(18,'Domenico','Neri','Domenic0','doenneri@gmail.com','GD',NULL,3),(19,'Paola','Viola','Paolett4','pola@gmail.com','GD',NULL,3),(20,'Ilaria','Chiodo','Ilari44','Ilari@gmail.com','GD',NULL,3),(21,'Mario','Rossi','Marion3','marrvdsvsossi@gmail.com','GE',1,NULL),(22,'Patrizia','Verdi','Patrsaizi4','ptrdsaiziaverdi@gmail.com','GE',3,NULL),(23,'Domenico','Neri','Ddsaomenic0','dendsaaiconeri@gmail.com','GE',2,NULL),(24,'Paola','Viola','Paolettdas4','plajdjviola@gmail.com','GE',3,NULL),(25,'Ilaria','Chiodo','Ilaridas44','adjsajriaChio@gmail.com','GE',1,NULL),(26,'Mario','Rossi','Marion23','maosdaoiosi@gmail.com','GD',NULL,1),(27,'Patrizia','Verdi','Patwqrdsizi4','parizncklaiavi@gmail.com','GD',NULL,2),(28,'Domenico','Neri','Domedfsnic0','doencoanneri@gmail.com','GD',NULL,2),(29,'Paola','Viola','Paolettger4','posjiaola@gmail.com','GD',NULL,2),(30,'Ilaria','Chiodo','Ilarrgei44','Ilaaaari@gmail.com','GD',NULL,3),(31,'Fabrizio','Vitalizio','332edfew','FabVital@gmail.com','GC',NULL,NULL),(32,'Cristina','Bacchiello','CriBagcchi11','CriBacchi1@gmail.com','GC',NULL,NULL),(33,'Chiara','Zucca','Chiarrew4','Chiaraaa2@gmail.com','GC',NULL,NULL),(34,'Mario','Rossi','Marioewrn3','mariorosi@gmail.com','GC',NULL,NULL),(35,'Patrizia','Verdi','Patrewrdsaizi4','patriziavdi@gmail.com','GC',NULL,NULL),(36,'Domenico','Neri','Domenrwfeic0','domeniconei@gmail.com','GC',NULL,NULL),(37,'Paola','Viola','Paolett344','paolfdsfiola@gmail.com','GC',NULL,NULL),(38,'Fabrizio','Vitalizio','Fabr43iVit4','FabVfssfital@gmail.com','GC',NULL,NULL),(39,'Cristina','Bacchiello','CriBac43chi11','CriBasdsfcchi1@gmail.com','GC',NULL,NULL),(40,'Chiara','Zucca','Chiarhr4','Chiaraaafd2@gmail.com','GC',NULL,NULL),(41,'Mario','Rossi','Marionhrt3','mariorosgdsi@gmail.com','GC',NULL,NULL),(42,'Patrizia','Verdi','Patrhtrisazi4','patrizigdsavdi@gmail.com','GC',NULL,NULL),(43,'Domenico','Neri','Domenic0htr','domenidsconei@gmail.com','GC',NULL,NULL),(44,'Paola','Viola','Paolett4wea','paolCKSCiola@gmail.com','GC',NULL,NULL),(45,'Fabrizio','Vitalizio','FabriVcsait4','FabVitADSADal@gmail.com','GD',NULL,2),(46,'Cristina','Bacchiello','CriBacchdsai11','CrFDSiBacchi1@gmail.com','GD',NULL,3),(47,'Chiara','Zucca','Chia23r4','ChiaraaaDSA2@gmail.com','GE',2,NULL),(48,'Mario','Rossi','Mariovbjn3','mariorosiWQ@gmail.com','GE',2,NULL),(49,'Patrizia','Verdi','rfds32','patrizi2132avdi@gmail.com','GE',2,NULL),(50,'Domenico','Neri','Domendfic0','domenicone432i@gmail.com','GC',NULL,NULL),(51,'Paola','Viola','Paogerlett4','paolfdsfio123la@gmail.com','GC',NULL,NULL),(52,'Fabrizio','Vitalizio','FabriVit4','FabVfsDSAFDsfital@gmail.com','GC',NULL,NULL);
/*!40000 ALTER TABLE `gestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifica_soglia`
--

DROP TABLE IF EXISTS `modifica_soglia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modifica_soglia` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDgestore` int(10) unsigned NOT NULL,
  `IDsensore` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDsensore` (`IDsensore`),
  KEY `IDgestore` (`IDgestore`),
  CONSTRAINT `modifica_soglia_ibfk_1` FOREIGN KEY (`IDsensore`) REFERENCES `sensore` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `modifica_soglia_ibfk_2` FOREIGN KEY (`IDgestore`) REFERENCES `gestore` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifica_soglia`
--

LOCK TABLES `modifica_soglia` WRITE;
/*!40000 ALTER TABLE `modifica_soglia` DISABLE KEYS */;
/*!40000 ALTER TABLE `modifica_soglia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segnale`
--

DROP TABLE IF EXISTS `segnale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segnale` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `valore` int(11) NOT NULL,
  `data_s` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDsensore` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_sensore` (`IDsensore`),
  CONSTRAINT `id_sensore` FOREIGN KEY (`IDsensore`) REFERENCES `sensore` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segnale`
--

LOCK TABLES `segnale` WRITE;
/*!40000 ALTER TABLE `segnale` DISABLE KEYS */;
INSERT INTO `segnale` VALUES (1,20,'2018-10-21 22:00:00',12),(2,1222,'2018-10-24 22:00:00',7),(3,1100,'2018-10-28 23:00:00',8),(4,20,'2018-10-30 23:00:00',10),(5,18,'2018-11-21 23:00:00',3),(6,1500,'2018-11-21 23:00:00',9),(7,60,'2018-11-21 23:00:00',4),(8,55,'2018-11-21 23:00:00',5),(9,50,'2018-12-21 23:00:00',5),(10,18,'2018-12-21 23:00:00',6),(11,43,'2018-12-21 23:00:00',4),(12,55,'2018-12-21 23:00:00',2);
/*!40000 ALTER TABLE `segnale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensore`
--

DROP TABLE IF EXISTS `sensore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensore` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frequenza` float NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `lower_bound` float NOT NULL,
  `upper_bound` float NOT NULL,
  `IDarea` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_area` (`IDarea`),
  CONSTRAINT `id_area` FOREIGN KEY (`IDarea`) REFERENCES `area` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensore`
--

LOCK TABLES `sensore` WRITE;
/*!40000 ALTER TABLE `sensore` DISABLE KEYS */;
INSERT INTO `sensore` VALUES (1,60,'umidita',20,60,4),(2,30,'umidita',20,60,8),(3,26,'umidita',20,60,11),(4,12,'temperatura',15,20.4,13),(5,18,'temperatura',15,22.4,9),(6,10,'temperatura',20,60,8),(7,60,'pressione',1000,1500,5),(8,60,'pressione',800,1000,3),(9,60,'pressione',800,1200,10),(10,12,'luminosità',30,80,5),(11,60,'luminosità',20,60,2),(12,44,'luminosità',50,60,3);
/*!40000 ALTER TABLE `sensore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'edashboard'
--

--
-- Dumping routines for database 'edashboard'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-22 20:42:00
