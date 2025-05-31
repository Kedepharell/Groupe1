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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 17:20:01
