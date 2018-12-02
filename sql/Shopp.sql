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
INSERT INTO `Admins` VALUES (1,'admin0','admin','Tierra.Graham70@gmail.com','43100 Krajcik Springs, West Andy, Timor-Leste','(307) 626-0171'),(2,'admin1','admin','Lola42@yahoo.com','1722 Lynch Fort, Grimeshaven, Netherlands','754-721-9170 x111'),(3,'admin2','admin','Hilda_McKenzie@gmail.com','38978 Octavia Divide, Esmeraldaborough, Bulgaria','(453) 685-2719 x831'),(4,'admin3','admin','Elaina.Turner@yahoo.com','42523 Calista Throughway, South Freidachester, Antarctica (the territory South of 60 deg S)','811-829-3518 x3968'),(5,'admin4','admin','Adrian_Romaguera@yahoo.com','12287 Macy Burgs, Karlland, Guernsey','1-444-669-9890 x129'),(6,'admin5','admin','Raphaelle_Tillman66@yahoo.com','00964 Lolita Drive, Mullerburgh, Congo','278.748.5831 x688'),(7,'admin6','admin','Nannie41@hotmail.com','34725 Lou Light, West Mattshire, Poland','892-407-3145 x21585'),(8,'admin7','admin','Charles40@hotmail.com','123 Ines Bridge, Lake Vergie, Ukraine','1-660-266-1891'),(9,'admin8','admin','Osbaldo.Torphy15@gmail.com','27794 Bayer Point, Port Josefinatown, Sao Tome and Principe','609-489-7001 x5074'),(10,'admin9','admin','Monserrat_Osinski21@yahoo.com','265 Rosalind Station, New Liliane, Sri Lanka','691.425.0450');
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
INSERT INTO `OrderDetails` VALUES (1,44,11,138.68,1525.46,2),(2,6,8,193.55,1548.37,17),(3,28,5,162.78,813.88,6),(4,24,16,14.04,224.58,7),(5,29,4,155.72,622.88,8),(6,10,4,113.86,455.46,20),(7,48,8,22.18,177.42,8),(8,1,15,155.06,2325.84,14),(9,7,9,134.12,1207.12,4),(10,17,19,15.36,291.81,19),(11,13,17,62.89,1069.06,19),(12,11,14,168.37,2357.25,3),(13,26,4,46.75,186.99,13),(14,50,5,36.70,183.52,14),(15,21,20,13.31,266.20,1),(16,16,9,44.99,404.90,7),(17,23,19,188.53,3582.03,3),(18,47,17,51.57,876.62,1),(19,23,18,188.53,3393.50,3),(20,33,20,118.17,2363.46,16),(21,16,5,44.99,224.94,19),(22,19,5,183.97,919.84,7),(23,13,8,62.89,503.09,19),(24,18,14,26.30,368.14,11),(25,35,19,135.18,2568.35,1),(26,32,12,190.69,2288.34,3),(27,43,17,74.58,1267.78,16),(28,42,18,68.04,1224.71,1),(29,47,7,51.57,360.96,20),(30,1,16,155.06,2480.90,1),(31,41,18,99.85,1797.23,16),(32,38,14,193.11,2703.50,5),(33,36,1,56.90,56.90,1),(34,21,2,13.31,26.62,16),(35,30,2,165.83,331.66,2),(36,1,5,155.06,775.28,5),(37,48,17,22.18,377.01,18),(38,2,17,194.36,3304.20,6),(39,46,10,67.25,672.46,3),(40,17,9,15.36,138.22,7),(41,45,6,150.20,901.20,18),(42,37,11,50.33,553.58,12),(43,41,19,99.85,1897.07,17),(44,7,19,134.12,2548.36,6),(45,1,9,155.06,1395.51,12),(46,49,5,188.98,944.89,16),(47,37,19,50.33,956.18,16),(48,9,1,195.98,195.98,2),(49,27,16,54.22,867.50,20),(50,4,17,81.57,1386.77,1),(51,34,8,83.53,668.28,4),(52,44,11,138.68,1525.46,13),(53,23,18,188.53,3393.50,17),(54,21,5,13.31,66.55,12),(55,30,17,165.83,2819.12,7),(56,36,1,56.90,56.90,18),(57,19,20,183.97,3679.34,8),(58,29,12,155.72,1868.65,6),(59,41,15,99.85,1497.69,11),(60,33,4,118.17,472.69,5),(61,40,15,31.98,479.74,15),(62,5,10,41.94,419.36,3),(63,48,3,22.18,66.53,12),(64,48,11,22.18,243.95,19),(65,11,7,168.37,1178.62,8),(66,39,12,33.93,407.15,15),(67,4,17,81.57,1386.77,5),(68,34,14,83.53,1169.49,16),(69,46,2,67.25,134.49,18),(70,4,2,81.57,163.15,16),(71,31,17,54.97,934.48,16),(72,42,13,68.04,884.51,14),(73,11,11,168.37,1852.12,10),(74,17,16,15.36,245.73,8),(75,22,9,161.70,1455.31,18),(76,45,8,150.20,1201.60,9),(77,41,1,99.85,99.85,6),(78,50,12,36.70,440.44,4),(79,49,3,188.98,566.93,8),(80,12,4,85.53,342.11,1),(81,39,18,33.93,610.73,8),(82,8,7,122.90,860.27,2),(83,35,8,135.18,1081.41,14),(84,13,12,62.89,754.63,14),(85,42,15,68.04,1020.59,2),(86,45,5,150.20,751.00,2),(87,22,1,161.70,161.70,6),(88,26,6,46.75,280.48,15),(89,32,13,190.69,2479.03,1),(90,16,18,44.99,809.79,5),(91,22,20,161.70,3234.03,11),(92,2,12,194.36,2332.38,7),(93,40,6,31.98,191.90,18),(94,38,5,193.11,965.54,2),(95,29,12,155.72,1868.65,20),(96,5,4,41.94,167.74,10),(97,16,2,44.99,89.98,17),(98,39,16,33.93,542.87,18),(99,32,6,190.69,1144.17,3),(100,4,11,81.57,897.32,13);
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
INSERT INTO `Orders` VALUES (1,11681.58,5,'Paid','PayPal'),(2,5650.50,7,'Pending','Debit/Credit Card'),(3,13857.10,7,'Pending','Bank Transfer'),(4,2315.84,2,'Pending','Debit/Credit Card'),(5,6148.04,3,'Pending','Debit/Credit Card'),(6,8796.63,6,'Paid','Bank Transfer'),(7,6839.03,3,'Pending','PayPal'),(8,7081.66,6,'Pending','Debit/Credit Card'),(9,1201.60,3,'Paid','Bank Transfer'),(10,2019.87,9,'Pending','Bank Transfer'),(11,5099.86,2,'Pending','PayPal'),(12,2082.16,4,'Paid','PayPal'),(13,2609.76,10,'Paid','PayPal'),(14,5229.91,2,'Paid','Bank Transfer'),(15,1167.38,10,'Paid','PayPal'),(16,9623.26,9,'Paid','PayPal'),(17,6928.92,7,'Paid','Bank Transfer'),(18,3659.69,8,'Pending','Bank Transfer'),(19,2332.85,9,'Pending','Bank Transfer'),(20,3552.56,5,'Paid','Debit/Credit Card');
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
  `Description` longtext,
  `Price` decimal(18,2) NOT NULL,
  `Category` longtext,
  `ImageUrl` longtext,
  `VendorId` int(11) NOT NULL,
  `StockAvailable` int(11) NOT NULL,
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
INSERT INTO `Products` VALUES (1,'Ergonomic Plastic Sausages','Quis impedit alias dolor possimus illo itaque in ut.\nVoluptas nostrum odio autem sit ut.',155.06,'Music','https://source.unsplash.com/300x300/?shoe',9,34),(2,'Tasty Granite Fish','Aut facilis qui ab voluptatem ratione est repellat deserunt necessitatibus.\nLabore aliquid aut quia.',194.36,'Movies','https://source.unsplash.com/300x300/?shoe',1,129),(3,'Tasty Fresh Salad','Corporis maxime at non iure debitis at enim natus harum.\nQuis fugit animi.',132.64,'Music','https://source.unsplash.com/300x300/?shoe',9,179),(4,'Licensed Soft Chicken','Dolor sint et quibusdam quam sit autem omnis.\nConsequatur doloribus cumque ratione.',81.57,'Shoes','https://source.unsplash.com/300x300/?shoe',6,60),(5,'Incredible Wooden Fish','Id labore minus veritatis ipsa facere quisquam.\nVeritatis sed sed reprehenderit.',41.94,'Electronics','https://source.unsplash.com/300x300/?shoe',6,130),(6,'Refined Rubber Table','Quibusdam eum odit vel velit blanditiis officia quia perspiciatis totam.\nSapiente aut architecto quia cum suscipit minus vel.',193.55,'Automotive','https://source.unsplash.com/300x300/?shoe',6,115),(7,'Intelligent Fresh Pizza','Suscipit incidunt aliquid impedit nam numquam.\nDolor eius magni aliquid est qui dolorem excepturi.',134.12,'Toys','https://source.unsplash.com/300x300/?shoe',4,134),(8,'Rustic Cotton Towels','Non vero beatae hic veniam.\nAdipisci modi molestias aut sapiente.',122.90,'Health','https://source.unsplash.com/300x300/?shoe',8,50),(9,'Handmade Frozen Fish','A unde voluptatibus vitae autem.\nQui debitis deserunt velit porro necessitatibus.',195.98,'Electronics','https://source.unsplash.com/300x300/?shoe',4,184),(10,'Licensed Fresh Soap','Non voluptatem voluptates nulla perspiciatis.\nSint provident voluptatum quo quos velit dicta.',113.86,'Industrial','https://source.unsplash.com/300x300/?shoe',3,56),(11,'Awesome Soft Ball','Quis id consequatur temporibus.\nQuae nihil aut quis.',168.37,'Clothing','https://source.unsplash.com/300x300/?shoe',6,181),(12,'Tasty Soft Sausages','Ut ipsum quos est.\nPossimus sint nemo aut quidem quo.',85.53,'Health','https://source.unsplash.com/300x300/?shoe',7,51),(13,'Incredible Soft Bike','Aspernatur inventore sit in non cupiditate.\nRecusandae explicabo itaque.',62.89,'Movies','https://source.unsplash.com/300x300/?shoe',2,21),(14,'Ergonomic Cotton Bike','Sed aut nulla.\nAtque voluptate voluptate doloribus placeat sunt dolorem aspernatur maxime voluptas.',108.36,'Outdoors','https://source.unsplash.com/300x300/?shoe',2,122),(15,'Ergonomic Concrete Soap','Exercitationem qui dolorem.\nCumque sed vel amet accusamus.',107.73,'Beauty','https://source.unsplash.com/300x300/?shoe',3,169),(16,'Handcrafted Concrete Towels','Molestiae ipsum eius est perferendis aut repellat.\nNisi voluptates eum provident.',44.99,'Clothing','https://source.unsplash.com/300x300/?shoe',3,66),(17,'Licensed Cotton Chicken','Fugit impedit nostrum.\nError modi reiciendis repudiandae.',15.36,'Beauty','https://source.unsplash.com/300x300/?shoe',1,13),(18,'Unbranded Plastic Hat','Veritatis enim minima quo eum dolor.\nQuia molestiae et ut illum.',26.30,'Grocery','https://source.unsplash.com/300x300/?shoe',3,133),(19,'Sleek Rubber Keyboard','Debitis ipsa quia autem.\nVitae consequuntur quaerat corrupti.',183.97,'Electronics','https://source.unsplash.com/300x300/?shoe',5,89),(20,'Handmade Wooden Chicken','Enim labore recusandae aliquid vitae placeat.\nSoluta neque magnam voluptatem vero sint reprehenderit amet ipsa veritatis.',48.79,'Sports','https://source.unsplash.com/300x300/?shoe',2,109),(21,'Sleek Rubber Fish','Quisquam maiores ducimus.\nQuasi similique non dicta odit labore ut non.',13.31,'Music','https://source.unsplash.com/300x300/?shoe',1,173),(22,'Incredible Wooden Chips','In similique illo sit repellendus nobis unde est eaque repudiandae.\nQuos debitis aliquam ea voluptas totam ut sunt.',161.70,'Home','https://source.unsplash.com/300x300/?shoe',9,136),(23,'Licensed Wooden Ball','Placeat est consequatur quis.\nSint beatae cumque voluptatem non et non.',188.53,'Shoes','https://source.unsplash.com/300x300/?shoe',6,77),(24,'Small Concrete Hat','Laborum odio non dolorem qui debitis voluptatem aperiam.\nOmnis ut minus ut atque et delectus incidunt.',14.04,'Beauty','https://source.unsplash.com/300x300/?shoe',5,108),(25,'Licensed Rubber Mouse','Ipsa nihil distinctio.\nEst et rerum officiis accusamus officia.',32.22,'Toys','https://source.unsplash.com/300x300/?shoe',9,61),(26,'Intelligent Soft Cheese','Reprehenderit doloremque optio.\nUt eius iste vel et qui fugiat pariatur.',46.75,'Industrial','https://source.unsplash.com/300x300/?shoe',1,11),(27,'Licensed Wooden Mouse','Ut ratione voluptatem vero in eveniet quos.\nMagnam enim eum consequatur facere deleniti illum aut laboriosam.',54.22,'Clothing','https://source.unsplash.com/300x300/?shoe',5,76),(28,'Refined Frozen Chips','Voluptatem non architecto.\nConsectetur magni iste minima molestiae quia.',162.78,'Grocery','https://source.unsplash.com/300x300/?shoe',3,49),(29,'Gorgeous Steel Fish','Nisi aut accusantium explicabo culpa esse saepe.\nQuisquam quis ab facere doloribus sit.',155.72,'Sports','https://source.unsplash.com/300x300/?shoe',8,3),(30,'Fantastic Cotton Ball','Dolorem provident voluptas nemo.\nEaque et sed et quo beatae ut.',165.83,'Tools','https://source.unsplash.com/300x300/?shoe',1,124),(31,'Unbranded Frozen Tuna','Voluptate amet tempora tempore sit veritatis facere sit.\nHarum nemo molestias quas nesciunt sit quos voluptas enim nulla.',54.97,'Books','https://source.unsplash.com/300x300/?shoe',7,171),(32,'Awesome Plastic Chicken','Dolor aut qui quam omnis libero quia.\nRerum corporis expedita quia excepturi quis deleniti incidunt dolorem.',190.69,'Kids','https://source.unsplash.com/300x300/?shoe',7,81),(33,'Practical Steel Hat','Vel placeat temporibus aut dolorum necessitatibus repellat ut.\nAut non iusto numquam unde quo.',118.17,'Sports','https://source.unsplash.com/300x300/?shoe',2,36),(34,'Intelligent Wooden Keyboard','Totam quis in recusandae odit et aspernatur.\nQuis nostrum quod rerum et provident ut voluptatem.',83.53,'Beauty','https://source.unsplash.com/300x300/?shoe',4,83),(35,'Small Plastic Ball','At minus distinctio architecto excepturi sit ab non deleniti dolor.\nEt eius a necessitatibus id.',135.18,'Toys','https://source.unsplash.com/300x300/?shoe',8,80),(36,'Rustic Granite Soap','Esse cupiditate est qui error quia aliquam velit.\nDucimus beatae autem eos accusantium numquam tenetur.',56.90,'Automotive','https://source.unsplash.com/300x300/?shoe',10,48),(37,'Handmade Concrete Hat','Assumenda nulla laborum et nisi expedita.\nMagnam vel perferendis expedita maiores iste.',50.33,'Health','https://source.unsplash.com/300x300/?shoe',9,120),(38,'Unbranded Wooden Pizza','Excepturi animi quis doloremque ut ut quaerat dolores quia et.\nQuisquam ipsam soluta quisquam quo amet at sint delectus dolorem.',193.11,'Games','https://source.unsplash.com/300x300/?shoe',8,112),(39,'Intelligent Cotton Tuna','Vel explicabo soluta doloremque culpa.\nDolore labore aperiam autem facere.',33.93,'Tools','https://source.unsplash.com/300x300/?shoe',3,44),(40,'Awesome Soft Ball','Et odio id ut itaque aut ab hic rem consequatur.\nSunt quaerat perferendis dolorem commodi suscipit velit est minus.',31.98,'Baby','https://source.unsplash.com/300x300/?shoe',3,85),(41,'Rustic Granite Mouse','Molestiae perspiciatis deserunt sapiente sequi qui consequatur accusamus.\nEum quod modi.',99.85,'Health','https://source.unsplash.com/300x300/?shoe',8,106),(42,'Intelligent Concrete Bacon','Nostrum ad et culpa.\nExcepturi corrupti est delectus officia repellendus est.',68.04,'Jewelery','https://source.unsplash.com/300x300/?shoe',5,12),(43,'Unbranded Cotton Pizza','Consequatur tenetur quis molestias blanditiis laudantium velit.\nCumque et et.',74.58,'Books','https://source.unsplash.com/300x300/?shoe',5,135),(44,'Practical Metal Gloves','Rerum labore ut et corrupti ipsa.\nNeque consectetur minima nulla qui iure eum a velit laboriosam.',138.68,'Beauty','https://source.unsplash.com/300x300/?shoe',1,198),(45,'Ergonomic Plastic Pants','Nam aut explicabo cupiditate et autem et in.\nOmnis exercitationem est quae quibusdam laudantium.',150.20,'Music','https://source.unsplash.com/300x300/?shoe',1,97),(46,'Refined Fresh Table','Quisquam laboriosam beatae distinctio error.\nEnim voluptas accusamus neque dolor qui recusandae debitis rerum enim.',67.25,'Books','https://source.unsplash.com/300x300/?shoe',6,181),(47,'Unbranded Rubber Tuna','Consectetur ad quidem consequatur corporis.\nEius corporis magni qui autem amet voluptas.',51.57,'Grocery','https://source.unsplash.com/300x300/?shoe',5,143),(48,'Intelligent Cotton Table','Aut provident laborum distinctio quod itaque harum alias est.\nInventore repudiandae temporibus totam quis aliquam laudantium accusantium.',22.18,'Beauty','https://source.unsplash.com/300x300/?shoe',7,69),(49,'Handcrafted Wooden Hat','Amet sequi voluptates id sequi et.\nNihil numquam maxime voluptatem voluptatem error officia qui corporis.',188.98,'Outdoors','https://source.unsplash.com/300x300/?shoe',5,104),(50,'Gorgeous Steel Bike','Est nihil beatae tempore doloribus.\nQuam aut quia enim facere.',36.70,'Home','https://source.unsplash.com/300x300/?shoe',8,96);
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
  `FirstName` longtext,
  `LastName` longtext,
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
INSERT INTO `Users` VALUES (1,'user0','Dejuan','Gottlieb','user','David.Walter@yahoo.com','968 Isobel Causeway, Kozeychester, Tanzania','1-788-419-9977'),(2,'user1','Kamron','Treutel','user','Brandyn_Kuvalis@gmail.com','4066 Doyle Burg, Consueloside, Cocos (Keeling) Islands','455-366-7612 x0687'),(3,'user2','Alf','Paucek','user','Lauren.Gottlieb@yahoo.com','7153 Madison Streets, Abemouth, Colombia','294.555.9401'),(4,'user3','Jedidiah','Ratke','user','Janis24@yahoo.com','4889 Cassin Plains, Aureliochester, Macao','(261) 775-0099'),(5,'user4','Antwon','Hegmann','user','Kennedy_Miller@yahoo.com','4049 Myrtie Valleys, New Marcellashire, Switzerland','628.262.7461 x6741'),(6,'user5','Napoleon','Barton','user','Demario.Cormier8@gmail.com','7854 Dale Parkway, Port Araceli, Trinidad and Tobago','1-838-242-9452 x75224'),(7,'user6','Mariana','Renner','user','Jazmyn5@gmail.com','27665 Williamson Unions, Lake Javonteberg, Montenegro','808-595-9450 x318'),(8,'user7','Hugh','Thiel','user','Hilario_Marks53@hotmail.com','50004 Dietrich Spring, Satterfieldfurt, Portugal','991.211.1488 x68404'),(9,'user8','Name','O\'Keefe','user','Hyman90@gmail.com','0064 Willms Inlet, West Jimmyfort, Belize','668.613.1759 x66527'),(10,'user9','Verna','Pouros','user','Jessica.Jerde87@yahoo.com','170 Otis Expressway, Lacychester, Kyrgyz Republic','(362) 948-6906');
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
  `ShopLogoUrl` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendors`
--

LOCK TABLES `Vendors` WRITE;
/*!40000 ALTER TABLE `Vendors` DISABLE KEYS */;
INSERT INTO `Vendors` VALUES (1,'vendor0','vendor','Billie_Howe@hotmail.com','308 Ashtyn Avenue, Mosefurt, Micronesia','246.552.3572','Dooley - Donnelly','https://placeimg.com/128/128/arch'),(2,'vendor1','vendor','Rodrigo.Hirthe@yahoo.com','781 Kohler Valleys, Olenborough, Ghana','1-437-504-2910 x39519','Collins - Thompson','https://placeimg.com/128/128/arch'),(3,'vendor2','vendor','Thad.Kub99@yahoo.com','4661 Ludwig Route, West Marques, Peru','709-723-6243','Hyatt, Cassin and Lindgren','https://placeimg.com/128/128/arch'),(4,'vendor3','vendor','Sylvia34@yahoo.com','45425 Rutherford Meadows, South Dorianstad, Bosnia and Herzegovina','1-427-524-0008 x9821','Baumbach - Hackett','https://placeimg.com/128/128/arch'),(5,'vendor4','vendor','Tressie57@gmail.com','911 Crist Circles, Samanthachester, Northern Mariana Islands','1-632-321-5765 x7200','Witting, Vandervort and Kerluke','https://placeimg.com/128/128/arch'),(6,'vendor5','vendor','Nedra.Mraz17@hotmail.com','91015 Berneice Tunnel, Port Nick, Czech Republic','(255) 582-1909 x81551','Bahringer, Nikolaus and Schroeder','https://placeimg.com/128/128/arch'),(7,'vendor6','vendor','Ewald_Bartoletti26@hotmail.com','0572 Purdy Pike, East Charitybury, Bermuda','832.307.6495','Swift - Rosenbaum','https://placeimg.com/128/128/arch'),(8,'vendor7','vendor','Brendan_Trantow86@yahoo.com','834 Dickinson Lights, South Van, Seychelles','1-659-658-6080','Towne - Schmitt','https://placeimg.com/128/128/arch'),(9,'vendor8','vendor','Ottis_Miller15@gmail.com','0837 Kassulke Harbors, West Allie, Angola','443.877.5273 x7805','Purdy - Ratke','https://placeimg.com/128/128/arch'),(10,'vendor9','vendor','Jerrold64@yahoo.com','97596 Mueller Locks, South Taya, Anguilla','1-820-394-6493 x296','Hoppe Inc','https://placeimg.com/128/128/arch');
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
INSERT INTO `__MigrationHistory` VALUES ('201812020301331_InitialCreate','Shopp.ShoppDbContext',_binary '‹\0\0\0\0\0\0\í\\\Ín\Ü6¾\è;:®\å$—\Ô\ØM\à®\ã\ÂhüÓ¬ô\Ð½\"‰ªD¹^}²úH}…’ú¡HŠ”(\íJ^‹\\\ÖüùfH~©™ü÷Ï¿³÷a`=À$õQ4·_\ÙŒ\\\äù\Ñjngø\îÇ·öûw\ß7û\à…Ö—ª\ÝÚŽôŒÒ¹}q|\ì8©{C†¾› \Ý\áC…ðóú\è\è\'\ç\Õ+›`Y\Ö\ìSa?„ù\ä\ÏŠ\\\ãÈƒAZ–“šeŽj]‚¦1p\á\Ü^Þ£8¶­“ÀDøw¶¢a€‰jÇŸS¸\Ä	ŠVË˜€\àfC\Ò\î),U>®››jôšj\ï\Ô+(7K1\n{¾zSN‡#w4©6›.2a\È\Ä\â5u>isû\Ä}‚+K:^	mUN\èa\Þ\ìÀ\Êÿ8`Mø@ÿX‹,ÀY\ç\Ìp‚\ë:»\r|÷W¸¾A\ß`4² \àõ š:¡€]\'(†	^‚w¥v\çžm9b?G\îÈºq}\n\Õ\Ï#ü\æµm]\á\à6€l™¹a.1J\à/0‚	ÀÐ»\Ã$¢0Ÿ¨†tI¡SBU	·\ÈÎ°­ðøF+|?·\ÉO\Û:ó¡W•”Z|Ž|²‘H\'œd°K\Ð5H\Ó?Q\â.\èCü`t)\'ž—À4]±¸x\ËrfN½Z7\×U\âÁ\ä\â|J»¶\×x¿\Ñ\ZüO—¹¸[d;\Ìo(\Åm‚rø.¼†	¡£\Ö)týe¾NÈ¯ò¸|k[KP\ÜþB–\Ù-&“Œ& \ç[\ï	½þ*_Rœm}‚A^›\Þûqqþ\Äþ\ÊÑ›\ìû³…ŸPPõj¿Þ€d\é\Ì\"m“%\Ê·‡v%ôúÀ_Y;IA±š‰4”\ÚT£n9m\Æ\ÞZÈ²nF\Ý8ô\Ð\ß\Ô]ƒuHÆ²$\ã\Í\Æ?Ki‹{2\Åp„Ó½\Ý(°M¿\rÛ \Üyjóaª$]\Ï\åŠjY)ZªQ&¯\Úh÷\"»6?mµ\ßûOæ’ŸùIŠ\'‘ôL$h\ËxŽ·\æ³tŒ²\á\ÞfÈ²&\Ù\\§0u?.\Þq\Æ\Þ\Èô†2š´ “¼B\Ézôaœ‡`?\'\ã[Š/0ò\Ð\ÆNa¡û\íä˜6\Úi[«B7¥ƒR]5ª&µ“\"\Ö4©z#g¥\Þe}Šv{\ã³CÜŸ\îJ\ëAö\Å$< ‚>¢Ú¾a\ÕÙŒ“4E®Ÿ\ïþb(\ÞûD?Dž\Õ}	,”gw52\0bDü˜˜\r¢9\ål\Ù<\\E§0€Z\'nñ=fRx\Í9##ñzhÄž¬$ª\Ç_Q¯\Zâˆ¹‚	µ  |K‰ô#Ü´m~\äú1:gF\êihé°™¹\æ\ÆÄ€;\'ÁD8{|ljÀI\Ò5E3‡£™	ûò[vû\Z‹·ü¶5WU	§ Jq\ß‘»Ð‹\×y2Zñón\"´z’{6I^˜Ž:—¬¦»È™óJ\ã\Èq •{¶k\ìRk>\Ã\Ô\ë`\"¸¾%<Õ’¾S´\Ú\ÝG‹gT;º‚z\Z>?=÷ZôŸ\ÊÄ©\×\ÆD:÷)t\Z]\îû\ä†Ã¹ñ\é--†ª—\'b\Ë\ë_Z:Š2—(\ìb>…øòµÿXr¨ŒOiPQ\ì.~@h€47Ò‚tv§\'‘ªwq\Äwt.—VÕŸ\í¥ˆ\ÂF©ªƒ@\à\Ö]š\é³\×PÿñF&¤‘\Ï\ÆP\Ï~ƒ\ÙFÞ·\Ät—Íˆ8h\ã	)Q7M²Ë£2pÁ‡\ä\0J\âm<RùM©9\Ú6\Ç\Ä\ãá”®	\ß2n\ÃÁ0\Òog\åX\0Í‚·\ÅÆ‡±!e_ƒ\Ém™–\ê\Ï\ì=«›9E¬eY0s4A™³\Ç~´\â‚4\ËkYDh.~\\öc\ÇM\áŒL[&	£¬ TKŸr<˜¶;\Üúš±ð\ÂF3\ét\Ó\ÜJ˜p€5­²\ÂUsú›;D\Ë®yð—\í\Ï\È@\è·û|L[]M?‹Å‚\0$Š\Í\n²0\Òû0ú\Þõ%Q—š#Õ<R]jŽT¾2ò0e‘9{C\äQX¡9{#\äqXag\æH\Ë\Ûp\ä\Z\Äi8\Â\"\rH\ÚqTwQ•w£ú¶µ÷8´\å\\emzZU‡òPui­øðAQ1¾\Æ±Ž\ä\Ñ\êRs$ö.\Çiëž–Èƒ)<”¼S\Ñö¦¹–7}²z“\íu\Ï\r$†©‰&[¨\êÉ‚\Ñ ¬ngWx\×ýù¦º\ÐM\Ým\×\Ïv.\"Š‡\âŠÍ±\ê˜\'ª.\Ý{\Ï\Â\ã`wþ[Gs¯2\Ø=Úž\ãl &MûRT\râ„Šž†Âµ\èE0\ä#0Œ•š#\ÕQ<\Â³Rs¤úžG\Ò?\Ë\ë‘\äPÁo’\êvf3U\Ïý÷’ú©\Æ`+\é:\îúQ´7úm8u¨‰À{V\Ú‰Å’\È`¬b\â\ÔxÅ’›0\é\ì5Kzµš•/H\ÝùÆ\'¥¢	\r¶D¾GŸ“.\Ö\Ë?‚CZ˜ÿ\\>p\Ý\âDþLq\æf¿¥\É\ÓBþò\î\ä;i\êŠ¸FB±¸X\Ä\éùtF;#ñdú;¢ hU|ðª†D\Þ\r\Åë†‚HqsCa¤°83˜A™³/ƒKÜ£\'¥ñ\áô<ò\à\ã\Üþ+\ïulÿþ•u<°òY9¶Ž¬¿7\Î|Í¥o!\ï\Õ;\ïu\ë¤¼W\Óe(»õX„žÉž/ƒ\æ7£®˜ziºtE¯¶2_søq J\ÇÜ²UD7>WNm\ënd\ì\r’òö~ÁT~:\î\í¹{R¤•\r¦#Ÿ5¶u\Û-g\r\ÕRN\nŠ#\ç|™ž&U¿\ÎuªX·S\Ö7+\ëe\ì“ý=¬e[\r±·\nBJ\ÙG›\àH\ÉE››\ç=mžPv:}f\ÐÄ±\Ì/#\ï§ñœ27§7[·\ÄÍ§\éq(òb²xª°\Øi3l\ZÁ°\Ãò†ñDû\íh\ëL\ÑñmŠzF¹8=–\ì\ÅD}–t\â£hòhš\Éò*\ÒdôY2Å·\'rw»EdO«Ê¬1Ï \éJ QIiM·P\Ê\Òg\Øhñ»‘‹\ÃZ“|£\ÂUgMhòr\Ú\ÒrT\à\Ú\0|u\ÒNKÎŽ\n]—ô0iBO3Á4sA—ú°\É:<‘êˆ¼Î¡uO\Ç\Óf\äˆD\ã#<pT\É%»šr\ÓC\å	\Ú#¦p@\î¿A\'\Ç]\ê¯júŸ¢G\ÐŽ\Ö\æ<ºCÕ\'iT5‘®\ídh9ƒN\ì\ß“j¦iþŸ‚|A–?z\ÜB\ï<º\Êpœa2d\ÞB=5\Û\ä\ç9C¢Î³«ü\á2\Ý\Æˆš>¼Š~\ÎüÀczŸ)^\Ñ4ô8.Ÿ­\èZbú|µZ3¤K•\ÓÇ¼ˆ\ÆK¯¢%x€Ct#\è#\\w]…\èAºBœöÙ©V	\Ó£\îOþ$ö\Â\ÇwÿP´÷\n\r`\0\0','6.2.0-61023');
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

-- Dump completed on 2018-12-02 11:03:10
