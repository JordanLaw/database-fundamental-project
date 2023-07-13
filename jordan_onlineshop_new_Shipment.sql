-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: jordan_onlineshop_new
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `Shipment`
--

DROP TABLE IF EXISTS `Shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipment` (
  `Shipment_Number` int NOT NULL,
  `Shipment_date` varchar(45) DEFAULT NULL,
  `Handle_By_ID` int DEFAULT NULL,
  `Shipment_OrderNumber` int DEFAULT NULL,
  PRIMARY KEY (`Shipment_Number`),
  KEY `EmpolyeeID_idx` (`Handle_By_ID`),
  KEY `ShipmentOrderNumber_idx` (`Shipment_OrderNumber`),
  CONSTRAINT `EmpolyeeID` FOREIGN KEY (`Handle_By_ID`) REFERENCES `Employee` (`Employee_ID`),
  CONSTRAINT `ShipmentOrderNumber` FOREIGN KEY (`Shipment_OrderNumber`) REFERENCES `Order` (`Order_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shipment`
--

LOCK TABLES `Shipment` WRITE;
/*!40000 ALTER TABLE `Shipment` DISABLE KEYS */;
INSERT INTO `Shipment` VALUES (0,NULL,NULL,0),(1,'10/7/2023 下午7:53:30',1,4),(2,'10/7/2023 下午7:53:33',1,5),(3,'10/7/2023 下午7:53:37',1,6),(4,'10/7/2023 下午7:54:44',2,1),(5,'10/7/2023 下午7:54:47',2,2),(6,'10/7/2023 下午7:54:50',2,3),(7,'11/7/2023 上午1:50:42',1,7),(8,'12/7/2023 下午2:34:49',2,8);
/*!40000 ALTER TABLE `Shipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-13 16:48:30
