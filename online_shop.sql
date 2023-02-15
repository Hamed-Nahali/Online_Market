-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2023 at 12:50 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online shop`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `checkUserNamePassword`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkUserNamePassword` (IN `inputusername` VARCHAR(250), IN `inputpassword` VARCHAR(250))   SELECT * FROM singin WHERE singin.username = inputusername AND singin.password = inputpassword$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `password` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(250) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`password`, `email`) VALUES
('amir123', 'amir@gmail.com'),
('ali123', 'ali@gmail.com'),
('reza123', 'reza@gmail.com'),
('sara123', 'sara@gmail.com'),
('asal123', 'asal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `oid` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `oname` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `ocount` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `oprice` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `oname`, `ocount`, `oprice`) VALUES
('111', 'beautybursh', '5', '300'),
('222', 'beautybursh1', '7', '600'),
('333', 'beautybursh2', '4', '400');

-- --------------------------------------------------------

--
-- Table structure for table `ourproducts`
--

DROP TABLE IF EXISTS `ourproducts`;
CREATE TABLE IF NOT EXISTS `ourproducts` (
  `pid` varchar(250) NOT NULL,
  `pname` varchar(250) NOT NULL,
  `pcount` varchar(250) NOT NULL,
  `pprice` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ourproducts`
--

INSERT INTO `ourproducts` (`pid`, `pname`, `pcount`, `pprice`) VALUES
('111', 'beautybursh', '5', '300'),
('222', 'beautybursh1', '7', '600'),
('333', 'beautybursh2', '4', '400');

-- --------------------------------------------------------

--
-- Table structure for table `singin`
--

DROP TABLE IF EXISTS `singin`;
CREATE TABLE IF NOT EXISTS `singin` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `singin`
--

INSERT INTO `singin` (`username`, `password`, `email`) VALUES
('amir', 'amir123', 'amir@gmail.com'),
('ali', 'ali123', 'ali@gmail.com'),
('reza', 'reza123', 'reza@gmail.com'),
('sara', 'sara123', 'sara@gmail.com'),
('asal', 'asal123', 'asal@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
