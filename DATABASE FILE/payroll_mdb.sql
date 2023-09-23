-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 12:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_mdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wy_admin`
--

CREATE TABLE `wy_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_admin`
--

INSERT INTO `wy_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(1, 'WY00', 'Admin', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2019-04-18 02:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `wy_attendance`
--

CREATE TABLE `wy_attendance` (
  `attendance_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `action_name` enum('punchin','punchout') NOT NULL,
  `action_time` time NOT NULL,
  `emp_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_attendance`
--

INSERT INTO `wy_attendance` (`attendance_id`, `emp_code`, `attendance_date`, `action_name`, `action_time`, `emp_desc`) VALUES
(2, 'WY01', '2021-04-13', 'punchin', '10:41:27', ''),
(3, 'WY01', '2021-04-13', 'punchout', '17:37:36', ''),
(4, 'WY02', '2021-04-14', 'punchin', '15:05:42', ''),
(5, 'WY02', '2021-04-14', 'punchout', '22:19:14', ''),
(6, 'WY03', '2021-04-14', 'punchin', '10:30:30', ''),
(7, 'WY03', '2021-04-14', 'punchout', '17:30:52', ''),
(8, 'WY04', '2021-04-14', 'punchin', '10:00:59', ''),
(9, 'WY04', '2021-04-14', 'punchout', '14:31:27', ''),
(10, 'WY05', '2021-04-14', 'punchin', '19:11:29', ''),
(11, 'WY05', '2021-04-14', 'punchout', '19:13:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `wy_employees`
--

CREATE TABLE `wy_employees` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `merital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `identity_doc` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `pf_account` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_employees`
--

INSERT INTO `wy_employees` (`emp_id`, `emp_code`, `emp_password`, `first_name`, `last_name`, `dob`, `gender`, `merital_status`, `nationality`, `address`, `city`, `state`, `country`, `email`, `mobile`, `telephone`, `identity_doc`, `identity_no`, `emp_type`, `joining_date`, `blood_group`, `photo`, `designation`, `department`, `pan_no`, `bank_name`, `account_no`, `ifsc_code`, `pf_account`, `created`) VALUES
(6, 'WY01', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'SUKHPREET', 'SINGH', '04/01/1995', 'male', 'Single', 'INDIAN', '126 model gram', 'Ludhiana', 'Punjab', 'India', 'Sukhpreet@gmail.com', '2457878540', '014577854', 'Passport', '012345678', 'Football Player', '01/29/2019', 'B+', 'sukh.jpg', 'GoalKeeper', 'Sports ', '14785424', 'Demo Bank', '012457854512', '12458', '11452', '2021-04-12 13:54:49'),
(7, 'WY02', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'HARSHDEEP', 'SINGH', '04/01/1993', 'male', 'Registered partnership', 'American', '4265  Jefferson Street', 'Norfolk', 'VA', 'US', 'leoallen06905@gmail.com', '2450157695', '1245785540', 'Passport', '914575421', 'Cricket Player', '04/01/2020', 'AB+', 'harsh.jpeg', 'Chief Marketing Officer', 'Marketing', '2014578540', 'Grand Summit Bank Inc.', '69529712540', 'GRSB0069961', 'GB LAD 054110 000 000542', '2021-04-14 13:18:32'),
(8, 'WY03', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'DHARMPREET', 'SINGH', '04/20/1995', 'female', 'Single', 'American', '518  Evergreen Lane', 'Los Angeles', 'CA', 'US', 'moorechristen@gmail.com', '4578545555', '4547854520', 'Passport', '100035420', 'Badminton Player', '04/01/2021', 'A+', 'dharm_p.jpg', 'Executive Assistant', 'General', '1450578569', 'Crest Bank', '87529722555', 'CBSB0096960', 'CB LAD 094169 000 000111', '2021-04-14 14:23:30'),
(9, 'WY04', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'VIKAS', 'KUMAR', '10/12/1992', 'male', 'Registered partnership', 'American', '3007  Carolina Avenue', 'Loveland', 'CO', 'US', 'stephen@gmail.com', '3457856970', '1045786310', 'Passport', '321457852', 'Football Player', '04/14/2021', 'A-', 'vikas.jpeg', 'Internship Period', 'IT', '2222060446', 'Federal Bank', '273794443158', 'FBSB00139980', 'FB LAD 033385 000 000135', '2021-04-14 15:49:34'),
(10, 'WY05', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'DINKY', 'JOYA', '07/29/1993', 'female', 'Single', 'American', '4211 Rubaiyt Road', 'Grand Rapids', 'Michign', 'US', 'agnesm88d@gmail.com', '3247548880', '2457778540', 'Passport', '245785000', 'Tennis Player', '10/15/2020', 'B+', 'dinki.jpeg', 'Chief Technology Officer', 'IT', '425569690', 'Centreville Bank', '4201483626', 'CVCB0011377', 'CB LAD 032425 000 000753', '2021-04-14 19:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `wy_holidays`
--

CREATE TABLE `wy_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_title` varchar(255) NOT NULL,
  `holiday_desc` varchar(255) NOT NULL,
  `holiday_date` varchar(50) NOT NULL,
  `holiday_type` enum('win','loss') NOT NULL DEFAULT 'loss'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_holidays`
--

INSERT INTO `wy_holidays` (`holiday_id`, `holiday_title`, `holiday_desc`, `holiday_date`, `holiday_type`) VALUES
(1, 'Titans Vs Naruto', 'GNE', '05/01/2020', 'win'),
(2, 'Titans Vs Black Clover', 'ARAYA College', '04/06/2023', 'loss'),
(9, 'Titans Vs DBZ', 'GNE', '04/05/2023', 'loss'),
(16, 'Titans Vs Kira', 'PAU', '03/09/2023', 'win'),
(17, 'Titans Vs Lions', 'PAU', '06/17/2022', 'win'),
(18, 'Titans Vs Team 7', 'GNE', '12/25/2020', 'loss'),
(21, 'Titans Vs Kings', 'GNE', '07/01/2021', 'loss'),
(22, 'Titans Vs Capitals', 'PCTE', '09/12/2023', 'win'),
(23, 'Titans Vs Akastuki', 'SCD', '09/05/2023', 'win');

-- --------------------------------------------------------

--
-- Table structure for table `wy_leaves`
--

CREATE TABLE `wy_leaves` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_subject` varchar(255) NOT NULL,
  `leave_dates` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `VENUE` varchar(255) NOT NULL,
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_leaves`
--

INSERT INTO `wy_leaves` (`leave_id`, `emp_code`, `leave_subject`, `leave_dates`, `leave_message`, `leave_type`, `VENUE`, `apply_date`) VALUES
(1, 'WY01', 'Cricket', '04/13/2023', 'University Unleashed Athletics', 'GNE Vs PCTE', 'GNE Ground', '2021-04-13 00:00:00'),
(3, 'WY03', 'FOOTBALL', '04/15/2023', 'University Unleashed Athletics', 'GNE Vs ARYA College', 'CANADA', '2021-04-14 15:47:06'),
(4, 'WY05', 'Hockey', '04/15/2023', 'University Unleashed Athletics', 'GNE Vs PAU', '', '2021-04-14 19:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `wy_payheads`
--

CREATE TABLE `wy_payheads` (
  `payhead_id` int(11) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `payhead_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_payheads`
--

INSERT INTO `wy_payheads` (`payhead_id`, `payhead_name`, `payhead_desc`) VALUES
(2, 'Dearness Allowance', 'Dearness Allowance'),
(3, 'House Rent Allowance', 'House Rent Allowance'),
(4, 'Conveyance Allowance', 'Conveyance Allowance'),
(5, 'Medical Allowance', 'Medical Allowance'),
(7, 'Overtime', 'Overtime'),
(8, 'Traveling Expenses', 'Traveling Expenses'),
(9, 'Loans & Advance', 'Loans & Advance'),
(10, 'Other Allowance', 'Other Allowance'),
(11, 'Professional Tax', 'Professional Tax'),
(12, 'Income Tax', 'Income Tax'),
(13, 'Employee Provident Fund', 'Employee Provident Fund'),
(14, 'Loans & Advance', 'Loans & Advance'),
(15, 'Other Deductions', 'Other Deductions');

-- --------------------------------------------------------

--
-- Table structure for table `wy_pay_structure`
--

CREATE TABLE `wy_pay_structure` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_id` int(11) NOT NULL,
  `default_salary` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_pay_structure`
--

INSERT INTO `wy_pay_structure` (`salary_id`, `emp_code`, `payhead_id`, `default_salary`) VALUES
(129, 'WY01', 1, 45000.00),
(130, 'WY01', 15, 5000.00),
(131, 'WY03', 7, 5500.00),
(132, 'WY03', 1, 21000.00),
(133, 'WY05', 1, 51500.00),
(134, 'WY05', 7, 6500.00),
(135, 'WY05', 12, 5510.00),
(136, 'WY04', 1, 39000.00),
(137, 'WY04', 7, 5600.00),
(138, 'WY04', 12, 4250.00),
(139, 'WY02', 1, 21000.00),
(140, 'WY02', 7, 6500.00);

-- --------------------------------------------------------

--
-- Table structure for table `wy_salaries`
--

CREATE TABLE `wy_salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `pay_amount` float(11,2) NOT NULL,
  `earning_total` float(11,2) NOT NULL,
  `deduction_total` float(11,2) NOT NULL,
  `net_salary` float(11,2) NOT NULL,
  `pay_type` enum('earnings','deductions') NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `generate_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_salaries`
--

INSERT INTO `wy_salaries` (`salary_id`, `emp_code`, `payhead_name`, `pay_amount`, `earning_total`, `deduction_total`, `net_salary`, `pay_type`, `pay_month`, `generate_date`) VALUES
(244, 'WY01', 'Basic Salary', 45000.00, 45000.00, 0.00, 45000.00, 'earnings', 'March, 2021', '2021-04-12 13:48:19'),
(245, 'WY03', 'Overtime', 5500.00, 39500.00, 0.00, 39500.00, 'earnings', 'March, 2021', '2021-04-14 16:09:02'),
(246, 'WY03', 'Basic Salary', 34000.00, 39500.00, 0.00, 39500.00, 'earnings', 'March, 2021', '2021-04-14 16:09:02'),
(247, 'WY05', 'Basic Salary', 51500.00, 58000.00, 5510.00, 52490.00, 'earnings', 'April, 2021', '2021-04-14 19:17:13'),
(248, 'WY05', 'Overtime', 6500.00, 58000.00, 5510.00, 52490.00, 'earnings', 'April, 2021', '2021-04-14 19:17:13'),
(249, 'WY05', 'Income Tax', 5510.00, 58000.00, 5510.00, 52490.00, 'deductions', 'April, 2021', '2021-04-14 19:17:14'),
(250, 'WY04', 'Basic Salary', 39000.00, 44600.00, 4250.00, 40350.00, 'earnings', 'April, 2021', '2021-04-14 19:22:25'),
(251, 'WY04', 'Overtime', 5600.00, 44600.00, 4250.00, 40350.00, 'earnings', 'April, 2021', '2021-04-14 19:22:25'),
(252, 'WY04', 'Income Tax', 4250.00, 44600.00, 4250.00, 40350.00, 'deductions', 'April, 2021', '2021-04-14 19:22:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wy_admin`
--
ALTER TABLE `wy_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

--
-- Indexes for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_employees`
--
ALTER TABLE `wy_employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  ADD PRIMARY KEY (`payhead_id`);

--
-- Indexes for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`),
  ADD KEY `payhead_id` (`payhead_id`);

--
-- Indexes for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wy_admin`
--
ALTER TABLE `wy_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wy_employees`
--
ALTER TABLE `wy_employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  MODIFY `payhead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
