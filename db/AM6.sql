CREATE DATABASE  IF NOT EXISTS `avancemetas` /*!40100 DEFAULT */;
USE `avancemetas`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: avancemetas
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id_areas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text 
  `idoficina` int(11) NOT NULL,
  `id_metas` int(11) DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_areas`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'ASESORIA JURIDICA','Encargado de la parte legal y juridica de la institucion',1,1,'2020-01-08 00:00:00','2020-02-03 13:50:26'),(2,'PLANIFICACION Y PRESUPUESTO','PLANIFICACION',6,1,'2020-01-24 00:00:00','2020-02-03 14:39:29'),(7,'INFORMATICA','DESARROLLO DE SOFTWARE',1,1,'2020-02-03 13:46:28',NULL),(9,'FONDO NOTARIAL','VELAR POR LA CONSERVACION DEL FONDO NOTARIAL',2,1,'2020-02-03 14:40:53',NULL),(10,'REGISTRO CIVIL','PARTIDAS DE NACIMIENTO, MATRIMONIO Y DEFUNCIóN',2,1,'2020-02-03 14:41:34',NULL),(11,'FONDO CORTE SUPERIOR DE JUSTICIA','FONDO CORTE SUPERIOR DE JUSTICIA',5,1,'2020-02-03 14:42:16',NULL),(12,'INTENDENCIA Y CORREGIMIENTO','INTENDENCIA Y CORREGIMIENTO',5,1,'2020-02-03 14:42:41',NULL),(13,'BIBLIOTECA','BIBLIOTECA',5,1,'2020-02-03 14:42:56',NULL),(14,'RECURSOS HUMANOS','RECURSOS HUMANOS',6,1,'2020-02-03 14:43:25',NULL),(15,'ABASTECIMIENTOS','ABASTECIMIENTOS',6,1,'2020-02-03 14:43:40',NULL),(16,'TESORERíA Y CONTABILIDAD','TESORERíA Y CONTABILIDAD',6,1,'2020-02-03 14:44:07',NULL);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacionpersonal`
--

DROP TABLE IF EXISTS `asignacionpersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacionpersonal`
--

