CREATE DATABASE  IF NOT EXISTS `avancemetas` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */;
USE `avancemetas`;
-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: avancemetas
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `idareas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `idoficina` int(11) DEFAULT NULL,
  `idmetas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idareas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacionpersonal`
--

DROP TABLE IF EXISTS `asignacionpersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacionpersonal` (
  `idasignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idoficina` int(11) NOT NULL,
  `idarea` int(11) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `idpersonal` int(11) DEFAULT NULL,
  `fecInicioCargo` date DEFAULT NULL,
  `fecFinCargo` date DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `fecUpdtae` datetime DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacionpersonal`
--

LOCK TABLES `asignacionpersonal` WRITE;
/*!40000 ALTER TABLE `asignacionpersonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacionpersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencia` (
  `idasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL,
  PRIMARY KEY (`idasistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,1,'2023-04-19','23:28:45','Entrada',NULL,NULL),(2,2,'2023-04-20','14:14:42','Entrada',NULL,NULL),(3,1,'2023-04-20','16:52:39','Entrada',NULL,NULL),(4,3,'2023-04-21','08:24:36','Entrada',NULL,NULL),(5,4,'2023-04-21','08:28:51','Entrada',NULL,NULL),(6,5,'2023-04-21','08:32:27','Entrada',NULL,NULL),(7,7,'2023-04-21','12:43:02','Entrada',NULL,NULL),(8,1,'2023-04-22','07:15:54','Entrada',NULL,NULL),(9,6,'2023-04-22','07:16:15','Entrada',NULL,NULL),(10,5,'2023-04-22','07:16:47','Entrada',NULL,NULL),(11,7,'2023-04-22','07:35:59','Entrada',NULL,NULL),(12,4,'2023-04-22','08:46:40','Entrada',NULL,NULL),(13,3,'2023-04-22','09:03:59','Entrada',NULL,NULL),(14,2,'2023-04-22','09:04:27','Entrada',NULL,NULL),(15,7,'2023-04-23','15:58:39','Entrada',NULL,NULL),(16,4,'2023-04-23','21:38:09','Entrada',NULL,NULL),(17,3,'2023-04-24','07:09:52','Entrada',NULL,NULL),(18,4,'2023-04-24','07:26:45','Entrada',NULL,NULL),(19,5,'2023-04-24','07:27:09','Entrada',NULL,NULL),(20,2,'2023-04-24','11:24:14','Entrada',NULL,NULL),(21,7,'2023-04-24','15:34:28','Entrada',NULL,NULL),(22,3,'2023-04-25','07:16:27','Entrada',NULL,NULL),(23,4,'2023-04-25','07:26:16','Entrada',NULL,NULL),(24,5,'2023-04-25','08:28:07','Entrada',NULL,NULL),(25,2,'2023-04-25','10:08:43','Entrada',NULL,NULL),(26,7,'2023-04-25','20:08:07','Entrada',NULL,NULL),(27,4,'2023-04-26','07:27:02','Entrada',NULL,NULL),(28,3,'2023-04-26','07:33:46','Entrada',NULL,NULL),(29,5,'2023-04-26','10:07:08','Entrada',NULL,NULL),(30,4,'2023-04-27','07:25:36','Entrada',NULL,NULL),(31,3,'2023-04-27','07:26:19','Entrada',NULL,NULL),(32,5,'2023-04-27','07:29:06','Entrada',NULL,NULL),(33,4,'2023-04-28','07:20:57','Entrada',NULL,NULL),(34,3,'2023-04-28','07:22:26','Entrada',NULL,NULL),(35,5,'2023-04-28','07:28:38','Entrada',NULL,NULL),(36,1,'2023-04-28','10:26:56','Entrada',NULL,NULL),(37,7,'2023-04-29','07:41:13','Entrada',NULL,NULL),(38,3,'2023-04-29','11:18:29','Entrada',NULL,NULL),(39,3,'2023-04-30','13:36:32','Entrada',NULL,NULL),(40,3,'2023-05-01','07:32:43','Entrada',NULL,NULL),(41,5,'2023-05-01','07:34:39','Entrada',NULL,NULL),(42,4,'2023-05-02','07:32:02','Entrada',NULL,NULL),(43,3,'2023-05-02','07:37:31','Entrada',NULL,NULL),(44,5,'2023-05-02','08:06:01','Entrada',NULL,NULL),(45,4,'2023-05-03','07:29:32','Entrada',NULL,NULL),(46,5,'2023-05-03','09:05:17','Entrada',NULL,NULL),(47,3,'2023-05-04','07:33:27','Entrada',NULL,NULL),(48,4,'2023-05-04','07:36:58','Entrada',NULL,NULL),(49,5,'2023-05-04','07:50:49','Entrada',NULL,NULL),(50,7,'2023-05-04','12:48:38','Entrada',NULL,NULL),(51,6,'2023-05-04','12:48:44','Entrada',NULL,NULL),(52,4,'2023-05-05','07:30:27','Entrada',NULL,NULL),(53,3,'2023-05-05','07:33:50','Entrada',NULL,NULL),(54,5,'2023-05-05','07:43:10','Entrada',NULL,NULL),(55,1,'2023-05-09','15:37:36','Entrada',NULL,NULL),(56,1,'2023-05-10','23:11:16','Entrada',NULL,NULL),(57,1,'2023-05-11','08:22:23','Entrada',NULL,NULL),(58,1,'2023-05-12','15:25:04','Entrada',NULL,NULL),(59,1,'2023-05-12','15:25:04','Salida','17:00:41',1.59),(60,1,'2023-05-16','18:46:34','Entrada',NULL,NULL),(61,1,'2023-05-16','18:46:34','Salida','18:53:12',0.11),(62,1,'2023-05-19','06:41:35','Entrada',NULL,NULL),(63,5,'2023-05-19','06:43:37','Entrada',NULL,NULL),(64,1,'2023-06-12','14:58:31','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempo` double DEFAULT NULL,
  PRIMARY KEY (`idbitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,1,'2023-04-19','23:28:45','Entrada',NULL,NULL),(2,2,'2023-04-20','14:14:42','Entrada',NULL,NULL),(3,2,'2023-04-20','16:39:53','Entrada',NULL,NULL),(4,1,'2023-04-20','16:52:39','Entrada',NULL,NULL),(5,2,'2023-04-20','18:24:48','Entrada',NULL,NULL),(6,2,'2023-04-20','18:25:06','Entrada',NULL,NULL),(7,2,'2023-04-20','18:27:05','Entrada',NULL,NULL),(8,2,'2023-04-20','18:27:55','Entrada',NULL,NULL),(9,2,'2023-04-20','18:31:56','Entrada',NULL,NULL),(10,3,'2023-04-21','08:24:36','Entrada',NULL,NULL),(11,4,'2023-04-21','08:28:51','Entrada',NULL,NULL),(12,5,'2023-04-21','08:32:27','Entrada',NULL,NULL),(13,4,'2023-04-21','10:24:45','Entrada','11:45:35',4850),(14,7,'2023-04-21','12:43:02','Entrada',NULL,NULL),(15,4,'2023-04-21','13:32:56','Entrada','13:36:06',190),(16,5,'2023-04-21','13:33:58','Entrada','13:52:13',1095),(17,5,'2023-04-21','13:52:29','Entrada','13:52:38',9),(18,7,'2023-04-21','15:42:29','Entrada',NULL,NULL),(19,1,'2023-04-22','07:15:54','Entrada','07:16:10',16),(20,6,'2023-04-22','07:16:15','Entrada','07:16:28',13),(21,5,'2023-04-22','07:16:47','Entrada','07:16:54',7),(22,7,'2023-04-22','07:35:59','Entrada','07:40:34',275),(23,7,'2023-04-22','07:50:37','Entrada','07:51:37',60),(24,4,'2023-04-22','08:46:40','Entrada',NULL,NULL),(25,6,'2023-04-22','08:55:01','Entrada',NULL,NULL),(26,3,'2023-04-22','09:03:59','Entrada',NULL,NULL),(27,5,'2023-04-22','09:04:22','Entrada',NULL,NULL),(28,2,'2023-04-22','09:04:27','Entrada',NULL,NULL),(29,1,'2023-04-22','09:28:00','Entrada',NULL,NULL),(30,1,'2023-04-22','10:00:45','Entrada',NULL,NULL),(31,4,'2023-04-22','10:02:35','Entrada',NULL,NULL),(32,6,'2023-04-22','18:49:56','Entrada',NULL,NULL),(33,7,'2023-04-22','19:19:00','Entrada',NULL,NULL),(34,7,'2023-04-23','15:58:39','Entrada',NULL,NULL),(35,4,'2023-04-23','21:38:09','Entrada',NULL,NULL),(36,3,'2023-04-24','07:09:52','Entrada',NULL,NULL),(37,4,'2023-04-24','07:26:45','Entrada',NULL,NULL),(38,5,'2023-04-24','07:27:09','Entrada',NULL,NULL),(39,3,'2023-04-24','08:22:12','Entrada',NULL,NULL),(40,4,'2023-04-24','08:59:30','Entrada','11:32:16',9166),(41,5,'2023-04-24','11:20:04','Entrada',NULL,NULL),(42,2,'2023-04-24','11:24:14','Entrada',NULL,NULL),(43,3,'2023-04-24','11:45:24','Entrada',NULL,NULL),(44,4,'2023-04-24','14:45:31','Entrada',NULL,NULL),(45,5,'2023-04-24','14:48:07','Entrada','14:50:55',168),(46,7,'2023-04-24','15:34:28','Entrada',NULL,NULL),(47,7,'2023-04-24','17:24:23','Entrada',NULL,NULL),(48,7,'2023-04-24','19:54:59','Entrada',NULL,NULL),(49,3,'2023-04-25','07:16:27','Entrada',NULL,NULL),(50,4,'2023-04-25','07:26:16','Entrada',NULL,NULL),(51,5,'2023-04-25','08:28:07','Entrada',NULL,NULL),(52,4,'2023-04-25','08:54:05','Entrada',NULL,NULL),(53,2,'2023-04-25','10:08:43','Entrada',NULL,NULL),(54,4,'2023-04-25','10:12:46','Entrada','11:40:30',5264),(55,3,'2023-04-25','13:36:23','Entrada',NULL,NULL),(56,7,'2023-04-25','20:08:07','Entrada',NULL,NULL),(57,4,'2023-04-26','07:27:02','Entrada',NULL,NULL),(58,3,'2023-04-26','07:33:46','Entrada',NULL,NULL),(59,4,'2023-04-26','09:36:33','Entrada','11:48:39',7926),(60,5,'2023-04-26','10:07:08','Entrada',NULL,NULL),(61,5,'2023-04-26','10:43:45','Entrada','10:44:05',20),(62,5,'2023-04-26','10:44:16','Entrada','10:44:21',5),(63,3,'2023-04-26','11:37:06','Entrada','11:37:09',3),(64,3,'2023-04-26','15:55:53','Entrada',NULL,NULL),(65,3,'2023-04-26','22:06:39','Entrada',NULL,NULL),(66,4,'2023-04-27','07:25:36','Entrada','11:41:28',15352),(67,3,'2023-04-27','07:26:19','Entrada',NULL,NULL),(68,5,'2023-04-27','07:29:06','Entrada',NULL,NULL),(69,5,'2023-04-27','11:59:17','Entrada',NULL,NULL),(70,3,'2023-04-27','20:56:34','Entrada',NULL,NULL),(71,4,'2023-04-28','07:20:57','Entrada',NULL,NULL),(72,3,'2023-04-28','07:22:26','Entrada',NULL,NULL),(73,5,'2023-04-28','07:28:38','Entrada',NULL,NULL),(74,4,'2023-04-28','08:43:34','Entrada',NULL,NULL),(75,4,'2023-04-28','09:39:06','Entrada','11:32:01',6775),(76,1,'2023-04-28','10:26:56','Entrada','10:27:48',52),(77,1,'2023-04-28','10:28:02','Entrada',NULL,NULL),(78,5,'2023-04-28','10:34:26','Entrada',NULL,NULL),(79,5,'2023-04-28','11:17:43','Entrada','11:18:46',63),(80,5,'2023-04-28','11:18:49','Entrada',NULL,NULL),(81,1,'2023-04-28','22:02:07','Entrada',NULL,NULL),(82,1,'2023-04-28','22:02:18','Entrada',NULL,NULL),(83,3,'2023-04-28','22:02:39','Entrada',NULL,NULL),(84,1,'2023-04-28','22:02:43','Entrada',NULL,NULL),(85,1,'2023-04-28','22:08:34','Entrada',NULL,NULL),(86,1,'2023-04-28','22:13:03','Entrada',NULL,NULL),(87,3,'2023-04-28','22:13:07','Entrada',NULL,NULL),(88,1,'2023-04-28','22:13:11','Entrada',NULL,NULL),(89,7,'2023-04-29','07:41:13','Entrada','07:42:55',102),(90,3,'2023-04-29','11:18:29','Entrada',NULL,NULL),(91,3,'2023-04-29','17:39:33','Entrada',NULL,NULL),(92,3,'2023-04-29','20:13:13','Entrada',NULL,NULL),(93,3,'2023-04-30','13:36:32','Entrada',NULL,NULL),(94,3,'2023-05-01','07:32:43','Entrada',NULL,NULL),(95,5,'2023-05-01','07:34:39','Entrada',NULL,NULL),(96,5,'2023-05-01','12:07:13','Entrada','12:11:48',275),(97,4,'2023-05-02','07:32:02','Entrada',NULL,NULL),(98,3,'2023-05-02','07:37:31','Entrada',NULL,NULL),(99,5,'2023-05-02','08:06:01','Entrada',NULL,NULL),(100,4,'2023-05-02','10:29:52','Entrada',NULL,NULL),(101,4,'2023-05-02','11:17:38','Entrada','11:35:36',1078),(102,4,'2023-05-03','07:29:32','Entrada',NULL,NULL),(103,5,'2023-05-03','09:05:17','Entrada',NULL,NULL),(104,4,'2023-05-03','11:23:08','Entrada','11:36:19',791),(105,3,'2023-05-04','07:33:27','Entrada',NULL,NULL),(106,4,'2023-05-04','07:36:58','Entrada',NULL,NULL),(107,5,'2023-05-04','07:50:49','Entrada',NULL,NULL),(108,7,'2023-05-04','12:48:38','Entrada',NULL,NULL),(109,6,'2023-05-04','12:48:44','Entrada',NULL,NULL),(110,6,'2023-05-04','12:50:06','Entrada',NULL,NULL),(111,7,'2023-05-04','17:31:30','Entrada',NULL,NULL),(112,4,'2023-05-05','07:30:27','Entrada',NULL,NULL),(113,3,'2023-05-05','07:33:50','Entrada',NULL,NULL),(114,5,'2023-05-05','07:43:10','Entrada',NULL,NULL),(115,3,'2023-05-05','07:52:09','Entrada',NULL,NULL),(116,4,'2023-05-05','10:38:02','Entrada',NULL,NULL),(117,1,'2023-05-09','15:37:36','Entrada',NULL,NULL),(118,1,'2023-05-09','15:54:18','Entrada',NULL,NULL),(119,1,'2023-05-10','23:11:16','Entrada',NULL,NULL),(120,1,'2023-05-11','08:22:23','Entrada',NULL,NULL),(121,1,'2023-05-11','14:03:25','Entrada',NULL,NULL),(122,1,'2023-05-11','19:06:23','Entrada',NULL,NULL),(123,1,'2023-05-12','15:25:04','Entrada',NULL,NULL),(124,1,'2023-05-12','16:31:55','Entrada',NULL,NULL),(125,1,'2023-05-12','17:00:45','Entrada',NULL,NULL),(126,1,'2023-05-16','18:46:34','Entrada','18:52:42',368),(127,1,'2023-05-16','18:52:45','Entrada','18:52:49',4),(128,1,'2023-05-16','18:52:59','Entrada',NULL,NULL),(129,1,'2023-05-16','18:53:18','Entrada',NULL,NULL),(130,1,'2023-05-19','06:41:35','Entrada','06:43:23',108),(131,5,'2023-05-19','06:43:37','Entrada',NULL,NULL),(132,1,'2023-06-12','14:58:31','Entrada',NULL,NULL),(133,1,'2023-06-12','14:59:28','Entrada',NULL,NULL),(134,1,'2023-06-12','14:59:38','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `id_cargos` int(11) NOT NULL AUTO_INCREMENT,
  `id_oficina` int(11) NOT NULL,
  `nombre_cargo` varchar(150) NOT NULL,
  `fec_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cargos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospersonal`
--

DROP TABLE IF EXISTS `datospersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datospersonal` (
  `id_adpersonal` int(11) NOT NULL AUTO_INCREMENT,
  `profesion` varchar(50) DEFAULT NULL,
  `tiempo_servicio` int(11) DEFAULT NULL,
  `condicion` varchar(20) DEFAULT NULL,
  `seguro_social` varchar(20) DEFAULT NULL,
  `grupo_sanguineo` varchar(10) DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `f_deceso` date DEFAULT NULL,
  PRIMARY KEY (`id_adpersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospersonal`
--

LOCK TABLES `datospersonal` WRITE;
/*!40000 ALTER TABLE `datospersonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `datospersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funciones` (
  `idfunciones` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) NOT NULL,
  `funcion` varchar(150) NOT NULL,
  `unimed` varchar(20) NOT NULL,
  `cantidad` double NOT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `fecha_update` timestamp NULL DEFAULT current_timestamp(),
  `frecuencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfunciones`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,1,'Desarrollo de Actividades','Numerico',2,'2023-04-22 07:01:13','2023-04-22 11:01:13','Diario'),(2,3,'Programador - Desarrollo de software','Archivo',2,'2023-04-22 07:03:29','2023-04-22 11:03:29','Diario'),(3,4,'Programador - Desarrollo de software','Archivo',2,'2023-04-22 07:03:44','2023-04-22 11:03:44','Diario'),(4,5,'Programador - Desarrollo de software','Archivo',2,'2023-04-22 07:04:02','2023-04-22 11:04:02','Diario'),(5,6,'Programador - Desarrollo de software','Archivo',2,'2023-04-22 07:04:17','2023-04-22 11:04:17','Diario'),(6,7,'Programador - Desarrollo de software','Archivo',2,'2023-04-22 07:04:33','2023-04-22 11:04:33','Diario'),(7,7,'Modificacion de Pagina Web','Porcentaje %',5,'2023-04-22 07:05:50','2023-04-22 11:05:50','Diario'),(8,2,'Programador - Desarrollo de software','Archivo',1,'2023-04-22 07:06:16','2023-04-22 11:06:16','Diario'),(9,1,'Programador - Desarrollo de software','Archivo',1,'2023-04-22 07:06:29','2023-04-22 11:06:29','Diario'),(10,1,'Backup Base de Datos','Numerico',1,'2023-04-22 07:07:09','2023-04-22 11:07:09','Diario'),(11,3,'Crear Articulos para la Web','Documento',1,'2023-04-22 09:25:41','2023-04-22 13:25:41','Semanal'),(12,4,'Crear Articulos para la Web','Documento',1,'2023-04-22 09:26:02','2023-04-22 13:26:02','Semanal'),(13,5,'Crear Articulos para la Web','Documento',1,'2023-04-22 09:26:15','2023-04-22 13:26:15','Semanal'),(14,6,'Crear Articulos para la Web','Documento',1,'2023-04-22 09:26:29','2023-04-22 13:26:29','Semanal'),(15,1,'Crear Articulos para la Web','Documento',1,'2023-04-22 09:27:03','2023-04-22 13:27:03','Semanal'),(16,1,'LLAMADAS A CLIENTES','Numerico',2,'2023-04-22 10:01:52','2023-04-22 14:01:52','Diario'),(17,6,'REDISEÃ±O DE PAGINA WEB','Archivo',1,'2023-05-04 13:12:25','2023-05-04 17:12:25','Diario'),(18,7,'REDISEÃ±O DE PAGINA WEB','Documento',1,'2023-05-04 13:15:23','2023-05-04 17:15:23','Diario'),(19,6,'CREACION DE CHATBOT','Documento',1,'2023-05-04 13:15:30','2023-05-04 17:15:30','Diario'),(20,7,'CREACIÃ³N DE CHATBOT','Documento',1,'2023-05-04 13:15:46','2023-05-04 17:15:46','Diario'),(21,1,'SDASD','Moneda',12,'2023-05-09 15:37:48','2023-05-09 20:37:48','1er Trimestre'),(22,1,'RRRRR','Moneda',4,'2023-06-12 14:59:56','2023-06-12 19:59:56','Mensual');
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerencia`
--

DROP TABLE IF EXISTS `gerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerencia` (
  `idgerencia` int(11) NOT NULL AUTO_INCREMENT,
  `idinstitucion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idgerencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerencia`
--

LOCK TABLES `gerencia` WRITE;
/*!40000 ALTER TABLE `gerencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_inst` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `RUC` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `p_web` varchar(50) NOT NULL,
  `fecha_creacion_archivo` date NOT NULL,
  `n_resolucion` varchar(50) NOT NULL,
  `id_metas` int(11) NOT NULL,
  `fecha_create` datetime NOT NULL,
  `fecha_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jefe_area`
--

DROP TABLE IF EXISTS `jefe_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jefe_area` (
  `id_jefearea` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) DEFAULT NULL,
  `id_areas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jefearea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jefe_area`
--

LOCK TABLES `jefe_area` WRITE;
/*!40000 ALTER TABLE `jefe_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `jefe_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `log_usu` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) NOT NULL,
  `nom_usu` varchar(30) NOT NULL,
  `psw_usu` varchar(255) NOT NULL,
  `niv_usu` int(11) NOT NULL DEFAULT 3,
  `chk_usu` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`log_usu`),
  UNIQUE KEY `log_usu_UNIQUE` (`log_usu`),
  KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'sysadmin','jasmin0215',1,1),(2,2,'johana','123',3,1),(3,3,'zeta','123',3,1),(4,4,'jhoneder','123',3,1),(5,5,'elmer','123',3,1),(6,6,'carlos','123',3,1),(7,7,'angel','123',3,1),(8,1,'edgar','123',3,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas` (
  `id_metas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(150) NOT NULL,
  `programado` double NOT NULL,
  `unidad_medida` varchar(50) NOT NULL,
  PRIMARY KEY (`id_metas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_areas`
--

DROP TABLE IF EXISTS `metas_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas_areas` (
  `id_metas_areas` int(11) NOT NULL AUTO_INCREMENT,
  `id_meta` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `fecha_reporte` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cantidad_avance` double DEFAULT NULL,
  PRIMARY KEY (`id_metas_areas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_areas`
--

LOCK TABLES `metas_areas` WRITE;
/*!40000 ALTER TABLE `metas_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `metas_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_of` varchar(60) NOT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_metas` int(11) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `DNI` char(8) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `f_creacion` datetime DEFAULT current_timestamp(),
  `f_update` timestamp NULL DEFAULT current_timestamp(),
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'EDGAR','APAZA CHOQUE','Masculino','935017466','1978-04-15','a@a.com','1','images/Pierre-Person.jpg','2023-04-19 23:09:18','2023-04-20 03:09:18',NULL),(2,'JOHANA','VALDERRAMA Y COBARRUBIAS','Femenino','9','2023-04-11','jahoa@gmail.com','1',NULL,'2023-04-20 15:09:58','2023-04-20 19:09:58',NULL),(3,'JERSON PELAYO','QUISPE APAZA','MASCULINO','998777712','2003-11-02','jerson.z032@gmail.com','72535244',NULL,'2023-04-21 09:23:38','2023-04-21 13:23:38',NULL),(4,'JHON EDER','QUISPE MAMANI','MASCULINO','969641617','1997-08-09','JHONEDER453@GMAIL.COM','70284743',NULL,'2023-04-21 09:27:33','2023-04-21 13:27:33',NULL),(5,'ELMER GABRIEL','QUISPE PONCE','MASCULINO','973598070','2001-07-11','email@gmail.com','75352852',NULL,'2023-04-21 09:31:26','2023-04-21 13:31:26',NULL),(6,'CARLOS ALEXANDER','ACERO HUARAHUARA','MASCULINO','973521180','2001-06-24','acerohuarahuara7551@gmail.com','75516072',NULL,'2023-04-21 12:42:44','2023-04-21 16:42:44',NULL),(7,'JESUS ANGEL','YQUIRA ARCE','MASCULINO','969515443','1996-06-22','yquiraangel@gmail.com','70003024',NULL,'2023-04-21 13:42:14','2023-04-21 17:42:14',NULL),(8,'EDGAR','APAZA','masculino','9350174661','1978-04-15','a@a.com','123','./imagenes/usuario1.png','2023-04-22 07:14:44','2023-04-22 12:14:44',NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportes` (
  `idreporte` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `idfunciones` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `tipo` tinyint(4) NOT NULL DEFAULT 0,
  `cantidad` double NOT NULL DEFAULT 0,
  `obs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idreporte`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
INSERT INTO `reportes` VALUES (1,1,9,'2023-04-22 09:30:30',1,28,NULL),(2,1,10,'2023-04-22 09:31:08',1,1,NULL),(3,7,7,'2023-04-22 19:19:31',1,60,NULL),(4,4,3,'2023-04-24 11:03:33',1,4,NULL),(5,5,4,'2023-04-24 14:50:35',1,2,NULL),(6,7,7,'2023-04-24 19:55:06',1,70,NULL),(7,3,2,'2023-04-24 22:25:34',1,0,NULL),(8,4,3,'2023-04-25 08:57:16',1,7,NULL),(9,7,7,'2023-04-25 20:08:22',1,75,NULL),(10,4,3,'2023-04-26 11:48:28',1,2,NULL),(11,3,2,'2023-04-26 22:06:49',1,44,NULL),(12,4,3,'2023-04-27 09:29:37',1,6,NULL),(13,3,2,'2023-04-27 20:56:41',1,8,NULL),(14,1,9,'2023-04-28 10:27:15',1,23,NULL),(15,1,10,'2023-04-28 10:27:20',1,1,NULL),(16,1,15,'2023-04-28 10:27:28',1,0,NULL),(17,1,16,'2023-04-28 10:27:36',1,5,NULL),(18,1,1,'2023-04-28 10:27:45',1,0,NULL),(19,1,9,'2023-04-28 10:28:33',1,10,NULL),(20,1,16,'2023-04-28 10:29:38',1,5,NULL),(21,1,9,'2023-04-28 10:30:02',1,45,NULL),(22,1,10,'2023-04-28 10:30:48',1,2,NULL),(23,1,9,'2023-04-28 10:32:26',1,5,NULL),(24,4,3,'2023-04-28 10:36:12',1,3,NULL),(25,5,4,'2023-04-28 11:17:57',1,2,NULL),(26,3,2,'2023-04-29 11:18:35',1,46,NULL),(27,3,2,'2023-04-29 17:39:45',1,2,NULL),(28,3,2,'2023-04-29 19:03:35',1,29,NULL),(29,3,2,'2023-04-29 20:13:35',1,2,NULL),(30,3,2,'2023-04-30 13:36:58',1,3,NULL),(31,4,3,'2023-05-02 11:18:04',1,1,NULL),(32,4,3,'2023-05-03 11:23:14',1,0,NULL),(33,1,9,'2023-05-19 06:42:11',1,5,NULL),(34,1,10,'2023-05-19 06:42:22',1,1,NULL),(35,1,15,'2023-05-19 06:43:02',1,0,NULL),(36,1,16,'2023-05-19 06:43:08',1,6,NULL);
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgerencia`
--

DROP TABLE IF EXISTS `subgerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgerencia` (
  `idsubgerencia` int(11) NOT NULL AUTO_INCREMENT,
  `idgerencia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idsubgerencia`),
  KEY `fk_subgerencia_gerencia_idx` (`idgerencia`),
  CONSTRAINT `fk_subgerencia_gerencia` FOREIGN KEY (`idgerencia`) REFERENCES `gerencia` (`idgerencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgerencia`
--

LOCK TABLES `subgerencia` WRITE;
/*!40000 ALTER TABLE `subgerencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `subgerencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 15:00:23
