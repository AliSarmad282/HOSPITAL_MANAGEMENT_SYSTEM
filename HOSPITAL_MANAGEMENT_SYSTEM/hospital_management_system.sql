-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 07:54 PM
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
-- Database: `hospital management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admincontact`
--

CREATE TABLE `admincontact` (
  `SSN` varchar(50) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admindetail`
--

CREATE TABLE `admindetail` (
  `SSN` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `pat_no` varchar(50) NOT NULL,
  `Doc_Fee` varchar(20) DEFAULT NULL,
  `room_charge` int(10) DEFAULT NULL,
  `ward_charges` int(10) DEFAULT NULL,
  `surgen_fee` int(10) DEFAULT NULL,
  `ICU_cost` int(10) DEFAULT NULL,
  `medicine` int(10) DEFAULT NULL,
  `lab_test` int(10) DEFAULT NULL,
  `food` int(10) DEFAULT NULL,
  `staying_days` int(10) DEFAULT NULL,
  `treat_fee` int(10) DEFAULT NULL,
  `other_expensive` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `condition_after_medicine`
--

CREATE TABLE `condition_after_medicine` (
  `pat_no` varchar(50) NOT NULL,
  `medical_condition_after` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `condition_before_medicine`
--

CREATE TABLE `condition_before_medicine` (
  `pat_no` varchar(50) NOT NULL,
  `medical_condition_before` varchar(50) DEFAULT NULL,
  `given_medicine` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_per_detail`
--

CREATE TABLE `d_per_detail` (
  `ssn` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_spec`
--

CREATE TABLE `d_spec` (
  `name` varchar(50) NOT NULL,
  `specialization` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patientaddress`
--

CREATE TABLE `patientaddress` (
  `ssn` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientaddress`
--

INSERT INTO `patientaddress` (`ssn`, `address`) VALUES
('1234', 'Main Pasrur Road Talwandi Musa khan'),
('123', ''),
('235', 'hhh'),
('237', 'hhh'),
('123', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetail`
--

CREATE TABLE `patientdetail` (
  `ssn` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientdetail`
--

INSERT INTO `patientdetail` (`ssn`, `name`, `mobile`) VALUES
('1234', 'patient_name', 'patient_number'),
('123', 'Asad', ''),
('235', 'Ali', 'ff'),
('237', 'Ali', 'ff'),
('123', 'Hamza', '12');

-- --------------------------------------------------------

--
-- Table structure for table `pat_care_address`
--

CREATE TABLE `pat_care_address` (
  `pat_no` varchar(50) NOT NULL,
  `Patient_Care_Address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_care_mobile`
--

CREATE TABLE `pat_care_mobile` (
  `pat_no` varchar(50) NOT NULL,
  `Patient_Care_Mobile` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_care_name`
--

CREATE TABLE `pat_care_name` (
  `pat_no` varchar(50) NOT NULL,
  `Patient_Care_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_condition`
--

CREATE TABLE `pat_condition` (
  `pat_no` varchar(50) NOT NULL,
  `relevent_Docs` varchar(50) DEFAULT NULL,
  `ward_assigned` varchar(50) DEFAULT NULL,
  `bed_assigned` varchar(50) DEFAULT NULL,
  `seriousness_level` varchar(50) DEFAULT NULL,
  `medical_condition` varchar(50) DEFAULT NULL,
  `polic_case` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_des_sheet`
--

CREATE TABLE `pat_des_sheet` (
  `ssn` varchar(50) NOT NULL,
  `pat_no` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_given_medicine`
--

CREATE TABLE `pat_given_medicine` (
  `pat_no` varchar(50) NOT NULL,
  `given_dose` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_reg`
--

CREATE TABLE `pat_reg` (
  `ssn` varchar(50) NOT NULL,
  `pat_no` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pat_reg`
--

INSERT INTO `pat_reg` (`ssn`, `pat_no`, `name`, `age`, `gender`) VALUES
('123', '', 'Asad', 0, ''),
('123', '12', 'Hamza', 4, 'Male'),
('1234', '12', 'Asad', 20, ''),
('235', 'ff', 'Ali', 12, 'Male'),
('237', 'ff', 'Ali', 12, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `pat_report`
--

CREATE TABLE `pat_report` (
  `pat_no` varchar(50) NOT NULL,
  `labtest` varchar(10) DEFAULT NULL,
  `In_Emergency` varchar(10) DEFAULT NULL,
  `Treatment` varchar(50) DEFAULT NULL,
  `tranfer_to_ICU` varchar(50) DEFAULT NULL,
  `tranfer_to_ward` varchar(50) DEFAULT NULL,
  `given_medicine` varchar(100) DEFAULT NULL,
  `go_home` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pat_revisit_date`
--

CREATE TABLE `pat_revisit_date` (
  `pat_no` varchar(50) NOT NULL,
  `revisit_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admincontact`
--
ALTER TABLE `admincontact`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `admindetail`
--
ALTER TABLE `admindetail`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `condition_after_medicine`
--
ALTER TABLE `condition_after_medicine`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `condition_before_medicine`
--
ALTER TABLE `condition_before_medicine`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `d_per_detail`
--
ALTER TABLE `d_per_detail`
  ADD PRIMARY KEY (`ssn`,`name`);

--
-- Indexes for table `d_spec`
--
ALTER TABLE `d_spec`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `patientaddress`
--
ALTER TABLE `patientaddress`
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `patientdetail`
--
ALTER TABLE `patientdetail`
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `pat_care_address`
--
ALTER TABLE `pat_care_address`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `pat_care_mobile`
--
ALTER TABLE `pat_care_mobile`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `pat_care_name`
--
ALTER TABLE `pat_care_name`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `pat_condition`
--
ALTER TABLE `pat_condition`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `pat_des_sheet`
--
ALTER TABLE `pat_des_sheet`
  ADD PRIMARY KEY (`ssn`,`pat_no`);

--
-- Indexes for table `pat_given_medicine`
--
ALTER TABLE `pat_given_medicine`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `pat_reg`
--
ALTER TABLE `pat_reg`
  ADD PRIMARY KEY (`ssn`,`pat_no`);

--
-- Indexes for table `pat_report`
--
ALTER TABLE `pat_report`
  ADD PRIMARY KEY (`pat_no`);

--
-- Indexes for table `pat_revisit_date`
--
ALTER TABLE `pat_revisit_date`
  ADD PRIMARY KEY (`pat_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patientaddress`
--
ALTER TABLE `patientaddress`
  ADD CONSTRAINT `patientaddress_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `pat_reg` (`ssn`);

--
-- Constraints for table `patientdetail`
--
ALTER TABLE `patientdetail`
  ADD CONSTRAINT `patientdetail_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `pat_reg` (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
