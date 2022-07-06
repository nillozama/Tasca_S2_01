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
-- Table structure for table `productos_has_pedido`
--

DROP TABLE IF EXISTS `productos_has_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_has_pedido` (
  `Productos_idProductos` int NOT NULL,
  `Pedido_idPedido` int NOT NULL,
  KEY `fk_Productos_has_Pedido_Pedido1_idx` (`Pedido_idPedido`),
  KEY `fk_Productos_has_Pedido_Productos1_idx` (`Productos_idProductos`),
  CONSTRAINT `fk_Productos_has_Pedido_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `fk_Productos_has_Pedido_Productos1` FOREIGN KEY (`Productos_idProductos`) REFERENCES `productos` (`idProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_has_pedido`
--

LOCK TABLES `productos_has_pedido` WRITE;
/*!40000 ALTER TABLE `productos_has_pedido` DISABLE KEYS */;
INSERT INTO `productos_has_pedido` VALUES (1,1),(2,1),(3,1),(8,1),(9,1),(11,1),(1,2),(1,2),(3,2),(8,2),(8,2),(12,2),(1,3),(2,3),(3,4),(8,3),(9,3),(11,4),(1,5),(1,6),(3,7),(8,5),(8,6),(12,7),(1,8),(2,8),(3,8),(8,8),(9,8),(11,8),(1,9),(1,9),(3,9),(8,9),(8,9),(12,9),(4,10),(5,10),(3,11),(6,11),(7,11),(11,12),(1,13),(1,14),(3,14),(8,12),(10,13),(12,14);
/*!40000 ALTER TABLE `productos_has_pedido` ENABLE KEYS */;
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
