-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 18, 2022 at 09:45 AM
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` varchar(5) NOT NULL,
  `cust_fname` varchar(30) NOT NULL,
  `cust_lname` varchar(30) NOT NULL,
  `cust_adrs` text NOT NULL,
  `cust_city` varchar(40) NOT NULL,
  `cust_country` varchar(40) NOT NULL,
  `cust_pin` int NOT NULL,
  `cust_ph_num` bigint NOT NULL,
  `cust_dl_fl_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_create_tmstmp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='for storing customer details';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_fname`, `cust_lname`, `cust_adrs`, `cust_city`, `cust_country`, `cust_pin`, `cust_ph_num`, `cust_dl_fl_name`, `cust_create_tmstmp`) VALUES
('C0001', 'SABARI', 'ROY S', 'LEKSHMI VASAVAM,KARUNILACODE,EDAVA P.O ,VARKALA', 'VARKALA', 'India', 695311, 9895332879, 'C0001.JPG', '2022-06-04 10:03:36'),
('C0002', 'VISHNU', 'SREE', 'VISHNU VILLA,KURAKKANI,VARKALA P.O', 'VARKALA', 'India', 695141, 9400861071, 'C0002.JPG', '2022-06-03 15:21:32');

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
('admin', 'admin'),
('sabari', '1234'),
('sabaris', '112233');

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
('V0001', 'KL16F3899', 'Motor Cycle w/Gear', 'YAMAHA R15 V1', 'Y', '2022-05-22', '2023-05-21', 'Available'),
('V0002', 'KL16P583', 'Motor Cycle w/Gear', 'ROYAL ENFILED CLASSIC 350', 'Y', '2021-10-18', '2022-10-17', 'Available'),
('V0003', 'KL16E8870', 'Motor Cycle w/Gear', 'HERO HONDA PASSION', 'Y', '2021-11-24', '2023-11-23', 'Available'),
('V0004', 'KL16J2345', 'Scooter', 'HONDA DIO', 'N', '2023-10-18', '2024-10-17', 'Rented'),
('V0005', 'KL16Q6999', 'Car', 'SWIFT DEZIRE', 'Y', '2021-07-09', '2022-07-08', 'Available'),
('V0006', 'KL23G6573', 'Motor Cycle w/Gear', 'YAMAHA FZ', 'Y', '2022-06-18', '2023-06-19', 'Available'),
('V0007', 'KL20AE2230', 'Scooter', 'HONDA ACTIVA', 'Y', '2021-06-22', '2022-06-21', 'Available');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
