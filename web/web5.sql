-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 01:38 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web5`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`ID` int(60) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Status` int(60) NOT NULL,
  `Username` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Name`, `Email`, `Password`, `Status`, `Username`) VALUES
(1, 'Faculty', 'Faculty', 'Faculty', 1, 'Faculty'),
(2, 'Student', 'Student', 'Student', 0, 'Student'),
(3, 'Admin', 'Admin', 'Admin', 2, 'Admin'),
(13, 'johnny', 'john@yahoo.com', 'a', 0, 'john45'),
(34, 'Chris', 'chris@gmail.com', 'a', 1, 'a'),
(666, 'Satan', 'murder@fitchburgstate.edu', 'hail', 1, 'satan');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`ID` int(60) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Time` varchar(60) NOT NULL,
  `Instructor` varchar(11) NOT NULL,
  `CRN` int(11) NOT NULL,
  `room_location` varchar(11) NOT NULL,
  `Prerequisites` varchar(11) NOT NULL,
  `Max_number_of_students` int(11) NOT NULL,
  `Current_number_of_students` int(11) NOT NULL,
  `LAB` varchar(11) NOT NULL,
  `LAS` varchar(11) NOT NULL,
  `Term` varchar(60) NOT NULL,
  `CourseNumber` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `Name`, `Time`, `Instructor`, `CRN`, `room_location`, `Prerequisites`, `Max_number_of_students`, `Current_number_of_students`, `LAB`, `LAS`, `Term`, `CourseNumber`) VALUES
(2, 'Test Course', '8:00', 'Faculty', 12345, 'Edgerly 201', '', 22, 1, '', '', 'Spring', '1100'),
(3, 'How to Survive Hell', '4:20-6:66', 'Satan', 420, 'HEll420', '', 5, 3, '', '', 'Summer', '420'),
(4, 'Welcome', '9:30', 'Chris', 2468, '202', '', 25, 1, '', '', 'Spring', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `course_account`
--

CREATE TABLE IF NOT EXISTS `course_account` (
`ID` int(60) NOT NULL,
  `SchoolID` int(60) NOT NULL,
  `CRN` int(60) NOT NULL,
  `Grade` int(60) NOT NULL,
  `red_card_initializer` varchar(60) NOT NULL,
  `semester` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_account`
--

INSERT INTO `course_account` (`ID`, `SchoolID`, `CRN`, `Grade`, `red_card_initializer`, `semester`) VALUES
(11, 2, 12345, 0, '0', 'Spring'),
(12, 2, 2468, 0, '0', 'Spring'),
(17, 2, 420, 1, '0', 'Summer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_account`
--
ALTER TABLE `course_account`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=667;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `course_account`
--
ALTER TABLE `course_account`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
