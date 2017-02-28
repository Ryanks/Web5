-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2017 at 03:54 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`ID` int(60) NOT NULL,
  `Name` int(60) NOT NULL,
  `Time` int(60) NOT NULL,
  `Instructor` int(11) NOT NULL,
  `CRN` int(11) NOT NULL,
  `room_location` int(11) NOT NULL,
  `Prerequisites` int(11) NOT NULL,
  `Max_number_of_students` int(11) NOT NULL,
  `Current_number_of_students` int(11) NOT NULL,
  `LAB` int(11) NOT NULL,
  `LAS` int(11) NOT NULL,
  `Term` varchar(60) NOT NULL,
  `CourseNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_account`
--
ALTER TABLE `course_account`
MODIFY `ID` int(60) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
