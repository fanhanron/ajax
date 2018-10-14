/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.5.53 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '姓名',
  `sex` int(5) NOT NULL COMMENT '性别',
  `age` int(5) NOT NULL COMMENT '年龄',
  `create_time` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`sex`,`age`,`create_time`) values 
(1,'fan',1,55,1539406744),
(2,'jack',1,25,1539406779),
(3,'xiaoming',1,33,1539406793),
(4,'laowang',1,50,1539406801),
(5,'julia',0,22,1539406807),
(6,'pangda',1,53,1539406825),
(53,'666',0,55,1539542177),
(40,'测试2',1,22,1539537392),
(39,'测试1',0,11,1539537384),
(38,'测试',0,66,1539537157),
(42,'阿是',1,55,1539537403),
(51,'fdf',1,6,1539541738),
(44,'更改',0,25,1539537411),
(45,'地方',1,55,1539537424),
(46,'飞啊',1,5,1539537447),
(50,'ajax',1,5,1539541735);

/*Table structure for table `user_identity` */

DROP TABLE IF EXISTS `user_identity`;

CREATE TABLE `user_identity` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `identity_number` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user_identity` */

insert  into `user_identity`(`id`,`identity_number`) values 
(1,'111'),
(2,'222'),
(3,'3'),
(4,'444'),
(5,'555'),
(6,'666');

/* Procedure structure for procedure `proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proc`()
BEGIN 
 SELECT * FROM user;
 END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
