CREATE DATABASE  IF NOT EXISTS `avancemetas` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia_asistencias` (
  `idasistencia` int NOT NULL AUTO_INCREMENT,
  `idpersonal` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `horasalida` time DEFAULT NULL,
  `tiempouso` double DEFAULT NULL,
  PRIMARY KEY (`idasistencia`),
  KEY `fk_asistencia_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_asistencia_personal` FOREIGN KEY (`idpersonal`) REFERENCES `metas_personal` (`id_personal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_asistencias`
--

LOCK TABLES `asistencia_asistencias` WRITE;
/*!40000 ALTER TABLE `asistencia_asistencias` DISABLE KEYS */;
INSERT INTO `asistencia_asistencias` VALUES (1,5,'2023-03-23','19:36:34','Entrada',NULL,NULL),(2,5,'2023-03-23','19:37:19','Salida',NULL,NULL),(3,5,'2023-03-23','19:39:04','entrada',NULL,NULL),(4,5,'2023-03-23','19:39:37','Salida',NULL,NULL),(5,5,'2023-03-23','19:53:24','Entrada',NULL,NULL),(6,5,'2023-03-23','19:53:52','Salida',NULL,NULL),(7,5,'2023-03-23','22:32:32','Salida',NULL,NULL),(8,5,'2023-03-23','22:40:21','Entrada',NULL,NULL),(9,5,'2023-03-23','22:40:50','Salida',NULL,NULL),(10,5,'2023-03-24','18:33:28','Entrada',NULL,NULL),(11,5,'2023-03-24','19:10:57','',NULL,NULL),(12,5,'2023-03-24','19:11:12','',NULL,NULL),(13,5,'2023-03-24','19:31:58','Entrada',NULL,NULL),(14,5,'2023-03-25','11:27:30','Salida',NULL,NULL),(15,5,'2023-04-04','19:52:54','Entrada',NULL,NULL),(16,2,'2023-04-06','08:43:42','Entrada',NULL,NULL),(17,2,'2023-04-13','13:47:14','Entrada',NULL,NULL);
/*!40000 ALTER TABLE `asistencia_asistencias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 15:45:50