LOCK TABLES `asignacionpersonal` WRITE;
/*!40000 ALTER TABLE `asignacionpersonal` DISABLE KEYS */;
INSERT INTO `asignacionpersonal` VALUES (1,1,0,3,2,'2019-01-01',NULL,'R.D 15-GRPUNO','2020-02-05 16:11:26',NULL),(2,6,7,10,8,'2012-02-16',NULL,'RESOLUCION N° 25-2012-ARP/D','2020-02-05 19:20:34',NULL),(3,2,0,8,5,'2005-02-15',NULL,'RESOLUCION N° 29-2012-ARP/D','2020-02-05 19:27:16',NULL),(4,6,14,13,9,'2009-06-25',NULL,'RD 156-ARP/D','2020-02-05 19:37:07',NULL);
/*!40000 ALTER TABLE `asignacionpersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `asistencia` (
  `idasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL,
  PRIMARY KEY (`idasistencia`),
  KEY `fk_asistencia_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_asistencia_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`id_personal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,5,'2023-03-23','19:36:34','Entrada',NULL,NULL),(2,5,'2023-03-23','19:37:19','Salida',NULL,NULL),(3,5,'2023-03-23','19:39:04','entrada',NULL,NULL),(4,5,'2023-03-23','19:39:37','Salida',NULL,NULL),(5,5,'2023-03-23','19:53:24','Entrada',NULL,NULL),(6,5,'2023-03-23','19:53:52','Salida',NULL,NULL),(7,5,'2023-03-23','22:32:32','Salida',NULL,NULL),(8,5,'2023-03-23','22:40:21','Entrada',NULL,NULL),(9,5,'2023-03-23','22:40:50','Salida',NULL,NULL),(10,5,'2023-03-24','18:33:28','Entrada',NULL,NULL),(11,5,'2023-03-24','19:10:57','',NULL,NULL),(12,5,'2023-03-24','19:11:12','',NULL,NULL),(13,5,'2023-03-24','19:31:58','Entrada',NULL,NULL),(14,5,'2023-03-25','11:27:30','Salida',NULL,NULL),(15,5,'2023-04-04','19:52:54','Entrada',NULL,NULL),(16,2,'2023-04-06','08:43:42','Entrada',NULL,NULL),(17,2,'2023-04-13','20:41:29','Entrada',NULL,NULL),(18,2,'2023-04-15','07:15:41','Entrada',NULL,NULL),(19,5,'2023-04-15','10:40:26','Entrada',NULL,NULL),(20,5,'2023-04-16','06:15:25','Entrada',NULL,NULL),(21,1,'2023-04-16','06:28:54','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempo` double DEFAULT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `fk_bitacora_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_bitacora_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`id_personal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,2,'2023-04-06','08:43:42','Entrada',NULL,NULL),(2,2,'2023-04-06','09:53:41','Entrada',NULL,NULL),(3,2,'2023-04-06','09:59:09','Entrada',NULL,NULL),(4,2,'2023-04-06','10:43:29','Entrada','10:43:42',13),(5,2,'2023-04-13','20:41:29','Entrada',NULL,NULL),(6,2,'2023-04-13','21:05:58','Entrada',NULL,NULL),(7,2,'2023-04-13','22:09:39','Entrada',NULL,NULL),(8,2,'2023-04-15','07:15:41','Entrada','10:25:12',11371),(9,5,'2023-04-15','10:40:26','Entrada',NULL,NULL),(10,5,'2023-04-16','06:15:25','Entrada',NULL,NULL),(11,5,'2023-04-16','06:23:18','Entrada',NULL,NULL),(12,1,'2023-04-16','06:28:54','Entrada',NULL,NULL),(13,1,'2023-04-16','06:29:05','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `id_cargos` int(11) NOT NULL AUTO_INCREMENT,
  `id_oficina` int(11) NOT NULL,
  `nombre_cargo` varchar(150) NOT NULL,
  `fec_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cargos`),
  KEY `fk_oficina_cargos_idx` (`id_oficina`),
  CONSTRAINT `fk_oficina_cargos` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (3,1,'DIRECTOR ARCHIVO REGIONAL DE PUNO','2020-02-05 14:51:47'),(5,6,'JEFE e) OFICINA TECNICA ADMINISTRATIVA','2020-02-05 14:51:47'),(7,2,'DIRECTOR e) ARCHIVO INTERMEDIO','2020-02-05 15:06:04'),(8,5,'DIRECTOR e) ARCHIVO HISTÓRICO','2020-02-05 15:06:23'),(9,1,'ASESOR LEGAL','2020-02-05 15:06:41'),(10,1,'e) ÁREA DE INFORMÁTICA Y TECNOLOGÍA','2020-02-05 15:07:03'),(11,1,'e) ARCHIVO CENTRAL Y TRAMITE DOCUMENTARIO','2020-02-05 15:07:54'),(12,6,'e) PLANIFICACIÓN Y PRESUPUESTO','2020-02-05 15:19:35'),(13,6,'e) RECURSOS HUMANOS','2020-02-05 15:19:49'),(14,6,'e) ABASTECIMIENTOS','2020-02-05 15:20:04');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospersonal`
--

DROP TABLE IF EXISTS `datospersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospersonal`
--

LOCK TABLES `datospersonal` WRITE;
/*!40000 ALTER TABLE `datospersonal` DISABLE KEYS */;
INSERT INTO `datospersonal` VALUES (1,'ing. de sistemas',5,'contratado','SIS','O','2020-01-01','2021-04-16');
/*!40000 ALTER TABLE `datospersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `funciones` (
  `idfunciones` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) NOT NULL,
  `id_cargos` int(11) DEFAULT NULL,
  `funcion` varchar(150) NOT NULL,
  `unimed` varchar(20) NOT NULL,
  `cantidad` double NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `frecuencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfunciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (3,2,1,'Desarrollo de software','Porcentaje %',10,'2023-04-01 00:00:00','2023-04-01 05:00:00',NULL),(4,2,1,'Ingreso a Base de Datos','Numero',100,'2023-04-01 00:00:00','2023-04-01 05:00:00',NULL),(5,2,1,'Revision de Escrituras','Numero',200,'2023-04-01 00:00:00','2023-04-01 05:00:00',NULL),(6,2,1,'ATENCION A USUARIO','Numerico',40,'2023-04-15 10:17:36','2023-04-15 15:17:36','Diario');
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerencia`
--

DROP TABLE IF EXISTS `gerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `gerencia` (
  `idgerencia` int(11) NOT NULL AUTO_INCREMENT,
  `idinstitucion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idgerencia`),
  KEY `fk_gerencia_institucion_idx` (`idinstitucion`),
  CONSTRAINT `fk_gerencia_institucion` FOREIGN KEY (`idinstitucion`) REFERENCES `institucion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerencia`
--

LOCK TABLES `gerencia` WRITE;
/*!40000 ALTER TABLE `gerencia` DISABLE KEYS */;
INSERT INTO `gerencia` VALUES (1,1,'Gerencia General'),(2,1,'Gerencia de Desarrollo'),(3,1,'NUEVA GERENCIA'),(4,1,'EL SUPER ESPACIO');
/*!40000 ALTER TABLE `gerencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
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
  `fecha_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_metas` (`id_metas`),
  CONSTRAINT `institucion_ibfk_1` FOREIGN KEY (`id_metas`) REFERENCES `metas` (`id_metas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,'Archivo Regional Puno','Av. Ejercito Nº 645','051 -600704  051-600705','20164852167','archivoregionalpuno@gmail.com','www.arp.gob.pe','1987-03-15','R.D. J. N° 246-AGN/J',1,'2020-01-09 00:00:00','2020-01-31 16:40:34'),(2,'KATARI','PSJE MANUEL A SEGURA 144','935017466','20561233212','informes@katari.org.pe','katari.org.pe','2019-06-05','RD 56',1,'2023-03-21 11:10:32','2023-03-21 16:10:32');
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jefe_area`
--

DROP TABLE IF EXISTS `jefe_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `jefe_area` (
  `id_jefearea` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) DEFAULT NULL,
  `id_areas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jefearea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jefe_area`
--

LOCK TABLES `jefe_area` WRITE;
/*!40000 ALTER TABLE `jefe_area` DISABLE KEYS */;
INSERT INTO `jefe_area` VALUES (2,2,1),(3,5,1),(5,5,2),(7,5,2);
/*!40000 ALTER TABLE `jefe_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `log_usu` int(10) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `nom_usu` varchar(30) NOT NULL,
  `psw_usu` varchar(255) NOT NULL,
  `niv_usu` int(1) NOT NULL DEFAULT '2',
  `chk_usu` tinyint(4) NOT NULL,
  PRIMARY KEY (`log_usu`),
  UNIQUE KEY `log_usu_UNIQUE` (`log_usu`),
  KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'edgar','edgar',1,1),(2,2,'emp','emp',3,1),(3,6,'julia','julia',2,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas` (
  `id_metas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(150) NOT NULL,
  `programado` double NOT NULL,
  `unidad_medida` varchar(50) NOT NULL,
  PRIMARY KEY (`id_metas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
INSERT INTO `metas` VALUES (1,'Vacio',0,'unidad'),(2,'crear solicitudes',10000,'unidad'),(3,'Ingreso de Escrituras',100000,'unidad'),(4,'ORGANIZACION DE METROS LINEALES DE DOCUMENTOS EN CUSTODIA',180,'METROS LINEALES');
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_areas`
--

DROP TABLE IF EXISTS `metas_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `metas_areas` (
  `id_metas_areas` int(11) NOT NULL AUTO_INCREMENT,
  `id_meta` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `fecha_reporte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cantidad_avance` double DEFAULT NULL,
  PRIMARY KEY (`id_metas_areas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_areas`
--

LOCK TABLES `metas_areas` WRITE;
/*!40000 ALTER TABLE `metas_areas` DISABLE KEYS */;
INSERT INTO `metas_areas` VALUES (1,2,1,'2020-01-31 16:08:05',1);
/*!40000 ALTER TABLE `metas_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_of` varchar(60) NOT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_metas` int(11) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES (1,'ARCHIVO REGIONAL DE PUNO','DIRECCION','2020-01-01 00:00:00','2020-02-05 20:04:50',1,1),(2,'DIRECCIÓN DE ARCHIVO INTERMEDIO','AI','2020-01-02 00:00:00','2020-02-05 20:05:20',1,1),(5,'DIRECCIÓN DE ARCHIVO HISTÓRICO','AH','2020-01-31 16:44:01','2020-02-05 20:05:09',1,1),(6,'OFICINA TECNICA ADMINISTRATIVA (OTA)','OTA','2020-01-31 16:46:39','2020-02-03 13:53:00',1,1),(7,'','','2023-03-20 22:37:50','2023-03-21 03:37:50',1,1),(8,'DF','DFDFD','2023-03-20 22:38:39','2023-03-21 03:38:39',1,1);
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
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
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'EDGAR','APAZA CHOQUE','masculino','935017466','1978-04-15','EDGARAPAZAC@GMAIL.COM','40023528','./imagenes/usuario.png','2020-02-05 14:23:15','2023-04-16 11:19:54'),(2,'JUAN CARLOS','SANCHEZ CERRO','masculino','951','1999-02-17','elianacondemaita@hotmail.com','01111','./images/ejecutivo16.jpg','2020-01-04 00:00:00','2023-03-25 23:19:55'),(5,'SONIA ROSARIO','SOTOMAYOR VARGAS','femenino','95111','1998-12-23','ssotomayor@hotmail.com','01111','./imagenes/usuario.png','2020-01-08 00:00:00','2020-02-04 15:06:48'),(6,'JULIA','TAPIA QUISPE','masculino','951','1978-01-01','jtapia@hotmail.com','0111','./imagenes/usuario.png','2020-01-24 00:00:00','2020-02-04 15:06:54'),(7,'MARCOS','HILASAYA YUNGAS','masculino','987654321','1968-06-19','MARCOSHILASACA@OTMAIL.COM','01235689','./imagenes/usuario.png','2020-02-04 14:57:13','2020-02-04 14:57:13'),(9,'ALEJANDRO','MAMANI RODRIGUEZ','masculino','9','1968-02-05','ALEJANDRO@GMIAL.COM','0657884','./imagenes/usuario.png','2020-02-05 19:36:15','2020-02-05 19:36:15');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `reportes` (
  `idreporte` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `idfunciones` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` tinyint(4) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `obs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idreporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
INSERT INTO `reportes` VALUES (1,2,3,'2023-04-13 00:00:00',0,3,NULL),(2,2,4,'2023-04-13 00:00:00',0,80,NULL),(3,2,5,'2023-04-13 00:00:00',0,150,NULL),(4,2,3,'2023-04-15 07:15:58',1,50,NULL),(5,2,4,'2023-04-15 07:16:04',1,87,NULL),(6,2,5,'2023-04-15 07:16:09',1,200,NULL);
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgerencia`
--

DROP TABLE IF EXISTS `subgerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `subgerencia` (
  `idsubgerencia` int(11) NOT NULL AUTO_INCREMENT,
  `idgerencia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idsubgerencia`),
  KEY `fk_subgerencia_gerencia_idx` (`idgerencia`),
  CONSTRAINT `fk_subgerencia_gerencia` FOREIGN KEY (`idgerencia`) REFERENCES `gerencia` (`idgerencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgerencia`
--

LOCK TABLES `subgerencia` WRITE;
/*!40000 ALTER TABLE `subgerencia` DISABLE KEYS */;
INSERT INTO `subgerencia` VALUES (1,1,'Planificación y prespuesto');
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

-- Dump completed on 2023-04-17  8:16:15
