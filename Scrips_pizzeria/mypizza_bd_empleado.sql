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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `NIF` varchar(45) DEFAULT NULL,
  `puesto_trabajo` varchar(45) NOT NULL,
  `Tienda_idTienda` int NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_Empleado_Tienda1_idx` (`Tienda_idTienda`),
  CONSTRAINT `fk_Empleado_Tienda1` FOREIGN KEY (`Tienda_idTienda`) REFERENCES `tienda` (`idTienda`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Carlos','Rodriguez',NULL,NULL,NULL,'cocinero',1),(2,'Juan','Rodriguez',NULL,NULL,NULL,'cocinero',2),(3,'Carlos','Garcia',NULL,NULL,NULL,'cocinero',3),(4,'Sara','Paez',NULL,NULL,NULL,'cocinero',4),(5,'Carlos','Marti',NULL,NULL,NULL,'cocinero',5),(6,'Eva','Fort',NULL,NULL,NULL,'cocinero',6),(7,'Jesus','Rodriguez',NULL,NULL,NULL,'cocinero',7),(8,'Javier','Garcia',NULL,NULL,NULL,'cocinero',8),(9,'Juan','Rodri',NULL,NULL,NULL,'repartidor',1),(10,'Alex','Garrido',NULL,NULL,NULL,'repartidor',2),(11,'Jose','Garcia',NULL,NULL,NULL,'repartidor',3),(12,'Silvia','Pampin',NULL,NULL,NULL,'repartidor',4),(13,'Ricardo','Ares',NULL,NULL,NULL,'repartidor',5),(14,'Joan','Andreu',NULL,NULL,NULL,'repartidor',6),(15,'Albert','Pirlo',NULL,NULL,NULL,'repartidor',7),(16,'Pol','Galan',NULL,NULL,NULL,'repartidor',8),(17,'Raquel','Saez',NULL,NULL,NULL,'repartidor',1),(18,'Aleix','Duran',NULL,NULL,NULL,'repartidor',2),(19,'Kiko','Nazareno',NULL,NULL,NULL,'repartidor',3),(20,'Arturo','Girona',NULL,NULL,NULL,'repartidor',4),(21,'Jose','Andrade',NULL,NULL,NULL,'repartidor',5),(22,'Rosa','Vargas',NULL,NULL,NULL,'repartidor',6),(23,'Roberto','Martinez',NULL,NULL,NULL,'repartidor',7),(24,'Silvia','Gomez',NULL,NULL,NULL,'repartidor',8);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
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
