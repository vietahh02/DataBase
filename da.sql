-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopcart
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Role` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'a','1',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `idBanner` int NOT NULL AUTO_INCREMENT,
  `Image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`idBanner`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'../static/img/banner-new.png'),(2,'../static/img/banner-thoi-trang-2.jpg'),(3,'../static/img/543040233.jpg'),(5,'../static/img/1314533660.jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts_product`
--

DROP TABLE IF EXISTS `carts_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CartID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `ColorID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CartID` (`CartID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `carts_product_ibfk_1` FOREIGN KEY (`CartID`) REFERENCES `carts` (`id`),
  CONSTRAINT `carts_product_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts_product`
--

LOCK TABLES `carts_product` WRITE;
/*!40000 ALTER TABLE `carts_product` DISABLE KEYS */;
INSERT INTO `carts_product` VALUES (22,1,2,0,4),(25,1,1,2,4);
/*!40000 ALTER TABLE `carts_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `idCate` int NOT NULL AUTO_INCREMENT,
  `NameCate` varchar(30) NOT NULL,
  PRIMARY KEY (`idCate`),
  UNIQUE KEY `Name_UNIQUE` (`NameCate`),
  UNIQUE KEY `id_UNIQUE` (`idCate`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Clothing'),(2,'Electroctronics'),(6,'Health and Beauty'),(9,'Home and Garden'),(5,'Jewellery'),(7,'Kids and Babies'),(3,'Shoes'),(8,'Sports'),(4,'Watches'),(10,'Znew');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NameColor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'red'),(2,'green'),(3,'blue'),(4,'pink'),(5,'black'),(6,'orange'),(7,'yellow'),(8,'gray'),(9,'neon'),(10,'brown'),(11,'purple');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `ColorID` int DEFAULT NULL,
  `Comment` varchar(300) DEFAULT NULL,
  `Star` float DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,1,'Good goood',4.3,'2009-03-03');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `User` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'b','1'),(2,'b1','1'),(3,'b2','1');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'Express'),(2,'Fast'),(3,'Slow');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_banner`
--

DROP TABLE IF EXISTS `footer_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_banner` (
  `idFB` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Content` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`idFB`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_banner`
--

LOCK TABLES `footer_banner` WRITE;
/*!40000 ALTER TABLE `footer_banner` DISABLE KEYS */;
INSERT INTO `footer_banner` VALUES (1,'MONEY BACK','30 Days Money Back Guarantee'),(2,'FREE SHIPPING','Shippong on orders over $99'),(3,'SPECIAL SALE','Extra $5 off on all items'),(4,'MONEY BACK','30 Days Money Back Guarantee');
/*!40000 ALTER TABLE `footer_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'32'),(7,'2'),(8,'3'),(9,'4'),(10,'5');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_product`
--

DROP TABLE IF EXISTS `guest_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CartID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `ColorID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_product`
--

LOCK TABLES `guest_product` WRITE;
/*!40000 ALTER TABLE `guest_product` DISABLE KEYS */;
INSERT INTO `guest_product` VALUES (1,1,1,3,1),(9,2,2,0,1),(10,3,1,3,13),(11,3,1,2,8),(12,4,2,0,1),(13,4,1,2,10),(14,5,1,2,4),(15,5,1,3,4);
/*!40000 ALTER TABLE `guest_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_store`
--

DROP TABLE IF EXISTS `info_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StoreID` int DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Money` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_store`
--

LOCK TABLES `info_store` WRITE;
/*!40000 ALTER TABLE `info_store` DISABLE KEYS */;
INSERT INTO `info_store` VALUES (1,1,'da','../static/img-test/alex-suprun-ZHvM3XIOHoE-unsplash.jpg',987654321,'some','abc1@gmail.com',1),(2,2,'man','../static/img-test/alex-suprun-ZHvM3XIOHoE-unsplash.jpg',912345678,'some','abc2@gmial.com',2);
/*!40000 ALTER TABLE `info_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `BirthDay` date DEFAULT NULL,
  `Gender` int DEFAULT NULL,
  `Verify` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,1,'Va','Vanh','../static/img-test/alex-suprun-ZHvM3XIOHoE-unsplash.jpg','0987654321','a@gmail.com','2002-10-13',2,NULL);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(45) DEFAULT NULL,
  `NameCustomer` varchar(100) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Saddress` varchar(100) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `DeliveryID` varchar(45) DEFAULT NULL,
  `PaymentID` varchar(45) DEFAULT NULL,
  `ReceiveDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'1','wafw','214214','Hà Giang','wq','2023-10-06 00:00:00','1','1',NULL),(2,'1','qwd','334134','Phú Thọ, Phú Thọ, Âu Cơ','rwr','2023-10-10 00:00:00','1','1',NULL),(3,'1','wq','214','Bắc Ninh, Yên Phong, Trung Nghĩa','124','2023-10-10 00:00:00','1','1',NULL),(4,'2','ws','3535','Quảng Ninh, Cẩm Phả, Cẩm Trung','efae','2023-10-12 00:00:00','2','2',NULL),(5,'1','e22','123213','Bắc Ninh, Yên Phong','21312','2023-10-13 00:00:00','1','3',NULL),(6,'1','312321','21312','Bắc Ninh, Yên Phong, Đông Phong','2131','2023-10-13 00:00:00','1','3',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OrderSID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `ColorID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES (1,1,1,3,1,12),(2,1,1,6,2,34),(3,1,2,0,1,15),(4,2,1,1,1,160),(5,2,3,0,1,31),(6,3,3,0,1,11),(7,3,2,0,1,160),(8,4,1,0,1,54),(9,5,10,0,1,16),(10,6,1,2,1,17.64),(11,7,1,2,1,17.64),(12,8,10,0,1,17.64);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_store`
--

DROP TABLE IF EXISTS `orders_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `StoreID` int DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `DateOrder` datetime DEFAULT NULL,
  `DateReceive` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_store`
--

LOCK TABLES `orders_store` WRITE;
/*!40000 ALTER TABLE `orders_store` DISABLE KEYS */;
INSERT INTO `orders_store` VALUES (1,1,1,4,'2023-10-06 00:00:10','2023-10-10 00:00:00'),(2,2,1,5,'2023-10-10 00:00:05','2023-10-12 00:00:00'),(3,3,1,5,'2023-10-10 00:00:20','2023-10-12 00:00:00'),(4,4,1,1,'2023-10-12 00:00:01','2023-10-14 00:00:00'),(5,4,2,1,'2023-10-12 00:00:01','2023-10-15 00:00:00'),(6,5,1,1,'2023-10-13 00:00:50','2023-10-16 00:00:00'),(7,6,1,1,'2023-10-13 00:00:00','2023-10-17 00:00:00'),(8,6,2,1,'2023-10-13 00:00:00','2023-10-15 00:00:00');
/*!40000 ALTER TABLE `orders_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Payment in cash'),(2,'Pay by credit card'),(3,'Payment by bank');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ProductID` int DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Discount_color` varchar(10) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `product_color_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_color`
--

LOCK TABLES `product_color` WRITE;
/*!40000 ALTER TABLE `product_color` DISABLE KEYS */;
INSERT INTO `product_color` VALUES (1,1,'2','0.3',NULL),(2,1,'3','0.05',NULL),(3,1,'1','0.04',NULL),(4,1,'3','0.1',NULL),(5,1,'6','0.2',NULL);
/*!40000 ALTER TABLE `product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_slider`
--

DROP TABLE IF EXISTS `product_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ProductID` int DEFAULT NULL,
  `Image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `product_slider_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_slider`
--

LOCK TABLES `product_slider` WRITE;
/*!40000 ALTER TABLE `product_slider` DISABLE KEYS */;
INSERT INTO `product_slider` VALUES (1,1,'../static/image/3801477338.jpg'),(2,1,'../static/image/3020040614.jpg'),(4,1,'../static/image/1802012605.jpg');
/*!40000 ALTER TABLE `product_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idPro` int NOT NULL AUTO_INCREMENT,
  `NamePro` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Star` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  `Image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Sold` int DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `InStock` int DEFAULT NULL,
  `idCate` int DEFAULT NULL,
  `StoreID` int DEFAULT NULL,
  PRIMARY KEY (`idPro`),
  KEY `idCate` (`idCate`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCate`) REFERENCES `categories` (`idCate`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'T-Shirt',21,'1',0.11,'../static/image/3773039280.jpg','2023-08-24 00:00:00',14,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',4,1,1),(2,'Laptop',200,'5',0.2,'../static/image/265033632.jpg','2023-08-25 00:00:00',516,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',234,2,1),(3,'camera',48,'4.3',0.06,'../static/image/3985332293.jpg','2023-09-04 00:00:00',4,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',51,2,1),(4,'nike',500,'1.2',0,'../static/image/73184735.jpg','2023-09-05 00:00:00',5,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',13,3,1),(5,'shoes diff',4000,'0',0.01,'../static/image/1810563436.jpg','2023-09-05 00:00:00',6,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',44,3,1),(6,'MATTE LIPSTICK',7,'0',0.02,'../static/image/694564256.jpg','2023-09-05 00:00:00',7,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',13,6,1),(7,'sunflower',30,'0',0.01,'../static/image/1152360045.jpg','2023-09-05 00:00:00',8,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',23,9,1),(8,'fridge Smeg',2000,'0',0.05,'../static/image/4247154631.jpg','2023-09-05 00:00:00',9,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',612,9,1),(9,'soccer ball',10,'0',0,'../static/image/3144162097.jpg','2023-09-05 00:00:00',11,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',1124,8,1),(10,'tennis ball',20,'0',0.01,'../static/image/2875912765.jpg','2023-09-05 00:00:00',12,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',142,8,2),(11,'teddy',20,'0',0.01,'../static/image/2924116795.jpg','2023-09-05 00:00:00',13,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',115,7,2),(13,'rolex',400,'0',0.01,'../static/image/615790638.jpg','2023-09-05 00:00:00',15,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quidem alias consequuntur deserunt qui, illo vero ullam corporis repudiandae fugit id dolorum vitae quis laborum dignissimos laboriosam placeat libero beatae ducimus perspiciatis numquam nobis. Quibusdam earum nulla animi commodi dolorum.',12,1,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Processing'),(2,'Preparing goods'),(3,'Shipping'),(4,'Sucessfully'),(5,'Canceled');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `User` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'c','1','Free'),(2,'c1','1','ghe'),(3,'c2','1','gg');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifynew`
--

DROP TABLE IF EXISTS `verifynew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verifynew` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `KeyN` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifynew`
--

LOCK TABLES `verifynew` WRITE;
/*!40000 ALTER TABLE `verifynew` DISABLE KEYS */;
INSERT INTO `verifynew` VALUES (1,'3',4);
/*!40000 ALTER TABLE `verifynew` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 20:31:03
