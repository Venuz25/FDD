CREATE DATABASE  IF NOT EXISTS `cbb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cbb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cbb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `asisten`
--

DROP TABLE IF EXISTS `asisten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asisten` (
  `NomBorr` varchar(30) NOT NULL,
  `NomBar` varchar(30) NOT NULL,
  PRIMARY KEY (`NomBorr`,`NomBar`),
  KEY `NomBar` (`NomBar`),
  CONSTRAINT `asisten_ibfk_1` FOREIGN KEY (`NomBorr`) REFERENCES `borrachos` (`NomBorr`),
  CONSTRAINT `asisten_ibfk_2` FOREIGN KEY (`NomBar`) REFERENCES `bares` (`NomBar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asisten`
--

LOCK TABLES `asisten` WRITE;
/*!40000 ALTER TABLE `asisten` DISABLE KEYS */;
INSERT INTO `asisten` VALUES ('Odera','El Recuerdo'),('Sadoc','El Recuerdo'),('Carola','La Mancha'),('Diego','La Mancha'),('Odera','La Mancha'),('Sadoc','La Mancha'),('Safira','La Mancha'),('Ubaldo','La Mancha'),('Carola','Olvido'),('Diego','Olvido'),('Sadoc','Olvido'),('Safira','Olvido'),('Ubaldo','Olvido');
/*!40000 ALTER TABLE `asisten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bares`
--

DROP TABLE IF EXISTS `bares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bares` (
  `NomBar` varchar(30) NOT NULL,
  `Zona` varchar(20) DEFAULT NULL,
  `TipoBar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NomBar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bares`
--

LOCK TABLES `bares` WRITE;
/*!40000 ALTER TABLE `bares` DISABLE KEYS */;
INSERT INTO `bares` VALUES ('El recuerdo','Rosa','Familiar'),('La Mancha','Lindavista','Familiar'),('Olvido','Roma','Familiar');
/*!40000 ALTER TABLE `bares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrachos`
--

DROP TABLE IF EXISTS `borrachos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrachos` (
  `NomBorr` varchar(30) NOT NULL,
  `Edad` int DEFAULT NULL,
  `TipoBorr` varchar(20) DEFAULT NULL,
  `Profesion` varchar(10) DEFAULT NULL,
  `Sexo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`NomBorr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrachos`
--

LOCK TABLES `borrachos` WRITE;
/*!40000 ALTER TABLE `borrachos` DISABLE KEYS */;
INSERT INTO `borrachos` VALUES ('Carola',23,'Alegre','ISC','M'),('Diego',18,'Dormilon','CP','H'),('Odera',21,'Nostalgico','ISC','M'),('Sadoc',27,'Dormilon','ARQ','H'),('Safira',24,'Mala copa','ARQ','M'),('Ubaldo',19,'Mala copa','ISC','H');
/*!40000 ALTER TABLE `borrachos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cervezas`
--

DROP TABLE IF EXISTS `cervezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cervezas` (
  `Marca` varchar(30) NOT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Tamanio` int DEFAULT NULL,
  `Precio` float DEFAULT NULL,
  `Cia` varchar(20) DEFAULT NULL,
  `gGL` float DEFAULT NULL,
  PRIMARY KEY (`Marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cervezas`
--

LOCK TABLES `cervezas` WRITE;
/*!40000 ALTER TABLE `cervezas` DISABLE KEYS */;
INSERT INTO `cervezas` VALUES ('Bud Light','Dorado',450,25,'Modelo',5),('Corona Extra','Rojo',300,12,'Modelo',5.5),('Montejo','Dorado',1000,15,'Modelo',4),('Negra Modelo','Oscura',500,18,'Modelo',6),('Sol Cero','Clara',355,12,'Cuahtemoc',0.5),('Sol Rojo','Rojo',355,17,'Cuahtemoc',2.5),('Superior','Clara',355,15,'Cuahtemoc',4.5),('Tecate','Clara',355,12,'Cuahtemoc',4.5),('Tecate Light','Dorado',500,17,'Cuahtemoc',4),('Tecate Titanium','Clara',355,15,'Cuahtemoc',5.5),('Victoria','Oscura',350,20,'Modelo',5);
/*!40000 ALTER TABLE `cervezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumen`
--

DROP TABLE IF EXISTS `consumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumen` (
  `Marca` varchar(30) NOT NULL,
  `NomBorr` varchar(30) NOT NULL,
  PRIMARY KEY (`Marca`,`NomBorr`),
  KEY `NomBorr` (`NomBorr`),
  CONSTRAINT `consumen_ibfk_1` FOREIGN KEY (`Marca`) REFERENCES `cervezas` (`Marca`),
  CONSTRAINT `consumen_ibfk_2` FOREIGN KEY (`NomBorr`) REFERENCES `borrachos` (`NomBorr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumen`
--

LOCK TABLES `consumen` WRITE;
/*!40000 ALTER TABLE `consumen` DISABLE KEYS */;
INSERT INTO `consumen` VALUES ('Corona Extra','Carola'),('Montejo','Carola'),('Bud Light','Diego'),('Corona Extra','Diego'),('Montejo','Diego'),('Negra Modelo','Diego'),('Victoria','Diego'),('Sol Cero','Odera'),('Sol Rojo','Odera'),('Superior','Odera'),('Tecate','Odera'),('Tecate Light','Odera'),('Tecate Titanium','Odera'),('Bud Light','Sadoc'),('Sol Rojo','Sadoc'),('Negra Modelo','Safira'),('Tecate','Safira'),('Superior','Ubaldo'),('Victoria','Ubaldo');
/*!40000 ALTER TABLE `consumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venden`
--

DROP TABLE IF EXISTS `venden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venden` (
  `Marca` varchar(30) NOT NULL,
  `NomBar` varchar(30) NOT NULL,
  PRIMARY KEY (`Marca`,`NomBar`),
  KEY `NomBar` (`NomBar`),
  CONSTRAINT `venden_ibfk_1` FOREIGN KEY (`Marca`) REFERENCES `cervezas` (`Marca`),
  CONSTRAINT `venden_ibfk_2` FOREIGN KEY (`NomBar`) REFERENCES `bares` (`NomBar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venden`
--

LOCK TABLES `venden` WRITE;
/*!40000 ALTER TABLE `venden` DISABLE KEYS */;
INSERT INTO `venden` VALUES ('Sol Cero','El recuerdo'),('Sol Rojo','El recuerdo'),('Superior','El recuerdo'),('Montejo','La Mancha'),('Sol Cero','La Mancha'),('Sol Rojo','La Mancha'),('Superior','La Mancha'),('Tecate','La Mancha'),('Tecate Light','La Mancha'),('Tecate Titanium','La Mancha'),('Bud Light','Olvido'),('Corona Extra','Olvido'),('Montejo','Olvido'),('Negra Modelo','Olvido'),('Victoria','Olvido');
/*!40000 ALTER TABLE `venden` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 15:01:23
