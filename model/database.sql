-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ticket_booking
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `UserID` varchar(100) DEFAULT NULL,
  `Screen_No` int DEFAULT NULL,
  `SeatNo` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('bijusrt',1,'{\"1\": 1, \"2\": 2, \"3\": 36}');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_no_1`
--

DROP TABLE IF EXISTS `screen_no_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_no_1` (
  `SeatNo` int DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_no_1`
--

LOCK TABLES `screen_no_1` WRITE;
/*!40000 ALTER TABLE `screen_no_1` DISABLE KEYS */;
INSERT INTO `screen_no_1` VALUES (1,'open'),(2,'open'),(3,'open'),(4,'open'),(5,'open'),(6,'open'),(7,'open'),(8,'open'),(9,'open'),(10,'open'),(11,'open'),(12,'open'),(13,'open'),(14,'open'),(15,'open'),(16,'open'),(17,'open'),(18,'open'),(19,'open'),(20,'open'),(21,'open'),(22,'open'),(23,'open'),(24,'open'),(25,'open'),(26,'open'),(27,'open'),(28,'open'),(29,'open'),(30,'open'),(31,'open'),(32,'open'),(33,'open'),(34,'open'),(35,'open'),(36,'open'),(37,'open'),(38,'open'),(39,'open'),(40,'open'),(41,'open'),(42,'open'),(43,'open'),(44,'open'),(45,'open');
/*!40000 ALTER TABLE `screen_no_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_no_2`
--

DROP TABLE IF EXISTS `screen_no_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_no_2` (
  `SeatNo` int DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_no_2`
--

LOCK TABLES `screen_no_2` WRITE;
/*!40000 ALTER TABLE `screen_no_2` DISABLE KEYS */;
INSERT INTO `screen_no_2` VALUES (1,'open'),(2,'open'),(3,'open'),(4,'open'),(5,'open'),(6,'open'),(7,'open'),(8,'open'),(9,'open'),(10,'open'),(11,'open'),(12,'open'),(13,'open'),(14,'open'),(15,'open'),(16,'open'),(17,'open'),(18,'open'),(19,'open'),(20,'open'),(21,'open'),(22,'open'),(23,'open'),(24,'open'),(25,'open'),(26,'open'),(27,'open'),(28,'open'),(29,'open'),(30,'open'),(31,'open'),(32,'open'),(33,'open'),(34,'open'),(35,'open'),(36,'open'),(37,'open'),(38,'open'),(39,'open'),(40,'open'),(41,'open'),(42,'open'),(43,'open'),(44,'open'),(45,'open'),(46,'open'),(47,'open'),(48,'open'),(49,'open'),(50,'open'),(51,'open'),(52,'open'),(53,'open'),(54,'open'),(55,'open'),(56,'open'),(57,'open'),(58,'open'),(59,'open'),(60,'open');
/*!40000 ALTER TABLE `screen_no_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_no_3`
--

DROP TABLE IF EXISTS `screen_no_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_no_3` (
  `SeatNo` int DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_no_3`
--

LOCK TABLES `screen_no_3` WRITE;
/*!40000 ALTER TABLE `screen_no_3` DISABLE KEYS */;
INSERT INTO `screen_no_3` VALUES (1,'open'),(2,'open'),(3,'open'),(4,'open'),(5,'open'),(6,'open'),(7,'open'),(8,'open'),(9,'open'),(10,'open'),(11,'open'),(12,'open'),(13,'open'),(14,'open'),(15,'open'),(16,'open'),(17,'open'),(18,'open'),(19,'open'),(20,'open'),(21,'open'),(22,'open'),(23,'open'),(24,'open'),(25,'open'),(26,'open'),(27,'open'),(28,'open'),(29,'open'),(30,'open'),(31,'open'),(32,'open'),(33,'open'),(34,'open'),(35,'open'),(36,'open'),(37,'open'),(38,'open'),(39,'open'),(40,'open'),(41,'open'),(42,'open'),(43,'open'),(44,'open'),(45,'open'),(46,'open'),(47,'open'),(48,'open'),(49,'open'),(50,'open'),(51,'open'),(52,'open'),(53,'open'),(54,'open'),(55,'open'),(56,'open'),(57,'open'),(58,'open'),(59,'open'),(60,'open'),(61,'open'),(62,'open'),(63,'open'),(64,'open'),(65,'open'),(66,'open'),(67,'open'),(68,'open'),(69,'open'),(70,'open'),(71,'open'),(72,'open'),(73,'open'),(74,'open'),(75,'open');
/*!40000 ALTER TABLE `screen_no_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `ScreenNo` int DEFAULT NULL,
  `Time` varchar(6) DEFAULT NULL,
  `MovieName` varchar(100) DEFAULT NULL,
  `Availability` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,'11:00','Love Today','available'),(1,'2:30','Love Today','full'),(1,'6:00','Love Today','full'),(2,'11:00','Sardar','available'),(2,'2:30','Sardar','available'),(2,'6:00','Sardar','available'),(3,'11:00','PS-I','available'),(3,'2:30','PS-I','full'),(3,'6:00','PS-I','available');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserId` varchar(100) DEFAULT NULL,
  `PassWord` varchar(100) DEFAULT NULL,
  `MobileNo` bigint DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bijusrt','sample',9566669186,'biju19@navgurukul.org');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-14 16:12:31
