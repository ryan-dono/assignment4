-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 07:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `question_4`
--

CREATE TABLE `question_4` (
  `id` int(11) NOT NULL,
  `url` varchar(70) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_4`
--

INSERT INTO `question_4` (`id`, `url`, `description`) VALUES
(1, 'https://images7.alphacoders.com/402/402897.jpg', 'This is the very first image'),
(2, 'https://images6.alphacoders.com/606/606263.jpg', 'This picture is from One Piece'),
(3, 'https://images8.alphacoders.com/739/739448.png', 'The opening picture in one piece'),
(4, 'https://images4.alphacoders.com/606/606667.jpg', 'Zoro the Monster'),
(5, 'https://images3.alphacoders.com/111/1116286.jpg', 'Welcome to my Domain'),
(6, 'https://images5.alphacoders.com/112/1123078.jpg', 'Sayonara minasan. The fallen soldier'),
(7, 'https://images8.alphacoders.com/114/1143274.jpg', 'The Gorilla Girl'),
(8, 'https://images7.alphacoders.com/114/1142474.png', 'Tuna, Kelp'),
(9, 'https://images2.alphacoders.com/100/1007550.jpg', 'This is Demon Slayer'),
(10, 'https://images2.alphacoders.com/101/1011170.png', 'The powerful girl'),
(11, 'https://images.alphacoders.com/103/1034912.png', 'This is the Kagura Dance'),
(12, 'https://images4.alphacoders.com/105/1053265.png', 'おき　かよ'),
(13, 'https://images6.alphacoders.com/636/636022.jpg', 'のくろ　ぎあ　おい？'),
(14, 'https://images.alphacoders.com/105/1052138.jpg', 'なると　だ　Best ！'),
(15, 'https://images5.alphacoders.com/321/321532.jpg', 'はじめましって、いに　せむあ　ぽよ。'),
(16, 'https://images8.alphacoders.com/644/644156.jpg', 'わたしは　つな　です');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
