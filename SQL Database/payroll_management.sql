-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2022 at 02:29 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `rdata`
--

CREATE TABLE `rdata` (
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `empid` int(255) NOT NULL,
  `email` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `Images` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdata`
--

INSERT INTO `rdata` (`first_name`, `last_name`, `empid`, `email`, `gender`, `address`, `department`, `password`, `Images`) VALUES
('Admin', NULL, 880980000, NULL, NULL, NULL, NULL, '0e7517141fb53f21ee439b355b5a1d0a', NULL),
('Lakshman', 'Gubbala', 880980020, 'Lakshman123@gmail.com', 'MALE', 'Mummidivaram', 'HUMAN RESOURCE', '43f637abd004bc0b86ea275b94484140', NULL),
('Nagendra', 'Gubbala', 880980021, 'Nagendra123@gmail.com', 'MALE', 'Mummidivaram', 'TESTING', '43f637abd004bc0b86ea275b94484140', 'uploads/Fgyyh3KUYAEYbIh (2).jpeg'),
('Suresh', 'Gundumogula', 880980022, 'sureshkumar27309@gmail.com', 'MALE', 'I.Polavaram', 'CODING', '43f637abd004bc0b86ea275b94484140', 'uploads/Fg0bFqsWAAM5y3E.jpeg'),
('Vinay', 'Kanchi', 880980026, 'vinay@123gmail.com', 'MALE', 'Kadali', 'MAINTANANCE', '43f637abd004bc0b86ea275b94484140', NULL),
('Veera', 'Chaitanya', 880980063, 'chaitanya123@gmail.com', 'MALE', 'Amalapuram', 'DESIGN', '43f637abd004bc0b86ea275b94484140', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Salary`
--

CREATE TABLE `Salary` (
  `empid` int(100) DEFAULT NULL,
  `payment_id` double NOT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Salary`
--

INSERT INTO `Salary` (`empid`, `payment_id`, `month`, `year`, `class`) VALUES
(880980020, 1804723001, 'September', '2022', 'Interns'),
(880980021, 1804723002, 'September', '2022', 'Team Leaders'),
(880980022, 1804723003, 'September', '2022', 'Top Level Management'),
(880980026, 1804723004, 'September', '2022', 'Sr Employees'),
(880980063, 1804723005, 'September', '2022', 'Jr Employees'),
(880980020, 1804723006, 'October', '2022', 'Interns'),
(880980021, 1804723007, 'October', '2022', 'Team Leaders'),
(880980022, 1804723008, 'October', '2022', 'Top Level Management'),
(880980026, 1804723009, 'October', '2022', 'Sr Employees'),
(880980063, 1804723010, 'October', '2022', 'Jr Employees');

-- --------------------------------------------------------

--
-- Table structure for table `Salary_Class`
--

CREATE TABLE `Salary_Class` (
  `Class` varchar(20) DEFAULT NULL,
  `BS` double DEFAULT NULL,
  `HRA` double DEFAULT NULL,
  `TA` double DEFAULT NULL,
  `MA` double DEFAULT NULL,
  `TDS` double DEFAULT NULL,
  `PT` double DEFAULT NULL,
  `PF` double DEFAULT NULL,
  `GS` double DEFAULT NULL,
  `NS` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Salary_Class`
--

INSERT INTO `Salary_Class` (`Class`, `BS`, `HRA`, `TA`, `MA`, `TDS`, `PT`, `PF`, `GS`, `NS`) VALUES
('Interns', 15000, 2000, 1000, 500, 1000, 500, 500, 18500, 16500),
('Jr Employees', 30000, 5000, 3000, 2000, 3500, 1500, 2000, 40000, 33000),
('Sr Employees', 50000, 7000, 5000, 3000, 6500, 3000, 3500, 65000, 52000),
('Team Leaders', 70000, 7000, 5000, 3000, 8500, 5000, 4500, 85000, 67000),
('Top Level Management', 100000, 8000, 6000, 4000, 15000, 7000, 5000, 118000, 91000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rdata`
--
ALTER TABLE `rdata`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `Salary`
--
ALTER TABLE `Salary`
  ADD UNIQUE KEY `payment_id` (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rdata`
--
ALTER TABLE `rdata`
  MODIFY `empid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880980066;

--
-- AUTO_INCREMENT for table `Salary`
--
ALTER TABLE `Salary`
  MODIFY `payment_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1804723011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
