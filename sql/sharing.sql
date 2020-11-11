/*
SQLyog Ultimate v12.08 (32 bit)
MySQL - 5.7.17-log : Database - sharding
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sharding` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sharding`;

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

insert  into `course_1`(`cid`,`cname`,`user_id`,`cstatus`) values (533228157801594880,'java2',100,'Normal2'),(533228157830955008,'java4',100,'Normal4'),(533228157860315136,'java6',100,'Normal6'),(533228157885480960,'java8',100,'Normal8'),(533228157906452480,'java10',100,'Normal10');

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

insert  into `course_2`(`cid`,`cname`,`user_id`,`cstatus`) values (533228157445079041,'java1',100,'Normal1'),(533228157814177793,'java3',100,'Normal3'),(533228157843537921,'java5',100,'Normal5'),(533228157872898049,'java7',100,'Normal7'),(533228157898063873,'java9',100,'Normal9');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
