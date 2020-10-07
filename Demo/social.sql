-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 10:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'ggggggggggikyuuuu', 'jan_sima2', 'jan_sima2', '2020-10-06 14:55:13', 'no', 19);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'petr_pavel', 'jan_sima2');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(9, 'kokot_velky', 24);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(13, 'efwrfwf<br />\nwfrfrf<br />\nrrrrrrrrrrrr<br />\n<br />\nrrrrrrrrrrrrrrrrrrrr', 'bon_jovi', 'none', '2020-09-16 18:07:20', 'no', 'no', 0),
(14, 'efwrfwf<br />\nwfrfrf<br />\nrrrrrrrrrrrr<br />\n<br />\nrrrrrrrrrrrrrrrrrrrr', 'bon_jovi', 'none', '2020-09-16 18:08:33', 'no', 'no', 0),
(15, 'efwrfwf<br />\nwfrfrf<br />\nrrrrrrrrrrrr<br />\n<br />\nrrrrrrrrrrrrrrrrrrrr', 'bon_jovi', 'none', '2020-09-16 18:12:30', 'no', 'no', 0),
(16, 'sgsegsehgilsejg', 'jenda_sima', 'none', '2020-09-18 17:55:54', 'no', 'no', 0),
(17, 'sgsgsgerrrrrrrrrrrrrr', 'jenda_sima', 'none', '2020-09-18 17:56:00', 'no', 'no', 0),
(18, 'gggggggggggggg', 'jan_sima2', 'none', '2020-09-29 17:07:42', 'no', 'yes', 0),
(19, 'gggggggggggggg', 'jan_sima2', 'none', '2020-09-29 17:10:06', 'no', 'yes', 0),
(20, 'gggggggggggggg', 'jan_sima2', 'none', '2020-09-29 17:10:36', 'no', 'yes', 0),
(21, 'ouitgoeyrwpogse', 'jan_sima2', 'none', '2020-09-29 17:10:40', 'no', 'yes', 0),
(22, 'ssssssssssssssssss', 'jan_sima2', 'none', '2020-09-29 17:10:49', 'no', 'yes', 0),
(23, 'hjjjjjjjjjjjjjjjjjj', 'jan_sima2', 'none', '2020-09-29 17:18:30', 'no', 'yes', 0),
(24, 'm,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,', 'kokot_velky', 'jan_sima2', '2020-09-29 17:21:06', 'no', 'no', 1),
(25, 'flibhjrthj;jr;hj;p\'rtk\'hn', 'jan_sima2', 'none', '2020-10-06 17:23:17', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Dumb', 'User', 'Dumb_User', 'reece@gmail.com', '12345', '2020-08-17', 'bsbsbsbsb', 1, 1, 'no', ''),
(2, 'Petr', 'Pavel', 'petr_pavel', 'Petrpavel@petrpavel.com', '52', '2020-08-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(3, 'Chandler', 'Bing', 'chandler_bing', 'Chandler@petrpavel.com', '190000000', '2020-08-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(4, 'Micky', 'Mouse', 'micky_mouse', 'Micky@petrpavel.com', '89825', '2020-08-19', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(5, 'Micky', 'Pop', 'micky_pop', 'Mippcky@petrpavel.com', '0', '2020-08-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(6, 'Jan', 'Sima', 'jan_sima', 'Abcdef@abcdef.com', '0', '2020-08-23', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(7, 'Jan', 'Sima', 'jan_sima_1', 'Abcdefa@abcdef.com', '79', '2020-08-23', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(8, 'Jan', 'Sima', 'jan_sima_1_2', 'Jansima@jenda.com', '0', '2020-08-25', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(9, 'Jan', 'Sima2', 'jan_sima2', 'Jenda@gmail.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-25', 'assets/images/profile_pics/jan_sima22f61d8cb7652555626b5b8958239e40bn.jpeg', 7, 0, 'no', ',kokot_velky,'),
(10, 'Kokot', 'Velky', 'kokot_velky', 'Kokotvelky@velky.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-31', 'assets/images/profile_pics/defaults/head_deep_blue.png', 1, 1, 'no', ',jan_sima2,'),
(11, 'Pokus22', 'Pokus22', 'pokus22_pokus22', 'Pokus22@pokus22.com', '25f9e794323b453885f5181f1b624d0b', '2020-09-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(12, 'Bon', 'Jovi', 'bon_jovi', 'Bonjovi@email.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '2020-09-08', 'assets/images/profile_pics/defaults/head_deep_blue.png', 11, 0, 'no', ','),
(13, 'Jenda', 'Sima', 'jenda_sima', 'Jenda2@gmail.com', 'c1fd9c6b288fa78eaed0f9cb15070b8d', '2020-09-16', 'assets/images/profile_pics/defaults/head_deep_blue.png', 2, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
