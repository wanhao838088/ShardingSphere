/*
SQLyog Ultimate v12.08 (32 bit)
MySQL - 5.7.17-log : Database - edu_db_1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`edu_db_1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `edu_db_1`;

/*Table structure for table `course_1` */

DROP TABLE IF EXISTS `course_1`;

CREATE TABLE `course_1` (
  `cid` bigint(20) NOT NULL COMMENT 'id',
  `cname` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `cstatus` varchar(20) DEFAULT NULL COMMENT '课程状态',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_1` */

/*Table structure for table `course_2` */

DROP TABLE IF EXISTS `course_2`;

CREATE TABLE `course_2` (
  `cid` bigint(20) NOT NULL COMMENT 'id',
  `cname` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `cstatus` varchar(20) DEFAULT NULL COMMENT '课程状态',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_2` */

insert  into `course_2`(`cid`,`cname`,`user_id`,`cstatus`) values (533250844427026433,'javademo1',0,'Normal1'),(533250844796125185,'javademo1',2,'Normal1'),(533250844825485313,'javademo1',4,'Normal1'),(533250844850651137,'javademo1',6,'Normal1'),(533250844875816961,'javademo1',8,'Normal1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
