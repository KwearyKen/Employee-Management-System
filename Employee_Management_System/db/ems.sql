-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 02:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dId` int(11) NOT NULL,
  `DepName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dId`, `DepName`) VALUES
(60, 'IT'),
(90, 'Executive'),
(100, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `WorkID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dID` int(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `WorkID`, `dID`, `degree`, `pic`) VALUES
(123, 'Steven', ' King', 'SKING@gmail.com', '1234', '1997-06-17', 'Male', '60139523957', 7703050, 'Sungai Way, Petaling Jaya', ' AD_PRES', 90, 'Engineering', 'images/Steven.jpg'),
(124, 'Adam', 'Kochhar', 'AKOCHHAR@gmail.com', '1234', '1987-07-18', 'Male', '60315714171', 2071314, 'Bukit Bintang, Kuala Lumpur', ' AD_VP', 90, 'IT', 'images/Adam.jpg'),
(125, 'Lex', 'De Haan', 'LDEHAAN@gmail.com', '1234', '1987-06-29', 'Male', '60144482612', 2091314, 'Menara 1 Sentrum, 201, Jalan Tun Sambanthan', ' AD_VP', 90, 'Multimedia', 'images/Lex.jpg'),
(126, 'Amirah', 'Amirah', 'ABINTI@gmail.com', '1234', '1987-06-20', 'Female', '60138617698', 8071314, '9, Lebuh Pudu', ' IT_PROG', 60, 'IT', 'images/Amirah.jpg'),
(127, 'Bruce', 'Ernst', 'BERNST@gmail.com', '1234', '2000-06-21', 'Male', '60164496848', 7707130, 'Kedai Sun Sing Woh, 21, Jalan Suasa 4', ' IT_PROG', 60, 'Engineering', 'images/Bruce.jpg'),
(128, 'Alexa', 'Lim', 'ALIM@gmail.com', '1234', '1999-06-12', 'Female', '60129711893', 7907130, '4, Persiaran Stonor', ' IT_PROG', 60, 'IT', 'images/Alexa.jpg'),
(129, 'Valli', 'Pataballa', 'VPATABAL@gmail.com', '1234', '1970-12-23', 'Male', '60142170788', 1081714, 'Six Ceylon, 6, Jalan Bukit Ceylon', ' IT_PROG', 60, 'Multimedia', 'images/Valli.jpg'),
(130, 'Diana', 'Lorentz', 'DLORENTZ@gmail.com', '1234', '1988-06-27', 'Female', '60116277317', 2031216, '1, Jalan Dutamas Seroja', ' IT_PROG', 60, 'IT', 'images/Diana.jpg'),
(131, 'Nancy', 'Greenberg', 'NGREENBE@gmail.com', '1234', '1987-01-20', 'Female', '60130679653', 2071314, '920, Jalan Cenderawasih', ' FI_MGR', 100, 'IT', 'images/Nancy.jpg'),
(132, 'Kendria', 'Liew', 'KLIEW@gmail.com', '1234', '2000-01-26', 'Female', '60115790310', 2231314, '17, Lorong Ikan Emas 1', ' FI_ACCOUNT ', 100, 'Finance', 'images/Kendria.jpg'),
(133, 'Abu', 'Ali', 'AALI@gmail.com', '1234', '1997-02-04', 'Male', '601234452', 7674321, 'Jalan Tarik Teh', 'IT_Prog', 60, 'IT', 'images/Abu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(123, 6, '2022-12-04', '2022-12-07', 'Sick', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JobID` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `dID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JobID`, `Position`, `dID`) VALUES
(' AD_PRES', 'President', 90),
(' AD_VP', 'Vice President', 90),
(' FI_ACCOUNT', 'Accountant', 100),
(' FI_MGR', 'Manager', 100),
(' IT_PROG', 'Programmer', 60);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(9, 123, 'Repair', '2022-12-02', '2022-12-03', 0, 'Submitted'),
(10, 124, 'Meeting with Huawei', '2022-12-15', '0000-00-00', 0, 'Due'),
(11, 125, 'Meeting with Huawei', '2022-12-15', '0000-00-00', 0, 'Due'),
(12, 126, 'Design School Management System', '2022-12-31', '0000-00-00', 0, 'Due'),
(13, 127, 'Design School Management System', '2022-12-31', '0000-00-00', 0, 'Due'),
(14, 128, 'Design School Management System', '2022-12-31', '0000-00-00', 0, 'Due'),
(15, 129, 'Design School Management System', '2022-12-31', '0000-00-00', 0, 'Due'),
(16, 130, 'Design School Management System', '2022-12-31', '0000-00-00', 0, 'Due'),
(17, 131, 'Company financial report 2022', '2022-12-29', '0000-00-00', 0, 'Due'),
(18, 132, 'Company financial report 2022', '2022-12-29', '0000-00-00', 0, 'Due'),
(19, 133, 'Design School Management System', '2022-12-31', '0000-00-00', 0, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` float DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(123, 24000, 2.2, 0),
(124, 17000, 1, 34000),
(125, 17000, 1, 34000),
(126, 9000, 0.5, 0),
(127, 6000, 0.3, 0),
(128, 4800, 0.3, 0),
(129, 4800, 0.3, 0),
(130, 4200, 0.8, 0),
(131, 12000, 1, 21600),
(132, 9000, 1, 16200),
(133, 7000, 0, 7000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `WorkID` (`WorkID`),
  ADD KEY `dID` (`dID`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `dID` (`dID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dID`) REFERENCES `department` (`dId`);

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`dID`) REFERENCES `department` (`dId`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
