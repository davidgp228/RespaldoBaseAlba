-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: avistamientopruebas
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
-- Table structure for table `CasaReserva`
--

DROP TABLE IF EXISTS `CasaReserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CasaReserva` (
  `IdCasaReserva` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdCasa` varchar(50) DEFAULT NULL,
  `Folio` varchar(50) DEFAULT NULL,
  `TotalPersonas` varchar(50) DEFAULT NULL,
  `FechaVisita` timestamp NULL DEFAULT NULL,
  `FechaSalida` timestamp NULL DEFAULT NULL,
  `TotalCasas` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdCasaReserva`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CasaReserva`
--

LOCK TABLES `CasaReserva` WRITE;
/*!40000 ALTER TABLE `CasaReserva` DISABLE KEYS */;
INSERT INTO `CasaReserva` VALUES (26,'3','120','3','2017-06-18 05:00:00','2017-06-24 05:00:00',NULL),(28,'3','121','1','2017-06-26 05:00:00','2017-06-28 05:00:00',NULL),(197,'3','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',1),(198,'2','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',2),(199,'2','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',2),(204,'1','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',6),(205,'1','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',6),(206,'1','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',6),(207,'1','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',6),(208,'1','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',6),(209,'1','3','1','2017-06-17 05:00:00','2017-06-18 05:00:00',6),(210,'1','1','3','2017-09-20 05:00:00','2017-09-21 05:00:00',1),(211,'1','20','4','2017-06-17 05:00:00','2017-06-18 05:00:00',1),(212,'1','123','1','2017-06-24 05:00:00','2017-06-25 05:00:00',NULL),(213,'1','123','1','2017-06-24 05:00:00','2017-06-25 05:00:00',NULL),(214,'1','123','1','2017-06-24 05:00:00','2017-06-25 05:00:00',NULL),(215,'1','9','5','2017-06-18 05:00:00','2017-06-22 05:00:00',1),(216,'1','131','3','2017-07-16 05:00:00','2017-07-17 05:00:00',NULL),(217,'1','131','3','2017-07-16 05:00:00','2017-07-17 05:00:00',NULL),(218,'1','131','3','2017-07-16 05:00:00','2017-07-17 05:00:00',NULL),(219,'1','23','10','2017-06-24 05:00:00','2017-06-25 05:00:00',2),(220,'1','23','10','2017-06-24 05:00:00','2017-06-25 05:00:00',2);
/*!40000 ALTER TABLE `CasaReserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CasasCampana`
--

DROP TABLE IF EXISTS `CasasCampana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CasasCampana` (
  `idCasa` int(11) NOT NULL AUTO_INCREMENT,
  `FechaV` char(30) NOT NULL,
  `NumCasas` char(30) NOT NULL,
  `Disponibles` char(30) NOT NULL,
  `Capacidad` char(30) NOT NULL,
  `Costo` char(30) NOT NULL,
  PRIMARY KEY (`idCasa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CasasCampana`
--

LOCK TABLES `CasasCampana` WRITE;
/*!40000 ALTER TABLE `CasasCampana` DISABLE KEYS */;
INSERT INTO `CasasCampana` VALUES (1,'','6','6','5','120'),(2,'','2','2','4','120'),(3,'2','2','2','3','100');
/*!40000 ALTER TABLE `CasasCampana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clien`
--

DROP TABLE IF EXISTS `clien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clien` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `firstname` text,
  `secondname` text,
  `email` text,
  `telephone` text,
  `notifications` bit(1) DEFAULT b'0',
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `procedencia` text,
  `transporte` text,
  `enfermedad` text,
  `medicamento` text,
  `status` varchar(10) DEFAULT 'ACTIVO',
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clien`
--

LOCK TABLES `clien` WRITE;
/*!40000 ALTER TABLE `clien` DISABLE KEYS */;
INSERT INTO `clien` VALUES (1,'jesus','lorenzano','arellano','Nuevo','Nuevo','\0','2017-05-06 14:39:49','oaxaca','Requiero transporte','','','ACTIVO'),(2,'felix','diaz','santos','felixdiazsantos@gmail.com','229264','\0','2017-05-07 00:13:59','ver','Particular','','','ACTIVO'),(3,'Emiliano','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-08 16:58:25','Guadalupe','Requiero transporte','','','ACTIVO'),(4,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 00:42:28','Guadalupe','Particular','','','ACTIVO'),(5,'Jesus ','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:35:11','Guadalupe','Particular','','','ACTIVO'),(6,'Emiliano','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:36:57','Amatitlan','Requiero transporte','','','ACTIVO'),(7,'Emiliano','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:38:49','Huajuapan','Particular','','','ACTIVO'),(8,'Jesus','Emiliano','Lorenzano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:40:53','Oaxaca','Requiero transporte','','','ACTIVO'),(9,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:42:04','Tlaxacala','Particular','','','ACTIVO'),(10,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:44:07','Puebla','Particular','','','ACTIVO'),(11,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:46:04','Oaxaca','Particular','','','ACTIVO'),(12,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:47:55','Amatitlan','Requiero transporte','','','ACTIVO'),(13,'Emiliano','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-09 16:49:12','Acatlan','Requiero transporte','','','ACTIVO'),(14,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-10 23:18:57','Puebla','Particular','','','ACTIVO'),(15,'jesus','lorenzano','arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-11 01:14:56','huajuapan','Requiero transporte','','','ACTIVO'),(16,'jesus','lorenzano','arellano','emi.gx@hotmail.com','953104288','\0','2017-05-11 01:18:47','amatitlan','Particular','','','ACTIVO'),(17,'emiliano','lorenzano','arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-11 01:20:25','amatitlan','Requiero transporte','','','ACTIVO'),(18,'Monserrat ','Linarte','Roldan','monse_chapis97@hotmail.com','7481066464','\0','2017-05-11 16:19:02','Tlaxcala','Particular','','','ACTIVO'),(19,'jesus','lorenzano','arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-11 16:59:02','guadalupe','Requiero transporte','','','ACTIVO'),(20,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-13 22:04:48','Huajuapan','Requiero transporte','','','ACTIVO'),(21,'Emiliano','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-13 22:09:55','Huajuapan','Particular','','','ACTIVO'),(22,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-13 22:21:26','Huajuapan','Particular','','','ACTIVO'),(23,'Jesus','Lorenzano','Arellano','emi.gx@hotmail.com','9531042888','\0','2017-05-14 01:22:44','Huajuapan','Particular','','','ACTIVO'),(24,'Emiliano','Lorenzano','Arellano','emi.gx@hotmail.com','953104288','\0','2017-05-14 01:41:19','Huajuapan','Particular','','','ACTIVO'),(25,'Monserrat','Linarte ','Roldan ','monse_chapis97@hotmail.com','7481066464','\0','2017-05-26 16:40:09','Tlaxcala','Requiero transporte','','','ACTIVO'),(26,'Monserrat ','Linarte','Roldan','monse_chapis97@hotmail.com','7481066464','\0','2017-05-26 17:23:31','Tlaxcala','Requiero transporte','','','ACTIVO'),(27,'MarÃ­a','JaÃ©n','RendÃ³n','marypaz.jaen@gmail.com','2351047018','\0','2017-05-26 22:56:23','Tlaxcala','Particular','','','ACTIVO'),(28,'maria de la paz','jaen','rendon','marypaz.jaen@gmail.com','2351047018','\0','2017-05-27 15:47:24','tlaxcala','Particular','','','ACTIVO'),(29,'lasjd','lkjlkj','lkjlkj','o@m.c','dfsldkj','\0','2017-06-06 22:08:05','lkj','Particular','','','ACTIVO'),(30,'prueba','prueba1','prueba11','oswualdoaq@gmail.com','1234567890','\0','2017-06-09 02:41:23','oaxaca','Particular','tos','jarabe','ACTIVO'),(31,'fsdfskjh','kjhkjhkjh','kjhkjhkh','oswualdoaq@gmail.com','234234234234','\0','2017-06-09 03:59:31','kjhkjh','Particular','','','ACTIVO'),(32,'fÃ©lix niÃ±o','a','a','ll','123','\0','2017-06-09 21:16:36','a','Particular','','','ACTIVO'),(33,'oswualdo','alquisiris','quecha','oswualdoaq@gmail.com','123','\0','2017-06-10 04:12:47','oaxaca','Particular','','','ACTIVO'),(34,'adasda','jhkjh','kjhkjh','oswualdoaq@gmail.com','sadasd','\0','2017-06-10 04:31:46','kjhkjh','Particular','','','ACTIVO'),(35,'jhgjhg','jhgjhgjhg','jhgjhgjh','oswualdoaq@gmail.com','sdfsdfsdf','\0','2017-06-10 04:38:03','mhgjg','Particular','','','ACTIVO'),(36,'sdfjsdj','kjb','kjbfdkj','oswualdoaq@gmail.com','asdasd','\0','2017-06-10 04:43:58','kjh','Particular','','','ACTIVO'),(37,'jhgjhghj','jhgjhgjhg','jhgjhgjhg','marypaz.jaen@gmail.com','kjshdkjhdsf','\0','2017-06-10 05:01:25','jhgj','Particular','','','ACTIVO'),(38,'kjhkjh','kjhkjh','kjhkjhkj','oswualdoaq@gmail.com','asafds','\0','2017-06-10 05:36:07','kjh','Particular','','','ACTIVO'),(39,'jhkjhkl','hgfhgf','iu','oswualdoaq@gmail.com','jsmjhdskjdh','\0','2017-06-10 05:38:31','oiu','Particular','','','ACTIVO'),(40,'jjkghkj','jkhgkjhgkhg','kjhgkjhgkjhg','oswualdoaq@gmail.com','dfsjhskjh','\0','2017-06-10 15:08:21','jkgkj','Particular','','','ACTIVO'),(41,'jjkghkj','jkhgkjhgkhg','kjhgkjhgkjhg','oswualdoaq@gmail.com','dfsjhskjh','\0','2017-06-10 15:08:23','jkgkj','Particular','','','ACTIVO'),(42,'khkhk','hkjhkjh','kjhkjhk','oswualdoaq@gmail.com','mhgdjahgs','\0','2017-06-10 16:08:07','kjhkjh','Particular','','','ACTIVO'),(43,'kjhkjh','gfg','jygu','oswualdoaq@gmail.com','sdfksjhskdhj','\0','2017-06-10 16:50:20','lkj','Particular','','','ACTIVO'),(44,'kjhdfkjhs','kjfhkdjskj','kjhdfsjh','oswualdoaq@gmail.com','sdksdjhfkjhs','\0','2017-06-10 16:53:46','hksjhdfkh','Particular','','','ACTIVO'),(45,'kjdshkjahs','kjhdfskjh','kjdhsfkjh','oswualdoaq@gmail.com','fksjhkdjh','\0','2017-06-10 17:05:09','kjshdfkjh','Particular','','','ACTIVO'),(46,'asjdbakjb','kjbskfjdb','fk','oswualdoaq@gmail.com','sdflkjsdlkj','\0','2017-06-10 17:10:03','bkjbfsdk','Particular','','','ACTIVO'),(47,'kjsdhsj','kjhsfkjh','kjhkjh','oswualdoaq@gmail.com','fdkjhgkj','\0','2017-06-10 17:27:46','ksjdhf','Particular','','','ACTIVO'),(48,'sdfsf','kjdhsfkj','ksjhdfkj','oswualdoaq@gmail.com','sdkjhf','\0','2017-06-10 17:31:42','skdjhf','Particular','','','ACTIVO'),(49,'kjhkjfh','kjhk','jhkjshkjh','oswualdoaq@gmail.com','sdfslkj','\0','2017-06-10 17:34:42','kjhsk','Particular','','','ACTIVO'),(50,'kjhdkjsdh','kjhfdkjhs','kjhkjh','oswualdoaq@gmail.com','kjsdhfkjhd','\0','2017-06-10 17:43:48','kjhkjh','Particular','','','ACTIVO'),(51,'kjdshskjh','kjhskjh','kjhkjh','oswualdoaq@gmail.com','sdkjhsdkjh','\0','2017-06-10 17:52:47','kjhkjh','Particular','','','ACTIVO'),(52,'iuoiu','oiuoiuo','oiuoiuoi','oswualdoaq@gmail.com','dskjhdkjfh','\0','2017-06-10 17:56:51','uoiuoiu','Particular','','','ACTIVO'),(53,'paz','jaen','rendon','marypaz.jaen@gmail.com','12873612874','\0','2017-06-10 17:59:51','veracruz','Particular','','','ACTIVO'),(54,'kajhkj','kjhkjhkjh','kjhkjh','oswualdoaq@gmail.com','weiur','\0','2017-06-10 18:08:17','kjhkj','Particular','','','ACTIVO'),(55,'sdkjhfk','kjhdskjh','kjh','oswualdoaq@gmail.com','23462537','\0','2017-06-10 18:57:45','sh','Particular','','','ACTIVO'),(56,'kjashdjkah','kjhkjahkjh','kjhkjh','oswualdoaq@gmail.com','32874837','\0','2017-06-10 18:59:29','kjh','Particular','','','ACTIVO'),(57,'jjhg','iui','oiou','oswualdoaq@gmail.com','987654321','\0','2017-06-10 19:32:06','jkjh','Particular','','','ACTIVO'),(58,'david','gonzalez','ponce','davidgp228@gmail.com','9531038864','\0','2017-06-12 16:54:19','Puebla','Particular','','','ACTIVO'),(59,'david','glez','ponce','davidgp228@gmail.com','333','\0','2017-06-12 19:52:50','puebla','Requiero transporte','','','ACTIVO'),(60,'d','d','d','davidgp228@gmail.com','3132','\0','2017-06-12 21:53:49','puebla','Requiero transporte','','','ACTIVO'),(61,'david','glez','ponce','davidgp228@gmail.com','asd','\0','2017-06-12 22:03:28','puebla','Requiero transporte','','','ACTIVO'),(62,'david','glez','ponce','davidgp228@gmail.com','234','\0','2017-06-12 23:03:18','puebla','Requiero transporte','','','ACTIVO'),(63,'david','gonzalez','ponce','davidgp228@gmail.com','13','\0','2017-06-12 23:39:42','puebla','Particular','','','ACTIVO'),(64,'david','glez','ponce','davidgp228@gmail.com','953','\0','2017-06-14 00:22:36','puebla','Requiero transporte','','','ACTIVO'),(65,'d','d','d','davidgp228@gmail.com','123','\0','2017-06-14 00:38:52','puebla','Requiero transporte','','','ACTIVO'),(66,'mjhgmgmg','mhgmhg','mhggmhg','oswualdoaq@gmail.com','nhghg','\0','2017-06-15 22:18:56','mgmhgj','Particular','','','ACTIVO'),(67,'jhkjhk','kjhkjhk','kjhkjhk','oswualdoaq@gmail.com','lkjlkj','\0','2017-06-15 22:20:16','kjhkh','Particular','','','ACTIVO'),(68,'maria','palacios','desales','maria_palaciosd@hotmail.com','987654321i','\0','2017-06-15 22:23:23','oaxaca','Particular','','','ACTIVO'),(69,'gp','gp','gp','gp','222','\0','2017-06-17 18:55:23','c','Particular','','','ACTIVO'),(70,'d','d','d','d','g','\0','2017-06-17 19:37:11','d','Particular','','','ACTIVO'),(71,'e','e','e','e','e','\0','2017-06-17 19:38:59','e','Particular','','','ACTIVO'),(72,'a','a','a','a','a','\0','2017-06-17 19:42:06','a','Particular','','','ACTIVO'),(73,'r','r','r','r','123','\0','2017-06-17 19:48:01','puebla','Particular','','','ACTIVO'),(74,'g','g','g','g','123','\0','2017-06-17 20:03:57','g','Particular','','','ACTIVO'),(75,'v','v','v','v','23','\0','2017-06-17 20:06:00','v','Particular','','','ACTIVO'),(76,'e','e','e','e','e','\0','2017-06-17 20:42:06','e','Particular','','','ACTIVO'),(77,'33','33','33','333','333','\0','2017-06-19 20:39:29','33','Particular','','','ACTIVO'),(78,'22','22','22','222','222','\0','2017-06-19 20:42:03','22','Particular','','','ACTIVO'),(79,'111','11','111','111','111','\0','2017-06-19 20:43:24','111','Particular','','','ACTIVO'),(80,'1111','111','111','111','1111','\0','2017-06-19 20:56:11','11','Particular','','','ACTIVO'),(81,'111','11','11','111','111','\0','2017-06-19 20:57:50','111','Particular','','','ACTIVO'),(82,'777','777','777','777','777','\0','2017-06-19 20:59:24','777','Particular','','','ACTIVO'),(83,'888','88','888','888','888','\0','2017-06-19 21:01:07','88','Particular','','','ACTIVO'),(84,'888','888','888','8888','888','\0','2017-06-19 21:04:49','888','Particular','','','ACTIVO'),(85,'999','999','999','9999','999','\0','2017-06-19 21:13:50','999','Particular','','','ACTIVO'),(86,'000','000','000','0000','00000','\0','2017-06-19 21:15:32','000','Particular','','','ACTIVO'),(87,'222','222','222','222','222','\0','2017-06-19 21:17:36','222','Particular','','','ACTIVO'),(88,'222','222','222','222','222','\0','2017-06-19 21:19:24','222','Particular','','','ACTIVO'),(89,'55','555','555','555','555','\0','2017-06-19 21:26:53','555','Particular','','','ACTIVO'),(90,'222','222','222','222','222','\0','2017-06-19 21:37:20','22','Particular','','','ACTIVO'),(91,'David','Gonzalez','Ponce','123','123','\0','2017-06-19 21:41:14','puebla','Particular','','','ACTIVO'),(92,'111','111','111','111','111','\0','2017-06-19 21:50:14','111','Particular','','','ACTIVO'),(93,'111','1111','111','111','1111','\0','2017-06-19 23:31:48','111','Particular','','','ACTIVO'),(94,'555','5555','5555','555','5555','\0','2017-06-19 23:38:30','555','Particular','','','ACTIVO'),(95,'444','444','44','44','4444','\0','2017-06-19 23:43:26','44','Particular','','','ACTIVO'),(96,'77','777','777','777','777','\0','2017-06-19 23:46:15','777','Particular','','','ACTIVO'),(97,'222','222','222','22','2222','\0','2017-06-19 23:50:01','222','Particular','','','ACTIVO'),(98,'111','111','111','1111','1111','\0','2017-06-19 23:52:51','111','Particular','','','ACTIVO'),(99,'22','22','222','222','2222','\0','2017-06-19 23:54:20','22','Particular','','','ACTIVO'),(100,'6','6','6','6','6','\0','2017-06-19 23:59:37','6','Particular','','','ACTIVO'),(101,'5','5','5','5','5','\0','2017-06-20 00:01:38','5','Particular','','','ACTIVO'),(102,'88','8','8','8','8','\0','2017-06-20 00:03:01','8','Particular','','','ACTIVO'),(103,'444','444','444','444','444','\0','2017-06-20 00:14:23','444','Particular','','','ACTIVO'),(104,'22','222','222','222','222','\0','2017-06-20 00:17:15','222','Particular','','','ACTIVO'),(105,'111','11','111','111','111','\0','2017-06-20 00:21:03','111','Particular','','','ACTIVO'),(106,'33','333','333','333','333','\0','2017-06-20 00:25:42','33','Particular','','','ACTIVO'),(107,'ddd','ddd','ddd','ddd','ddd','\0','2017-06-20 00:29:00','ddd','Particular','','','ACTIVO'),(108,'11','11','11','11','11','\0','2017-06-20 00:32:28','111','Particular','','','ACTIVO'),(109,'44','444','44','444','44','\0','2017-06-20 00:35:15','44','Particular','','','ACTIVO'),(110,'11','111','111','111','111','\0','2017-06-20 00:38:59','11','Particular','','','ACTIVO'),(111,'david','glez','ponce','222','222','\0','2017-06-20 22:28:11','puebla','Particular','','','ACTIVO'),(112,'ggg','ggg','ggg','ggg','ggg','\0','2017-06-23 18:39:56','ggg','Particular','','','ACTIVO'),(113,'111','111','11','11','11','\0','2017-06-24 14:45:43','111','Particular','','','ACTIVO'),(114,'felix','diaz','santos','felixdiazsantos@gmail.com','2292645480','\0','2017-06-24 21:40:12','veracruz','Particular','','','ACTIVO'),(115,'222','222','222','davidgp228@gmail.com','222','\0','2017-06-24 22:33:42','222','Particular','','','ACTIVO'),(116,'ddd','ddd','ddd','davidgp228@gmail.com','222','\0','2017-06-24 22:42:06','ddd','Particular','','','ACTIVO'),(117,'22','222','222','davidgp228@gmail.com','333','\0','2017-06-24 23:07:55','22','Requiero transporte','','','ACTIVO'),(118,'555','555','555','55','555','\0','2017-06-24 23:10:48','555','Particular','','','ACTIVO'),(119,'222','222','222','davidgp228@gmail.com','www','\0','2017-06-24 23:39:42','22','Particular','','','ACTIVO'),(120,'f','d','s','felixdiazsantos@gmail.com','2292645480','\0','2017-06-24 23:47:11','ver','Particular','','','ACTIVO'),(121,'222','222','222','222','222','\0','2017-06-25 00:36:09','222','','','','ACTIVO');
/*!40000 ALTER TABLE `clien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupos`
--

DROP TABLE IF EXISTS `cupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupos` (
  `id_cupos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT NULL,
  `maxima` int(11) DEFAULT '250',
  `actual` int(11) DEFAULT '0',
  PRIMARY KEY (`id_cupos`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupos`
--

LOCK TABLES `cupos` WRITE;
/*!40000 ALTER TABLE `cupos` DISABLE KEYS */;
INSERT INTO `cupos` VALUES (1,'2017-06-16 05:00:00',250,225),(2,'2017-06-18 05:00:00',250,28),(3,'2017-06-17 05:00:00',250,175),(4,'2017-06-20 05:00:00',250,-2),(5,'2017-06-19 05:00:00',250,1),(6,'2017-06-27 05:00:00',250,250),(7,'2017-06-30 05:00:00',250,34),(8,'2017-07-01 05:00:00',250,5),(9,'2017-07-04 05:00:00',250,0),(10,'2017-06-24 05:00:00',250,26),(11,'2017-06-28 05:00:00',250,27),(12,'2017-07-08 05:00:00',250,6),(13,'2017-06-21 05:00:00',250,10),(14,'2017-07-20 05:00:00',250,2),(15,'2017-06-29 05:00:00',250,13),(16,'2017-06-25 05:00:00',250,34),(17,'2017-06-22 05:00:00',250,200),(18,'2017-06-23 05:00:00',250,8),(19,'2017-06-26 05:00:00',250,0),(20,'2018-06-15 05:00:00',250,3),(21,'2017-07-16 05:00:00',250,20),(22,'2017-07-15 05:00:00',250,0),(23,'2017-07-27 05:00:00',250,0),(24,'2017-08-11 05:00:00',250,0);
/*!40000 ALTER TABLE `cupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id_pagos` int(11) NOT NULL AUTO_INCREMENT,
  `folio` int(11) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `tiopo` text,
  `id_usuarios` int(11) DEFAULT NULL,
  `alta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pagos`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,100,'efectivo',1,'2017-05-07 00:20:23'),(2,1,200,'efectivo',1,'2017-05-07 00:21:38'),(3,NULL,100,'efectivo',NULL,'2017-05-08 15:56:15'),(4,1,100,'efectivo',1,'2017-05-08 15:59:31'),(5,1,12,'Efectivo',2,'2017-05-08 16:26:03'),(6,1,120,'Targete de DÃ©bito',2,'2017-05-08 16:36:15'),(7,1,111,'Efectivo',2,'2017-05-08 16:41:48'),(9,2,120,'Efectivo',2,'2017-05-08 18:24:55'),(13,1,12,'Efectivo',2,'2017-05-08 23:29:08'),(14,1,12,'Efectivo',2,'2017-05-08 23:30:29'),(15,5,100,'Efectivo',1,'2017-06-05 15:24:35'),(16,5,50,'Efectivo',2,'2017-06-07 03:16:03'),(17,1,1,'Efectivo',1,'2017-06-15 18:53:33'),(18,2,10,'Efectivo',2,'2017-06-15 22:14:50'),(19,1,100,'Transferencia Electrónica',1,'2017-06-16 15:02:49'),(20,1,7,'Tarjeta de Débito',1,'2017-06-16 15:06:08'),(22,11,800,'Efectivo',1,'2017-06-16 16:09:10'),(25,2,30,'Efectivo',1,'2017-06-16 16:23:56'),(26,1,333,'Efectivo',1,'2017-06-16 18:09:02'),(27,3,1000,'Efectivo',1,'2017-06-24 21:30:15'),(28,125,1000,'Efectivo',1,'2017-06-24 23:42:17'),(29,125,1500,'Tarjeta de Débito',1,'2017-06-24 23:42:47'),(30,125,100,'Efectivo',1,'2017-06-24 23:43:00'),(31,125,1000,'Otro',1,'2017-06-24 23:43:14'),(32,-1,100,'Efectivo',1,'2017-06-25 00:56:02'),(33,1,1000,'Efectivo',2,'2017-06-27 02:47:12'),(34,123,2000,'Efectivo',2,'2017-06-27 02:47:44'),(35,124,10,'Efectivo',2,'2017-06-27 02:48:11'),(36,124,10,'Efectivo',2,'2017-06-27 02:48:16');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetes`
--

DROP TABLE IF EXISTS `paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paquetes` (
  `id_paquete` int(11) NOT NULL AUTO_INCREMENT,
  `costo` double DEFAULT '0',
  `descripcion` text,
  `status` varchar(10) DEFAULT 'PENDIENTE',
  `alta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_paquete`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes`
--

LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` VALUES (1,160,'PAQUETE 1. NOCHE DE LUCIÉRNAGAS','VIGENTE','2017-04-30 18:10:47'),(2,320,'PAQUETE 2 NOCHE DE LUCIÉRNAGAS Y CENA TÍPICA','VIGENTE','2017-04-30 18:10:47'),(3,480,'PAQUETE 3 NOCHE DE LUCIERNAGAS Y CAMPAMENTO','VIGENTE','2017-04-30 18:10:47'),(4,100,'PAQUETE 4 RECORRIDO DE NATURALEZA Y FAUNA','VIGENTE','2017-04-30 18:10:47'),(5,100,'PAQUETE 5 RECORRIDO DE MAGUEYERO','VIGENTE','2017-04-30 18:10:47');
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) DEFAULT NULL,
  `id_paquete` int(11) DEFAULT NULL,
  `folio` int(11) DEFAULT '0',
  `desayuno` int(11) DEFAULT '0',
  `adultos` int(11) DEFAULT '0',
  `ninos0a5` int(11) DEFAULT '0',
  `ninos6a12` int(11) DEFAULT '0',
  `visit_date` timestamp NOT NULL,
  `alta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vence_date` timestamp NULL DEFAULT NULL,
  `casa` text,
  `pasajes` int(11) DEFAULT '0',
  `observaciones` text,
  `status` varchar(10) DEFAULT 'PENDIENTE',
  PRIMARY KEY (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,1,2,1,0,1,1,2,'2017-09-20 05:00:00','2017-10-16 05:00:00','2017-09-19 05:00:00','true',3,NULL,'Pagado'),(2,2,1,2,-1,1,0,0,'2017-06-18 05:00:00','2017-05-07 00:13:59','2017-06-17 05:00:00','false',0,NULL,'Cancelado'),(4,3,5,4,-1,1,0,0,'2017-06-20 05:00:00','2017-05-09 00:42:28','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(8,3,1,8,0,5,1,1,'2017-06-18 05:00:00','2017-05-09 16:40:53','2017-06-17 05:00:00','false',8,NULL,'PENDIENTE'),(11,3,3,11,9,10,0,0,'2017-06-20 05:00:00','2017-05-09 16:46:04','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(12,3,3,12,8,3,1,2,'2017-06-20 05:00:00','2017-05-09 16:47:56','2017-06-19 05:00:00','true',6,NULL,'Pagado'),(14,3,1,14,-1,1,0,0,'2017-06-19 05:00:00','2017-05-10 23:18:59','2017-06-18 05:00:00','false',0,NULL,'PENDIENTE'),(15,3,1,15,-1,3,0,1,'2017-06-27 05:00:00','2017-05-11 01:14:56','2017-06-26 05:00:00','false',4,NULL,'Cancelado'),(16,16,3,16,10,7,1,2,'2017-06-30 05:00:00','2017-05-11 01:18:47','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(18,18,1,18,-1,2,0,0,'2017-06-30 05:00:00','2017-05-11 16:19:02','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(19,3,1,19,10,1,0,0,'2017-06-16 05:00:00','2017-05-11 16:59:02','2017-06-15 05:00:00','false',3,NULL,'PENDIENTE'),(20,3,2,19,10,1,0,0,'2017-06-16 05:00:00','2017-05-11 16:59:02','2017-06-15 05:00:00','false',3,NULL,'PENDIENTE'),(21,3,3,19,10,1,0,0,'2017-06-16 05:00:00','2017-05-11 16:59:02','2017-06-15 05:00:00','false',3,NULL,'PENDIENTE'),(22,3,1,20,-1,2,1,1,'2017-06-17 05:00:00','2017-05-13 22:04:48','2017-06-16 05:00:00','true',4,NULL,'PENDIENTE'),(23,3,2,21,-1,1,0,1,'2017-06-17 05:00:00','2017-05-13 22:09:55','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(24,3,3,22,9,2,1,0,'2017-06-17 05:00:00','2017-05-13 22:21:26','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(25,3,1,23,9,4,1,2,'2017-06-24 05:00:00','2017-05-14 01:22:44','2017-06-23 05:00:00','false',0,NULL,'PENDIENTE'),(26,3,2,23,9,2,0,1,'2017-06-24 05:00:00','2017-05-14 01:22:44','2017-06-23 05:00:00','false',0,NULL,'PENDIENTE'),(27,3,3,23,9,5,2,3,'2017-06-24 05:00:00','2017-05-14 01:22:44','2017-06-23 05:00:00','false',0,NULL,'PENDIENTE'),(28,16,1,24,8,1,1,1,'2017-06-28 05:00:00','2017-05-14 01:41:19','2017-06-27 05:00:00','false',0,NULL,'PENDIENTE'),(29,16,2,24,8,2,2,2,'2017-06-28 05:00:00','2017-05-14 01:41:19','2017-06-27 05:00:00','false',0,NULL,'PENDIENTE'),(30,16,3,24,8,3,3,3,'2017-06-28 05:00:00','2017-05-14 01:41:19','2017-06-27 05:00:00','false',0,NULL,'PENDIENTE'),(31,18,1,25,-1,2,1,0,'2017-07-08 05:00:00','2017-05-26 16:40:09','2017-07-07 05:00:00','false',3,NULL,'PENDIENTE'),(32,18,1,26,-1,2,1,0,'2017-07-08 05:00:00','2017-05-26 17:23:31','2017-07-07 05:00:00','false',3,NULL,'PENDIENTE'),(33,27,1,27,-1,2,0,0,'2017-06-21 05:00:00','2017-05-26 22:56:23','2017-06-20 05:00:00','true',0,NULL,'PENDIENTE'),(34,27,1,28,-1,2,0,0,'2017-07-20 05:00:00','2017-05-27 15:47:25','2017-07-19 05:00:00','false',0,NULL,'PENDIENTE'),(35,29,1,29,-1,1,0,0,'2017-06-17 05:00:00','2017-06-06 22:08:05','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(36,30,1,30,-1,1,0,0,'2017-06-16 05:00:00','2017-06-09 02:41:24','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(37,31,1,31,-1,1,0,0,'2017-06-16 05:00:00','2017-06-09 03:59:31','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(38,32,1,32,-1,1,0,0,'2017-06-16 05:00:00','2017-06-09 21:16:36','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(39,32,1,33,-1,1,0,0,'2017-06-24 05:00:00','2017-06-10 04:12:48','2017-06-23 05:00:00','false',0,NULL,'PENDIENTE'),(40,34,1,34,-1,1,0,0,'2017-06-24 05:00:00','2017-06-10 04:31:47','2017-06-23 05:00:00','false',0,NULL,'PENDIENTE'),(41,35,1,35,-1,1,1,1,'2017-06-30 05:00:00','2017-06-10 04:38:04','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(42,36,1,36,-1,1,1,1,'2017-06-29 05:00:00','2017-06-10 04:44:00','2017-06-28 05:00:00','false',0,NULL,'PENDIENTE'),(43,37,1,37,-1,1,0,0,'2017-06-16 05:00:00','2017-06-10 05:01:25','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(44,38,1,38,-1,1,0,0,'2017-06-17 05:00:00','2017-06-10 05:36:10','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(45,39,1,39,8,1,0,0,'2017-06-30 05:00:00','2017-06-10 05:38:33','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(46,39,2,39,8,1,0,0,'2017-06-30 05:00:00','2017-06-10 05:38:35','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(47,39,3,39,8,1,0,0,'2017-06-30 05:00:00','2017-06-10 05:38:36','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(48,39,4,39,8,1,0,0,'2017-06-30 05:00:00','2017-06-10 05:38:37','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(49,39,5,39,8,1,0,0,'2017-06-30 05:00:00','2017-06-10 05:38:38','2017-06-29 05:00:00','false',0,NULL,'PENDIENTE'),(50,40,1,40,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:21','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(51,40,2,40,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:22','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(52,40,3,40,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:22','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(53,40,4,40,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:23','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(54,40,1,41,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:23','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(55,40,5,40,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:24','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(56,40,2,41,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:24','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(57,40,3,41,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:24','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(58,40,4,41,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:25','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(59,40,5,41,8,1,0,0,'2017-06-18 05:00:00','2017-06-10 15:08:25','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(60,-1,1,42,-1,30,0,0,'2017-06-25 05:00:00','2017-06-10 15:35:11','2017-06-24 05:00:00','false',0,NULL,'PENDIENTE'),(61,-1,5,42,-1,30,0,0,'2017-06-25 05:00:00','2017-06-10 15:35:11','2017-06-24 05:00:00','false',0,NULL,'PENDIENTE'),(62,42,1,43,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 16:08:11','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(63,42,2,43,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 16:08:13','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(64,42,3,43,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 16:08:15','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(65,42,4,43,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 16:08:15','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(66,42,5,43,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 16:08:16','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(67,43,1,44,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:50:20','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(68,43,2,44,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:50:21','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(69,43,3,44,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:50:22','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(70,43,4,44,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:50:22','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(71,43,5,44,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:50:22','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(72,44,1,45,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:53:51','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(73,44,2,45,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:53:51','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(74,44,3,45,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:53:52','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(75,44,4,45,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:53:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(76,44,5,45,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 16:53:54','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(77,45,1,46,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:05:09','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(78,45,2,46,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:05:10','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(79,45,3,46,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:05:11','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(80,45,4,46,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:05:12','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(81,45,5,46,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:05:12','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(82,46,1,47,8,1,0,0,'2017-06-22 05:00:00','2017-06-10 17:10:04','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(83,46,2,47,8,1,0,0,'2017-06-22 05:00:00','2017-06-10 17:10:06','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(84,46,3,47,8,1,0,0,'2017-06-22 05:00:00','2017-06-10 17:10:07','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(85,46,4,47,8,1,0,0,'2017-06-22 05:00:00','2017-06-10 17:10:10','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(86,46,5,47,8,1,0,0,'2017-06-22 05:00:00','2017-06-10 17:10:11','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(87,47,1,48,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:27:48','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(88,47,2,48,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:27:50','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(89,47,3,48,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:27:51','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(90,47,4,48,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:27:52','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(91,47,5,48,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:28:00','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(92,48,1,49,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 17:31:46','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(93,48,2,49,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 17:31:49','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(94,48,3,49,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 17:31:52','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(95,48,4,49,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 17:31:54','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(96,48,5,49,8,1,0,0,'2017-06-17 05:00:00','2017-06-10 17:31:57','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(97,49,1,50,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:34:59','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(98,49,2,50,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:35:33','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(99,49,3,50,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:35:38','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(100,49,4,50,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:35:40','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(101,49,5,50,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:35:41','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(102,50,1,51,8,1,1,1,'2017-06-16 05:00:00','2017-06-10 17:43:48','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(103,50,2,51,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:43:49','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(104,50,3,51,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:43:50','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(105,50,4,51,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:43:50','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(106,50,5,51,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:43:51','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(107,51,1,52,8,1,1,1,'2017-06-16 05:00:00','2017-06-10 17:52:57','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(108,51,2,52,8,1,1,0,'2017-06-16 05:00:00','2017-06-10 17:53:00','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(109,51,3,52,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:53:01','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(110,51,4,52,8,1,0,1,'2017-06-16 05:00:00','2017-06-10 17:53:01','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(111,51,5,52,8,1,0,0,'2017-06-16 05:00:00','2017-06-10 17:53:02','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(112,52,1,53,8,1,1,1,'2017-06-16 05:00:00','2017-06-10 17:56:52','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(113,52,2,53,8,2,2,2,'2017-06-16 05:00:00','2017-06-10 17:56:52','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(114,52,3,53,8,3,3,3,'2017-06-16 05:00:00','2017-06-10 17:56:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(115,52,4,53,8,4,4,4,'2017-06-16 05:00:00','2017-06-10 17:56:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(116,52,5,53,8,5,5,5,'2017-06-16 05:00:00','2017-06-10 17:56:54','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(117,53,1,54,8,1,1,1,'2017-06-16 05:00:00','2017-06-10 17:59:52','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(118,53,2,54,8,2,2,2,'2017-06-16 05:00:00','2017-06-10 17:59:52','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(119,53,3,54,8,3,3,3,'2017-06-16 05:00:00','2017-06-10 17:59:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(120,53,4,54,8,4,4,4,'2017-06-16 05:00:00','2017-06-10 17:59:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(121,53,5,54,8,5,5,5,'2017-06-16 05:00:00','2017-06-10 17:59:54','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(122,54,1,55,8,1,1,1,'2017-06-17 05:00:00','2017-06-10 18:08:18','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(123,54,2,55,8,2,2,2,'2017-06-17 05:00:00','2017-06-10 18:08:19','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(124,54,3,55,8,3,3,3,'2017-06-17 05:00:00','2017-06-10 18:08:20','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(125,54,4,55,8,4,4,4,'2017-06-17 05:00:00','2017-06-10 18:08:20','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(126,54,5,55,8,5,5,5,'2017-06-17 05:00:00','2017-06-10 18:08:21','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(127,55,1,56,8,1,1,1,'2017-06-16 05:00:00','2017-06-10 18:57:46','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(128,55,2,56,8,2,2,2,'2017-06-16 05:00:00','2017-06-10 18:57:47','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(129,55,3,56,8,3,3,3,'2017-06-16 05:00:00','2017-06-10 18:57:54','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(130,55,4,56,8,4,4,4,'2017-06-16 05:00:00','2017-06-10 18:57:55','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(131,55,5,56,8,5,5,5,'2017-06-16 05:00:00','2017-06-10 18:57:55','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(132,56,1,57,8,1,1,1,'2017-06-16 05:00:00','2017-06-10 18:59:30','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(133,56,2,57,8,2,2,2,'2017-06-16 05:00:00','2017-06-10 18:59:30','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(134,56,3,57,8,3,3,3,'2017-06-16 05:00:00','2017-06-10 18:59:31','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(135,56,4,57,8,4,4,4,'2017-06-16 05:00:00','2017-06-10 18:59:31','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(136,56,5,57,8,5,5,5,'2017-06-16 05:00:00','2017-06-10 18:59:32','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(137,57,1,58,-1,1,0,0,'2017-06-17 05:00:00','2017-06-10 19:32:15','2017-06-16 05:00:00','false',0,NULL,'PENDIENTE'),(138,58,1,59,-1,4,0,0,'2017-06-16 05:00:00','2017-06-12 16:54:20','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(139,58,2,59,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 16:54:20','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(140,-1,1,60,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 17:58:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(141,-1,2,60,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 17:58:53','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(142,-1,1,61,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 18:03:25','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(143,-1,2,61,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 18:03:25','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(144,-1,1,62,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 18:06:25','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(145,-1,2,62,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 18:06:25','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(146,-1,1,63,-1,3,0,0,'2017-06-16 05:00:00','2017-06-12 18:21:20','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(147,-1,2,63,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 18:21:20','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(148,-1,1,64,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 18:52:08','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(149,-1,2,64,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 18:52:08','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(150,-1,1,65,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 18:57:24','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(151,-1,2,65,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 18:57:24','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(152,-1,1,66,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 19:02:54','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(153,-1,2,66,-1,2,0,0,'2017-06-16 05:00:00','2017-06-12 19:02:54','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(154,59,1,67,-1,1,0,0,'2017-06-22 05:00:00','2017-06-12 19:52:50','2017-06-21 05:00:00','false',1,NULL,'PENDIENTE'),(155,60,1,68,-1,2,0,0,'2017-06-23 05:00:00','2017-06-12 21:53:49','2017-06-22 05:00:00','false',3,NULL,'PENDIENTE'),(156,60,2,68,-1,1,0,0,'2017-06-23 05:00:00','2017-06-12 21:53:49','2017-06-22 05:00:00','false',3,NULL,'PENDIENTE'),(157,-1,1,69,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 22:00:04','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(158,61,1,70,-1,1,0,0,'2017-06-16 05:00:00','2017-06-12 22:03:28','2017-06-15 05:00:00','false',1,NULL,'PENDIENTE'),(161,-1,1,73,-1,1,0,0,'2017-06-16 05:00:00','2017-06-13 01:43:07','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(165,67,1,77,-1,1,0,0,'2017-06-23 05:00:00','2017-06-15 22:20:17','2017-06-22 05:00:00','false',0,NULL,'PENDIENTE'),(168,70,1,80,-1,1,0,0,'2017-06-30 05:00:00','2017-06-17 19:37:12','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(170,72,1,82,-1,1,0,0,'2017-06-30 05:00:00','2017-06-17 19:42:06','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(174,-1,1,86,-1,1,0,0,'2017-06-30 05:00:00','2017-06-17 20:40:37','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(178,79,1,90,0,1,0,0,'2017-06-29 05:00:00','2017-06-19 20:43:24','2017-06-28 05:00:00','true',0,NULL,'PENDIENTE'),(179,80,1,91,-1,1,0,0,'2017-06-30 05:00:00','2017-06-19 20:56:12','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(180,79,1,92,-1,1,0,0,'2017-06-30 05:00:00','2017-06-19 20:57:50','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(181,82,1,93,-1,1,0,0,'2017-06-23 05:00:00','2017-06-19 20:59:24','2017-06-22 05:00:00','true',0,NULL,'PENDIENTE'),(182,83,1,94,-1,1,0,0,'2017-06-28 05:00:00','2017-06-19 21:01:07','2017-06-27 05:00:00','true',0,NULL,'PENDIENTE'),(183,83,1,95,-1,1,0,0,'2017-06-27 05:00:00','2017-06-19 21:04:50','2017-06-26 05:00:00','true',0,NULL,'PENDIENTE'),(184,86,1,96,-1,1,0,0,'2017-06-25 05:00:00','2017-06-19 21:15:32','2017-06-24 05:00:00','true',0,NULL,'PENDIENTE'),(185,69,1,97,-1,1,0,0,'2017-06-28 05:00:00','2017-06-19 21:17:37','2017-06-27 05:00:00','true',0,NULL,'PENDIENTE'),(186,69,1,98,-1,1,0,0,'2017-06-28 05:00:00','2017-06-19 21:19:24','2017-06-27 05:00:00','true',0,NULL,'PENDIENTE'),(187,89,1,99,-1,1,0,0,'2017-06-27 05:00:00','2017-06-19 21:26:53','2017-06-26 05:00:00','true',0,NULL,'PENDIENTE'),(188,69,1,100,-1,1,0,0,'2017-06-29 05:00:00','2017-06-19 21:37:20','2017-06-28 05:00:00','true',0,NULL,'PENDIENTE'),(189,32,1,101,-1,1,0,0,'2017-06-30 05:00:00','2017-06-19 21:41:15','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(190,79,1,102,-1,1,0,0,'2017-06-28 05:00:00','2017-06-19 21:50:15','2017-06-27 05:00:00','true',0,NULL,'PENDIENTE'),(191,-1,1,103,-1,1,0,0,'2017-06-16 05:00:00','2017-06-19 22:36:09','2017-06-15 05:00:00','true',0,NULL,'PENDIENTE'),(192,80,1,104,-1,1,0,0,'2017-06-16 05:00:00','2017-06-19 23:31:48','2017-06-15 05:00:00','false',0,NULL,'PENDIENTE'),(193,94,1,105,-1,1,0,0,'2017-06-22 05:00:00','2017-06-19 23:38:30','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(194,95,1,106,-1,1,0,0,'2017-06-20 05:00:00','2017-06-19 23:43:26','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(195,82,1,107,-1,1,0,0,'2017-06-20 05:00:00','2017-06-19 23:46:15','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(196,97,1,108,-1,1,0,0,'2017-06-20 05:00:00','2017-06-19 23:50:01','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(197,80,1,109,-1,1,0,0,'2017-06-22 05:00:00','2017-06-19 23:52:51','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(198,97,1,110,-1,1,0,0,'2017-06-20 05:00:00','2017-06-19 23:54:20','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(199,100,1,111,-1,1,0,0,'2017-06-20 05:00:00','2017-06-19 23:59:37','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(200,101,1,112,-1,1,0,0,'2017-06-22 05:00:00','2017-06-20 00:01:38','2017-06-21 05:00:00','false',0,NULL,'PENDIENTE'),(201,102,1,113,-1,1,0,0,'2017-06-20 05:00:00','2017-06-20 00:03:02','2017-06-19 05:00:00','false',0,NULL,'PENDIENTE'),(202,103,1,114,-1,1,0,0,'2017-06-20 05:00:00','2017-06-20 00:14:23','2017-06-19 05:00:00','true',0,NULL,'PENDIENTE'),(203,69,1,115,-1,1,0,0,'2017-06-22 05:00:00','2017-06-20 00:17:16','2017-06-21 05:00:00','true',0,NULL,'PENDIENTE'),(204,79,1,116,-1,1,0,0,'2017-06-20 05:00:00','2017-06-20 00:21:04','2017-06-19 05:00:00','true',0,NULL,'PENDIENTE'),(205,59,1,117,-1,3,0,0,'2017-06-21 05:00:00','2017-06-20 00:25:43','2017-06-20 05:00:00','true',0,NULL,'PENDIENTE'),(206,107,1,118,-1,1,0,0,'2017-06-21 05:00:00','2017-06-20 00:29:00','2017-06-20 05:00:00','true',0,NULL,'PENDIENTE'),(207,108,1,119,-1,1,0,0,'2017-06-21 05:00:00','2017-06-20 00:32:28','2017-06-20 05:00:00','true',0,NULL,'PENDIENTE'),(208,109,1,120,-1,1,0,0,'2017-06-20 05:00:00','2017-06-20 00:35:16','2017-06-19 05:00:00','true',0,NULL,'PENDIENTE'),(209,79,1,121,-1,1,0,0,'2017-06-26 05:00:00','2017-06-20 00:38:59','2017-06-25 05:00:00','true',0,NULL,'PENDIENTE'),(210,69,1,122,-1,1,0,0,'2017-06-21 05:00:00','2017-06-20 22:28:11','2017-06-20 05:00:00','true',0,NULL,'PENDIENTE'),(211,112,1,123,0,12,0,0,'2017-06-24 05:00:00','2017-06-23 18:39:56','2017-06-23 05:00:00','true',0,NULL,'PENDIENTE'),(212,112,2,123,0,6,0,0,'2017-06-24 05:00:00','2017-06-23 18:39:57','2017-06-23 05:00:00','true',0,NULL,'PENDIENTE'),(213,112,3,123,11,6,0,0,'2017-06-24 05:00:00','2017-06-23 18:39:57','2017-06-23 05:00:00','true',0,NULL,'PENDIENTE'),(214,1,3,1,9,1,0,5,'2017-09-20 05:00:00','2017-06-23 21:07:06','2017-09-19 05:00:00','true',3,NULL,'Pagado'),(216,3,1,6,0,1,1,1,'2017-06-16 05:00:00','2017-06-23 22:15:14','2017-06-15 05:00:00','false',11,NULL,'PENDIENTE'),(221,3,1,17,0,3,0,3,'2017-07-01 05:00:00','2017-06-23 22:41:21','2017-06-30 05:00:00','false',5,NULL,'PENDIENTE'),(222,69,2,79,0,2,0,0,'2017-06-30 05:00:00','2017-06-23 23:03:19','2017-06-29 05:00:00','true',0,NULL,'PENDIENTE'),(226,79,2,90,0,2,0,6,'2017-06-29 05:00:00','2017-06-23 23:38:29','2017-06-28 05:00:00','true',0,NULL,'PENDIENTE'),(234,3,3,8,9,7,0,0,'2017-06-18 05:00:00','2017-06-24 00:01:44','2017-06-17 05:00:00','false',8,NULL,'PENDIENTE'),(238,3,2,8,0,2,0,2,'2017-06-18 05:00:00','2017-06-24 00:09:30','2017-06-17 05:00:00','false',8,NULL,'PENDIENTE'),(239,3,1,9,0,2,2,2,'2017-06-18 05:00:00','2017-06-24 00:26:23','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(242,3,2,9,0,1,0,0,'2017-06-18 05:00:00','2017-06-24 01:03:59','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(243,3,3,9,11,2,0,0,'2017-06-18 05:00:00','2017-06-24 01:03:59','2017-06-17 05:00:00','false',0,NULL,'PENDIENTE'),(244,108,1,124,-1,1,0,0,'2017-06-27 05:00:00','2017-06-24 14:45:44','2017-06-26 05:00:00','false',0,NULL,'PENDIENTE'),(258,3,3,3,9,5,0,0,'2017-06-17 05:00:00','2017-06-24 20:21:15','2017-06-16 05:00:00','true',3,NULL,'Cancelado'),(259,114,1,125,-1,10,0,0,'2017-07-16 05:00:00','2017-06-24 21:40:14','2017-07-15 05:00:00','false',0,NULL,'PENDIENTE'),(260,114,4,125,-1,10,0,0,'2017-07-16 05:00:00','2017-06-24 21:40:14','2017-07-15 05:00:00','false',0,NULL,'PENDIENTE'),(261,114,5,125,-1,10,0,0,'2017-07-16 05:00:00','2017-06-24 21:40:14','2017-07-15 05:00:00','false',0,NULL,'PENDIENTE'),(262,69,1,126,-1,2,0,0,'2017-06-29 05:00:00','2017-06-24 22:33:42','2017-06-28 05:00:00','false',0,NULL,'PENDIENTE'),(263,69,1,127,-1,2,0,0,'2017-06-29 05:00:00','2017-06-24 22:42:07','2017-06-28 05:00:00','false',0,NULL,'PENDIENTE'),(264,59,1,128,-1,3,0,0,'2017-06-29 05:00:00','2017-06-24 23:07:55','2017-06-28 05:00:00','false',3,NULL,'PENDIENTE'),(265,89,1,129,-1,1,0,0,'2017-06-29 05:00:00','2017-06-24 23:10:49','2017-06-28 05:00:00','false',0,NULL,'PENDIENTE'),(266,89,4,129,-1,5,0,0,'2017-06-29 05:00:00','2017-06-24 23:10:49','2017-06-28 05:00:00','false',0,NULL,'PENDIENTE'),(267,89,5,129,-1,5,0,0,'2017-06-29 05:00:00','2017-06-24 23:10:49','2017-06-28 05:00:00','false',0,NULL,'PENDIENTE'),(268,119,1,130,-1,5,0,0,'2017-06-28 05:00:00','2017-06-24 23:39:42','2017-06-27 05:00:00','false',0,NULL,'PENDIENTE'),(269,119,4,130,-1,5,0,0,'2017-06-28 05:00:00','2017-06-24 23:39:42','2017-06-27 05:00:00','false',0,NULL,'PENDIENTE'),(270,119,5,130,-1,5,0,0,'2017-06-28 05:00:00','2017-06-24 23:39:42','2017-06-27 05:00:00','false',0,NULL,'PENDIENTE'),(271,114,1,131,-1,10,0,0,'2017-07-16 05:00:00','2017-06-24 23:47:11','2017-07-15 05:00:00','true',0,NULL,'PENDIENTE'),(272,114,4,131,-1,10,0,0,'2017-07-16 05:00:00','2017-06-24 23:47:11','2017-07-15 05:00:00','true',0,NULL,'PENDIENTE'),(273,114,5,131,-1,6,0,4,'2017-07-16 05:00:00','2017-06-24 23:47:11','2017-07-15 05:00:00','true',0,NULL,'PENDIENTE'),(274,69,1,132,-1,2,0,0,'2017-06-21 05:00:00','2017-06-25 00:36:10','2017-06-20 05:00:00','false',0,NULL,'PENDIENTE');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nobre` text,
  `login` text,
  `password` text,
  `tipo` int(11) DEFAULT '3',
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Félix Díaz Santos','felix','222',3),(2,'Jesus Emiliano ','jesus','jesus',3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-28 11:18:23
