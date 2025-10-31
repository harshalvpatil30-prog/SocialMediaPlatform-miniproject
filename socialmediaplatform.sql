-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2024 at 06:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialmedia`
--
CREATE DATABASE IF NOT EXISTS `socialmedia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `socialmedia`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Content` text NOT NULL,
  `Post` int(11) NOT NULL,
  `User` int(11) NOT NULL,
  `DateTime` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `Content`, `Post`, `User`, `DateTime`) VALUES
(1, 'test', 7, 5, '2024-04-11  20:24:47'),
(2, 'Hello', 7, 1, '2024-04-11  20:28:26'),
(3, 'Hi', 7, 4, '2024-04-11  20:29:31'),
(4, 'User 3 says hello', 7, 3, '2024-04-11  20:32:47'),
(5, 'hi', 2, 2, '2024-04-11  20:34:38'),
(6, 'hi2', 2, 2, '2024-04-11  20:34:47'),
(7, 'User 6 says hello everyone', 2, 6, '2024-04-11  20:41:14'),
(11, 'Welcome!', 2, 8, '2024-04-11  21:35:11'),
(12, 'hello', 13, 9, '2024-08-15  01:24:51'),
(13, 'hello back', 13, 1, '2024-08-15  01:28:17'),
(14, 'Well done eng ❤️', 12, 1, '2024-08-15  03:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `User` int(11) NOT NULL,
  `Friend` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`User`, `Friend`) VALUES
(3, 1),
(3, 2),
(5, 2),
(5, 3),
(5, 4),
(5, 1),
(4, 1),
(4, 2),
(6, 1),
(8, 3),
(8, 5),
(2, 3),
(2, 4),
(2, 6),
(8, 1),
(8, 2),
(8, 4),
(8, 6),
(9, 8),
(9, 5),
(9, 4),
(9, 3),
(9, 2),
(9, 1),
(9, 6),
(1, 9),
(1, 8),
(1, 6),
(1, 5),
(1, 4),
(1, 3),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `User` int(11) NOT NULL,
  `Post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`User`, `Post`) VALUES
(5, 2),
(5, 4),
(5, 3),
(5, 10),
(5, 9),
(2, 2),
(3, 2),
(4, 2),
(5, 5),
(5, 6),
(1, 7),
(5, 7),
(4, 7),
(3, 7),
(6, 2),
(1, 5),
(8, 12),
(2, 3),
(2, 8),
(9, 3),
(9, 2),
(9, 2),
(9, 2),
(9, 2),
(9, 2),
(9, 2),
(1, 13),
(1, 2),
(1, 12),
(1, 6),
(9, 14),
(9, 13);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Content` text NOT NULL,
  `User` int(11) NOT NULL,
  `DateTime` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `Content`, `User`, `DateTime`) VALUES
(2, 'User 1 first post', 1, '2024-04-11  19:04:40'),
(3, 'User 1 second post', 1, '2024-04-11  19:04:51'),
(4, 'User 1 third post', 1, '2024-04-11  19:04:59'),
(5, 'User 2 first post', 2, '2024-04-11  19:05:53'),
(6, 'User 2 second post', 2, '2024-04-11  19:06:02'),
(7, 'User 3 third post', 2, '2024-04-11  19:06:11'),
(8, 'User 3 first post', 3, '2024-04-11  19:07:20'),
(9, 'User 3 second post', 3, '2024-04-11  19:07:28'),
(10, 'User 3 third post', 3, '2024-04-11  19:07:35'),
(11, 'Hello!', 8, '2024-04-11  21:34:44'),
(12, 'This is our social media platform project\nwith java swing java oop and MySQL for\nthe database.\nDon t forget to like & Subscribe :)', 8, '2024-04-11  21:38:12'),
(13, 'test', 9, '2024-08-15  01:24:25'),
(14, 'testing', 1, '2024-08-15  03:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(1, 'User', '1', 'user1', '123123'),
(2, 'User', '2', '2', '222222'),
(3, 'User', '3', '3', '333333'),
(4, 'User', '5', '5', '555555'),
(5, 'User', '4', '4', '444444'),
(6, 'User', '6', '6', '666666'),
(8, 'Bob', ' ', 'techwithbob', '123456'),
(9, 'b', 'b', 'b', 'bbbbbb');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
