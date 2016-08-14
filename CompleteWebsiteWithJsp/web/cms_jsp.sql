-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2016 at 05:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_jsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_navbar`
--

CREATE TABLE `tbl_navbar` (
  `id` int(11) NOT NULL,
  `websiteName` varchar(150) COLLATE utf8_bin NOT NULL,
  `linkOne` varchar(100) COLLATE utf8_bin NOT NULL,
  `linkTwo` varchar(100) COLLATE utf8_bin NOT NULL,
  `linkThree` varchar(100) COLLATE utf8_bin NOT NULL,
  `linkFour` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_navbar`
--

INSERT INTO `tbl_navbar` (`id`, `websiteName`, `linkOne`, `linkTwo`, `linkThree`, `linkFour`) VALUES
(1, 'Your Website Name', 'Link 1', 'Link 2', 'Link 3', 'Link 4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_placeholder`
--

CREATE TABLE `tbl_placeholder` (
  `id` int(11) NOT NULL,
  `placeholder` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_placeholder`
--

INSERT INTO `tbl_placeholder` (`id`, `placeholder`) VALUES
(1, 'The template has been redesigned by Mohit Paudel.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_secondcontent`
--

CREATE TABLE `tbl_secondcontent` (
  `id` int(11) NOT NULL,
  `secondContent` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_secondcontent`
--

INSERT INTO `tbl_secondcontent` (`id`, `secondContent`) VALUES
(1, 'This is just a simple example of another placeholder created where you can add your own content. There are many beautiful templates coming. This is just the beginning. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thirdcontent`
--

CREATE TABLE `tbl_thirdcontent` (
  `id` int(11) NOT NULL,
  `thirdContent` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_thirdcontent`
--

INSERT INTO `tbl_thirdcontent` (`id`, `thirdContent`) VALUES
(1, 'This is just a simple example of another placeholder created where you can add your own content. There are many beautiful templates coming. This is just the beginning. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_placeholder`
--
ALTER TABLE `tbl_placeholder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_secondcontent`
--
ALTER TABLE `tbl_secondcontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_thirdcontent`
--
ALTER TABLE `tbl_thirdcontent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_placeholder`
--
ALTER TABLE `tbl_placeholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_secondcontent`
--
ALTER TABLE `tbl_secondcontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_thirdcontent`
--
ALTER TABLE `tbl_thirdcontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
