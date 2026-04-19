-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2026 at 03:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_types`
--

CREATE TABLE `blood_types` (
  `bloodtype_id` int(11) NOT NULL,
  `bloodtype` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_types`
--

INSERT INTO `blood_types` (`bloodtype_id`, `bloodtype`) VALUES
(2, 'A -'),
(3, 'A+'),
(4, 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(11) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `civil_status` varchar(50) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `home_address` varchar(100) DEFAULT NULL,
  `office_address` varchar(100) DEFAULT NULL,
  `type_of_donor` varchar(50) DEFAULT NULL,
  `method_of_collection` varchar(50) DEFAULT NULL,
  `last_donation` date DEFAULT NULL,
  `number_of_donations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`donor_id`, `last_name`, `name`, `middle_name`, `birthdate`, `age`, `gender`, `civil_status`, `contact`, `email_address`, `nationality`, `occupation`, `home_address`, `office_address`, `type_of_donor`, `method_of_collection`, `last_donation`, `number_of_donations`) VALUES
(2, 'Rendon', 'Nicole', 'Ortega', '2005-04-16', 0, 'Female', '', '092020202020', '', 'Filipino', 'Student', '', '', '', '', NULL, 0),
(3, 'Villahermosa', 'Kert', 'Garcia', '2026-04-17', 0, 'Male', '', '19201375849', '', 'Filipino', 'Student', '', '', '', '', NULL, 0),
(4, 'Segotier', 'Delmar', 'Ortega', '2003-12-06', 0, 'Male', '', '09090909223', '', 'Filipino', 'Student', '', '', '', '', NULL, 0),
(5, 'Velasco', 'Mark', 'Segotier', '1312-01-02', 0, 'Male', '', '09090909223', '', 'Filipino', 'Student', '', '', '', '', NULL, 0),
(6, 'Puno', 'Mark', 'Velasco', '2005-12-02', 0, 'Male', NULL, '09090909223', 'ramled@gmail.com', 'Filipino', 'Student', 'BRGY1', NULL, 'Voluntary', 'Whole Blood', '2024-02-02', 0),
(7, 'Villaestiva', 'Jorem', 'Kert', '2000-01-02', 26, 'Male', NULL, '0912345876', 'jomar@gmail.com', 'Filipino', 'Student', 'Suay', NULL, 'Voluntary', 'Whole Blood', '2024-02-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempt_time` datetime NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `email`, `ip_address`, `attempt_time`, `user_agent`) VALUES
(36, 'glennazuelo1@gmail.com', '::142432432', '2025-04-15 13:15:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `LOGID` int(11) NOT NULL,
  `USERID` varchar(30) DEFAULT NULL,
  `ACTION` text DEFAULT NULL,
  `DATELOG` varchar(30) DEFAULT NULL,
  `TIMELOG` varchar(30) DEFAULT NULL,
  `user_ip_address` text DEFAULT NULL,
  `device_used` text DEFAULT NULL,
  `USER_NAME` varchar(100) DEFAULT NULL,
  `identifier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`LOGID`, `USERID`, `ACTION`, `DATELOG`, `TIMELOG`, `user_ip_address`, `device_used`, `USER_NAME`, `identifier`) VALUES
(1, '1', 'New User has been apdated: Glenn Azuelo', '2025-07-21', '20:11:13', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'UPDATED'),
(2, '1', 'Logout', '2025-07-21', '20:12:03', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'LOGOUT'),
(3, '1', 'Login: Glenn Azuelo', '2025-07-21', '20:12:16', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'LOGIN'),
(4, '1', 'Logout', '2025-07-21', '20:14:42', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'LOGOUT'),
(5, '10', 'Login: Cherry Ann Grandia', '2025-07-21', '20:14:47', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'LOGIN'),
(6, '10', 'New User has been apdated: Glenn Azuelo', '2025-07-21', '20:18:03', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '10', 'UPDATED'),
(7, '10', 'New User has been apdated: Cherry Ann Grandia', '2025-07-21', '20:19:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'UPDATED'),
(8, '10', 'Logout', '2025-07-21', '20:19:18', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', NULL, 'LOGOUT'),
(9, '1', 'Login: Glenn Azuelo', '2025-07-21', '20:19:23', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(10, '1', 'Logout', '2025-07-21', '20:19:56', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGOUT'),
(11, '1', 'Login: Glenn Azuelo', '2025-07-21', '20:21:27', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(12, '1', 'New User has been added: xxx', '2025-07-21', '20:32:39', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(13, '1', 'Delete user', '2025-07-21', '20:32:44', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Glenn Azuelo', 'DELETED'),
(14, '1', 'Login: Glenn Azuelo', '2026-04-16', '15:31:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(15, '1', 'New Donor has been added: Nicole', '2026-04-16', '16:02:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(16, '1', 'Delete user', '2026-04-16', '16:09:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'DELETED'),
(17, '1', 'New Donor has been added: Nicole', '2026-04-16', '16:09:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(18, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '16:37:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(19, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '16:37:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(20, '1', 'New Donor has been added: Kert', '2026-04-16', '16:38:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(21, '1', 'New Donor has been apdated: Kert', '2026-04-16', '16:39:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(22, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '16:39:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(23, '1', 'New Donor has been apdated: Kert', '2026-04-16', '16:44:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(24, '1', 'New Donor has been apdated: Kert', '2026-04-16', '16:44:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(25, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '17:28:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(26, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '17:31:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(27, '1', 'New Donor has been apdated: Kert', '2026-04-16', '17:31:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(28, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '17:33:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(29, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '17:37:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(30, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '17:40:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(31, '1', 'New Bloodtype has been apdated: AB+', '2026-04-16', '18:12:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(32, '1', 'New Bloodtype has been added: A+', '2026-04-16', '18:14:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(33, '1', 'New Bloodtype has been apdated: AB+', '2026-04-16', '18:14:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(34, '1', 'Delete user', '2026-04-16', '18:14:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'DELETED'),
(35, '1', 'New Bloodtype has been added: A+', '2026-04-16', '18:14:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(36, '1', 'New Bloodtype has been added: A+', '2026-04-16', '18:14:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(37, '1', 'New Bloodtype has been added: B+', '2026-04-16', '18:15:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(38, '1', 'New Donor has been apdated: Nicole', '2026-04-16', '18:17:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(39, '1', 'Logout', '2026-04-16', '18:52:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGOUT'),
(40, '1', 'Login: Glenn Azuelo', '2026-04-16', '18:57:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(41, '1', 'Login: Glenn Azuelo', '2026-04-17', '10:03:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(42, '1', 'New Donor has been apdated: Nicole', '2026-04-17', '10:05:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(43, '1', 'New Donor has been added: Delmar', '2026-04-17', '10:25:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(44, '1', 'Login: Glenn Azuelo', '2026-04-17', '12:56:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(45, '1', 'New Donor has been added: Mark', '2026-04-17', '13:45:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(46, '1', 'New Bloodtype has been apdated: A-', '2026-04-17', '14:14:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(47, '1', 'New Bloodtype has been apdated: A -', '2026-04-17', '14:14:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(48, '1', 'Logout', '2026-04-17', '14:19:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGOUT'),
(49, '1', 'Login: Glenn Azuelo', '2026-04-17', '14:20:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(50, '1', 'Logout', '2026-04-17', '14:26:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGOUT'),
(51, NULL, 'Logout', '2026-04-17', '14:26:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'LOGOUT'),
(52, '1', 'Login: Glenn Azuelo', '2026-04-17', '14:27:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(53, '1', 'New Donor has been added: Mark', '2026-04-17', '14:28:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(54, '1', 'Login: Glenn Azuelo', '2026-04-19', '10:49:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(55, '1', 'Login: Glenn Azuelo', '2026-04-19', '11:54:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(56, '1', 'Login: Glenn Azuelo', '2026-04-19', '15:05:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(57, '1', 'New Donor has been added: Jorem', '2026-04-19', '15:10:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(58, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '15:14:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(59, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '15:15:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(60, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '15:16:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(61, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '15:19:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(62, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '15:19:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(63, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '15:21:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(64, NULL, 'New Donor has been apdated: Mark', '2026-04-19', '17:20:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'UPDATED'),
(65, NULL, 'New Donor has been apdated: Mark', '2026-04-19', '17:21:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'UPDATED'),
(66, '1', 'Login: Glenn Azuelo', '2026-04-19', '17:36:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(67, '1', 'New User has been added: Nicole Rendon', '2026-04-19', '17:42:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(68, '1', 'New User has been apdated: Nicole Rendon', '2026-04-19', '17:42:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(69, '1', 'Logout', '2026-04-19', '17:42:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGOUT'),
(70, '12', 'Login: Nicole Rendon', '2026-04-19', '17:42:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGIN'),
(71, '12', 'Logout', '2026-04-19', '18:14:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGOUT'),
(72, '1', 'Login: Glenn Azuelo', '2026-04-19', '18:14:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) DEFAULT 'user',
  `status` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `email`, `password`, `role`, `status`, `name`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'glennazuelo1@gmail.com', '$2y$10$aitqcz/yYmTPfmMGbMbnXuGEdwNG63RI1qbTF9IM0cg5SrUg4P/iu', 'User', 'Active', 'Glenn Azuelo', '09125110476', '2025-04-17 13:31:01', '2025-07-21 04:18:03', '2025-07-21 04:18:03'),
(9, NULL, 'glennazuelo1@gmail.comd', '$2y$10$Xv57FAvSxnip8apDXF3rmutrLIESHcAHYVzQMKgMf2tu6GknL4Plm', 'Admin', 'Active', 'Glenn Azuelo', '09125110476', '2025-05-24 07:00:28', '2025-05-23 23:00:28', '2025-05-23 23:00:28'),
(10, NULL, 'glennazuelo1@gmail.com1', '$2y$10$PxNNhaa76.SAbFFelJU9xOZRajcVMCZkeToZ09l1FR5ll13saXu4q', 'Admin', 'Active', 'Cherry Ann Grandia', '09125110476', '2025-05-24 07:00:50', '2025-07-21 04:19:17', '2025-07-21 04:19:17'),
(12, NULL, 'nicol@gmail.com', '$2y$10$Oo5iqanRgwe27cMrd/ZWIeMxcAoyOR1y9I.DlExXIYT2/sugAW/xu', 'Guest', 'Active', 'Nicole Rendon', '09876543210', '2026-04-19 09:42:13', '2026-04-19 01:42:33', '2026-04-19 01:42:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_types`
--
ALTER TABLE `blood_types`
  ADD PRIMARY KEY (`bloodtype_id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`LOGID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_types`
--
ALTER TABLE `blood_types`
  MODIFY `bloodtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
