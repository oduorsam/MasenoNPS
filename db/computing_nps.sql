-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2019 at 01:07 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computing_nps`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `departmentId` int(11) NOT NULL,
  `departmentName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`departmentId`, `departmentName`) VALUES
(1, 'Computer Science'),
(2, 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `encounter`
--

CREATE TABLE `encounter` (
  `surveyEncounterId` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `departmentId` int(11) NOT NULL,
  `programId` int(11) NOT NULL,
  `yearOfStudy` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `unitCode` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encounter`
--

INSERT INTO `encounter` (`surveyEncounterId`, `date`, `departmentId`, `programId`, `yearOfStudy`, `semester`, `unitCode`) VALUES
(1, '2019-03-20', 2, 21, 1, 1, 'CIT 101'),
(2, '2019-03-20', 2, 21, 1, 1, 'CIT 101'),
(3, '2019-03-20', 2, 21, 1, 1, 'CIT 101'),
(4, '2019-03-20', 2, 21, 1, 2, 'CIT 106'),
(5, '2019-03-20', 2, 22, 1, 1, 'SCT 101'),
(6, '2019-03-20', 2, 22, 1, 1, 'SCT 101'),
(7, '2019-03-20', 2, 22, 1, 2, 'SCT 108');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `departmentId` int(11) NOT NULL,
  `programId` int(11) NOT NULL,
  `programName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`departmentId`, `programId`, `programName`) VALUES
(1, 11, 'BScCs'),
(1, 12, 'BScCT'),
(2, 21, 'BScIT'),
(2, 22, 'BSc ICTM');

-- --------------------------------------------------------

--
-- Table structure for table `studentresponse`
--

CREATE TABLE `studentresponse` (
  `surveyResponseId` int(11) UNSIGNED NOT NULL,
  `surveyEncounter_surveyEncounterId` int(11) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentresponse`
--

INSERT INTO `studentresponse` (`surveyResponseId`, `surveyEncounter_surveyEncounterId`, `question`, `answer`) VALUES
(1, 1, 'unit', '10'),
(2, 1, 'unit comment', 'The unit was conducted as per the course outline'),
(3, 1, 'instructor', '10'),
(4, 1, 'instructor comment', 'Average work'),
(5, 1, 'lab', '3'),
(6, 1, 'labc', 'Not perfect'),
(7, 1, 'classroom', '10'),
(8, 1, 'classroom comment', 'wondeful'),
(9, 1, 'school', '10'),
(10, 2, 'unit', '9'),
(11, 2, 'unit comment', 'The administration was average'),
(12, 2, 'instructor', '10'),
(13, 2, 'instructor comment', 'great'),
(14, 2, 'lab', '9'),
(15, 2, 'labc', 'Awesome'),
(16, 2, 'classroom', '10'),
(17, 2, 'classroom comment', 'Awesome'),
(18, 2, 'school', '10'),
(19, 3, 'unit', '10'),
(20, 3, 'unit comment', 'The unit was conducted as per the course outline'),
(21, 3, 'instructor', '10'),
(22, 3, 'instructor comment', 'Average work'),
(23, 3, 'lab', '3'),
(24, 3, 'labc', 'Not perfect'),
(25, 3, 'classroom', '10'),
(26, 3, 'classroom comment', 'wondeful'),
(27, 3, 'school', '10'),
(28, 4, 'unit', '10'),
(29, 4, 'unit comment', 'I was satisfied'),
(30, 4, 'instructor', '10'),
(31, 4, 'instructor comment', 'He observed the course outline'),
(32, 4, 'lab', '2'),
(33, 4, 'labc', 'poor no equipments'),
(34, 4, 'classroom comment', 'great'),
(35, 4, 'classroom', '10'),
(36, 4, 'school', '10'),
(37, 5, 'unit', '3'),
(38, 5, 'unit comment', 'Poorly conducted'),
(39, 5, 'instructor', '3'),
(40, 5, 'instructor comment', 'poorly administered'),
(41, 5, 'lab', '3'),
(42, 5, 'labc', 'Not good'),
(43, 5, 'classroom', '3'),
(44, 5, 'classroom comment', 'Facilities are not good'),
(45, 5, 'school', '4'),
(46, 6, 'unit', '3'),
(47, 6, 'unit comment', 'Poorly conducted'),
(48, 6, 'instructor', '3'),
(49, 6, 'instructor comment', 'poorly administered'),
(50, 6, 'lab', '3'),
(51, 6, 'labc', 'Not good'),
(52, 6, 'classroom', '3'),
(53, 6, 'classroom comment', 'Facilities are not good'),
(54, 6, 'school', '4'),
(55, 7, 'unit', '3'),
(56, 7, 'unit comment', 'I got Nothing'),
(57, 7, 'instructor', '2'),
(58, 7, 'instructor comment', 'Average tutor'),
(59, 7, 'lab', '10'),
(60, 7, 'labc', 'Should be improved'),
(61, 7, 'classroom', '10'),
(62, 7, 'classroom comment', 'Nice'),
(63, 7, 'school', '10');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `departmentId` int(11) NOT NULL,
  `programId` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(2) NOT NULL,
  `unitCode` varchar(11) CHARACTER SET utf8 NOT NULL,
  `unitName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`departmentId`, `programId`, `year`, `semester`, `unitCode`, `unitName`) VALUES
(1, 11, 1, 1, 'CCS 101', 'Fundamentals Of Computer System'),
(1, 11, 1, 2, 'CCS 102', 'Linear Algebra'),
(1, 11, 2, 1, 'CCS 201', 'Object Oriented Programming In Java II'),
(1, 11, 2, 2, 'CCS 202', 'Data Structures and Algoriths'),
(1, 11, 3, 1, 'CCS 301', 'Principal of Programming Languages'),
(1, 11, 3, 2, 'CCS 302', 'Human Computer Interaction'),
(1, 11, 4, 1, 'CCS 401', 'Software Project Management'),
(1, 11, 4, 2, 'CCS 410', 'Computational Science'),
(1, 12, 1, 1, 'CCT 101', 'Fundamentals Of Computing'),
(1, 12, 1, 2, 'CCT 102', 'Engineering Math II'),
(1, 12, 2, 1, 'CCT 201', 'Object Oriented Programming II'),
(1, 12, 2, 2, 'CCT 202', 'Digital Electronics II'),
(1, 12, 3, 1, 'CCT 301', 'Computer Architecture I'),
(1, 12, 3, 2, 'CCT 302', 'Computer Architecture II'),
(1, 12, 4, 2, 'CCT 402', 'Computer Aided Analysis And Design'),
(1, 12, 4, 1, 'CCT 415', 'Data Mining'),
(2, 21, 1, 1, 'CIT 101', 'Discrete Mathematics'),
(2, 21, 1, 2, 'CIT 106', 'Linear Algebra'),
(2, 21, 2, 1, 'CIT 201', 'Object Oriented Programming II'),
(2, 21, 2, 2, 'CIT 202', 'Computer Aided Design'),
(2, 21, 3, 1, 'CIT 301', 'Design And Analysis Of Algorithm'),
(2, 21, 3, 2, 'CIT 302', 'Human Computer Interaction'),
(2, 21, 4, 1, 'CIT 401', 'Software Project Management'),
(2, 21, 4, 2, 'CIT 402', 'Information Technology Project II'),
(2, 22, 1, 1, 'SCT 101', 'Business Organisation'),
(2, 22, 1, 2, 'SCT 108', 'Data Communication'),
(2, 22, 2, 1, 'SCT 201', 'Computer Networks'),
(2, 22, 2, 2, 'SCT 210', 'Management Process'),
(2, 22, 3, 1, 'SCT 301', 'It Service Support I'),
(2, 22, 3, 2, 'SCT 312', 'IT Service Support II'),
(2, 22, 4, 1, 'SCT 401', 'Business Management'),
(2, 22, 4, 2, 'SCT 402', 'Computer Ethics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`departmentId`);

--
-- Indexes for table `encounter`
--
ALTER TABLE `encounter`
  ADD PRIMARY KEY (`surveyEncounterId`),
  ADD KEY `departmentId` (`departmentId`),
  ADD KEY `programId` (`programId`),
  ADD KEY `unitCode` (`unitCode`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`programId`);

--
-- Indexes for table `studentresponse`
--
ALTER TABLE `studentresponse`
  ADD PRIMARY KEY (`surveyResponseId`),
  ADD KEY `surveyEncounter_surveyResponse` (`surveyEncounter_surveyEncounterId`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unitCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `encounter`
--
ALTER TABLE `encounter`
  MODIFY `surveyEncounterId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `studentresponse`
--
ALTER TABLE `studentresponse`
  MODIFY `surveyResponseId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `encounter`
--
ALTER TABLE `encounter`
  ADD CONSTRAINT `encounter_ibfk_4` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encounter_ibfk_5` FOREIGN KEY (`programId`) REFERENCES `programs` (`programId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encounter_ibfk_6` FOREIGN KEY (`unitCode`) REFERENCES `units` (`unitCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentresponse`
--
ALTER TABLE `studentresponse`
  ADD CONSTRAINT `studentresponse_ibfk_1` FOREIGN KEY (`surveyEncounter_surveyEncounterId`) REFERENCES `encounter` (`surveyEncounterId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
