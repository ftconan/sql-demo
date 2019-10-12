-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: TUTORIALS
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clone_tbl`
--

DROP TABLE IF EXISTS `clone_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clone_tbl` (
  `tutorial_id` int(11) NOT NULL AUTO_INCREMENT,
  `tutorial_title` varchar(100) NOT NULL,
  `tutorial_author` varchar(40) NOT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`tutorial_id`),
  UNIQUE KEY `AUTHOR_INDEX` (`tutorial_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clone_tbl`
--

LOCK TABLES `clone_tbl` WRITE;
/*!40000 ALTER TABLE `clone_tbl` DISABLE KEYS */;
INSERT INTO `clone_tbl` VALUES (1,'Learn PHP','John Poul','2019-10-12'),(2,'Learn MySQL','Abdul S','2019-10-12'),(4,'Java Tutorial','Sanjay','2007-05-06');
/*!40000 ALTER TABLE `clone_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insect`
--

DROP TABLE IF EXISTS `insect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `origin` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insect`
--

LOCK TABLES `insect` WRITE;
/*!40000 ALTER TABLE `insect` DISABLE KEYS */;
INSERT INTO `insect` VALUES (1,'housefly','2001-09-10','kitchen'),(2,'millipede','2001-09-10','driveway'),(3,'grasshopper','2001-09-10','front yard');
/*!40000 ALTER TABLE `insect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_tbl`
--

DROP TABLE IF EXISTS `person_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_tbl` (
  `last_name` char(20) NOT NULL,
  `first_name` char(20) NOT NULL,
  `sex` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_tbl`
--

LOCK TABLES `person_tbl` WRITE;
/*!40000 ALTER TABLE `person_tbl` DISABLE KEYS */;
INSERT INTO `person_tbl` VALUES ('Jay','Thomas',NULL);
/*!40000 ALTER TABLE `person_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcount_tbl`
--

DROP TABLE IF EXISTS `tcount_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcount_tbl` (
  `tcount_id` int(11) NOT NULL AUTO_INCREMENT,
  `tutorial_author` varchar(50) NOT NULL,
  `tutorial_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`tcount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcount_tbl`
--

LOCK TABLES `tcount_tbl` WRITE;
/*!40000 ALTER TABLE `tcount_tbl` DISABLE KEYS */;
INSERT INTO `tcount_tbl` VALUES (1,'mahran',20),(2,'mahnaz',NULL),(3,'Jen',NULL),(4,'Gill',20),(5,'John Poul',1),(6,'Sanjay',1);
/*!40000 ALTER TABLE `tcount_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials_tbl`
--

DROP TABLE IF EXISTS `tutorials_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorials_tbl` (
  `tutorial_id` int(11) NOT NULL AUTO_INCREMENT,
  `tutorial_title` varchar(100) NOT NULL,
  `tutorial_author` varchar(40) NOT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`tutorial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials_tbl`
--

LOCK TABLES `tutorials_tbl` WRITE;
/*!40000 ALTER TABLE `tutorials_tbl` DISABLE KEYS */;
INSERT INTO `tutorials_tbl` VALUES (1,'Learn PHP','John Poul','2019-10-12'),(2,'Learn MySQL','Abdul S','2019-10-12'),(4,'Java Tutorial','Sanjay','2007-05-06');
/*!40000 ALTER TABLE `tutorials_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-12 17:52:26
