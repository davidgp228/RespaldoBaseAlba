-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: Jefes
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
-- Table structure for table `Asignar`
--

DROP TABLE IF EXISTS `Asignar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Asignar` (
  `idAsignar` int(11) NOT NULL AUTO_INCREMENT,
  `fkUsuario` int(11) NOT NULL,
  `fkDispositivo` int(11) NOT NULL,
  PRIMARY KEY (`idAsignar`),
  KEY `fkUsuario` (`fkUsuario`),
  KEY `fkDispositivo` (`fkDispositivo`),
  CONSTRAINT `Asignar_ibfk_1` FOREIGN KEY (`fkUsuario`) REFERENCES `Usuarios` (`idusuario`),
  CONSTRAINT `Asignar_ibfk_2` FOREIGN KEY (`fkDispositivo`) REFERENCES `Dispositivos` (`idDispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignar`
--

LOCK TABLES `Asignar` WRITE;
/*!40000 ALTER TABLE `Asignar` DISABLE KEYS */;
INSERT INTO `Asignar` VALUES (1,1,1),(2,1,2),(3,2,1);
/*!40000 ALTER TABLE `Asignar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dispositivos`
--

DROP TABLE IF EXISTS `Dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dispositivos` (
  `idDispositivo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idDispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dispositivos`
--

LOCK TABLES `Dispositivos` WRITE;
/*!40000 ALTER TABLE `Dispositivos` DISABLE KEYS */;
INSERT INTO `Dispositivos` VALUES (1,'123',1),(2,'321',NULL),(3,'3E7DAE',1);
/*!40000 ALTER TABLE `Dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jefes`
--

DROP TABLE IF EXISTS `Jefes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jefes` (
  `idjefe` int(11) NOT NULL AUTO_INCREMENT,
  `fkDispositivo` int(11) DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `auxiliar` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idjefe`),
  KEY `fkDispositivo` (`fkDispositivo`),
  CONSTRAINT `Jefes_ibfk_1` FOREIGN KEY (`fkDispositivo`) REFERENCES `Dispositivos` (`idDispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jefes`
--

LOCK TABLES `Jefes` WRITE;
/*!40000 ALTER TABLE `Jefes` DISABLE KEYS */;
INSERT INTO `Jefes` VALUES (1,1,19.173658,-98.233383,'2017-11-01 01:33:20',NULL),(2,2,19.151613,-98.223701,'2017-11-01 01:33:51',NULL),(3,2,19.151613,-98.223701,'2017-11-01 01:36:03',NULL);
/*!40000 ALTER TABLE `Jefes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Contrasena` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'david','david'),(2,'admin','admin');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-28 11:08:54
