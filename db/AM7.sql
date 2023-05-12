
--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `idareas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `idoficina` int DEFAULT NULL,
  `idmetas` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacionpersonal` (
  `idasignacion` int NOT NULL AUTO_INCREMENT,
  `idoficina` int NOT NULL,
  `idarea` int DEFAULT NULL,
  `idcargo` int DEFAULT NULL,
  `idpersonal` int DEFAULT NULL,
  `fecInicioCargo` date DEFAULT NULL,
  `fecFinCargo` date DEFAULT NULL,
  `documento` varchar(100) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `fecUpdtae` datetime DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `idasistencia` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL,
  PRIMARY KEY (`idasistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (26,1,'2023-04-19','13:39:12','Entrada',NULL,NULL),(27,29,'2023-04-19','13:54:14','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `idbitacora` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempo` double DEFAULT NULL,
  PRIMARY KEY (`idbitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (19,1,'2023-04-19','13:39:12','Entrada',NULL,NULL),(20,29,'2023-04-19','13:54:14','Entrada','15:53:20',7146),(21,1,'2023-04-19','15:53:22','Entrada',NULL,NULL),(22,1,'2023-04-19','15:53:31','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id_cargos` int NOT NULL AUTO_INCREMENT,
  `id_oficina` int NOT NULL,
  `nombre_cargo` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fec_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cargos`),
  KEY `fk_oficina_cargos_idx` (`id_oficina`),
  CONSTRAINT `fk_oficina_cargos` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,1,'DIRECTOR ARCHIVO REGIONAL DE PUNO','2020-02-05 14:51:47'),(2,6,'JEFE e) OFICINA TECNICA ADMINISTRATIVA','2020-02-05 14:51:47'),(3,2,'DIRECTOR e) ARCHIVO INTERMEDIO','2020-02-05 15:06:04'),(4,5,'DIRECTOR e) ARCHIVO HISTÓRICO','2020-02-05 15:06:23'),(5,1,'ASESOR LEGAL','2020-02-05 15:06:41'),(6,1,'e) ÁREA DE INFORMÁTICA Y TECNOLOGÍA','2020-02-05 15:07:03'),(7,1,'e) ARCHIVO CENTRAL Y TRAMITE DOCUMENTARIO','2020-02-05 15:07:54'),(8,6,'e) PLANIFICACIÓN Y PRESUPUESTO','2020-02-05 15:19:35'),(9,6,'e) RECURSOS HUMANOS','2020-02-05 15:19:49'),(10,6,'e) ABASTECIMIENTOS','2020-02-05 15:20:04'),(11,1,'PERSONAL ARCHIVO INTERMEDIO',NULL),(12,1,'PERSONAL ARCHIVO HISTORICO',NULL);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospersonal`
--

DROP TABLE IF EXISTS `datospersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datospersonal` (
  `id_adpersonal` int NOT NULL AUTO_INCREMENT,
  `profesion` varchar(50) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `tiempo_servicio` int DEFAULT NULL,
  `condicion` varchar(20) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `seguro_social` varchar(20) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `grupo_sanguineo` varchar(10) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `f_deceso` date DEFAULT NULL,
  PRIMARY KEY (`id_adpersonal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funciones` (
  `idfunciones` int NOT NULL AUTO_INCREMENT,
  `id_personal` int NOT NULL,
  `id_cargos` int DEFAULT NULL,
  `funcion` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `unimed` varchar(20) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cantidad` double NOT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `frecuencia` varchar(45) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idfunciones`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerencia` (
  `idgerencia` int NOT NULL AUTO_INCREMENT,
  `idinstitucion` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`idgerencia`),
  KEY `fk_gerencia_institucion_idx` (`idinstitucion`),
  CONSTRAINT `fk_gerencia_institucion` FOREIGN KEY (`idinstitucion`) REFERENCES `institucion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_inst` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `RUC` char(11) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `p_web` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecha_creacion_archivo` date NOT NULL,
  `n_resolucion` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `id_metas` int NOT NULL,
  `fecha_create` datetime NOT NULL,
  `fecha_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_metas` (`id_metas`),
  CONSTRAINT `institucion_ibfk_1` FOREIGN KEY (`id_metas`) REFERENCES `metas` (`id_metas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jefe_area` (
  `id_jefearea` int NOT NULL AUTO_INCREMENT,
  `id_personal` int DEFAULT NULL,
  `id_areas` int DEFAULT NULL,
  PRIMARY KEY (`id_jefearea`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `log_usu` int NOT NULL,
  `id_personal` int NOT NULL,
  `nom_usu` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `psw_usu` varchar(255) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `niv_usu` int NOT NULL DEFAULT '2',
  `chk_usu` tinyint NOT NULL,
  PRIMARY KEY (`log_usu`),
  UNIQUE KEY `log_usu_UNIQUE` (`log_usu`),
  KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'edgar','edgar',1,1),(2,2,'lucelia','123',3,1),(3,3,'marcos','123',3,1),(4,4,'julia','123',3,1),(5,5,'sonia','123',3,1),(6,6,'wilfredo','123',3,1),(7,7,'grimanesa','123',3,1),(8,8,'roxana','123',3,1),(9,9,'martha','123',3,1),(10,10,'corina','123',3,1),(11,11,'juan','123',3,1),(12,12,'diego','123',3,1),(13,13,'alejandro','123',3,1),(14,14,'justo','123',3,1),(15,15,'chester','123',3,1),(16,16,'victor','123',3,1),(17,17,'pedro','123',3,1),(18,18,'william','123',3,1),(19,19,'alex','123',3,1),(20,20,'pamela','123',3,1),(21,21,'henry','123',3,1),(22,22,'tomas','123',3,1),(23,23,'catia','123',3,1),(24,24,'eugenio','123',3,1),(25,25,'emilio','123',3,1),(26,26,'roberto','123',3,1),(27,27,'mari','123',3,1),(28,28,'eva','123',3,1),(29,29,'edgar','123',3,1),(30,30,'jesus','123',3,1),(31,31,'leslye','123',3,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metas` (
  `id_metas` int NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `programado` double NOT NULL,
  `unidad_medida` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_metas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metas_areas` (
  `id_metas_areas` int NOT NULL AUTO_INCREMENT,
  `id_meta` int DEFAULT NULL,
  `id_area` int DEFAULT NULL,
  `fecha_reporte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cantidad_avance` double DEFAULT NULL,
  PRIMARY KEY (`id_metas_areas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_of` varchar(60) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `sigla` varchar(10) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_metas` int DEFAULT NULL,
  `id_institucion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `sexo` varchar(10) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `DNI` char(8) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'EDGAR','APAZA CHOQUE','Masculino','935','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(2,'LUCELIA YULIANA','CHINO QUENTA','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(3,'MARCOS FELIX','HILASACA YUNGAS','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(4,'JULIA','TAPIA QUISPE','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(5,'SONIA ROSARIO','SOTOMAYOR VARGAS','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(6,'WILFREDO','OLAGUIVEL PANIAGUA','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(7,'GRIMANESA','CCORI VALDIVIA','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(8,'ROXANA JULIA','VILLA RUIZ','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(9,'MARTHA DUNIA','TAPIA ANGLES','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(10,'CORINA VILMA','RODRIGUEZ CHOQUE','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(11,'JUAN MANUEL','CHURA LIVISE','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(12,'DIEGO','YUCRA MAMANI','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(13,'ALEJANDRO','MAMANI RODRIGUEZ','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(14,'JUSTO GERMAN','MAMANI QUISPE','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(15,'CHESTER MIGUEL','ZAMUDIO BRICE?O','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(16,'VICTOR ALEJO','BAGAZO BEGAZO','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(17,'PEDRO','TAPIA CRUZ','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(18,'WILLIAM','MARCA APAZA','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(19,'ALEX','CRUZ RUELAS','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(20,'PAMELA','PACA CRUZ','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(21,'HENRY NOE','ESTEBA FLORES','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(22,'TOMAS DE AQUINO ISIDRO','TIQUE QUISPE','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(23,'CATIA','AGUILAR SONCO','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(24,'EUGENIO MANUEL','YUCRA ESTUCO','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(25,'EMILIO JHON ALEXANDERS','RAMOS HUARAYA','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(26,'ROBERTO CARLOS','CHAMBY BAHAMONDE','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(27,'MARI MARITZA','RAMOS HUARANCA','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(28,'EVA AYDEE','PAREDES CRUZ','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(29,'EDGAR','APAZA CHOQUE','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(30,'JESUS','PARISUA?A SUCASACA','Masculino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00'),(31,'LESLYE','CCALA MAMANI','Femenino','9','1990-01-01','a@arp.com','1','./images/usuario.png','1990-01-01 00:00:00','1990-01-01 05:00:00');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportes` (
  `idreporte` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `idfunciones` int NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` tinyint NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `obs` varchar(200) COLLATE utf8mb3_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idreporte`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subgerencia` (
  `idsubgerencia` int NOT NULL AUTO_INCREMENT,
  `idgerencia` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`idsubgerencia`),
  KEY `fk_subgerencia_gerencia_idx` (`idgerencia`),
  CONSTRAINT `fk_subgerencia_gerencia` FOREIGN KEY (`idgerencia`) REFERENCES `gerencia` (`idgerencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
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

-- Dump completed on 2023-04-19 16:09:48
