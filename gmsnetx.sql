-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 03 Mar 2025 pada 16.53
-- Versi server: 8.0.30
-- Versi PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmsnetx`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Paket Mahal', '2025-02-18 09:26:47', '2025-02-18 09:26:47'),
(2, 'Paket Sedang', '2025-02-18 09:26:54', '2025-02-18 09:26:54'),
(3, 'Paket Murah', '2025-02-18 09:27:00', '2025-02-18 09:27:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_sales`
--

CREATE TABLE `detail_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `sales_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` bigint NOT NULL,
  `sub_total` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_sales`
--

INSERT INTO `detail_sales` (`id`, `sales_id`, `product_id`, `qty`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 900000, '2025-02-19 02:44:01', '2025-02-19 02:44:01'),
(2, 2, 3, 2, 800000, '2025-02-19 02:44:40', '2025-02-19 02:44:40'),
(3, 3, 3, 2, 800000, '2025-02-19 02:45:20', '2025-02-19 02:45:20'),
(4, 4, 1, 1, 500000, '2025-02-19 07:32:57', '2025-02-19 07:32:57'),
(5, 4, 1, 1, 500000, '2025-02-19 07:32:57', '2025-02-19 07:32:57'),
(6, 5, 1, 1, 500000, '2025-02-19 07:39:58', '2025-02-19 07:39:58'),
(7, 5, 1, 1, 500000, '2025-02-19 07:39:58', '2025-02-19 07:39:58'),
(8, 6, 1, 1, 500000, '2025-02-20 01:44:51', '2025-02-20 01:44:51'),
(9, 6, 1, 1, 500000, '2025-02-20 01:44:51', '2025-02-20 01:44:51'),
(10, 7, 1, 1, 500000, '2025-02-22 21:44:03', '2025-02-22 21:44:03'),
(11, 7, 4, 1, 5000, '2025-02-22 21:44:03', '2025-02-22 21:44:03'),
(12, 8, 4, 1, 5000, '2025-02-28 06:55:29', '2025-02-28 06:55:29'),
(13, 8, 4, 1, 5000, '2025-02-28 06:55:29', '2025-02-28 06:55:29'),
(14, 9, 1, 1, 500000, '2025-02-28 11:44:23', '2025-02-28 11:44:23'),
(15, 9, 1, 1, 500000, '2025-02-28 11:44:23', '2025-02-28 11:44:23'),
(16, 10, 2, 1, 450000, '2025-03-02 10:43:41', '2025-03-02 10:43:41'),
(17, 11, 1, 1, 500000, '2025-03-02 12:31:38', '2025-03-02 12:31:38'),
(18, 11, 1, 1, 500000, '2025-03-02 12:31:38', '2025-03-02 12:31:38'),
(19, 11, 1, 1, 500000, '2025-03-02 12:31:38', '2025-03-02 12:31:38'),
(20, 12, 1, 1, 500000, '2025-03-03 08:47:13', '2025-03-03 08:47:13'),
(21, 12, 4, 1, 5000, '2025-03-03 08:47:13', '2025-03-03 08:47:13'),
(22, 13, 1, 1, 500000, '2025-03-03 09:01:17', '2025-03-03 09:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `levels`
--

CREATE TABLE `levels` (
  `id` bigint UNSIGNED NOT NULL,
  `level_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `created_at`, `updated_at`) VALUES
(1, 'User', NULL, NULL),
(2, 'Administrator', NULL, NULL),
(3, 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_21_034446_create_categories_table', 1),
(5, '2024_08_21_082036_create_products_table', 1),
(6, '2024_08_26_072709_create_sales_table', 1),
(7, '2024_08_26_073628_create_detail_sales_table', 1),
(8, '2025_02_15_155104_create_levels_table', 1),
(9, '2025_02_15_155235_add_id_level_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int NOT NULL,
  `product_price` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_qty`, `product_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Paket Wow mahal 1', 1, 500000, '1', '2025-02-19 02:40:38', '2025-02-19 02:40:38'),
(2, 1, 'Paket Wow mahal 2', 1, 450000, '1', '2025-02-19 02:42:15', '2025-02-19 02:42:15'),
(3, 1, 'Paket Wow mahal 3', 1, 400000, '1', '2025-02-19 02:42:35', '2025-02-19 02:42:35'),
(4, 2, 'Paket Wow Sedang 1a', 1, 5000, '2', '2025-02-21 05:08:50', '2025-02-21 05:08:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `trans_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_date` date NOT NULL,
  `trans_total_price` bigint NOT NULL,
  `trans_paid` bigint NOT NULL,
  `trans_change` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `trans_code`, `trans_date`, `trans_total_price`, `trans_paid`, `trans_change`, `created_at`, `updated_at`) VALUES
(1, 'SL19022025001', '2025-02-19', 900000, 1000000, 100000, '2025-02-19 02:44:01', '2025-02-19 02:44:01'),
(2, 'SL19022025002', '2025-02-19', 800000, 900000, 100000, '2025-02-19 02:44:40', '2025-02-19 02:44:40'),
(4, 'SL19022025003', '2025-02-19', 1000000, 1500000, 500000, '2025-02-19 07:32:57', '2025-02-19 07:32:57'),
(5, 'SL19022025005', '2025-02-19', 1000000, 1500000, 500000, '2025-02-19 07:39:58', '2025-02-19 07:39:58'),
(6, 'SL20022025006', '2025-02-20', 1000000, 2000000, 1000000, '2025-02-20 01:44:51', '2025-02-20 01:44:51'),
(7, 'SL23022025007', '2025-02-23', 505000, 600000, 95000, '2025-02-22 21:44:03', '2025-02-22 21:44:03'),
(8, 'SL28022025008', '2025-02-28', 10000, 20000, 10000, '2025-02-28 06:55:29', '2025-02-28 06:55:29'),
(9, 'SL28022025009', '2025-02-28', 1000000, 1500000, 500000, '2025-02-28 11:44:23', '2025-02-28 11:44:23'),
(10, 'SL02032025010', '2025-03-02', 450000, 500000, 50000, '2025-03-02 10:43:41', '2025-03-02 10:43:41'),
(11, 'SL02032025011', '2025-03-02', 1500000, 2000000, 500000, '2025-03-02 12:31:38', '2025-03-02 12:31:38'),
(12, 'SL03032025012', '2025-03-03', 505000, 600000, 95000, '2025-03-03 08:47:13', '2025-03-03 08:47:13'),
(13, 'SL03032025013', '2025-03-03', 500000, 600000, 100000, '2025-03-03 09:01:17', '2025-03-03 09:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oFL6UtOiILuVUNOFJyQo4Co2bdFHW7sKcdCaVIJO', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOEJaNk44azdaZG80YmdSUElUVVdOMUFGTDB2aUJxa3QzdXdubDRCcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6ImFsZXJ0IjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1740950388),
('y4dxGJmBVB2SgmQ1s4yd4jPQldSCrEHaUqw3Fceu', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTXo5MUdySEh2YzJXOFJCbWhJUjZyMEdyREhzUFFHWjJTb3Z2aEUxYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToiYWxlcnQiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1741020754);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_level` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_berlaku` datetime DEFAULT NULL,
  `disconnect` datetime DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `id_level`, `email`, `email_verified_at`, `password`, `is_active`, `ip_address`, `masa_berlaku`, `disconnect`, `longitude`, `latitude`, `nama_paket`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user', 1, 'user@gmail.com', NULL, '$2y$12$nkABYK/NZGZAmYkHVyL5q.XEhpsaG44NCzpUIEb4EaR6rlgmxLAny', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-15 10:12:40', '2025-02-15 10:12:40'),
(3, 'administrator', 2, 'administrator@gmail.com', NULL, '$2y$12$f5Gau8IONXt0UaQRZ9kBeO8680dgjAku9uYnFKWJT7jFGOf6CYlz.', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-15 10:12:41', '2025-02-15 10:12:41'),
(4, 'admin', 3, 'admin@gmail.com', NULL, '$2y$12$LdXfRt54Pmg.Gv0.4hZedOSQ80B95qXiKzJ6fYMXdcf/j/29wKIvK', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-15 10:12:41', '2025-02-15 10:12:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_level_foreign` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `detail_sales`
--
ALTER TABLE `detail_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_level_foreign` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
