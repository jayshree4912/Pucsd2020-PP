USE acl;

-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: acl
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.16.04.1


--
-- Table structure for table `GroupInfo`
--

DROP TABLE IF EXISTS `GroupInfo`;

CREATE TABLE `GroupInfo` (
  `Gid` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GroupInfo`
--

LOCK TABLES `GroupInfo` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `TestAclEntry`
--

DROP TABLE IF EXISTS `TestAclEntry`;
CREATE TABLE `TestAclEntry` (
  `Acl_id` int(11) NOT NULL AUTO_INCREMENT,
  `PermissionId` int(11) NOT NULL,
  `Principal` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`Acl_id`),
  KEY `PermissionId` (`PermissionId`),
  CONSTRAINT `TestAclEntry_ibfk_1` FOREIGN KEY (`PermissionId`) REFERENCES `permission` (`PermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TestAclEntry`
--

LOCK TABLES `TestAclEntry` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
CREATE TABLE `UserGroup` (
  `gid` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gid`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `UserGroup_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `GroupInfo` (`Gid`),
  CONSTRAINT `UserGroup_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `fileAccessPermissions`
--

DROP TABLE IF EXISTS `fileAccessPermissions`;

CREATE TABLE `fileAccessPermissions` (
  `Fid` int(11) NOT NULL,
  `PermId` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Fid`,`PermId`,`uid`),
  KEY `PermId` (`PermId`),
  KEY `uid` (`uid`),
  CONSTRAINT `fileAccessPermissions_ibfk_1` FOREIGN KEY (`Fid`) REFERENCES `file` (`fid`),
  CONSTRAINT `fileAccessPermissions_ibfk_2` FOREIGN KEY (`PermId`) REFERENCES `permission` (`PermissionId`),
  CONSTRAINT `fileAccessPermissions_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `user_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `fileAccessPermissions`
--

LOCK TABLES `fileAccessPermissions` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `PermissionId` int(11) NOT NULL AUTO_INCREMENT,
  `Permissions` varchar(32) NOT NULL,
  PRIMARY KEY (`PermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(25) NOT NULL,
  `last_name` char(25) NOT NULL,
  `email` char(64) NOT NULL,
  `password` varbinary(128) NOT NULL,
  `contact_number` char(15) NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
UNLOCK TABLES;

