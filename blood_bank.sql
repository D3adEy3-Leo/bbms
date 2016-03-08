-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2016 at 02:09 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `id` int(11) NOT NULL,
  `blood_count` int(11) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `blood_count`, `blood_group`) VALUES
(1, 2, 'A+'),
(2, 0, 'A-'),
(3, 1, 'B+'),
(4, 0, 'B-'),
(5, 0, 'O+'),
(6, 0, 'O-'),
(7, 1, 'AB+'),
(8, 0, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE IF NOT EXISTS `donor` (
  `donor_id` int(11) NOT NULL,
  `donor_name` varchar(45) DEFAULT NULL,
  `father_name` varchar(40) NOT NULL,
  `mother_name` varchar(40) NOT NULL,
  `donor_dob` varchar(11) NOT NULL,
  `donor_sex` varchar(40) NOT NULL,
  `donor_occupation` varchar(40) NOT NULL,
  `donor_weight` int(11) NOT NULL,
  `bp_systolic` int(11) NOT NULL,
  `bp_diastolic` int(11) NOT NULL,
  `present_address` varchar(100) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `last_donation_date` varchar(11) NOT NULL,
  `regular_donor` varchar(4) NOT NULL,
  `donor_blood_group` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `donor_name`, `father_name`, `mother_name`, `donor_dob`, `donor_sex`, `donor_occupation`, `donor_weight`, `bp_systolic`, `bp_diastolic`, `present_address`, `permanent_address`, `email`, `last_donation_date`, `regular_donor`, `donor_blood_group`) VALUES
(12, 'Karim', 'adasdas', 'asdasdasd', '19/02/2003', 'Male', 'asdsadsadas', 11, 11, 11, 'Dhaka', 'dadasdasd', 'sadadasd', '10/02/2015', 'Yes', 'B+'),
(13, 'asdasdas', 'asdasdsa', 'asdasdsadas', '04/02/1992', 'Male', 'asdasd', 11, 22, 22, 'dsadsadas', 'asdasd', 'asdasdasdasasd', '13/02/2007', 'Yes', 'A-'),
(14, 'Karim', 'Rahim', 'Amina', '26/02/1999', 'Male', 'Service', 80, 70, 150, 'Dhaka', 'Dhaka', 'karim@yahoo.com', '03/02/2016', 'Yes', 'A+'),
(15, 'abc', 'cvdf', 'ahsdhfgg', '18/02/1985', 'Male', 'asdjdasdj', 12, 33, 44, 'asdasd', 'ffdaf', 'fsdfsdfds', '03/02/2015', 'Yes', 'AB+'),
(16, 'asdsadsa', 'asdsadsa', 'asdsadsa', '04/02/1991', 'Male', 'asdasas', 22, 33, 44, 'asdasf', 'fdfdsd', 'asdaseee', '04/02/2014', 'Yes', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `password`, `email`) VALUES
('admin', 'admin', 'sidharth_thukral@hotmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
