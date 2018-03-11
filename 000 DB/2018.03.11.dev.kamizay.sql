-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 11, 2018 at 07:14 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamizay`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `id_lst_album_types` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL,
  `modified` timestamp NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `biographies`
--

DROP TABLE IF EXISTS `biographies`;
CREATE TABLE IF NOT EXISTS `biographies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_musicians` int(11) NOT NULL,
  `notes` text NOT NULL,
  `created` timestamp NOT NULL,
  `updated` timestamp NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discographies`
--

DROP TABLE IF EXISTS `discographies`;
CREATE TABLE IF NOT EXISTS `discographies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_songs` int(11) DEFAULT NULL,
  `id_musicians` int(11) NOT NULL,
  `id_lst_musician_roles` int(11) NOT NULL,
  `notes` text,
  `created` timestamp NOT NULL,
  `updated` timestamp NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lst_album_type`
--

DROP TABLE IF EXISTS `lst_album_type`;
CREATE TABLE IF NOT EXISTS `lst_album_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lst_musician_roles`
--

DROP TABLE IF EXISTS `lst_musician_roles`;
CREATE TABLE IF NOT EXISTS `lst_musician_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lst_music_types`
--

DROP TABLE IF EXISTS `lst_music_types`;
CREATE TABLE IF NOT EXISTS `lst_music_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lst_user_roles`
--

DROP TABLE IF EXISTS `lst_user_roles`;
CREATE TABLE IF NOT EXISTS `lst_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `musicians`
--

DROP TABLE IF EXISTS `musicians`;
CREATE TABLE IF NOT EXISTS `musicians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `stagename` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `dod` date DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_albums` int(11) DEFAULT NULL,
  `id_lst_music_types` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `notes` text,
  `created` timestamp NOT NULL,
  `updated` timestamp NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_lst_user_roles` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_uindex` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
