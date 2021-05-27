SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--


DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(12, 'Mukul', 'mukul@gmail.com', 'mukul', '$5$rounds=535000$6PJhbzFlfJbcQbza$FbrPa3qqk1RJ5MSffRLO6LrQJXbgO8SudFuBpNf.wR7', '', '2018-07-23 14:09:14', '0', 'yes'),
(9, 'Nur Mohsin', 'mohsin@gmail.com', 'mohsin', '$5$rounds=535000$EnLkwqfGWGcWklRL$q9PbYw/TVXSzs.QpgUouZ3.6BzaPG2eLHkTyv.Qx80D', '123456789022', '2018-07-21 06:47:57', '1', 'yes'),
(14, 'Nur Mohsin', 'khan@gmail.com', 'khan', '$5$rounds=535000$wLKTQexvPQHueUsK$aFrFUXBHjrrAH61EFiYgj8cZECaaz8y6S5XS/zkkHw9', '', '2018-09-07 09:02:35', '0', 'yes'),
(13, 'Robin', 'robin@gmail.com', 'robin', '$5$rounds=535000$uiZc/VCwwa3XCTTe$Ec.JOjy4GkjpAXHtAvGt6pSc6KszajHgcyZy8v6Ivk1', '', '2018-07-26 12:36:57', '0', 'yes'),
(15, 'Sujon', 'sujon@yahoo.com', 'sujons', '$5$rounds=535000$aGykDT1yrocgTaDt$p2dDAMDz9g3N6o/Jj7QJY9B6NnMlUot.DCq/LOsCS13', '89345793753', '2018-09-08 13:58:36', '0', 'yes');
COMMIT;