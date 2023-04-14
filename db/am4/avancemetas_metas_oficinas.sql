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
-- Table structure for table `metas_oficinas`
--

DROP TABLE IF EXISTS `metas_oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metas_oficinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_of` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sigla` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f_creacion` datetime DEFAULT NULL,
  `f_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_metas` int DEFAULT NULL,
  `id_institucion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_of_UNIQUE` (`nombre_of`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_oficinas`
--

LOCK TABLES `metas_oficinas` WRITE;
/*!40000 ALTER TABLE `metas_oficinas` DISABLE KEYS */;
INSERT INTO `metas_oficinas` VALUES (1,'ARCHIVO REGIONAL DE PUNO','DIRECCION','2020-01-01 00:00:00','2020-02-05 20:04:50',1,1),(2,'DIRECCIÓN DE ARCHIVO INTERMEDIO','AI','2020-01-02 00:00:00','2020-02-05 20:05:20',1,1),(5,'DIRECCIÓN DE ARCHIVO HISTÓRICO','AH','2020-01-31 16:44:01','2020-02-05 20:05:09',1,1),(6,'OFICINA TECNICA ADMINISTRATIVA (OTA)','OTA','2020-01-31 16:46:39','2020-02-03 13:53:00',1,1),(7,'','','2023-03-20 22:37:50','2023-03-21 03:37:50',1,1),(8,'DF','DFDFD','2023-03-20 22:38:39','2023-03-21 03:38:39',1,1);
/*!40000 ALTER TABLE `metas_oficinas` ENABLE KEYS */;
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
