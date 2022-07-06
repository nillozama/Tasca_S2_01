-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: mypizza_bd
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
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `idDireccion` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(45) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  `Localidad_idLocalidad` int NOT NULL,
  `Localidad_Provincias_idProvincias` int NOT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `fk_Direccion_Localidad1_idx` (`Localidad_idLocalidad`,`Localidad_Provincias_idProvincias`),
  CONSTRAINT `fk_Direccion_Localidad1` FOREIGN KEY (`Localidad_idLocalidad`, `Localidad_Provincias_idProvincias`) REFERENCES `localidad` (`idLocalidad`, `Provincias_idProvincias`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'C/Pujades 304 13 6','08019',1,1),(2,'C/Alosa 8 1 2','43007',2,2),(3,'C/Gongora 23 4 1','21001',3,3),(4,'C/Acacia 13 2 2','17004',4,4),(5,'C/Alacant 15 1 2','08915',5,1),(6,'C/Angel Guimera 42 3 2','08923',6,1),(7,'C/Agut 13 1 2','17320',7,4),(8,'C/Salou 1 1 1 ','43840',8,2),(9,'C/Llull 304 3 2','08019',1,1),(10,'C/Espronceda 34 1 3 ','08005',1,1),(11,'C/Alosa 22 1 2','43007',2,2),(12,'C/Gongora 2 1 1','21001',3,3),(13,'C/Acacia 3 2 2','17004',4,4),(14,'C/Alacant 25 1 2','08915',5,1),(15,'C/Angel Guimera 4 3 2','08923',6,1),(16,'C/Agut 3 1 2','17320',7,4),(17,'C/Otra 1 1 1 ','43840',8,2);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-30  2:11:18
