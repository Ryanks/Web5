-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2017 at 10:49 PM
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
  `Attribute` int(60) NOT NULL,
  `Username` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Name`, `Email`, `Password`, `Attribute`, `Username`) VALUES
(1, 'Faculty', 'Faculty', 'Faculty', 1, 'Faculty'),
(2, 'Student', 'Student', 'Student', 0, 'Student'),
(3, 'Admin', 'Admin', 'Admin', 2, 'Admin');

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
  `CourseNumber` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `Name`, `Time`, `Instructor`, `CRN`, `room_location`, `Prerequisites`, `Max_number_of_students`, `Current_number_of_students`, `LAB`, `LAS`, `Term`, `CourseNumber`) VALUES
(2, 'Test Course', '8:00', 'Faculty', 12345, 'Edgerly 201', '', 22, 0, '', '', 'Spring2017', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `course_account`
--

CREATE TABLE IF NOT EXISTS `course_account` (
`ID` int(60) NOT NULL,
  `SchoolID` int(60) NOT NULL,
  `CRN` int(60) NOT NULL,
  `red_card_initializer` varchar(60) NOT NULL,
  `Grade` int(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_account`
--

INSERT INTO `course_account` (`ID`, `SchoolID`, `CRN`, `red_card_initializer`, `Grade`) VALUES
(1, 2, 12345, '0', 3);

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
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_account`
--
ALTER TABLE `course_account`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
