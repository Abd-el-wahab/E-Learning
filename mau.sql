-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2019 at 11:31 AM
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
(1, 8, 'Prof. Demond Hahn V', 8, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(2, 6, 'Grant Robel IV', 3, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(3, 6, 'Ms. Allison Parker', 3, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(4, 4, 'Ms. Marlee Tromp MD', 10, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(5, 5, 'Aisha Legros DVM', 9, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(6, 7, 'Nicholas Runolfsson', 9, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(7, 6, 'Ernestina Stracke Sr.', 1, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(8, 10, 'Prof. Tiana Gislason Sr.', 2, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(9, 4, 'Forest Wehner', 7, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(10, 3, 'Mr. Randy Osinski', 9, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(11, 6, 'Mrs. Anissa Harber III', 4, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(12, 6, 'Einar Erdman', 9, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(13, 3, 'Elmira Huels Sr.', 6, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(14, 6, 'Dariana Littel', 9, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(15, 6, 'Dr. Tanner Bayer', 6, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(16, 9, 'Clark Sawayn DVM', 1, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(17, 1, 'Antwon Towne', 3, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(18, 8, 'Nakia Schmitt', 10, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(19, 7, 'Prof. Tracey Lind', 8, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(20, 8, 'Nicola Murray', 3, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(21, 5, 'Paula Bins', 5, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(22, 2, 'Dakota Goldner III', 9, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(23, 9, 'Laverna Monahan', 5, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(24, 6, 'Destinee Schinner', 6, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(25, 3, 'Lenore Yundt', 4, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(26, 8, 'Jeremy Waters', 4, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(27, 7, 'Mrs. Sister Corwin I', 4, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(28, 6, 'Hettie Tromp PhD', 7, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(29, 8, 'Mr. Kennedy Swaniawski', 10, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(30, 5, 'Geraldine Reinger', 3, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(31, 1, 'Verla Grant', 8, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(32, 3, 'Domenica Wuckert', 9, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(33, 1, 'Mr. Warren Crona', 3, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(34, 3, 'Dr. Jaron Corwin III', 6, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(35, 8, 'Alisha Aufderhar', 2, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(36, 6, 'Sabina Homenick', 10, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(37, 3, 'Kiley Zulauf', 4, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(38, 2, 'Theodore Hagenes', 1, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(39, 4, 'Dr. Catharine Nitzsche', 2, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(40, 1, 'Oswaldo Gibson', 8, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(41, 3, 'Orin Smitham', 3, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(42, 4, 'Elsie Nienow', 9, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(43, 1, 'Dr. Maureen Sauer Sr.', 9, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(44, 8, 'Mr. Korbin Wiegand DDS', 3, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(45, 7, 'Prof. Tito Cremin', 8, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(46, 10, 'Dr. Kiera Jacobs DVM', 3, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(47, 2, 'Melyna Rempel', 8, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(48, 7, 'Ashlynn Reichert Jr.', 8, '2019-04-12 12:05:11', '2019-04-12 12:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id` int(11) NOT NULL,
  `e_mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `firstname`, `lastname`, `username`, `card_id`, `e_mail`, `password`, `year_id`, `course_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Candida Blanda', 'Mallie Towne', 'Mr. Lonnie Bailey I', 5, 'vmonahan@example.net', '$2y$10$7VzcXjDZdMm0y4BDosmnUeHG28DEvZ8/8J9oky1qTB4tBUa2oXoWO', 'Danny Steuber PhD', 7, NULL, '2019-04-12 12:05:09', '2019-04-12 12:05:09'),
(2, 'Elwin Graham', 'Cordell Aufderhar', 'Adolphus Bashirian', 2, 'sharon.schumm@example.org', '$2y$10$GWzE4V61.ijOVY2uQQ0.CeYsUqlaN4/K6AIEMDw0n7V34uRybkhb6', 'Ms. Nellie Lakin', 5, NULL, '2019-04-12 12:05:10', '2019-04-12 12:05:10'),
(3, 'Graham Koepp', 'Maegan Hayes', 'Rosalinda Sipes', 10, 'ayla97@example.net', '$2y$10$yHmFyNIuVfHNYdk0araZ1.An1ngxBY3tqsvpEJgcuiKbahTV0.7fi', 'Toni Denesik', 4, NULL, '2019-04-12 12:05:10', '2019-04-12 12:05:10');

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
(1, 'Vel suscipit numquam quis. Harum corrupti eaque incidunt quia.', 10, '2019-04-12 12:05:11', '2019-04-12 12:05:11'),
(2, 'Magnam est qui maiores qui fuga consequatur repudiandae commodi. Ut possimus quidem amet magni commodi blanditiis quisquam.', 10, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(3, 'Aut suscipit in recusandae error enim. Sint qui rem animi placeat.', 8, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(4, 'Fugiat assumenda nobis perspiciatis ea. Et sapiente aliquid quia sit eaque tenetur.', 1, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(5, 'Sint doloremque tenetur ut deleniti dignissimos. Sed dolorem aut quos odit repellendus.', 8, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(6, 'Officiis corporis quibusdam ullam ipsum. Aut explicabo suscipit tempora quo.', 6, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(7, 'Distinctio ut optio ut.', 7, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(8, 'Non autem sequi repudiandae consequatur dolorem. Maiores sequi quos distinctio est quia.', 6, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(9, 'Nam aut sit nostrum aperiam.', 7, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(10, 'Maiores error alias et saepe quibusdam ullam eaque. Occaecati ut quidem aut nulla sit.', 10, '2019-04-12 12:05:12', '2019-04-12 12:05:12');

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
(1, 3, 'Gladyce Prohaska', 'Carrie Bartell', 2, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(2, 10, 'Mariam Schroeder PhD', 'Dr. Ivory Kozey DDS', 4, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(3, 6, 'Mr. Benton Effertz', 'Roderick Kuphal', 2, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(4, 1, 'Amelia Schultz', 'Aletha Johnston', 1, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(5, 10, 'Prof. Melany Mueller II', 'Miss Alanis Schmeler II', 9, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(6, 9, 'Tevin DuBuque', 'Jefferey Thompson', 4, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(7, 9, 'Dolly Mayer Sr.', 'Mr. Nathan Jacobi IV', 10, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(8, 1, 'Bradley Hickle', 'Oleta Mitchell PhD', 1, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(9, 5, 'Miss Shayna Hettinger', 'Gardner Bauch', 8, '2019-04-12 12:05:12', '2019-04-12 12:05:12'),
(10, 3, 'Elmira Grimes', 'Theodore Fritsch DDS', 2, '2019-04-12 12:05:12', '2019-04-12 12:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id` int(11) NOT NULL,
  `e_mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `username`, `card_id`, `e_mail`, `password`, `year_id`, `course_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Carlee Donnelly', 'Claire Watsica', 'Antwan Jacobson', 7, 'boyer.murl@example.org', '$2y$10$9qDpjjHsQLygfczY3.qOpui.vTI5/WeuR3Ig761BmfvSxheTerG06', 'Miss Kamille Bayer', 5, NULL, '2019-04-12 12:04:56', '2019-04-12 12:04:56'),
(3, 'Karen Walter V', 'Reece Von', 'Janiya Dicki', 9, 'torey20@example.com', '$2y$10$PukciG88uQ3fJdtoSn945O4Bk0QXXC9yCC748UeLZwwlL.3dW7AlK', 'Johathan Hamill II', 10, NULL, '2019-04-12 12:05:09', '2019-04-12 12:05:09'),
(4, 'Prof. Eriberto Schoen II', 'Jane Treutel', 'Michel Muller', 3, 'josiane.ritchie@example.org', '$2y$10$D.m9obRveEVKuDa7S9xJ8Oz3KyTmZwUivDlVH7.gnuz0PXZwMiDWO', 'Michaela Jakubowski', 8, NULL, '2019-04-12 12:05:09', '2019-04-12 12:05:09'),
(5, 'Lolita Murray', 'Dr. Corbin Hirthe V', 'Blaise Heller', 2, 'craig60@example.net', '$2y$10$qkvyy1BPh.8jMqYJ6lrL2ughzaHX1LhKAil7oZyLZ0nz.SQ0XGyzW', 'Joaquin Pollich', 6, NULL, '2019-04-12 12:05:09', '2019-04-12 12:05:09'),
(6, 'abdulwahab', 'moahemd', 'abdulwasayedhab', 110, 'tests@gmail.com', '$2y$10$QP8P21kf9dNz.N3YVSSuFuZ3m/aEhMp55cMdrEoxInXb2Z6GsL84S', '1', 2, 'vZPUIphXqv', '2019-04-12 12:05:09', '2019-04-12 12:05:09'),
(7, 'ahmsdsed ali', 'mohsdsamed', 'timsdson', 334527, 'ayhaga@mgmail.com', 'asasa', 'year4', 1, NULL, '2019-04-12 18:32:43', '2019-04-12 18:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdulwahab', 'tests@gmail.com', '2019-04-12 14:04:55', '$2y$10$suslL.dEbm1o6khzvg8JuOQr7Ezq1Xb/SQCCxNcMaWo61ZfRyVcri', 'kWoVcfKOSJ', '2019-04-12 12:04:55', '2019-04-12 12:04:55'),
(2, 'abdulwahab', 'tests@gmail.com', '2019-04-12 14:05:08', '$2y$10$H5HBOnw0g19x/8hQeop3uuDbyV9k59r3rTd1Bc7jrVIcrgOyjc7lW', 'OO9mNlRxg8', '2019-04-12 12:05:08', '2019-04-12 12:05:08');

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
  ADD UNIQUE KEY `doctors_e_mail_unique` (`e_mail`);

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
  ADD UNIQUE KEY `students_e_mail_unique` (`e_mail`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
