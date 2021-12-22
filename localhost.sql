-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2021 at 09:30 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discountapp`
--
CREATE DATABASE IF NOT EXISTS `discountapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `discountapp`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_registration`
--

CREATE TABLE `admin_registration` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_registration`
--

INSERT INTO `admin_registration` (`id`, `name`, `email`, `password`) VALUES
(1, 'kumar', 'kumar@gmail.com', '12345'),
(2, 'msp', 'kumar123@gmail.com', 'praveen'),
(3, 'praveen', 'kumar1@gmail.com', 'praveen'),
(4, 'pk', 'pk@gmail.com', '123456'),
(5, '', '', ''),
(6, 'testadmin', 'testadmin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `field_sales_excutive_name` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `year_make` varchar(255) NOT NULL,
  `car_stock_information` varchar(255) NOT NULL,
  `current_offer` varchar(255) NOT NULL,
  `discount_value` varchar(255) NOT NULL,
  `customer_status` varchar(255) NOT NULL,
  `referred_customer` varchar(255) NOT NULL,
  `referrer_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `customer_name`, `field_sales_excutive_name`, `branch`, `car_model`, `year_make`, `car_stock_information`, `current_offer`, `discount_value`, `customer_status`, `referred_customer`, `referrer_name`) VALUES
(1, 'kumar', '', 'pollachi', '2015', '', '', '', '', '', '', ''),
(2, 'praveen', 'kumar', 'pollachi', '2016', '2016', 'yes', '10', 'yes', 'yes', 'no', 'no'),
(3, 'kumaran', 'prakash', 'coimbatore', '2020', '2020', '10', '15', '2000', 'yes', 'yes', 'yazhini'),
(4, 'paven', 'manian', 'cbe', 'swift', '2021', '10', '5', '10000', 'new', 'no', 'no'),
(5, 'sample', 'praveen', 'coimbatore', 'swift', '2019', '10', '10%', '10000', 'new', 'no', 'no'),
(7, 'sample', 'kumar', 'pollachi', 'swift-white', '2021', '10', '10%', '10000', 'new', 'yes', 'praveen'),
(8, 'samplecustomer', 'praveen', 'pollachi', 'swift-white', '2021', '10', '', '10000', 'new', 'yes', 'praveen'),
(9, 'praveen', 'kumar', 'pollachi', 'swift', '2019', '10	', '10%', '10000', 'new', 'yes', 'prakash'),
(10, '', '', '', '', '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `NAME`, `EMAIL`) VALUES
(1, 'kumar', 'pollachi'),
(3, 'praveen', 'praveen@gmail.com'),
(4, 'praveen', 'praveen@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_registration`
--
ALTER TABLE `admin_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_registration`
--
ALTER TABLE `admin_registration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int NOT NULL,
  `branch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch`) VALUES
(1, 'Chennai'),
(2, 'Ambattur'),
(3, 'Adyar'),
(4, 'Ingampakkam'),
(5, 'Sholinganallur'),
(6, 'Arumbakkam'),
(7, 'Saligraamam'),
(8, 'Cuddalore'),
(9, 'Villupuram'),
(10, 'Virudhachalam'),
(11, 'Ukkadam'),
(12, 'MTP Road'),
(13, 'Puliyakulam'),
(14, 'Sundarapuram'),
(15, 'Ramanathapuram'),
(16, 'Mettupalayam'),
(17, 'Karaikudi'),
(18, 'Madurai'),
(19, 'Thiruparangundaram'),
(20, 'Rajapalayam'),
(21, 'Trichy-CONT'),
(22, 'Trichy-MAM'),
(23, 'Salem'),
(24, 'Pollachi'),
(25, 'Udumalpet'),
(26, 'Karur'),
(27, 'Tirupur');

-- --------------------------------------------------------

--
-- Table structure for table `carmodel`
--

CREATE TABLE `carmodel` (
  `id` int NOT NULL,
  `carmodel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carmodel`
--

INSERT INTO `carmodel` (`id`, `carmodel`) VALUES
(1, 'Maruti Swift ZXI AMT'),
(2, 'Maruti Swift VXI'),
(3, 'Maruti Wagon R LXI CNG 1.0L'),
(4, 'Maruti Wagon R VXI AGS 1.2L'),
(5, 'Maruti New Baleno BS-VI Alpha Automatic Petrol'),
(6, 'Maruti New Baleno BS-VI Alpha Petrol'),
(7, 'Maruti Alto 800 CNG LXI');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`id`, `username`, `password`) VALUES
(1, 'user1', 'user1@123'),
(2, 'user2', 'user2@123'),
(3, 'user3', 'user3@123'),
(4, 'user4', 'user4@123'),
(5, 'user5', 'user5@123'),
(6, 'user6', 'user6@123'),
(7, 'user7', 'user7@123'),
(8, 'user8', 'user8@123'),
(9, 'user9', 'user9@123'),
(10, 'user10', 'user10@123'),
(11, 'user11', 'user11@123'),
(12, 'user12', 'user12@123'),
(13, 'user13', 'user13@123'),
(14, 'user14', 'user14@123'),
(15, 'user15', 'user15@123'),
(16, 'user16', 'user16@123'),
(17, 'user17', 'user17@123'),
(18, 'user18', 'user18@123'),
(19, 'user19', 'user19@123'),
(20, 'user20', 'user20@123'),
(21, 'user21', 'user21@123'),
(22, 'user22', 'user22@123'),
(23, 'user23', 'user23@123'),
(24, 'user24', 'user24@123'),
(25, 'user25', 'user25@123'),
(26, 'user26', 'user26@123'),
(27, 'user27', 'user27@123'),
(28, 'user28', 'user28@123'),
(29, 'user29', 'user29@123'),
(30, 'user30', 'user30@123'),
(31, 'user31', 'user31@123'),
(32, 'user32', 'user32@123'),
(33, 'user33', 'user33@123'),
(34, 'user34', 'user34@123'),
(35, 'user35', 'user35@123'),
(36, 'user36', 'user36@123'),
(37, 'user37', 'user37@123'),
(38, 'user38', 'user38@123'),
(39, 'user39', 'user39@123'),
(40, 'user40', 'user40@123'),
(41, 'user41', 'user41@123'),
(42, 'user42', 'user42@123'),
(43, 'user43', 'user44@123'),
(44, 'user44', 'user44@123'),
(45, 'user45', 'user45@123'),
(46, 'user46', 'user46@123'),
(47, 'user47', 'user47@123'),
(48, 'user48', 'user48@123'),
(49, 'user49', 'user49@123'),
(50, 'user50', 'user50@123'),
(51, 'user51', 'user51@123'),
(52, 'user52', 'user52@123'),
(53, 'user53', 'user53@123'),
(54, 'user54', 'user54@123'),
(55, 'user55', 'user55@123'),
(56, 'user56', 'user56@123'),
(57, 'user57', 'user57@123'),
(58, 'user58', 'user58@123'),
(59, 'user59', 'user59@123'),
(60, 'user60', 'user60@123'),
(61, 'user61', 'user61@123'),
(62, 'user62', 'user62@123'),
(63, 'user63', 'user63@123'),
(64, 'user64', 'user64@123'),
(65, 'user65', 'user65@123'),
(66, 'user66', 'user66@123'),
(67, 'user67', 'user67@123'),
(68, 'user68', 'user68@123'),
(69, 'user69', 'user69@123'),
(70, 'user70', 'user70@123');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `salesexcutivename` varchar(20) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `carmodel` varchar(50) NOT NULL,
  `yearmake` varchar(50) NOT NULL,
  `currentoffer` varchar(50) NOT NULL,
  `discountvalue` varchar(50) NOT NULL,
  `customerstatus` varchar(50) NOT NULL,
  `referredcustomer` varchar(50) NOT NULL,
  `referrername` varchar(50) NOT NULL,
  `requeststatus` varchar(10) DEFAULT NULL,
  `requestdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_id` varchar(20) DEFAULT NULL,
  `revised` int DEFAULT NULL,
  `commants` varchar(20) DEFAULT NULL,
  `statuschangetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `salesexcutivename`, `branch`, `carmodel`, `yearmake`, `currentoffer`, `discountvalue`, `customerstatus`, `referredcustomer`, `referrername`, `requeststatus`, `requestdate`, `booking_id`, `revised`, `commants`, `statuschangetime`) VALUES
