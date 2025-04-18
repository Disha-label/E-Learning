-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 18, 2025 at 10:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `video_url` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `video_url`, `image_url`) VALUES
(3, 'AI Basics', 'Learn the basics of Artificial Intelligence in this introductory course.', 'https://www.youtube.com/embed/some_video_id', 'images/ai.jpg'),
(4, 'Blockchain Fundamentals', 'Get to grips with blockchain technology and its applications in this course.', 'https://www.youtube.com/embed/another_video_id', 'images/blockchain.jpg'),
(5, 'C++ Templates', 'Master the power of templates in C++ for efficient coding.', 'https://www.youtube.com/embed/video_id_cpp', 'images/c++ templates.jpg'),
(6, 'Cloud Computing', 'Explore cloud services and how they are transforming the IT industry in this course.', 'https://www.youtube.com/embed/cloud_video_id', 'images/cloud.jpg'),
(7, 'C++ Programming', 'Learn C++ from scratch to advance your programming skills.', 'https://www.youtube.com/embed/cpp_video_id', 'images/cpp.jpg'),
(8, 'Cybersecurity Basics', 'Understand the basics of cybersecurity and how to protect systems from threats.', 'https://www.youtube.com/embed/cybersecurity_video_id', 'images/cybersecurity.jpg'),
(9, 'Data Science Introduction', 'Dive into the world of data science and machine learning.', 'https://www.youtube.com/embed/datascience_video_id', 'images/datascience.jpg'),
(10, 'Ethical Hacking', 'Learn the techniques used by ethical hackers to test and secure systems.', 'https://www.youtube.com/embed/hacking_video_id', 'images/hacking.jpg'),
(11, 'JavaScript Essentials', 'Learn the fundamentals of JavaScript and how to create dynamic websites.', 'https://www.youtube.com/embed/javascript_video_id', 'images/javascript.jpg'),
(12, 'Machine Learning for Beginners', 'An introductory course to machine learning and its core concepts.', 'https://www.youtube.com/embed/ml_video_id', 'images/machinelearning.jpg'),
(13, 'Networking Basics', 'Understand the fundamentals of networking and how data moves across the internet.', 'https://www.youtube.com/embed/networking_video_id', 'images/networking.jpg'),
(14, 'PHP Programming', 'Get started with PHP programming and build dynamic web applications.', 'https://www.youtube.com/embed/php_video_id', 'images/php coursecover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrolled_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `course_id`, `enrolled_at`) VALUES
(1, 1, 5, '2025-04-18 06:52:31'),
(2, 2, 5, '2025-04-18 07:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `feedback`, `created_at`, `rating`) VALUES
(1, 2, 'gfhfhfh', '2025-04-18 07:08:34', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'hello', 'hello@gmail.com', '$2y$10$1/AlO3p3yHvSU/O6mHRIOud9cFUKRxHRLshgSuBpetOke5sQnwPYu', '2025-04-18 06:14:06'),
(2, 'user', 'user@gmail.com', '$2y$10$ZSAz.q7oKyJJW85aOD/Fp.53QedB5eSCzGT0eOhb6XEUj8lYoRCUW', '2025-04-18 07:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` time NOT NULL,
  `login_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_session`
--

INSERT INTO `user_session` (`id`, `user_id`, `login_time`, `login_date`) VALUES
(1, 1, '08:18:10', '2025-04-18'),
(4, 1, '08:34:08', '2025-04-18'),
(5, 1, '08:37:26', '2025-04-18'),
(6, 1, '08:54:25', '2025-04-18'),
(7, 2, '09:07:14', '2025-04-18'),
(8, 2, '09:10:03', '2025-04-18'),
(9, 2, '09:14:55', '2025-04-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
