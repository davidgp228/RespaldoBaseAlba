-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: WGPS
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
-- Table structure for table `AccessPoint`
--

DROP TABLE IF EXISTS `AccessPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccessPoint` (
  `idAccessPoint` int(11) NOT NULL AUTO_INCREMENT,
  `fkempresa` int(11) NOT NULL,
  `fkusuario` int(11) NOT NULL,
  `SSID` varchar(40) DEFAULT NULL,
  `BSSID` varchar(40) NOT NULL,
  `Longitud` double DEFAULT NULL,
  `Latitud` double DEFAULT NULL,
  `Altitud` double DEFAULT NULL,
  `Potencia` double DEFAULT NULL,
  `Packloss` int(11) DEFAULT NULL,
  `Canal` int(11) DEFAULT NULL,
  `Frecuencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAccessPoint`),
  UNIQUE KEY `BSSID` (`BSSID`),
  KEY `fkempresa` (`fkempresa`),
  KEY `fkusuario` (`fkusuario`),
  CONSTRAINT `AccessPoint_ibfk_1` FOREIGN KEY (`fkempresa`) REFERENCES `Empresa` (`idEmpresa`),
  CONSTRAINT `AccessPoint_ibfk_2` FOREIGN KEY (`fkusuario`) REFERENCES `Usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccessPoint`
--

LOCK TABLES `AccessPoint` WRITE;
/*!40000 ALTER TABLE `AccessPoint` DISABLE KEYS */;
INSERT INTO `AccessPoint` VALUES (4,1,2,'5ECF7F19C6CF','5e:cf:7f:19:c6:cf',-98.23374968022108,19.173204533775014,2300,2,3,1,2412),(5,1,2,'5ECF7F19BD9D','5e:cf:7f:19:bd:9d',-98.23367893695831,19.173169699149213,2300,2,1,1,2412),(8,1,2,'5ECF7F19C696','5e:cf:7f:19:c6:96',-98.23360249400139,19.173271669578487,2300,2,3,1,2412),(9,1,2,'5ECF7FC349D1','5e:cf:7f:c3:49:d1',-98.23367089033127,19.173321388056834,2300,2,3,1,2412),(18,1,2,'TP-LINK_54C6','c4:e9:84:fa:54:c6*',-98.23377382010221,19.173213717447858,2300,2,3,4,2427),(19,1,2,'INFINITUM0876','a8:d3:f7:45:a2:ec*',-98.23356125503778,19.173381873573963,2300,2,3,11,2462),(20,1,2,'INFINITUM3200_2.4','d4:63:fe:90:5b:74*',-98.23356226086617,19.17342842523956,2300,2,2,1,2412),(33,2,3,'CP-Production','00:42:68:3e:b5:6f',-66.1555514484644,18.431047195548942,0,2,3,0,0),(34,2,3,'CP-Production','00:78:88:d7:72:6f',-66.15578345954418,18.430987817934337,0,2,3,0,0),(35,2,3,'CP-Production','00:78:88:bf:b0:2f',-66.15543343126774,18.43108408163251,0,2,3,0,0),(41,2,3,'CP-Production','00:78:88:bf:71:00',-66.15577340126038,18.430994115561102,0,2,3,1,2412),(42,2,3,'CP-Production','00:42:68:9c:3c:7f',-66.15547969937325,18.430964426747206,0,2,3,0,0),(43,2,3,'CP-Production','00:42:68:74:85:4f',-66.15540526807308,18.430981520307355,0,2,3,0,0);
/*!40000 ALTER TABLE `AccessPoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dispositivos`
--

DROP TABLE IF EXISTS `Dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dispositivos` (
  `idDispositivo` int(11) NOT NULL AUTO_INCREMENT,
  `fkempresa` int(11) NOT NULL,
  `MAC` varchar(50) DEFAULT NULL,
  `Longitud` double DEFAULT NULL,
  `Latitud` double DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `fuente` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idDispositivo`),
  KEY `fkempresa` (`fkempresa`),
  CONSTRAINT `Dispositivos_ibfk_1` FOREIGN KEY (`fkempresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dispositivos`
--

LOCK TABLES `Dispositivos` WRITE;
/*!40000 ALTER TABLE `Dispositivos` DISABLE KEYS */;
INSERT INTO `Dispositivos` VALUES (1,1,'5C:CF:7F:C2:A4:3E',-98.2336654663086,19.17328453063965,'2017-12-01 22:26:52','WIFI'),(4,2,'5C:CF:7F:C2:A4:F1',-66.15577697753906,18.430994033813477,'2017-12-22 19:43:14','WIFI'),(5,2,'5C:CF:7F:C3:46:80',-66.1559829711914,18.43096923828125,'2017-12-19 20:51:29','GPS'),(6,1,'5C:CF:7F:C2:A1:AE',-98.23348999023438,19.173377990722656,'2017-12-16 21:22:37','GPS'),(7,1,'18:FE:34:99:33:C9\r',-98,19,'2018-01-04 16:11:22','GPS');
/*!40000 ALTER TABLE `Dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empresa` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (1,'Alba','desarrollo'),(2,'puerto rico','desarrollo');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `fkempresa` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Contrasena` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fkempresa` (`fkempresa`),
  CONSTRAINT `Usuarios_ibfk_1` FOREIGN KEY (`fkempresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,1,'david','david'),(2,1,'felix','felix'),(3,2,'puertorico','puertorico');
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

-- Dump completed on 2018-09-28 11:17:39
