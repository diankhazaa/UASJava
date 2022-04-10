/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.5-10.4.17-MariaDB : Database - db_uasrs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_uasrs` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_uasrs`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

insert  into `admin`(`id`,`password`,`username`) values (1,'Nurul123','dian');

/*Table structure for table `obat` */

DROP TABLE IF EXISTS `obat`;

CREATE TABLE `obat` (
  `id_o` int(11) NOT NULL AUTO_INCREMENT,
  `nama_obat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_o`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `obat` */

insert  into `obat`(`id_o`,`nama_obat`) values (1,'Paratusin');

/*Table structure for table `pasien` */

DROP TABLE IF EXISTS `pasien`;

CREATE TABLE `pasien` (
  `id_ps` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `no_tlp` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_ps`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pasien` */

insert  into `pasien`(`id_ps`,`alamat`,`jk`,`nama`,`no_tlp`,`ttl`) values (1,'Cilacap','Perempuan','Rania Koerun Najmi','081234567890','2015-12-28');

/*Table structure for table `perawat` */

DROP TABLE IF EXISTS `perawat`;

CREATE TABLE `perawat` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id_p`),
  UNIQUE KEY `UK_1hlf5cffxbf1692xodrdtn93w` (`email`) USING HASH,
  UNIQUE KEY `UK_q9ke7g0dxo1bshk9nc2iu6j68` (`username`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `perawat` */

insert  into `perawat`(`id_p`,`email`,`jk`,`nama`,`no_tlp`,`password`,`username`) values (1,'sblsania@gmail.com','Perempuan','Sabila Noor Sania','098765432123','1234','sabila');

/*Table structure for table `periksa` */

DROP TABLE IF EXISTS `periksa`;

CREATE TABLE `periksa` (
  `id_r` int(11) NOT NULL AUTO_INCREMENT,
  `catatan` varchar(255) DEFAULT NULL,
  `harga_obat` int(11) DEFAULT NULL,
  `harga_periksa` int(11) DEFAULT NULL,
  `keluhan` varchar(255) DEFAULT NULL,
  `np` varchar(255) DEFAULT NULL,
  `obat` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_r`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `periksa` */

insert  into `periksa`(`id_r`,`catatan`,`harga_obat`,`harga_periksa`,`keluhan`,`np`,`obat`,`tanggal`,`total`) values (1,'sudah',3000,30000,'Pilek, demam','Rania Koerun Najmi','Paratusin','2022-04-10',33000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
