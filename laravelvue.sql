-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2019 at 09:24 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelvue`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saiful', 'saiful@gmail.com', NULL, '$2y$10$Ru6M9Uf4Sq2HcbQAMqpp4ueRIekpplbjJQXRLXL5H8YLdFYm8aaLq', 'user', NULL, NULL, NULL, '2019-10-08 02:44:01', '2019-10-08 02:44:01'),
(2, 'Saiful', 'mdroni@gmail.com', NULL, '$2y$10$wzwhlBVP7zvBeMOUlHcB3.WKrdcWIcF3VpoYKXnF2hf1.I./.JDI2', 'user', 'jhfkl', NULL, NULL, '2019-10-09 23:40:47', '2019-10-09 23:40:47'),
(3, 'Saiful Islam', 'saifulislam@gmail.com', NULL, '$2y$10$1tfGc2JKtwe6bFwMMwXwZ.QDZbIq8ZURDPrV9HMwzqqFxZz/tMHjS', 'user', NULL, NULL, NULL, '2019-10-10 02:22:26', '2019-10-10 02:22:26'),
(4, 'Progress', 'progress@gmail.com', NULL, '$2y$10$qgjBSzORLaRDIEaMsBoiSeCWkPwPGThQS.BCDXXkt7oZ7AMiaPwbW', 'author', 'testing progress', NULL, NULL, '2019-10-10 08:56:01', '2019-10-10 08:56:01'),
(5, 'Sweet Alert 2', 'sweet@gmail.com', NULL, '$2y$10$8mgeAU3Fj8FjJEjExZ6So.ZxFSkOWhRQDCMMKno8NOwa7rLoshfCa', 'admin', 'sweet testing', NULL, NULL, '2019-10-10 09:22:23', '2019-10-10 09:22:23'),
(6, 'autoloaded', 'autoloaded@gmail.com', NULL, '$2y$10$XtQC506DXdYJpI3D7qZnG.QXmYNshJfKGARS8cnNCxQogqMVKVQRu', 'user', NULL, NULL, NULL, '2019-10-10 10:13:39', '2019-10-10 10:13:39'),
(7, 'hello', 'hello@gmail.com', NULL, '$2y$10$GoK0JpCXw7uRqeMiCb8UmuzBHoztsYaIdqdMtei6L2/Ns2IBgwZbK', 'admin', NULL, NULL, NULL, '2019-10-10 10:47:35', '2019-10-10 10:47:35'),
(8, 'new', 'new@gmail.com', NULL, '$2y$10$nuQGbzGgjirzxo39Go.vn.kMmJttUjoue1T4i.rDV6TmylM3.cQJq', 'admin', NULL, NULL, NULL, '2019-10-10 10:55:11', '2019-10-10 10:55:11'),
(9, 'Honda', 'honda@gmail.com', NULL, '$2y$10$t5sJmd1k5q9N4wUafOyJmOq5lwVyJS6adv0MUy41o/lS9RQGIhNH2', 'admin', NULL, NULL, NULL, '2019-10-10 11:03:39', '2019-10-10 11:03:39'),
(10, 'akam', 'akam@gmail.com', NULL, '$2y$10$pM4HJPH.3pgGT7ieRIzrBOQqsr0y/eOLo.trIMHgyVbXxsAoXl6cy', 'user', 'df', NULL, NULL, '2019-10-10 11:43:38', '2019-10-10 11:43:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
