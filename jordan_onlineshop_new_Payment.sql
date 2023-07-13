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
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Payment_CustomerID` int DEFAULT NULL,
  `Payment_OrderNumber` int DEFAULT NULL,
  `Payment_Date` varchar(45) DEFAULT NULL,
  `Payment_TotalAmount` int DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Ordernumber_idx` (`Payment_OrderNumber`),
  KEY `PayCustomerID_idx` (`Payment_CustomerID`),
  CONSTRAINT `PayCustomerID` FOREIGN KEY (`Payment_CustomerID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `PayOrderNumber` FOREIGN KEY (`Payment_OrderNumber`) REFERENCES `Order` (`Order_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1,NULL,0,NULL,NULL),(2,3,4,'10/7/2023 下午7:52:46',30),(3,2,5,'10/7/2023 下午7:52:50',30),(4,1,6,'10/7/2023 下午7:52:54',60),(5,1,1,'10/7/2023 下午7:54:10',60),(6,2,2,'10/7/2023 下午7:54:13',45),(7,3,3,'10/7/2023 下午7:54:16',40),(8,2,8,'11/7/2023 上午1:25:19',95),(9,3,7,'11/7/2023 上午1:37:33',70),(10,3,12,'12/7/2023 下午2:31:01',675),(11,2,11,'12/7/2023 下午2:33:07',85);
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
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
