-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2018 at 03:57 AM
-- Server version: 5.7.22
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bboomers`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `file_name`, `products_id`, `created_at`, `updated_at`) VALUES
(1, 'iphonex1.jpg', 1, '2018-06-06 19:07:45', '2018-06-06 19:07:45'),
(2, 'iphonex2.jpg', 1, '2018-06-06 19:07:45', '2018-06-06 19:07:45'),
(3, 'macbookphoto1.jpg', 2, '2018-06-06 19:24:33', '2018-06-06 19:24:33'),
(4, 'macbookphoto2.jpg', 2, '2018-06-06 19:24:33', '2018-06-06 19:24:33'),
(5, 'macbookphoto3.jpg', 2, '2018-06-06 19:24:49', '2018-06-06 19:24:49'),
(23, 'IMG_0366_1528337635.JPG', 38, '2018-06-07 02:13:55', '2018-06-07 02:13:55'),
(24, 'IMG_0367_1528337635.JPG', 38, '2018-06-07 02:13:55', '2018-06-07 02:13:55'),
(25, 'IMG_0368_1528337635.JPG', 38, '2018-06-07 02:13:55', '2018-06-07 02:13:55'),
(26, 'IMG_0665_1528343606.JPG', 39, '2018-06-07 03:53:26', '2018-06-07 03:53:26'),
(27, 'IMG_0665_1528343755.JPG', 40, '2018-06-07 03:55:55', '2018-06-07 03:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'mobiles', '2018-06-05 22:00:00', '2018-06-05 22:00:00'),
(2, 'laptops ', '2018-06-05 22:00:00', '2018-06-05 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_06_180451_products', 1),
(2, '2018_06_06_180459_attachments', 1),
(3, '2018_06_06_181513_categories', 1),
(4, '2018_06_07_031914_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `code`, `categories_id`, `availability`, `created_at`, `updated_at`) VALUES
(1, 'iphone x', '22000.00', 'iphonex', 1, 1, '2018-06-06 18:41:57', '2018-06-06 18:41:57'),
(2, 'Macbook Air 13\'', '18550.00', 'macbookair13128', 2, 1, '2018-06-06 18:41:57', '2018-06-06 18:41:57'),
(3, 'iphone 7s 32GB', '12000.00', 'iphone7s', 1, 1, '2018-06-06 20:02:10', '2018-06-06 20:02:10'),
(4, 'macbook pro 15\'', '36000.00', 'macbookpro', 2, 1, '2018-06-06 20:03:24', '2018-06-06 20:03:24'),
(5, 'macbook pro 15\'', '36000.00', 'macbookpro', 2, 1, '2018-06-06 20:04:20', '2018-06-06 20:04:20'),
(38, 'iphone6s', '4400.00', 'iphone6s-5999', 1, 1, '2018-06-07 02:13:55', '2018-06-07 02:34:14'),
(39, 'iphone6s NEW', '6000.00', 'iphone6s-USED', 1, 1, '2018-06-07 03:53:26', '2018-06-07 03:53:26'),
(40, 'iphone6s Very New', '6550.00', 'iphone6s-NEW', 1, 1, '2018-06-07 03:55:55', '2018-06-07 03:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Hailee Gleichner I', 'jacobs.ova@hotmail.com', '$2y$10$YRe4Vb3sZ3yZjyqtVTbJiOHp9R2nscN2/x1ndLBS7gq4q3D9e2PzO', 'api1', '2018-06-07 03:24:42', '2018-06-07 03:24:42'),
(2, 'Joannie Romaguera', 'garret.hyatt@prosacco.com', '$2y$10$Ne2NMuN2AaDVtjBtEH7Dz.zIJklXUn.0EhtgRh9p/LwzbiVDtpqly', 'api2', '2018-06-07 03:24:42', '2018-06-07 03:24:42'),
(3, 'Mrs. Bella Kunze', 'rahul.dubuque@hamill.biz', '$2y$10$On3CiWe1.cZwdNwDZltDNu/f8YakuPsi5IbNGr0DBOr8.v5WlLW1i', 'api3', '2018-06-07 03:24:42', '2018-06-07 03:24:42'),
(4, 'Prof. Ahmad Hettinger I', 'ssanford@gmail.com', '$2y$10$5dFFZNWOudvfkimuieR7O.8I2ceF.SuiVInNdx/o3iUJ7ZsAO.5jy', 'api4', '2018-06-07 03:24:42', '2018-06-07 03:24:42'),
(5, 'Natasha Fahey', 'crooks.jaleel@koepp.net', '$2y$10$LJOHltlXAgGizgw3S1BnOeLaB0qKkfulM.yB7Vy6ZsfbwN9QAwEDe', 'api5', '2018-06-07 03:24:42', '2018-06-07 03:24:42'),
(6, 'Natalie Kuhic', 'kelsi25@cronin.org', '$2y$10$Yct1lOmtQwc6FDslhS7qRuN/b.R2GxFdYe4LogJLi5mFHwLL0Svli', 'api6', '2018-06-07 03:24:42', '2018-06-07 03:24:42'),
(7, 'Viviane Stroman', 'garnet34@gmail.com', '$2y$10$sXJk.0I5f2XinKUFNuvtGenLH5TiP5AUtKn5/ZCjXx11N99QzZ2r6', 'api7', '2018-06-07 03:24:42', '2018-06-07 03:24:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
