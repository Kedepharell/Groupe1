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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:03
