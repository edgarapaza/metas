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
-- Table structure for table `metas_cargos`
--

DROP TABLE IF EXISTS `metas_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metas_cargos` (
  `id_cargos` int NOT NULL AUTO_INCREMENT,
  `id_oficina` int NOT NULL,
  `nombre_cargo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fec_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cargos`),
  KEY `fk_oficina_cargos_idx` (`id_oficina`),
  CONSTRAINT `fk_oficina_cargos` FOREIGN KEY (`id_oficina`) REFERENCES `metas_oficinas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_cargos`
--

LOCK TABLES `metas_cargos` WRITE;
/*!40000 ALTER TABLE `metas_cargos` DISABLE KEYS */;
INSERT INTO `metas_cargos` VALUES (3,1,'DIRECTOR ARCHIVO REGIONAL DE PUNO','2020-02-05 14:51:47'),(5,6,'JEFE e) OFICINA TECNICA ADMINISTRATIVA','2020-02-05 14:51:47'),(7,2,'DIRECTOR e) ARCHIVO INTERMEDIO','2020-02-05 15:06:04'),(8,5,'DIRECTOR e) ARCHIVO HISTÓRICO','2020-02-05 15:06:23'),(9,1,'ASESOR LEGAL','2020-02-05 15:06:41'),(10,1,'e) ÁREA DE INFORMÁTICA Y TECNOLOGÍA','2020-02-05 15:07:03'),(11,1,'e) ARCHIVO CENTRAL Y TRAMITE DOCUMENTARIO','2020-02-05 15:07:54'),(12,6,'e) PLANIFICACIÓN Y PRESUPUESTO','2020-02-05 15:19:35'),(13,6,'e) RECURSOS HUMANOS','2020-02-05 15:19:49'),(14,6,'e) ABASTECIMIENTOS','2020-02-05 15:20:04');
/*!40000 ALTER TABLE `metas_cargos` ENABLE KEYS */;
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