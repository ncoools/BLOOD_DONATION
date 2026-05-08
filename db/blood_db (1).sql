-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2026 at 08:53 AM
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
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(6, 'B-'),
(7, 'AB+'),
(8, 'AB-'),
(9, 'O+'),
(10, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
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

INSERT INTO `donors` (`donor_id`, `date`, `venue`, `last_name`, `name`, `middle_name`, `birthdate`, `age`, `gender`, `civil_status`, `contact`, `email_address`, `nationality`, `occupation`, `home_address`, `office_address`, `type_of_donor`, `method_of_collection`, `last_donation`, `number_of_donations`) VALUES
(2, 'MARCH 31, 2052', 'BRGY 1', 'Rendon', 'Nicole', 'Ortega', '2005-04-16', 20, 'Female', 'Single ', '09202056776', 'nic@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'BRGY 1, KABANKALAN CITY', 'BRGY 1, KABANKALAN CITY', 'Voluntary', 'Whole Blood', '2023-09-23', 3),
(3, 'MARCH 31, 2025', 'BRGY 1', 'Villahermosa', 'Kert', 'Garcia', '2004-04-17', 21, 'Male', 'Single ', '19201375849', 'ker@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy 6, Kabankalan City', 'Brgy 6, Kabankalan City', 'Voluntary', 'Whole Blood', '2024-09-22', 1),
(4, 'MARCH 31, 2025', 'BRGY 1', 'Segotier', 'Delmar', 'Ortega', '2003-01-06', 23, 'Male', 'Single ', '09876254387', 'nel@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Salong, Kabankalan City', 'Brgy Salong, Kabankalan City', 'Voluntary', 'Whole Blood', '2020-01-01', 1),
(5, 'MARCH 31, 2025', 'BRGY 1', 'Velasco', 'Mark', 'Segotier', '2005-01-02', 21, 'Male', 'Single ', '09090909223', 'rams@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy 1, Ilog', 'Brgy 1, Ilog', 'Voluntary', 'Whole Blood', '2025-10-11', 5),
(6, 'MARCH 31, 2025', 'BRGY 1', 'Puno', 'Mark', 'Velasco', '2005-12-02', 21, 'Male', 'Single ', '09238664781', 'ramled@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Bantayan, Kabankalan City', 'Brgy Bantayan, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-02-25', 1),
(7, 'MARCH 31, 2025', 'BRGY 1', 'Villaestiva', 'Jorem', 'Reyes', '2000-01-02', 26, 'Male', 'Single ', '0912345876', 'jorm@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Suay, Himamaylan', 'Suay, Himamaylan', 'Voluntary', 'Whole Blood', '2022-11-29', 2),
(8, 'MARCH 31, 2025', 'BRGY 1', 'Villaestiva', 'Mark', 'Segotier', '2005-04-24', 21, 'Male', 'Single ', '0912345876', 'jomar@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Salong, Kabankalan City', 'Brgy Salong, Kabankalan City', 'Voluntary', 'Whole Blood', '2022-05-16', 6),
(9, 'MARCH 31, 2025', 'BRGY 1', 'Torres', 'Nathaniel', 'Guanzon', '2000-02-20', 26, 'Male', 'Single ', '09874652372', 'naaat@gmail.com', 'Filipino', 'Unemployed ', 'Brgy Salong, Kabankalan City', 'Brgy Salong, Kabankalan City', 'Voluntary', 'Whole Blood', '2020-12-08', 12),
(10, 'MARCH 31, 2025', 'BRGY 1', 'Corpuz', 'Ann', 'Reyes', '2005-07-22', 20, 'Female', 'Single ', '09856743221', 'annc@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Bantayan, Kabankalan City', 'Bantayan, Kabankalan City', 'Voluntary', 'Whole Blood', '2020-03-17', 12),
(11, 'MARCH 31, 2025', 'BRGY 1', 'Guerero', 'Maria', 'Arada', '2000-09-23', 25, 'Male', 'Single', '09889763984', 'guerero11@gmail.com', 'Filipino', 'Unemployed', 'Brgy 2, Kabankalan City', 'Brgy 2, Kabankalan City', 'Voluntary', 'Whole Blood', '2021-11-20', 3),
(12, 'MARCH 31, 2025', 'BRGY 1', 'Aplaon', 'Maricel', 'Ortega', '2006-01-22', 20, 'Female', 'Single ', '09556324785', 'riiiii@gmail.com', 'Filipino', ' Employed ', 'Brgy Tapi, Kabankalan City', 'Brgy Tapi, Kabankalan City', 'Voluntary', 'Whole Blood', '2021-11-11', 5),
(13, 'MARCH 31, 2025', 'BRGY 1', 'Lopez', 'Joe', 'Tanyao', '2000-11-22', 25, 'Male', 'Single', '09635477852', 'joe02@gmail.com', 'Filipino', 'Unemployed', 'Brgy Hilamonan, Kabankalan City', 'Brgy Hilamonan, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-11-29', 15),
(14, 'MARCH 31, 2025', 'BRGY 1', 'Martinez', 'Ann', 'Guanzon', '2005-09-30', 20, 'Female', 'Single ', '09633587421', 'guanz@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Hilamonan, Kabankalan City', 'Brgy Hilamonan, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-11-26', 6),
(15, 'MARCH 31, 2025', 'BRGY 1', 'Cordero', 'Josephine', 'Santos', '2005-09-22', 20, 'Female', 'Single ', '09687533214', 'phinn@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Salong, Kabankalan City', 'Brgy Salong, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-12-11', 8),
(16, 'MARCH 31, 2025', 'BRGY 1', 'Alayon', 'Maris', 'Reyes', '2004-09-22', 21, 'Male', 'Single', '09635887532', 'alyon@gmail.com', 'Filipino', 'Student', 'Brgy Oringao, Kabankalan City', 'Brgy Oringao, Kabankalan City', 'Voluntary', 'Whole Blood', '2026-02-22', 5),
(17, 'MARCH 31, 2025', 'BRGY 1', 'Morales', 'Eya', 'Delprado', '2004-01-22', 21, 'Male', 'Single ', '09365288641', 'morales.a@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Tabugon, Kabankalan City', 'Brgy Tabugon, Kabankalan City', 'Voluntary', 'Whole Blood', '2026-01-21', 3),
(18, 'MARCH 31, 2025', 'BRGY 1', 'Antonio', 'Jobert', 'Reyes', '2005-12-11', 21, 'Male', 'Single ', '09875663254', 'anton@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy 8, Kabankalan City', 'Brgy 8, Kabankalan City', 'Voluntary', 'Whole Blood', '2023-07-28', 6),
(19, 'MARCH 31, 2025', 'BRGY 1', 'Reyes', 'Marie', 'Guadalupe', '1995-02-19', 31, 'Female', 'Single ', '09985663254', 'marie.rey@gmail.com', 'Filipino', ' Employed ', 'Brgy 4, Kabankalan City', 'Brgy 4, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-05-29', 17),
(20, 'MARCH 31, 2025', 'BRGY 1', 'Puno', 'Mark', 'Ortega', '2005-11-26', 20, 'Male', 'Single ', '09876254388', 'markk@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy 9, Kabankalan City', 'Brgy 9, Kabankalan City', 'Voluntary', 'Whole Blood', '2024-11-24', 2),
(21, 'MARCH 31, 2025', 'BRGY 1', 'Sandigan', 'Anthony', 'Guanzon', '2004-09-22', 21, 'Male', 'Single ', '09845231450', 'sndgn@gmail.com', 'Filipino', 'Student / Not in the Labor Force', 'Brgy Pinaguinpinan, Kabankalan City', 'Brgy Pinaguinpinan, Kabankalan City', 'Voluntary', 'Whole Blood', '2020-07-29', 1),
(22, 'MARCH 31, 2025', 'BRGY 1', 'Santos', 'Jonard', 'Wili', '2000-12-12', 25, 'Male', 'Single ', '09541123654', 'wiliii@gmail.com', 'Filipino', 'Unemployed ', 'Brgy 6, Kabankalan City', 'Brgy 6, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-02-23', 14),
(23, 'JULY 31, 2025', 'BRGY 9', 'Reyes', 'Mikko', 'Delos Reyes', '1995-10-22', 30, 'Male', 'Single ', '09645872315', 'reyesm@gmail.ocm', 'Filipino', 'Unemployed ', 'Suay, Himamaylan', 'Suay, Himamaylan', 'Voluntary', 'Whole Blood', '1015-11-22', 7),
(24, 'JULY 31, 2025', 'BRGY 9', 'Dela Cruz', 'Aliza', 'Montalvo', '1990-09-22', 35, 'Female', 'Single ', '09878759345', 'lizaa@gmail.com', 'Filipino', ' Employed ', 'Brgy Camansi, Kabankalan City', 'Brgy Camansi, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-09-29', 9),
(25, 'JULY 31, 2025', 'BRGY 9', 'Mondejar', 'Jopay', 'Lirazan', '1990-06-20', 35, 'Female', 'Single ', '09876554792', 'jops@gmail.com', 'Filipino', ' Employed ', 'Brgy Carol-an, Kabankalan City', 'Brgy Carol-an, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-11-24', 18),
(26, 'JULY 31, 2025', 'BRGY 9', 'Lirazan', 'Maria', 'Perez', '2000-03-14', 26, 'Female', 'Single', '09874652390', 'mariiii@gmail.com', 'Filipino', 'Unemployed', NULL, 'Brgy Tapi, Kabankalan City', 'Voluntary', 'Whole Blood', '2026-01-21', 8),
(27, 'JULY 31, 2025', 'BRGY 9', 'Alejandro', 'Maris', 'Garcia', '1989-09-27', 36, 'Female', 'Single ', '09635874265', 'alejandr@gmail.com', 'Filipino', ' Employed ', 'Brgy 5, Kabankalan City', 'Brgy 5, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-09-05', 18),
(28, 'JULY 31, 2025', 'BRGY 9', 'Villaruel', 'Martin', 'Ganaba', '1992-03-21', 33, 'Male', 'Single ', '09875321654', 'marttt@gmail.com', 'Filipino', ' Employed ', 'Brgy 8, Kabankalan City', 'Brgy 8, Kabankalan City', 'Voluntary', 'Whole Blood', '2025-09-29', 16),
(29, 'JULY 31, 2025', 'BRGY 9', 'Guanzon', 'Amira', 'vicente', '2005-07-27', 20, 'Female', 'Single ', '09635874236', 'amiraaa2Gmail.com', 'Filipino', 'Student / Not in the Labor Force', NULL, 'Brgy Inapoy, Kabankalan City', 'Voluntary', 'Whole Blood', '2026-12-22', 7),
(30, '2026-05-08', 'Brgy 7', 'Perez', 'Alfred', 'Santos', '1967-03-12', 58, 'Male', 'Married', '09170000041', 'alfred41@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2025-02-11', 5),
(31, '2026-05-08', 'Brgy 7', 'Reyes', 'Marites', 'Lopez', '1971-07-22', 54, 'Female', 'Widowed', '09170000042', 'marites42@email.com', 'Filipino', 'Unemployed', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Individual', 'In-kind', '2025-01-18', 2),
(32, '2026-05-08', 'Brgy 7', 'Cruz', 'Ramon', 'Garcia', '1965-10-05', 60, 'Male', 'Married', '09170000043', 'ramon43@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Corporate', 'Cash', '2025-03-02', 7),
(33, '2026-05-08', 'Brgy 7', 'Santos', 'Elena', 'Reyes', '1969-04-18', 56, 'Female', 'Married', '09170000044', 'elena44@email.com', 'Filipino', 'Employed', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Individual', 'Cash', '2025-02-25', 3),
(34, '2026-05-08', 'Brgy 7', 'Lopez', 'Victor', 'Mendoza', '1968-01-09', 57, 'Male', 'Married', '09170000045', 'victor45@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Corporate', 'Cash', '2025-01-10', 6),
(35, '2026-05-08', 'Brgy 7', 'Garcia', 'Diana', 'Santos', '1973-06-14', 52, 'Female', 'Single', '09170000046', 'diana46@email.com', 'Filipino', 'Underemployed', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Individual', 'In-kind', '2025-04-01', 2),
(36, '2026-05-08', 'Brgy 7', 'Ramos', 'Joel', 'Lopez', '1966-09-30', 59, 'Male', 'Married', '09170000047', 'joel47@email.com', 'Filipino', 'Employed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Corporate', 'Cash', '2025-02-08', 8),
(37, '2026-05-08', 'Brgy 7', 'Navarro', 'Carmen', 'Cruz', '1970-12-12', 55, 'Female', 'Widowed', '09170000048', 'carmen48@email.com', 'Filipino', 'Unemployed', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Individual', 'Cash', '2025-03-15', 3),
(38, '2026-05-08', 'Brgy 7', 'Bautista', 'Henry', 'Reyes', '1964-05-05', 61, 'Male', 'Married', '09170000049', 'henry49@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Corporate', 'Cash', '2025-01-20', 9),
(39, '2026-05-08', 'Brgy 7', 'Mendoza', 'Lourdes', 'Santos', '1972-02-28', 53, 'Female', 'Married', '09170000050', 'lourdes50@email.com', 'Filipino', 'Employed', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Individual', 'Cash', '2025-02-14', 4),
(40, '2026-05-08', 'Brgy 7', 'Torres', 'Arnold', 'Lopez', '1967-08-08', 58, 'Male', 'Married', '09170000051', 'arnold51@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Corporate', 'Cash', '2025-03-09', 6),
(41, '2026-05-08', 'Brgy 7', 'Cruz', 'Rosalie', 'Garcia', '1969-11-11', 56, 'Female', 'Widowed', '09170000052', 'rosalie52@email.com', 'Filipino', 'Unemployed', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Individual', 'In-kind', '2025-01-05', 2),
(42, '2026-05-08', 'Brgy 7', 'Reyes', 'Carlos', 'Santos', '1965-02-02', 60, 'Male', 'Married', '09170000053', 'carlos53@email.com', 'Filipino', 'Employed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Corporate', 'Cash', '2025-02-21', 7),
(43, '2026-05-08', 'Brgy 7', 'Lopez', 'Imelda', 'Cruz', '1971-06-06', 54, 'Female', 'Married', '09170000054', 'imelda54@email.com', 'Filipino', 'Employed', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Individual', 'Cash', '2025-03-11', 3),
(44, '2026-05-08', 'Brgy 7', 'Santos', 'Eduardo', 'Mendoza', '1968-09-09', 57, 'Male', 'Married', '09170000055', 'eduardo55@email.com', 'Filipino', 'Employed', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Corporate', 'Cash', '2025-01-28', 6),
(45, '2026-05-08', 'Brgy 7', 'Garcia', 'Melissa', 'Reyes', '1970-03-03', 55, 'Female', 'Single', '09170000056', 'melissa56@email.com', 'Filipino', 'Underemployed', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Individual', 'In-kind', '2025-02-10', 2),
(46, '2026-05-08', 'Brgy 7', 'Ramos', 'Alberto', 'Lopez', '1966-07-07', 59, 'Male', 'Married', '09170000057', 'alberto57@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2025-03-25', 8),
(47, '2026-05-08', 'Brgy 7', 'Navarro', 'Sofia', 'Santos', '1973-01-01', 52, 'Female', 'Widowed', '09170000058', 'sofia58@email.com', 'Filipino', 'Unemployed', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Individual', 'Cash', '2025-01-18', 3),
(48, '2026-05-08', 'Brgy 7', 'Bautista', 'Miguel', 'Cruz', '1968-10-10', 57, 'Male', 'Married', '09170000059', 'miguel59@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Corporate', 'Cash', '2025-02-07', 7),
(49, '2026-05-08', 'Brgy 7', 'Mendoza', 'Teresa', 'Garcia', '1971-12-12', 54, 'Female', 'Married', '09170000060', 'teresa60@email.com', 'Filipino', 'Employed', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Individual', 'Cash', '2025-03-30', 4),
(50, '2026-05-08', 'Brgy 7', 'Perez', 'Roberto', 'Santos', '1965-03-15', 60, 'Male', 'Married', '09170000061', 'roberto61@email.com', 'Filipino', 'Employed', 'Brgy 2, Kabankalan City', 'Brgy 3, Kabankalan City', 'Corporate', 'Cash', '2025-02-12', 6),
(51, '2026-05-08', 'Brgy 7', 'Reyes', 'Gloria', 'Lopez', '1970-07-07', 55, 'Female', 'Widowed', '09170000062', 'gloria62@email.com', 'Filipino', 'Unemployed', 'Brgy 4, Kabankalan City', 'Brgy 5, Kabankalan City', 'Individual', 'In-kind', '2025-01-20', 2),
(52, '2026-05-08', 'Brgy 7', 'Cruz', 'Fernando', 'Garcia', '1968-10-10', 57, 'Male', 'Married', '09170000063', 'fernando63@email.com', 'Filipino', 'Employed', 'Brgy 6, Kabankalan City', 'Brgy 7, Kabankalan City', 'Corporate', 'Cash', '2025-03-03', 7),
(53, '2026-05-08', 'Brgy 7', 'Santos', 'Victoria', 'Reyes', '1972-02-02', 53, 'Female', 'Married', '09170000064', 'victoria64@email.com', 'Filipino', 'Employed', 'Brgy 8, Kabankalan City', 'Brgy 9, Kabankalan City', 'Individual', 'Cash', '2025-02-18', 4),
(54, '2026-05-08', 'Brgy 7', 'Lopez', 'Ricardo', 'Mendoza', '1966-06-06', 59, 'Male', 'Married', '09170000065', 'ricardo65@email.com', 'Filipino', 'Employed', 'Bantayan, Kabankalan City', 'Binicuil, Kabankalan City', 'Corporate', 'Cash', '2025-01-05', 8),
(55, '2026-05-08', 'Brgy 7', 'Garcia', 'Rosario', 'Santos', '1971-09-09', 54, 'Female', 'Widowed', '09170000066', 'rosario66@email.com', 'Filipino', 'Unemployed', 'Camansi, Kabankalan City', 'Camingawan, Kabankalan City', 'Individual', 'In-kind', '2025-03-11', 3),
(56, '2026-05-08', 'Brgy 7', 'Ramos', 'Eduardo', 'Lopez', '1967-12-12', 58, 'Male', 'Married', '09170000067', 'eduardo67@email.com', 'Filipino', 'Employed', 'Camugao, Kabankalan City', 'Carol-an, Kabankalan City', 'Corporate', 'Cash', '2025-02-09', 6),
(57, '2026-05-08', 'Brgy 7', 'Navarro', 'Lucia', 'Cruz', '1970-04-04', 55, 'Female', 'Widowed', '09170000068', 'lucia68@email.com', 'Filipino', 'Unemployed', 'Daan Banua, Kabankalan City', 'Hilamonan, Kabankalan City', 'Individual', 'Cash', '2025-01-14', 2),
(58, '2026-05-08', 'Brgy 7', 'Bautista', 'Antonio', 'Reyes', '1964-08-08', 61, 'Male', 'Married', '09170000069', 'antonio69@email.com', 'Filipino', 'Employed', 'Inapoy, Kabankalan City', 'Linao, Kabankalan City', 'Corporate', 'Cash', '2025-03-28', 9),
(59, '2026-05-08', 'Brgy 7', 'Mendoza', 'Cecilia', 'Santos', '1973-01-01', 52, 'Female', 'Married', '09170000070', 'cecilia70@email.com', 'Filipino', 'Employed', 'Locotan, Kabankalan City', 'Magballo, Kabankalan City', 'Individual', 'Cash', '2025-02-22', 4),
(60, '2026-05-08', 'Brgy 7', 'Torres', 'Gregorio', 'Lopez', '1968-05-05', 57, 'Male', 'Married', '09170000071', 'gregorio71@email.com', 'Filipino', 'Employed', 'Oringao, Kabankalan City', 'Orong, Kabankalan City', 'Corporate', 'Cash', '2025-01-11', 7),
(61, '2026-05-08', 'Brgy 7', 'Cruz', 'Esperanza', 'Garcia', '1971-07-07', 54, 'Female', 'Widowed', '09170000072', 'esperanza72@email.com', 'Filipino', 'Unemployed', 'Pinaguinpinan, Kabankalan City', 'Salong, Kabankalan City', 'Individual', 'In-kind', '2025-03-05', 3),
(62, '2026-05-08', 'Brgy 7', 'Reyes', 'Manuel', 'Santos', '1965-11-11', 60, 'Male', 'Married', '09170000073', 'manuel73@email.com', 'Filipino', 'Employed', 'Tabugon, Kabankalan City', 'Tagoc, Kabankalan City', 'Corporate', 'Cash', '2025-02-01', 8),
(63, '2026-05-08', 'Brgy 7', 'Lopez', 'Aurora', 'Cruz', '1970-06-06', 55, 'Female', 'Married', '09170000074', 'aurora74@email.com', 'Filipino', 'Employed', 'Tagukon, Kabankalan City', 'Talubangi, Kabankalan City', 'Individual', 'Cash', '2025-03-18', 4),
(64, '2026-05-08', 'Brgy 7', 'Santos', 'Felipe', 'Mendoza', '1966-09-09', 59, 'Male', 'Married', '09170000075', 'felipe75@email.com', 'Filipino', 'Employed', 'Tampalon, Kabankalan City', 'Tan-Awan, Kabankalan City', 'Corporate', 'Cash', '2025-01-30', 6),
(65, '2026-05-08', 'Brgy 7', 'Garcia', 'Lourdes', 'Reyes', '1972-03-03', 53, 'Female', 'Single', '09170000076', 'lourdes76@email.com', 'Filipino', 'Underemployed', 'Tapi, Kabankalan City', 'Brgy 1, Kabankalan City', 'Individual', 'In-kind', '2025-02-14', 2),
(66, '2026-05-08', 'Brgy 7', 'Ramos', 'Sergio', 'Lopez', '1968-07-07', 57, 'Male', 'Married', '09170000077', 'sergio77@email.com', 'Filipino', 'Employed', 'Brgy 2, Kabankalan City', 'Brgy 3, Kabankalan City', 'Corporate', 'Cash', '2025-03-22', 7),
(67, '2026-05-08', 'Brgy 7', 'Navarro', 'Beatriz', 'Santos', '1971-10-10', 54, 'Female', 'Widowed', '09170000078', 'beatriz78@email.com', 'Filipino', 'Unemployed', 'Brgy 4, Kabankalan City', 'Brgy 5, Kabankalan City', 'Individual', 'Cash', '2025-01-08', 3),
(68, '2026-05-08', 'Brgy 7', 'Bautista', 'Hector', 'Cruz', '1967-01-01', 58, 'Male', 'Married', '09170000079', 'hector79@email.com', 'Filipino', 'Employed', 'Brgy 6, Kabankalan City', 'Brgy 7, Kabankalan City', 'Corporate', 'Cash', '2025-02-19', 6),
(69, '2026-05-08', 'Brgy 7', 'Mendoza', 'Dolores', 'Garcia', '1970-12-12', 55, 'Female', 'Married', '09170000080', 'dolores80@email.com', 'Filipino', 'Employed', 'Brgy 8, Kabankalan City', 'Brgy 9, Kabankalan City', 'Individual', 'Cash', '2025-03-30', 4),
(70, '2026-02-08', 'Brgy 7', 'Perez', 'Isabelo', 'Santos', '1966-02-10', 59, 'Male', 'Married', '09170000081', 'isabelo81@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Corporate', 'Cash', '2025-01-10', 7),
(71, '2026-02-08', 'Brgy 7', 'Reyes', 'Margarita', 'Lopez', '1971-05-22', 54, 'Female', 'Widowed', '09170000082', 'margarita82@email.com', 'Filipino', 'Unemployed', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Individual', 'In-kind', '2025-02-12', 2),
(72, '2026-02-08', 'Brgy 7', 'Cruz', 'Rodolfo', 'Garcia', '1968-08-14', 57, 'Male', 'Married', '09170000083', 'rodolfo83@email.com', 'Filipino', 'Employed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Corporate', 'Cash', '2025-03-01', 6),
(73, '2026-02-08', 'Brgy 7', 'Santos', 'Leticia', 'Reyes', '1970-11-30', 55, 'Female', 'Married', '09170000084', 'leticia84@email.com', 'Filipino', 'Employed', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Individual', 'Cash', '2025-01-25', 4),
(74, '2026-02-08', 'Brgy 7', 'Lopez', 'Francisco', 'Mendoza', '1965-04-18', 60, 'Male', 'Married', '09170000085', 'francisco85@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Corporate', 'Cash', '2025-02-05', 9),
(75, '2026-02-08', 'Brgy 7', 'Garcia', 'Conchita', 'Santos', '1972-07-07', 53, 'Female', 'Widowed', '09170000086', 'conchita86@email.com', 'Filipino', 'Unemployed', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Individual', 'In-kind', '2025-03-14', 3),
(76, '2026-02-08', 'Brgy 7', 'Ramos', 'Bernardo', 'Lopez', '1967-09-09', 58, 'Male', 'Married', '09170000087', 'bernardo87@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Corporate', 'Cash', '2025-01-09', 6),
(77, '2026-02-08', 'Brgy 7', 'Navarro', 'Estrella', 'Cruz', '1971-03-03', 54, 'Female', 'Widowed', '09170000088', 'estrella88@email.com', 'Filipino', 'Unemployed', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Individual', 'Cash', '2025-02-22', 2),
(78, '2026-02-08', 'Brgy 7', 'Bautista', 'Domingo', 'Reyes', '1964-06-06', 61, 'Male', 'Married', '09170000089', 'domingo89@email.com', 'Filipino', 'Employed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Corporate', 'Cash', '2025-03-11', 10),
(79, '2026-02-08', 'Brgy 7', 'Mendoza', 'Rosalinda', 'Santos', '1973-01-15', 52, 'Female', 'Married', '09170000090', 'rosalinda90@email.com', 'Filipino', 'Employed', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Individual', 'Cash', '2025-01-28', 4),
(80, '2026-02-08', 'Brgy 7', 'Torres', 'Emilio', 'Lopez', '1968-12-12', 57, 'Male', 'Married', '09170000091', 'emilio91@email.com', 'Filipino', 'Employed', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Corporate', 'Cash', '2025-02-18', 7),
(81, '2026-02-08', 'Brgy 7', 'Cruz', 'Alicia', 'Garcia', '1970-02-02', 55, 'Female', 'Widowed', '09170000092', 'alicia92@email.com', 'Filipino', 'Unemployed', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Individual', 'In-kind', '2025-03-20', 3),
(82, '2026-02-08', 'Brgy 7', 'Reyes', 'Simeon', 'Santos', '1966-05-05', 59, 'Male', 'Married', '09170000093', 'simeon93@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2025-01-07', 8),
(83, '2026-02-08', 'Brgy 7', 'Lopez', 'Carmela', 'Cruz', '1971-08-08', 54, 'Female', 'Married', '09170000094', 'carmela94@email.com', 'Filipino', 'Employed', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Individual', 'Cash', '2025-02-14', 4),
(84, '2026-02-08', 'Brgy 7', 'Santos', 'Alfonso', 'Mendoza', '1967-11-11', 58, 'Male', 'Married', '09170000095', 'alfonso95@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Corporate', 'Cash', '2025-03-03', 6),
(85, '2026-02-08', 'Brgy 7', 'Garcia', 'Teresa', 'Reyes', '1972-04-04', 53, 'Female', 'Single', '09170000096', 'teresa96@email.com', 'Filipino', 'Underemployed', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Individual', 'Cash', '2025-01-16', 2),
(86, '2026-02-08', 'Brgy 7', 'Ramos', 'Felix', 'Lopez', '1965-07-07', 60, 'Male', 'Married', '09170000097', 'felix97@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Corporate', 'Cash', '2025-02-25', 9),
(87, '2026-02-08', 'Brgy 7', 'Navarro', 'Adela', 'Santos', '1970-09-09', 55, 'Female', 'Widowed', '09170000098', 'adela98@email.com', 'Filipino', 'Unemployed', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Individual', 'In-kind', '2025-03-05', 3),
(88, '2026-02-08', 'Brgy 7', 'Bautista', 'Gerardo', 'Cruz', '1968-01-01', 57, 'Male', 'Married', '09170000099', 'gerardo99@email.com', 'Filipino', 'Employed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Corporate', 'Cash', '2025-01-20', 7),
(89, '2026-02-08', 'Brgy 7', 'Mendoza', 'Elvira', 'Garcia', '1971-12-12', 54, 'Female', 'Married', '09170000100', 'elvira100@email.com', 'Filipino', 'Employed', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Individual', 'Cash', '2025-02-28', 4),
(90, '2026-02-08', 'Brgy 7', 'Santos', 'John Mark', 'Lopez', '1998-06-12', 27, 'Male', 'Single', '09180000001', 'johnmark1@email.com', 'Filipino', 'Student', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Student Donor', 'Cash', '2025-12-01', 1),
(91, '2026-02-08', 'Brgy 7', 'Reyes', 'Maria Angelica', 'Cruz', '2000-03-22', 25, 'Female', 'Single', '09180000002', 'maria2@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2025-11-15', 1),
(92, '2026-02-08', 'Brgy 7', 'Garcia', 'Kevin', 'Santos', '1995-09-10', 30, 'Male', 'Single', '09180000003', 'kevin3@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Individual', 'Cash', '2025-10-10', 2),
(93, '2026-02-08', 'Brgy 7', 'Lopez', 'Jessa', 'Reyes', '2002-01-14', 23, 'Female', 'Single', '09180000004', 'jessa4@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2025-12-05', 1),
(94, '2026-02-08', 'Brgy 7', 'Cruz', 'Mark Anthony', 'Santos', '1999-07-07', 26, 'Male', 'Single', '09180000005', 'mark5@email.com', 'Filipino', 'Underemployed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Individual', 'Cash', '2025-09-18', 1),
(95, '2026-02-08', 'Brgy 7', 'Navarro', 'Angel', 'Lopez', '2001-11-30', 24, 'Female', 'Single', '09180000006', 'angel6@email.com', 'Filipino', 'Student', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Student Donor', 'In-kind', '2025-11-01', 1),
(96, '2026-02-08', 'Brgy 7', 'Ramos', 'Joshua', 'Cruz', '1996-02-02', 29, 'Male', 'Single', '09180000007', 'joshua7@email.com', 'Filipino', 'Employed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Individual', 'Cash', '2025-08-10', 2),
(97, '2026-02-08', 'Brgy 7', 'Bautista', 'Kimberly', 'Reyes', '2003-05-05', 22, 'Female', 'Single', '09180000008', 'kim8@email.com', 'Filipino', 'Student', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Student Donor', 'In-kind', '2025-12-20', 1),
(98, '2026-02-08', 'Brgy 7', 'Mendoza', 'Ryan', 'Santos', '1997-08-08', 28, 'Male', 'Single', '09180000009', 'ryan9@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Individual', 'Cash', '2025-07-11', 3),
(99, '2026-02-08', 'Brgy 7', 'Torres', 'Alyssa', 'Lopez', '2000-10-10', 25, 'Female', 'Single', '09180000010', 'alyssa10@email.com', 'Filipino', 'Student', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Student Donor', 'In-kind', '2025-11-25', 1),
(100, '2026-02-08', 'Brgy 7', 'Santos', 'Paolo', 'Cruz', '1994-04-04', 31, 'Male', 'Single', '09180000011', 'paolo11@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Individual', 'Cash', '2025-06-15', 2),
(101, '2026-02-08', 'Brgy 7', 'Reyes', 'Christine', 'Garcia', '2002-09-09', 23, 'Female', 'Single', '09180000012', 'christine12@email.com', 'Filipino', 'Student', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Student Donor', 'In-kind', '2025-12-18', 1),
(102, '2026-02-08', 'Brgy 7', 'Lopez', 'Miguel', 'Santos', '1998-12-12', 27, 'Male', 'Single', '09180000013', 'miguel13@email.com', 'Filipino', 'Underemployed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Individual', 'Cash', '2025-09-09', 1),
(103, '2026-02-08', 'Brgy 7', 'Cruz', 'Sheena', 'Reyes', '2001-06-06', 24, 'Female', 'Single', '09180000014', 'sheena14@email.com', 'Filipino', 'Student', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Student Donor', 'In-kind', '2025-11-30', 1),
(104, '2026-02-08', 'Brgy 7', 'Navarro', 'Dylan', 'Lopez', '1995-01-01', 30, 'Male', 'Single', '09180000015', 'dylan15@email.com', 'Filipino', 'Employed', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Individual', 'Cash', '2025-08-25', 2),
(105, '2026-02-08', 'Brgy 7', 'Bautista', 'Nicole', 'Cruz', '1999-03-03', 26, 'Female', 'Single', '09180000016', 'nicole16@email.com', 'Filipino', 'Student', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Student Donor', 'In-kind', '2025-12-02', 1),
(106, '2026-02-08', 'Brgy 7', 'Ramos', 'Jomar', 'Santos', '1997-07-07', 28, 'Male', 'Single', '09180000017', 'jomar17@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Individual', 'Cash', '2025-07-20', 2),
(107, '2026-02-08', 'Brgy 7', 'Garcia', 'Hazel', 'Lopez', '2003-11-11', 22, 'Female', 'Single', '09180000018', 'hazel18@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2025-12-28', 1),
(108, '2026-02-08', 'Brgy 7', 'Santos', 'Jared', 'Cruz', '1996-05-05', 29, 'Male', 'Single', '09180000019', 'jared19@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Individual', 'Cash', '2025-06-01', 2),
(109, '2026-02-08', 'Brgy 7', 'Reyes', 'Andrea', 'Santos', '2000-08-08', 25, 'Female', 'Single', '09180000020', 'andrea20@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2025-11-10', 1),
(110, '2025-06-15', 'Binicuil', 'Santos', 'Juan', 'Reyes', '1987-03-12', 38, 'Male', 'Married', '09190000001', 'juan1@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Individual', 'Cash', '2024-12-12', 2),
(111, '2025-06-15', 'Binicuil', 'Garcia', 'Maria', 'Lopez', '1990-05-18', 35, 'Female', 'Single', '09190000002', 'maria2@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-11', 1),
(112, '2025-06-15', 'Binicuil', 'Cruz', 'Kevin', 'Santos', '1985-08-10', 40, 'Male', 'Married', '09190000003', 'kevin3@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Corporate', 'Cash', '2024-10-20', 3),
(113, '2025-06-15', 'Binicuil', 'Lopez', 'Angela', 'Reyes', '1992-01-22', 33, 'Female', 'Single', '09190000004', 'angela4@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-01', 1),
(114, '2025-06-15', 'Binicuil', 'Navarro', 'Mark', 'Garcia', '1988-11-30', 37, 'Male', 'Single', '09190000005', 'mark5@email.com', 'Filipino', 'Underemployed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Individual', 'Cash', '2024-09-15', 2),
(115, '2025-06-15', 'Binicuil', 'Ramos', 'Christine', 'Santos', '1991-07-07', 34, 'Female', 'Single', '09190000006', 'christine6@email.com', 'Filipino', 'Student', 'Camansi, Kabankalan City', 'Camingawan, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-20', 1),
(116, '2025-06-15', 'Binicuil', 'Bautista', 'Ryan', 'Lopez', '1986-04-04', 39, 'Male', 'Married', '09190000007', 'ryan7@email.com', 'Filipino', 'Employed', 'Camugao, Kabankalan City', 'Carol-an, Kabankalan City', 'Corporate', 'Cash', '2024-08-08', 4),
(117, '2025-06-15', 'Binicuil', 'Mendoza', 'Nicole', 'Cruz', '1993-09-09', 32, 'Female', 'Single', '09190000008', 'nicole8@email.com', 'Filipino', 'Student', 'Daan Banua, Kabankalan City', 'Hilamonan, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-18', 1),
(118, '2025-06-15', 'Binicuil', 'Torres', 'Jomar', 'Reyes', '1985-12-12', 40, 'Male', 'Married', '09190000009', 'jomar9@email.com', 'Filipino', 'Employed', 'Inapoy, Kabankalan City', 'Linao, Kabankalan City', 'Individual', 'Cash', '2024-10-01', 3),
(119, '2025-06-15', 'Binicuil', 'Santos', 'Hazel', 'Garcia', '1990-06-06', 35, 'Female', 'Single', '09190000010', 'hazel10@email.com', 'Filipino', 'Student', 'Locotan, Kabankalan City', 'Magballo, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-15', 1),
(120, '2025-06-15', 'Binicuil', 'Garcia', 'Paolo', 'Santos', '1987-10-10', 38, 'Male', 'Single', '09190000011', 'paolo11@email.com', 'Filipino', 'Employed', 'Oringao, Kabankalan City', 'Orong, Kabankalan City', 'Corporate', 'Cash', '2024-09-25', 2),
(121, '2025-06-15', 'Binicuil', 'Cruz', 'Andrea', 'Lopez', '1991-02-14', 34, 'Female', 'Single', '09190000012', 'andrea12@email.com', 'Filipino', 'Student', 'Pinaguinpinan, Kabankalan City', 'Salong, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-30', 1),
(122, '2025-06-15', 'Binicuil', 'Lopez', 'Miguel', 'Reyes', '1986-08-08', 39, 'Male', 'Married', '09190000013', 'miguel13@email.com', 'Filipino', 'Employed', 'Tabugon, Kabankalan City', 'Tagoc, Kabankalan City', 'Corporate', 'Cash', '2024-08-18', 4),
(123, '2025-06-15', 'Binicuil', 'Navarro', 'Sheena', 'Garcia', '1992-03-03', 33, 'Female', 'Single', '09190000014', 'sheena14@email.com', 'Filipino', 'Student', 'Tagukon, Kabankalan City', 'Talubangi, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-10', 1),
(124, '2025-06-15', 'Binicuil', 'Ramos', 'Dylan', 'Santos', '1985-05-05', 40, 'Male', 'Married', '09190000015', 'dylan15@email.com', 'Filipino', 'Employed', 'Tampalon, Kabankalan City', 'Tan-Awan, Kabankalan City', 'Individual', 'Cash', '2024-10-10', 3),
(125, '2025-06-15', 'Binicuil', 'Bautista', 'Kimberly', 'Lopez', '1990-09-09', 35, 'Female', 'Single', '09190000016', 'kim16@email.com', 'Filipino', 'Student', 'Tapi, Kabankalan City', 'Brgy 1, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-22', 1),
(126, '2025-06-15', 'Binicuil', 'Mendoza', 'Joshua', 'Reyes', '1987-01-01', 38, 'Male', 'Single', '09190000017', 'joshua17@email.com', 'Filipino', 'Employed', 'Brgy 2, Kabankalan City', 'Brgy 3, Kabankalan City', 'Corporate', 'Cash', '2024-09-09', 2),
(127, '2025-06-15', 'Binicuil', 'Torres', 'Angel', 'Garcia', '1993-04-04', 32, 'Female', 'Single', '09190000018', 'angel18@email.com', 'Filipino', 'Student', 'Brgy 4, Kabankalan City', 'Brgy 5, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-28', 1),
(128, '2025-06-15', 'Binicuil', 'Santos', 'Jared', 'Lopez', '1986-07-07', 39, 'Male', 'Married', '09190000019', 'jared19@email.com', 'Filipino', 'Employed', 'Brgy 6, Kabankalan City', 'Brgy 7, Kabankalan City', 'Individual', 'Cash', '2024-10-05', 3),
(129, '2025-06-15', 'Binicuil', 'Garcia', 'Alyssa', 'Reyes', '1991-11-11', 34, 'Female', 'Single', '09190000020', 'alyssa20@email.com', 'Filipino', 'Student', 'Brgy 8, Kabankalan City', 'Brgy 9, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-14', 1),
(130, '2025-06-15', 'Binicuil', 'Lopez', 'Carlo', 'Santos', '1988-03-03', 37, 'Male', 'Married', '09190000021', 'carlo21@email.com', 'Filipino', 'Employed', 'Camansi, Kabankalan City', 'Camingawan, Kabankalan City', 'Corporate', 'Cash', '2024-08-20', 4),
(131, '2025-06-15', 'Binicuil', 'Navarro', 'Bea', 'Garcia', '1992-05-05', 33, 'Female', 'Single', '09190000022', 'bea22@email.com', 'Filipino', 'Student', 'Camugao, Kabankalan City', 'Carol-an, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-02', 1),
(132, '2025-06-15', 'Binicuil', 'Ramos', 'Patrick', 'Lopez', '1986-07-07', 39, 'Male', 'Single', '09190000023', 'patrick23@email.com', 'Filipino', 'Underemployed', 'Daan Banua, Kabankalan City', 'Hilamonan, Kabankalan City', 'Individual', 'Cash', '2024-09-12', 2),
(133, '2025-06-15', 'Binicuil', 'Bautista', 'Jessa', 'Reyes', '1991-10-10', 34, 'Female', 'Single', '09190000024', 'jessa24@email.com', 'Filipino', 'Student', 'Inapoy, Kabankalan City', 'Linao, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-29', 1),
(134, '2025-06-15', 'Binicuil', 'Mendoza', 'Rico', 'Garcia', '1985-12-12', 40, 'Male', 'Married', '09190000025', 'rico25@email.com', 'Filipino', 'Employed', 'Locotan, Kabankalan City', 'Magballo, Kabankalan City', 'Corporate', 'Cash', '2024-10-18', 3),
(135, '2025-06-15', 'Binicuil', 'Torres', 'Faith', 'Santos', '1993-02-02', 32, 'Female', 'Single', '09190000026', 'faith26@email.com', 'Filipino', 'Student', 'Oringao, Kabankalan City', 'Orong, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-18', 1),
(136, '2025-06-15', 'Binicuil', 'Santos', 'Jerome', 'Lopez', '1987-04-04', 38, 'Male', 'Single', '09190000027', 'jerome27@email.com', 'Filipino', 'Employed', 'Pinaguinpinan, Kabankalan City', 'Salong, Kabankalan City', 'Individual', 'Cash', '2024-08-08', 2),
(137, '2025-06-15', 'Binicuil', 'Garcia', 'Camille', 'Reyes', '1990-06-06', 35, 'Female', 'Single', '09190000028', 'camille28@email.com', 'Filipino', 'Student', 'Tabugon, Kabankalan City', 'Tagoc, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-10', 1),
(138, '2025-06-15', 'Binicuil', 'Cruz', 'Nathaniel', 'Garcia', '1986-08-08', 39, 'Male', 'Married', '09190000029', 'nathan29@email.com', 'Filipino', 'Employed', 'Tagukon, Kabankalan City', 'Talubangi, Kabankalan City', 'Corporate', 'Cash', '2024-09-09', 4),
(139, '2025-06-15', 'Binicuil', 'Lopez', 'Rhea', 'Santos', '1992-09-09', 33, 'Female', 'Single', '09190000030', 'rhea30@email.com', 'Filipino', 'Student', 'Tampalon, Kabankalan City', 'Tan-Awan, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-08', 1),
(140, '2025-06-15', 'Binicuil', 'Navarro', 'Christian', 'Reyes', '1985-11-11', 40, 'Male', 'Married', '09190000031', 'christian31@email.com', 'Filipino', 'Employed', 'Tapi, Kabankalan City', 'Brgy 1, Kabankalan City', 'Individual', 'Cash', '2024-10-22', 3),
(141, '2025-06-15', 'Binicuil', 'Ramos', 'Mae', 'Garcia', '1991-01-01', 34, 'Female', 'Single', '09190000032', 'mae32@email.com', 'Filipino', 'Student', 'Brgy 2, Kabankalan City', 'Brgy 3, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-14', 1),
(142, '2025-06-15', 'Binicuil', 'Bautista', 'Jerald', 'Lopez', '1987-05-05', 38, 'Male', 'Single', '09190000033', 'jerald33@email.com', 'Filipino', 'Employed', 'Brgy 4, Kabankalan City', 'Brgy 5, Kabankalan City', 'Corporate', 'Cash', '2024-09-28', 2),
(143, '2025-06-15', 'Binicuil', 'Mendoza', 'Princess', 'Santos', '1993-07-07', 32, 'Female', 'Single', '09190000034', 'princess34@email.com', 'Filipino', 'Student', 'Brgy 6, Kabankalan City', 'Brgy 7, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-24', 1),
(144, '2025-06-15', 'Binicuil', 'Torres', 'Allan', 'Reyes', '1986-10-10', 39, 'Male', 'Married', '09190000035', 'allan35@email.com', 'Filipino', 'Employed', 'Brgy 8, Kabankalan City', 'Brgy 9, Kabankalan City', 'Individual', 'Cash', '2024-08-14', 3),
(145, '2025-06-15', 'Binicuil', 'Santos', 'Janine', 'Garcia', '1990-12-12', 35, 'Female', 'Single', '09190000036', 'janine36@email.com', 'Filipino', 'Student', 'Bantayan, Kabankalan City', 'Binicuil, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-30', 1),
(146, '2025-06-15', 'Binicuil', 'Garcia', 'Vincent', 'Lopez', '1985-02-02', 40, 'Male', 'Married', '09190000037', 'vincent37@email.com', 'Filipino', 'Employed', 'Camansi, Kabankalan City', 'Camingawan, Kabankalan City', 'Corporate', 'Cash', '2024-10-01', 4),
(147, '2025-06-15', 'Binicuil', 'Cruz', 'Lovely', 'Santos', '1992-04-04', 33, 'Female', 'Single', '09190000038', 'lovely38@email.com', 'Filipino', 'Student', 'Camugao, Kabankalan City', 'Carol-an, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-05', 1),
(148, '2025-06-15', 'Binicuil', 'Lopez', 'Renz', 'Reyes', '1988-06-06', 37, 'Male', 'Single', '09190000039', 'renz39@email.com', 'Filipino', 'Underemployed', 'Daan Banua, Kabankalan City', 'Hilamonan, Kabankalan City', 'Individual', 'Cash', '2024-09-18', 2),
(149, '2025-06-15', 'Binicuil', 'Navarro', 'Aira', 'Garcia', '1991-09-09', 34, 'Female', 'Single', '09190000040', 'aira40@email.com', 'Filipino', 'Student', 'Inapoy, Kabankalan City', 'Linao, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-20', 1),
(150, '2025-06-15', 'Binicuil', 'Ramos', 'Jefferson', 'Santos', '1986-01-01', 39, 'Male', 'Married', '09190000041', 'jeff41@email.com', 'Filipino', 'Employed', 'Locotan, Kabankalan City', 'Magballo, Kabankalan City', 'Corporate', 'Cash', '2024-08-11', 3),
(151, '2025-06-15', 'Binicuil', 'Bautista', 'Clarisse', 'Lopez', '1993-03-03', 32, 'Female', 'Single', '09190000042', 'clarisse42@email.com', 'Filipino', 'Student', 'Oringao, Kabankalan City', 'Orong, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-15', 1),
(152, '2025-06-15', 'Binicuil', 'Mendoza', 'Bryan', 'Reyes', '1985-05-05', 40, 'Male', 'Single', '09190000043', 'bryan43@email.com', 'Filipino', 'Employed', 'Pinaguinpinan, Kabankalan City', 'Salong, Kabankalan City', 'Individual', 'Cash', '2024-09-05', 2),
(153, '2025-06-15', 'Binicuil', 'Torres', 'Joyce', 'Garcia', '1992-08-08', 33, 'Female', 'Single', '09190000044', 'joyce44@email.com', 'Filipino', 'Student', 'Tabugon, Kabankalan City', 'Tagoc, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-08', 1),
(154, '2025-06-15', 'Binicuil', 'Santos', 'Elmer', 'Lopez', '1987-11-11', 38, 'Male', 'Married', '09190000045', 'elmer45@email.com', 'Filipino', 'Employed', 'Tagukon, Kabankalan City', 'Talubangi, Kabankalan City', 'Corporate', 'Cash', '2024-10-28', 4),
(155, '2025-06-15', 'Binicuil', 'Garcia', 'Shiela', 'Reyes', '1990-01-01', 35, 'Female', 'Single', '09190000046', 'shiela46@email.com', 'Filipino', 'Student', 'Tampalon, Kabankalan City', 'Tan-Awan, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-01', 1),
(156, '2025-06-15', 'Binicuil', 'Cruz', 'Arnold', 'Santos', '1986-04-04', 39, 'Male', 'Married', '09190000047', 'arnold47@email.com', 'Filipino', 'Employed', 'Tapi, Kabankalan City', 'Brgy 1, Kabankalan City', 'Individual', 'Cash', '2024-09-14', 3),
(157, '2025-06-15', 'Binicuil', 'Lopez', 'Marian', 'Garcia', '1991-06-06', 34, 'Female', 'Single', '09190000048', 'marian48@email.com', 'Filipino', 'Student', 'Brgy 2, Kabankalan City', 'Brgy 3, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-25', 1),
(158, '2025-06-15', 'Binicuil', 'Navarro', 'Cedric', 'Reyes', '1985-09-09', 40, 'Male', 'Single', '09190000049', 'cedric49@email.com', 'Filipino', 'Underemployed', 'Brgy 4, Kabankalan City', 'Brgy 5, Kabankalan City', 'Individual', 'Cash', '2024-08-30', 2),
(159, '2025-06-15', 'Binicuil', 'Ramos', 'Trisha', 'Lopez', '1993-12-12', 32, 'Female', 'Single', '09190000050', 'trisha50@email.com', 'Filipino', 'Student', 'Brgy 6, Kabankalan City', 'Brgy 7, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-29', 1),
(160, '2025-02-07', 'Brgy 3', 'Santos', 'Jerome', 'Lopez', '1988-01-15', 37, 'Male', 'Married', '09210000001', 'jerome1@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Individual', 'Cash', '2024-11-01', 2),
(161, '2025-02-07', 'Brgy 3', 'Garcia', 'Angela', 'Reyes', '1992-03-12', 33, 'Female', 'Single', '09210000002', 'angela2@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-05', 1),
(162, '2025-02-07', 'Brgy 3', 'Cruz', 'Mark Anthony', 'Santos', '1986-05-20', 39, 'Male', 'Single', '09210000003', 'mark3@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Corporate', 'Cash', '2024-10-10', 3),
(163, '2025-02-07', 'Brgy 3', 'Lopez', 'Christine', 'Garcia', '1991-07-08', 34, 'Female', 'Single', '09210000004', 'christine4@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-25', 1),
(164, '2025-02-07', 'Brgy 3', 'Navarro', 'Ryan', 'Reyes', '1987-09-14', 38, 'Male', 'Married', '09210000005', 'ryan5@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Individual', 'Cash', '2024-09-15', 2),
(165, '2025-02-07', 'Brgy 3', 'Ramos', 'Kimberly', 'Santos', '1993-11-22', 32, 'Female', 'Single', '09210000006', 'kim6@email.com', 'Filipino', 'Student', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-12', 1),
(166, '2025-02-07', 'Brgy 3', 'Bautista', 'Joshua', 'Lopez', '1985-02-02', 40, 'Male', 'Single', '09210000007', 'joshua7@email.com', 'Filipino', 'Underemployed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Individual', 'Cash', '2024-08-08', 2),
(167, '2025-02-07', 'Brgy 3', 'Mendoza', 'Nicole', 'Garcia', '1990-04-10', 35, 'Female', 'Single', '09210000008', 'nicole8@email.com', 'Filipino', 'Student', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-18', 1),
(168, '2025-02-07', 'Brgy 3', 'Torres', 'Miguel', 'Reyes', '1988-06-16', 37, 'Male', 'Married', '09210000009', 'miguel9@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Corporate', 'Cash', '2024-10-20', 4),
(169, '2025-02-07', 'Brgy 3', 'Santos', 'Alyssa', 'Lopez', '1992-08-28', 33, 'Female', 'Single', '09210000010', 'alyssa10@email.com', 'Filipino', 'Student', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-20', 1),
(170, '2025-02-07', 'Brgy 3', 'Garcia', 'Paolo', 'Santos', '1987-10-30', 38, 'Male', 'Single', '09210000011', 'paolo11@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Individual', 'Cash', '2024-09-01', 2),
(171, '2025-02-07', 'Brgy 3', 'Cruz', 'Sheena', 'Reyes', '1991-12-05', 34, 'Female', 'Single', '09210000012', 'sheena12@email.com', 'Filipino', 'Student', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-28', 1),
(172, '2025-02-07', 'Brgy 3', 'Lopez', 'Dylan', 'Garcia', '1986-01-25', 39, 'Male', 'Married', '09210000013', 'dylan13@email.com', 'Filipino', 'Employed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Corporate', 'Cash', '2024-08-18', 3),
(173, '2025-02-07', 'Brgy 3', 'Navarro', 'Andrea', 'Santos', '1993-03-17', 32, 'Female', 'Single', '09210000014', 'andrea14@email.com', 'Filipino', 'Student', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-08', 1),
(174, '2025-02-07', 'Brgy 3', 'Ramos', 'Jared', 'Lopez', '1988-05-05', 37, 'Male', 'Single', '09210000015', 'jared15@email.com', 'Filipino', 'Employed', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Individual', 'Cash', '2024-10-05', 2),
(175, '2025-02-07', 'Brgy 3', 'Bautista', 'Hazel', 'Reyes', '1990-07-19', 35, 'Female', 'Single', '09210000016', 'hazel16@email.com', 'Filipino', 'Student', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-11', 1),
(176, '2025-02-07', 'Brgy 3', 'Mendoza', 'Kevin', 'Garcia', '1985-09-09', 40, 'Male', 'Married', '09210000017', 'kevin17@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2024-09-09', 4),
(177, '2025-02-07', 'Brgy 3', 'Torres', 'Christine', 'Santos', '1992-11-11', 33, 'Female', 'Single', '09210000018', 'christine18@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-01', 1),
(178, '2025-02-07', 'Brgy 3', 'Santos', 'Jerald', 'Lopez', '1987-02-14', 38, 'Male', 'Single', '09210000019', 'jerald19@email.com', 'Filipino', 'Underemployed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Individual', 'Cash', '2024-08-25', 2),
(179, '2025-02-07', 'Brgy 3', 'Garcia', 'Lovely', 'Reyes', '1991-04-04', 34, 'Female', 'Single', '09210000020', 'lovely20@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-30', 1),
(180, '2025-02-07', 'Brgy 3', 'Cruz', 'Arnold', 'Santos', '1986-06-06', 39, 'Male', 'Married', '09210000021', 'arnold21@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Corporate', 'Cash', '2024-10-15', 3),
(181, '2025-02-07', 'Brgy 3', 'Lopez', 'Princess', 'Garcia', '1993-08-08', 32, 'Female', 'Single', '09210000022', 'princess22@email.com', 'Filipino', 'Student', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-15', 1),
(182, '2025-02-07', 'Brgy 3', 'Navarro', 'Bryan', 'Reyes', '1988-10-10', 37, 'Male', 'Single', '09210000023', 'bryan23@email.com', 'Filipino', 'Employed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Individual', 'Cash', '2024-09-18', 2),
(183, '2025-02-07', 'Brgy 3', 'Ramos', 'Janine', 'Santos', '1990-12-12', 35, 'Female', 'Single', '09210000024', 'janine24@email.com', 'Filipino', 'Student', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-22', 1),
(184, '2025-02-07', 'Brgy 3', 'Bautista', 'Christian', 'Lopez', '1985-03-03', 40, 'Male', 'Married', '09210000025', 'christian25@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Corporate', 'Cash', '2024-08-12', 4),
(185, '2025-02-07', 'Brgy 3', 'Mendoza', 'Faith', 'Garcia', '1992-05-05', 33, 'Female', 'Single', '09210000026', 'faith26@email.com', 'Filipino', 'Student', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-18', 1),
(186, '2025-02-07', 'Brgy 3', 'Torres', 'Vincent', 'Reyes', '1987-07-07', 38, 'Male', 'Single', '09210000027', 'vincent27@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Individual', 'Cash', '2024-10-01', 2),
(187, '2025-02-07', 'Brgy 3', 'Santos', 'Clarisse', 'Lopez', '1991-09-09', 34, 'Female', 'Single', '09210000028', 'clarisse28@email.com', 'Filipino', 'Student', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Student Donor', 'In-kind', '2024-11-10', 1),
(188, '2025-02-07', 'Brgy 3', 'Garcia', 'Cedric', 'Santos', '1986-11-11', 39, 'Male', 'Married', '09210000029', 'cedric29@email.com', 'Filipino', 'Employed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Corporate', 'Cash', '2024-09-22', 3),
(189, '2025-02-07', 'Brgy 3', 'Cruz', 'Trisha', 'Reyes', '1993-01-01', 32, 'Female', 'Single', '09210000030', 'trisha30@email.com', 'Filipino', 'Student', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-27', 1),
(190, '2025-02-07', 'Brgy 3', 'Navarro', 'Elaine', 'Garcia', '1992-02-18', 33, 'Female', 'Single', '09210000031', 'elaine31@email.com', 'Filipino', 'Student', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Student Donor', 'In-kind', '2024-12-09', 1),
(191, '2025-02-07', 'Brgy 3', 'Ramos', 'Ralph', 'Santos', '1987-08-24', 38, 'Male', 'Married', '09210000032', 'ralph32@email.com', 'Filipino', 'Employed', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Individual', 'Cash', '2024-10-14', 2),
(192, '2025-10-07', 'Talubangi', 'Santos', 'Michael', 'Lopez', '1988-04-12', 37, 'Male', 'Married', '09310000001', 'michael1@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2025-06-12', 3),
(193, '2025-10-07', 'Talubangi', 'Garcia', 'Angelica', 'Reyes', '1992-07-25', 33, 'Female', 'Single', '09310000002', 'angelica2@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-15', 1),
(194, '2025-10-07', 'Talubangi', 'Cruz', 'Joshua', 'Santos', '1987-02-18', 38, 'Male', 'Single', '09310000003', 'joshua3@email.com', 'Filipino', 'Employed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Individual', 'Cash', '2025-05-20', 2);
INSERT INTO `donors` (`donor_id`, `date`, `venue`, `last_name`, `name`, `middle_name`, `birthdate`, `age`, `gender`, `civil_status`, `contact`, `email_address`, `nationality`, `occupation`, `home_address`, `office_address`, `type_of_donor`, `method_of_collection`, `last_donation`, `number_of_donations`) VALUES
(195, '2025-10-07', 'Talubangi', 'Lopez', 'Christine', 'Garcia', '1991-09-09', 34, 'Female', 'Single', '09310000004', 'christine4@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-01', 1),
(196, '2025-10-07', 'Talubangi', 'Navarro', 'Kevin', 'Reyes', '1986-12-30', 39, 'Male', 'Married', '09310000005', 'kevin5@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Corporate', 'Cash', '2025-06-10', 4),
(197, '2025-10-07', 'Talubangi', 'Ramos', 'Hazel', 'Santos', '1993-03-14', 32, 'Female', 'Single', '09310000006', 'hazel6@email.com', 'Filipino', 'Student', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-28', 1),
(198, '2025-10-07', 'Talubangi', 'Bautista', 'Ryan', 'Lopez', '1988-06-06', 37, 'Male', 'Single', '09310000007', 'ryan7@email.com', 'Filipino', 'Underemployed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Individual', 'Cash', '2025-05-11', 2),
(199, '2025-10-07', 'Talubangi', 'Mendoza', 'Nicole', 'Garcia', '1992-11-11', 33, 'Female', 'Single', '09310000008', 'nicole8@email.com', 'Filipino', 'Student', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-15', 1),
(200, '2025-10-07', 'Talubangi', 'Torres', 'Miguel', 'Reyes', '1985-08-08', 40, 'Male', 'Married', '09310000009', 'miguel9@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Corporate', 'Cash', '2025-06-18', 3),
(201, '2025-10-07', 'Talubangi', 'Santos', 'Alyssa', 'Lopez', '1991-05-05', 34, 'Female', 'Single', '09310000010', 'alyssa10@email.com', 'Filipino', 'Student', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-08', 1),
(202, '2025-10-07', 'Talubangi', 'Garcia', 'Paolo', 'Santos', '1987-01-10', 38, 'Male', 'Single', '09310000011', 'paolo11@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Individual', 'Cash', '2025-05-01', 2),
(203, '2025-10-07', 'Talubangi', 'Cruz', 'Sheena', 'Reyes', '1993-04-22', 32, 'Female', 'Single', '09310000012', 'sheena12@email.com', 'Filipino', 'Student', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-18', 1),
(204, '2025-10-07', 'Talubangi', 'Lopez', 'Dylan', 'Garcia', '1986-07-07', 39, 'Male', 'Married', '09310000013', 'dylan13@email.com', 'Filipino', 'Employed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Corporate', 'Cash', '2025-06-02', 3),
(205, '2025-10-07', 'Talubangi', 'Navarro', 'Andrea', 'Santos', '1992-10-10', 33, 'Female', 'Single', '09310000014', 'andrea14@email.com', 'Filipino', 'Student', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-30', 1),
(206, '2025-10-07', 'Talubangi', 'Ramos', 'Jared', 'Lopez', '1988-03-03', 37, 'Male', 'Single', '09310000015', 'jared15@email.com', 'Filipino', 'Employed', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Individual', 'Cash', '2025-05-15', 2),
(207, '2025-10-07', 'Talubangi', 'Bautista', 'Hazel', 'Reyes', '1991-06-06', 34, 'Female', 'Single', '09310000016', 'hazel16@email.com', 'Filipino', 'Student', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-10', 1),
(208, '2025-10-07', 'Talubangi', 'Mendoza', 'Kevin', 'Garcia', '1985-09-09', 40, 'Male', 'Married', '09310000017', 'kevin17@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2025-06-25', 4),
(209, '2025-10-07', 'Talubangi', 'Torres', 'Christine', 'Santos', '1992-12-12', 33, 'Female', 'Single', '09310000018', 'christine18@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-12', 1),
(210, '2025-10-07', 'Talubangi', 'Santos', 'Jerald', 'Lopez', '1987-05-05', 38, 'Male', 'Single', '09310000019', 'jerald19@email.com', 'Filipino', 'Underemployed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Individual', 'Cash', '2025-05-28', 2),
(211, '2025-10-07', 'Talubangi', 'Garcia', 'Lovely', 'Reyes', '1990-08-08', 35, 'Female', 'Single', '09310000020', 'lovely20@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-22', 1),
(212, '2025-10-07', 'Talubangi', 'Cruz', 'Arnold', 'Santos', '1986-11-11', 39, 'Male', 'Married', '09310000021', 'arnold21@email.com', 'Filipino', 'Employed', 'Brgy 9, Kabankalan City', 'Bantayan, Kabankalan City', 'Corporate', 'Cash', '2025-06-14', 3),
(213, '2025-10-07', 'Talubangi', 'Lopez', 'Princess', 'Garcia', '1993-02-02', 32, 'Female', 'Single', '09310000022', 'princess22@email.com', 'Filipino', 'Student', 'Binicuil, Kabankalan City', 'Camansi, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-05', 1),
(214, '2025-10-07', 'Talubangi', 'Navarro', 'Bryan', 'Reyes', '1988-04-04', 37, 'Male', 'Single', '09310000023', 'bryan23@email.com', 'Filipino', 'Employed', 'Camingawan, Kabankalan City', 'Camugao, Kabankalan City', 'Individual', 'Cash', '2025-05-08', 2),
(215, '2025-10-07', 'Talubangi', 'Ramos', 'Janine', 'Santos', '1991-07-07', 34, 'Female', 'Single', '09310000024', 'janine24@email.com', 'Filipino', 'Student', 'Carol-an, Kabankalan City', 'Daan Banua, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-01', 1),
(216, '2025-10-07', 'Talubangi', 'Bautista', 'Christian', 'Lopez', '1985-10-10', 40, 'Male', 'Married', '09310000025', 'christian25@email.com', 'Filipino', 'Employed', 'Hilamonan, Kabankalan City', 'Inapoy, Kabankalan City', 'Corporate', 'Cash', '2025-06-20', 4),
(217, '2025-10-07', 'Talubangi', 'Mendoza', 'Faith', 'Garcia', '1992-01-01', 33, 'Female', 'Single', '09310000026', 'faith26@email.com', 'Filipino', 'Student', 'Linao, Kabankalan City', 'Locotan, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-18', 1),
(218, '2025-10-07', 'Talubangi', 'Torres', 'Vincent', 'Reyes', '1987-03-03', 38, 'Male', 'Single', '09310000027', 'vincent27@email.com', 'Filipino', 'Employed', 'Magballo, Kabankalan City', 'Oringao, Kabankalan City', 'Individual', 'Cash', '2025-05-12', 2),
(219, '2025-10-07', 'Talubangi', 'Santos', 'Clarisse', 'Lopez', '1991-09-09', 34, 'Female', 'Single', '09310000028', 'clarisse28@email.com', 'Filipino', 'Student', 'Orong, Kabankalan City', 'Pinaguinpinan, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-14', 1),
(220, '2025-10-07', 'Talubangi', 'Garcia', 'Cedric', 'Santos', '1986-12-12', 39, 'Male', 'Married', '09310000029', 'cedric29@email.com', 'Filipino', 'Employed', 'Salong, Kabankalan City', 'Tabugon, Kabankalan City', 'Corporate', 'Cash', '2025-06-07', 3),
(221, '2025-10-07', 'Talubangi', 'Cruz', 'Trisha', 'Reyes', '1993-05-05', 32, 'Female', 'Single', '09310000030', 'trisha30@email.com', 'Filipino', 'Student', 'Tagoc, Kabankalan City', 'Tagukon, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-28', 1),
(222, '2025-10-07', 'Talubangi', 'Lopez', 'Ralph', 'Garcia', '1988-08-08', 37, 'Male', 'Single', '09310000031', 'ralph31@email.com', 'Filipino', 'Employed', 'Talubangi, Kabankalan City', 'Tampalon, Kabankalan City', 'Individual', 'Cash', '2025-05-25', 2),
(223, '2025-10-07', 'Talubangi', 'Navarro', 'Elaine', 'Santos', '1992-11-11', 33, 'Female', 'Single', '09310000032', 'elaine32@email.com', 'Filipino', 'Student', 'Tan-Awan, Kabankalan City', 'Tapi, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-05', 1),
(224, '2025-10-07', 'Talubangi', 'Ramos', 'Jefferson', 'Lopez', '1985-02-02', 40, 'Male', 'Married', '09310000033', 'jefferson33@email.com', 'Filipino', 'Employed', 'Brgy 1, Kabankalan City', 'Brgy 2, Kabankalan City', 'Corporate', 'Cash', '2025-06-10', 4),
(225, '2025-10-07', 'Talubangi', 'Bautista', 'Clarisse', 'Garcia', '1993-06-06', 32, 'Female', 'Single', '09310000034', 'clarisse34@email.com', 'Filipino', 'Student', 'Brgy 3, Kabankalan City', 'Brgy 4, Kabankalan City', 'Student Donor', 'In-kind', '2025-08-22', 1),
(226, '2025-10-07', 'Talubangi', 'Mendoza', 'Bryan', 'Reyes', '1986-09-09', 39, 'Male', 'Single', '09310000035', 'bryan35@email.com', 'Filipino', 'Underemployed', 'Brgy 5, Kabankalan City', 'Brgy 6, Kabankalan City', 'Individual', 'Cash', '2025-05-30', 2),
(227, '2025-10-07', 'Talubangi', 'Torres', 'Joyce', 'Santos', '1991-12-12', 34, 'Female', 'Single', '09310000036', 'joyce36@email.com', 'Filipino', 'Student', 'Brgy 7, Kabankalan City', 'Brgy 8, Kabankalan City', 'Student Donor', 'In-kind', '2025-09-25', 1);

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
(72, '1', 'Login: Glenn Azuelo', '2026-04-19', '18:14:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(73, '1', 'Login: Glenn Azuelo', '2026-04-19', '22:27:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(74, '1', 'New Donor has been apdated: Mark', '2026-04-19', '22:28:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(75, '1', 'New Donor has been apdated: Jorem', '2026-04-19', '22:30:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(76, '1', 'New Donor has been apdated: Mark', '2026-04-19', '22:31:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(77, '1', 'Login: Glenn Azuelo', '2026-04-20', '13:57:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(78, NULL, 'Logout', '2026-04-21', '13:18:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', NULL, 'LOGOUT'),
(79, '12', 'Login: Nicole Rendon', '2026-04-21', '13:25:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGIN'),
(80, '12', 'Logout', '2026-04-21', '13:48:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGOUT'),
(81, '12', 'Login: Nicole Rendon', '2026-04-23', '19:36:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGIN'),
(82, '12', 'Delete user', '2026-04-23', '19:40:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'DELETED'),
(83, NULL, 'Logout', '2026-04-24', '14:49:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'LOGOUT'),
(84, '12', 'Login: Nicole Rendon', '2026-04-24', '14:53:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGIN'),
(85, '12', 'Logout', '2026-04-24', '15:23:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGOUT'),
(86, '1', 'Login: Glenn Azuelo', '2026-04-24', '15:23:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(87, '1', 'New Donor has been added: Mark', '2026-04-24', '15:25:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(88, '1', 'Login: Glenn Azuelo', '2026-04-24', '18:30:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(89, NULL, 'New Activities has been added: Pledge 25', '2026-04-25', '02:55:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'ADD'),
(90, '1', 'Login: Glenn Azuelo', '2026-04-25', '02:57:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(91, '1', 'Login: Glenn Azuelo', '2026-04-29', '10:07:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(92, '1', 'Delete user', '2026-04-29', '10:13:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'DELETED'),
(93, '1', 'New Bloodtype has been apdated: A+', '2026-04-29', '10:13:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(94, '1', 'New Bloodtype has been apdated: A-', '2026-04-29', '10:13:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(95, '1', 'New Bloodtype has been added: B+', '2026-04-29', '10:14:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(96, '1', 'New Bloodtype has been added: B-', '2026-04-29', '10:14:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(97, '1', 'New Bloodtype has been added: AB+', '2026-04-29', '10:14:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(98, '1', 'New Bloodtype has been added: AB-', '2026-04-29', '10:14:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(99, '1', 'New Bloodtype has been added: O+', '2026-04-29', '10:14:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(100, '1', 'New Bloodtype has been added: O_', '2026-04-29', '10:15:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(101, '1', 'New Bloodtype has been apdated: O-', '2026-04-29', '10:15:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(102, '1', 'Login: Glenn Azuelo', '2026-04-30', '20:50:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(103, '1', 'Login: Glenn Azuelo', '2026-05-01', '17:38:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(104, '1', 'Login: Glenn Azuelo', '2026-05-05', '15:33:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(105, '1', 'Login: Glenn Azuelo', '2026-05-06', '16:45:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(106, '1', 'New Barangay has been added: Barangay 1', '2026-05-06', '16:48:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(107, '1', 'New Barangay has been added: BARANGAY 1', '2026-05-06', '16:48:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(108, '1', 'New Barangay has been apdated: BARANGAY 2', '2026-05-06', '16:48:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(109, '1', 'Delete user', '2026-05-06', '16:48:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'DELETED'),
(110, '1', 'New Barangay has been added: BARANGAY 3', '2026-05-06', '16:48:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(111, '1', 'New Barangay has been apdated: BARANGAY 3', '2026-05-06', '16:48:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(112, '1', 'New Barangay has been added: BARANGAY 3', '2026-05-06', '16:49:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(113, '1', 'New Barangay has been added: BARANGAY 4', '2026-05-06', '16:49:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(114, '1', 'New Barangay has been added: BARANGAY 5', '2026-05-06', '16:49:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(115, '1', 'New Barangay has been added: BARANGAY 6', '2026-05-06', '16:49:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(116, '1', 'New Barangay has been added: BARANGAY 7', '2026-05-06', '16:50:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(117, '1', 'New Barangay has been added: BARANGAY ', '2026-05-06', '16:50:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(118, '1', 'New Barangay has been apdated: BARANGAY 8', '2026-05-06', '16:50:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(119, '1', 'New Barangay has been added: BARANGAY 9', '2026-05-06', '16:50:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(120, '1', 'New Barangay has been added: BANTAYAN', '2026-05-06', '16:50:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(121, '1', 'New Barangay has been added: BINICUIL', '2026-05-06', '16:51:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(122, '1', 'New Barangay has been added: CAMANSI', '2026-05-06', '16:51:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(123, '1', 'New Barangay has been added: CAMINGAWAN', '2026-05-06', '16:52:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(124, '1', 'New Barangay has been added: CAMINGAWAN', '2026-05-06', '16:52:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(125, '1', 'New Barangay has been apdated: CAMUGAO', '2026-05-06', '16:52:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(126, '1', 'New Barangay has been added: CAROL-AN', '2026-05-06', '16:53:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(127, '1', 'New Barangay has been added: DAAN BANUA', '2026-05-06', '16:53:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(128, '1', 'New Barangay has been added: HILAMONAN', '2026-05-06', '16:53:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(129, '1', 'New Barangay has been added: INAPOY', '2026-05-06', '16:54:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(130, '1', 'New Barangay has been added: LINAO', '2026-05-06', '16:54:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(131, '1', 'New Barangay has been added: LOCOTAN', '2026-05-06', '16:54:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(132, '1', 'New Barangay has been added: MAGBALLO', '2026-05-06', '16:55:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(133, '1', 'New Barangay has been added: ORINGAO', '2026-05-06', '16:55:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(134, '1', 'New Barangay has been added: ORONG', '2026-05-06', '16:55:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(135, '1', 'New Barangay has been added: PINAGUINPINAN', '2026-05-06', '16:55:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(136, '1', 'New Barangay has been added: SALONG', '2026-05-06', '16:55:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(137, '1', 'New Barangay has been added: TABUGON', '2026-05-06', '16:56:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(138, '1', 'New Barangay has been added: TAGOC', '2026-05-06', '16:56:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(139, '1', 'New Barangay has been added: TAGOCON', '2026-05-06', '16:56:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(140, '1', 'New Barangay has been added: TALUBANGI', '2026-05-06', '16:56:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(141, '1', 'New Barangay has been added: TAMPALON', '2026-05-06', '16:57:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(142, '1', 'New Barangay has been added: TAN-AWAN', '2026-05-06', '16:57:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(143, '1', 'New Barangay has been added: TAPI', '2026-05-06', '16:57:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(144, '1', 'Login: Glenn Azuelo', '2026-05-06', '18:52:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(145, '1', 'Login: Glenn Azuelo', '2026-05-07', '15:10:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN'),
(146, '1', 'New Donor has been apdated: Nicole', '2026-05-07', '16:51:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(147, '1', 'New Donor has been apdated: Kert', '2026-05-07', '16:55:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(148, '1', 'New Donor has been apdated: Kert', '2026-05-07', '16:56:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(149, '1', 'New Donor has been apdated: Nicole', '2026-05-07', '16:56:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(150, '1', 'New Donor has been apdated: Delmar', '2026-05-07', '16:59:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(151, '1', 'New Donor has been apdated: Kert', '2026-05-07', '16:59:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(152, '1', 'New Donor has been apdated: Nicole', '2026-05-07', '16:59:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(153, '1', 'New Donor has been apdated: Mark', '2026-05-07', '17:25:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(154, '1', 'New Donor has been apdated: Mark', '2026-05-07', '17:26:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(155, '1', 'New Donor has been apdated: Jorem', '2026-05-07', '17:27:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(156, '1', 'New Donor has been apdated: Mark', '2026-05-07', '17:29:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'UPDATED'),
(157, '1', 'New Donor has been added: Nathaniel', '2026-05-07', '17:31:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'ADD'),
(158, '1', 'Logout', '2026-05-07', '17:46:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGOUT'),
(159, '12', 'Login: Nicole Rendon', '2026-05-07', '22:23:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGIN'),
(160, '12', 'New Donor has been added: Ann', '2026-05-07', '22:25:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(161, '12', 'New Donor has been added: Maria', '2026-05-07', '23:06:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(162, '12', 'New Donor has been added: Maricel', '2026-05-07', '23:07:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(163, '12', 'New Donor has been added: Joe', '2026-05-07', '23:10:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(164, '12', 'New Donor has been added: Ann', '2026-05-07', '23:12:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(165, '12', 'New Donor has been added: Josephine', '2026-05-07', '23:14:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(166, '12', 'New Donor has been added: Maris', '2026-05-07', '23:17:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(167, '12', 'New Donor has been added: Eya', '2026-05-07', '23:43:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(168, '12', 'New Donor has been added: Jobert', '2026-05-07', '23:45:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(169, '12', 'New Donor has been added: Marie', '2026-05-07', '23:48:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(170, NULL, 'New Donor has been added: Mark', '2026-05-08', '06:01:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'ADD'),
(171, NULL, 'New Donor has been added: Anthony', '2026-05-08', '06:03:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'ADD'),
(172, NULL, 'New Donor has been added: Jonard', '2026-05-08', '06:07:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'ADD'),
(173, NULL, 'New Donor has been added: Mikko', '2026-05-08', '06:18:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'ADD'),
(174, NULL, 'New Donor has been apdated: Jonard', '2026-05-08', '07:27:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, 'UPDATED'),
(175, '12', 'Login: Nicole Rendon', '2026-05-08', '07:55:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'LOGIN'),
(176, '12', 'New Donor has been apdated: Nicole', '2026-05-08', '09:06:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(177, '12', 'New Donor has been apdated: Nicole', '2026-05-08', '09:06:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(178, '12', 'New Donor has been apdated: Kert', '2026-05-08', '09:18:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(179, '12', 'New Donor has been apdated: Nicole', '2026-05-08', '09:18:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(180, '12', 'New Donor has been apdated: Mikko', '2026-05-08', '09:19:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(181, '12', 'New Donor has been apdated: Delmar', '2026-05-08', '09:19:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(182, '12', 'New Donor has been apdated: Mark', '2026-05-08', '09:20:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(183, '12', 'New Donor has been apdated: Nathaniel', '2026-05-08', '09:20:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(184, '12', 'New Donor has been apdated: Jorem', '2026-05-08', '09:21:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(185, '12', 'New Donor has been apdated: Mark', '2026-05-08', '09:21:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(186, '12', 'New Donor has been apdated: Mark', '2026-05-08', '09:21:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(187, '12', 'New Donor has been apdated: Ann', '2026-05-08', '09:22:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(188, '12', 'New Donor has been apdated: Maria', '2026-05-08', '09:23:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(189, '12', 'New Donor has been apdated: Maria', '2026-05-08', '09:23:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(190, '12', 'New Donor has been apdated: Maricel', '2026-05-08', '09:31:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(191, '12', 'New Donor has been apdated: Joe', '2026-05-08', '09:31:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(192, '12', 'New Donor has been apdated: Anthony', '2026-05-08', '09:32:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(193, '12', 'New Donor has been apdated: Maria', '2026-05-08', '09:32:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(194, '12', 'New Donor has been apdated: Ann', '2026-05-08', '09:33:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(195, '12', 'New Donor has been apdated: Josephine', '2026-05-08', '09:34:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(196, '12', 'New Donor has been apdated: Maris', '2026-05-08', '09:34:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(197, '12', 'New Donor has been apdated: Eya', '2026-05-08', '09:35:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(198, '12', 'New Donor has been apdated: Mark', '2026-05-08', '09:36:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(199, '12', 'New Donor has been apdated: Jobert', '2026-05-08', '10:11:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(200, '12', 'New Donor has been apdated: Marie', '2026-05-08', '10:12:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(201, '12', 'New Donor has been added: Aliza', '2026-05-08', '10:38:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(202, '12', 'New Donor has been added: Jopay', '2026-05-08', '10:43:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(203, '12', 'New Donor has been added: Maria', '2026-05-08', '10:45:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(204, '12', 'New Donor has been added: Maris', '2026-05-08', '11:12:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(205, '12', 'New Donor has been added: Martin', '2026-05-08', '11:14:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(206, '12', 'New Donor has been apdated: Nathaniel', '2026-05-08', '11:34:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(207, '12', 'New Donor has been apdated: Nathaniel', '2026-05-08', '11:34:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(208, '12', 'New Donor has been apdated: Marie', '2026-05-08', '11:35:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(209, '12', 'New Donor has been apdated: Aliza', '2026-05-08', '11:36:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(210, '12', 'New Donor has been apdated: Jopay', '2026-05-08', '11:38:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(211, '12', 'New Donor has been apdated: Mark', '2026-05-08', '11:47:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(212, '12', 'New Donor has been apdated: Mark', '2026-05-08', '11:48:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(213, '12', 'New Donor has been apdated: Mark', '2026-05-08', '11:48:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(214, '12', 'New Donor has been apdated: Jorem', '2026-05-08', '11:50:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(215, '12', 'New Donor has been apdated: Ann', '2026-05-08', '11:51:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(216, '12', 'New Donor has been apdated: Mark', '2026-05-08', '11:51:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(217, '12', 'New Donor has been apdated: Nicole', '2026-05-08', '11:52:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(218, '12', 'New Donor has been apdated: Kert', '2026-05-08', '11:53:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(219, '12', 'New Donor has been apdated: Delmar', '2026-05-08', '11:53:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(220, '12', 'New Donor has been apdated: Mark', '2026-05-08', '11:53:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(221, '12', 'New Donor has been apdated: Maricel', '2026-05-08', '11:55:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(222, '12', 'New Donor has been apdated: Ann', '2026-05-08', '11:56:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(223, '12', 'New Donor has been apdated: Anthony', '2026-05-08', '11:56:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(224, '12', 'New Donor has been apdated: Josephine', '2026-05-08', '11:57:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(225, '12', 'New Donor has been apdated: Maris', '2026-05-08', '11:58:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(226, '12', 'New Donor has been apdated: Martin', '2026-05-08', '11:59:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(227, '12', 'New Donor has been apdated: Jobert', '2026-05-08', '11:59:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(228, '12', 'New Donor has been apdated: Mikko', '2026-05-08', '12:00:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(229, '12', 'New Donor has been apdated: Jonard', '2026-05-08', '12:03:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(230, '12', 'New Donor has been apdated: Eya', '2026-05-08', '12:03:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED'),
(231, '12', 'New Donor has been apdated: Mark', '2026-05-08', '12:04:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'UPDATED');
INSERT INTO `tbl_logs` (`LOGID`, `USERID`, `ACTION`, `DATELOG`, `TIMELOG`, `user_ip_address`, `device_used`, `USER_NAME`, `identifier`) VALUES
(232, '12', 'New Donor has been added: Amira', '2026-05-08', '12:07:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Nicole Rendon', 'ADD'),
(233, '1', 'Login: Glenn Azuelo', '2026-05-08', '13:26:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Glenn Azuelo', 'LOGIN');

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
  MODIFY `bloodtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
