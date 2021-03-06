-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: Llaveros
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
-- Table structure for table `Dispositivos`
--

DROP TABLE IF EXISTS `Dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dispositivos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IMEI` varchar(20) NOT NULL,
  `Nombre` varchar(80) DEFAULT NULL,
  `ApellidoP` varchar(80) DEFAULT NULL,
  `ApellidoM` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dispositivos`
--

LOCK TABLES `Dispositivos` WRITE;
/*!40000 ALTER TABLE `Dispositivos` DISABLE KEYS */;
INSERT INTO `Dispositivos` VALUES (1,'863584036827847','USUARIO','USUARIO','USUARIO'),(2,'863584036827848',NULL,NULL,NULL),(3,'123',NULL,NULL,NULL),(4,'864369036281883',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Eventos`
--

DROP TABLE IF EXISTS `Eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Eventos` (
  `IdEvento` int(11) NOT NULL AUTO_INCREMENT,
  `FkIMEI` int(11) NOT NULL,
  `GPS` varchar(50) DEFAULT NULL,
  `GSM` varchar(50) DEFAULT NULL,
  `Hora` varchar(50) DEFAULT NULL,
  `Fecha` varchar(50) DEFAULT NULL,
  `Frecuencia` varchar(50) DEFAULT NULL,
  `Indice` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEvento`),
  KEY `FkIMEI` (`FkIMEI`),
  CONSTRAINT `Eventos_ibfk_1` FOREIGN KEY (`FkIMEI`) REFERENCES `Dispositivos` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eventos`
--

LOCK TABLES `Eventos` WRITE;
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
INSERT INTO `Eventos` VALUES (8,1,'NO,DATA','-98.236771,19.177153','07:26:5','2017/07/07',NULL,NULL),(9,1,'NO,DATA','-98.26162216666667,19.1376595','07:26:5','2017/07/07',NULL,NULL),(10,1,'NO,DATA','-98.24681433333333,19.136500166666668','07:26:5','2017/07/07',NULL,NULL),(11,1,'NO,DATA','-98.26192066666667,19.138062333333334','07:26:5','2017/07/07',NULL,NULL),(12,1,'NO,DATA','-98.26148883333333,19.138455166666667','07:26:5','2017/07/07',NULL,NULL),(13,1,'1910.39316,N','noGsmLoc','W','09814.01414',NULL,NULL),(14,3,'NO,DATA','-98.26148883333333,19.138455166666667,1,1','1','1',NULL,4),(15,3,'NO,DATA','-98.26148883333333,19.138455166666667,1,1','1','1',NULL,4),(16,4,'1910.41678,N','1910.41678,N,09814.00913,W','W','09814.00913',NULL,0),(17,4,'1910.41679,N','1910.41679,N,09814.00912,W','W','09814.00912',NULL,1),(18,4,'1910.41678,N','1910.41678,N,09814.00913,W','W','09814.00913',NULL,-1),(19,4,'1910.41422,N','1910.41422,N,09814.01241,W','W','09814.01241',NULL,2),(20,4,'1910.41421,N','1910.41421,N,09814.01242,W','W','09814.01242',NULL,3),(21,4,'1910.41603,N','1910.41603,N,09814.01112,W','W','09814.01112',NULL,4),(22,4,'1910.41678,N','1910.41678,N,09814.00913,W','W','09814.00913',NULL,-1),(23,4,'1910.41374,N','1910.41374,N,09814.00636,W','W','09814.00636',NULL,0),(24,4,'1910.41374,N','1910.41374,N,09814.00637,W','W','09814.00637',NULL,1),(25,4,'1910.41334,N','1910.41334,N,09814.00795,W','W','09814.00795',NULL,2),(26,4,'1910.41334,N','1910.41334,N,09814.00795,W','W','09814.00795',NULL,3),(27,4,'1910.40744,N','1910.40744,N,09813.99848,W','W','09813.99848',NULL,0),(28,4,'1910.40740,N','1910.40740,N,09813.99843,W','W','09813.99843',NULL,1),(29,4,'1910.40740,N','1910.40740,N,09813.99843,W','W','09813.99843',NULL,1),(30,4,'1909.97154,N','1909.97154,N,09813.64560,W','W','09813.64560',NULL,2),(31,4,'1909.97077,N','1909.97077,N,09813.64533,W','W','09813.64533',NULL,3),(32,4,'1909.48736,N','1909.48736,N,09813.46433,W','W','09813.46433',NULL,4),(33,4,'1909.48747,N','1909.48747,N,09813.46433,W','W','09813.46433',NULL,5),(34,4,'1909.50155,N','1909.50155,N,09813.47765,W','W','09813.47765',NULL,6),(35,4,'1909.49371,N','1909.49371,N,09813.47746,W','W','09813.47746',NULL,7),(36,4,'1909.49370,N','1909.49370,N,09813.47746,W','W','09813.47746',NULL,8),(37,4,'1909.49480,N','1909.49480,N,09813.47738,W','W','09813.47738',NULL,9),(38,4,'1909.49481,N','1909.49481,N,09813.47739,W','W','09813.47739',NULL,10),(39,4,'1909.49684,N','1909.49684,N,09813.47736,W','W','09813.47736',NULL,11),(40,4,'1909.49684,N','1909.49684,N,09813.47736,W','W','09813.47736',NULL,12),(41,4,'1909.49792,N','1909.49792,N,09813.47827,W','W','09813.47827',NULL,13),(42,4,'1909.49662,N','1909.49662,N,09813.47994,W','W','09813.47994',NULL,14),(43,4,'1909.40853,N','1909.40853,N,09813.44088,W','W','09813.44088',NULL,15),(44,4,'1909.06367,N','1909.06367,N,09813.42372,W','W','09813.42372',NULL,16),(45,4,'1909.04962,N','1909.04962,N,09813.49153,W','W','09813.49153',NULL,17),(46,4,'1909.04960,N','1909.04960,N,09813.49185,W','W','09813.49185',NULL,18),(47,4,'1909.02772,N','1909.02772,N,09813.88492,W','W','09813.88492',NULL,19),(48,4,'1909.02731,N','1909.02731,N,09813.88541,W','W','09813.88541',NULL,20),(49,4,'1908.88343,N','1908.88343,N,09814.05354,W','W','09814.05354',NULL,21),(50,4,'1908.77825,N','1908.77825,N,09814.23776,W','W','09814.23776',NULL,22),(51,4,'1908.77809,N','1908.77809,N,09814.23807,W','W','09814.23807',NULL,23),(52,4,'1908.73035,N','1908.73035,N,09814.32985,W','W','09814.32985',NULL,24),(53,4,'1908.73014,N','1908.73014,N,09814.33025,W','W','09814.33025',NULL,25),(54,4,'1908.48251,N','1908.48251,N,09814.55604,W','W','09814.55604',NULL,26),(55,4,'1908.48208,N','1908.48208,N,09814.55633,W','W','09814.55633',NULL,27),(56,4,'1908.17321,N','1908.17321,N,09814.82078,W','W','09814.82078',NULL,28),(57,4,'1908.17282,N','1908.17282,N,09814.82117,W','W','09814.82117',NULL,29),(58,4,'1908.38262,N','1908.38262,N,09815.46129,W','W','09815.46129',NULL,30),(59,4,'1908.38293,N','1908.38293,N,09815.46194,W','W','09815.46194',NULL,31),(60,4,'1908.37639,N','1908.37639,N,09816.16708,W','W','09816.16708',NULL,32),(61,4,'1908.37552,N','1908.37552,N,09816.16746,W','W','09816.16746',NULL,33),(62,4,'1907.16219,N','1907.16219,N,09816.51356,W','W','09816.51356',NULL,34),(63,4,'1907.16095,N','1907.16095,N,09816.51407,W','W','09816.51407',NULL,35),(64,4,'1906.09886,N','1906.09886,N,09817.00995,W','W','09817.00995',NULL,36),(65,4,'1906.09886,N','1906.09886,N,09817.00995,W','W','09817.00995',NULL,36),(66,4,'1906.09776,N','1906.09776,N,09817.01080,W','W','09817.01080',NULL,37),(67,4,'1904.68310,N','1904.68310,N,09817.38483,W','W','09817.38483',NULL,38),(68,4,'1904.68190,N','1904.68190,N,09817.38439,W','W','09817.38439',NULL,39),(69,4,'1904.55362,N','1904.55362,N,09817.09651,W','W','09817.09651',NULL,40),(70,4,'1904.55368,N','1904.55368,N,09817.09567,W','W','09817.09567',NULL,41),(71,4,'1904.58776,N','1904.58776,N,09816.72954,W','W','09816.72954',NULL,42),(72,4,'1904.58780,N','1904.58780,N,09816.72903,W','W','09816.72903',NULL,43),(73,4,'1904.66828,N','1904.66828,N,09816.28063,W','W','09816.28063',NULL,44),(74,4,'1904.66858,N','1904.66858,N,09816.28063,W','W','09816.28063',NULL,45),(75,4,'1904.84867,N','1904.84867,N,09816.29273,W','W','09816.29273',NULL,46),(76,4,'1904.84867,N','1904.84867,N,09816.29273,W','W','09816.29273',NULL,47),(77,4,'1904.84866,N','1904.84866,N,09816.33744,W','W','09816.33744',NULL,48),(78,4,'1904.84867,N','1904.84867,N,09816.33757,W','W','09816.33757',NULL,49),(79,4,'1904.93381,N','1904.93381,N,09816.29738,W','W','09816.29738',NULL,50),(80,4,'1904.93380,N','1904.93380,N,09816.29739,W','W','09816.29739',NULL,51),(81,4,'1904.93151,N','1904.93151,N,09816.29884,W','W','09816.29884',NULL,52),(82,4,'1904.84739,N','1904.84739,N,09816.21519,W','W','09816.21519',NULL,53),(83,4,'1904.84741,N','1904.84741,N,09816.21513,W','W','09816.21513',NULL,54),(84,4,'1904.78864,N','1904.78864,N,09816.26093,W','W','09816.26093',NULL,55),(85,4,'1904.78864,N','1904.78864,N,09816.26139,W','W','09816.26139',NULL,56),(86,4,'1904.84738,N','1904.84738,N,09816.29591,W','W','09816.29591',NULL,57),(87,4,'1904.84738,N','1904.84738,N,09816.29591,W','W','09816.29591',NULL,58),(88,4,'1904.83972,N','1904.83972,N,09816.28224,W','W','09816.28224',NULL,0),(89,4,'1904.79410,N','1904.79410,N,09816.28158,W','W','09816.28158',NULL,0),(90,4,'1904.79394,N','1904.79394,N,09816.28158,W','W','09816.28158',NULL,1),(91,4,'1904.62254,N','1904.62254,N,09816.51174,W','W','09816.51174',NULL,2),(92,4,'1904.62242,N','1904.62242,N,09816.51279,W','W','09816.51279',NULL,3),(93,4,'1904.56307,N','1904.56307,N,09817.07197,W','W','09817.07197',NULL,4),(94,4,'1904.56296,N','1904.56296,N,09817.07295,W','W','09817.07295',NULL,5),(95,4,'1904.52067,N','1904.52067,N,09817.49758,W','W','09817.49758',NULL,6),(96,4,'1904.52067,N','1904.52067,N,09817.49758,W','W','09817.49758',NULL,7),(97,4,'1904.51253,N','1904.51253,N,09817.58525,W','W','09817.58525',NULL,8),(98,4,'1904.51253,N','1904.51253,N,09817.58526,W','W','09817.58526',NULL,9),(99,4,'1904.55680,N','1904.55680,N,09817.71915,W','W','09817.71915',NULL,10),(100,4,'1904.55687,N','1904.55687,N,09817.71916,W','W','09817.71916',NULL,11),(101,4,'1904.59502,N','1904.59502,N,09817.69602,W','W','09817.69602',NULL,0),(102,4,'1904.59495,N','1904.59495,N,09817.69596,W','W','09817.69596',NULL,1),(103,4,'1904.52483,N','1904.52483,N,09817.65406,W','W','09817.65406',NULL,2),(104,4,'1904.52483,N','1904.52483,N,09817.65406,W','W','09817.65406',NULL,3),(105,4,'1904.50641,N','1904.50641,N,09817.55895,W','W','09817.55895',NULL,4),(106,4,'1904.50648,N','1904.50648,N,09817.55803,W','W','09817.55803',NULL,5),(107,4,'1904.65940,N','1904.65940,N,09817.25309,W','W','09817.25309',NULL,6),(108,4,'1904.66071,N','1904.66071,N,09817.25370,W','W','09817.25370',NULL,7),(109,4,'1905.80669,N','1905.80669,N,09817.08923,W','W','09817.08923',NULL,8),(110,4,'1905.80832,N','1905.80832,N,09817.08919,W','W','09817.08919',NULL,9),(111,4,'1906.98517,N','1906.98517,N,09816.56974,W','W','09816.56974',NULL,10),(112,4,'1906.98643,N','1906.98643,N,09816.56922,W','W','09816.56922',NULL,11),(113,4,'1908.24052,N','1908.24052,N,09816.22188,W','W','09816.22188',NULL,12),(114,4,'1908.24052,N','1908.24052,N,09816.22188,W','W','09816.22188',NULL,12),(115,4,'1908.24205,N','1908.24205,N,09816.22120,W','W','09816.22120',NULL,13),(116,4,'1908.13398,N','1908.13398,N,09814.85342,W','W','09814.85342',NULL,14),(117,4,'1908.13421,N','1908.13421,N,09814.85319,W','W','09814.85319',NULL,15),(118,4,'1908.37012,N','1908.37012,N,09814.63471,W','W','09814.63471',NULL,16),(119,4,'1908.37021,N','1908.37021,N,09814.63463,W','W','09814.63463',NULL,17),(120,4,'1908.50637,N','1908.50637,N,09814.53492,W','W','09814.53492',NULL,18),(121,4,'1908.50664,N','1908.50664,N,09814.53470,W','W','09814.53470',NULL,19),(122,4,'1908.73584,N','1908.73584,N,09814.31588,W','W','09814.31588',NULL,20),(123,4,'1908.73606,N','1908.73606,N,09814.31536,W','W','09814.31536',NULL,21),(124,4,'1908.82476,N','1908.82476,N,09814.13604,W','W','09814.13604',NULL,22),(125,4,'1908.82494,N','1908.82494,N,09814.13560,W','W','09814.13560',NULL,23),(126,4,'1909.04053,N','1909.04053,N,09813.86245,W','W','09813.86245',NULL,24),(127,4,'1909.04089,N','1909.04089,N,09813.86187,W','W','09813.86187',NULL,25),(128,4,'1909.04695,N','1909.04695,N,09813.54395,W','W','09813.54395',NULL,26),(129,4,'1909.04697,N','1909.04697,N,09813.54357,W','W','09813.54357',NULL,27),(130,4,'1909.04791,N','1909.04791,N,09813.48333,W','W','09813.48333',NULL,28),(131,4,'1909.04792,N','1909.04792,N,09813.48334,W','W','09813.48334',NULL,29),(132,4,'1909.04757,N','1909.04757,N,09813.45142,W','W','09813.45142',NULL,30),(133,4,'1909.04757,N','1909.04757,N,09813.45142,W','W','09813.45142',NULL,31),(134,4,'1909.06994,N','1909.06994,N,09813.41858,W','W','09813.41858',NULL,32),(135,4,'1909.07047,N','1909.07047,N,09813.41854,W','W','09813.41854',NULL,33),(136,4,'1909.46389,N','1909.46389,N,09813.45980,W','W','09813.45980',NULL,34),(137,4,'1909.94096,N','1909.94096,N,09813.62545,W','W','09813.62545',NULL,35),(138,4,'1909.94139,N','1909.94139,N,09813.62560,W','W','09813.62560',NULL,36),(139,4,'1910.43062,N','1910.43062,N,09813.91511,W','W','09813.91511',NULL,37),(140,4,'1910.43086,N','1910.43086,N,09813.91539,W','W','09813.91539',NULL,38);
/*!40000 ALTER TABLE `Eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-28 11:09:16
