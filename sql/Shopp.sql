CREATE DATABASE  IF NOT EXISTS `shopp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shopp`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopp
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Admins` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` longtext,
  `Password` longtext,
  `Email` longtext,
  `Address` longtext,
  `Contact` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES (1,'admin0','admin','Ruth_Baumbach41@gmail.com','4354 Bechtelar Inlet, New Darlenefort, Niger','1-827-451-4546'),(2,'admin1','admin','Laurianne_Gibson@gmail.com','7970 Dylan Parkways, East Marilieville, Peru','631.396.9040 x023'),(3,'admin2','admin','Hope.Wehner58@yahoo.com','59346 Hilpert Islands, Port Mitchell, Greenland','277.689.7459 x2555'),(4,'admin3','admin','Tobin.Gaylord@hotmail.com','162 Okey Squares, New Lenna, Georgia','1-568-456-6880 x3104'),(5,'admin4','admin','Sammy_Simonis@yahoo.com','996 Christian Hollow, South Casandra, Sudan','913.885.3057'),(6,'admin5','admin','Alvina4@hotmail.com','479 Alberto Garden, North Ettieside, Niger','(462) 492-1240'),(7,'admin6','admin','Jaydon32@yahoo.com','84215 Hagenes Cove, Darehaven, Austria','(679) 723-0684'),(8,'admin7','admin','Mariano_Padberg39@hotmail.com','7865 Veum Knolls, Lake Carlieport, Norfolk Island','(222) 450-3086'),(9,'admin8','admin','Aracely_Corkery77@hotmail.com','496 Heaney Mall, New Alexa, Costa Rica','559-373-2216 x29382'),(10,'admin9','admin','Morton_Waelchi@yahoo.com','53578 Halvorson Plaza, North Derickview, Liechtenstein','742.910.3541');
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OrderDetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `PricePerUnit` decimal(18,2) NOT NULL,
  `Subtotal` decimal(18,2) NOT NULL,
  `OrderId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  KEY `OrderId` (`OrderId`),
  KEY `ProductId` (`ProductId`),
  CONSTRAINT `OrderDetail_Product` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Order_OrderDetails` FOREIGN KEY (`OrderId`) REFERENCES `Orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (1,24,1,30.47,30.47,11),(2,13,2,54.94,109.88,14),(3,32,11,190.72,2097.95,9),(4,48,10,192.11,1921.12,1),(5,50,2,137.82,275.64,17),(6,50,20,137.82,2756.40,13),(7,4,15,117.45,1761.75,15),(8,11,19,139.09,2642.71,4),(9,49,7,10.63,74.40,11),(10,3,11,95.11,1046.18,1),(11,29,19,106.85,2030.08,16),(12,35,5,43.34,216.70,13),(13,15,1,136.43,136.43,2),(14,10,2,40.99,81.97,13),(15,50,6,137.82,826.92,4),(16,18,13,183.76,2388.90,1),(17,2,9,42.95,386.53,3),(18,17,14,23.69,331.62,17),(19,16,6,55.62,333.70,2),(20,7,6,104.42,626.54,3),(21,20,12,165.51,1986.16,16),(22,13,8,54.94,439.51,1),(23,9,6,103.96,623.73,12),(24,28,15,73.75,1106.27,17),(25,7,18,104.42,1879.62,19),(26,2,5,42.95,214.74,14),(27,26,13,137.28,1784.67,14),(28,44,1,45.52,45.52,15),(29,48,5,192.11,960.56,2),(30,28,8,73.75,590.01,5),(31,50,4,137.82,551.28,20),(32,43,16,76.46,1223.35,15),(33,7,15,104.42,1566.35,10),(34,24,4,30.47,121.90,19),(35,16,10,55.62,556.16,7),(36,44,5,45.52,227.60,15),(37,20,6,165.51,993.08,17),(38,22,13,180.07,2340.87,2),(39,3,11,95.11,1046.18,14),(40,48,6,192.11,1152.67,12),(41,16,13,55.62,723.01,3),(42,44,12,45.52,546.24,19),(43,10,6,40.99,245.92,12),(44,10,19,40.99,778.73,2),(45,38,1,28.57,28.57,10),(46,19,12,194.03,2328.31,9),(47,18,2,183.76,367.52,11),(48,23,4,111.70,446.81,1),(49,45,11,138.71,1525.82,3),(50,4,17,117.45,1996.65,11),(51,45,4,138.71,554.84,6),(52,39,4,133.30,533.20,10),(53,22,10,180.07,1800.67,12),(54,9,14,103.96,1455.37,19),(55,37,4,151.57,606.26,19),(56,31,14,183.99,2575.91,8),(57,12,14,12.32,172.47,12),(58,5,12,127.89,1534.72,20),(59,5,18,127.89,2302.07,4),(60,40,20,164.42,3288.38,10),(61,1,3,79.38,238.13,1),(62,41,7,84.67,592.71,10),(63,1,20,79.38,1587.54,15),(64,45,19,138.71,2635.51,18),(65,28,4,73.75,295.01,3),(66,5,15,127.89,1918.40,9),(67,38,6,28.57,171.42,20),(68,48,17,192.11,3265.91,18),(69,15,17,136.43,2319.34,3),(70,14,14,86.49,1210.87,12),(71,6,13,17.52,227.78,6),(72,48,4,192.11,768.45,10),(73,24,19,30.47,579.00,11),(74,32,13,190.72,2479.40,18),(75,36,8,106.50,852.00,15),(76,44,11,45.52,500.72,15),(77,39,20,133.30,2666.01,9),(78,25,1,143.38,143.38,4),(79,8,2,180.74,361.49,14),(80,18,11,183.76,2021.38,6),(81,8,15,180.74,2711.15,11),(82,29,16,106.85,1709.54,6),(83,32,13,190.72,2479.40,6),(84,45,13,138.71,1803.24,1),(85,5,3,127.89,383.68,16),(86,8,5,180.74,903.72,14),(87,19,9,194.03,1746.23,10),(88,9,11,103.96,1143.51,6),(89,7,13,104.42,1357.50,14),(90,41,17,84.67,1439.45,13),(91,14,3,86.49,259.47,2),(92,20,10,165.51,1655.13,9),(93,21,3,44.52,133.57,18),(94,23,5,111.70,558.51,12),(95,20,18,165.51,2979.23,19),(96,19,9,194.03,1746.23,8),(97,50,20,137.82,2756.40,19),(98,40,20,164.42,3288.38,17),(99,11,20,139.09,2781.80,2),(100,31,9,183.99,1655.94,5);
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Orders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Total` decimal(18,2) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PaymentStatus` longtext,
  `PaymentChannel` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `Order_User` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,8283.89,3,'Pending','PayPal'),(2,7591.57,8,'Paid','PayPal'),(3,5876.25,7,'Paid','PayPal'),(4,5915.08,9,'Pending','Bank Transfer'),(5,2245.96,8,'Paid','PayPal'),(6,8136.44,1,'Paid','Debit/Credit Card'),(7,556.16,6,'Pending','Debit/Credit Card'),(8,4322.14,3,'Paid','Bank Transfer'),(9,10665.79,7,'Pending','Bank Transfer'),(10,8523.90,9,'Paid','Debit/Credit Card'),(11,5759.20,7,'Pending','Debit/Credit Card'),(12,5764.84,4,'Paid','Bank Transfer'),(13,4494.52,3,'Pending','Bank Transfer'),(14,5778.18,4,'Paid','PayPal'),(15,6198.49,7,'Pending','Debit/Credit Card'),(16,4399.91,7,'Pending','Debit/Credit Card'),(17,5995.00,7,'Pending','PayPal'),(18,8514.38,1,'Pending','Debit/Credit Card'),(19,10345.03,4,'Pending','PayPal'),(20,2257.41,5,'Pending','PayPal');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext,
  `Price` decimal(18,2) NOT NULL,
  `Category` longtext,
  `ImageUrl` longtext,
  `VendorId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  KEY `VendorId` (`VendorId`),
  CONSTRAINT `Product_Vendor` FOREIGN KEY (`VendorId`) REFERENCES `Vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Sleek Metal Shoes',79.38,'Health','https://source.unsplash.com/300x300/?shoe',6),(2,'Incredible Metal Car',42.95,'Games','https://source.unsplash.com/300x300/?shoe',5),(3,'Gorgeous Granite Fish',95.11,'Automotive','https://source.unsplash.com/300x300/?shoe',10),(4,'Generic Wooden Chair',117.45,'Electronics','https://source.unsplash.com/300x300/?shoe',4),(5,'Refined Wooden Towels',127.89,'Health','https://source.unsplash.com/300x300/?shoe',3),(6,'Fantastic Metal Pizza',17.52,'Electronics','https://source.unsplash.com/300x300/?shoe',8),(7,'Handmade Granite Chips',104.42,'Industrial','https://source.unsplash.com/300x300/?shoe',7),(8,'Tasty Fresh Ball',180.74,'Movies','https://source.unsplash.com/300x300/?shoe',10),(9,'Awesome Steel Towels',103.96,'Electronics','https://source.unsplash.com/300x300/?shoe',2),(10,'Practical Wooden Computer',40.99,'Electronics','https://source.unsplash.com/300x300/?shoe',1),(11,'Generic Steel Tuna',139.09,'Industrial','https://source.unsplash.com/300x300/?shoe',9),(12,'Ergonomic Rubber Chips',12.32,'Jewelery','https://source.unsplash.com/300x300/?shoe',8),(13,'Intelligent Frozen Ball',54.94,'Books','https://source.unsplash.com/300x300/?shoe',10),(14,'Intelligent Fresh Chicken',86.49,'Shoes','https://source.unsplash.com/300x300/?shoe',4),(15,'Handcrafted Concrete Shoes',136.43,'Industrial','https://source.unsplash.com/300x300/?shoe',7),(16,'Refined Soft Pizza',55.62,'Tools','https://source.unsplash.com/300x300/?shoe',10),(17,'Practical Wooden Salad',23.69,'Sports','https://source.unsplash.com/300x300/?shoe',5),(18,'Gorgeous Fresh Pizza',183.76,'Automotive','https://source.unsplash.com/300x300/?shoe',6),(19,'Tasty Granite Chicken',194.03,'Computers','https://source.unsplash.com/300x300/?shoe',4),(20,'Incredible Concrete Shirt',165.51,'Jewelery','https://source.unsplash.com/300x300/?shoe',7),(21,'Incredible Cotton Pants',44.52,'Jewelery','https://source.unsplash.com/300x300/?shoe',6),(22,'Intelligent Concrete Pizza',180.07,'Beauty','https://source.unsplash.com/300x300/?shoe',5),(23,'Refined Metal Sausages',111.70,'Home','https://source.unsplash.com/300x300/?shoe',8),(24,'Rustic Wooden Bike',30.47,'Sports','https://source.unsplash.com/300x300/?shoe',3),(25,'Handcrafted Granite Salad',143.38,'Shoes','https://source.unsplash.com/300x300/?shoe',1),(26,'Practical Soft Sausages',137.28,'Jewelery','https://source.unsplash.com/300x300/?shoe',1),(27,'Awesome Metal Sausages',43.96,'Health','https://source.unsplash.com/300x300/?shoe',4),(28,'Fantastic Rubber Chips',73.75,'Shoes','https://source.unsplash.com/300x300/?shoe',5),(29,'Refined Granite Keyboard',106.85,'Music','https://source.unsplash.com/300x300/?shoe',6),(30,'Awesome Steel Fish',113.24,'Books','https://source.unsplash.com/300x300/?shoe',6),(31,'Generic Wooden Towels',183.99,'Tools','https://source.unsplash.com/300x300/?shoe',1),(32,'Incredible Soft Hat',190.72,'Shoes','https://source.unsplash.com/300x300/?shoe',5),(33,'Unbranded Soft Bacon',46.66,'Health','https://source.unsplash.com/300x300/?shoe',6),(34,'Licensed Concrete Chips',172.23,'Games','https://source.unsplash.com/300x300/?shoe',8),(35,'Handcrafted Fresh Bike',43.34,'Music','https://source.unsplash.com/300x300/?shoe',10),(36,'Licensed Frozen Fish',106.50,'Music','https://source.unsplash.com/300x300/?shoe',6),(37,'Rustic Plastic Soap',151.57,'Electronics','https://source.unsplash.com/300x300/?shoe',2),(38,'Generic Cotton Pants',28.57,'Clothing','https://source.unsplash.com/300x300/?shoe',7),(39,'Intelligent Steel Bike',133.30,'Shoes','https://source.unsplash.com/300x300/?shoe',6),(40,'Practical Soft Chips',164.42,'Baby','https://source.unsplash.com/300x300/?shoe',5),(41,'Awesome Cotton Ball',84.67,'Books','https://source.unsplash.com/300x300/?shoe',5),(42,'Handmade Cotton Chair',140.62,'Electronics','https://source.unsplash.com/300x300/?shoe',7),(43,'Awesome Rubber Keyboard',76.46,'Beauty','https://source.unsplash.com/300x300/?shoe',3),(44,'Licensed Frozen Ball',45.52,'Jewelery','https://source.unsplash.com/300x300/?shoe',5),(45,'Unbranded Concrete Keyboard',138.71,'Grocery','https://source.unsplash.com/300x300/?shoe',1),(46,'Intelligent Metal Sausages',32.71,'Automotive','https://source.unsplash.com/300x300/?shoe',6),(47,'Practical Concrete Fish',133.21,'Baby','https://source.unsplash.com/300x300/?shoe',2),(48,'Handmade Rubber Chicken',192.11,'Home','https://source.unsplash.com/300x300/?shoe',8),(49,'Sleek Wooden Soap',10.63,'Electronics','https://source.unsplash.com/300x300/?shoe',3),(50,'Licensed Steel Fish',137.82,'Grocery','https://source.unsplash.com/300x300/?shoe',9);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` longtext,
  `Password` longtext,
  `Email` longtext,
  `Address` longtext,
  `Contact` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'user0','user','Daisha.Toy@hotmail.com','86799 Schaden Walks, South Doug, Cameroon','447-394-6581 x939'),(2,'user1','user','Mekhi.Smitham92@yahoo.com','475 Rowan Lodge, North Hilbert, China','576.478.2592 x6750'),(3,'user2','user','Savion.Jenkins@gmail.com','79041 Chloe Mews, Beulahchester, India','(925) 303-5066 x184'),(4,'user3','user','Geo_Swaniawski@yahoo.com','19821 Betsy Neck, Rathport, Armenia','646.620.5925'),(5,'user4','user','Eliseo_Padberg@gmail.com','038 Pearlie Lights, Anabelmouth, Croatia','1-491-306-8738'),(6,'user5','user','Charlie14@gmail.com','460 Bosco Islands, Mikestad, Bermuda','756-884-6054'),(7,'user6','user','Johan_Kuhn43@hotmail.com','427 Norberto Shoal, South Roslyn, Peru','334.566.0525 x4278'),(8,'user7','user','Khalid76@gmail.com','37302 Fahey Street, Port Mortonhaven, Senegal','259.895.6495'),(9,'user8','user','Evalyn89@gmail.com','71628 Elody Dale, Jeromyshire, Ethiopia','1-607-946-3748 x322'),(10,'user9','user','Elmo_Vandervort59@hotmail.com','649 Kohler Mountains, West Austynberg, Bahamas','1-301-545-7113 x7474');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendors`
--

DROP TABLE IF EXISTS `Vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Vendors` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` longtext,
  `Password` longtext,
  `Email` longtext,
  `Address` longtext,
  `Contact` longtext,
  `ShopName` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendors`
--

LOCK TABLES `Vendors` WRITE;
/*!40000 ALTER TABLE `Vendors` DISABLE KEYS */;
INSERT INTO `Vendors` VALUES (1,'vendor0','vendor','Percy25@yahoo.com','014 Treutel Extensions, Theohaven, Rwanda','336-431-0282','Paucek, Jast and Schulist'),(2,'vendor1','vendor','Jarvis.Smitham@hotmail.com','72450 Gerlach Extensions, Pfannerstillland, Iraq','394.712.9874 x1157','Watsica and Sons'),(3,'vendor2','vendor','Madilyn.Miller7@hotmail.com','52163 Bogan Shore, Lake Bernie, Mauritania','(457) 349-7066','Stoltenberg - Pouros'),(4,'vendor3','vendor','Chloe2@yahoo.com','366 Botsford Loop, Schummchester, Portugal','452-543-5531 x2409','Johnston, Wilderman and Hamill'),(5,'vendor4','vendor','Creola84@hotmail.com','28299 Emilia Row, West Chandlerborough, Timor-Leste','212-452-6340 x4456','Heidenreich Inc'),(6,'vendor5','vendor','Crystal6@gmail.com','40548 Tavares Hills, Ludwigtown, Niue','(744) 778-6746','Rice - Gerlach'),(7,'vendor6','vendor','Jonathan80@gmail.com','9139 Strosin Radial, Majorside, Tuvalu','(263) 946-6115 x9212','Balistreri - Casper'),(8,'vendor7','vendor','Benedict_Lindgren@gmail.com','380 Jewell Garden, South Natport, Burkina Faso','1-400-767-4284 x89242','Towne - Hahn'),(9,'vendor8','vendor','Chris.Kris@hotmail.com','4456 Emery Cape, East Carsonfurt, Dominica','772.396.6314 x8742','Nicolas and Sons'),(10,'vendor9','vendor','Orland5@hotmail.com','2892 Johnston Valleys, Astridborough, Serbia','396-320-1827 x037','Huel Group');
/*!40000 ALTER TABLE `Vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__MigrationHistory`
--

DROP TABLE IF EXISTS `__MigrationHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `__MigrationHistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MigrationId`,`ContextKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__MigrationHistory`
--

