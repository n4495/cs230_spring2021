-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 09:19 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(10, 's', 's', '../gallery/604abdd5263942.37672398.gif', '2021-03-11 20:03:17', NULL),
(11, 'asd', 'asd', '../gallery/604abdd9e0a532.08103507.jpg', '2021-03-11 20:03:21', NULL),
(12, 'asdasd', '', '../gallery/604abee0927b33.09652209.jpg', '2021-03-11 20:07:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT ' ../images/default.jpg '
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(12, 'a', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(13, 's', 's', ' ../images/default.jpg '),
(14, 's', 'ssd', ' ../images/default.jpg '),
(15, 'asdasd', 'asdsad', ' ../images/default.jpg '),
(16, 'asd', 'd', ' ../images/default.jpg '),
(17, 'asd', 'sd', ' ../images/default.jpg '),
(18, 'dsad', 's', ' ../images/default.jpg '),
(19, 'ds', 'asd', '../profiles/603ac7be162424.50031059.png'),
(20, 'sdd', 'ddsss', ' ../images/default.jpg '),
(21, 'asdads', 'ssss', ' ../images/default.jpg '),
(22, 'asdsad', 'sdad', ' ../images/default.jpg '),
(23, 'asdasd', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(24, 'asd', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(25, 'asdasd', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(26, 'asdsad', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(27, 'a', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(28, 'a', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(29, 'dsada', 'asdasd', ' ../images/default.jpg '),
(30, 'a', 's', ' ../images/default.jpg '),
(31, 'a', 'asdasd', ' ../images/default.jpg '),
(32, '1', '1', ' ../images/default.jpg '),
(33, 'apple', 'jeans', ' ../images/default.jpg '),
(34, 'asd', 'asdsdss', ' ../images/default.jpg '),
(35, 'a', 'a', '../profiles/605531f1a0f544.69297792.jpg'),
(36, 'asd', 'asd', '../profiles/603ac7be162424.50031059.png'),
(37, 'ab', 'ab', '../profiles/603ac85f485202.59067846.jpg'),
(38, 'bob', 'bob', '../profiles/60553eb3849a58.39147706.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for reach review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'at least one review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 12, 'a', 'asd', 'asd', '2021-03-19 22:39:34', 3, 1),
(2, 12, 'bob', '', '', '2021-03-19 23:23:39', 3, 1),
(3, 12, 'bob', 'asd', 'asd', '2021-03-19 23:23:46', 4, 1),
(4, 12, 'bob', '', '', '2021-03-19 23:33:18', 4, 1),
(5, 12, 'bob', '', '', '2021-03-19 23:53:33', 4, 1),
(6, 12, 'bob', 's', 's', '2021-03-19 23:53:43', 1, 1),
(7, 12, 'bob', 'sd', 'sd', '2021-03-19 23:59:06', 1, 1),
(8, 12, 'bob', 'sd', 'ad', '2021-03-20 00:05:30', 1, 1),
(9, 12, 'bob', '', '', '2021-03-20 00:13:13', 5, 1),
(10, 12, 'bob', '', '', '2021-03-20 00:13:16', 5, 1),
(11, 12, 'bob', '', '', '2021-03-20 00:13:18', 5, 1),
(12, 12, 'bob', '', '', '2021-03-20 00:13:20', 5, 1),
(13, 12, 'bob', '', '', '2021-03-20 00:13:22', 5, 1),
(14, 12, 'bob', '', '', '2021-03-20 00:13:23', 5, 1),
(15, 12, 'bob', '', '', '2021-03-20 00:13:24', 5, 1),
(16, 12, 'bob', '', '', '2021-03-20 00:13:25', 5, 1),
(17, 12, 'bob', '', '', '2021-03-20 00:13:25', 5, 1),
(18, 12, 'bob', '', '', '2021-03-20 00:13:26', 5, 1),
(19, 12, 'bob', '', '', '2021-03-20 00:13:27', 5, 1),
(20, 12, 'bob', '', '', '2021-03-20 00:13:28', 5, 1),
(21, 12, 'bob', 'asd', 'asd', '2021-03-20 00:16:03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user data base for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'a', 'a', 's', '$2y$10$glULPW07h/o89N6U06IjhujKzcOWOeJ5fV.ccP6/Vg.9KZsO3hM.O', 'a@a.com'),
(2, 'a', 'a', 's', '$2y$10$glULPW07h/o89N6U06IjhujKzcOWOeJ5fV.ccP6/Vg.9KZsO3hM.O', 'a@a.com'),
(3, 'a', 'a', 'asdasd', '$2y$10$OpTxnbSF.xCVzXDVjxZvAekJI8zp9Uno3zo1RjSoSlVjPo8zIU1hq', 'asd@a.com'),
(4, '1', '1', '1', '$2y$10$2sg5pSd9WLJ80pWsY3rPuu.sBH94OHEcQFk6iD.Jm4zc9DH1rEgju', '1@1.com'),
(5, 'apple', 'bottom', 'jeans', '$2y$10$gqTaOoDQfrvbPYTCD61EWu/0rYPze3u0hG5gV55eluIgLMhUolxI2', '2@2.com'),
(6, 'asd', 'ads', 'asdsdss', '$2y$10$5ufWUZPw49Z5YVQ50OY/I.YkoWazSd4IkfwDUj2UqgZLKEM1N82fy', 's@ssad.com'),
(7, 'a', 'a', 'a', '$2y$10$UbOfF2CnsOhFGPWCAvbQ9u6jHTOfUMmpUghFT0xYX4biFeo1xLuUW', 'a@a.com'),
(8, 'asd', 'asd', 'asd', '$2y$10$4jR.r8O2up.TvqI2pDrkSulB7uI4ts144CG5qdZPy29gyCznZL8rO', 'asd@a.com'),
(9, 'ab', 'ab', 'ab', '$2y$10$4n.NxCUe12GT65hp/X5nl.CST3OtLRK7TZ8jZyq7ffurYXlQhwccm', 'ab@ab.com'),
(10, 'bob', 'bob', 'bob', '$2y$10$VAGrPqT0vuUkAQPQxkNdHO6q2Lyq5/Ixjz13bb.jZ4vflzuEyE3JO', 'bob@bob.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for reach review', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
