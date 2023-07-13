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
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `Order_SSD` int NOT NULL,
  `Order_Date` varchar(45) DEFAULT NULL,
  `Order_Quantity` int NOT NULL,
  `Order_Number` int DEFAULT NULL,
  `Order_ProductID` int NOT NULL,
  `Order_ShipStatus` varchar(45) DEFAULT NULL,
  `Order_ShipmentID` varchar(45) DEFAULT '0',
  `Order_CustomerID` int DEFAULT NULL,
  `Order_PaymentStatus` varchar(45) NOT NULL,
  PRIMARY KEY (`Order_SSD`),
  KEY `CustomerID_idx` (`Order_CustomerID`),
  KEY `ProductID_idx` (`Order_ProductID`),
  KEY `ShipOrderNumber` (`Order_Number`),
  KEY `ShipmentID_idx` (`Order_ShipmentID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`Order_CustomerID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `ProductID` FOREIGN KEY (`Order_ProductID`) REFERENCES `Product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,NULL,0,0,0,'Y','0',0,'Y'),(2,'10/7/2023 下午7:52:06',2,1,1,'Y','4',1,'Y'),(3,'10/7/2023 下午7:52:06',3,1,2,'Y','4',1,'Y'),(4,'10/7/2023 下午7:52:10',3,2,1,'Y','5',2,'Y'),(5,'10/7/2023 下午7:52:13',4,3,2,'Y','6',3,'Y'),(6,'10/7/2023 下午7:52:45',2,4,1,'Y','1',3,'Y'),(7,'10/7/2023 下午7:52:45',3,4,2,'Y','1',3,'Y'),(8,'10/7/2023 下午7:52:50',2,5,1,'Y','2',2,'Y'),(9,'10/7/2023 下午7:52:53',3,6,2,'Y','3',1,'Y'),(10,'11/7/2023 上午1:21:22',2,7,1,'Y','7',3,'Y'),(11,'11/7/2023 上午1:21:22',4,7,2,'Y','7',3,'Y'),(12,'11/7/2023 上午1:23:09',3,8,1,'Y','8',2,'Y'),(13,'11/7/2023 上午1:23:09',5,8,2,'Y','8',2,'Y'),(14,'12/7/2023 下午2:29:06',2,9,1,'N','0',1,'N'),(15,'12/7/2023 下午2:29:06',3,9,2,'N','0',1,'N'),(18,'12/7/2023 下午2:30:24',3,11,1,'N','0',2,'Y'),(19,'12/7/2023 下午2:30:24',4,11,2,'N','0',2,'Y'),(20,'12/7/2023 下午2:30:50',45,12,1,'N','0',3,'Y');
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
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
