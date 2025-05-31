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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:04