(2, 'praveen', '8610980749', '', '', '', '', '', '', '', '', 'denied', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00'),
(3, 'sample', '...praveen...', '...pollachi...', '...swift...', '...2021...', '...10%...', '.6000.', '...new...', '...no...', '...no...', 'approved', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00'),
(4, 'kumar', 'testing', 'coimbatore', 'balano', '2021', '10%', '5000', 'new', 'yes', 'praveen', 'approved', '0000-00-00 00:00:00', NULL, 0, '', '2021-12-09 00:00:00'),
(7, 'sabari', 'praveen', 'chenna', 'maruti', '2019', '10%', '1000', 'NEW', 'YES', 'kumar', 'approved', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00'),
(8, 'krishna', 'praveen', 'pollachi', 'swift', '2021', 'diwali', '2000', 'new', 'yes', 'kumar', 'denied', '2021-11-19 11:45:11', NULL, 0, '', '0000-00-00 00:00:00'),
(9, 'pirthivi', 'praveen', 'pollachi', 'maruti', '2021', 'diwali', '2000', 'new', 'yes', 'praveen', 'denied', '2021-11-19 12:43:05', NULL, 0, '', '0000-00-00 00:00:00'),
(10, 'prakash', 'yazhini', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'approved', '2021-11-19 12:46:44', NULL, 0, '', '0000-00-00 00:00:00'),
(11, 'praveen', 'yazhini', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'approved', '2021-11-19 12:47:30', NULL, 2100, 'ok', '0000-00-00 00:00:00'),
(12, 'mohan', 'yazhini', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'approved', '2021-11-19 12:47:59', NULL, 0, '', '0000-00-00 00:00:00'),
(13, 'testing', 'testing', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'revised', '2021-11-19 12:50:41', NULL, 3210, 'no ', '0000-00-00 00:00:00'),
(14, 'mail testing', 'praveen', 'pollachi', 'swift', '2021', 'diwali', '2000', 'no', 'no', 'no', 'approved', '2021-11-20 12:43:59', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(15, 'cc', 'cc', 'cc', 'cc', '200', '4343', '2424', '5355', 'Yes', 'yes', 'approved', '2021-11-20 12:46:00', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(16, 'branchtesting', 'branch', 'Salem', 'swift', '2021', 'pongal', '2000', 'no', 'no', 'branch', 'denied', '2021-11-20 15:28:34', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(17, 'praveen', 'praksh', 'Chennai', 'swift', '2021', 'diwali', '2500', 'new', 'no', 'no', 'denied', '2021-11-22 12:48:21', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(19, 'kumar', 'praveen', 'Ambattur', 'swift', '2021', 'diwali', '1000', 'new', 'no', 'praveen', 'denied', '2021-11-22 12:52:46', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(20, 'q', 'a', 'Ingampakkam', 'abt', '2021', 'diwali', '2500', 'new', 'no', 'no', 'denied', '2021-11-22 13:02:50', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(21, 'm', 'y', 'Chennai', 'abt', '2021', 'diwali', '2100', 'new', 'yes', 'praveen', 'denied', '2021-11-22 13:08:37', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(22, 'p', 'p', 'Adyar', 'baleno', '2021', 'diwali', '2100', 'new', 'yes', 'praveen', 'denied', '2021-11-22 13:16:14', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(23, 'a', 'a', 'Arumbakkam', 'swift', '2021', 'diwali', '1000', 'no', 'no', 'no', 'denied', '2021-11-22 13:23:40', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(24, 'q', 'q', 'Ingampakkam', 'swift', '2021', 'diwali', '2000', 'no', 'no', 'no', 'denied', '2021-11-22 13:27:12', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(25, 'vv', 'vv', 'Adyar', 'dfdff', 'dff', 'dfd', 'sfd', 'df', 'dfq', 'efef', 'denied', '2021-11-22 14:30:45', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(26, 'button', 'button', 'Chennai', 'swift', '2021', 'diwali', '1000', 'no', 'no', 'no', 'denied', '2021-11-27 15:53:29', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(27, 'but', 'but', 'Chennai', 'swift', '2021', 'pongal', '1000', 'no', 'no', 'no', 'Approved', '2021-11-27 15:56:45', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(31, 'praveen', 'kumar', 'Sholinganallur', 'swift', '2021', 'pongal', '1000', 'new', 'no', 'no', 'delete', '2021-12-09 09:29:06', NULL, NULL, NULL, '2021-12-09 09:29:06'),
(32, 'hi', 'vj', 'Arumbakkam', 'swift', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'approved', '2021-12-09 10:48:54', NULL, NULL, NULL, '2021-12-09 00:00:00'),
(33, 'praveen', 'krishna', 'Ingampakkam', 'Maruti Swift ZXI AMT', '2021', 'pongal', '1000', 'new', 'yes', 'no', 'approved', '2021-12-09 11:35:17', NULL, NULL, NULL, '2021-12-09 00:00:00'),
(34, 'as', 'df', 'Ambattur', 'Maruti Swift VXI', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'approved', '2021-12-09 11:59:17', NULL, NULL, NULL, '2021-12-09 00:00:00'),
(35, 'pravee', 'kumar', 'Arumbakkam', 'Maruti Swift ZXI AMT', '2021', 'pongal', '1000', 'new', 'yes', 'no', 'approved', '2021-12-09 12:25:53', NULL, NULL, NULL, '2021-12-09 00:00:00'),
(36, 'ap', 'ow', 'Sholinganallur', 'Maruti Swift ZXI AMT', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'approved', '2021-12-09 12:32:15', NULL, NULL, NULL, '2021-12-09 00:00:00'),
(37, 'as', 'praveen ', 'Adyar', 'Maruti Swift VXI', '2021', 'pongal', '1000', 'new', 'yes', 'kumar', 'approved', '2021-12-09 16:28:57', NULL, NULL, NULL, '2021-12-09 00:00:00'),
(38, 'praveen', 'kumar', 'Sholinganallur', 'Maruti Swift ZXI AMT', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'approved', '2021-12-10 04:12:17', '001cn', NULL, NULL, '2021-12-10 00:00:00'),
(39, 'praveen', 'kuma', 'Sholinganallur', 'Maruti Swift VXI', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'pending', '2021-12-10 07:38:10', 'booking11', NULL, NULL, '2021-12-10 07:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `requeststatus`
--

CREATE TABLE `requeststatus` (
  `id` int NOT NULL,
  `requeststatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `requeststatus`
--

INSERT INTO `requeststatus` (`id`, `requeststatus`) VALUES
(1, 'approved'),
(2, 'pending'),
(3, 'denied');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `carmodel`
--
ALTER TABLE `carmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logindetails`
--
ALTER TABLE `logindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`);

--
-- Indexes for table `requeststatus`
--
ALTER TABLE `requeststatus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `carmodel`
--
ALTER TABLE `carmodel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logindetails`
--
ALTER TABLE `logindetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `mytable`
--
ALTER TABLE `mytable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `requeststatus`
--
ALTER TABLE `requeststatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `mydb2`
--
CREATE DATABASE IF NOT EXISTS `mydb2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mydb2`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int NOT NULL,
  `branch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch`) VALUES
(1, 'Chennai'),
(2, 'Ambattur'),
(3, 'Adyar'),
(4, 'Ingampakkam'),
(5, 'Sholinganallur'),
(6, 'Arumbakkam'),
(7, 'Saligraamam'),
(8, 'Cuddalore'),
(9, 'Villupuram'),
(10, 'Virudhachalam'),
(11, 'Ukkadam'),
(12, 'MTP Road'),
(13, 'Puliyakulam'),
(14, 'Sundarapuram'),
(15, 'Ramanathapuram'),
(16, 'Mettupalayam'),
(17, 'Karaikudi'),
(18, 'Madurai'),
(19, 'Thiruparangundaram'),
(20, 'Rajapalayam'),
(21, 'Trichy-CONT'),
(22, 'Trichy-MAM'),
(23, 'Salem'),
(24, 'Pollachi'),
(25, 'Udumalpet'),
(26, 'Karur'),
(27, 'Tirupur');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`id`, `username`, `password`) VALUES
(1, 'user1', 'user1@123'),
(2, 'user2', 'user2@123'),
(3, 'user3', 'user3@123'),
(4, 'user4', 'user4@123'),
(5, 'user5', 'user5@123');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `salesexcutivename` varchar(20) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `carmodel` varchar(50) NOT NULL,
  `yearmake` varchar(50) NOT NULL,
  `currentoffer` varchar(50) NOT NULL,
  `discountvalue` varchar(50) NOT NULL,
  `customerstatus` varchar(50) NOT NULL,
  `referredcustomer` varchar(50) NOT NULL,
  `referrername` varchar(50) NOT NULL,
  `requeststatus` varchar(10) DEFAULT NULL,
  `requestdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_id` varchar(20) DEFAULT NULL,
  `revised` int DEFAULT NULL,
  `commants` varchar(20) DEFAULT NULL,
  `approveddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `denieddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `salesexcutivename`, `branch`, `carmodel`, `yearmake`, `currentoffer`, `discountvalue`, `customerstatus`, `referredcustomer`, `referrername`, `requeststatus`, `requestdate`, `booking_id`, `revised`, `commants`, `approveddate`, `denieddate`) VALUES
(2, 'praveen', '8610980749', '', '', '', '', '', '', '', '', 'denied', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'sample', '...praveen...', '...pollachi...', '...swift...', '...2021...', '...10%...', '.6000.', '...new...', '...no...', '...no...', 'approved', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'kumar', 'testing', 'coimbatore', 'balano', '2021', '10%', '5000', 'new', 'yes', 'praveen', 'pending', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'sabari', 'praveen', 'chenna', 'maruti', '2019', '10%', '1000', 'NEW', 'YES', 'kumar', 'approved', '0000-00-00 00:00:00', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'krishna', 'praveen', 'pollachi', 'swift', '2021', 'diwali', '2000', 'new', 'yes', 'kumar', 'denied', '2021-11-19 11:45:11', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'pirthivi', 'praveen', 'pollachi', 'maruti', '2021', 'diwali', '2000', 'new', 'yes', 'praveen', 'denied', '2021-11-19 12:43:05', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'prakash', 'yazhini', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'approved', '2021-11-19 12:46:44', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'praveen', 'yazhini', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'revised', '2021-11-19 12:47:30', NULL, 1, 'ok', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'mohan', 'yazhini', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'approved', '2021-11-19 12:47:59', NULL, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'testing', 'testing', 'coimbatore', 'baleno', '2021', 'new year', '2000', 'new', 'no', 'no', 'revised', '2021-11-19 12:50:41', NULL, 5600, 'no ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'mail testing', 'praveen', 'pollachi', 'swift', '2021', 'diwali', '2000', 'no', 'no', 'no', 'approved', '2021-11-20 12:43:59', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'cc', 'cc', 'cc', 'cc', '200', '4343', '2424', '5355', 'Yes', 'yes', 'approved', '2021-11-20 12:46:00', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'branchtesting', 'branch', 'Salem', 'swift', '2021', 'pongal', '2000', 'no', 'no', 'branch', 'approved', '2021-11-20 15:28:34', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'praveen', 'praksh', 'Chennai', 'swift', '2021', 'diwali', '2500', 'new', 'no', 'no', 'denied', '2021-11-22 12:48:21', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '', '', '', '', '', '', '', '', '', '', 'denied', '2021-11-22 12:50:40', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'kumar', 'praveen', 'Ambattur', 'swift', '2021', 'diwali', '1000', 'new', 'no', 'praveen', 'denied', '2021-11-22 12:52:46', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'q', 'a', 'Ingampakkam', 'abt', '2021', 'diwali', '2500', 'new', 'no', 'no', 'denied', '2021-11-22 13:02:50', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'm', 'y', 'Chennai', 'abt', '2021', 'diwali', '2100', 'new', 'yes', 'praveen', 'denied', '2021-11-22 13:08:37', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'p', 'p', 'Adyar', 'baleno', '2021', 'diwali', '2100', 'new', 'yes', 'praveen', 'denied', '2021-11-22 13:16:14', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'a', 'a', 'Arumbakkam', 'swift', '2021', 'diwali', '1000', 'no', 'no', 'no', 'denied', '2021-11-22 13:23:40', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'q', 'q', 'Ingampakkam', 'swift', '2021', 'diwali', '2000', 'no', 'no', 'no', 'denied', '2021-11-22 13:27:12', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'vv', 'vv', 'Adyar', 'dfdff', 'dff', 'dfd', 'sfd', 'df', 'dfq', 'efef', 'denied', '2021-11-22 14:30:45', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'button', 'button', 'Chennai', 'swift', '2021', 'diwali', '1000', 'no', 'no', 'no', 'denied', '2021-11-27 15:53:29', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'but', 'but', 'Chennai', 'swift', '2021', 'pongal', '1000', 'no', 'no', 'no', 'Approved', '2021-11-27 15:56:45', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'testing', 'testingq', 'Adyar', '', '', '', '', '', '', '', 'Approved', '2021-11-29 13:18:45', NULL, NULL, NULL, '2021-11-29 13:18:45', '2021-11-29 13:18:45'),
(29, 'praveen', 'kumar', 'Chennai', 'maruti', '2021', 'pongal', '1000', 'no', 'no', 'no', 'Approved', '2021-11-29 14:11:22', NULL, NULL, NULL, '2021-11-29 14:11:22', '2021-11-29 14:11:22'),
(31, 'countt', 'kumar', 'Chennai', 'marudi', '2021', 'new year', '1000', 'new', 'no', 'no', 'denied', '2021-12-04 11:15:47', NULL, NULL, NULL, '2021-12-04 11:15:47', '2021-12-04 11:15:47'),
(32, 'count', 'kumar', 'Chennai', 'swift', '', 'pongal', '1000', 'new', 'no', 'no', 'approved', '2021-12-04 11:21:27', NULL, NULL, NULL, '2021-12-04 11:21:27', '2021-12-04 11:21:27'),
(33, '', '', '', '', '', '', '', '', '', '', 'denied', '2021-12-07 11:23:28', NULL, NULL, NULL, '2021-12-07 11:23:28', '2021-12-07 11:23:28'),
(34, '', '', '', '', '', '', '', '', '', '', 'denied', '2021-12-07 11:24:26', NULL, NULL, NULL, '2021-12-07 11:24:26', '2021-12-07 11:24:26'),
(35, 'praveen', 'kumar', 'Salem', 'swift', '2021', 'pongal', '1009', 'new', 'no', 'no', 'denied', '2021-12-07 11:42:10', NULL, NULL, NULL, '2021-12-07 11:42:10', '2021-12-07 11:42:10'),
(36, 'praveen1', 'praveen1', 'MTP Road', 'swift', '2021', 'diwali', '1000', 'no', 'no', 'no', 'approved', '2021-12-07 12:07:10', NULL, 1100, 'ok', '2021-12-07 12:07:10', '2021-12-07 12:07:10'),
(37, 'k', 'j', 'Saligraamam', 'swift', '2021', 'pongal', '1000', 'new', 'yes', 'no', 'approved', '2021-12-07 12:14:51', NULL, 2000, '', '2021-12-07 12:14:51', '2021-12-07 12:14:51'),
(38, 'l', 'l', 'Sholinganallur', 'swift', '2021', 'pongal', '100', 'no', 'yes', 'no', 'approved', '2021-12-07 12:16:37', NULL, NULL, NULL, '2021-12-07 12:16:37', '2021-12-07 12:16:37'),
(39, 't', 'h', 'Arumbakkam', 'swift', '2021', 'pongal', '2000', 'no', 'no', 'no', 'denied', '2021-12-07 12:17:52', NULL, NULL, NULL, '2021-12-07 12:17:52', '2021-12-07 12:17:52'),
(40, 'hi', 'gi', 'Sholinganallur', 'swift', '2021', 'pongal', '1000', 'no', 'no', 'no', 'approved', '2021-12-07 12:19:00', NULL, 1001, 'no', '2021-12-07 12:19:00', '2021-12-07 12:19:00'),
(41, 'ki', 'gu', 'Cuddalore', 'swift', '2021', 'pongal', '1000', 'no', 'no', 'no', 'approved', '2021-12-07 12:20:07', NULL, 1100, 'no', '2021-12-07 12:20:07', '2021-12-07 12:20:07'),
(42, 'j', 'n', 'Sholinganallur', 'swift', '2021', 'pongal', '1000', 'new', 'yes', 'name', 'approved', '2021-12-07 12:21:40', NULL, 1100, 'no', '2021-12-07 12:21:40', '2021-12-07 12:21:40'),
(43, 'k', 'k', 'Arumbakkam', 'swift', '2021', 'pongal', '1000', 'no', 'no', 'no', 'approved', '2021-12-07 14:21:56', NULL, 1100, 'no', '2021-12-07 14:21:56', '2021-12-07 14:21:56'),
(44, 'praveen', 'kumar', 'Ingampakkam', 'swift', '2021', 'pongal', '1000', 'new', 'no', 'no', 'approved', '2021-12-08 06:25:50', NULL, 6000, 'no', '2021-12-08 06:25:50', '2021-12-08 06:25:50'),
(45, 'abcd', 'abce', 'Sholinganallur', 'swift', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'denied', '2021-12-08 06:36:33', NULL, NULL, NULL, '2021-12-08 06:36:33', '2021-12-08 06:36:33'),
(46, 'ab', 'cd', 'Chennai', 'swift', '2021', 'pongal', '2000', 'new', 'yes', 'praveen', 'approved', '2021-12-08 06:37:24', NULL, NULL, NULL, '2021-12-08 06:37:24', '2021-12-08 06:37:24'),
(47, 'praveen', 'kumar', 'Chennai', 'swift', '2021', 'pongal', '1000', 'new', 'yes', 'no', 'approved', '2021-12-09 04:27:04', NULL, 1100, 'ok', '2021-12-09 04:27:04', '2021-12-09 04:27:04'),
(49, 'tet', 'test', 'Sholinganallur', 'swift', '2021', 'pongal', '1000', 'new', 'no', 'no', 'approved', '2021-12-09 06:23:10', NULL, NULL, NULL, '2021-12-09 06:23:10', '2021-12-09 06:23:10'),
(50, 'ju', 'fu', 'Chennai', 'swift', '2021', 'pongal', '1000', 'new', 'no', 'no', 'approved', '2021-12-09 08:36:24', NULL, NULL, NULL, '2021-12-09 08:36:24', '2021-12-09 08:36:24'),
(51, 'aa', 'nj', 'Sholinganallur', 'swift', '2021', 'pongal', '1000', 'new', 'yes', 'praveen', 'delete', '2021-12-09 09:17:33', NULL, NULL, NULL, '2021-12-09 09:17:33', '2021-12-09 09:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `requeststatus`
--

CREATE TABLE `requeststatus` (
  `id` int NOT NULL,
  `requeststatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `requeststatus`
--

INSERT INTO `requeststatus` (`id`, `requeststatus`) VALUES
(1, 'approved'),
(2, 'pending'),
(3, 'denied');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@mail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `logindetails`
--
ALTER TABLE `logindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`);

--
-- Indexes for table `requeststatus`
--
ALTER TABLE `requeststatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `logindetails`
--
ALTER TABLE `logindetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mytable`
--
ALTER TABLE `mytable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `requeststatus`
--
ALTER TABLE `requeststatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `mysqladmin`
--
CREATE DATABASE IF NOT EXISTS `mysqladmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mysqladmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('admin', 'mytable', 'table', 'mydb2', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('admin', '[{\"db\":\"mydb\",\"table\":\"logindetails\"},{\"db\":\"mydb\",\"table\":\"mytable\"},{\"db\":\"mydb\",\"table\":\"carmodel\"},{\"db\":\"mydb\",\"table\":\"branch\"},{\"db\":\"mydb2\",\"table\":\"mytable\"},{\"db\":\"mydb2\",\"table\":\"users\"},{\"db\":\"mydb2\",\"table\":\"requeststatus\"},{\"db\":\"mydb1\",\"table\":\"mytable\"},{\"db\":\"mydb\",\"table\":\"users\"},{\"db\":\"mydb\",\"table\":\"requeststatus\"}]'),
('mysqladmin', '[{\"db\":\"mydb\",\"table\":\"logindetails\"},{\"db\":\"mydb\",\"table\":\"mytable\"},{\"db\":\"mydb\",\"table\":\"branch\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `config_data`) VALUES
('admin', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":151}'),
('mysqladmin', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `fcm_token` varchar(200) NOT NULL,
  `status` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `Mobile`, `Password`, `fcm_token`, `status`) VALUES
(1, 'Prakaash', 'prakashkumar@geekdino.com', '8778508408', 'Abt@12345', 'Tcl97@8&^\")(&', 1);
--
-- Database: `test_db`
--
CREATE DATABASE IF NOT EXISTS `test_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test_db`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `fullname`, `address`) VALUES
(1, 'prakash', 'abt@123', 'prakashkumar', 'coimbatore'),
(1, 'prakash', 'abt@123', 'prakashkumar', 'coimbatore');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
