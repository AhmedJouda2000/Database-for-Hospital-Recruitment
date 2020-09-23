-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jouda18329393
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `candidatedetails`
--

DROP TABLE IF EXISTS `candidatedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatedetails` (
  `candidateid` int(11) NOT NULL COMMENT 'Represents the candidate''s identifier',
  `firstname` varchar(45) NOT NULL COMMENT 'Contains the applicant''s first name',
  `surname` varchar(45) NOT NULL COMMENT 'Contains the applicant''s surname',
  `address` varchar(45) DEFAULT NULL COMMENT 'Contains the applicant''s address',
  `telephonenumber` varchar(20) DEFAULT NULL COMMENT 'Contains the applicant''s phone number',
  PRIMARY KEY (`candidateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contains details about potential candidates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatedetails`
--

LOCK TABLES `candidatedetails` WRITE;
/*!40000 ALTER TABLE `candidatedetails` DISABLE KEYS */;
INSERT INTO `candidatedetails` VALUES (1,'Mike','Maher','32 Castlehill, Dublin','(089) 2389672'),(2,'Nancy','Mulligan','12 Sweet Avenue, Kildare','(089) 2389672'),(3,'Michael','Morporgo','97 Beaumant, Donegal','(083) 5371894'),(4,'Ed','Lawrence','66 Russel rd, Carlow','(085) 5394619'),(5,'John','Hannifan','62 Advocat Lane, Kerry','(087) 8971479'),(6,'Ryan','Foley','9 BellWall Avenue, Wicklow','(085) 7213414'),(7,'Daniel','De Rossi','3 Foxwood, Dublin','(089) 0783131'),(8,'Azza','Abo Elwan','27 Parnell Square, Dublin','(089) 7193612'),(9,'Kim','Doyle','17 Temple Bar Avenue, Galway','(087) 3648192'),(10,'Aoife','Daly','11 Park Lane, London','(083) 3280217');
/*!40000 ALTER TABLE `candidatedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateskills`
--

DROP TABLE IF EXISTS `candidateskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidateskills` (
  `idcandidate` int(11) NOT NULL COMMENT 'Represents the identification number of the candidate.',
  `skillpossessed` varchar(10) NOT NULL COMMENT 'Contains the skill identification code that the candidate has.',
  PRIMARY KEY (`idcandidate`,`skillpossessed`),
  KEY `skillid_idx` (`skillpossessed`),
  CONSTRAINT `candidateid` FOREIGN KEY (`idcandidate`) REFERENCES `candidatedetails` (`candidateid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_candi_skills` FOREIGN KEY (`skillpossessed`) REFERENCES `skills` (`skillid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table contains the skills that each candidate has.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateskills`
--

LOCK TABLES `candidateskills` WRITE;
/*!40000 ALTER TABLE `candidateskills` DISABLE KEYS */;
INSERT INTO `candidateskills` VALUES (4,'S1'),(6,'S1'),(2,'S10'),(8,'S10'),(2,'S2'),(6,'S2'),(8,'S2'),(6,'S3'),(1,'S4'),(7,'S4'),(5,'S5'),(7,'S5'),(1,'S6'),(3,'S6'),(7,'S6'),(3,'S7'),(5,'S7'),(7,'S7'),(2,'S8'),(9,'S8'),(10,'S9');
/*!40000 ALTER TABLE `candidateskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitaldetails`
--

DROP TABLE IF EXISTS `hospitaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitaldetails` (
  `hospitalid` int(11) NOT NULL COMMENT 'Represents the hospital identifier.',
  `hospitalname` varchar(45) NOT NULL COMMENT 'Gives the hospital name',
  `address` varchar(45) DEFAULT NULL,
  `telephonenumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`hospitalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table has details about the hospitals in the data base';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitaldetails`
--

LOCK TABLES `hospitaldetails` WRITE;
/*!40000 ALTER TABLE `hospitaldetails` DISABLE KEYS */;
INSERT INTO `hospitaldetails` VALUES (1,'Portiuncula Hospital Ballinasloe','Dunlo, Ballinasloe, Co. Galway, H53 T971','090 96 48200'),(2,'St. James\'s Hospital','St. James\'s Hospital','(01) 410 3000'),(3,'Letterkenny University Hospital','Kilmacrennan Rd, Letterkenny, Co. Donegal','(074) 912 5888'),(4,'University Hospital Kerry','Ratass, Tralee, Co. Kerry','(066) 718 4000'),(5,'Naas General Hospital','Craddockstown Rd, Naas, Co. Kildare','(045) 849 500'),(6,'Mayo General Hospital','Westport Rd, Curragh, Castlebar, Co. Mayo','(094) 902 1733'),(7,'St. Vincent\'s University Hospital','196 Merrion Road, Elm Park, Dublin','(01) 221 4000'),(8,'Connolly Hospital Blanchardstown','Mill Rd, Abbotstown, Dublin','(01) 646 5000'),(9,'Beaumont Hospital','Beaumont Rd, Beaumont, Dublin','(01) 809 3000'),(10,'University Hospital Waterford','Dunmore Road, Waterford','(051) 848 000');
/*!40000 ALTER TABLE `hospitaldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewdetails`
--

DROP TABLE IF EXISTS `interviewdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviewdetails` (
  `interviewid` int(11) NOT NULL COMMENT 'Represents the identification number of the interview.',
  `candidatenumber` int(11) NOT NULL COMMENT 'Contains the identification number of the candidate.',
  `hospitalnumber` int(11) NOT NULL COMMENT 'Contains the identification number of the hospital.',
  `positionnumber` int(11) NOT NULL COMMENT 'Contains the identification number of the position advertised.',
  `date` date DEFAULT NULL COMMENT 'Contains the date of the interview.',
  `jobOffered` varchar(5) DEFAULT NULL COMMENT 'Contains a YES if the job was offered, NO if it wasn''t.',
  PRIMARY KEY (`interviewid`),
  KEY `fk_candno_idx` (`candidatenumber`),
  KEY `fk_positionno_idx` (`positionnumber`),
  CONSTRAINT `fk_candno` FOREIGN KEY (`candidatenumber`) REFERENCES `candidatedetails` (`candidateid`),
  CONSTRAINT `fk_positionno` FOREIGN KEY (`positionnumber`) REFERENCES `positiondetails` (`positionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table contains the details of the interviews.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewdetails`
--

LOCK TABLES `interviewdetails` WRITE;
/*!40000 ALTER TABLE `interviewdetails` DISABLE KEYS */;
INSERT INTO `interviewdetails` VALUES (1,2,5,1,'2019-11-12','NO'),(2,2,5,1,'2019-11-13','YES'),(3,7,4,2,'2019-10-12','YES'),(4,3,5,3,'2019-10-22','NO'),(5,4,2,4,'2019-10-25','NO'),(6,1,2,4,'2019-10-25','YES'),(7,3,2,4,'2019-10-25','YES'),(8,6,1,5,'2019-11-11','NO'),(9,8,3,6,'2019-10-31','YES'),(10,1,3,9,'2019-11-18','NO');
/*!40000 ALTER TABLE `interviewdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positiondetails`
--

DROP TABLE IF EXISTS `positiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positiondetails` (
  `positionid` int(11) NOT NULL COMMENT 'Represents the identity number of the position.',
  `type` varchar(45) NOT NULL COMMENT 'Contains the type of the position.',
  `hospital` int(11) NOT NULL COMMENT 'Contains the name of the hospital offering the position.',
  PRIMARY KEY (`positionid`),
  KEY `fk_hosname_idx` (`hospital`),
  CONSTRAINT `fk_hosname` FOREIGN KEY (`hospital`) REFERENCES `hospitaldetails` (`hospitalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table contains the position openings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positiondetails`
--

LOCK TABLES `positiondetails` WRITE;
/*!40000 ALTER TABLE `positiondetails` DISABLE KEYS */;
INSERT INTO `positiondetails` VALUES (1,'Breast Surgeon',5),(2,'Data Scientist',4),(3,'Hospital Manager',5),(4,'Hospital Manager',2),(5,'Gynecologist',1),(6,'General Surgeon',3),(7,'General Surgeon',2),(8,'HR intern',7),(9,'HR Manager',3),(10,'Neurologist',7),(11,'Neurologist',9),(12,'Pediatrician',9),(13,'Pediatrician',10),(14,'Midwife',4),(15,'Midwife',10),(16,'Midwife',8);
/*!40000 ALTER TABLE `positiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionskills`
--

DROP TABLE IF EXISTS `positionskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionskills` (
  `idpositions` int(11) NOT NULL COMMENT 'Represents the id of the position offered.',
  `skillrequired` varchar(10) NOT NULL COMMENT 'Id of skills required.',
  PRIMARY KEY (`idpositions`,`skillrequired`),
  KEY `fk_skillsid_idx` (`skillrequired`),
  CONSTRAINT `fk_positionid` FOREIGN KEY (`idpositions`) REFERENCES `positiondetails` (`positionid`),
  CONSTRAINT `fk_skillsid` FOREIGN KEY (`skillrequired`) REFERENCES `skills` (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table contains the candidates'' skills';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionskills`
--

LOCK TABLES `positionskills` WRITE;
/*!40000 ALTER TABLE `positionskills` DISABLE KEYS */;
INSERT INTO `positionskills` VALUES (14,'S1'),(15,'S1'),(16,'S1'),(1,'S10'),(6,'S10'),(7,'S10'),(6,'S2'),(7,'S2'),(12,'S2'),(13,'S2'),(5,'S3'),(3,'S4'),(4,'S4'),(2,'S5'),(8,'S6'),(9,'S6'),(3,'S7'),(4,'S7'),(9,'S7'),(6,'S8'),(7,'S8'),(12,'S8'),(13,'S8'),(10,'S9'),(11,'S9');
/*!40000 ALTER TABLE `positionskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skillid` varchar(10) NOT NULL COMMENT 'Represents the identification code for the skill.',
  `skillname` varchar(45) NOT NULL COMMENT 'Explain the skill''s name',
  PRIMARY KEY (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table contains all the skills available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('S1','Nursing'),('S10','Breast Surgery'),('S2','General Surgery'),('S3','C-section'),('S4','Admin'),('S5','Data Science'),('S6','HR'),('S7','Management'),('S8','Pediatric Surgery'),('S9','Neurology');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jouda18329393'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidatedetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidatedetails`(IN candidateid INT(11), IN firstname varchar(45), IN surname varchar(45), IN address varchar(45), IN telephonenumber varchar(15))
BEGIN
insert into candidatedetails(candidateid, firstname, surname, address, telephonenumber) values(candidateid, firstname, surname, address, telephonenumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidateskills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidateskills`(IN idcandidate INT(11), IN skillpossessed varchar(10))
BEGIN
insert into candidateskills(idcandidate ,skillpossessed) values(idcandidate ,skillpossessed);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_hospitaldetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hospitaldetails`(IN hospitalid INT(11), IN hospitalname varchar(45), IN address varchar(45), IN telephonenumber varchar(15))
BEGIN
insert into hospitaldetails(hospitalid, hospitalname, address, telephonenumber) values(hospitalid, hospitalname, address, telephonenumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_interviewdetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_interviewdetails`(IN interviewid INT(11), IN candidatenumber INT(11), IN hospitalnumber INT(11), IN positionnumber INT(11), IN date date, IN jobOffered varchar(5))
BEGIN
insert into interviewdetails(interviewid ,candidatenumber, hospitalnumber, positionnumber, date, jobOffered) values(interviewid ,candidatenumber, hospitalnumber, positionnumber, date, jobOffered);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_positiondetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_positiondetails`(IN positionid INT(11), IN type varchar(45), IN hospital INT(11))
BEGIN
insert into positiondetails(positionid ,type ,hospital) values(positionid ,type ,hospital);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_positionskills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_positionskills`(IN idpositions INT(11), IN skillrequired varchar(10))
BEGIN
insert into positionskills(idpositions ,skillrequired) values(idpositions ,skillrequired);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_skills`(IN skillid varchar(10), IN skillname varchar(45))
BEGIN
insert into skills(skillid ,skillname) values(skillid ,skillname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q1`(IN hospitalidentification INT(11))
BEGIN
SELECT *
FROM hospitaldetails
WHERE hospitalid = hospitalidentification;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q10`()
BEGIN
SELECT I.candidatenumber, C.firstname
FROM interviewdetails I, candidatedetails C
WHERE I.candidatenumber = C.candidateid
GROUP BY I.candidatenumber
HAVING count(*)>1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q11`()
BEGIN
SELECT P.*, H.hospitalname
FROM positiondetails P, hospitaldetails H
WHERE P.hospital = H.hospitalid
ORDER BY H.hospitalname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q2`(IN nameofhospital varchar(45))
BEGIN
SELECT *
FROM hospitaldetails
WHERE hospitalname = nameofhospital;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q3`(IN candidateidentification INT(11))
BEGIN
SELECT *
FROM candidatedetails
WHERE candidateid = candidateidentification;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q4`(IN familyname varchar(45))
BEGIN
SELECT *
FROM candidatedetails
WHERE surname = familyname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q5`(IN posid INT(11))
BEGIN
SELECT distinct C.*
FROM candidatedetails C, positiondetails P, candidateskills CS, positionskills PS
WHERE C.candidateid = CS.idcandidate AND P.positionid = PS.idpositions AND CS.skillpossessed = PS.skillrequired AND P.positionid = posid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q6`()
BEGIN
SELECT count(*) AcceptedCandidates
FROM interviewdetails
WHERE jobOffered = "YES";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q7`(IN skillsname VARCHAR(20))
BEGIN
SELECT P.type
FROM positiondetails P, positionskills PS, skills S
WHERE PS.idpositions = P.positionid AND S.skillid = PS.skillrequired AND S.skillname = skillsname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q8`()
BEGIN
SELECT count(*) NursingPositions
FROM positionskills PS, skills S, positiondetails P
WHERE P.positionid = PS.idpositions AND PS.skillrequired = S.skillid AND S.skillname = "Nursing";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q9`(IN requireddate date)
BEGIN
SELECT *
FROM interviewdetails I
WHERE date = requireddate;
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

-- Dump completed on 2019-11-20  1:05:23
