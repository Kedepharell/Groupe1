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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:02
