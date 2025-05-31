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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:05
