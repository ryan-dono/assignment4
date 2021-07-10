-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2021 at 10:18 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment3`
--

-- --------------------------------------------------------

--
-- Table structure for table `question2_chat`
--

CREATE TABLE `question2_chat` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(123) NOT NULL,
  `to_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question2_chat`
--

INSERT INTO `question2_chat` (`chat_id`, `user_id`, `content`, `to_id`) VALUES
(1, 1, 'Hey How you doing ?', 2),
(2, 2, 'I am fine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question2_users`
--

CREATE TABLE `question2_users` (
  `id` int(11) NOT NULL,
  `username` varchar(124) NOT NULL,
  `photoUrl` varchar(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question2_users`
--

INSERT INTO `question2_users` (`id`, `username`, `photoUrl`) VALUES
(1, 'ryan', NULL),
(2, 'azam', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question2_chat`
--
ALTER TABLE `question2_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `question2_users`
--
ALTER TABLE `question2_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question2_chat`
--
ALTER TABLE `question2_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question2_users`
--
ALTER TABLE `question2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
