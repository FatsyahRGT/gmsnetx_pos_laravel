-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2024 at 02:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(3, 'Minuman', '2024-08-20 22:10:57', '2024-08-20 23:23:05'),
(5, 'Makanan', '2024-08-21 00:17:57', '2024-08-21 01:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `detail_sales`
--

CREATE TABLE `detail_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_sales`
--

INSERT INTO `detail_sales` (`id`, `sales_id`, `product_id`, `qty`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 10, 250000, '2024-08-26 21:44:26', '2024-08-26 21:44:26'),
(2, 5, 2, 10, 250000, '2024-08-26 21:44:26', '2024-08-26 21:44:26'),
(3, 6, 1, 5, 125000, '2024-08-26 21:45:47', '2024-08-26 21:45:47'),
(4, 7, 1, 8, 200000, '2024-08-26 21:47:17', '2024-08-26 21:47:17'),
(5, 7, 2, 8, 200000, '2024-08-26 21:47:17', '2024-08-26 21:47:17'),
(6, 8, 2, 2, 50000, '2024-08-26 21:54:20', '2024-08-26 21:54:20'),
(7, 8, 1, 2, 50000, '2024-08-26 21:54:20', '2024-08-26 21:54:20'),
(8, 9, 1, 10, 250000, '2024-08-27 00:02:13', '2024-08-27 00:02:13'),
(9, 9, 2, 5, 125000, '2024-08-27 00:02:13', '2024-08-27 00:02:13'),
(10, 10, 1, 10, 250000, '2024-08-27 00:20:01', '2024-08-27 00:20:01'),
(11, 11, 1, 10, 250000, '2024-08-27 00:20:34', '2024-08-27 00:20:34'),
(12, 11, 2, 10, 250000, '2024-08-27 00:20:34', '2024-08-27 00:20:34'),
(13, 12, 1, 10, 250000, '2024-08-27 00:28:05', '2024-08-27 00:28:05'),
(14, 12, 2, 10, 250000, '2024-08-27 00:28:05', '2024-08-27 00:28:05'),
(15, 13, 1, 10, 250000, '2024-08-27 00:29:12', '2024-08-27 00:29:12'),
(16, 13, 2, 14, 350000, '2024-08-27 00:29:12', '2024-08-27 00:29:12'),
(17, 14, 1, 10, 250000, '2024-08-27 19:42:20', '2024-08-27 19:42:20'),
(18, 14, 2, 10, 250000, '2024-08-27 19:42:20', '2024-08-27 19:42:20'),
(19, 15, 1, 10, 250000, '2024-08-27 19:54:20', '2024-08-27 19:54:20'),
(20, 15, 2, 1, 25000, '2024-08-27 19:54:20', '2024-08-27 19:54:20'),
(21, 16, 2, 10, 250000, '2024-08-27 21:30:59', '2024-08-27 21:30:59'),
(22, 16, 2, 5, 125000, '2024-08-27 21:30:59', '2024-08-27 21:30:59'),
(23, 17, 2, 29, 725000, '2024-08-27 21:34:38', '2024-08-27 21:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level_name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-09-06 01:41:43', '2024-09-06 01:41:43'),
(2, 'kasir', '2024-09-06 01:42:09', '2024-09-06 01:42:43'),
(3, 'administrator', '2024-09-06 01:42:09', '2024-09-06 01:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_21_034446_create_categories_table', 2),
(8, '2024_08_21_082036_create_products_table', 3),
(9, '2024_08_26_072709_create_sales_table', 3),
(10, '2024_08_26_073628_create_detail_sales_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_qty`, `product_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'slurpi', 10, 25000, '3', '2024-08-26 01:09:59', '2024-08-26 01:09:59'),
(2, 5, 'croisan', 10, 25000, '5', '2024-08-26 01:10:12', '2024-08-26 01:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_code` varchar(50) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_total_price` bigint(20) NOT NULL,
  `trans_paid` bigint(20) NOT NULL,
  `trans_change` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `trans_code`, `trans_date`, `trans_total_price`, `trans_paid`, `trans_change`, `created_at`, `updated_at`) VALUES
(1, 'SL27082024001', '1970-01-01', 250000, 500000, 250, '2024-08-26 21:16:13', '2024-08-26 21:16:13'),
(2, 'SL27082024001', '1970-01-01', 500000, 1000000, 500000, '2024-08-26 21:39:36', '2024-08-26 21:39:36'),
(3, 'SL27082024001', '1970-01-01', 500000, 750000, 250000, '2024-08-26 21:42:24', '2024-08-26 21:42:24'),
(4, 'SL27082024001', '1970-01-01', 500000, 800000, 300000, '2024-08-26 21:43:11', '2024-08-26 21:43:11'),
(5, 'SL27082024001', '1970-01-01', 500000, 900000, 400000, '2024-08-26 21:44:26', '2024-08-26 21:44:26'),
(6, 'SL27082024001', '1970-01-01', 300000, 500000, 200000, '2024-08-26 21:45:47', '2024-08-26 21:45:47'),
(7, 'SL27082024001', '1970-01-01', 400000, 500000, 100000, '2024-08-26 21:47:17', '2024-08-26 21:47:17'),
(8, 'SL27082024008', '2024-08-27', 100000, 150000, 50000, '2024-08-26 21:54:20', '2024-08-26 21:54:20'),
(9, 'SL27082024009', '2024-08-27', 375000, 500000, 125000, '2024-08-27 00:02:13', '2024-08-27 00:02:13'),
(10, 'SL27082024010', '2024-08-27', 250000, 300000, 50000, '2024-08-27 00:20:01', '2024-08-27 00:20:01'),
(11, 'SL27082024010', '2024-08-27', 500000, 800000, 300000, '2024-08-27 00:20:34', '2024-08-27 00:20:34'),
(12, 'SL27082024012', '2024-08-27', 500000, 750000, 250000, '2024-08-27 00:28:04', '2024-08-27 00:28:04'),
(13, 'SL27082024013', '2024-08-27', 600000, 700000, 100000, '2024-08-27 00:29:12', '2024-08-27 00:29:12'),
(14, 'SL28082024014', '2024-08-28', 500000, 750000, 250000, '2024-08-27 19:42:20', '2024-08-27 19:42:20'),
(15, 'SL28082024015', '2024-08-28', 275000, 300000, 25000, '2024-08-27 19:54:20', '2024-08-27 19:54:20'),
(16, 'SL28082024016', '2024-08-28', 375000, 500000, 125000, '2024-08-27 21:30:59', '2024-08-27 21:30:59'),
(17, 'SL28082024017', '2024-08-28', 725000, 800000, 75000, '2024-08-27 21:34:38', '2024-08-27 21:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ftgRokWvmwx1GDyFiJPQeyhfGfN9YWNlimrEBtt5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNWNwejcwaG53MkM5YXBMRkl4TTlJOGxWYkZ2UW5kMm15bUxHTUUwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjU6ImFsZXJ0IjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1725598322),
('IZyMXeQaIzuRD5I33YSGue8ZBzME79Qm7fKd9Q1g', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZVV4Z1o1cnplWDA1bm9kRHJsNDZCZlhhUVBvQTdDSEt1MWVtcndSbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6ImFsZXJ0IjthOjA6e319', 1724830426),
('OFKrapeeho153SuWIPkV2FZtUWM6KH6BwRfLjlRe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY282OVB4WGUyYU8weXdTTkV4c2NtQUpxeDBkQk5jR1F2T1lLMkN3ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725606068);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'administrator', 'administrator@gmail.com', NULL, '$2y$12$Lb4fXoK3Bf5WswszkCpBSO.jVurmLgBFDHuyf/nyRRWwsfrJPliuW', NULL, '2024-09-05 21:51:37', '2024-09-05 21:51:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_sales_sales_id_foreign` (`sales_id`),
  ADD KEY `detail_sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detail_sales`
--
ALTER TABLE `detail_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD CONSTRAINT `detail_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_sales_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
