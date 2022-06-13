-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 13, 2022 at 07:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petson`
--

-- --------------------------------------------------------

--
-- Table structure for table `AccountBalance`
--

CREATE TABLE `AccountBalance` (
  `cardnumber` varchar(100) DEFAULT NULL,
  `balance` int(225) DEFAULT 10000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AccountBalance`
--

INSERT INTO `AccountBalance` (`cardnumber`, `balance`) VALUES
('0170009573', 2158),
('0170078643', 10000),
('0170089090', 7810),
('01740012381', 10000),
('0174789000', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cardnumber`, `email`, `password`) VALUES
(15, '0170009573', 'amoni@gmail.com', 'kjdkafdjkfa'),
(18, '0170089090', 'kahesh@gmail.com', '6574'),
(19, '0170078643', 'bea@gmail.com', '1578petson');

-- --------------------------------------------------------

--
-- Table structure for table `CustomerDetails`
--

CREATE TABLE `CustomerDetails` (
  `cardnumber` varchar(100) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL CHECK (`Gender` in ('Male','Female','Unknown'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CustomerDetails`
--

INSERT INTO `CustomerDetails` (`cardnumber`, `Fname`, `Lname`, `Email`, `Adress`, `Gender`) VALUES
('0170009573', 'Amoni', 'Bilungi', 'amoni@gmail.com', 'singida', 'male'),
('0170078643', 'Beatrice ', 'kisenya', 'beatrice@gmail.com', 'Tabora', 'female'),
('0170089090', 'Kaheshi', 'vedastus', 'kahesh@gmail.com', 'kigoma', 'male'),
('01740012381', 'Petson ', 'Vedastus', 'petpark@gmail.com', 'Kigoma', 'male'),
('0174789000', 'Paul', 'sikubali', 'paul@gmail.com', 'kigoma', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `CustomerStatment`
--

CREATE TABLE `CustomerStatment` (
  `id` int(11) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `statment` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CustomerStatment`
--

INSERT INTO `CustomerStatment` (`id`, `cardnumber`, `statment`, `time`) VALUES
(204, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-05 22:44:36'),
(205, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 9600,YESBANK ULIPO TUPO', '2022-06-05 22:44:36'),
(206, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-05 23:08:51'),
(207, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 9500,YESBANK ULIPO TUPO', '2022-06-05 23:08:51'),
(208, '0170089090', 'Kias cha TZS 1400 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-05 23:09:15'),
(209, '0170089090', 'kiasi cha TZS    1400  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8100,YESBANK ULIPO TUPO', '2022-06-05 23:09:15'),
(210, '0170089090', 'Kias cha TZS 1400 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-05 23:14:40'),
(211, '0170089090', 'kiasi cha TZS    1400  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6700,YESBANK ULIPO TUPO', '2022-06-05 23:14:40'),
(212, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 07:53:59'),
(213, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6600,YESBANK ULIPO TUPO', '2022-06-06 07:53:59'),
(214, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 08:41:47'),
(215, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6500,YESBANK ULIPO TUPO', '2022-06-06 08:41:48'),
(216, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:18:32'),
(217, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6400,YESBANK ULIPO TUPO', '2022-06-06 13:18:32'),
(218, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:18:44'),
(219, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6300,YESBANK ULIPO TUPO', '2022-06-06 13:18:44'),
(220, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:26:59'),
(221, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6200,YESBANK ULIPO TUPO', '2022-06-06 13:27:00'),
(222, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:28:16'),
(223, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6100,YESBANK ULIPO TUPO', '2022-06-06 13:28:16'),
(224, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:29:37'),
(225, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 6000,YESBANK ULIPO TUPO', '2022-06-06 13:29:37'),
(226, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:33:47'),
(227, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5900,YESBANK ULIPO TUPO', '2022-06-06 13:33:48'),
(228, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:36:18'),
(229, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5800,YESBANK ULIPO TUPO', '2022-06-06 13:36:18'),
(230, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:44:19'),
(231, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5700,YESBANK ULIPO TUPO', '2022-06-06 13:44:19'),
(232, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:45:05'),
(233, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5600,YESBANK ULIPO TUPO', '2022-06-06 13:45:05'),
(234, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:51:27'),
(235, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5500,YESBANK ULIPO TUPO', '2022-06-06 13:51:27'),
(236, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:52:27'),
(237, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5400,YESBANK ULIPO TUPO', '2022-06-06 13:52:27'),
(238, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:52:33'),
(239, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 5300,YESBANK ULIPO TUPO', '2022-06-06 13:52:33'),
(240, '0170089090', 'Kias cha TZS 1400 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:53:04'),
(241, '0170089090', 'kiasi cha TZS    1400  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3900,YESBANK ULIPO TUPO', '2022-06-06 13:53:05'),
(242, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 13:54:08'),
(243, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3800,YESBANK ULIPO TUPO', '2022-06-06 13:54:08'),
(244, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:11:11'),
(245, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 3700,YESBANK ULIPO TUPO', '2022-06-06 14:11:11'),
(246, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:39:10'),
(247, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3600,YESBANK ULIPO TUPO', '2022-06-06 14:39:10'),
(248, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:39:28'),
(249, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3500,YESBANK ULIPO TUPO', '2022-06-06 14:39:28'),
(250, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:39:56'),
(251, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3400,YESBANK ULIPO TUPO', '2022-06-06 14:39:56'),
(252, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:52:06'),
(253, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3300,YESBANK ULIPO TUPO', '2022-06-06 14:52:06'),
(254, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:52:40'),
(255, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3200,YESBANK ULIPO TUPO', '2022-06-06 14:52:40'),
(256, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:53:00'),
(257, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3100,YESBANK ULIPO TUPO', '2022-06-06 14:53:00'),
(258, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:53:51'),
(259, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 3000,YESBANK ULIPO TUPO', '2022-06-06 14:53:51'),
(260, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:56:25'),
(261, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2900,YESBANK ULIPO TUPO', '2022-06-06 14:56:25'),
(262, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:58:25'),
(263, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2800,YESBANK ULIPO TUPO', '2022-06-06 14:58:26'),
(264, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:58:33'),
(265, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2700,YESBANK ULIPO TUPO', '2022-06-06 14:58:33'),
(266, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 14:58:53'),
(267, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2600,YESBANK ULIPO TUPO', '2022-06-06 14:58:53'),
(268, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:06:24'),
(269, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2500,YESBANK ULIPO TUPO', '2022-06-06 15:06:24'),
(270, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:06:33'),
(271, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2400,YESBANK ULIPO TUPO', '2022-06-06 15:06:33'),
(272, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:07:07'),
(273, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 2300,YESBANK ULIPO TUPO', '2022-06-06 15:07:08'),
(274, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:08:13'),
(275, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2200,YESBANK ULIPO TUPO', '2022-06-06 15:08:13'),
(276, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:08:52'),
(277, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2100,YESBANK ULIPO TUPO', '2022-06-06 15:08:52'),
(278, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:09:26'),
(279, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 2000,YESBANK ULIPO TUPO', '2022-06-06 15:09:26'),
(280, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:12:04'),
(281, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1900,YESBANK ULIPO TUPO', '2022-06-06 15:12:04'),
(282, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:12:11'),
(283, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1800,YESBANK ULIPO TUPO', '2022-06-06 15:12:12'),
(284, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:12:17'),
(285, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 1700,YESBANK ULIPO TUPO', '2022-06-06 15:12:17'),
(286, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:14:08'),
(287, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1600,YESBANK ULIPO TUPO', '2022-06-06 15:14:08'),
(288, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:14:34'),
(289, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1500,YESBANK ULIPO TUPO', '2022-06-06 15:14:34'),
(290, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:14:39'),
(291, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1400,YESBANK ULIPO TUPO', '2022-06-06 15:14:39'),
(292, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:14:47'),
(293, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1300,YESBANK ULIPO TUPO', '2022-06-06 15:14:48'),
(294, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:15:05'),
(295, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1200,YESBANK ULIPO TUPO', '2022-06-06 15:15:05'),
(296, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:15:21'),
(297, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1100,YESBANK ULIPO TUPO', '2022-06-06 15:15:21'),
(298, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:16:00'),
(299, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 1000,YESBANK ULIPO TUPO', '2022-06-06 15:16:00'),
(300, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:17:39'),
(301, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 900,YESBANK ULIPO TUPO', '2022-06-06 15:17:39'),
(302, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:20:30'),
(303, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 800,YESBANK ULIPO TUPO', '2022-06-06 15:20:30'),
(304, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:20:55'),
(305, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 700,YESBANK ULIPO TUPO', '2022-06-06 15:20:55'),
(306, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:21:48'),
(307, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 600,YESBANK ULIPO TUPO', '2022-06-06 15:21:48'),
(308, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:21:55'),
(309, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 500,YESBANK ULIPO TUPO', '2022-06-06 15:21:55'),
(310, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:22:00'),
(311, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 400,YESBANK ULIPO TUPO', '2022-06-06 15:22:00'),
(312, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:22:39'),
(313, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 300,YESBANK ULIPO TUPO', '2022-06-06 15:22:39'),
(314, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:23:11'),
(315, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 200,YESBANK ULIPO TUPO', '2022-06-06 15:23:11'),
(316, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 15:23:19'),
(317, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 100,YESBANK ULIPO TUPO', '2022-06-06 15:23:19'),
(318, '0170089090', 'Kias cha TZS 5 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:32:09'),
(319, '0170089090', 'kiasi cha TZS    5  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 95,YESBANK ULIPO TUPO', '2022-06-06 16:32:09'),
(320, '0170089090', 'Kias cha TZS 5 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:32:39'),
(321, '0170089090', 'kiasi cha TZS    5  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 90,YESBANK ULIPO TUPO', '2022-06-06 16:32:39'),
(322, '0170009573', 'Kias cha TZS 6 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:33:09'),
(323, '0170089090', 'kiasi cha TZS    6  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 84,YESBANK ULIPO TUPO', '2022-06-06 16:33:09'),
(324, '0170089090', 'Kias cha TZS 2 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:33:35'),
(325, '0170089090', 'kiasi cha TZS    2  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 82,YESBANK ULIPO TUPO', '2022-06-06 16:33:35'),
(326, '0170089090', 'Kias cha TZS 2 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:34:33'),
(327, '0170089090', 'kiasi cha TZS    2  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 80,YESBANK ULIPO TUPO', '2022-06-06 16:34:33'),
(328, '0170089090', 'Kias cha TZS 4 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:34:45'),
(329, '0170089090', 'kiasi cha TZS    4  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 76,YESBANK ULIPO TUPO', '2022-06-06 16:34:45'),
(330, '0170089090', 'Kias cha TZS 3 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:35:02'),
(331, '0170089090', 'kiasi cha TZS    3  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 73,YESBANK ULIPO TUPO', '2022-06-06 16:35:02'),
(332, '0170089090', 'Kias cha TZS 3 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:35:59'),
(333, '0170089090', 'kiasi cha TZS    3  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 70,YESBANK ULIPO TUPO', '2022-06-06 16:35:59'),
(334, '0170089090', 'Kias cha TZS 2 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:36:07'),
(335, '0170089090', 'kiasi cha TZS    2  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 68,YESBANK ULIPO TUPO', '2022-06-06 16:36:07'),
(336, '0170089090', 'Kias cha TZS 2 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:37:22'),
(337, '0170089090', 'kiasi cha TZS    2  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 66,YESBANK ULIPO TUPO', '2022-06-06 16:37:22'),
(338, '0170089090', 'Kias cha TZS 3 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:37:48'),
(339, '0170089090', 'kiasi cha TZS    3  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 63,YESBANK ULIPO TUPO', '2022-06-06 16:37:48'),
(340, '0170089090', 'Kias cha TZS 1 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 16:40:52'),
(341, '0170089090', 'kiasi cha TZS    1  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 62,YESBANK ULIPO TUPO', '2022-06-06 16:40:52'),
(342, '0170009573', 'Kias cha TZS 30 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 21:29:15'),
(343, '0170089090', 'kiasi cha TZS    30  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 32,YESBANK ULIPO TUPO', '2022-06-06 21:29:16'),
(344, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170078643,YESBANK ULIPO TUPO', '2022-06-06 22:14:17'),
(345, '0170078643', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 9900,YESBANK ULIPO TUPO', '2022-06-06 22:14:17'),
(346, '0170089090', 'Kias cha TZS 5000 kimewekwa kutoka kwenye account 0170078643,YESBANK ULIPO TUPO', '2022-06-06 22:16:11'),
(347, '0170078643', 'kiasi cha TZS    5000  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 4900,YESBANK ULIPO TUPO', '2022-06-06 22:16:11'),
(348, '0170078643', 'Kias cha TZS 5000 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 22:24:50'),
(349, '0170089090', 'kiasi cha TZS    5000  kimetumwa kwenye account no 0170078643 Salio lako jipya ni TSZ 132,YESBANK ULIPO TUPO', '2022-06-06 22:24:51'),
(350, '0170078643', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-06 22:25:44'),
(351, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170078643 Salio lako jipya ni TSZ 32,YESBANK ULIPO TUPO', '2022-06-06 22:25:44'),
(352, '0170009573', 'Kias cha TZS 3 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-08 19:30:46'),
(353, '0170089090', 'kiasi cha TZS    3  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 29,YESBANK ULIPO TUPO', '2022-06-08 19:30:47'),
(354, '0170009573', 'Kias cha TZS 1 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-08 19:31:27'),
(355, '0170089090', 'kiasi cha TZS    1  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 28,YESBANK ULIPO TUPO', '2022-06-08 19:31:27'),
(356, '0170009573', 'Kias cha TZS 1 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-08 22:22:16'),
(357, '0170089090', 'kiasi cha TZS    1  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 27,YESBANK ULIPO TUPO', '2022-06-08 22:22:16'),
(358, '0170009573', 'Kias cha TZS 2 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-08 22:23:53'),
(359, '0170089090', 'kiasi cha TZS    2  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 25,YESBANK ULIPO TUPO', '2022-06-08 22:23:53'),
(360, '0170009573', 'Kias cha TZS 5 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-08 22:24:15'),
(361, '0170089090', 'kiasi cha TZS    5  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 20,YESBANK ULIPO TUPO', '2022-06-08 22:24:15'),
(362, '0170009573', 'Kias cha TZS 10 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 07:07:47'),
(363, '0170089090', 'kiasi cha TZS    10  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 10,YESBANK ULIPO TUPO', '2022-06-13 07:07:47'),
(364, '0170089090', 'Kias cha TZS 10000 kimewekwa kutoka kwenye account 0170009573,YESBANK ULIPO TUPO', '2022-06-13 07:41:11'),
(365, '0170009573', 'kiasi cha TZS    10000  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 758,YESBANK ULIPO TUPO', '2022-06-13 07:41:11'),
(366, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 11:19:32'),
(367, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 9910,YESBANK ULIPO TUPO', '2022-06-13 11:19:32'),
(368, '0170009573', 'Kias cha TZS 1000 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 11:57:00'),
(369, '0170089090', 'kiasi cha TZS    1000  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 8910,YESBANK ULIPO TUPO', '2022-06-13 11:57:00'),
(370, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 15:40:12'),
(371, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 8810,YESBANK ULIPO TUPO', '2022-06-13 15:40:12'),
(372, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:40:11'),
(373, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8710,YESBANK ULIPO TUPO', '2022-06-13 16:40:11'),
(374, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:46:42'),
(375, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8610,YESBANK ULIPO TUPO', '2022-06-13 16:46:42'),
(376, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:47:34'),
(377, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8510,YESBANK ULIPO TUPO', '2022-06-13 16:47:34'),
(378, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:47:49'),
(379, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 8410,YESBANK ULIPO TUPO', '2022-06-13 16:47:49'),
(380, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:48:24'),
(381, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8310,YESBANK ULIPO TUPO', '2022-06-13 16:48:24'),
(382, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:48:48'),
(383, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8210,YESBANK ULIPO TUPO', '2022-06-13 16:48:48'),
(384, '0170009573', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:48:55'),
(385, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170009573 Salio lako jipya ni TSZ 8110,YESBANK ULIPO TUPO', '2022-06-13 16:48:55'),
(386, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:49:14'),
(387, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 8010,YESBANK ULIPO TUPO', '2022-06-13 16:49:14'),
(388, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:49:47'),
(389, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 7910,YESBANK ULIPO TUPO', '2022-06-13 16:49:47'),
(390, '0170089090', 'Kias cha TZS 100 kimewekwa kutoka kwenye account 0170089090,YESBANK ULIPO TUPO', '2022-06-13 16:52:28'),
(391, '0170089090', 'kiasi cha TZS    100  kimetumwa kwenye account no 0170089090 Salio lako jipya ni TSZ 7810,YESBANK ULIPO TUPO', '2022-06-13 16:52:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccountBalance`
--
ALTER TABLE `AccountBalance`
  ADD UNIQUE KEY `cardnumber` (`cardnumber`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cardnumber` (`cardnumber`);

--
-- Indexes for table `CustomerDetails`
--
ALTER TABLE `CustomerDetails`
  ADD PRIMARY KEY (`cardnumber`);

--
-- Indexes for table `CustomerStatment`
--
ALTER TABLE `CustomerStatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cardnumber` (`cardnumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `CustomerStatment`
--
ALTER TABLE `CustomerStatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AccountBalance`
--
ALTER TABLE `AccountBalance`
  ADD CONSTRAINT `AccountBalance_ibfk_1` FOREIGN KEY (`cardnumber`) REFERENCES `CustomerDetails` (`cardnumber`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`cardnumber`) REFERENCES `CustomerDetails` (`cardnumber`) ON DELETE CASCADE;

--
-- Constraints for table `CustomerStatment`
--
ALTER TABLE `CustomerStatment`
  ADD CONSTRAINT `CustomerStatment_ibfk_1` FOREIGN KEY (`cardnumber`) REFERENCES `CustomerDetails` (`cardnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
