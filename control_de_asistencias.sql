-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: control_de_asistencias
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
-- Table structure for table `accion`
--

DROP TABLE IF EXISTS `accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `accion` varchar(300) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accion_usuario_fk` (`id_usuario`),
  CONSTRAINT `accion_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accion`
--

LOCK TABLES `accion` WRITE;
/*!40000 ALTER TABLE `accion` DISABLE KEYS */;
/*!40000 ALTER TABLE `accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alertas`
--

DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertas`
--

LOCK TABLES `alertas` WRITE;
/*!40000 ALTER TABLE `alertas` DISABLE KEYS */;
INSERT INTO `alertas` VALUES (1,'fatla'),(2,'a tiempo'),(3,'retardo'),(4,'permiso'),(5,'entrada demasiado temprado'),(6,'entrada demasiado tarde'),(7,'salida demasiado temprano'),(8,'salida demasiado tarde');
/*!40000 ALTER TABLE `alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `id_alerta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `asistencias_usuario_fk` (`id_empleado`),
  KEY `asistencias_alerta_fk` (`id_alerta`),
  KEY `asistencias_periodo_fk` (`id_periodo`),
  CONSTRAINT `asistencias_alertas_fk` FOREIGN KEY (`id_alerta`) REFERENCES `alertas` (`id`),
  CONSTRAINT `asistencias_periodo_fk` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`),
  CONSTRAINT `asistencias_usuario_fk` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_laboral`
--

DROP TABLE IF EXISTS `dia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia_laboral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_laboral`
--

LOCK TABLES `dia_laboral` WRITE;
/*!40000 ALTER TABLE `dia_laboral` DISABLE KEYS */;
INSERT INTO `dia_laboral` VALUES (1,'Lunes'),(2,'Martes'),(3,'Miercoles'),(4,'Jueves'),(5,'Viernes'),(6,'Sábado'),(7,'Domingo');
/*!40000 ALTER TABLE `dia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reloj` int(11) NOT NULL,
  `matricula` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nombres` varchar(60) CHARACTER SET latin1 NOT NULL,
  `apaterno` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amaterno` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rfc` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sexo` char(1) CHARACTER SET latin1 NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `domicilio` varchar(300) CHARACTER SET latin1 NOT NULL,
  `id_rol_empleado` int(11) NOT NULL,
  `huella` varchar(500) CHARACTER SET latin1 NOT NULL,
  `foto` longblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `empleado_rolempleado_fk` (`id_rol_empleado`),
  CONSTRAINT `empleado_rolempleado_fk` FOREIGN KEY (`id_rol_empleado`) REFERENCES `rol_empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,'DISF910129S90','felix','diaz','santos','',' ',' ','M',NULL,' ',1,'la huella',''),(3,0,'DIGF560727EN7','felix','diaz',' ',' ',' ',' ','M',NULL,' ',1,'la huella',''),(4,0,'DIGF560727EN7','felix','diaz',' ',' ',' ',' ','M',NULL,' ',1,'la huella',''),(5,0,'DIGF560727EN7','felix','diaz',' ',' ',' ',' ','M',NULL,' ',1,'la huella',''),(6,0,'DIGF560727EN7','felix','diaz',' ',' ',' ',' ','M',NULL,' ',1,'la huella',''),(7,0,'DIGF560727EN7','felix','diaz',' ',' ',' ',' ','M',NULL,' ',1,'la huella',''),(8,0,'DIGF560727EN7','felix','diaz',' ',' ',' ',' ','M',NULL,' ',1,'la huella','');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas_nolaborales`
--

DROP TABLE IF EXISTS `fechas_nolaborales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechas_nolaborales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_periodo` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `motivo` varchar(500) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fechas_nolaborales_periodo_fk` (`id_periodo`),
  CONSTRAINT `fechas_nolaborales_periodo_fk` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas_nolaborales`
--

LOCK TABLES `fechas_nolaborales` WRITE;
/*!40000 ALTER TABLE `fechas_nolaborales` DISABLE KEYS */;
INSERT INTO `fechas_nolaborales` VALUES (3,1,'2017-12-07','2017-12-07','prueba');
/*!40000 ALTER TABLE `fechas_nolaborales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_empleado`
--

DROP TABLE IF EXISTS `horario_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario_empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h_entrada` time NOT NULL,
  `h_salida` time NOT NULL,
  `limite_retardo` time NOT NULL,
  `u_entrada` time NOT NULL,
  `u_salida` time NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `horario_empleado_empleado_fk` (`id_empleado`),
  KEY `horario_empleado_dia_laboral_fk` (`id_dia`),
  KEY `horario_empleado_periodo_fk` (`id_periodo`),
  CONSTRAINT `horario_empleado_dia_laboral_fk` FOREIGN KEY (`id_dia`) REFERENCES `dia_laboral` (`id`),
  CONSTRAINT `horario_empleado_empleado_fk` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`),
  CONSTRAINT `horario_empleado_periodo_fk` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_empleado`
--

LOCK TABLES `horario_empleado` WRITE;
/*!40000 ALTER TABLE `horario_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipoperiodo` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `anio` char(4) CHARACTER SET latin1 NOT NULL,
  `periodo_actual` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `periodo_tipo_periodo_fk` (`id_tipoperiodo`),
  CONSTRAINT `periodo_tipo_periodo_fk` FOREIGN KEY (`id_tipoperiodo`) REFERENCES `tipo_periodo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,1,'2017-12-06','2017-12-08','2017',1),(2,1,'2017-12-06','2017-12-31','2017',0),(3,1,'2017-12-06','2017-12-31','2017',0),(4,1,'2017-12-06','2017-12-31','2017',0),(5,1,'2017-12-06','2017-12-06','2017',0),(6,1,'2017-12-06','2017-12-06','2017',0),(7,1,'2017-12-06','2017-12-06','2017',0),(8,1,'2017-12-06','2017-12-06','2017',0),(9,2,'2017-12-06','2017-12-06','2017',0),(10,2,'2017-12-06','2017-12-06','2017',0),(11,2,'2017-12-06','2017-12-06','2017',0),(12,2,'2017-12-06','2017-12-06','2017',0),(13,2,'2017-12-06','2017-12-06','2017',0),(14,2,'2017-12-06','2017-12-06','2017',0);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos_inasistencias`
--

DROP TABLE IF EXISTS `permisos_inasistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos_inasistencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `motivo` varchar(500) CHARACTER SET latin1 NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permisos_inasistencias_empelado_fk` (`id_empleado`),
  KEY `permisos_inasistencias_periodo_fk` (`id_periodo`),
  CONSTRAINT `permisos_inasistencias_empelado_fk` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`),
  CONSTRAINT `permisos_inasistencias_periodo_fk` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos_inasistencias`
--

LOCK TABLES `permisos_inasistencias` WRITE;
/*!40000 ALTER TABLE `permisos_inasistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos_inasistencias` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`skip-grants user`@`skip-grants host`*/ /*!50003 TRIGGER `acciones_permisos` BEFORE INSERT ON `permisos_inasistencias` FOR EACH ROW BEGIN	 
		 IF NEW.fecha_inIcio < NEW.fecha_fin THEN
            SET @dia=NEW.fecha_inicio;
            
            WHILE @dia <=NEW.fecha_fin DO 
				insert into asistencias (id_empleado,id_periodo,id_alerta,fecha,hora) values (NEW.id_empleado,NEW.id_periodo,4,@dia,'07:00:00');
			SET @dia = DATE_ADD(@dia,interval 1 day);            
            END WHILE;            
        END IF;

         IF NEW.fecha_inicio = NEW.fecha_fin THEN
             insert into asistencias (id_empleado,id_periodo,id_alerta,fecha,hora) values (NEW.id_empleado,NEW.id_periodo,4,NEW.fecha_inicio,'07:00:00');
         END IF;
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rol_empleado`
--

DROP TABLE IF EXISTS `rol_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol_empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_empleado`
--

LOCK TABLES `rol_empleado` WRITE;
/*!40000 ALTER TABLE `rol_empleado` DISABLE KEYS */;
INSERT INTO `rol_empleado` VALUES (1,'Administrativo'),(2,'docente');
/*!40000 ALTER TABLE `rol_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesiones`
--

DROP TABLE IF EXISTS `sesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sesiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `empleado_fk` (`id_empleado`),
  CONSTRAINT `empleado_fk` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesiones`
--

LOCK TABLES `sesiones` WRITE;
/*!40000 ALTER TABLE `sesiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_periodo`
--

DROP TABLE IF EXISTS `tipo_periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_periodo`
--

LOCK TABLES `tipo_periodo` WRITE;
/*!40000 ALTER TABLE `tipo_periodo` DISABLE KEYS */;
INSERT INTO `tipo_periodo` VALUES (1,'diciembre'),(2,'ago-dic');
/*!40000 ALTER TABLE `tipo_periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `login` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `estado` int(11) NOT NULL,
  `acceso` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ver` int(11) NOT NULL,
  `agregar` int(11) NOT NULL,
  `modificar` int(11) NOT NULL,
  `eliminar` int(11) NOT NULL,
  `crear_usuarios` int(11) NOT NULL,
  `otorgar_permisos` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_empleado_fk` (`id_empleado`),
  CONSTRAINT `usuario_empleado_fk` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'fdiaz','1234',0,'visitante',1,1,1,1,1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-28 11:19:36
