-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 07:10 PM
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
-- Database: `appointment_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_form`
--

CREATE TABLE `appointment_form` (
  `Sr no.` int(3) NOT NULL,
  `Title` text NOT NULL,
  `First Name` text NOT NULL,
  `Last Name` varchar(255) NOT NULL,
  `Email ID` text NOT NULL,
  `Phone Number` varchar(10) NOT NULL,
  `Addresss` varchar(60) NOT NULL,
  `Appointment Date` date NOT NULL,
  `Appointment Time` time NOT NULL,
  `Services` text NOT NULL,
  `Comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_form`
--

INSERT INTO `appointment_form` (`Sr no.`, `Title`, `First Name`, `Last Name`, `Email ID`, `Phone Number`, `Addresss`, `Appointment Date`, `Appointment Time`, `Services`, `Comments`) VALUES
(1, 'Mr.', 'VinayKumar', 'Pitla', 'vinaypitla@gmail.com', '+918524567', 'Worli Mumbai', '2022-09-09', '19:30:00', 'Treatments', 'None'),
(2, 'Mrs.', 'shreya', 'Pathak', 'shreyapathak@gmail.com', '+918956231', 'Dadar Mumbai', '2022-09-16', '19:00:00', 'Tests', 'None');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_form`
--
ALTER TABLE `appointment_form`
  ADD PRIMARY KEY (`Sr no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_form`
--
ALTER TABLE `appointment_form`
  MODIFY `Sr no.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
