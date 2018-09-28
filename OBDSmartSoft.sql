-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: OBDSmartSoft
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `Datos`
--

DROP TABLE IF EXISTS `Datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Datos` (
  `IdDato` int(11) NOT NULL AUTO_INCREMENT,
  `FkDispositivo` int(11) NOT NULL,
  `dato` char(1) NOT NULL,
  PRIMARY KEY (`IdDato`),
  KEY `FkDispositivo` (`FkDispositivo`),
  CONSTRAINT `Datos_ibfk_1` FOREIGN KEY (`FkDispositivo`) REFERENCES `device` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Datos`
--

LOCK TABLES `Datos` WRITE;
/*!40000 ALTER TABLE `Datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  `ApellidoPat` varchar(40) DEFAULT NULL,
  `ApellidoMat` varchar(40) DEFAULT NULL,
  `Correo` varchar(80) NOT NULL,
  `Contrasena` varchar(80) NOT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (2,'david','glez','ponce','david','172522ec1028ab781d9dfd17eaca4427'),(3,'usuario','usuario','usuario','usuario','f8032d5cae3de20fcec887f395ec9a6a'),(4,'dgp','dgp','dgp','davidgp228@gmail.com','172522ec1028ab781d9dfd17eaca4427');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` int(11) NOT NULL DEFAULT '1',
  `adc` int(11) DEFAULT NULL,
  `volts` float DEFAULT NULL,
  `relation` float DEFAULT NULL,
  `capture` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idpac` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idpac` (`idpac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,498,9.05,0.0181727,'2017-06-28 17:54:06','2017-06-28 17:54:08','4DA897'),(2,715,12.72,0.0177902,'2017-06-29 18:25:15','2017-06-29 18:25:15','4DA871'),(3,719,13.13,0.0182614,'2017-07-06 15:36:40','2017-07-06 15:36:40','4DA872'),(4,714,13,0.0182072,'2017-07-06 15:36:40','2017-07-06 15:36:40','4DA86D'),(5,727,13.09,0.0180055,'2017-07-06 15:36:40','2017-07-06 15:36:40','4DA86E'),(6,1200,12,0.01,'2017-09-10 20:45:30','2017-09-10 20:45:30','2C055E'),(7,1200,12,0.01,'2017-09-10 20:45:30','2017-09-10 20:45:30','2C017C'),(8,1200,12,0.01,'2017-09-10 20:45:30','2017-09-10 20:45:30','2C0562');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-28 11:10:19
