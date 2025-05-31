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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:01
