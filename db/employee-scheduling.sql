-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 03:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee-scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`, `dt`) VALUES
(1, 'admin@gmail.com', 'admin', '2022-09-15 12:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `create_employee`
--

CREATE TABLE `create_employee` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` bigint(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_employee`
--

INSERT INTO `create_employee` (`id`, `fullname`, `level`, `gender`, `contact`, `email`, `password`, `marital_status`, `dt`) VALUES
(5, 'Tunde Hammed', 'level 2', 'Male', 9076567465, 'tunde@gmail.com', '$2y$10$5KBgUq2cYaPCZhYHqLg3SupRBw.HJ60PnqGUb9WKfudphZ7qMj04q', 'Single', '2022-09-17 19:34:26'),
(6, 'Jude Johnson', 'level 4', 'Male', 8065765456, 'johnson@gmail.com', '$2y$10$7cEQwV4VAK6TAHjTC3kSnuD24QRRt6FGt2fo91K.AkPGmyEbfO6km', 'Married', '2022-09-17 19:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `employee_login`
--

CREATE TABLE `employee_login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `name`, `dt`) VALUES
(2, 'level 1', '2022-09-15 14:33:42'),
(3, 'level 2', '2022-09-15 14:34:11'),
(4, 'level 3', '2022-09-15 14:34:20'),
(5, 'level 4', '2022-09-15 14:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_employee`
--

CREATE TABLE `schedule_employee` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `schedule_type` varchar(255) NOT NULL,
  `starting_date` varchar(255) NOT NULL,
  `ending_date` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_employee`
--

INSERT INTO `schedule_employee` (`id`, `employee_name`, `schedule_type`, `starting_date`, `ending_date`, `dt`) VALUES
(2, 'Tunde Hammed', 'Shift', '2022-09-17T19:18', '2022-09-24T19:18', '2022-09-17 18:18:58'),
(3, 'Tunde Hammed', 'Off Day', '2022-08-31T20:01', '2022-09-15T20:01', '2022-09-17 19:47:33'),
(4, 'Tunde Hammed', 'Off Day', '2022-09-17T20:49', '2022-09-19T20:49', '2022-09-17 19:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_type`
--

CREATE TABLE `schedule_type` (
  `id` int(11) NOT NULL,
  `schedule_name` varchar(255) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_type`
--

INSERT INTO `schedule_type` (`id`, `schedule_name`, `dt`) VALUES
(1, 'Shift', '2022-09-17 17:41:15'),
(2, 'Off Day', '2022-09-17 17:41:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_employee`
--
ALTER TABLE `create_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_login`
--
ALTER TABLE `employee_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_employee`
--
ALTER TABLE `schedule_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_type`
--
ALTER TABLE `schedule_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_employee`
--
ALTER TABLE `create_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_login`
--
ALTER TABLE `employee_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule_employee`
--
ALTER TABLE `schedule_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_type`
--
ALTER TABLE `schedule_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
