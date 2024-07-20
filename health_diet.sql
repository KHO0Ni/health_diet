-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2024 at 09:23 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `health_diet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `name`, `email`, `password`, `mobile`, `created_date`) VALUES
(2, 'Admin', 'admin@gmail.com', 'test', '1234567890', '2024-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE IF NOT EXISTS `advice` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(11, 'admin@gmail.com', 'BMI', '25', 'Good', 'bmi.com', '', '', '', 'nil', 'nil', 'nil', '', '2024-11-10'),
(12, 'admin@gmail.com', 'BMI', '25', 'Good', 'bmi.com', 'bmi.com', 'bmi.com', 'bmi.com', 'nil', 'nil', 'nil', '', '2024-11-10'),
(16, 'admin@gmail.com', 'BMI', '25', 'Normal', 'bmi.com', 'bmi.com', 'bmi.com', 'bmi.com', 'nil', 'nil', 'nil', '', '2024-11-10'),
(17, 'admin@gmail.com', 'Break Fast', 'Idly', 'Normal', 'Idly', '100', 'Nil', 'Nil', 'Nil', 'Pending', '', '', '2024-12-15'),
(18, 'admin@gmail.com', 'Lunch', 'Means', 'Overweight', 'Veg', '1000', 'Nil', 'Nil', 'Nil', 'Pending', '', '', '2024-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(27, '', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 'Pending', '', '', '2024-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(24, 'user@gmail.com', 'Panneer', '27', '163', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Nil', 'Male', 'Completed', '', 'Please take SoyaBeans -200g, Nuts- 200g, Total Calories-2500cal', '2024-02-28'),
(25, 'user@gmail.com', 'test', '50', '20', '20', 'test', 'test', 'test', 'Female', 'Pending', '', '', '2024-03-17'),
(27, 'user@gmail.com', 'Ram 2', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(28, 'user@gmail.com', 'Ram 3', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(29, 'user@gmail.com', 'Ram 4', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(30, 'user@gmail.com', 'Ram 5', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(31, 'user@gmail.com', 'Ram 6', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(33, 'user@gmail.com', 'Ram 8', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(34, 'user@gmail.com', 'Ram 9', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(35, 'user@gmail.com', 'Ram 10', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(36, 'user@gmail.com', 'Ram 11', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(37, 'user@gmail.com', 'Ram 12', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(38, 'user@gmail.com', 'Ram 13', '25', '160', '50', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(39, 'user@gmail.com', 'Ram 14', '25', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(40, 'user@gmail.com', 'Ram 15', '25', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'heart', 'Male', 'Pending', '', '', '0000-00-00'),
(41, 'user@gmail.com', 'Ram 16', '25', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(42, 'user@gmail.com', 'Ram 17', '25', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(43, 'user@gmail.com', 'Ram 18', '25', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(44, 'user@gmail.com', 'Ram 19', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(45, 'user@gmail.com', 'Ram 20', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(46, 'user@gmail.com', 'Ram 21', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(47, 'user@gmail.com', 'Ram 22', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(48, 'user@gmail.com', 'Ram 23', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(49, 'user@gmail.com', 'Ram 24', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(50, 'user@gmail.com', 'Ram 25', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Lung', 'Male', 'Pending', '', '', '0000-00-00'),
(51, 'user@gmail.com', 'Ram 26', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(52, 'user@gmail.com', 'Ram 27', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(53, 'user@gmail.com', 'Ram 28', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(54, 'user@gmail.com', 'Ram 29', '35', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(55, 'user@gmail.com', 'Ram 30', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(56, 'user@gmail.com', 'Ram 31', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(57, 'user@gmail.com', 'Ram 32', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(58, 'user@gmail.com', 'Ram 33', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(59, 'user@gmail.com', 'Ram 34', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'skin', 'Female', 'Pending', '', '', '0000-00-00'),
(60, 'user@gmail.com', 'Ram 35', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(61, 'user@gmail.com', 'Ram 36', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(62, 'user@gmail.com', 'Ram 37', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(63, 'user@gmail.com', 'Ram 38', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(64, 'user@gmail.com', 'Ram 39', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(65, 'user@gmail.com', 'Ram 40', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(66, 'user@gmail.com', 'Ram 41', '55', '160', '55', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(67, 'user@gmail.com', 'Ram 42', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(68, 'user@gmail.com', 'Ram 43', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'General', 'Female', 'Pending', '', '', '0000-00-00'),
(69, 'user@gmail.com', 'Ram 44', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(70, 'user@gmail.com', 'Ram 45', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(71, 'user@gmail.com', 'Ram 46', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(72, 'user@gmail.com', 'Ram 47', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(73, 'user@gmail.com', 'Ram 48', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(74, 'user@gmail.com', 'Ram 49', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(75, 'user@gmail.com', 'Ram 50', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(76, 'user@gmail.com', 'Ram 51', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Female', 'Pending', '', '', '0000-00-00'),
(77, 'user@gmail.com', 'Ram 52', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Male', 'Pending', '', '', '0000-00-00'),
(78, 'user@gmail.com', 'Ram 53', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Male', 'Pending', '', '', '0000-00-00'),
(79, 'user@gmail.com', 'Ram 54', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Male', 'Pending', '', '', '0000-00-00'),
(80, 'user@gmail.com', 'Ram 55', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Male', 'Pending', '', '', '0000-00-00'),
(81, 'user@gmail.com', 'Ram 56', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Male', 'Pending', '', '', '0000-00-00'),
(82, 'user@gmail.com', 'Ram 57', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Tooth', 'Male', 'Pending', '', '', '0000-00-00'),
(83, 'user@gmail.com', 'Ram 58', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(84, 'user@gmail.com', 'Ram 59', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(85, 'user@gmail.com', 'Ram 60', '70', '160', '65', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(86, 'user@gmail.com', 'Ram 61', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(87, 'user@gmail.com', 'Ram 62', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(88, 'user@gmail.com', 'Ram 63', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(89, 'user@gmail.com', 'Ram 64', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(90, 'user@gmail.com', 'Ram 65', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(91, 'user@gmail.com', 'Ram 66', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(92, 'user@gmail.com', 'Ram 67', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(93, 'user@gmail.com', 'Ram 68', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Eye', 'Male', 'Pending', '', '', '0000-00-00'),
(94, 'user@gmail.com', 'Ram 69', '70', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(95, 'user@gmail.com', 'Ram 70', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(96, 'user@gmail.com', 'Ram 71', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(97, 'user@gmail.com', 'Ram 72', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(98, 'user@gmail.com', 'Ram 73', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(99, 'user@gmail.com', 'Ram 74', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', 'reson', 'diet solution', '0000-00-00'),
(100, 'user@gmail.com', 'Ram 75', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(101, 'user@gmail.com', 'Ram 76', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(102, 'user@gmail.com', 'Ram 77', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(103, 'user@gmail.com', 'Ram 78', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(104, 'user@gmail.com', 'Ram 79', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(105, 'user@gmail.com', 'Ram 80', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(106, 'user@gmail.com', 'Ram 81', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(107, 'user@gmail.com', 'Ram 82', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(108, 'user@gmail.com', 'Ram 83', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(109, 'user@gmail.com', 'Ram 84', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(110, 'user@gmail.com', 'Ram 85', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(111, 'user@gmail.com', 'Ram 86', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(112, 'user@gmail.com', 'Ram 87', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(113, 'user@gmail.com', 'Ram 88', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(114, 'user@gmail.com', 'Ram 89', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(115, 'user@gmail.com', 'Ram 90', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(116, 'user@gmail.com', 'Ram 91', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(117, 'user@gmail.com', 'Ram 92', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(118, 'user@gmail.com', 'Ram 93', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(119, 'user@gmail.com', 'Ram 94', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(120, 'user@gmail.com', 'Ram 95', '43', '160', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(121, 'user@gmail.com', 'Ram 96', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(122, 'user@gmail.com', 'Ram 97', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(123, 'user@gmail.com', 'Ram 98', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(124, 'user@gmail.com', 'Ram 99', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(125, 'user@gmail.com', 'Ram 100', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(126, 'user@gmail.com', 'Ram 101', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(127, 'user@gmail.com', 'Ram 102', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(128, 'user@gmail.com', 'Ram 103', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(129, 'user@gmail.com', 'Ram 104', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(130, 'user@gmail.com', 'Ram 105', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(131, 'user@gmail.com', 'Ram 106', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(132, 'user@gmail.com', 'Ram 107', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(133, 'user@gmail.com', 'Ram 108', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(134, 'user@gmail.com', 'Ram 109', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(135, 'user@gmail.com', 'Ram 110', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(136, 'user@gmail.com', 'Ram 111', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(137, 'user@gmail.com', 'Ram 112', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(138, 'user@gmail.com', 'Ram 113', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(139, 'user@gmail.com', 'Ram 114', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(140, 'user@gmail.com', 'Ram 115', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(141, 'user@gmail.com', 'Ram 116', '43', '140', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(142, 'user@gmail.com', 'Ram 117', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(143, 'user@gmail.com', 'Ram 118', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(144, 'user@gmail.com', 'Ram 119', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(145, 'user@gmail.com', 'Ram 120', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(146, 'user@gmail.com', 'Ram 121', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(147, 'user@gmail.com', 'Ram 122', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(148, 'user@gmail.com', 'Ram 123', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(149, 'user@gmail.com', 'Ram 124', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(150, 'user@gmail.com', 'Ram 125', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(151, 'user@gmail.com', 'Ram 126', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(152, 'user@gmail.com', 'Ram 127', '43', '190', '80', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(153, 'user@gmail.com', 'Ram 128', '43', '190', '', 'Veg 1500 Calories', 'Increase weight 5 kgs', 'Bone', 'Male', 'Pending', '', '', '0000-00-00'),
(154, 'user@gmail.com', 'Panneer Selvam', '32', '150', '50', 'Veg', 'Weight Loss', 'Lung', 'Male', 'Completed', 'taking more kcal', 'Have Less kcall for', '2024-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

CREATE TABLE IF NOT EXISTS `diet` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(27, 'admin@gmail.com', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'Male/Female', 'Pending', '', '', '2024-02-28'),
(28, 'admin@gmail.com', 'Lung', 'maintain clean lung', '10-25', 'ashma', 'have thulasi', 'Have Hot water with milagu', 'Nil', 'Male', 'Pending', '', '', '2024-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `created_date` date NOT NULL,
`feedback_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`created_date`, `feedback_id`, `email`, `field_1`, `field_2`) VALUES
('2024-12-15', 3, 'user@gmail.com', 'Selvam', 'Thanks for the diet Suggestion');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1477 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `created_date`) VALUES
(1471, 'user@gmail.com', 'BMI  ', '70', '160', '', '', '', '', '', '', '', '2024-12-15'),
(1472, 'user@gmail.com', 'BMI  ', '50', '150', '', '', '', '', '', '', '', '2024-12-15'),
(1473, 'user@gmail.com', 'BMI  ', '75', '163', '', '', '', '', '', '', '', '2024-12-15'),
(1474, 'user@gmail.com', 'BMI  ', '40', '163', '', '', '', '', '', '', '', '2024-12-15'),
(1475, 'user@gmail.com', 'BMI  ', '75', '150', '', '', '', '', '', '', '', '2024-12-15'),
(1476, 'user@gmail.com', 'BMI  ', '50', '150', '', '', '', '', '', '', '', '2024-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `field_2`, `field_3`, `field_4`, `created_date`) VALUES
(2, 'Panneer Selvam', 'user@gmail.com', 'test', '1234567890', 'Kumbakonam', 'Thanjavur', 'whitey', 'bala', '2024-01-19'),
(3, 'user', 'test@gmail.com', 'test', '123312321', '', '', '', '', '2024-01-30'),
(4, 'lakshmi', 'lakshmi@gmail.com', 'test', '9879879875', 'Kum', 'Kum', 'Kum', 'Kum', '2024-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(4, 'user@gmail.com', 'Break Fast', 'Idly', '', '', '', '', '', '', '', '', '', '2024-12-15'),
(5, 'user@gmail.com', 'BMI', '25', 'Completed', '', '', '', '', '', '', '', '', '2024-12-15'),
(6, 'user@gmail.com', 'Break Fast', 'Idly', 'Completed', '', '', '', '', '', '', '', '', '2024-12-15'),
(7, 'user123@gmail.com', 'Break Fast', 'Idly', 'Completed', '', '', '', '', '', '', '', '', '2024-12-15'),
(8, 'user@gmail.com', 'Break Fast', 'Idly', 'Completed', '', '', '', '', '', '', '', '', '2024-12-15'),
(9, 'user@gmail.com', 'BMI', '25', 'Completed', '', '', '', '', '', '', '', '', '2024-08-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `diet`
--
ALTER TABLE `diet`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
 ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `diet`
--
ALTER TABLE `diet`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `feedback_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1477;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
