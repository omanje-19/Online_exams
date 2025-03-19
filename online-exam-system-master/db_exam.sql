-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 02:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'moya', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(1, 1, 1, 'cascading style sheets'),
(2, 1, 0, 'color styling sheet'),
(3, 1, 0, 'color sheet styles'),
(4, 1, 0, 'coding style sheet'),
(5, 2, 0, '<ol>'),
(6, 2, 1, '<ul>'),
(7, 2, 0, '<li>'),
(8, 2, 0, '<list>'),
(9, 3, 0, 'font-color'),
(10, 3, 0, 'text-color'),
(11, 3, 1, 'color'),
(12, 3, 0, 'foreground-color'),
(13, 4, 0, 'GET'),
(14, 4, 1, 'POST'),
(15, 4, 0, 'PUT'),
(16, 4, 0, 'DELETE'),
(17, 5, 1, 'line-height'),
(18, 5, 0, 'letter-spacing'),
(19, 5, 0, 'word-spacing'),
(20, 5, 0, 'text-indent'),
(21, 6, 0, '<;!---->'),
(22, 6, 0, '/**/'),
(23, 6, 1, '//'),
(24, 6, 0, '#'),
(25, 7, 0, 'Django'),
(26, 7, 0, 'ruby on rails'),
(27, 7, 1, 'Angular '),
(28, 7, 0, 'Laravel'),
(29, 8, 1, 'Hyper Text Markup Language'),
(30, 8, 0, 'Hyperlink Text Markup Language'),
(31, 8, 0, 'Hyper Tag Markup Language'),
(32, 8, 0, 'Hyper Making Links'),
(33, 9, 1, 'Hypertext processor'),
(34, 9, 0, 'preprocessor Hypertext '),
(35, 9, 0, 'Private Homepage'),
(36, 9, 0, 'Page Hyper Placer'),
(37, 10, 0, '#'),
(38, 10, 0, '!'),
(39, 10, 0, '<>'),
(40, 10, 1, '$');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(1, 1, 'what does css stand for'),
(2, 2, 'which html tag is used to create unordered list'),
(3, 3, 'in css which property is used to change the text colour of an element'),
(4, 4, 'which http method is used to submit data to be processed to a specified resource'),
(5, 5, 'which css property controls the space between lines of texts'),
(6, 6, 'which symbol is used for single-line comments'),
(7, 7, 'which of the following is jasascript framework'),
(8, 8, 'What does HTML stand for?'),
(9, 9, 'What does PHP stand for?'),
(10, 10, 'All variables in PHP start with which symbol?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(8, 'Janet Atieno', 'jano909', '827ccb0eea8a706c4c34a16891f84e7b', 'ojanetatieno@kabarak.ac.ke', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
