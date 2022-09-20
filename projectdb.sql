-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 04:04 PM
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
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billno` int(11) NOT NULL,
  `guestid` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `tableno` int(11) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billno`, `guestid`, `roomid`, `tableno`, `orderno`) VALUES
(1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingid` int(11) NOT NULL,
  `guestid` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `guestid`, `roomid`, `date`) VALUES
(1, 1, 1, NULL),
(3, 7, 6, NULL),
(4, 6, 2, NULL),
(6, 5, 7, NULL),
(7, 4, 12, NULL),
(9, 9, 16, '0000-00-00'),
(11, 10, 15, '0000-00-00'),
(13, 11, 10, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guestid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(30) NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `peopleno` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guestid`, `name`, `address`, `mobileno`, `gender`, `peopleno`) VALUES
(1, 'Ram Shrestha', 'Rolpa', 9843200222, 'male', 2),
(2, 'sajal', 'sanagaun', 98611921115, 'male', 1),
(4, 'sudha', 'imadol', 9843001425, 'female', 1),
(5, 'ada', 'asda', 7410520952, 'male', 1),
(6, 'shyam', 'illam', 999865640, 'male', 3),
(7, 'Shiva Hari Paudel', 'Baglung', 25879321555, 'male', 2),
(8, 'Shiva kumar Jha', 'Kailali', 98879321555, 'male', 2),
(9, 'Shiva kumar Jha', 'Kailali', 98879321556, 'male', 2),
(10, 'tej', 'mulkharka', 9841712948, 'male', 1),
(11, 'laxmi', 'pokhara', 9849531099, 'female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` int(1) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `username`, `password`) VALUES
(1, 'admin', 'apple'),
(0, 'designer', 'designer'),
(4, 'jamuna_koi', '205300'),
(2, 'user', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `foodid` int(11) NOT NULL,
  `foodname` varchar(25) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `foodtype` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`foodid`, `foodname`, `price`, `foodtype`) VALUES
(1, 'momo', 150, 'noeveg'),
(2, 'chowmin', 110, 'veg'),
(3, 'fryrice', 57, 'veg'),
(4, 'alufry', 78, 'veg'),
(5, 'chauchau', 25, 'veg'),
(6, 'yomari', 60, 'veg'),
(7, 'tea', 25, 'veg'),
(8, 'burger', 80, 'nonveg'),
(9, 'pizza', 329, 'veg'),
(10, 'momos', 185, 'veg'),
(11, 'bhataura', 45, 'veg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordersno` int(11) NOT NULL,
  `roomid` int(11) DEFAULT NULL,
  `tableno` int(11) DEFAULT NULL,
  `foodid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordersno`, `roomid`, `tableno`, `foodid`) VALUES
(1, 1, 0, 4),
(2, 1, 0, 2),
(3, 0, 1, 1),
(4, 1, 0, 10),
(5, 0, 2, 8),
(6, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(11) NOT NULL,
  `price` int(4) DEFAULT NULL,
  `roomtype` varchar(20) DEFAULT NULL,
  `guestid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `price`, `roomtype`, `guestid`) VALUES
(1, 2500, 'double bed', 1),
(2, 1600, 'single-bed', 0),
(3, 4500, 'delux', 0),
(4, 4500, 'Delux', 8),
(5, 4500, 'Delux', 2),
(6, 4500, 'Delux', 6),
(7, 4500, 'Delux', 0),
(8, 4500, 'Delux', 0),
(9, 4500, 'Delux', 0),
(10, 4500, 'Delux', 0),
(11, 1600, 'single', 0),
(12, 1600, 'single', 0),
(13, 1600, 'single', 0),
(14, 1600, 'single', 0),
(15, 1600, 'single', 0),
(16, 1600, 'single', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `tableno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`tableno`) VALUES
(1),
(2),
(3),
(4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billno`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingid`),
  ADD UNIQUE KEY `guestid` (`guestid`,`roomid`),
  ADD UNIQUE KEY `roomid` (`roomid`),
  ADD UNIQUE KEY `guestid_2` (`guestid`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guestid`),
  ADD UNIQUE KEY `mobileno` (`mobileno`),
  ADD UNIQUE KEY `mobileno_2` (`mobileno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`foodid`),
  ADD UNIQUE KEY `foodname` (`foodname`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD UNIQUE KEY `ono` (`ordersno`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`),
  ADD UNIQUE KEY `roomid` (`roomid`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`tableno`),
  ADD UNIQUE KEY `tableno` (`tableno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `foodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordersno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
