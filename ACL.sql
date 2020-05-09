-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: acl
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `GroupInfo`
--
use acl;
DROP TABLE IF EXISTS `GroupInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupInfo` (
  `Gid` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(20) NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupInfo`
--

LOCK TABLES `GroupInfo` WRITE;
/*!40000 ALTER TABLE `GroupInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestAclEntry`
--

DROP TABLE IF EXISTS `TestAclEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TestAclEntry` (
  `Acl_id` int(11) NOT NULL AUTO_INCREMENT,
  `PermissionId` int(11) NOT NULL,
  `Principal` varchar(50) NOT NULL,
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`Acl_id`),
  KEY `PermissionId` (`PermissionId`),
  CONSTRAINT `TestAclEntry_ibfk_1` FOREIGN KEY (`PermissionId`) REFERENCES `permission` (`PermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestAclEntry`
--

LOCK TABLES `TestAclEntry` WRITE;
/*!40000 ALTER TABLE `TestAclEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `TestAclEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `gid` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gid`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `UserGroup_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `GroupInfo` (`Gid`),
  CONSTRAINT `UserGroup_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `UserInfo` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;
/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInfo` (
  `Uid` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(20) NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileAccessPermissions`
--

DROP TABLE IF EXISTS `fileAccessPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileAccessPermissions` (
  `Fid` int(11) NOT NULL,
  `PermId` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Fid`,`PermId`,`uid`),
  KEY `PermId` (`PermId`),
  KEY `uid` (`uid`),
  CONSTRAINT `fileAccessPermissions_ibfk_1` FOREIGN KEY (`Fid`) REFERENCES `file` (`fid`),
  CONSTRAINT `fileAccessPermissions_ibfk_2` FOREIGN KEY (`PermId`) REFERENCES `permission` (`PermissionId`),
  CONSTRAINT `fileAccessPermissions_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `UserInfo` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileAccessPermissions`
--

LOCK TABLES `fileAccessPermissions` WRITE;
/*!40000 ALTER TABLE `fileAccessPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileAccessPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `PermissionId` int(11) NOT NULL AUTO_INCREMENT,
  `Permissions` varchar(32) NOT NULL,
  PRIMARY KEY (`PermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