LOCK TABLES `__MigrationHistory` WRITE;
/*!40000 ALTER TABLE `__MigrationHistory` DISABLE KEYS */;
INSERT INTO `__MigrationHistory` VALUES ('201812011540251_InitialCreate','Shopp.Migrations.Configuration',_binary '�\0\0\0\0\0\0\�\\\�n\�6�\�;:\�(ٽl{��A7�g��\�8B%J��4F\�\'롏\�W(���H��-\�F.E~3$?rF\���Ͽ�\�Oa`=\�$�#4��l\"7�|��\���\���\��\�&�^�d}��}��\�H�N\��\�#\�I\��t?�\�$J�{�\�F��\�yp�sx\�@a,˚\\g�!\��!�\�\"\�\�g ��<�e;y�\�Q�K\�4.�ڋ�(�m\�8�����m�\"0Q\�\�k\n8�\�r�ܬbH�݃ ��\�GuwS\�\�S\�z`\�f)���\�\�p\�\�\�f\�E\�,,^\�Y\�6���\�\'����Y�\�^\�\�\�\�����=�ф�oϚe\�8E0\�	��yv�\�/pu�\�eA�\�A4!τ\�4O�&xu\r\�K\�\�=\�r\�q�<�\r\�\���#�\�m]\�\�.�l��i.p���!�	�Л�a�(\��!]�E\�\�O�D\�-r2l\�<}�h��6�h[g����R��\�\'�\�I�\�A��%\�\�NC\��K9���\�\�r\�́��7,g\�\�Ǩ�p]%LN Η�\�q�w���$�2w�l��5��uP\�\�\�9LE�N�뇀l�<!�Js�Ѷ.����,�;L/M@η\�z	�e��*8ۺ�A�4}�\�\��ľ\�\�M\��Y�\�QP��\�ހd	\�\�F\�.�(K\�ڕ�\�\�W\0߲~��\�c&^\�P\�S\�b�\�axg\�nY\�ͨ�\Z�u/�9X�d.2\�l|3XJ�=�%�#X��K��M\�\rʓ��>L���٢\\�XV��j�\��u��]���ڝ��K�s\�{-f\�NW\�qw�dY\�9\\\�\�͂\�\�ėQ�\Z}\Z\�!X¯\����D^�Ao��SZ\�ʿ��ԖQ|Ұ�\�\�,d%�\��v�xg%wVR%���x�;\�\�i\Z�~\�`�\rA|>E�\��6P(Ϝv2r���e���|d�\�	 �ֱ[\�g u�\�\\02��F,v!iTEE�~h�#WL\�\�@J.%\�\�}\�#׏Aй2\�Hû�N�ɐ����\\�D\�\�E0΢PM\r� iC��h\�p43a_��վ\�\�\�^ۚ���SP�x���kЋ\�yk�\�\�\�Dh�y6I���:7��{I1\�ƹ\�@+�饱K���\�����|���n�ot\�\�6�]A=\r���{-�o\�St\�;�-аp\�r�\�\'o���\�\�f������|%KKGQ\��]@\�\�#���K��\n\r*�\�\�HrD��	��s8�D�х�\�\\n�j<;K\��B���\�R|�먏\�˄4r\�\�\�\�o0\�\�����\��5\"N\�xA�M\�-Dӟ\��(�L\\�!9��xk\�T��4g\�\�\�x<�\�5\�[\��q8F�\�\����f\�\�L��16����5Xܖe�^\�\�}ϞM�\"\�l�8�\�\��c-�l��\�Z�z�w��	ma�ḩ\"��i\�$\�(K(=�\���I�O\0w�F3f^\�\�&Y7ͅ[	XsӪ[�\�N?sF�4pM\�_�?#�_\�\�s�\�\�j\�Y4; QDgQ��H\�\�\�G\�qC�n5G��<R\�j�TF�x��\��\��x\�h�\�\�v<kl\�Li{�\\�8\rGX��I;LuUy7�?a[G�C[\�Uئ���XuU��ъ\�#㟘#\�Ic<Z\�j�\�\�r<�6X��DL\�\�\�mo�{y\�w#���|_�<@b��xe�zc��$({�bWx\����z\'0��z\�ζ\�l���\�\�\�OR\��O�#ǡj���)Z$�4�n/B�4��\��\�ք��#աiI�~6�V�\��Y�7�T7pw���\�T\���\�e�[f|#r\"wa\�YE��LʨEw�c#�Qt��rѣ\�\�\�\�j�G�O�\�\�g�O&\\��\0ȿ�).ҝ쏴rS(�|9��N�z�\"\�Өf7k�Z>]\�Ό�e|jN�e�%K\r4$k(��`5Dʟ\Z\n#�G��*\�{\\\���Ɨu\�ȃOS��|ԑu�\�-�g\�rdX�]v�K\�@ѝ7v\�\�\�HEw�\�P\�	=+\�\�\�oF\�;�\�\�t\�Qke�\�ps��\��\r�Ȩ{��ڙa≠fX�\��Zy��U1�\�䪘�Z\�E/Cq\�\��\Z7��T�v�VJ�\�0\�jS8�R}\�zW\��\�\�[*Qe\�m�8b\�\�o���\�r\�fyBo�n�#�o\�ơț)d�2�[d\�\�V:1�\'گ\�*Nxk\�=�\�\��>[�eS�J	�9��**�\�W!\�5\�.\"�\\xZUq�yAW\r�JJkƹR��\�@�ߍ\\kM��\nW�8�)Mh�LP�ks�\�u-e*t]\��Vk\Z�9ܦ\�ۺ\�\�Q���NJ\�Z�r<oQ�H4>A��A�_�R�z�<\"A{T4��&Ɔ�I`b\�RYC\�F\�\�\�s�\�\�\�I\ZU]�w�25�ؠ\����\�\�\�4�]�o \��H\��\�\�U�\��)\��.~�\�l���M�:O�\���V61��O�\0�\�O�xL\�3E\�KA\�qk�{�i\�i�bH�2*��y70��^�x�Ct#\��\�\�bЃto��\�,�%F=��K8\�O��\�E��[\0\0','6.2.0-61023');
/*!40000 ALTER TABLE `__MigrationHistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02  0:12:22
