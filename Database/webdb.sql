/*
SQLyog Community v11.51 (32 bit)
MySQL - 5.5.42 : Database - webdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `webdb`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

LOCK TABLES `admin` WRITE;

insert  into `admin`(`uname`,`password`) values ('admin','admin');

UNLOCK TABLES;

/*Table structure for table `compose` */

DROP TABLE IF EXISTS `compose`;

CREATE TABLE `compose` (
  `id` int(50) NOT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `cc` varchar(1000) DEFAULT NULL,
  `bcc` varchar(1000) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `files` blob,
  `frommail` varchar(1000) DEFAULT NULL,
  `attached` varchar(30) DEFAULT 'no',
  `vstatus` varchar(30) DEFAULT 'new',
  `rstatus` varchar(30) DEFAULT 'no',
  `mstatus` varchar(39) DEFAULT 'inbox',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `compose` */

LOCK TABLES `compose` WRITE;

UNLOCK TABLES;

/*Table structure for table `domain_list` */

DROP TABLE IF EXISTS `domain_list`;

CREATE TABLE `domain_list` (
  `sno` int(11) NOT NULL,
  `domain_name` varchar(500) NOT NULL,
  PRIMARY KEY (`domain_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `domain_list` */

LOCK TABLES `domain_list` WRITE;

UNLOCK TABLES;

/*Table structure for table `harm_users` */

DROP TABLE IF EXISTS `harm_users`;

CREATE TABLE `harm_users` (
  `sno` int(11) NOT NULL,
  `harm_user` varchar(500) NOT NULL,
  PRIMARY KEY (`harm_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `harm_users` */

LOCK TABLES `harm_users` WRITE;

UNLOCK TABLES;

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(1000) DEFAULT NULL,
  `uname` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `dob` varchar(1000) DEFAULT NULL,
  `gender` varchar(1000) DEFAULT NULL,
  `contact` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

LOCK TABLES `register` WRITE;

UNLOCK TABLES;

/*Table structure for table `spamreport` */

DROP TABLE IF EXISTS `spamreport`;

CREATE TABLE `spamreport` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `fromemail` varchar(500) DEFAULT NULL,
  `userid` varchar(500) DEFAULT NULL,
  `words` varchar(1000) DEFAULT NULL,
  `status1` varchar(20) DEFAULT 'new',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `spamreport` */

LOCK TABLES `spamreport` WRITE;

UNLOCK TABLES;

/*Table structure for table `swords` */

DROP TABLE IF EXISTS `swords`;

CREATE TABLE `swords` (
  `sno` int(11) NOT NULL,
  `sword` varchar(500) NOT NULL,
  PRIMARY KEY (`sword`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `swords` */

LOCK TABLES `swords` WRITE;

insert  into `swords`(`sno`,`sword`) values (1,'offers');

UNLOCK TABLES;

/*Table structure for table `threshold` */

DROP TABLE IF EXISTS `threshold`;

CREATE TABLE `threshold` (
  `threshold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `threshold` */

LOCK TABLES `threshold` WRITE;

insert  into `threshold`(`threshold`) values (1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
