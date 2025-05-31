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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:02
