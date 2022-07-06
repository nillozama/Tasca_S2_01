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
-- Table structure for table `gafas_has_facturas`
--

DROP TABLE IF EXISTS `gafas_has_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafas_has_facturas` (
  `gafas_id_gafas` int NOT NULL,
  `facturas_id_facturas` int NOT NULL,
  PRIMARY KEY (`gafas_id_gafas`,`facturas_id_facturas`),
  KEY `fk_gafas_has_facturas_facturas1_idx` (`facturas_id_facturas`),
  KEY `fk_gafas_has_facturas_gafas1_idx` (`gafas_id_gafas`),
  CONSTRAINT `fk_gafas_has_facturas_facturas1` FOREIGN KEY (`facturas_id_facturas`) REFERENCES `facturas` (`id_facturas`),
  CONSTRAINT `fk_gafas_has_facturas_gafas1` FOREIGN KEY (`gafas_id_gafas`) REFERENCES `gafas` (`id_gafas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafas_has_facturas`
--

LOCK TABLES `gafas_has_facturas` WRITE;
/*!40000 ALTER TABLE `gafas_has_facturas` DISABLE KEYS */;
INSERT INTO `gafas_has_facturas` VALUES (1,1),(2,2),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,9),(12,10);
/*!40000 ALTER TABLE `gafas_has_facturas` ENABLE KEYS */;
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
