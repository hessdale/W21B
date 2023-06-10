-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: w21b
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `philosopher`
--

DROP TABLE IF EXISTS `philosopher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `philosopher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `bio` varchar(150) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `image_url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_un` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `philosopher`
--

LOCK TABLES `philosopher` WRITE;
/*!40000 ALTER TABLE `philosopher` DISABLE KEYS */;
INSERT INTO `philosopher` VALUES (1,'random1','some guy1','1996-07-03','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(2,'random2','some guy2','1996-07-04','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(3,'random3','some guy3','1996-07-05','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(4,'random4','some guy4','1996-07-06','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(5,'random5','some guy5','1996-07-07','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(6,'random6','some guy6','1996-07-08','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(7,'random7','some guy7','1997-07-09','2023-06-09','https://images.pexels.com/photos/2398297/pexels-photo-2398297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(8,'new','new','2022-02-02','2022-02-02','some website.org'),(9,'new6','new','2022-02-02','2022-02-02','some website.org'),(10,'new99','some dude66','2000-02-02','2000-02-02','somewebsite.com');
/*!40000 ALTER TABLE `philosopher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `philosopher_id` int(10) unsigned DEFAULT NULL,
  `content` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_FK` (`philosopher_id`),
  CONSTRAINT `quote_FK` FOREIGN KEY (`philosopher_id`) REFERENCES `philosopher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES (1,1,'The unexamined life is not worth living'),(2,2,'Whereof one cannot speak, thereof one must be silent'),(3,3,'Entities should not be multiplied unnecessarily'),(4,4,'The life of man (in a state of nature) is solitary, poor, nasty, brutish, and short'),(5,5,'He who thinks great thoughts, often makes great errors'),(6,6,'We live in the best of all possible worlds'),(7,1,'What is rational is actual and what is actual is rational'),(8,2,'God is dead! He remains dead! And we have killed him.'),(9,3,'One cannot step twice in the same river'),(10,4,'The greatest happiness of the greatest number is the foundation of morals and legislation'),(11,5,'Happiness is not an ideal of reason but of imagination'),(12,5,'No man\'s knowledge here can go beyond his experience'),(13,5,'Liberty consists in doing what one desires'),(14,6,'There is only one good, knowledge, and one evil, ignorance'),(15,4,'If God did not exist, it would be necessary to invent Him'),(16,NULL,NULL),(17,NULL,NULL);
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'w21b'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_philosophers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_philosophers`()
begin
	SELECT id, convert(name using "utf8"), convert(bio using "utf8"),date_of_birth,date_of_death,convert(image_url using "utf8")  FROM w21b.philosopher;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_quotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_quotes`(id_input int(10))
begin
	SELECT q.id, convert(p.name using "utf8"), convert(q.content using "utf8") FROM w21b.quote q inner join philosopher p on q.philosopher_id = p.id where p.id=id_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_philosopher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_philosopher`(name_input varchar(100), bio_input varchar(150), date_of_birth_input date, date_of_death_input date, image_url_input varchar(250))
    MODIFIES SQL DATA
begin
	INSERT INTO w21b.philosopher (name, bio, date_of_birth, date_of_death, image_url) VALUES(name_input, bio_input, date_of_birth_input, date_of_death_input, image_url_input);
	select p.id from w21b.philosopher p  where id = last_insert_id(); 
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_quote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_quote`(philosopher_id_value int(10), content_input varchar(250))
    MODIFIES SQL DATA
begin
	INSERT INTO w21b.quote (philosopher_id, content) VALUES(NULL, NULL);
	select q.id from quote q where q.id = last_insert_id(); 
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 10:39:26
