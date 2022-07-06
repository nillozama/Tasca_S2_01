-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: optica_ca_bd
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `gafas`
--

DROP TABLE IF EXISTS `gafas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafas` (
  `id_gafas` int NOT NULL AUTO_INCREMENT,
  `graduacion_ojo_izquierdo` float DEFAULT NULL,
  `graduacion_ojo_derecho` float DEFAULT NULL,
  `tipo_montura` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color_montura` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color_lente_izquierda` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color_lente_derecha` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio` float NOT NULL,
  `marca_id_marca` int NOT NULL,
  PRIMARY KEY (`id_gafas`),
  KEY `fk_gafas_marca1_idx` (`marca_id_marca`),
  CONSTRAINT `fk_gafas_marca1` FOREIGN KEY (`marca_id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafas`
--

LOCK TABLES `gafas` WRITE;
/*!40000 ALTER TABLE `gafas` DISABLE KEYS */;
INSERT INTO `gafas` VALUES (1,0.5,0.5,'pasta','marron','transparente','transparente',134,1),(2,1.5,0.5,'metal','negro','transparente','transparente',110,2),(3,2.5,0.75,'pasta','negro','transparente','transparente',64.9,3),(4,1.5,2.5,'pasta','marron','transparente','transparente',64,4),(5,4.5,5,'pasta','negro','transparente','transparente',49.75,5),(6,1.5,1.5,'pasta','marron','transparente','transparente',169,6),(7,0.5,2,'pasta','azul','transparente','transparente',125,7),(8,1.75,2.5,'metal','gris','transparente','transparente',189,8),(9,NULL,NULL,'metal','rojo',NULL,NULL,69.9,1),(10,NULL,NULL,'plastico','negro',NULL,NULL,123,2),(11,NULL,NULL,'metal','azul',NULL,NULL,89,3),(12,NULL,NULL,'grafito','rojo',NULL,NULL,67.3,4),(13,NULL,NULL,'plastico','negro',NULL,NULL,167,5),(14,NULL,NULL,'metal','verde',NULL,NULL,278,6),(15,NULL,NULL,'plastico','rojo',NULL,NULL,120,7),(16,NULL,NULL,'plastico','negro',NULL,NULL,99,8);
/*!40000 ALTER TABLE `gafas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-30  2:08:26
