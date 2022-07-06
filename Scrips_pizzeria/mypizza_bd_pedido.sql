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
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int NOT NULL AUTO_INCREMENT,
  `Cliente_idCliente` int NOT NULL,
  `Tienda_idTienda` int NOT NULL,
  `fecha` datetime NOT NULL,
  `pedido_domicilio` varchar(45) NOT NULL,
  `Repartidor_idEmpleado` int DEFAULT NULL,
  `hora_entrega` datetime DEFAULT NULL,
  `precio_final` float DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `fk_Pedido_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Pedido_Tienda1_idx` (`Tienda_idTienda`),
  KEY `fk_Pedido_Empleado1_idx` (`Repartidor_idEmpleado`),
  CONSTRAINT `fk_Pedido_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Pedido_Empleado1` FOREIGN KEY (`Repartidor_idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `fk_Pedido_Tienda1` FOREIGN KEY (`Tienda_idTienda`) REFERENCES `tienda` (`idTienda`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,1,'2022-05-12 13:00:00','domicilio',9,'2022-05-12 13:25:30',NULL),(2,2,1,'2022-05-12 14:00:00','domicilio',9,'2022-05-12 14:25:30',NULL),(3,3,2,'2022-05-13 14:10:00','domicilio',9,'2022-05-13 14:35:30',NULL),(4,4,3,'2022-05-14 13:00:00','domicilio',9,'2022-05-14 13:25:30',NULL),(5,5,4,'2022-05-15 13:00:00','domicilio',9,'2022-05-15 13:25:30',NULL),(6,1,1,'2022-05-16 13:00:00','domicilio',9,'2022-05-16 13:25:30',NULL),(7,6,5,'2022-05-16 15:00:00','domicilio',9,'2022-05-16 15:25:30',NULL),(8,4,3,'2022-05-17 13:00:00','domicilio',9,'2022-05-17 13:25:30',NULL),(9,7,6,'2022-05-17 13:00:00','domicilio',9,'2022-05-17 13:25:30',NULL),(10,1,1,'2022-05-18 13:00:00','domicilio',9,'2022-05-18 13:25:30',NULL),(11,8,7,'2022-05-19 13:00:00','domicilio',9,'2022-05-19 13:25:30',NULL),(12,4,3,'2022-05-19 13:00:00','domicilio',9,'2022-05-19 13:25:30',NULL),(13,9,8,'2022-05-20 13:00:00','domicilio',9,'2022-05-20 13:25:30',NULL),(14,6,5,'2022-05-20 13:00:00','domicilio',9,'2022-05-20 13:25:30',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
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
