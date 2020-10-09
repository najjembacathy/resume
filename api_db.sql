-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 02:33 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` varchar(10) NOT NULL,
  `Institution` varchar(50) NOT NULL,
  `Award` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `Institution`, `Award`, `Year`) VALUES
('123', 'Uganda Martyrs University', 'Dip CS and IT', '2012-2014'),
('124', 'Masaka S.S', 'UACE', '2003 -2004'),
('125', 'Maryhill H.S', 'UCE', '1997-2000');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `Name`, `Contact`, `Email`) VALUES
('123', 'Najjemba Catherine', '0782149490', 'najjemba.cathy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `referees`
--

CREATE TABLE `referees` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referees`
--

INSERT INTO `referees` (`id`, `Name`, `Title`, `Contact`, `Email`) VALUES
('123', 'Dr. Fr. Byarugaba George William', 'Director, UMU Masaka Campus', '0782149490', 'gbyarugaba@umu.ac.ug'),
('124', 'Fr. Ssembatya Joseph', 'DVC FA, UMU Nkozi', '0772571293', 'jssemabtaya@umu.ac.ug');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` varchar(10) NOT NULL,
  `Skills` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `Skills`) VALUES
('123', 'Computer literate'),
('124', 'Communication skills'),
('125', 'Leadership skills'),
('126', 'Programming skills');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `id` varchar(10) NOT NULL,
  `Institution` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Year` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`id`, `Institution`, `Title`, `Year`) VALUES
('123', 'UMU', 'Lab attendant', '2014-2020'),
('124', 'LCDI-Masaka', 'Tutor', '2009-2011');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referees`
--
ALTER TABLE `referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
