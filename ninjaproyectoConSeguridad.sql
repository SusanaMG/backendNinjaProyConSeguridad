-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ninjaproyecto
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Madrid','Robert','López','68989'),(2,'London','Jon','Williams','65689988'),(4,'Berlin','Ana','Sanz','68989');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (62);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (8,'2019-01-08 09:14:21','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/login','anonymousUser'),(9,'2019-01-08 09:14:21','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/css/login.css','anonymousUser'),(10,'2019-01-08 09:14:21','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/css/style.css','anonymousUser'),(11,'2019-01-08 09:14:25','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/','user'),(12,'2019-01-08 09:14:25','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/contacts/showcontacts','user'),(13,'2019-01-08 09:14:25','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/css/style.css','user'),(14,'2019-01-08 09:14:25','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/css/contacts.css','user'),(15,'2019-01-08 09:14:26','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0C75EBF5884D9043E918786A55972A0A','http://localhost:8080/error','user'),(16,'2019-01-08 09:34:20','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/login','anonymousUser'),(17,'2019-01-08 09:34:20','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/login','anonymousUser'),(18,'2019-01-08 09:34:21','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/css/style.css','anonymousUser'),(19,'2019-01-08 09:34:21','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/css/login.css','anonymousUser'),(20,'2019-01-08 09:34:21','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/css/login.css','anonymousUser'),(21,'2019-01-08 09:34:26','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/','user'),(22,'2019-01-08 09:34:26','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/contacts/showcontacts','user'),(23,'2019-01-08 09:34:26','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/css/style.css','user'),(24,'2019-01-08 09:34:26','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/css/contacts.css','user'),(25,'2019-01-08 09:34:27','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/error','user'),(26,'2019-01-08 09:34:29','org.springframework.security.web.authentication.WebAuthenticationDetails@fffc7f0c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 5D6EABE395C601F92A8C503D3C8AD768','http://localhost:8080/rest/checkrest','user'),(27,'2019-01-08 09:42:27','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/css/style.css','anonymousUser'),(28,'2019-01-08 09:42:27','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/login','anonymousUser'),(29,'2019-01-08 09:42:27','org.springframework.security.web.authentication.WebAuthenticationDetails@2cd90: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 84E9C36B0AF61CA4658587B35BC4C6E9','http://localhost:8080/login','anonymousUser'),(30,'2019-01-08 09:42:27','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/css/login.css','anonymousUser'),(31,'2019-01-08 09:42:38','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/','user'),(32,'2019-01-08 09:42:38','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/contacts/showcontacts','user'),(33,'2019-01-08 09:42:38','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/css/style.css','user'),(34,'2019-01-08 09:42:38','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/css/contacts.css','user'),(35,'2019-01-08 09:42:39','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/error','user'),(36,'2019-01-08 09:42:41','org.springframework.security.web.authentication.WebAuthenticationDetails@ffff4c9c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 08A6FFA91A544B3A2112CE9A4729D4ED','http://localhost:8080/rest/checkrest','user'),(37,'2019-01-08 13:05:26','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/login','anonymousUser'),(38,'2019-01-08 13:05:27','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/css/style.css','anonymousUser'),(39,'2019-01-08 13:05:27','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/css/login.css','anonymousUser'),(40,'2019-01-08 13:05:51','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/login','anonymousUser'),(41,'2019-01-08 13:05:51','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/css/login.css','anonymousUser'),(42,'2019-01-08 13:05:51','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/css/style.css','anonymousUser'),(43,'2019-01-08 13:05:51','org.springframework.security.web.authentication.WebAuthenticationDetails@21a2c: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 4150D391372D0301D74D284E442D3FB9','http://localhost:8080/login','anonymousUser'),(44,'2019-01-08 13:16:24','org.springframework.security.web.authentication.WebAuthenticationDetails@fffed504: RemoteIpAddress: 127.0.0.1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/login.css','anonymousUser'),(45,'2019-01-08 13:16:24','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/login','anonymousUser'),(46,'2019-01-08 13:16:24','org.springframework.security.web.authentication.WebAuthenticationDetails@fffed504: RemoteIpAddress: 127.0.0.1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/style.css','anonymousUser'),(47,'2019-01-08 13:16:25','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/login','anonymousUser'),(48,'2019-01-08 13:16:35','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/','user'),(49,'2019-01-08 13:16:35','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/contacts/showcontacts','user'),(50,'2019-01-08 13:16:35','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/style.css','user'),(51,'2019-01-08 13:16:35','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/contacts.css','user'),(52,'2019-01-08 13:16:35','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/error','user'),(53,'2019-01-08 13:16:39','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/contacts/contactform','user'),(54,'2019-01-08 13:16:39','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/style.css','user'),(55,'2019-01-08 13:16:41','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/contacts/showcontacts','user'),(56,'2019-01-08 13:16:41','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/style.css','user'),(57,'2019-01-08 13:16:41','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/css/contacts.css','user'),(58,'2019-01-08 13:16:41','org.springframework.security.web.authentication.WebAuthenticationDetails@fffe9938: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 0158E7485280E01D911FCA8165E1AA3D','http://localhost:8080/error','user'),(59,'2019-01-08 13:16:42','org.springframework.security.web.authentication.WebAuthenticationDetails@957e: RemoteIpAddress: 127.0.0.1; SessionId: null','http://localhost:8080/login','anonymousUser'),(60,'2019-01-08 13:16:42','org.springframework.security.web.authentication.WebAuthenticationDetails@fffd3270: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 25153BAD87BBA65AD2E3F33C2AC26A2F','http://localhost:8080/css/style.css','anonymousUser'),(61,'2019-01-08 13:16:42','org.springframework.security.web.authentication.WebAuthenticationDetails@fffd3270: RemoteIpAddress: 0:0:0:0:0:0:0:1; SessionId: 25153BAD87BBA65AD2E3F33C2AC26A2F','http://localhost:8080/css/login.css','anonymousUser');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `UKstlxfukw77ov5w1wo1tm3omca` (`role`,`username`),
  KEY `FKcdp2dxqcsdh6rnh6o64rgtcir` (`username`),
  CONSTRAINT `FKcdp2dxqcsdh6rnh6o64rgtcir` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'ROLE_USER','user');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('user','','$2a$10$7BUiHRDDUkxQ1Hz/iVrX3e5a4v0WN6qNX2rn5edZH2uR5YbNalwmS');
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

-- Dump completed on 2019-01-08 13:20:04
