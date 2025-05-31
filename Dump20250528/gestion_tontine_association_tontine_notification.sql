-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestion_tontine
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `association_tontine_notification`
--

DROP TABLE IF EXISTS `association_tontine_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `association_tontine_notification` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tontine_id` int DEFAULT '1',
  `notification_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `utilisateur_id` int NOT NULL,
  `type_modification` varchar(100) DEFAULT NULL,
  `details` text,
  `statut` varchar(100) DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `tontine_id` (`tontine_id`),
  KEY `notification_id` (`notification_id`),
  CONSTRAINT `association_tontine_notification_ibfk_1` FOREIGN KEY (`tontine_id`) REFERENCES `tontines` (`idTontines`),
  CONSTRAINT `association_tontine_notification_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `association_tontine_notification`
--

LOCK TABLES `association_tontine_notification` WRITE;
/*!40000 ALTER TABLE `association_tontine_notification` DISABLE KEYS */;
INSERT INTO `association_tontine_notification` VALUES (4,1,1,'2025-05-12 15:04:22','2025-05-12 15:04:22',15,'prets',NULL,'en_attente',NULL),(5,1,1,'2025-05-12 15:17:34','2025-05-12 15:17:34',15,'prets',NULL,'en_attente',NULL),(6,1,1,'2025-05-12 15:38:45','2025-05-14 12:48:36',28,'tontine',NULL,'validée',NULL),(7,1,1,'2025-05-12 15:46:07','2025-05-22 10:30:51',28,'tontine',NULL,'validée',NULL),(8,1,1,'2025-05-12 16:06:43','2025-05-12 16:06:43',27,'prets',NULL,'en_attente',NULL),(9,1,1,'2025-05-23 11:04:07','2025-05-23 11:04:07',29,'','Demande de modification de None : None','en_attente',NULL),(19,1,1,'2025-05-25 11:55:16','2025-05-25 11:55:50',29,'Tontine','{\n  \"id\": 1,\n  \"nom\": \"Tontine A\"\n}','valide','2025-05-25 11:55:17'),(20,1,1,'2025-05-25 14:21:46','2025-05-25 14:21:46',29,'Pret','{\n  \"idMembre_preteur\": 18,\n  \"idMembre_avaliste\": 16,\n  \"montant\": \"50000\",\n  \"pourcentage\": \"5\",\n  \"date_demande\": \"2025-05-24 00:00:00+00:00\"\n}','en_attente','2025-05-25 14:21:47'),(22,1,1,'2025-05-28 12:59:16','2025-05-28 12:59:41',33,'Tontine','{\n  \"id\": 2,\n  \"nom\": \"Tontine B\"\n}','valide','2025-05-28 12:59:16');
/*!40000 ALTER TABLE `association_tontine_notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:05
