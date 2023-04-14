CREATE DATABASE  IF NOT EXISTS `avancemetas` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `avancemetas`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: avancemetas
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `asistencia_asistencias`
--

DROP TABLE IF EXISTS `asistencia_asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `asistencia_asistencias` (
  `idasistencia` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL,
  PRIMARY KEY (`idasistencia`),
  KEY `fk_asistencia_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_asistencia_personal` FOREIGN KEY (`idpersonal`) REFERENCES `metas_personal` (`id_personal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_asistencias`
--

LOCK TABLES `asistencia_asistencias` WRITE;
/*!40000 ALTER TABLE `asistencia_asistencias` DISABLE KEYS */;
INSERT INTO `asistencia_asistencias` VALUES (1,5,'2023-03-23','19:36:34','Entrada',NULL,NULL),(2,5,'2023-03-23','19:37:19','Salida',NULL,NULL),(3,5,'2023-03-23','19:39:04','entrada',NULL,NULL),(4,5,'2023-03-23','19:39:37','Salida',NULL,NULL),(5,5,'2023-03-23','19:53:24','Entrada',NULL,NULL),(6,5,'2023-03-23','19:53:52','Salida',NULL,NULL),(7,5,'2023-03-23','22:32:32','Salida',NULL,NULL),(8,5,'2023-03-23','22:40:21','Entrada',NULL,NULL),(9,5,'2023-03-23','22:40:50','Salida',NULL,NULL),(10,5,'2023-03-24','18:33:28','Entrada',NULL,NULL),(11,5,'2023-03-24','19:10:57','',NULL,NULL),(12,5,'2023-03-24','19:11:12','',NULL,NULL),(13,5,'2023-03-24','19:31:58','Entrada',NULL,NULL),(14,5,'2023-03-25','11:27:30','Salida',NULL,NULL),(15,5,'2023-04-04','19:52:54','Entrada',NULL,NULL),(16,2,'2023-04-06','08:43:42','Entrada',NULL,NULL),(17,2,'2023-04-13','13:47:14','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `asistencia_asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia_bitacora`
--

DROP TABLE IF EXISTS `asistencia_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `asistencia_bitacora` (
  `idbitacora` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempo` double DEFAULT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `fk_bitacora_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_bitacora_personal` FOREIGN KEY (`idpersonal`) REFERENCES `metas_personal` (`id_personal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_bitacora`
--

LOCK TABLES `asistencia_bitacora` WRITE;
/*!40000 ALTER TABLE `asistencia_bitacora` DISABLE KEYS */;
INSERT INTO `asistencia_bitacora` VALUES (1,2,'2023-04-06','08:43:42','Entrada',NULL,NULL),(2,2,'2023-04-06','09:53:41','Entrada',NULL,NULL),(3,2,'2023-04-06','09:59:09','Entrada',NULL,NULL),(4,2,'2023-04-06','10:43:29','Entrada','10:43:42',13),(5,2,'2023-04-13','13:47:14','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `asistencia_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia_login`
--

DROP TABLE IF EXISTS `asistencia_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `asistencia_login` (
  `log_usu` int NOT NULL,
  `id_personal` int NOT NULL,
  `nom_usu` varchar(30) CHARACTER SET utf8 NOT NULL,
  `psw_usu` varchar(255) CHARACTER SET utf8 NOT NULL,
  `niv_usu` int NOT NULL DEFAULT '2',
  `chk_usu` tinyint NOT NULL,
  PRIMARY KEY (`log_usu`),
  UNIQUE KEY `log_usu_UNIQUE` (`log_usu`),
  KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_login`
--

LOCK TABLES `asistencia_login` WRITE;
/*!40000 ALTER TABLE `asistencia_login` DISABLE KEYS */;
INSERT INTO `asistencia_login` VALUES (1,5,'edgar','edgar',1,1),(2,2,'emp','emp',3,1),(3,6,'julia','julia',2,1);
/*!40000 ALTER TABLE `asistencia_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_asignacionpersonal`
--

DROP TABLE IF EXISTS `metas_asignacionpersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_asignacionpersonal` (
  `idasignacion` int NOT NULL AUTO_INCREMENT,
  `idoficina` int NOT NULL,
  `idarea` int DEFAULT NULL,
  `idcargo` int DEFAULT NULL,
  `idpersonal` int DEFAULT NULL,
  `fecInicioCargo` date DEFAULT NULL,
  `fecFinCargo` date DEFAULT NULL,
  `documento` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `fecUpdtae` datetime DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_asignacionpersonal`
--

LOCK TABLES `metas_asignacionpersonal` WRITE;
/*!40000 ALTER TABLE `metas_asignacionpersonal` DISABLE KEYS */;
INSERT INTO `metas_asignacionpersonal` VALUES (1,1,0,3,2,'2019-01-01',NULL,'R.D 15-GRPUNO','2020-02-05 16:11:26',NULL),(2,6,7,10,8,'2012-02-16',NULL,'RESOLUCION N° 25-2012-ARP/D','2020-02-05 19:20:34',NULL),(3,2,0,8,5,'2005-02-15',NULL,'RESOLUCION N° 29-2012-ARP/D','2020-02-05 19:27:16',NULL),(4,6,14,13,9,'2009-06-25',NULL,'RD 156-ARP/D','2020-02-05 19:37:07',NULL);
/*!40000 ALTER TABLE `metas_asignacionpersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_cargos`
--

DROP TABLE IF EXISTS `metas_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_cargos` (
  `id_cargos` int NOT NULL AUTO_INCREMENT,
  `id_oficina` int NOT NULL,
  `nombre_cargo` varchar(150) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `fec_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cargos`),
  KEY `fk_oficina_cargos_idx` (`id_oficina`),
  CONSTRAINT `fk_oficina_cargos` FOREIGN KEY (`id_oficina`) REFERENCES `metas_oficinas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_cargos`
--

LOCK TABLES `metas_cargos` WRITE;
/*!40000 ALTER TABLE `metas_cargos` DISABLE KEYS */;
INSERT INTO `metas_cargos` VALUES (3,1,'DIRECTOR ARCHIVO REGIONAL DE PUNO','2020-02-05 14:51:47'),(5,6,'JEFE e) OFICINA TECNICA ADMINISTRATIVA','2020-02-05 14:51:47'),(7,2,'DIRECTOR e) ARCHIVO INTERMEDIO','2020-02-05 15:06:04'),(8,5,'DIRECTOR e) ARCHIVO HISTÓRICO','2020-02-05 15:06:23'),(9,1,'ASESOR LEGAL','2020-02-05 15:06:41'),(10,1,'e) ÁREA DE INFORMÁTICA Y TECNOLOGÍA','2020-02-05 15:07:03'),(11,1,'e) ARCHIVO CENTRAL Y TRAMITE DOCUMENTARIO','2020-02-05 15:07:54'),(12,6,'e) PLANIFICACIÓN Y PRESUPUESTO','2020-02-05 15:19:35'),(13,6,'e) RECURSOS HUMANOS','2020-02-05 15:19:49'),(14,6,'e) ABASTECIMIENTOS','2020-02-05 15:20:04');
/*!40000 ALTER TABLE `metas_cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_datospersonal`
--

DROP TABLE IF EXISTS `metas_datospersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_datospersonal` (
  `id_adpersonal` int NOT NULL AUTO_INCREMENT,
  `profesion` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `tiempo_servicio` int DEFAULT NULL,
  `condicion` varchar(20) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `seguro_social` varchar(20) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `grupo_sanguineo` varchar(10) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `f_deceso` date DEFAULT NULL,
  PRIMARY KEY (`id_adpersonal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_datospersonal`
--

LOCK TABLES `metas_datospersonal` WRITE;
/*!40000 ALTER TABLE `metas_datospersonal` DISABLE KEYS */;
INSERT INTO `metas_datospersonal` VALUES (1,'ing. de sistemas',5,'contratado','SIS','O','2020-01-01','2021-04-16');
/*!40000 ALTER TABLE `metas_datospersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_funciones`
--

DROP TABLE IF EXISTS `metas_funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_funciones` (
  `id_acciones` int NOT NULL AUTO_INCREMENT,
  `id_personal` int NOT NULL,
  `id_cargos` int DEFAULT NULL,
  `funcion` varchar(150) CHARACTER SET latin1 NOT NULL,
  `unimed` varchar(20) CHARACTER SET latin1 NOT NULL,
  `cantidad` double NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_acciones`),
  KEY `id_personal` (`id_personal`),
  KEY `id_cargos` (`id_cargos`),
  CONSTRAINT `metas_funciones_ibfk_1` FOREIGN KEY (`id_personal`) REFERENCES `metas_personal` (`id_personal`),
  CONSTRAINT `metas_funciones_ibfk_2` FOREIGN KEY (`id_cargos`) REFERENCES `metas_cargos` (`id_cargos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_funciones`
--

LOCK TABLES `metas_funciones` WRITE;
/*!40000 ALTER TABLE `metas_funciones` DISABLE KEYS */;
INSERT INTO `metas_funciones` VALUES (5,2,3,'unnnn','numero',3,'2023-02-03 00:00:00','2023-02-05 05:00:00');
/*!40000 ALTER TABLE `metas_funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_gerencia`
--

DROP TABLE IF EXISTS `metas_gerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_gerencia` (
  `idgerencia` int NOT NULL AUTO_INCREMENT,
  `idinstitucion` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idgerencia`),
  KEY `fk_gerencia_institucion_idx` (`idinstitucion`),
  CONSTRAINT `fk_gerencia_institucion` FOREIGN KEY (`idinstitucion`) REFERENCES `metas_institucion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_gerencia`
--

LOCK TABLES `metas_gerencia` WRITE;
/*!40000 ALTER TABLE `metas_gerencia` DISABLE KEYS */;
INSERT INTO `metas_gerencia` VALUES (1,1,'Gerencia General'),(2,1,'Gerencia de Desarrollo'),(3,1,'NUEVA GERENCIA'),(4,1,'EL SUPER ESPACIO');
/*!40000 ALTER TABLE `metas_gerencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_institucion`
--

DROP TABLE IF EXISTS `metas_institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_institucion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_inst` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `direccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `RUC` char(11) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `p_web` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `fecha_creacion_archivo` date NOT NULL,
  `n_resolucion` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `id_metas` int NOT NULL,
  `fecha_create` datetime NOT NULL,
  `fecha_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_institucion`
--

LOCK TABLES `metas_institucion` WRITE;
/*!40000 ALTER TABLE `metas_institucion` DISABLE KEYS */;
INSERT INTO `metas_institucion` VALUES (1,'Archivo Regional Puno','Av. Ejercito Nº 645','051 -600704  051-600705','20164852167','archivoregionalpuno@gmail.com','www.arp.gob.pe','1987-03-15','R.D. J. N° 246-AGN/J',1,'2020-01-09 00:00:00','2020-01-31 16:40:34'),(2,'KATARI','PSJE MANUEL A SEGURA 144','935017466','20561233212','informes@katari.org.pe','katari.org.pe','2019-06-05','RD 56',1,'2023-03-21 11:10:32','2023-03-21 16:10:32');
/*!40000 ALTER TABLE `metas_institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_jefearea`
--

DROP TABLE IF EXISTS `metas_jefearea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_jefearea` (
  `id_jefearea` int NOT NULL AUTO_INCREMENT,
  `id_personal` int DEFAULT NULL,
  `id_areas` int DEFAULT NULL,
  PRIMARY KEY (`id_jefearea`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_jefearea`
--

LOCK TABLES `metas_jefearea` WRITE;
/*!40000 ALTER TABLE `metas_jefearea` DISABLE KEYS */;
INSERT INTO `metas_jefearea` VALUES (2,2,1),(3,5,1),(5,5,2),(7,5,2);
/*!40000 ALTER TABLE `metas_jefearea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_meta`
--

DROP TABLE IF EXISTS `metas_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_meta` (
  `id_metas` int NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(150) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `programado` double NOT NULL,
  `unidad_medida` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_metas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_meta`
--

LOCK TABLES `metas_meta` WRITE;
/*!40000 ALTER TABLE `metas_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `metas_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_metasareas`
--

DROP TABLE IF EXISTS `metas_metasareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_metasareas` (
  `id_metas_areas` int NOT NULL AUTO_INCREMENT,
  `id_meta` int DEFAULT NULL,
  `id_area` int DEFAULT NULL,
  `fecha_reporte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cantidad_avance` double DEFAULT NULL,
  PRIMARY KEY (`id_metas_areas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_metasareas`
--

LOCK TABLES `metas_metasareas` WRITE;
/*!40000 ALTER TABLE `metas_metasareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `metas_metasareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_oficinas`
--

DROP TABLE IF EXISTS `metas_oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_oficinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_of` varchar(60) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `sigla` varchar(10) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_metas` int DEFAULT NULL,
  `id_institucion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_oficinas`
--

LOCK TABLES `metas_oficinas` WRITE;
/*!40000 ALTER TABLE `metas_oficinas` DISABLE KEYS */;
INSERT INTO `metas_oficinas` VALUES (1,'ARCHIVO REGIONAL DE PUNO','DIRECCION','2020-01-01 00:00:00','2020-02-05 20:04:50',1,1),(2,'DIRECCIÓN DE ARCHIVO INTERMEDIO','AI','2020-01-02 00:00:00','2020-02-05 20:05:20',1,1),(5,'DIRECCIÓN DE ARCHIVO HISTÓRICO','AH','2020-01-31 16:44:01','2020-02-05 20:05:09',1,1),(6,'OFICINA TECNICA ADMINISTRATIVA (OTA)','OTA','2020-01-31 16:46:39','2020-02-03 13:53:00',1,1),(7,'','','2023-03-20 22:37:50','2023-03-21 03:37:50',1,1),(8,'DF','DFDFD','2023-03-20 22:38:39','2023-03-21 03:38:39',1,1);
/*!40000 ALTER TABLE `metas_oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_personal`
--

DROP TABLE IF EXISTS `metas_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `sexo` varchar(10) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `DNI` char(8) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `foto` varchar(200) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_personal`
--

LOCK TABLES `metas_personal` WRITE;
/*!40000 ALTER TABLE `metas_personal` DISABLE KEYS */;
INSERT INTO `metas_personal` VALUES (2,'JUAN CARLOS','SANCHEZ CERRO','masculino','951','1999-02-17','elianacondemaita@hotmail.com','01111','./images/ejecutivo16.jpg','2020-01-04 00:00:00','2023-03-25 23:19:55'),(5,'SONIA ROSARIO','SOTOMAYOR VARGAS','femenino','95111','1998-12-23','ssotomayor@hotmail.com','01111','./imagenes/usuario.png','2020-01-08 00:00:00','2020-02-04 15:06:48'),(6,'JULIA','TAPIA QUISPE','masculino','951','1978-01-01','jtapia@hotmail.com','0111','./imagenes/usuario.png','2020-01-24 00:00:00','2020-02-04 15:06:54'),(7,'MARCOS','HILASAYA YUNGAS','masculino','987654321','1968-06-19','MARCOSHILASACA@OTMAIL.COM','01235689','./imagenes/usuario.png','2020-02-04 14:57:13','2020-02-04 14:57:13'),(8,'EDGAR','APAZA CHOQUE','masculino','935017466','1978-04-15','EDGARAPAZAC@GMAIL.COM','40023528','./imagenes/usuario.png','2020-02-05 14:23:15','2020-02-05 14:23:15'),(9,'ALEJANDRO','MAMANI RODRIGUEZ','masculino','9','1968-02-05','ALEJANDRO@GMIAL.COM','0657884','./imagenes/usuario.png','2020-02-05 19:36:15','2020-02-05 19:36:15');
/*!40000 ALTER TABLE `metas_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_reportes`
--

DROP TABLE IF EXISTS `metas_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_reportes` (
  `idreporte` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `idfunciones` int NOT NULL,
  `fecha` timestamp NOT NULL,
  `tipo` varchar(45) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci NOT NULL,
  `cantidad` double NOT NULL DEFAULT '1',
  `obs` varchar(200) CHARACTER SET utf8 COLLATE utf8_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idreporte`),
  KEY `id_personal` (`idpersonal`),
  KEY `id_responsabilidades` (`idfunciones`),
  CONSTRAINT `fk_acciones_1` FOREIGN KEY (`idfunciones`) REFERENCES `metas_funciones` (`id_acciones`),
  CONSTRAINT `fk_personal_1` FOREIGN KEY (`idpersonal`) REFERENCES `metas_personal` (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_reportes`
--

LOCK TABLES `metas_reportes` WRITE;
/*!40000 ALTER TABLE `metas_reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `metas_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_subgerencia`
--

DROP TABLE IF EXISTS `metas_subgerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_subgerencia` (
  `idsubgerencia` int NOT NULL AUTO_INCREMENT,
  `idgerencia` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idsubgerencia`),
  KEY `fk_subgerencia_gerencia_idx` (`idgerencia`),
  CONSTRAINT `fk_subgerencia_gerencia` FOREIGN KEY (`idgerencia`) REFERENCES `metas_gerencia` (`idgerencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_subgerencia`
--

LOCK TABLES `metas_subgerencia` WRITE;
/*!40000 ALTER TABLE `metas_subgerencia` DISABLE KEYS */;
INSERT INTO `metas_subgerencia` VALUES (1,1,'Planificación y prespuesto');
/*!40000 ALTER TABLE `metas_subgerencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 15:46:09
