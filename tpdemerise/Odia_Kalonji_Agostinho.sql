CREATE DATABASE  IF NOT EXISTS `gestionsalarie` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionsalarie`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: gestionsalarie
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '4f79e334-c30e-11f0-8063-f43909e127e4:1-355';

--
-- Table structure for table `competences`
--

DROP TABLE IF EXISTS `competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competences` (
  `idcomp` int NOT NULL AUTO_INCREMENT,
  `intcomp` varchar(45) NOT NULL,
  PRIMARY KEY (`idcomp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competences`
--

LOCK TABLES `competences` WRITE;
/*!40000 ALTER TABLE `competences` DISABLE KEYS */;
/*!40000 ALTER TABLE `competences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivcomp`
--

DROP TABLE IF EXISTS `nivcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivcomp` (
  `codeNiv` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(45) NOT NULL,
  PRIMARY KEY (`codeNiv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivcomp`
--

LOCK TABLES `nivcomp` WRITE;
/*!40000 ALTER TABLE `nivcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivcomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `numPost` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(45) NOT NULL,
  PRIMARY KEY (`numPost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `numsal` int NOT NULL,
  `nomsal` varchar(45) NOT NULL,
  `prenomsal` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `DateEmb` date NOT NULL,
  `DateNais` date NOT NULL,
  PRIMARY KEY (`numsal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (1,'Mukendi','Jean','Masculin','2018-09-01','1990-04-12'),(2,'Tshibola','Marie','Féminin','2019-10-15','1992-07-25'),(3,'Kalala','Patrick','Masculin','2017-08-20','1988-01-10'),(4,'Mbuyi','Esther','Féminin','2020-11-05','1995-03-30'),(5,'Ilunga','Daniel','Masculin','2016-07-01','1987-09-18'),(6,'Kabeya','Grace','Féminin','2018-09-10','1991-12-14'),(7,'Banza','Samuel','Masculin','2019-10-01','1993-06-05'),(8,'Lufungula','Chantal','Féminin','2021-01-15','1996-08-22'),(9,'Mutombo','Alain','Masculin','2017-09-01','1989-02-09'),(10,'Kanku','Nathalie','Féminin','2020-10-10','1994-05-17'),(11,'Ngoy','Joseph','Masculin','2018-09-05','1990-11-03'),(12,'Lwamba','Brigitte','Féminin','2019-09-20','1992-01-27'),(13,'Mayele','Claude','Masculin','2016-08-01','1986-06-14'),(14,'Mpoyi','Deborah','Féminin','2021-02-01','1997-04-09'),(15,'Kabila','Michel','Masculin','2017-09-10','1988-12-19'),(16,'Bimpa','Rachel','Féminin','2020-11-02','1995-07-28'),(17,'Malanda','Eric','Masculin','2019-10-05','1991-03-15'),(18,'Muanza','Sarah','Féminin','2018-09-12','1990-08-11'),(19,'Kifukula','David','Masculin','2016-07-15','1987-10-07'),(20,'Kazadi','Judith','Féminin','2021-01-20','1998-02-02'),(21,'Mwilambwe','Aimé','Masculin','2017-09-01','1989-05-21'),(22,'Matondo','Florence','Féminin','2018-10-01','1991-09-13'),(23,'Lukusa','Roger','Masculin','2016-06-10','1986-01-30'),(24,'Mukeba','Pauline','Féminin','2019-10-10','1993-12-08'),(25,'Kimwenza','Henri','Masculin','2020-11-05','1994-07-17'),(26,'Kanku','Aline','Féminin','2020-10-01','1995-06-11'),(27,'Badianga','Joel','Masculin','2019-09-15','1992-08-29'),(28,'Mulemba','Irène','Féminin','2021-02-10','1996-03-04'),(29,'Tshilombo','Alexandre','Masculin','2017-08-01','1989-01-18'),(30,'Kasongo','Noella','Féminin','2020-10-20','1994-11-26'),(31,'Kabongo','Cedric','Masculin','2018-09-03','1991-02-14'),(32,'Nsumbu','Patricia','Féminin','2021-01-25','1997-09-09'),(33,'Lutumba','Christian','Masculin','2017-09-10','1988-06-23'),(34,'Mpiana','Clarisse','Féminin','2020-11-01','1995-04-02'),(35,'Ngandu','Francois','Masculin','2016-07-20','1987-12-30'),(36,'Mavinga','Solange','Féminin','2019-09-10','1992-05-05'),(37,'Kabasele','Jonathan','Masculin','2020-01-05','1993-07-19'),(38,'Kalombo','Rebecca','Féminin','2021-03-01','1996-10-10'),(39,'Banza','Yannick','Masculin','2017-08-15','1989-03-27'),(40,'Ilunga','Estelle','Féminin','2020-10-10','1994-08-08'),(41,'Mubiala','Serge','Masculin','2017-09-01','1988-11-11'),(42,'Kabila','Sarah','Féminin','2020-11-15','1995-02-16'),(43,'Mukoko','Blaise','Masculin','2018-09-05','1990-06-30'),(44,'Lumingu','Grace','Féminin','2021-01-10','1997-01-07'),(45,'Tshimanga','Patrick','Masculin','2016-08-01','1986-09-22'),(46,'Lukombo','Stella','Féminin','2019-10-01','1993-03-03'),(47,'Mokili','Aristide','Masculin','2017-09-20','1989-12-12'),(48,'Kanyinda','Angelique','Féminin','2021-02-05','1996-05-18'),(49,'Mubenga','Jeremie','Masculin','2019-09-01','1992-10-06'),(50,'Tshibangu','Christine','Féminin','2020-11-01','1995-07-14'),(51,'Kabeya','Patrick','Masculin','2016-06-01','1987-01-01'),(52,'Ngoma','Linda','Féminin','2021-01-10','1996-04-04'),(53,'Kanku','Eric','Masculin','2018-10-01','1991-09-09'),(54,'Kalume','Alice','Féminin','2021-02-20','1997-06-06'),(55,'Bongeli','Dieudonne','Masculin','2017-09-01','1988-08-08'),(56,'Makiese','Paul','Masculin','2018-09-01','1990-03-15'),(57,'Nsanga','Chimene','Féminin','2020-11-10','1995-12-21'),(58,'Luyeye','Gaston','Masculin','2016-07-01','1986-05-09'),(59,'Mulumba','Caroline','Féminin','2020-10-01','1994-02-02'),(60,'Mukuna','Junior','Masculin','2019-10-01','1993-11-11'),(61,'Kabasele','Michel','Masculin','2017-09-01','1989-04-14'),(62,'Lufuma','Pauline','Féminin','2020-10-15','1995-06-22'),(63,'Mbuyamba','Alexis','Masculin','2018-09-10','1991-01-10'),(64,'Kabongo','Vanessa','Féminin','2021-02-01','1996-03-19'),(65,'Ilunga','Robert','Masculin','2016-07-01','1987-08-05'),(66,'Mutombo','Carine','Féminin','2020-11-01','1994-12-09'),(67,'Ngoy','Didier','Masculin','2018-09-05','1990-06-30'),(68,'Kasongo','Prisca','Féminin','2021-01-20','1997-02-17'),(69,'Banza','Cedric','Masculin','2017-09-01','1988-11-11'),(70,'Kanku','Aurelie','Féminin','2020-10-10','1995-09-03'),(71,'Lutumba','Emmanuel','Masculin','2016-06-15','1986-05-25'),(72,'Mavinga','Helene','Féminin','2019-10-01','1993-07-07'),(73,'Mukuna','Fabrice','Masculin','2019-09-01','1992-10-18'),(74,'Tshimanga','Diane','Féminin','2021-02-10','1996-01-12'),(75,'Kalombo','Vincent','Masculin','2017-08-20','1989-03-29'),(76,'Kibonge','Josiane','Féminin','2020-10-01','1994-05-16'),(77,'Mubenga','Olivier','Masculin','2018-09-15','1991-09-24'),(78,'Nsumbu','Claudine','Féminin','2021-03-01','1997-11-05'),(79,'Mayele','Jean-Pierre','Masculin','2016-07-01','1987-02-02'),(80,'Mukeba','Sandrine','Féminin','2020-11-01','1995-08-27'),(81,'Kabeya','Bernard','Masculin','2017-09-10','1988-12-12'),(82,'Luyeye','Monique','Féminin','2019-10-05','1993-04-06'),(83,'Tshibola','Yves','Masculin','2018-09-01','1990-07-19'),(84,'Kalume','Noemie','Féminin','2021-02-15','1996-06-14'),(85,'Ngandu','Andre','Masculin','2016-08-01','1986-10-30'),(86,'Mokili','Amandine','Féminin','2020-10-10','1994-02-11'),(87,'Mukoko','Christian','Masculin','2017-09-01','1989-09-09'),(88,'Kanyinda','Judicael','Masculin','2019-09-20','1992-03-03'),(89,'Muanza','Flavie','Féminin','2021-01-25','1997-01-18'),(90,'Lukombo','Prosper','Masculin','2016-07-15','1987-06-06'),(91,'Bimpa','Stella','Féminin','2020-11-10','1995-12-02'),(92,'Kabinda','Jacques','Masculin','2017-09-01','1988-01-23'),(93,'Mulumba','Patience','Féminin','2021-02-01','1996-09-17'),(94,'Mukendi','Samuel','Masculin','2018-09-05','1991-05-05'),(95,'Tshilombo','Clarisse','Féminin','2020-10-01','1994-03-28'),(96,'Ngoma','Benjamin','Masculin','2017-09-20','1989-11-15'),(97,'Kalala','Rosette','Féminin','2021-03-01','1997-08-08'),(98,'Kasanda','Freddy','Masculin','2019-09-01','1992-02-14'),(99,'Lwamba','Estelle','Féminin','2020-10-15','1995-04-04'),(100,'Bongeli','Moise','Masculin','2016-06-01','1986-07-07');
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-16 21:41:44
