# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Database: RetailRadio
# Generation Time: 2016-03-18 12:19:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `fileId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) DEFAULT NULL,
  `fileType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Store`;

CREATE TABLE `Store` (
  `storeId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `storeName` varchar(255) DEFAULT NULL,
  `storeActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;

INSERT INTO `Store` (`storeId`, `storeName`, `storeActive`)
VALUES
	(1,'storeOne',1),
	(2,'storeTwo',1),
	(3,'storeThree',1);

/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UpNext
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UpNext`;

CREATE TABLE `UpNext` (
  `upNextId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileId` int(11) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  `played` datetime DEFAULT NULL,
  PRIMARY KEY (`upNextId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
