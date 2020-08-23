-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2020 at 10:48 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoodwatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `reported_breakings`
--

CREATE TABLE `reported_breakings` (
  `id` int(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `reported_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'Martin', 'martinezmbithi@gmail.com', 'mart', '$5$rounds=535000$0XqrU7X1Uim2Vd89$QhWdhd2iMrsAC2KcAG1sFTnGfvKBg4EEmmVFBzexOQ0'),
(2, 'Mart Mbithi', 'martdevelopers254@gmail.com', 'Mart Mbithi', '$5$rounds=535000$mmJ5eKr9dDI/JKcw$In4JWdIXya8XzjhL4LoJKIrB2ttIvsWoY3IVPqKzZLB'),
(3, 'mercy mumo', 'martdevelopers@ilib.org', 'Mercy', '$5$rounds=535000$0zZ2L5Ns6vXIhWie$KdldRxHyjup1BfqGv.hyk1GRULp4pzYIM5du11H7Yi3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reported_breakings`
--
ALTER TABLE `reported_breakings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reported_breakings`
--
ALTER TABLE `reported_breakings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
