-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2020 at 03:57 PM
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
(8, 'Cau picus', 'jan_sima2', 'kokot_velky', '2020-10-16 16:43:50', 'no', 26),
(9, 'Cau picus2', 'jan_sima2', 'kokot_velky', '2020-10-16 17:32:44', 'no', 26),
(10, 'cau picus3', 'jan_sima2', 'kokot_velky', '2020-10-16 17:39:10', 'no', 26),
(11, 'Cau picus3', 'jan_sima2', 'kokot_velky', '2020-10-16 17:45:01', 'no', 26),
(12, 'sam jsi pica', 'kokot_velky', 'kokot_velky', '2020-10-16 18:08:32', 'no', 26);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(2, 'kokot_velky', 'jan_sima2', 'rfhgkrhigr', '2020-10-13 18:18:18', 'yes', 'yes', 'no'),
(3, 'jan_sima_1_2', 'jan_sima2', 'aaaaaaaaaaaaaaaaa', '2020-10-13 18:26:35', 'yes', 'no', 'no'),
(4, 'kokot_velky', 'jan_sima2', 'rsggggggggggggggggggggggggggggggggggggggggggggggggggy', '2020-10-13 19:29:53', 'yes', 'yes', 'no'),
(5, 'jan_sima2', 'jan_sima2', 'Hello', '2020-10-14 13:18:44', 'yes', 'yes', 'no'),
(6, 'jan_sima2', 'jan_sima2', 'Hi', '2020-10-14 13:21:57', 'yes', 'yes', 'no'),
(7, 'jan_sima2', 'jan_sima2', 'hi', '2020-10-14 13:24:42', 'yes', 'yes', 'no'),
(8, 'jan_sima2', 'jan_sima2', 'Hi', '2020-10-14 13:26:29', 'yes', 'yes', 'no'),
(9, 'jan_sima2', 'jan_sima2', 'adaaaaaaaaaaaaa', '2020-10-14 13:26:36', 'yes', 'yes', 'no'),
(10, 'jan_sima2', 'jan_sima2', 'dddddddddddddd', '2020-10-14 13:27:00', 'yes', 'yes', 'no'),
(11, 'jan_sima2', 'jan_sima2', 'hi', '2020-10-14 13:27:59', 'yes', 'yes', 'no'),
(12, 'jan_sima2', 'petr_pavel', '1. zprava', '2020-10-15 16:48:46', 'yes', 'yes', 'no'),
(13, 'jan_sima2', 'chandler_bing', '2. zprava', '2020-10-15 16:49:34', 'yes', 'yes', 'no'),
(14, 'jan_sima2', 'micky_mouse', '3. zprava', '2020-10-15 16:50:29', 'no', 'yes', 'no'),
(15, 'jan_sima2', 'micky_pop', '4. zprava', '2020-10-15 16:51:16', 'yes', 'yes', 'no'),
(16, 'jan_sima2', 'jan_sima', '5. zprava', '2020-10-15 16:52:01', 'yes', 'yes', 'no'),
(17, 'jan_sima2', 'jan_sima_1', '6. zprava', '2020-10-15 16:52:33', 'yes', 'yes', 'no'),
(18, 'jan_sima2', 'jan_sima_1_2', '7. zprava', '2020-10-15 16:52:59', 'yes', 'yes', 'no'),
(19, 'jan_sima2', 'chandler_bing', 'Cum na to vole!!!', '2020-10-15 17:19:27', 'yes', 'yes', 'no'),
(20, 'jan_sima2', 'chandler_bing', 'Jeste jednou', '2020-10-15 17:23:02', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'kokot_velky', 'jan_sima2', 'Jan Sima2 commented on your post', 'post.php?id=26', '2020-10-16 16:43:50', 'no', 'yes'),
(2, 'kokot_velky', 'jan_sima2', 'Jan Sima2 commented on your post', 'post.php?id=26', '2020-10-16 17:32:44', 'no', 'yes'),
(3, 'kokot_velky', 'jan_sima2', 'Jan Sima2 commented on your post', 'post.php?id=26', '2020-10-16 17:39:10', 'no', 'yes'),
(4, 'kokot_velky', 'jan_sima2', 'Jan Sima2 commented on your post', 'post.php?id=26', '2020-10-16 17:45:01', 'no', 'yes'),
(5, 'jan_sima2', 'kokot_velky', 'Kokot Velky commented on your profile post', 'post.php?id=26', '2020-10-16 18:08:32', 'no', 'yes');

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
(26, 'Cau vole', 'kokot_velky', 'jan_sima2', '2020-10-13 12:58:14', 'no', 'no', 0);

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
(1, 'Dumb', 'User', 'Dumb_User', 'reece@gmail.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-17', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ''),
(2, 'Petr', 'Pavel', 'petr_pavel', 'Petrpavel@petrpavel.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',jan_sima2,'),
(3, 'Chandler', 'Bing', 'chandler_bing', 'Chandler@petrpavel.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',jan_sima2,'),
(4, 'Micky', 'Mouse', 'micky_mouse', 'Micky@petrpavel.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-19', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',jan_sima2,'),
(5, 'Micky', 'Pop', 'micky_pop', 'Mippcky@petrpavel.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',jan_sima2,'),
(6, 'Jan', 'Sima', 'jan_sima', 'Abcdef@abcdef.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-23', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',jan_sima2,'),
(7, 'Jan', 'Sima', 'jan_sima_1', 'Abcdefa@abcdef.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-23', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',jan_sima2,'),
(8, 'Jan', 'Sima', 'jan_sima_1_2', 'Jansima@jenda.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-25', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',jan_sima2,'),
(9, 'Jan', 'Sima2', 'jan_sima2', 'Jenda@gmail.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-25', 'assets/images/profile_pics/jan_sima22f61d8cb7652555626b5b8958239e40bn.jpeg', 0, 0, 'no', ',kokot_velky,jan_sima,jan_sima_1,jan_sima_1_2,petr_pavel,chandler_bing,micky_mouse,micky_pop,'),
(10, 'Kokot', 'Velky', 'kokot_velky', 'Kokotvelky@velky.com', '6daf4a840fc441d7b617bc4d22993970', '2020-08-31', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',jan_sima2,'),
(11, 'Pokus22', 'Pokus22', 'pokus22_pokus22', 'Pokus22@pokus22.com', '6daf4a840fc441d7b617bc4d22993970', '2020-09-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(12, 'Bon', 'Jovi', 'bon_jovi', 'Bonjovi@email.com', '6daf4a840fc441d7b617bc4d22993970', '2020-09-08', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(13, 'Jenda', 'Sima', 'jenda_sima', 'Jenda2@gmail.com', '6daf4a840fc441d7b617bc4d22993970', '2020-09-16', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
