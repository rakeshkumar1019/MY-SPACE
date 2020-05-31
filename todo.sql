-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 08:13 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(5814, 'Brijesh Kumar Singh', 'brijesh', 'male', 'brijeshkumarsingh9700@gmail.com', 9182700412),
(1528, 'Loop1019', 'rakesh@786A', 'male', 'rakeshkumarsingh25may@gmail.com', 9182700412);

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
(1528, '2020-05-16', 'Coding', ' Every student in every school should have the opportunity to learn computer science. of U.S. students have accounts on Code.org. of our students are young women. projects created on Code.org. teachers use Code.org. All 50 states support computer science. Explore our courses. Try Code Studio. Find a local class. Other online courses.', '2020-05-16', 'rakeshkumarsingh25may@gmail.com', 'Pending', '8:41'),
(5814, '2020-05-16', 'Coding', ' border-top: 1px solid black;border-top: 1px solid black;border-top: 1px solid black;border-top: 1px solid black;', '2020-05-16', 'brijeshkumarsingh9700@gmail.com', 'Pending', '9:44');

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
('1589602660701pexels-photo-91224.jpeg', 'brijeshkumarsingh9700@gmail.com'),
('1589598881117pexels-photo-91224.jpeg', 'rakeshkumarsingh25may@gmail.com');

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
('brijeshkumarsingh9700@gmail.com', '748747', 'true'),
('rakeshkumarsingh25may@gmail.com', '541986', 'true');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5815;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
