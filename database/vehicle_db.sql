-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 23, 2022 at 06:40 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pass`
--

DROP TABLE IF EXISTS `user_pass`;
CREATE TABLE IF NOT EXISTS `user_pass` (
  `uname` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_pass`
--

INSERT INTO `user_pass` (`uname`, `password`) VALUES
('sabari', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

DROP TABLE IF EXISTS `vehicle_details`;
CREATE TABLE IF NOT EXISTS `vehicle_details` (
  `v_id` varchar(5) NOT NULL,
  `v_reg_no` varchar(10) NOT NULL,
  `v_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `v_model` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `v_avble` varchar(1) NOT NULL,
  `v_ins_st_dt` date NOT NULL,
  `v_ins_end_dt` date NOT NULL,
  `v_remark` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`v_id`, `v_reg_no`, `v_type`, `v_model`, `v_avble`, `v_ins_st_dt`, `v_ins_end_dt`, `v_remark`) VALUES
('A0001', 'KL16F3899', 'Motor Cycle w/Gear', 'YAMAHA R15', 'Y', '2022-05-22', '2023-05-22', 'Good condition'),
('A0002', 'KL16P583', 'Motor Cycle w/Gear', 'ROYAL ENFILED CLASSIC 350', 'Y', '2021-10-18', '2022-10-17', 'Good condition'),
('A0003', 'KL16E8870', 'Scooter', 'HERO HONDA PASSION', 'Y', '2021-11-24', '2023-11-23', 'Good conditons');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
