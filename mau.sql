-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 03:21 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mau`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `attendence_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `year_id`, `name`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 9, 'Dr. Heber Hintz', 10, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(2, 10, 'Prof. Kian Turcotte', 4, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(3, 7, 'Jakob Nader I', 7, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(4, 10, 'Pasquale Ledner', 3, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(5, 7, 'Dr. David Jacobson', 7, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(6, 9, 'Demarco Schiller', 4, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(7, 10, 'Dante Stehr III', 1, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(8, 10, 'Chasity Will', 6, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(9, 5, 'Theodora Murazik', 6, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(10, 2, 'Morris Spinka', 7, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(11, 2, 'Hunter Botsford', 4, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(12, 9, 'Dwight Will', 8, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(13, 7, 'Prof. Whitney Kreiger', 8, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(14, 6, 'Tyrese Halvorson', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(15, 1, 'Dr. Frederik Ryan', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(16, 6, 'Dr. Vergie Klein IV', 4, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(17, 10, 'Demario Lemke MD', 6, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(18, 8, 'Amir Crona', 9, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(19, 1, 'Darrell Kovacek', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(20, 2, 'Mariam Stroman', 1, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(21, 4, 'Prof. Jada Hermann V', 9, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(22, 5, 'Mrs. Eda Mayer', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(23, 4, 'Ebony Jacobi', 1, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(24, 6, 'Cristal Stamm', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(25, 2, 'Ms. Madisyn Wunsch I', 5, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(26, 2, 'Dr. Torrance Grady I', 5, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(27, 8, 'Marilou Gorczany', 2, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(28, 5, 'Wilford Lubowitz', 7, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(29, 1, 'Maud Trantow', 6, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(30, 8, 'Kenyatta Ebert', 9, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(31, 2, 'Dario O\'Hara', 1, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(32, 1, 'Garrett Marks PhD', 8, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(33, 9, 'Ayden Dickinson', 8, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(34, 6, 'Frederique Hickle', 2, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(35, 7, 'Reed Schaefer', 2, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(36, 10, 'Ms. Zola Schoen Sr.', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(37, 6, 'Kenton Armstrong', 3, '2019-05-04 10:51:30', '2019-05-04 10:51:30'),
(38, 2, 'Tobin Mante', 10, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(39, 4, 'Mathilde Wyman', 10, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(40, 9, 'Prof. Loyal Welch', 6, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(41, 1, 'Adolphus Keeling', 2, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(42, 1, 'Nyah Dach', 4, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(43, 9, 'Miss Angie Senger Sr.', 10, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(44, 10, 'Zelma Harris', 4, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(45, 8, 'Orrin Jaskolski I', 1, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(46, 6, 'Lulu Blanda', 6, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(47, 1, 'Florence McGlynn III', 4, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(48, 3, 'Jana Upton', 8, '2019-05-04 10:51:31', '2019-05-04 10:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `firstname`, `lastname`, `username`, `card_id`, `email`, `password`, `year_id`, `course_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alyson Gutkowski', 'Ms. Margot Lebsack V', 'Robert Barton', 6, 'rstroman@example.org', '$2y$10$iWJRDKVwto4kBGlbEt4EWeyF1qiVhZNYwrUzy8xfcNvb5EFJ4PZkS', 1, 5, NULL, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(2, 'Mr. Lexus Balistreri', 'Prof. Greyson Crona Jr.', 'Prof. Spencer Bruen V', 1, 'camilla.hagenes@example.net', '$2y$10$kpB1CuBhKZ4jnOR8AVvyIO1Yw3qFF1aiASmIndygauWMYHP/F6IK6', 3, 6, NULL, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(3, 'lamia', 'sayed', 'lamiasayed', 12, 'lamia@gmail.com', '$2y$10$tBhQN9g4aCA2YVfSkmNJIOEjGyeD9wdtxtY16n56ny2YCN/KXHaXu', 1, 2, 'FtkvkZiNK3', '2019-05-04 10:51:29', '2019-05-04 10:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lecture_no` int(11) NOT NULL,
  `select_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_18_080634_create_students_table', 1),
(4, '2019_03_18_080721_create_doctors_table', 1),
(5, '2019_03_18_080743_create_courses_table', 1),
(6, '2019_03_18_080843_create_quizzes_table', 1),
(7, '2019_03_18_080959_create_posts_table', 1),
(8, '2019_03_18_081022_create_attendences_table', 1),
(9, '2019_03_19_221106_create_lectures_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `description`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'Et sed accusamus optio atque aliquid. Quibusdam odit veniam nihil.', 3, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(2, 'Ea earum harum adipisci ad eius quia veritatis nemo.', 8, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(3, 'Quia inventore illo ut qui quam et fugiat. Qui cum consequuntur quo qui.', 7, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(4, 'Debitis eaque atque enim delectus saepe.', 3, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(5, 'Quia minima nemo architecto odio molestiae asperiores.', 3, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(6, 'Nobis et quaerat harum fugiat aut ipsum adipisci. Quae natus aperiam mollitia sit in non voluptates.', 3, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(7, 'Provident nisi et natus incidunt amet. Aut et deserunt perferendis voluptatum quo id tempore quia.', 2, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(8, 'Reiciendis et et impedit temporibus quis soluta cupiditate nulla.', 6, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(9, 'Ducimus animi quis delectus quam.', 9, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(10, 'Voluptatem quia non in vel eveniet eaque fugiat.', 1, '2019-05-04 10:51:31', '2019-05-04 10:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grades` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `quiz_id`, `title`, `content`, `grades`, `created_at`, `updated_at`) VALUES
(1, 1, 'Callie Olson', 'Luna Hill', 1, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(2, 8, 'Angela Gutmann', 'Hayden Walsh', 4, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(3, 2, 'Earnestine Rau DVM', 'Eloise Keebler', 6, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(4, 7, 'Dr. Alexzander Harber', 'Dock Wisozk DVM', 9, '2019-05-04 10:51:31', '2019-05-04 10:51:31'),
(5, 8, 'Dr. Cade Schamberger V', 'Okey Flatley', 5, '2019-05-04 10:51:32', '2019-05-04 10:51:32'),
(6, 8, 'Dr. Jenifer Yundt Jr.', 'Ms. Calista Jacobson DVM', 6, '2019-05-04 10:51:32', '2019-05-04 10:51:32'),
(7, 10, 'Dr. Glen Ondricka Sr.', 'Wilber Feil', 4, '2019-05-04 10:51:32', '2019-05-04 10:51:32'),
(8, 2, 'Rosella Spinka', 'Andreane Wiza Sr.', 7, '2019-05-04 10:51:32', '2019-05-04 10:51:32'),
(9, 5, 'Constantin Hills', 'Elenora Lockman III', 4, '2019-05-04 10:51:32', '2019-05-04 10:51:32'),
(10, 5, 'Casey Connelly', 'Candice Dooley PhD', 9, '2019-05-04 10:51:32', '2019-05-04 10:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `username`, `card_id`, `email`, `password`, `year_id`, `course_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Birdie Kihn DVM', 'Mr. Diamond Grimes I', 'Gerard Bosco', 3, 'lmcglynn@example.com', '$2y$10$QpwbCSK8lwR8gaxb39L9/.fe2jYPYDsqo/5wJugZMKwSSeiw5u2nG', 3, 7, NULL, '2019-05-04 10:51:28', '2019-05-04 10:51:28'),
(2, 'Bell Nienow V', 'Esmeralda Vandervort', 'Wilfrid Hamill', 5, 'agustin93@example.org', '$2y$10$AxC2HigAfvI7hmDcP.EIu.XpnYeZE1vXIwVb/GQdK7V1tOXUoFzw6', 4, 6, NULL, '2019-05-04 10:51:29', '2019-05-04 10:51:29'),
(3, 'abdulwahab', 'moahemd', 'abdulwasayedhab', 110, 'tests@gmail.com', '$2y$10$cTUT0vPJNMZPQ23Jau77C.8oWe9gCDRw.TtJ1Z7Nz8TOv4/jMvJPS', 1, 2, 'tRtQjXRbOK', '2019-05-04 10:51:29', '2019-05-04 10:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdulwahab', 'tests@gmail.com', NULL, '$2y$10$a.JgVI/wfPmwmtPg6Sbj1et56vLhae7AC7zceawnb0k6D8U8riwGG', 'yy94g4bIig', '2019-05-04 10:51:28', '2019-05-04 10:51:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_card_id_unique` (`card_id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_card_id_unique` (`card_id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
