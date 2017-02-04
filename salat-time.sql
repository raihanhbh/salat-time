/*
SQLyog Community v12.2.6 (32 bit)
MySQL - 10.1.21-MariaDB : Database - salat-time
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`salat-time` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `salat-time`;

/*Table structure for table `mosques` */

DROP TABLE IF EXISTS `mosques`;

CREATE TABLE `mosques` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `addedBy` varchar(100) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `mosques` */

insert  into `mosques`(`id`,`title`,`description`,`location`,`city`,`country`,`addedBy`,`updatedAt`) values 
(1,'Baitul Ma\'mur',NULL,'Dhaka','Dhaka','Bangladesh','Admin','2017-02-04 23:17:55'),
(2,'Baitul Mukarram','National Mosque of Bangladesh','Dhaka','Dhaka','Bangladesh','admin','2017-02-04 23:24:24'),
(3,'Baitul Ma\'mur',NULL,'Dhaka','Dhaka','Bangladesh',NULL,NULL),
(4,'Baitul Ma\'mur',NULL,'Dhaka','Dhaka','Bangladesh','Admin','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
