-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 11:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`, `gender`, `email`, `phone`) VALUES
(3582, 'Test', 'rakesh', 'male', 'rake@gmail.com', 8466953034),
(6538, 'LOOP1019', 'rakesh', 'male', 'rakeshkumarsingh25may@gmail.com', 9182700412);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(4) NOT NULL,
  `createdDate` varchar(50) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `completedDate` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `isDone` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `createdDate`, `title`, `content`, `completedDate`, `email`, `isDone`, `time`) VALUES
(1587, '2020-06-6', 'Project Updated', ' i have to update project by today.', '2020-06-06', 'rakeshkumarsingh25may@gmail.com', 'Done', '13:37'),
(6538, '2020-06-6', 'Leetcode Contest', 'Reminder:i have leetcode weekly contest at 830-930 pm ', '2020-06-07', 'rakeshkumarsingh25may@gmail.com', 'Done', '13:22'),
(6539, '2020-06-6', 'dvdg', ' dxgfbgnnnnnnnnnnnnnnnnn', '2020-06-06', 'rakeshkumarsingh25may@gmail.com', 'Pending', '13:46'),
(6540, '2020-06-6', 'dgfh', ' xvcbcv', '2020-06-06', 'rakeshkumarsingh25may@gmail.com', 'Pending', '13:46'),
(6541, '2020-06-6', 'dgfdh', ' zvfh', '2020-06-06', 'rakeshkumarsingh25may@gmail.com', 'Pending', '13:52'),
(6542, '2020-06-6', 'xfbcgn', ' cbvmb,', '2020-06-06', 'rakeshkumarsingh25may@gmail.com', 'Pending', '13:52');

-- --------------------------------------------------------

--
-- Table structure for table `userprofileimages`
--

CREATE TABLE `userprofileimages` (
  `src` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofileimages`
--

INSERT INTO `userprofileimages` (`src`, `email`) VALUES
('noimage.png', 'rake@gmail.com'),
('1591430100406pp.jpg', 'rakeshkumarsingh25may@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `verifyotp`
--

CREATE TABLE `verifyotp` (
  `email` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `verify` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifyotp`
--

INSERT INTO `verifyotp` (`email`, `otp`, `verify`) VALUES
('rake@gmail.com', '131650', 'false'),
('rakeshkumarsingh25may@gmail.com', '706959', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofileimages`
--
ALTER TABLE `userprofileimages`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `verifyotp`
--
ALTER TABLE `verifyotp`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6543;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
