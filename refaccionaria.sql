-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: refaccionaria
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
-- Table structure for table `forma_entrega`
--

DROP TABLE IF EXISTS `forma_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_entrega` (
  `id_entrega` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_entreg` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_entrega`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_entrega`
--

LOCK TABLES `forma_entrega` WRITE;
/*!40000 ALTER TABLE `forma_entrega` DISABLE KEYS */;
INSERT INTO `forma_entrega` VALUES (1,'Domicilio'),(2,'Sucursal'),(3,'Bodega');
/*!40000 ALTER TABLE `forma_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_venta`
--

DROP TABLE IF EXISTS `nota_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_venta` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT NULL,
  `unidad_medida` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `total` float NOT NULL,
  `porcentaje_desc` int(11) DEFAULT NULL,
  `estatus` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `colocadorPed` int(11) DEFAULT NULL,
  `partida` int(11) NOT NULL,
  `forma_entrega` int(11) NOT NULL,
  `inicio` timestamp NULL DEFAULT NULL,
  `fin` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `FK_idEmpleado_Empl` (`vendedor`),
  KEY `FK_idCliente_client` (`cliente`),
  KEY `Fk_idStatus_stat` (`estatus`),
  KEY `FK_idPartida_part` (`partida`),
  KEY `FK_fEntrega_NotaV` (`forma_entrega`),
  KEY `Fk_idColPed` (`colocadorPed`),
  CONSTRAINT `FK_fEntrega_NotaV` FOREIGN KEY (`forma_entrega`) REFERENCES `forma_entrega` (`id_entrega`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_idEmpleado_User` FOREIGN KEY (`vendedor`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_idPartida_part` FOREIGN KEY (`partida`) REFERENCES `partida` (`id_partida`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Fk_idCliente_User` FOREIGN KEY (`cliente`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Fk_idColPed` FOREIGN KEY (`colocadorPed`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Fk_idStatus_stat` FOREIGN KEY (`estatus`) REFERENCES `status` (`id_status`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_venta`
--

LOCK TABLES `nota_venta` WRITE;
/*!40000 ALTER TABLE `nota_venta` DISABLE KEYS */;
INSERT INTO `nota_venta` VALUES (1,'2017-10-27 16:01:45',NULL,660.52,NULL,3,3,1,1,1,2,'2017-10-27 19:08:04','2017-10-27 20:12:04'),(2,'2017-10-27 20:12:53',NULL,300,NULL,3,3,1,1,2,2,'2017-10-27 20:13:39','2017-11-25 00:47:50'),(3,'2017-10-27 21:01:45',NULL,660.52,NULL,3,3,1,1,1,2,'2017-11-22 00:00:30','2017-11-22 01:08:30'),(4,'2017-10-28 01:12:53',NULL,300,NULL,3,3,1,1,2,2,'2017-11-22 01:33:53','2017-11-25 00:48:14'),(5,'2017-10-28 01:12:53',NULL,300,NULL,2,3,1,1,2,2,NULL,NULL),(6,'2017-10-28 01:12:53',NULL,300,NULL,3,3,1,1,2,2,'2017-11-22 01:34:12','2017-11-25 00:48:44'),(7,'2017-10-28 01:12:53',NULL,300,NULL,3,3,1,1,2,2,'2017-11-23 21:40:24','2017-11-23 21:40:58'),(8,'2017-11-07 01:42:45',NULL,900,NULL,2,15,1,1,8,1,'2017-11-28 02:36:23',NULL),(9,'2017-11-07 01:43:35',NULL,300,NULL,1,3,NULL,NULL,9,2,NULL,NULL),(10,'2017-11-07 01:56:43',NULL,300,NULL,1,3,NULL,NULL,10,2,NULL,NULL),(11,'2017-11-07 01:59:26',NULL,450,NULL,1,3,NULL,NULL,11,2,NULL,NULL),(12,'2017-11-07 02:00:19',NULL,150,NULL,1,3,NULL,NULL,12,2,NULL,NULL),(13,'2017-11-08 23:27:56',NULL,300,NULL,1,3,NULL,NULL,13,2,NULL,NULL),(14,'2017-11-18 05:23:04',NULL,300,NULL,1,3,1,NULL,14,2,NULL,NULL),(15,'2017-11-21 07:03:09',NULL,1510,NULL,1,3,1,NULL,15,1,NULL,NULL),(16,'2017-11-21 17:08:25',NULL,160,NULL,1,17,NULL,NULL,16,2,NULL,NULL),(17,'2017-11-22 02:22:52',NULL,150,NULL,1,17,NULL,NULL,17,1,NULL,NULL),(18,'2017-11-22 23:32:50',NULL,150,NULL,1,15,1,NULL,18,1,NULL,NULL),(19,'2017-11-23 20:29:50',NULL,0,NULL,1,3,1,NULL,18,1,NULL,NULL),(20,'2017-11-23 21:20:23',NULL,340.52,NULL,1,20,NULL,NULL,19,1,NULL,NULL),(21,'2017-11-23 21:26:59',NULL,150,NULL,1,20,NULL,NULL,20,1,NULL,NULL),(22,'2017-11-23 21:28:13',NULL,190.52,NULL,1,20,NULL,NULL,21,1,NULL,NULL),(23,'2017-11-24 00:02:23',NULL,190.52,NULL,1,21,NULL,NULL,22,1,NULL,NULL),(24,'2017-11-24 00:04:53',NULL,510.52,NULL,1,21,NULL,NULL,23,1,NULL,NULL),(25,'2017-11-28 02:18:56',NULL,150,NULL,1,17,1,NULL,24,1,NULL,NULL);
/*!40000 ALTER TABLE `nota_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `id_partida` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cantEntregada` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_partida`,`id_producto`,`cantidad`),
  KEY `FK_codProduc_Product` (`id_producto`),
  CONSTRAINT `FK_codProduc_Product` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (1,1,1,NULL,1),(1,3,2,NULL,1),(1,5,1,NULL,1),(2,2,1,NULL,0),(2,3,1,NULL,1),(3,1,1,NULL,0),(3,3,2,NULL,0),(4,5,1,NULL,0),(5,2,1,NULL,0),(6,3,1,NULL,0),(7,2,1,NULL,0),(7,3,1,NULL,0),(8,1,2,NULL,1),(8,2,2,NULL,1),(8,3,2,NULL,0),(9,2,1,NULL,NULL),(9,3,1,NULL,NULL),(10,2,1,NULL,NULL),(10,3,1,NULL,NULL),(11,1,1,NULL,NULL),(11,2,1,NULL,NULL),(11,3,1,NULL,NULL),(12,1,1,NULL,NULL),(13,2,1,NULL,NULL),(13,3,1,NULL,NULL),(14,2,1,NULL,NULL),(14,4,1,NULL,NULL),(15,1,3,NULL,NULL),(15,2,3,NULL,NULL),(15,3,3,NULL,NULL),(15,4,1,NULL,NULL),(16,3,1,NULL,NULL),(17,1,1,NULL,NULL),(18,1,1,NULL,NULL),(19,1,1,NULL,NULL),(19,7,1,NULL,NULL),(20,1,1,NULL,NULL),(21,7,1,NULL,NULL),(22,7,1,NULL,NULL),(23,4,2,NULL,NULL),(23,5,1,NULL,NULL),(24,1,1,NULL,NULL);
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precios` (
  `id_precio` int(11) NOT NULL AUTO_INCREMENT,
  `precio_may` float NOT NULL COMMENT 'Precio Mayoreo',
  `precio_men` float NOT NULL COMMENT 'Precio Menudeo',
  `desc1` int(11) NOT NULL,
  `desc2` int(11) NOT NULL,
  PRIMARY KEY (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,100,150,10,20),(2,110,140,50,20),(3,140,160,20,10),(4,140,160,20,10),(5,160.52,190.52,15,20),(7,160.52,190.52,15,10);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_product` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL,
  `marca` varchar(20) COLLATE utf8_bin NOT NULL,
  `stock` int(11) NOT NULL,
  `id_precio` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL,
  `product_rel` int(11) NOT NULL COMMENT 'Productos Relacionados',
  `app_auto` varchar(30) COLLATE utf8_bin NOT NULL COMMENT 'Aplicación para un auto',
  PRIMARY KEY (`id_producto`,`codigo_product`),
  KEY `FK_idImg_img` (`id_imagen`),
  KEY `FK_idPrecio_precio` (`id_precio`),
  CONSTRAINT `FK_idImg_img` FOREIGN KEY (`id_imagen`) REFERENCES `imagenes`.`imagen` (`id_imagen`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_idPrecio_precio` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,2020,'Balata','balata','balata',15,1,1,0,''),(2,2021,'Alternador','Alternador2','Alternador1',10,2,2,0,''),(3,2030,'Bateria','Bateria LTH','LTH',50,3,3,0,''),(4,2050,'Espejo','Espejo','ESP',150,4,4,0,''),(5,2022,'Rotor','Rotor','Rotor',15,5,5,0,''),(7,2023,'Pomo','Pomo Perilla','Pomo',13,7,7,0,'');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `name_status` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'En espera'),(2,'En proceso'),(3,'Finalizado'),(4,'En CEDIS'),(5,'En entrega'),(6,'Entregado'),(7,'Pausado'),(8,'Cancelado'),(9,'Modificado'),(10,'Regresado'),(11,'Reanudado'),(12,'Liquidado');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporal`
--

DROP TABLE IF EXISTS `temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporal` (
  `id_borrador` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_borrador`,`id_producto`),
  KEY `FK_idproduc_productos` (`id_producto`),
  KEY `Fk_idcte_clientes` (`usuario`),
  CONSTRAINT `FK_idproduc_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Fk_idcte_clientes` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporal`
--

LOCK TABLES `temporal` WRITE;
/*!40000 ALTER TABLE `temporal` DISABLE KEYS */;
INSERT INTO `temporal` VALUES (3,1,1,1,'2017-11-06 16:17:42'),(3,4,1,1,'2017-11-21 18:40:55'),(4,1,3,1,'2017-11-06 17:11:27'),(4,2,1,1,'2017-11-06 17:07:45'),(4,3,3,1,'2017-11-06 17:07:40'),(5,3,1,1,'2017-11-06 23:51:47'),(6,1,1,1,'2017-11-06 23:51:58'),(7,2,1,1,'2017-11-06 23:52:03'),(8,2,1,1,'2017-11-06 23:53:05'),(9,3,1,1,'2017-11-06 23:53:09'),(11,1,1,1,'2017-11-07 01:03:51'),(11,2,1,1,'2017-11-07 01:03:47'),(11,3,1,1,'2017-11-07 01:03:43'),(12,1,1,1,'2017-11-07 01:09:35'),(12,2,1,1,'2017-11-07 01:09:39'),(12,3,1,1,'2017-11-07 01:09:44'),(14,1,2,1,'2017-11-07 01:14:00'),(14,2,2,1,'2017-11-07 01:13:53'),(14,3,2,1,'2017-11-07 01:41:30'),(16,1,1,3,'2017-11-08 23:33:13'),(16,2,1,3,'2017-11-07 01:44:36'),(17,1,1,3,'2017-11-07 01:44:41'),(18,3,1,3,'2017-11-07 01:45:47'),(19,2,1,3,'2017-11-07 01:55:53'),(19,3,1,3,'2017-11-07 01:55:58'),(20,2,1,1,'2017-11-07 22:57:54'),(21,1,1,1,'2017-11-08 01:07:12'),(21,2,1,1,'2017-11-08 01:07:03'),(21,3,1,1,'2017-11-08 01:07:08'),(22,2,2,1,'2017-11-08 02:11:07'),(23,2,1,1,'2017-11-18 01:23:43'),(23,3,57,1,'2017-11-18 01:23:13'),(24,3,8,1,'2017-11-18 02:18:50'),(25,3,10,1,'2017-11-18 02:36:40'),(25,4,5,1,'2017-11-18 02:46:46'),(26,3,18,1,'2017-11-18 02:55:49'),(27,4,1,1,'2017-11-18 03:36:04'),(28,1,4,1,'2017-11-18 04:07:01'),(28,3,2,1,'2017-11-18 04:08:13'),(28,4,2,1,'2017-11-18 04:21:10'),(29,2,1,1,'2017-11-18 04:44:52'),(29,3,1,1,'2017-11-18 04:44:20'),(29,4,1,1,'2017-11-18 04:45:01'),(30,3,1,1,'2017-11-18 05:05:00'),(30,4,3,1,'2017-11-18 04:51:08'),(32,3,3,1,'2017-11-18 05:25:26'),(33,3,1,1,'2017-11-18 05:31:00'),(34,7,3,1,'2017-11-18 05:31:13'),(35,4,2,1,'2017-11-18 05:31:46'),(36,4,2,1,'2017-11-18 05:51:00'),(37,3,1,1,'2017-11-18 16:04:59'),(38,3,1,1,'2017-11-18 16:51:42'),(38,4,1,1,'2017-11-18 16:52:10'),(39,3,1,1,'2017-11-18 17:11:01'),(39,4,1,1,'2017-11-18 17:11:27'),(40,3,1,1,'2017-11-22 15:32:51'),(44,1,1,1,'2017-11-22 23:57:36'),(44,2,1,1,'2017-11-22 23:40:58'),(44,3,5,1,'2017-11-22 23:40:26'),(44,4,4,1,'2017-11-22 23:40:36'),(46,3,6,1,'2017-11-23 00:42:56'),(53,2,1,20,'2017-11-23 21:29:02'),(59,7,1,17,'2017-11-28 03:29:06');
/*!40000 ALTER TABLE `temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuarios`
--

DROP TABLE IF EXISTS `tipo_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuarios` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuarios`
--

LOCK TABLES `tipo_usuarios` WRITE;
/*!40000 ALTER TABLE `tipo_usuarios` DISABLE KEYS */;
INSERT INTO `tipo_usuarios` VALUES (1,'Dueño'),(2,'Administrador'),(3,'Secretaria1'),(4,'Secretaria2'),(5,'Tecnicos'),(6,'AgenteVentas'),(7,'Clientes');
/*!40000 ALTER TABLE `tipo_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_user` varchar(20) COLLATE utf8_bin NOT NULL,
  `apellido1_user` varchar(15) COLLATE utf8_bin NOT NULL,
  `apellido2_user` varchar(15) COLLATE utf8_bin NOT NULL,
  `direccion_user` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono_user` varchar(10) COLLATE utf8_bin NOT NULL,
  `correo_user` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `user` varchar(15) COLLATE utf8_bin NOT NULL,
  `passwd` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `FK_id_tipo` (`id_tipo`),
  CONSTRAINT `FK_id_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuarios` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Maria','Pacheco','Ordaz','Tlaxcala','2235896549','marosdepa@gmail.com',3,'mar','1357'),(2,'Sara','Peña','Ochoa','puebla','7531598521','sara@gmail.com',4,'sara','753159'),(3,'Juan','Sanchez','Juarez','Tlaxcala','9751864560','juan@gmail.com',7,'juan','2468'),(8,'Julian','Castañeda','Osorio','Tlaxcala','7894561230','julian@gmail.com',6,'jul','516892'),(12,'Juana','Silverio','Fuentes','Tlaxcala','7894561235','juana@gmail.com',3,'juana','784569'),(15,'Rosa','Suarez','Gomez','Puebla','7254658960','ross@gmail.com',7,'rosa','7894'),(16,'Mercedes','Pascual','Rosas','Tlaxcala','7254658960','merced@gmail.com',7,'merced','654987'),(17,'jean','ros','pal','tlaxcala','7879797878','jean@gmail.com',7,'jean','123'),(18,'hade','col','men','puebla','7463678920','haz@gmail.com',7,'haz','haz'),(19,'alb','des','tec','tlax','8768689486','alba@gmail.com',7,'alb','alb'),(20,'bibi','diaz','muñoz','tlaxcala','5675867893','bibi@gmail.com',7,'bibi','bibi'),(21,'yar','g','p','dgg','2251001758','sbdhdh@hotmail.com',7,'yari','sonyst21a'),(22,'ddd','ggg','ggg','yy','9588989009','a@g.com',7,'g','g');
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

-- Dump completed on 2018-09-28 11:22:33
