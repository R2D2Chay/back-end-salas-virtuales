-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: digita683_oficina
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bitacora`
--

DROP TABLE IF EXISTS `Bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bitacora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) NOT NULL,
  `entidad` varchar(100) NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp(),
  `evento` int(11) NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entidad` (`entidad`),
  KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bitacora`
--

LOCK TABLES `Bitacora` WRITE;
/*!40000 ALTER TABLE `Bitacora` DISABLE KEYS */;
INSERT INTO `Bitacora` VALUES (1,'soa','Amigos','2023-10-17 17:42:12',0,'nohay'),(12,'soa','Amigos','2023-10-17 22:01:31',0,'nohay'),(13,'soa','Amigos','2023-10-17 22:06:56',0,'nohay'),(14,'soa','Amigos','2023-10-17 22:08:07',0,'nohay'),(15,'soa','Amigos','2023-10-17 22:08:36',1,'nohay'),(16,'soa','Amigos','2023-10-17 22:09:11',1,'nohay'),(17,'soa','Amigos','2023-10-17 22:10:04',1,'nohay'),(18,'soa','Amigos','2023-10-17 22:24:07',1,'nohay'),(19,'soa','Amigos','2023-10-17 22:24:46',1,'nohay'),(20,'soa','Amigos','2023-10-17 22:27:13',1,'nohay'),(21,'soa','Amigos','2023-10-17 22:28:19',1,'nohay'),(22,'soa','Amigos','2023-10-17 22:47:24',1,'nohay'),(23,'soa','Amigos','2023-10-17 22:48:22',1,'nohay'),(24,'soa','Amigos','2023-10-17 22:48:26',1,'nohay'),(25,'soa','Amigos','2023-10-17 22:48:32',1,'nohay'),(26,'soa','Amigos','2023-10-17 22:48:35',0,'nohay'),(27,'soa','Amigos','2023-10-17 22:48:45',0,'nohay'),(28,'soa','Amigos','2023-10-17 22:53:37',0,'nohay');
/*!40000 ALTER TABLE `Bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jugador`
--

DROP TABLE IF EXISTS `Jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jugador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `entidad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clave_2` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jugador`
--

LOCK TABLES `Jugador` WRITE;
/*!40000 ALTER TABLE `Jugador` DISABLE KEYS */;
INSERT INTO `Jugador` VALUES (1,'123','pppp','ducoc'),(2,'soa','https://models.readyplayer.me/63111dc3666e9239d904f006.glb','amigos'),(3,'1234','https://models.readyplayer.me/64ed1b4a1db75f90dcf837f5.glb','amigos'),(6,'Patricia','https://models.readyplayer.me/64eba4481db75f90dcf62a73.glb','Amigos'),(7,'Matias','https://models.readyplayer.me/64eba1e71db75f90dcf6275d.glb','Amigos'),(8,'Ramon','https://models.readyplayer.me/64eba30442c59d7dceae2287.glb','Duoc');
/*!40000 ALTER TABLE `Jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rooms`
--

DROP TABLE IF EXISTS `Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entidad` varchar(100) NOT NULL,
  `materia` varchar(100) DEFAULT NULL,
  `capacidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entidaddes` (`entidad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
INSERT INTO `Rooms` VALUES (1,'Inacap','Desarrollo Juegos',0),(2,'Duoc','Algebra',0),(3,'Duoc','Calculo',0),(4,'Duoc','Física',0),(5,'Duoc','Programación ',0),(6,'Uchile','Desarrollo Cuantico',0),(7,'Amigos','Room1',1);
/*!40000 ALTER TABLE `Rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17 22:56:00
