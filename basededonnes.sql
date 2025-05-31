-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: gestion_tontine
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.22.04.1

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
-- Table structure for table `aide`
--

DROP TABLE IF EXISTS `aide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aide` (
  `numAide` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `motif_aide` varchar(50) DEFAULT NULL,
  `montantAide` decimal(15,2) NOT NULL,
  `nomBeneficiaire` varchar(50) NOT NULL,
  `lienBeneficiareAvecMembre` varchar(50) NOT NULL,
  `type_aide` varchar(50) DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `idMembre` bigint NOT NULL,
  PRIMARY KEY (`numAide`),
  KEY `aide_idMembre_6b5b5a7d_fk_membre_idMembre` (`idMembre`),
  CONSTRAINT `aide_idMembre_6b5b5a7d_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aide`
--

LOCK TABLES `aide` WRITE;
/*!40000 ALTER TABLE `aide` DISABLE KEYS */;
/*!40000 ALTER TABLE `aide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `association_tontine_demandemodification`
--

DROP TABLE IF EXISTS `association_tontine_demandemodification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `association_tontine_demandemodification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type_demande` varchar(20) NOT NULL,
  `donnees` json NOT NULL,
  `statut` varchar(20) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `utilisateur_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Association_tontine__utilisateur_id_94290335_fk_auth_user` (`utilisateur_id`),
  CONSTRAINT `Association_tontine__utilisateur_id_94290335_fk_auth_user` FOREIGN KEY (`utilisateur_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `association_tontine_demandemodification`
--

LOCK TABLES `association_tontine_demandemodification` WRITE;
/*!40000 ALTER TABLE `association_tontine_demandemodification` DISABLE KEYS */;
/*!40000 ALTER TABLE `association_tontine_demandemodification` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add tontines',7,'add_tontines'),(26,'Can change tontines',7,'change_tontines'),(27,'Can delete tontines',7,'delete_tontines'),(28,'Can view tontines',7,'view_tontines'),(29,'Can add membre',8,'add_membre'),(30,'Can change membre',8,'change_membre'),(31,'Can delete membre',8,'delete_membre'),(32,'Can view membre',8,'view_membre'),(33,'Can add epargne',9,'add_epargne'),(34,'Can change epargne',9,'change_epargne'),(35,'Can delete epargne',9,'delete_epargne'),(36,'Can view epargne',9,'view_epargne'),(37,'Can add aide',10,'add_aide'),(38,'Can change aide',10,'change_aide'),(39,'Can delete aide',10,'delete_aide'),(40,'Can view aide',10,'view_aide'),(41,'Can add pret',11,'add_pret'),(42,'Can change pret',11,'change_pret'),(43,'Can delete pret',11,'delete_pret'),(44,'Can view pret',11,'view_pret'),(45,'Can add remboursement',12,'add_remboursement'),(46,'Can change remboursement',12,'change_remboursement'),(47,'Can delete remboursement',12,'delete_remboursement'),(48,'Can view remboursement',12,'view_remboursement'),(49,'Can add sanction',13,'add_sanction'),(50,'Can change sanction',13,'change_sanction'),(51,'Can delete sanction',13,'delete_sanction'),(52,'Can view sanction',13,'view_sanction'),(53,'Can add don',14,'add_don'),(54,'Can change don',14,'change_don'),(55,'Can delete don',14,'delete_don'),(56,'Can view don',14,'view_don'),(57,'Can add cotisation',15,'add_cotisation'),(58,'Can change cotisation',15,'change_cotisation'),(59,'Can delete cotisation',15,'delete_cotisation'),(60,'Can view cotisation',15,'view_cotisation'),(61,'Can add versementcotis',16,'add_versementcotis'),(62,'Can change versementcotis',16,'change_versementcotis'),(63,'Can delete versementcotis',16,'delete_versementcotis'),(64,'Can view versementcotis',16,'view_versementcotis'),(65,'Can add versementsol',17,'add_versementsol'),(66,'Can change versementsol',17,'change_versementsol'),(67,'Can delete versementsol',17,'delete_versementsol'),(68,'Can view versementsol',17,'view_versementsol'),(69,'Can add membre tontine',18,'add_membretontine'),(70,'Can change membre tontine',18,'change_membretontine'),(71,'Can delete membre tontine',18,'delete_membretontine'),(72,'Can view membre tontine',18,'view_membretontine'),(73,'Can add membre_tontine',19,'add_membre_tontine'),(74,'Can change membre_tontine',19,'change_membre_tontine'),(75,'Can delete membre_tontine',19,'delete_membre_tontine'),(76,'Can view membre_tontine',19,'view_membre_tontine'),(77,'Can add user',20,'add_user'),(78,'Can change user',20,'change_user'),(79,'Can delete user',20,'delete_user'),(80,'Can view user',20,'view_user'),(81,'Can add association',21,'add_association'),(82,'Can change association',21,'change_association'),(83,'Can delete association',21,'delete_association'),(84,'Can view association',21,'view_association'),(85,'Can add notification',22,'add_notification'),(86,'Can change notification',22,'change_notification'),(87,'Can delete notification',22,'delete_notification'),(88,'Can view notification',22,'view_notification'),(89,'Can add association',23,'add_association'),(90,'Can change association',23,'change_association'),(91,'Can delete association',23,'delete_association'),(92,'Can view association',23,'view_association'),(93,'Can add tontines membres',21,'add_tontinesmembres'),(94,'Can change tontines membres',21,'change_tontinesmembres'),(95,'Can delete tontines membres',21,'delete_tontinesmembres'),(96,'Can view tontines membres',21,'view_tontinesmembres'),(97,'Can add demande modification',24,'add_demandemodification'),(98,'Can change demande modification',24,'change_demandemodification'),(99,'Can delete demande modification',24,'delete_demandemodification'),(100,'Can view demande modification',24,'view_demandemodification');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (15,'pbkdf2_sha256$870000$L8AcL6fRvyuHThZmvVVaxl$pJYZA3D7Oy2L3iOkifHPtwB7BJWryK20D23ZcQMk3kQ=','2025-05-28 12:59:32.633800',1,'MEWALI','','','',1,1,'2025-04-27 22:20:54.148299'),(27,'pbkdf2_sha256$870000$lrPg0bnUOl1tOcui7x3c28$1AXC9kgS39vbYEH2+pOtgpiPPfidLeD5wlC7s/WXH+o=','2025-05-12 16:06:30.311461',0,'KEDE','','','kedepharell@gmail.com',0,1,'2025-05-11 16:12:07.219147'),(28,'pbkdf2_sha256$870000$xskAOErHdZ96korGWPx9p0$7/xZlqwUcT+vTBlSwtHQTzfxzqAEzSqVcbPOTspzj1M=','2025-05-22 10:48:41.896168',0,'CINDY','','','emmanuellecindy719@gmail.com',0,1,'2025-05-12 15:31:06.083926'),(29,'pbkdf2_sha256$870000$3lUX1DCHexpJn7wsGCQMS0$gFfJAjpnRCMUN/fLjGOv4LYznGJMe1hOTF4bXK2X2MQ=','2025-05-25 14:43:51.648810',0,'ISNEL','','','tendjang@gmail.com',0,1,'2025-05-12 15:52:34.258038'),(30,'pbkdf2_sha256$870000$dCtNeJ00tSSBufx5lclrIt$/8XsGZCfvMbf4OQ+rHu+tA5Qzpzd4i6wnGq8Xs/Vng8=',NULL,0,'AMOS','','','amos.mbietieu@facsciences-uy1.cm',0,1,'2025-05-12 16:13:03.347298'),(33,'pbkdf2_sha256$870000$a79U9nemWiGwfTNXQzWhKF$VsUBzkiSRW4GElkmvPdAptfExVyzil/mIE/Gr8B28mw=','2025-05-28 13:01:21.434297',0,'HELS','','','armanda@gmail.com',0,1,'2025-05-28 10:09:01.300348'),(34,'!71cikjuYNHLZL7XhMRfuyrBkU9yJMVv6SvBTRwAp',NULL,0,'INGRID','','','ingrid@gmail.com',0,1,'2025-05-28 10:10:18.790188'),(35,'!n8GJS626DjrkwMR5mzc6xgnfJclkQTnM86DYKZst',NULL,0,'MADI','','','nguimsi@gmail.com',0,1,'2025-05-28 10:12:37.056973'),(36,'!9CAo3LmeNEwH1TQYnkFT6OKny460OwUgcNIgy6AG',NULL,0,'ISMENE','','','ismene@gmail.com',0,1,'2025-05-28 10:15:26.012808'),(37,'!RLmkFAbtGADrhor6LQ0NM33OtV2Qyo67ve7qQ8VV',NULL,0,'CLAUDE','','','akam@gmail.com',0,1,'2025-05-28 10:17:02.051670'),(38,'!lLZcdMyhYGw2ntWSFzEf3Pls42CPvRs4eFg0sxzs',NULL,0,'BENGO','','','bengono@gmail.com',0,1,'2025-05-28 10:18:24.483330'),(39,'!RlGQu7DMBvLELZeMltaF4O7lp3kLw8GxtDy5Zgh0',NULL,0,'FRITZ','','','fritz@gmail.com',0,1,'2025-05-28 10:19:50.985181'),(40,'!li7HqJICTHAytFdEwPJVovOTWkWtkXTOHU5pF06i',NULL,0,'JUNIOR','','','junior@gmail.com',0,1,'2025-05-28 10:21:15.512999'),(41,'!C89U4u9zo9DsFIpAP73c5z44yyFlNcdONLDWkQlt',NULL,0,'DONGMO','','','dongmo@gmail.com',0,1,'2025-05-28 10:22:55.198621'),(42,'!8deqizHsK1plIOu9LiPEJG10NxHGCHcpmPVgwGYw',NULL,0,'YVAN','','','yvan@gmail.com',0,1,'2025-05-28 10:24:22.123130'),(43,'!FhcMnGztFXUOxeAZZfs79gsF9TADOSBk1BwZdNfK',NULL,0,'LOIC','','','loic@gmail.com',0,1,'2025-05-28 10:25:36.665667'),(44,'!nPj1N4ekkOSG8LF1CeMMy7fvGyeukWcFevrVHRtp',NULL,0,'DANIEL','','','daniel@gmail.com',0,1,'2025-05-28 10:29:00.180214'),(45,'!p22P7m63MUYIzK0BiPCdYR4lkDNuudmemCHf4Fpa',NULL,0,'NDOH','','','mbangah@gmail.com',0,1,'2025-05-28 10:30:39.273753'),(46,'!1PXou84cFl61tFhW2biKg5ESm8KYqdlwh2D9HM9k',NULL,0,'XEVY','','','missoal@gmail.com',0,1,'2025-05-28 10:31:54.746051'),(47,'!qNZow72XicYYBWgXMXQynVXvyUsespz49QzvZgg6',NULL,0,'MEISSA','','','meissa@gmail.com',0,1,'2025-05-28 10:33:57.095732'),(48,'!EHfS6e7epELfYEFDYZ7hpUC5inN9ciSSN7FqLG7Z',NULL,0,'DAVID','','','david@gmail.com',0,1,'2025-05-28 10:35:29.394804'),(49,'!zH5g0e0X5xXW5w9Tfvh4SZhcmDbFPsDsiQqp8fTt',NULL,0,'SOBOTH','','','soboth@gmail.com',0,1,'2025-05-28 10:36:52.771866'),(50,'!u3ZgKUfAGLChyOCxDwRvB8AGDbKVujXxo7z44ahl',NULL,0,'SIMO','','','simo@gmail.com',0,1,'2025-05-28 10:38:13.490836'),(51,'!He7UxCEwuganoCCf3pOiLai8ffFgkJJhj9So3y4h',NULL,0,'NDEFFO','','','ndeffo@gmail.com',0,1,'2025-05-28 10:39:46.465970');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotisation`
--

DROP TABLE IF EXISTS `cotisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotisation` (
  `codeCotisation` bigint NOT NULL AUTO_INCREMENT,
  `libelle` varchar(15) NOT NULL,
  `nbPartMax` int DEFAULT NULL,
  `penaliteDefaillanceBenef` decimal(15,2) DEFAULT NULL,
  `penaliteDefaillanceNonBenef` decimal(15,2) DEFAULT NULL,
  `miseAPrix` decimal(19,4) NOT NULL,
  `idMembre` bigint NOT NULL,
  `tontines` int NOT NULL,
  `montant` decimal(19,4) NOT NULL,
  `utilisateur_id` bigint NOT NULL,
  `date_paiement` datetime DEFAULT NULL,
  `est_valide` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codeCotisation`),
  KEY `cotisation_idMembre_8ca0fe8f_fk_membre_idMembre` (`idMembre`),
  KEY `cotisation_tontines_57455b15_fk_tontines_idTontines` (`tontines`),
  CONSTRAINT `cotisation_idMembre_8ca0fe8f_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`),
  CONSTRAINT `cotisation_tontines_57455b15_fk_tontines_idTontines` FOREIGN KEY (`tontines`) REFERENCES `tontines` (`idTontines`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotisation`
--

LOCK TABLES `cotisation` WRITE;
/*!40000 ALTER TABLE `cotisation` DISABLE KEYS */;
INSERT INTO `cotisation` VALUES (1,'Hebdomadaire',4,0.04,0.04,0.0003,1,4,20000.0000,15,NULL,0);
/*!40000 ALTER TABLE `cotisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'Association_tontine','aide'),(23,'Association_tontine','association'),(15,'Association_tontine','cotisation'),(24,'Association_tontine','demandemodification'),(14,'Association_tontine','don'),(9,'Association_tontine','epargne'),(8,'Association_tontine','membre'),(19,'Association_tontine','membre_tontine'),(18,'Association_tontine','membretontine'),(22,'Association_tontine','notification'),(11,'Association_tontine','pret'),(12,'Association_tontine','remboursement'),(13,'Association_tontine','sanction'),(7,'Association_tontine','tontines'),(21,'Association_tontine','tontinesmembres'),(20,'Association_tontine','user'),(16,'Association_tontine','versementcotis'),(17,'Association_tontine','versementsol'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-14 04:23:44.777929'),(2,'auth','0001_initial','2025-04-14 04:23:45.693280'),(3,'Association_tontine','0001_initial','2025-04-14 04:23:47.769326'),(4,'admin','0001_initial','2025-04-14 04:23:47.993796'),(5,'admin','0002_logentry_remove_auto_add','2025-04-14 04:23:48.008352'),(6,'admin','0003_logentry_add_action_flag_choices','2025-04-14 04:23:48.024929'),(7,'contenttypes','0002_remove_content_type_name','2025-04-14 04:23:48.198415'),(8,'auth','0002_alter_permission_name_max_length','2025-04-14 04:23:48.308831'),(9,'auth','0003_alter_user_email_max_length','2025-04-14 04:23:48.354776'),(10,'auth','0004_alter_user_username_opts','2025-04-14 04:23:48.368917'),(11,'auth','0005_alter_user_last_login_null','2025-04-14 04:23:48.460656'),(12,'auth','0006_require_contenttypes_0002','2025-04-14 04:23:48.464430'),(13,'auth','0007_alter_validators_add_error_messages','2025-04-14 04:23:48.480067'),(14,'auth','0008_alter_user_username_max_length','2025-04-14 04:23:48.590126'),(15,'auth','0009_alter_user_last_name_max_length','2025-04-14 04:23:48.709085'),(16,'auth','0010_alter_group_name_max_length','2025-04-14 04:23:48.748712'),(17,'auth','0011_update_proxy_permissions','2025-04-14 04:23:48.772526'),(18,'auth','0012_alter_user_first_name_max_length','2025-04-14 04:23:48.906238'),(19,'sessions','0001_initial','2025-04-14 04:23:48.962776'),(20,'Association_tontine','0002_alter_membre_user_alter_pret_idmembre_avaliste_and_more','2025-04-16 20:55:45.479355'),(21,'Association_tontine','0003_remove_cotisation_idtontines_cotisation_tontine','2025-04-17 09:38:04.958505'),(22,'Association_tontine','0004_membre_is_admin','2025-04-17 11:36:48.940773'),(23,'Association_tontine','0005_alter_membre_email','2025-04-18 00:37:03.858810'),(24,'Association_tontine','0006_alter_membre_login','2025-04-18 18:00:10.561584'),(25,'Association_tontine','0007_user_alter_membre_user','2025-04-18 20:20:20.016636'),(26,'Association_tontine','0002_membre_tontine_alter_membre_tontine_and_more','2025-04-18 21:11:00.250872'),(27,'Association_tontine','0002_rename_association_membre_tontine','2025-04-18 21:15:12.655409'),(28,'Association_tontine','0002_remove_membre_tontine_remboursement_idmembre_and_more','2025-04-26 15:02:16.878293'),(29,'Association_tontine','0003_alter_membre_password','2025-04-26 20:21:03.499827'),(30,'Association_tontine','0004_membre_last_login','2025-04-26 21:51:50.807582'),(31,'Association_tontine','0005_alter_membre_user','2025-04-27 19:22:12.641366'),(32,'Association_tontine','0006_alter_membre_user_delete_user','2025-04-27 23:16:33.270407'),(33,'Association_tontine','0007_alter_aide_idmembre_alter_cotisation_idmembre_and_more','2025-04-28 14:26:11.471626'),(34,'Association_tontine','0008_remove_membre_tontine_remove_membre_tontine_and_more','2025-04-28 14:39:43.167202'),(35,'Association_tontine','0009_association_delete_membre_tontine','2025-05-03 20:01:11.009035'),(36,'Association_tontine','0010_alter_association_table','2025-05-03 20:16:06.923877'),(37,'Association_tontine','0011_rename_membres_association_membre','2025-05-03 20:41:41.016289'),(38,'Association_tontine','0012_remove_association_membre_association_membres','2025-05-03 20:41:41.286639'),(39,'Association_tontine','0013_remove_membre_email_remove_membre_last_login_and_more','2025-05-07 22:17:39.270657'),(40,'Association_tontine','0014_membre_email','2025-05-07 22:21:36.157592'),(41,'Association_tontine','0015_alter_membre_user','2025-05-07 22:38:37.908157'),(42,'Association_tontine','0016_alter_aide_idmembre_alter_cotisation_idmembre_and_more','2025-05-07 23:08:14.228538'),(43,'Association_tontine','0017_alter_remboursement_idpret','2025-05-07 23:26:13.303094'),(44,'Association_tontine','0017_remove_tontines_idmembre_remove_tontines_typetontine_and_more','2025-05-08 14:39:13.418002'),(45,'Association_tontine','0018_rename_association_tontinesmembres_and_more','2025-05-14 08:12:46.532984'),(46,'Association_tontine','0019_demandemodification','2025-05-24 13:18:19.918643'),(47,'Association_tontine','0020_alter_notification_date_envoi_and_more','2025-05-24 14:43:53.281715'),(48,'Association_tontine','0021_pret_cni_avaliste','2025-05-25 13:46:44.965828'),(49,'Association_tontine','0022_tontinesmembres_date_entree_and_more','2025-05-25 17:09:21.897285'),(50,'Association_tontine','0022_auto_20250525_1944','2025-05-25 17:50:59.814878');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('gg9ann2qh39m7wthwv628c8hja0zrepf','e30:1u8nF9:8wuIvN5RXXeO7h7jIse0cFOT1KKBaRo5qYfAX8NaXCY','2025-05-10 21:39:27.168877'),('p8zowoyz89eh29o3jkm7s517xfa9fepg','.eJxVjDsOwjAQRO_iGlnreP2Bkp4zWLv-4ABypDipEHcnkVJAMc28N_MWgdalhrXnOYxJXITW4vRbMsVnbjtJD2r3ScapLfPIclfkQbu8TSm_rof7d1Cp120N_mwggkbjjbJgNVGJSKx4C2itXMEMjM4OYG0ybJ3CQh4woWEcxOcL27E28A:1uKGPJ:4UFla_zPhLE4A9xgDZwT2kwrNvilKwq0a_qErzF7K8o','2025-06-11 13:01:21.441515'),('rvp35ids4tw6cwpzsncx7u8ru4jplnd4','e30:1u8nF5:y_LScqrCYgR7cSY2YGY0ggX2PsFllliyS4_jbOoqwK8','2025-05-10 21:39:23.884580');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don`
--

DROP TABLE IF EXISTS `don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don` (
  `iddon` int NOT NULL AUTO_INCREMENT,
  `nature_don` varchar(255) NOT NULL,
  `date_don` date NOT NULL,
  `montant_don` decimal(10,2) NOT NULL,
  `description_don` varchar(255) NOT NULL,
  `idMembre` bigint NOT NULL,
  `idTontines` int NOT NULL,
  `utilisateur_id` int DEFAULT NULL,
  PRIMARY KEY (`iddon`),
  KEY `don_idMembre_f76e0175_fk_membre_idMembre` (`idMembre`),
  KEY `don_idTontines_e921e47e_fk_tontines_idTontines` (`idTontines`),
  CONSTRAINT `don_idMembre_f76e0175_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`),
  CONSTRAINT `don_idTontines_e921e47e_fk_tontines_idTontines` FOREIGN KEY (`idTontines`) REFERENCES `tontines` (`idTontines`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don`
--

LOCK TABLES `don` WRITE;
/*!40000 ALTER TABLE `don` DISABLE KEYS */;
INSERT INTO `don` VALUES (1,'Espece','2025-05-22',150000.00,'Pour remerciement',1,1,NULL);
/*!40000 ALTER TABLE `don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epargne`
--

DROP TABLE IF EXISTS `epargne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epargne` (
  `idEpargne` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(19,4) NOT NULL,
  `modeVersement` varchar(20) NOT NULL,
  `couponVersement` varchar(64) DEFAULT NULL,
  `idSeance` bigint NOT NULL,
  `idMembre` bigint NOT NULL,
  `utilisateur_id` int DEFAULT NULL,
  PRIMARY KEY (`idEpargne`),
  UNIQUE KEY `couponVersement` (`couponVersement`),
  KEY `epargne_idMembre_5653b6e9_fk_membre_idMembre` (`idMembre`),
  CONSTRAINT `epargne_idMembre_5653b6e9_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epargne`
--

LOCK TABLES `epargne` WRITE;
/*!40000 ALTER TABLE `epargne` DISABLE KEYS */;
INSERT INTO `epargne` VALUES (1,70000.0000,'Catch','seance_don',1,1,NULL);
/*!40000 ALTER TABLE `epargne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membre`
--

DROP TABLE IF EXISTS `membre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membre` (
  `idMembre` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `anneeNais` smallint DEFAULT NULL,
  `anneeEntree` smallint DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `telephone1` varchar(15) DEFAULT NULL,
  `telephone2` varchar(15) DEFAULT NULL,
  `actif` int DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `engagement` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tontine_id` int DEFAULT NULL,
  PRIMARY KEY (`idMembre`),
  UNIQUE KEY `membre_login_3589dcd7_uniq` (`login`),
  KEY `membre_user_id_4bf53a5f_fk_auth_user_id` (`user_id`),
  KEY `membre_tontine_id_3cd44dcf_fk_tontines_idTontines` (`tontine_id`),
  CONSTRAINT `membre_tontine_id_3cd44dcf_fk_tontines_idTontines` FOREIGN KEY (`tontine_id`) REFERENCES `tontines` (`idTontines`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membre`
--

LOCK TABLES `membre` WRITE;
/*!40000 ALTER TABLE `membre` DISABLE KEYS */;
INSERT INTO `membre` VALUES (1,'MEWALI','Tatiana',2007,2022,'MEWALI','F','6 92 19 95 60','6 86 32 69 86',1,NULL,15,1,'celibataire','mewalitatiana9@gmail.com',NULL),(16,'KEDE','Pharell',2005,2023,'KEDE','M','6 72 18 87 76',NULL,1,NULL,27,0,'celibataire','kedepharell@gmail.com',NULL),(17,'Emmanuelle','Cindy',2005,2023,'CINDY','F','6 94 561855',NULL,1,NULL,28,0,'celibataire','emmanuellecindy719@gmail.com',NULL),(18,'Tendjang','Isnel',2005,2023,'ISNEL','M','6 98 56 76 89',NULL,1,NULL,29,0,'celibataire','tendjang@gmail.com',NULL),(19,'Amos',NULL,NULL,NULL,'AMOS','M','6 78 34 56 87',NULL,1,NULL,30,0,'marie(e)','amos.mbietieu@facsciences-uy1.cm',NULL),(22,'Maatsing','Armanda',2005,2021,'HELS','F','678543243',NULL,1,NULL,33,0,'celibataire','armanda@gmail.com',NULL),(23,'Kawou','Ingrid',2002,2023,'INGRID','F','698754322',NULL,1,NULL,34,0,'marie(e)','ingrid@gmail.com',NULL),(24,'Nguimsi','Madilia',2002,2022,'MADI','F','678453290',NULL,1,NULL,35,0,'marie(e)','nguimsi@gmail.com',NULL),(25,'Nlemenyeme','Ismene',2004,2022,'ISMENE','F','654342290',NULL,1,NULL,36,0,'marie(e)','ismene@gmail.com',NULL),(26,'Akam','Claude',1990,2021,'CLAUDE','M','687564588',NULL,1,NULL,37,0,'marie(e)','akam@gmail.com',NULL),(27,'Bengono','Ibrahim',2003,2923,'BENGO','M','678554400',NULL,1,NULL,38,0,'marie(e)','bengono@gmail.com',NULL),(28,'Bikelle','Fritz',2002,2023,'FRITZ','M','645339900',NULL,1,NULL,39,0,'marie(e)','fritz@gmail.com',NULL),(29,'Djomguem','Junior',2003,2021,'JUNIOR','M','644332290',NULL,1,NULL,40,0,'marie(e)','junior@gmail.com',NULL),(30,'Dongmo','Romarth',2002,2021,'DONGMO','M','675453423',NULL,1,NULL,41,0,'marie(e)','dongmo@gmail.com',NULL),(31,'EFO\'O','Yvan',2002,2021,'YVAN','M','629008877',NULL,1,NULL,42,0,'marie(e)','yvan@gmail.com',NULL),(32,'Foumegni','Loic',2002,2022,'LOIC','M','654559022',NULL,1,NULL,43,0,'marie(e)','loic@gmail.com',NULL),(33,'KOUMTOUDJI','Daniel',2005,2022,'DANIEL','F','675443900',NULL,1,NULL,44,0,'marie(e)','daniel@gmail.com',NULL),(34,'MBANGAH','Ndoh',2004,2022,'NDOH','M','654338901',NULL,1,NULL,45,0,'celibataire','mbangah@gmail.com',NULL),(35,'Missoal','Yvan',1990,2022,'XEVY','M','678903422',NULL,1,NULL,46,0,'marie(e)','missoal@gmail.com',NULL),(36,'Mohamadou','Ibrahim',2003,2022,'MEISSA','M','643829010',NULL,1,NULL,47,0,'celibataire','meissa@gmail.com',NULL),(37,'Ndeffo','Mahoro',2002,2022,'DAVID','M','621678890',NULL,1,NULL,48,0,'marie(e)','david@gmail.com',NULL),(38,'Soboth','Shekinah',2002,2023,'SOBOTH','F','643221190',NULL,1,NULL,49,0,'celibataire','soboth@gmail.com',NULL),(39,'Tchuente','Waren',1990,2023,'SIMO','M','620109080',NULL,1,NULL,50,0,'marie(e)','simo@gmail.com',NULL),(40,'Tejiogni','Jethro',2003,2022,'NDEFFO','M','650389211',NULL,1,NULL,51,0,'marie(e)','ndeffo@gmail.com',NULL);
/*!40000 ALTER TABLE `membre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int DEFAULT NULL,
  `super_utilisateur_id` int DEFAULT NULL,
  `statut` varchar(100) DEFAULT NULL,
  `date_envoi` datetime NOT NULL,
  `details` text,
  `type_modification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `super_utilisateur_id` (`super_utilisateur_id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`super_utilisateur_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,15,15,'en cours','2023-01-12 00:00:00','Votre notification ici','pret');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pret`
--

DROP TABLE IF EXISTS `pret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pret` (
  `idpret` bigint NOT NULL AUTO_INCREMENT,
  `observations` longtext,
  `pourcentage` decimal(15,2) NOT NULL,
  `idSeance` bigint DEFAULT NULL,
  `idSeance_1` bigint DEFAULT NULL,
  `idMembre_avaliste_id` bigint NOT NULL,
  `idMembre_preteur_id` bigint NOT NULL,
  `montant` decimal(10,0) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `date_demande` datetime DEFAULT NULL,
  `est_rembourse` int DEFAULT NULL,
  `utilisateur_id` int DEFAULT NULL,
  `cni_avaliste` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpret`),
  KEY `pret_idMembre_avaliste_id_040eab0a_fk_membre_idMembre` (`idMembre_avaliste_id`),
  KEY `pret_idMembre_preteur_id_e0608fa9_fk_membre_idMembre` (`idMembre_preteur_id`),
  KEY `fk_utilisateur` (`utilisateur_id`),
  CONSTRAINT `fk_utilisateur` FOREIGN KEY (`utilisateur_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pret_idMembre_avaliste_id_040eab0a_fk_membre_idMembre` FOREIGN KEY (`idMembre_avaliste_id`) REFERENCES `membre` (`idMembre`),
  CONSTRAINT `pret_idMembre_preteur_id_e0608fa9_fk_membre_idMembre` FOREIGN KEY (`idMembre_preteur_id`) REFERENCES `membre` (`idMembre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pret`
--

LOCK TABLES `pret` WRITE;
/*!40000 ALTER TABLE `pret` DISABLE KEYS */;
INSERT INTO `pret` VALUES (1,NULL,5.00,NULL,NULL,28,24,100000,'','2025-05-25 00:00:00',0,NULL,''),(2,NULL,15.00,NULL,NULL,16,18,3000000,'','2025-05-24 00:00:00',0,NULL,'');
/*!40000 ALTER TABLE `pret` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remboursement`
--

DROP TABLE IF EXISTS `remboursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remboursement` (
  `idRembo` bigint NOT NULL AUTO_INCREMENT,
  `montant_rembourse` decimal(10,0) DEFAULT NULL,
  `idpret` bigint NOT NULL,
  `idMembre` bigint DEFAULT NULL,
  `date_remboursement` datetime DEFAULT NULL,
  `idSeance` int DEFAULT NULL,
  `utilisateur_id` int DEFAULT NULL,
  PRIMARY KEY (`idRembo`),
  KEY `remboursement_idpret_ef9a77bb_fk_pret_idpret` (`idpret`),
  KEY `remboursement_idMembre_20e426e8_fk_membre_idMembre` (`idMembre`),
  CONSTRAINT `remboursement_idMembre_20e426e8_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`),
  CONSTRAINT `remboursement_idpret_ef9a77bb_fk_pret_idpret` FOREIGN KEY (`idpret`) REFERENCES `pret` (`idpret`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remboursement`
--

LOCK TABLES `remboursement` WRITE;
/*!40000 ALTER TABLE `remboursement` DISABLE KEYS */;
INSERT INTO `remboursement` VALUES (1,5000,1,NULL,'2025-05-24 00:00:00',NULL,NULL),(2,100000,1,NULL,'2025-05-27 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `remboursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction`
--

DROP TABLE IF EXISTS `sanction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction` (
  `idSanction` int NOT NULL AUTO_INCREMENT,
  `dateSanction` date NOT NULL,
  `typeSanction` varchar(50) NOT NULL,
  `montant` decimal(15,2) DEFAULT NULL,
  `raison` longtext NOT NULL,
  `idMembre` bigint NOT NULL,
  `utilisateur_id` bigint NOT NULL,
  PRIMARY KEY (`idSanction`),
  KEY `sanction_idMembre_56b7f807_fk_membre_idMembre` (`idMembre`),
  CONSTRAINT `sanction_idMembre_56b7f807_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction`
--

LOCK TABLES `sanction` WRITE;
/*!40000 ALTER TABLE `sanction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tontines`
--

DROP TABLE IF EXISTS `tontines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tontines` (
  `idTontines` int NOT NULL AUTO_INCREMENT,
  `nomTontines` varchar(45) NOT NULL,
  `montantTontine` decimal(20,5) NOT NULL,
  `dateCreation` date DEFAULT NULL,
  `type_tontine` varchar(1) DEFAULT NULL,
  `montant_obligatoire` decimal(10,0) DEFAULT NULL,
  `membres` int DEFAULT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTontines`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tontines`
--

LOCK TABLES `tontines` WRITE;
/*!40000 ALTER TABLE `tontines` DISABLE KEYS */;
INSERT INTO `tontines` VALUES (1,'Tontine A',2000.00000,'2022-05-11','A',1000,NULL,''),(2,'Tontine B',5000.00000,'2022-05-11','B',1000,NULL,''),(3,'Tontine C',10000.00000,'2022-05-11','C',1000,NULL,''),(4,'Tontine D',100000.00000,'2022-05-11','D',1000,NULL,'');
/*!40000 ALTER TABLE `tontines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tontines_membres`
--

DROP TABLE IF EXISTS `tontines_membres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tontines_membres` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tontines_id` int NOT NULL,
  `membres_id` bigint NOT NULL,
  `date_adhesion` date DEFAULT NULL,
  `numero_adhesion` int unsigned NOT NULL,
  `date_entree` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Association_membres_id_5d59a92d_fk_membre_idMembre` (`membres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tontines_membres`
--

LOCK TABLES `tontines_membres` WRITE;
/*!40000 ALTER TABLE `tontines_membres` DISABLE KEYS */;
INSERT INTO `tontines_membres` VALUES (1,4,1,'2025-05-25',1,'2025-05-31'),(2,3,16,'2025-05-25',1,'2025-05-31'),(7,2,17,'2025-05-25',1,'2025-05-31'),(8,1,18,'2025-05-25',1,'2025-05-31'),(19,2,22,NULL,1,'2025-05-31');
/*!40000 ALTER TABLE `tontines_membres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versementcotis`
--

DROP TABLE IF EXISTS `versementcotis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versementcotis` (
  `idVersCotis` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(15,2) NOT NULL,
  `modeVersement` varchar(20) NOT NULL,
  `couponVersement` varchar(64) DEFAULT NULL,
  `idSeance` bigint NOT NULL,
  `codeCotisation` bigint NOT NULL,
  `idMembre` bigint NOT NULL,
  `utilisateur_id` bigint NOT NULL,
  PRIMARY KEY (`idVersCotis`),
  UNIQUE KEY `couponVersement` (`couponVersement`),
  KEY `versementcotis_codeCotisation_4d3314f7_fk_cotisatio` (`codeCotisation`),
  KEY `versementcotis_idMembre_0638dc93_fk_membre_idMembre` (`idMembre`),
  CONSTRAINT `versementcotis_codeCotisation_4d3314f7_fk_cotisatio` FOREIGN KEY (`codeCotisation`) REFERENCES `cotisation` (`codeCotisation`),
  CONSTRAINT `versementcotis_idMembre_0638dc93_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versementcotis`
--

LOCK TABLES `versementcotis` WRITE;
/*!40000 ALTER TABLE `versementcotis` DISABLE KEYS */;
/*!40000 ALTER TABLE `versementcotis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versementsol`
--

DROP TABLE IF EXISTS `versementsol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versementsol` (
  `idVersSol` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(15,2) NOT NULL,
  `modeVersement` varchar(20) NOT NULL,
  `couponVersement` varchar(64) DEFAULT NULL,
  `idSeance` bigint NOT NULL,
  `idMembre` bigint NOT NULL,
  `utilisateur_id` bigint NOT NULL,
  PRIMARY KEY (`idVersSol`),
  UNIQUE KEY `couponVersement` (`couponVersement`),
  KEY `versementSol_idMembre_1cb0c18b_fk_membre_idMembre` (`idMembre`),
  CONSTRAINT `versementSol_idMembre_1cb0c18b_fk_membre_idMembre` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versementsol`
--

LOCK TABLES `versementsol` WRITE;
/*!40000 ALTER TABLE `versementsol` DISABLE KEYS */;
/*!40000 ALTER TABLE `versementsol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-31 22:44:21
