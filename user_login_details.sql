-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 18, 2021 at 06:44 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_login_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `comment` text NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment_table`
--

INSERT INTO `comment_table` (`comment`, `id`, `fileid`) VALUES
('', '18L31A05J7', 31),
('good', '18L31A05I0', 21),
('u nailed it', '18L31A05J3', 30),
('worst response', '18L31A05M2', 31);

-- --------------------------------------------------------

--
-- Table structure for table `file_table`
--

CREATE TABLE `file_table` (
  `fileid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_table`
--

INSERT INTO `file_table` (`fileid`, `fname`, `id`, `status`) VALUES
(4, 'sololearn c++', '18L31A05J3', 2),
(5, 'nqt', '18L31A05M2', -2),
(6, 'nqtp', '18L31A05J7', 2),
(7, 'coursera', '18L31A05I0', 2),
(8, 'python', '18L31A05J3', -2),
(9, 'python', '18L31A05J3', 2),
(10, 'abc', '18L31A05J7', -2),
(11, 'assignment1.1', '18L31A05J7', 2),
(12, 'assignment1.2', '18L31A05I0', -2),
(13, 'abcd', '18L31A05J3', -2),
(14, 'ccna', '18L31A05M2', 2),
(15, 'python', '18L31A05I0', 2),
(16, 'sowji', '18L31A05J6', 2),
(17, 'JAVA', '18L31A05L3', -2),
(18, 'c', '18L31A05J7', 2),
(19, 'c++', '18L31A05I0', 2),
(20, 'pj', '18L31A05J7', 2),
(21, 'html', '18L31A05I0', 2),
(22, 'cc', '18L31A05J7', 2),
(23, 'a', '18L31A05J3', 2),
(24, 'b', '18L31A05J3', -2),
(25, 'pic', '18L31A05J7', -2),
(26, 'assignment', '18L31A05I0', 2),
(27, 'abc', '18L31A05K3', 2),
(28, 'py', '18L31A05J7', -2),
(29, 'c', '18L31A05I0', 2),
(30, 'c++', '18L31A05J3', 2),
(31, 'image', '18L31A05M2', 2),
(32, 'abc', '18L31A05J7', -2);

-- --------------------------------------------------------

--
-- Table structure for table `fregister`
--

CREATE TABLE `fregister` (
  `fid` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fregister`
--

INSERT INTO `fregister` (`fid`, `password`) VALUES
('Jyothsna', 'jyothsna@'),
('priya', 'priya@'),
('sravani', 'sravani@'),
('stefan', 'stefan@'),
('swapna priya', 'swapna@'),
('swathi', 'swathi@'),
('vamsi', 'vamsi@');

-- --------------------------------------------------------

--
-- Table structure for table `sregister`
--

CREATE TABLE `sregister` (
  `ID` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sregister`
--

INSERT INTO `sregister` (`ID`, `password`, `email`) VALUES
('18L31A05I0', 'Venkat0@', 'sasivenkat@gmail.com'),
('18L31A05J3', 'Spandhana3@', 'spandhanamamidi@gmail.com'),
('18L31A05J6', 'Sowji6@', 'sowji@gmail.com'),
('18L31A05J7', 'Jyothsna7@', 'paturijyothsna@gmail.com'),
('18L31A05K3', 'Joshna3@', 'joshna@gmail.com'),
('18L31A05L3', 'Jaswanth3@', 'jaswanthjuicy@gmail.com'),
('18L31A05M2', 'Reshma2@', 'reshmakandregula@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`comment`(50)),
  ADD KEY `id` (`id`);

--
-- Indexes for table `file_table`
--
ALTER TABLE `file_table`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `fregister`
--
ALTER TABLE `fregister`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `sregister`
--
ALTER TABLE `sregister`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_table`
--
ALTER TABLE `file_table`
  MODIFY `fileid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD CONSTRAINT `comment_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `sregister` (`ID`);

--
-- Constraints for table `file_table`
--
ALTER TABLE `file_table`
  ADD CONSTRAINT `file_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `sregister` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
