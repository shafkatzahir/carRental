-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 06:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocr2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL,
  `admin_phone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_phone`) VALUES
(1, 'Admin', 'admin@370carrental.com', 'admin123', 17895462);

-- --------------------------------------------------------

--
-- Table structure for table `bookinginfo`
--

CREATE TABLE `bookinginfo` (
  `booking_id` int(100) NOT NULL,
  `booked_car` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  `car_pickup_branch` varchar(200) NOT NULL,
  `car_dropoff_branch` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookinginfo`
--

INSERT INTO `bookinginfo` (`booking_id`, `booked_car`, `user_name`, `booking_date`, `car_pickup_branch`, `car_dropoff_branch`) VALUES
(1, 'Premio 2013', 'Shofiq', '2020-12-25', 'Dhaka', 'Chittagong'),
(2, 'BMW 528d', 'IlhumBoss', '2020-12-31', 'Chittagong', 'Sylhet'),
(3, 'Axio 2011', 'Tarif Ashraf', '2020-12-20', 'Barisal', 'Khulna'),
(4, 'Land Cruiser V8 2016', 'Fardin Karim', '2020-12-26', 'Dhaka ', 'Sylhet'),
(6, 'Allion 2014', 'Quazi', '2020-12-25', 'Khulna', 'Barisal'),
(8, '', '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `branchlist`
--

CREATE TABLE `branchlist` (
  `branch_location` varchar(100) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_email` varchar(100) NOT NULL,
  `branch_phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branchlist`
--

INSERT INTO `branchlist` (`branch_location`, `branch_address`, `branch_email`, `branch_phone_number`) VALUES
('Dhaka', 'Banani', 'dhaka@370carrental.com', '1754123478'),
('', '', '', ''),
('Chittagong', 'Agrabad', 'chittagong@370carrental.com', '1815423898'),
('Sylhet', 'Humayan Rashid Chottor', 'sylhet@370carrental.com', '1745142468'),
('Barisal', 'Sadar Road', 'barisal@370carrental.com', '1313548216'),
('Khulna', 'Dak Bangla Mor ', 'khulna@370carrental.com', '1915554561'),
('Cox\'s Bazar', 'Laboni Point ', 'coxsbazar@370carrental.com', '1752647892');

-- --------------------------------------------------------

--
-- Table structure for table `carlist`
--

CREATE TABLE `carlist` (
  `car_id` int(100) NOT NULL,
  `car_type` varchar(200) NOT NULL,
  `car_model` varchar(200) NOT NULL,
  `car_numberplate` varchar(200) NOT NULL,
  `car_insurance_details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carlist`
--

INSERT INTO `carlist` (`car_id`, `car_type`, `car_model`, `car_numberplate`, `car_insurance_details`) VALUES
(3, 'Sedan', 'Premio 2013', 'CM-GA 11-4579', 'Number1 InsuranceLtd_Sept2022'),
(5, 'Luxury', 'BMW 528d', 'DM-BHA 11-8953', 'Trust Insurance_Dec2020'),
(9, 'SUV', 'Land Cruiser Prado 2012', 'DM-GHA 13-1536', 'Number1 InsuranceLtd_Oct2022'),
(10, 'Luxury', 'BMW 730LI', 'DM-BHA 11-7512', 'YourInsuranceLtd_Aug2021'),
(11, 'Luxury', 'Mercedes E200', 'DM-BHA 13-6128', 'Trust Insurance_Dec2020'),
(12, 'Sedan', 'Toyota Premio 2016', 'DM-GA 32-2060', 'GG Insurance LTD.'),
(14, 'Luxury Sedan', 'Mercedes E200', 'DM-GA 14-2556', 'GGWP Insurance'),
(17, 'Sedan', 'Premio 2016', 'DM-GA 32-2426', 'Trust InsuranceLtd_Dec2021'),
(18, 'SUV', 'Land Cruiser Prado 2018', 'DM-GHA 13-8076', 'HelloInsurance_May2021'),
(20, 'Luxury', 'BMW 528d', 'DM-BHA 11-8953', 'Trust Insurance_Dec2020'),
(21, 'SUV', 'Land Cruiser V8 2016', 'DM-GHA 13-8999', 'Trust Insurance_April2021'),
(22, 'Sedan', 'Allion 2014', 'CM-GA 13-1314', 'HelloInsuranc_March2021');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_phone` int(20) NOT NULL,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`) VALUES
(1, 'Shofiq', 'shofiq12@gmail.com', 'shofiq123', 2147483647, 'Uttara Sector-6'),
(2, 'IlhumBoss', 'ilhumboss@gmail.com', 'ilhum123', 1819252623, 'Dhanmondi 11/A'),
(3, 'Ishraq', 'ishraq@gmail.com', 'ishraq123', 2147483647, 'Indira Road'),
(4, 'Akif', 'akif@gmail.com', 'akif123', 2147483647, 'Banani Road 12'),
(6, 'shaneen', 'shaneen@gmail.com', '1234', 198165, 'Dhanmondi 8/A'),
(7, 'ab', 'ab@gmail.com', 'ad1', 2147483647, 'Gulshan - 2 Road 89'),
(8, 'Ishraqul', 'ishraqul@gmail.com', '123456', 1847117984, 'Tejgaon'),
(10, 'ds', 'ds@gmail.com', 'da', 4856231, 'gram'),
(11, 'Tarif Ashraf', 'ta@gmail.com', 'ta', 2147483647, 'Uttara Sector 8'),
(12, 'Mahin', 'mahin@gmail.com', 'cat', 98465123, 'Panthapath'),
(13, 'Fardin Karim', 'fjk@gmail.com', 'fjk', 2147483647, 'Uttara Sector- 14'),
(14, 'Quazi', 'quazi@gmail.com', 'qf', 2147483647, 'Mohakhali DOHS'),
(15, '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `bookinginfo`
--
ALTER TABLE `bookinginfo`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `carlist`
--
ALTER TABLE `carlist`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_id` (`car_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookinginfo`
--
ALTER TABLE `bookinginfo`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carlist`
--
ALTER TABLE `carlist`
  MODIFY `car_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
