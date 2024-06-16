-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2024 at 02:08 AM
-- Server version: 8.0.37-0ubuntu0.22.04.3
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Category 2', '2024-05-30 00:54:04', '2024-05-30 00:54:04'),
(3, 'Category 3', '2024-05-30 00:54:04', '2024-05-30 00:54:04'),
(7, '1', '2024-05-30 01:05:04', '2024-05-30 01:05:04'),
(8, '4', '2024-05-30 01:05:07', '2024-05-30 01:05:07'),
(9, '1111', '2024-05-30 01:05:24', '2024-05-30 01:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `in_date` date NOT NULL,
  `out_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `product_id`, `in_date`, `out_date`, `created_at`, `updated_at`) VALUES
(2, 14, '2024-05-01', '2024-05-08', '2024-05-30 14:21:16', '2024-05-30 14:21:16'),
(3, 16, '2024-05-30', '2024-05-08', '2024-05-31 13:14:51', '2024-05-31 13:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(14, '2024_05_29_051610_product_category_tables', 2),
(15, '2024_05_29_053924_wtf', 2),
(21, '2024_05_29_182855_inserts', 3),
(24, '2024_05_30_014104_inventory', 4),
(25, '2024_05_30_032308_nose', 4),
(26, '2024_06_04_020713_clients', 5),
(27, '2024_06_05_004638_sales', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint UNSIGNED NOT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pv` decimal(8,2) NOT NULL DEFAULT '0.00',
  `pc` decimal(8,2) NOT NULL DEFAULT '0.00',
  `colors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `long_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `name`, `pv`, `pc`, `colors`, `purchase_date`, `short_desc`, `long_desc`, `created_at`, `updated_at`) VALUES
(14, 3, 'Product 1', 0.00, 0.00, 'color', '2024-05-30', 'short desc', 'long desc', '2024-05-30 00:54:04', '2024-05-31 13:16:52'),
(15, 2, 'Product 2', 0.00, 0.00, 'color', '2024-05-30', 'short desc', 'long desc', '2024-05-30 00:54:04', '2024-05-30 00:54:04'),
(16, 3, 'Product 3', 0.00, 0.00, 'color', '2024-05-30', 'short desc', 'long desc', '2024-05-30 00:54:04', '2024-05-30 00:54:04'),
(17, NULL, 'Product 4', 0.00, 0.00, 'color', '2024-05-30', 'short desc', 'long desc', '2024-05-30 00:54:04', '2024-05-30 00:54:04'),
(18, 2, 'Product 5', 0.00, 0.00, 'color', '2024-05-30', 'short desc', 'long desc', '2024-05-30 00:54:04', '2024-05-30 00:54:04'),
(19, 9, 'Product 6', 0.00, 0.00, 'color', '2024-05-30', 'short desc', 'long desc', '2024-05-30 00:54:04', '2024-05-30 01:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `sale_date` date NOT NULL,
  `IVA` decimal(8,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0iGheKuXOOHgnMSaxZwa8BUDz5arVlktinAbVftF', NULL, '183.56.201.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmVzN3Z2aHhMaUlIYjJUcjZJdlVPcnRwVkFEMW5JbWhuNnBpN2FVSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718433987),
('0MuQURl6asp9JuaWZYBhqZ5gCM3lWoMq3nQ70zC0', NULL, '192.12.240.40', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1hvVzYxSGtQeTNHZEY0THdPVWVaS2NxdHZ6Tk9FMzVZWUpLOEhiNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9ydHItcGxhbmV0YS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718277900),
('1tEzI0qmYgMsUjG1GrPv1x9UvB6FwoQ0he7ye7NS', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickFpS0R6NkNYQ3IzbzZzNHZmalRhVXhPaEtCOXppbzNIWHBMT1FmZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718310865),
('1yQdt3GdmYYJcwCHXAsSEgpvaSKjpcb0dxASuoi8', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWJwRExiWjFuYU96dm9mdHR3c3FaNENYZ1E2TGtHZ0hzWkNPeWN4SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718411953),
('2OKwsTp1VpsbIA6wESEfwh0aLm5nnWliOywFBJbN', NULL, '157.245.105.107', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlBicXVFUlpMbU5aSEwzOGZLRFBJU2xIbjdqVklKV0ZuMGs4OFllNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718360729),
('2Wn34ypvczyXknnP2eyrrOQM9e2oQfrxyCSCRqce', NULL, '159.89.127.165', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA291782) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1075.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVFzc2JxcEJZaER4SmdSM0RKckRBNzZwM2d3M3ZIbHd3NWxhR1lHcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718486072),
('2yCEBoVC38EXMMxNtzonwYNO5qR6SPPcsNaAiYZN', NULL, '83.97.73.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVQ0T1ltUXptR25Ha3RQaXJqU0ZSQjhYbnJ2aThja1Zsb0NaMEpDMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP1hERUJVR19TRVNTSU9OX1NUQVJUPXBocHN0b3JtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718273912),
('3eFgz4RjoXsjQA9Do4G5VS7kxQsrzbUtXe24fvPa', NULL, '159.89.239.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0Yzcmo5RDdqQVJmaXJZQ1NTWndicDA0dk5PT095SjIxWktWWVA3NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718342237),
('3NmHy7Fd7rEHBQ7NR6aB3ZmFcOycKk8FrVauImaA', NULL, '35.203.211.219', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2t0QThHMzNNOXhZbW8zQTl3bnFDZ0JPcTdVU1dkd2tXVWhTNnNxdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718263225),
('3tQhOh93zIxjxXS2aILAQ1mwWjwalBCNiAxoQMFF', NULL, '46.174.191.29', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVlVZkRlVGV0RUFIT0xGWmpVUzNVV1VuV3NmUVFXcDBCdUhJQ09BZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718435774),
('4aSruZCskqHpkKmdZpM0XatjfBgLJZ2jLrUqkjCP', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZlFhREdhT2UxeFJxQ2hDNjJFNndzdFNlRXpuNngwSDRIY3RWYzVscSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289322),
('4hjSqwRPLSBmBRzseRhIYc6qGObDlwC20Wdi33hU', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2VDZDlycFlkTXBLNFR1dnhXcFpsZkdDZG5QM3V0OXJNYkl2ZkRqZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718473385),
('4OugxssYshQXw5TD9VgQLccGB1dN33nWVzbGLwOz', NULL, '80.82.77.202', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlhUNFRhNndiMklicFNVYnl1N0NGaHJYd0dSQ1VWQUo2ZU1FWHlpdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718263196),
('4TfgclWMrUAlhsWrmAAaFi08kBRkUCjb8L95UO4W', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEd6ODl0RXdXRVNYYlRCUEFOSkUybmFRQm40bmd4SjhaZzJCRzRHNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289319),
('4Ud4Y1oIF2zXDJnsRteB8CcE9Li7Shfx0Ajhs0mh', NULL, '185.244.36.236', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFJZV0c4SFNjbVZKT3RtSVpHQUZyWExRd09SUEQ0c3pTT2ZJSENHMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718321496),
('5Mu6E4n3JRAU9cprxMYGJ6TCCsRIQlCD0x4fTStE', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV1hzTjRpcWNzR2VzUGJVVU1ETWNib1h6VzVoTk5zUW91a1RDODNPMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718421908),
('5xcbmeDKvGD5AOXkYoJ8fMvTSUeuEBgc2eyIPjm2', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUJVSXVpa0VMQ0oyRUZGY0EybzFzODRMN2NFOFlIQW9QazNXN0VWNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718290927),
('6brSgnmKox8Yes9vawSO7Wd3IHYgYg29hmxVXyle', NULL, '46.174.191.30', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXViT291YWJ3b0lRMkpMRTZ1azAwOE54dnR1M3JzTnBudHVyWFZ0eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718273751),
('7Bkzz118wkpEHk8HmXiEcqsXxVyVcNHPiF6Bt15i', NULL, '80.85.85.44', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0t6amp3OVg0aElxRGFpdURiZE1DeHBkR2JFcWdmZlJZVU1yY0hMWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718357160),
('7T12Cg4Kcv7awm0wEw7AF9Vc5YtzwXChfNGD88BP', NULL, '2.58.56.229', 'Mozilla/5.0 (X11; Linux x86_64; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGhRUTBUQWhhVjhraGcwTUlrRjRIZkExaDNYbVBQWUpxWFpma211NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718391966),
('7YwMwV315Y2XHDLFqkYwbMU3nI0U37oWNSyFl5Pv', NULL, '80.82.70.133', 'fasthttp', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDlsbDNDOVF4TGhQWHJPTjQySzRHMVBCWWN4TzRMbWNsZnJ5SE5CRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718477303),
('8m455KcLpcUNIgdz7xSsq8Lp6dmZizbhlLlThLd6', NULL, '2.58.56.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHhvamxWU2t2ZmVxUXZMN2NBSnFqeERPYkQ1b2dCSDZJUWJKdFVmNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718391936),
('8QNLd9oxLWYGWjZqliDTIvkeRCMbywk0DY0EDh4c', NULL, '80.82.70.133', 'Mozilla/5.0 (iPad; CPU OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML like Gecko) Mobile/12A405 Version/7.0 Safari/9537.53', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFUxUWNhdURqcm1Gclk5cmdrU2oyNGZkckd6RXhqV0RMaVo4dEs2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718376810),
('8XgUtJV0xaFBqdx4IvBLBquE2fiC2klPxQjG1Omg', NULL, '167.94.145.101', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicURzVVAxazNZTHNSMVk3WlBwM1FKMkZqOEsxWngwa2NjVVlhbkhjdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718399249),
('9B3P5pEqEARU7FDcwr2QSsYtX3mhHEJiVn7wIvXR', NULL, '152.32.128.169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEJDRkU4N1lzbGpocjdCbjFDNnBSbDQyTlVad3FNWWE1eEpzbXh5QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718461444),
('9vqRr7CfHmDVUFeiiit3NjftomACXOmajUuD046m', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnh3Y3FLbGhYZmtSUHBVb09hbTRVZzVOamFWTVA3TjFZZGlocTlNZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718415776),
('9yaGwBSiVHa3BkSKU8X4oole8Y9KvYs44txSU0uD', NULL, '2.58.56.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0R5ZDJzQjc4SGJQczJ5djNHVTF3NjRWdnVLMXlMUnRTNWk3Mjk5YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP3BocGluZm89LTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718391960),
('A7MLuraD14SHMk7js56vQ9xmhvqzUKVS6V4PeuB9', NULL, '209.38.196.175', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGhEWm1lM2tvWXkxN2F4d2ZjZEpUYUNLQnhxV2RPalp0S21yalV6USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718472255),
('aE3kLEat0bvIzwlx2nl5oKhgnxCraxVT4O67k4DQ', NULL, '64.23.161.138', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFhOQk1ESjhMbWhsc2s1Wkx5dVRjVVdxZG5vUkljS2pKbmlmUTZ0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718328782),
('aidCosg23uq8vQ43fkr2AZ5SxhVs8QTM9Ok1Fhap', NULL, '205.210.31.201', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXJTWnRNY1Q5YkExbmJTZDdmaGs2dE9Wd1Brc1p1cnNrSFNKelA0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718356170),
('AkEnjmc7Ki86D8nHFxAQFJ9DB8xBlRyJcUNG5CuD', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVBtaHBwc0tOUGE1WVdUOFc3Z3lkbUhKaXloTVVQam5vZzFMN0ZxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718372265),
('alssWCMj4mJ7d08fV82gW2SFNruBqGTihzdPlSDQ', NULL, '20.118.71.71', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkNNM3JOUTk0RVVYckdUdlJWVzYwRkM4MkR6aW9WMWxEeHdZNGx6VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718292469),
('AsT8sdwpGUQWvQf93z2etclTGATFgyUH9kwYHqZ8', NULL, '91.92.247.105', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEcxZWI1WDFORDVoTng1UWxQUDdpQnF0aGk0bm5MR08wdVFWWnNWciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718442972),
('auPNTHZFXuXLsmAVopI44M1lfTAEGzi4Crvvki3K', NULL, '2.58.56.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0FKdGtIMU5EUnZyREdldDZZTjBjVk9aNmhhQ29pNU5tNzcwYmRQZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718391952),
('BPwCpAjMRpOasS92k0IQxovDOEtlFdSN3eCcUO3r', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibldPSFdmeW5Bc2JHTEE1U3BRc3dOblkxWTlZNzB6T1JXNzRoSVZDdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718484913),
('BxBocmhVmCj4JZkxRv2uF1LttT3I4MWiU1tXasHX', NULL, '45.156.128.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVNNT2trcGY4VGpWcEpTd0JObVh0SVppeHdqUzJ3YXY4WHp6R2txQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718346311),
('bYTEl2JHau4uReu5AJgYdO3dEF9bVyr5rxDQripu', NULL, '139.144.52.241', 'curl/7.54.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0dXMEhsc1BPV3ZUaVJ2UTBMNEY4b3BFNmVVdXlhZEYzd2wyMFZoYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438836),
('C5j8SdHfFZWS1NJbvtChPMmRtBNwuRv8yffbalHW', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2pTN0swRFFRTGpmZ0x1VVVuMHJtN2NDQllpT3g1SHVyUHlkMmxpRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718354602),
('CGVk1WpyCcPtImwcZpAzMT7PZ095DZcxxN73itED', NULL, '38.91.101.72', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekVPRnlvSTZiQ2dHR2RlVDBZYzdwQVNiN2JzdGlsUHE4UjlsUkkwYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuYnR5MTU4LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718366636),
('CQDQFy3IlstNitwK5mZ7GAhexMfKV6fy0Jby92zl', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWl4Y1ZRb3Zmd2JLd3NXZHhCOGNxTFR5UU42dWJmc25pVlZyRTRBZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718355266),
('cscMhpsEjDe9xB1f3LaeRd41xjLYwVTknavt2eim', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicTVNc0lMck1vNTRtQWFoTXNWdklvanlhSWoyMG96R1ZIUVczQkRndiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289326),
('csuv2WLiuiedN6CtRysa2s2aeWhUTSb2coOLjcn3', NULL, '139.144.52.241', 'curl/7.54.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemtvQmxBcGtmb2JGRmN0NU0zWDJ3SjdOcUZ5OVpTczVjN09nVjFrayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438835),
('CyWLIuO6tSiwnLWVmPgv2l9tcb3e5i8TqdwZP2tQ', NULL, '104.199.68.30', 'python-requests/2.32.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3Y4TlVHd3ZxcExZTGJONERBRE93QThhMTJyZEJYYUlBTEVVWVNZRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718470244),
('dmm8b3456pvvZShPcigZhTRRBPexoufwaY7NuuKR', NULL, '105.107.141.201', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVV6Ylh6UGZRbzZvazlPSHdkTVk5eEVMemNOWnBnYko4Rmp1azc4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718300658),
('e7fN1nuFzjZMJySYsDW7eONAAIARsaMdwoWg75nb', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0xKS1BYMjhrcEdGbzlJZldodnNhTzVGT0lWMzZ1MjhuelJwRjZheiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718430695),
('E9NtprrtzgWggbOFp00RmlKQPaDuFkSFrefb4fBk', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSk9rZml1cUZjUXNuQ1FWRzFYakFIMHAyVVpJWkhJblZCS3Q4NFVFaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718442821),
('eH40sfpDyC5gBi0IpEHXX4xQaNT3qQVmImVnVzrL', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFdoOUF2ZExZdGVlalB4R3FleVFPYjUzOVVkNHNFU0t5WGVCeWNrYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718442969),
('ehv0XNe94ewAzrg36P6CZH6WvqRN775Y5lfL6gxm', NULL, '47.100.201.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHNVZXJKQ09SVFE2VVd6Y0pmaUlKN1Z3Z2JLSnp3UFdyNkM3MjlpQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718403396),
('EKtKKSYbHPkIM9ixp9CMUjJDQBk1DeKICpt1lqtm', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR053aEIySjlpYlRUam1DcnNTQjVxS3JFSm5ER2JnNlI5SDNOckJ6dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718292652),
('em0WbfSlTbTWC9I6rlKnrShQbk2kbp4MUh9rKAjo', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTU91dExBZGNiNTNUZDNBYVdUNDN3eHNXYlYzT2UxajZ4amhrTGFyMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289321),
('eOJwAkIQoz8Epmmfs8rIyS3LXT8gR2ktJkRzKmSs', NULL, '154.38.177.86', 'python-requests/2.32.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVRacWVRc2tlaVFvUFBNM29zYXdOMUxzZUcyZmJZOHFaVmxFNGJLVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718431562),
('eWg5HaavgnNy1KyfMYZC6NUVySvvoRzGBhAxnV9T', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNTIzRnBWa28xS3FZQ1dTN1VYMHlvcVVkNFpxTm1NaUdCa1Y2eUpsOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289320),
('exyoFQHVRXCqqwkTcQr1HOcrf7z2NUyFbI1ZYyqA', NULL, '45.79.181.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmtPY0ZReDJENUQxVWlhWVJyb1BoMjFNckI4WFo1dnBWTzV2Z1phZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718496543),
('Ez2ePFyWl15C3xQrjy8MOQU7eOpM9Xw4cZc9VF5h', NULL, '185.59.223.68', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkdHSVFwc3BTbUJjZk9Hcktmb2RPRnJQRU5HZnpjUnk0V2dvSzRIeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718278162),
('fXW7JWQUNksMF6nbhS78beKWN0tRIwh4xysLD6jd', NULL, '64.62.197.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDdBbVFlaXNxZXNVbHkweGREemhkR1ZETzVQTmhZM1hya2Q4R3ZESCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718323554),
('guyPf3xbXLMf3Gi2xqetukNyhvm9gs5Ij5lBqA9F', NULL, '35.203.211.252', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1pOdnhlek4xajFZdEtaemFQcUlkN1V5NVAwVVlvYXB6WUFWdWNpRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718425422),
('H2t5QQCtJLOcs37GFjs6yOjQxuuAboeoibp1xFMH', NULL, '45.156.128.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZldKdWNyemI3b3B3NzNvTDhaVTFrdkd1ekpjdUZFYjZueUw1ZDFiZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718403162),
('h5JOZjUF4KeRjJXYXLTneFsGF9mZ9HzVdLvBXCd5', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSnpTRE5ZamROTGRhZ3BwNXB2UnlzQTBRSTJ5eGxYOVZXYnhFWFdDTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718258233),
('HIFfQG60UsWKrykoPtHBkeOmFwaJMsO4TuPrYo4m', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlZaRWRLUm4xb0xSbjA2alFSRExJdFN2aVVPQ0pRRmpMaXhvZVZhNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718278526),
('hYuQXOaJwlmAMS6UP95xt9d2FRWaXRdqOCYArlgg', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNERxTlNRaVRGU25JSVJTeGFSdzBOdXlrTjVZSm4xdVJpeG51TndneSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718272320),
('I6lSCNWDVhJQJb9MB7pQu949cvzHfLVzg0vno95m', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEc2eHJrT3JnWTVweXk1c3FhWUFwTFUzVFM5Ulo1aG5PRXdGa0lWcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718301227),
('idd5DRwO8MYo0kn3loabDJPlYng8o58S7rVHDOrK', NULL, '185.242.226.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ282WWFxcmlzT21yRHpZUUNRdDVTaXBlcjZ2anpMdkI3U1VFNmVSQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718324507),
('IiRVMWDbKfXlJe7sWbPlTCucEck5DL7gxT3mWBUQ', NULL, '139.144.52.241', 'curl/7.54.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnFQVlh5eGhJaVhoVElCSVNXQ1ZYSzRQUVpvcm1SZ0ZJMnhJUHM5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438835),
('ikNtCe1rXM0zdmzVZb2qasocRc78RKxgbaMZNbuF', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTjNlT1RMQkZxcGZQVXhIYWIxR1dESThlbkFGOUQ5ZUpNS0wzaXJ2ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289323),
('ilGRxCwKtvyCifVIw0Vw37dxoskqfHM6HnMqFhkc', NULL, '167.94.145.98', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEx4UWh3R1Q1ZXZvWHJpaElnbFNRVTZMM1pVSVBoZW5vcVZCSDJsWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718406686),
('IziEtpIh7XSp0b336JzRfhM2wfRhbNxv7OAY1oGS', NULL, '209.38.196.175', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGFCd3lZZUlpWDNaWnp6RXRTNmhtNzJMalQyNlNZTDNCOGI3a054QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718472254),
('j21nwHNjqn5kC622WJswqBcb8d8ygUHCNGHyZlLE', NULL, '209.97.175.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMk8ybERDVGNwVDZpWEY0ZUFoRVlIU2Z0REo1M0dJVHlrcFZWM1dkRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718319785),
('Jeb0Boj78UJbVUtc0z71U75NRhqaV9JwBRwrXWda', NULL, '167.94.145.101', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejloT3IyR1hkR01qVVZnN1E1eU43aUxKVlFRN3lidll1VVlwSTl5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718399245),
('jfAohdSzI2iGAbGJVWAuEMDqYNEqWo36kmrCeCcF', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWhwWTY4cjVEYWxTQ3lMbmRGWjBQRnFmTFN6NGlvRzBUZ0tCSWlZViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289324),
('jLeBcDqKGhENgFaojmJdmCSkXSJja9hHr95auhau', NULL, '165.227.161.141', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVhJU05wWXdjbWljdTdjYjJjaFhyazdkOTZRQ0NhWEwyUjhNYkpjSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718472255),
('JMsNMqM1rZLYUGJt53EnKxxa2FgcmQtRVAps9reF', NULL, '185.180.140.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0sxa3NGT2lTUElCb2pMTUdYbWRycFY4Z1pGbGVRdWh3SWswREpLdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718342193),
('KaC8tkR3mgsU41W6OipBDXK1TIVzoqlWLWmzNj0e', NULL, '2.58.56.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlZyQURneHdCbzc2bHRjM2VvTnoycHRhdWliMlNsUDgwM0pYUDUwMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718362493),
('kCiUr7bcrmI7bpRvVeOhsrSNt2nag38DkNklMYbR', NULL, '174.138.61.44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTd4ZmNwMDBuRDgycjhJYzYwNXlsRnJ2ZW5EVDRRY2hGcE1zUlNscSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718446673),
('kDeM7Oct6NFXVcNMcqriidxFGKGU1GACYnxlPTT8', NULL, '91.92.247.105', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialZoZ3F1UVNQZTlhV0JwR0hEYk81TnhUczRVV3BiSWpkMkNwN05NQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP3BwPWVudiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718289323),
('KMHoTaB8V7NHr8oONcBi9OVxk3PrlhSAgM58olgs', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib0paVUxDRFlXbmgzSDRYZmMxSFdxZzZQc2V2cjlWZFp0R1hydG1lbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289324),
('KOyRISdCwt89LqKU6AH6YK7ZhPqpiuqcMRUyhqx9', NULL, '2.58.56.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEZWaGJCeThiaUw1UldteDBnSlBOS2doRG96QVB2MjhlcnM4M2FLcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP3BocGluZm89MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718391957),
('LbcPz4Fs5i7XwpBJcVty8hFpjzzh57LiNqVP91A7', NULL, '165.154.12.82', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibG1MWDFOWFZsc09raXZiN3A3OVFkWlBsVUdraGU4YnY0WjN1bEk0eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718292199),
('lj6QKMgA2HwC1BcxS7RlOBrt7206OEqw7BuBTlLt', NULL, '14.102.47.34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNldJQVVjZkltRDc2TzlTTFNMazNnRXQ1eHlvZVVaQkZoRzNkcWtCbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718375419),
('LR1E3qtGcBxGiwXpPAO57wLDFu6KacLA58BKjbcd', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZm9kRmkyNjBjbmhHVXM3QUhyNlh1MHFuZ1ljWnBPNWZpWjFQdENwMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718358289),
('lrlv1nqeDwEJV09zHsgZaciGnlM3t0ic9z8R7qNX', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHBZbTBxM2UyRFFCRDd1M1BDOFRNelhWb3dnUkxRZFAxYjNmUzF3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718337632),
('lVa1IsZQtrBxAF2K4YxX7JEAKcJQTc4PjE1eJWWP', NULL, '134.122.17.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDl2aFJIV290QmlvYXJ2VjRmUGdWbjV1YmNrZW0zNkNORFppenR5SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718370994),
('lxcxyxh3eIyi3cVv8he5ummi0lcLY0L0EFcIzCu5', NULL, '188.128.29.102', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTdFYTZjbjZZQ1pCcEFreVkxRHQ3bGhDQUJ4Z2Y4bkE5ZjhPcWhCTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718348679),
('M9ClS0mL0PDY4PgENKz2BBKyaKyUXPFyvbzByyPM', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVHhJTTB1UnREek9ZRzRCdjRkaXJLeGRFd2hwRUhFVDB3TGNLNE94MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289323),
('MHxEtpsWH2tMu1xr7MCbM2NlgfDHRydORHetkB3g', NULL, '139.144.52.241', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG1GR20zd3BnMGU2TE83S0FiTHRVUkdMQ2ltZGYxYmlSM1ZLcmpHbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438835),
('Mn6YNu4ySkX7xVDOtHHP0uxkORKcODRRT8W3XMTf', NULL, '54.89.191.155', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1801) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.101 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWRHanprQ2dxUTlsQkhkSGFJbEhDdzVIRVFnR2t1Mmxlbkw4MnduWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718448912),
('MofowDgIQDMpaoZ9c2weZMWSlC5i26wAfhJ0ByZH', NULL, '91.92.247.121', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVJZVk9wdGZ3cXlYUkU0NVlTNHdiNUNlRkoxQk5zMDNTeVlwQTJtSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718303076),
('Mr0xO52ZLhfQ31uMijnzx69H0KZi2DmwBCNkePlG', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDh5dFllTG0yZWZ4TG9Qam1GOUZwc0hTWktPOXd3R29PYmgxd0VCbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718382360),
('MvYa9UDRlppsZglLjA0L4QGVo7snDMJ9MdUBmvQJ', NULL, '159.89.127.165', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnZxM3E5SGxMYTMwNG9FT2dYRW51UVpuMkNldVNNb3dkN2dENWswaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718486071),
('nENBl8gdWUrOEqN1BYeHUdxTUNvH8mgfNlL5nrZN', NULL, '209.38.196.175', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWtGVVJjTlNZWFBZaG5leGJNbXN2MDFFd0dsa2JpWHJZdU1INkN2ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718472254),
('NLc5vfnSsK3KfVUf6tUWSIKj59mseUUf6FzwKTXw', NULL, '66.249.88.136', 'Mozilla/5.0 (X11; Linux x86_64)  AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview)  Chrome/125.0.6422.154 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWxLNFR4cHRZNVFTM2tlR3FQQncyanJXRXphNUhySUV0VWgwOFVPMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718503257),
('NLLHJz4LQV4vgR60k70W6xAFAAyYiABfQ1lIk1JS', NULL, '92.249.48.76', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3VPV3dUWWlVcHFWeTkwMTFwSDk1NWNFSm5ZU3R2UGh4TVRTaU1BUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718393485),
('nReLC90XvFBTRBz7C0uq8xXUlWda1BYUvrt9iZBE', NULL, '2.58.56.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFBWdWh4MHJ3MktpOWxuTGhmWVpYMlN0bjZtWVRyakpSVkNUb0RsSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718391903),
('NvLSDmHV4lLVkQlMmDFPh9DRX5h54xXncSkAeNxa', NULL, '87.236.176.220', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWJKY2lWOVBpcE5CWEc0eDYyeDU3cUtrcDlpTGhVbjFJYTNIdGgyUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718348599),
('nXsklGCi49JcrYDqVsaRx5Xbp1YKN2dsNKDn9eHa', NULL, '139.144.52.241', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjFGM3F0dWtnU1piUVFZTVZGR2hIbXRWNlNYVlZYcFJVQUtVcWJJdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438834),
('OFoELtzfK84lhJQOkO8gtCFZs1XFmulCeeLuiaQo', NULL, '192.12.240.40', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnlLNXdoSmJySm5IWjBOdmNvQmZiR2VEQlhMaGRGY1ZFTmhJUXNEZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9yZXNlYXJjaC1vcHRvdXQubnAtdG9rdW1laS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718262883),
('OJsRl5AAlgCUVu6VsPyVEohOv4yCVPsKPSvrf9Ss', NULL, '64.62.197.10', 'Mozilla/5.0 (Windows NT 10.0; rv:110.0) Gecko/20100101 Firefox/110.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmhwTkk5aGY1a0hoWFNTTGlRNHcyVlE0Z0lxMmRudmw0TkdOYXBWdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718431121),
('p51CVF6rUERGTkjncbGruwXEc6N7CoxqjFXpcYIR', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGxub3F3elNSVUhiSERYa2NndnpvSkdRaUNqZmcxWU80dDNIY01kVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718302932),
('pbzdVzmQGsccxR0obDop8X3iQNoDv0WgwwGKkNPP', NULL, '209.38.196.175', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaklUMDU2S0JzTGs2cldSb2J5ckNnSW5uTVcxTno4RjBrbGs3U3c2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718472255),
('pecxlpvnC2h3k3LSFnHhEnS8MLYFM7qjTK33bqLG', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2VHaW4weFpFN2hJRDBGR0VvY003dE5NN1VNeEhpbk00TFlvM0ZlQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718321467),
('PIa7iPgLUaneJLqOYqYc6DEucS5oWw84t0pTH3pz', NULL, '139.144.52.241', 'curl/7.54.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlk5WGV3REZCYVlQRTNUSnU5eWhvdVViRndPSWhNejViMTBXREpsSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438835),
('pkjxOEZEkjFLR4h78Y3S3DXQA0nFQTTt8KX8CW5Q', NULL, '61.3.94.241', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3VkUU5Gdzk1UGVFWDd1Q0dtVHFTdjI4VUtLYmZoMGpQeUwwZFkwRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718260868),
('pkxfESHYrm6nytwetFxmC5llmknLsGMCSQ3aE9je', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3czQ0lOcXpZR2llTTNtbVZ3enNhaDlUbEFiVndERVFQR0RWa214SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718388145),
('PpDHZ3AIt2lxqJyzhKRSOdCYMR65BeDm7PHTAGV7', NULL, '185.242.226.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXl0R1lFZ1Rob3hoSXY0ME50aERuT2h6bUI1eGtxN2I1WmMzRjdqayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718406330),
('pqmKA1q6lqBUvb1wiLMykJxM7BfhNxqZ6tTj3fF5', NULL, '185.38.111.110', 'masscan/1.3 (https://github.com/robertdavidgraham/masscan)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid21WVjYwazg3eDh1MDBnelhLbDBrc0hjYlJ4dzNuVGJxTDUwY2dZdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718425230),
('PZgSijDgypLb4qNBJ44CKJlr7s3lNTZgTAHvMDpq', NULL, '159.89.127.165', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibldiTjZjVWN2NkZ1N0czdHlvY2VJbTVQNTFJSlc3b09ibVZGbkUyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718486075),
('PzOIwtQcw4hWkGESaM6Xssw8cVw1JwdwJJGFqqGM', NULL, '45.79.115.117', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFVDblRaam9hRTVjNzBsa1hsNDVsTnYzZVZna0RuVUhWWEloTnpaNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718496533),
('q4HOX4gWGso04HVPt5XT25PJKD0RfQSfxk6ztdv7', NULL, '43.133.129.213', 'curl/7.64.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGhvelpxTm0xYXdUcjN1YTROVjZobVRSc0Vwbjh5S0Uxb0JNUlRMMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718368555),
('QP9VSPh2qZDSPOxzynkjnDXMeA34Mzimb69KO6ht', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieUo1WExIOVBqNWxJY1JVWU1KY0pEaHNOSVpDczMxc1hwUGM2ZlVsOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289325),
('QrdSznfNRs25r1FZEURmN74pD4YRjoALOffAQ5ch', NULL, '45.83.64.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0J0RG5Eb1BacUd3V1dJMWllSUh4WkFaSVM3SFRWSHR4U2hNQVZDbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718483048),
('qTtQmDktHg7LbpitLajRKwvPJmVoYnZnttYihh0n', NULL, '115.231.78.12', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialdiSVNTbDUwUFZwV2FnQ1lObTVjaXhKMEZrUFNFd3hFb1ZQV0xtayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718389064),
('rFwRCa766kr7BHpzS1X4wClDB5Pncveo3WHIKPjp', NULL, '46.174.191.30', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlJRdGx2Z0pPd05BRFhUWElnQXFLM1hEY0VicVB2amdnbUc2TndYTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718386746),
('rL0Ra0LwnLVX7ELLrugDZ4JDQt4nvtZwynk0NFBO', NULL, '2.58.56.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1Ewb1JkN0plR2hGRnNNemE0R0xKUkFVVzB4cDZ2QXYzVVVnSEJOZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718391899),
('rmPFKEEif5c8reZoEk3jQK76CHYZRQAS7uKSEfOT', NULL, '91.92.245.103', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQzZEdTRDZmdSRUFxUlgyN3NJblFiZDAwejRYQkp5SnB0T0dodmlMUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718336224),
('rxTUv1hDRrH3q8ZxWwdDO6u2fjxXKgGMeyRO7IxK', NULL, '34.78.228.189', 'python-requests/2.32.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVdDd3RZNXpQNXBKVHhiR09WRGl1WVI2bE1UQkhabHEzajlibzgzTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718274124),
('S0xy4JoYSwvhT0H37vjD4xXjrVBbkDWBzJmjuqvr', NULL, '205.210.31.215', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWVydENCT3Fsdkdodk1LTGppMzBxT1ZDaUNmcFJhQ0lYVFV1R3ZrOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718497235),
('SBSSvROmNKgBbd2aFL4imKglvr7xK93rMnMpzAqX', NULL, '205.210.31.72', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGlPY0htMXg5RlJTVTFid1NNUEhrNVZOUEVJenRWTGdhUG8yRG9nWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718405410),
('SqtOGY8fKJ6iVTYzMEFgmiSfhnRXXwFW8Rnyc3B7', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRTNGY1hJb0FHOWJkOGw4TTZaMkJGR3gxZTJUS1p6T1doSGVKeHlBSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718451646),
('swM97BoMdaepVFVMUfcfbiEwiKrohCOv0y6VrG51', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGxGN1BBZVFBV0lFbTVwQ0Zka3NFTEpwcG5aTXVqaTNRTGhCN211NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289319),
('t0qQqQSRuluBfY8dejlPwHQTCgUbJOJUcpt77L1T', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWNoRlJaMVVsVG9BM2hMaU44azR2bWd2NjVBTVBLOU5udjhhV0ZrWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718383088),
('TprAaZLFP4PFKe100x0zpimffl6Mvhl35bZD1MWU', NULL, '45.156.128.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUMwSVpMMHRJMHZsZnVISmNnUnFWZFpBbHJXZEM3YXY3N2xhOHU1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718403082),
('txagg8dXOBcN9JrY7tuvLH2XVlg0lgXDRXAyD98i', NULL, '91.92.247.105', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT0FIZ0lYRHpPVk5hbWU5TG5uQm4xYU5ZdHhrZ3JQVDFHeDF3UnViZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718289320),
('tZCrZJ6Gfwfi7IV9jUf0lyaeWO6IkGmAmdfLhhdo', NULL, '46.174.191.32', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemt2RnNEMDlhM2tXY1pYZXU2UlI1Y1ZQM2tUZmRNN3NMb1l5VER1YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718498858),
('U9bCI0qTg6AmzC1BZRZZzOlu6ANgTj4sNt7GazUt', NULL, '61.3.94.241', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWncyOXVNczB2R3pQVXF6ellxcmI0MjRIeG0ySVJnTmx6aG1XSEQyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718260868),
('uD5k8gmQF7Rvgis9sAouVtpSjuo61EKfgk4n5CoU', NULL, '83.97.73.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDF0a3hYeVA5MkxFeGw5R0Vza0RFSjh4Y0lwbFg5YlN1bm53WEVyayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP1hERUJVR19TRVNTSU9OX1NUQVJUPXBocHN0b3JtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718362902),
('ujcJ60dJuwadgfnspHCfiTdJ2BUCQmmafcr313KC', NULL, '167.94.146.58', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3R5R1JqZXZQTjFFQmRIUzI3dEw0TVNBTjhwSGd4a0tvSHRqTWgxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718256606),
('UMIMbYdzP8UY4QynRmc3HYG4sz88yBIkbDIPuD9A', NULL, '157.245.105.107', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2Rmalk3NVF3TlFGYVRsSVlWTUJ1Z3hic2Nha3lXTHpWZ212c09qMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718360721),
('uRwvydhREDlRZgH1Gn65BCvJ0IdJpFNRjTDjfzDa', NULL, '83.97.73.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3Qwak4wTEtxdHNrUlA2Nm1wSGtqdWVuQXJ2YjVMaDdGcFdYcEJXdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly82NC4yMy4xNTMuMjgvP1hERUJVR19TRVNTSU9OX1NUQVJUPXBocHN0b3JtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718452018),
('v5BTnl61I8Wex5oiffu783sMKQ4yQWoj4QlppjdK', NULL, '45.156.130.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDIzSDNPUmUwdm11UWNwZkRPeUtXd0g5SFFLS0QzTFZtb0FwMGF2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718456919),
('VI7dOuOtFTD9n7bVs42gaDtxHeQgYjinfUacXI9w', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVDA4S1d3R3I2aFBjMDdkRlFmdnRhT3RXVGlHNks0UDhpMmhpOFhvYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718270953),
('vNdUt9VaMQftsQ1DVzQE1relRvRxcWAm2BvdqqUX', NULL, '147.185.132.30', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGRzb2ExejllU1F3SzlmVEF4TU1zYU45MFZORnFkb25UN1d2SllLRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718260310),
('vwq9b2OimTDZOSjeazaNH4x1Wi4UFKWch4JMMmmM', NULL, '191.37.248.54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEk5Q01LWEhqdVZab0ZoWlZnc2dEVVhWaURQcEMwekMxT3hzV0IxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718411508);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('w3UqYOdQ4dLybz2O4EgEVZxCHlqqLtGWw4BdS1wx', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDZ0NFR2ZFdtVGFsUnNIRFY5WVZVOFRIQWRSN0dGWUtQQVBSeG5sZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718327461),
('wF8t4ahQrzUX0Y7xU6p8XBKz7i96oZvIAheaFw8W', NULL, '104.152.52.214', 'masscan/1.3 (https://github.com/robertdavidgraham/masscan)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlhFZ3RRSVgwUHNnZDVZeXNhS3Q4WVNhN0pWd0lMb1JjT25ObEZFaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718502430),
('wHOtRSSR216DpwEa2E5L08it1XYcyO43xTEcK9ab', NULL, '162.216.149.207', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZldWdEZZNktCaWRrb0xqeU03ekZrVDV5a0NzcGNoTkptY2g5SkYzWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718336846),
('WR5M5GTfLL71XZlTTToWs37QOPBuxKqHJYnCBfTm', NULL, '35.203.210.151', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibk5jejhuRHpmQUg2UkZJOVFxd3JjWXpkcHVveXNLR1ZMcW1INjVMMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718350032),
('xDtxrHrqJTWhFvWRA6aafTcL9qZAjMjERScyD3kX', NULL, '34.79.162.186', 'python-requests/2.32.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2N1Y055QUpQOTJvcDBodmxRSjBXajl5eTI3bElBMFNBc1Z6N25FaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718412817),
('xnuTHKr8PgpSJeP3WHboIOoep5wkO0QA2abVT8lp', NULL, '167.94.145.98', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm5nTnFndWR4dVAwN1NoZ0JBT0RJa1NNWHB6UEdJMUk0dW9XNmZFZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718406683),
('y8CXtvnJ7THFTg2RlIQJWoEzG36H4sz3GXx5wOct', NULL, '185.242.226.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEtTcjFqN0ZtMHBab2gwUVVqblJEQmtlTU03MDd4SVlqZ0N0TE1WcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718501157),
('YocQe2MjHuIDC6SUCl5ZzRUruDjKzXJJTpBcSjIA', NULL, '165.154.59.168', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclNMbENYZkpHRnB4VXlvWkYwSkpNSElKRERPZU5xaHJwSkx5RGNqcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718376524),
('YOS0fIhTBYKFdwivyOcAKPCEtP62CeEHkKJe7uWC', NULL, '45.156.128.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjJsbzRoSVRHOHNmNUVaRTYyOW9RbVdTNWNnNTF6Tm5pbGZ4cHZLUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718403080),
('yOTvUEJc5peO5lpMuD9bi5yigOVYbDXoO8BQrncx', NULL, '139.144.52.241', 'curl/7.54.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTFk1MHA0dDFnWFhESkt4ZTU3WEQ5Uk5GcDJnMTVweVhIeTVIajRSTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718438836),
('Yqxs4Dnbpr8kpkIcThrcnDzMHsVELdqcOzVY5285', NULL, '104.234.204.106', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/11.0.5.850 U3/0.8.0 Mobile Safari/534.30', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidTZsSDBwUlpBbGNnbDc2eThaTzhBbE04RXh1SERlcjN6Z3lMN203UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718322260),
('yRDPnBgtsi70SmRqSuocmeJxAKsHcLBN1dRTiWwp', NULL, '147.185.132.49', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGxHbldNY3hWT3U2N0FZemdROFp3Q1R0cVBVNXpyaHg1dWd5RHlHeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMC40OC4wLjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718312078),
('ythPHJXcaUrSBAIXy52tp8f3knvuIzzCuCmtGWha', 4, '187.136.2.67', 'Mozilla/5.0 (X11; Linux x86_64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaFNxaVl1ajlTMFNITEpEZ2VUNVJaOGRWTGZVR0xmZlZlbnNlNDFpMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly82NC4yMy4xNTMuMjgvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9', 1718503692),
('YvBN7fRJ339rUJpxR8swBylx6LPH4xwmwbYhjtnW', NULL, '139.144.52.241', 'curl/7.54.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWMxZkllYzB2ZndwSUJHelByZWlFTWFScVZhUzFhQjJEOUd6UHlPdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718438835),
('ZewFVgyn6Zt4AdeJfJoWdgR51sEl1tv50pVpbTQC', NULL, '167.94.146.58', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRERqZmI4MjA3MHJJQmhKQVhFSEFPMGhZSGh6RTg5b1hEVUNoanRGSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718256602),
('ZPmZ5ogJE46YKw6LD87hMwFRlh7ghsq8xUPDgDBy', NULL, '45.156.128.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXRibkJ4aTZpMmZ0SDNRSHpHSTVka1BKamx6djlUNkpRWHRrMlBybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718402866),
('ZTY8Hy02YlktujhEzJ4YzehcQh48MDY5GNY3sY2m', NULL, '157.245.105.107', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA291782) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1075.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3hOTUlEVVRhSUIwcWZDTHlFTjRmeFZxWFplTzdKQnlnMzRFcTh0VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly82NC4yMy4xNTMuMjgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718360722);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asies', 'asies@gmail.com', NULL, '$2y$12$EV1P8hMF0Gh1iXg6I1EIkudTxFpNJ7H8ZaID/pJnXWWLzFG8Eah3C', NULL, '2024-05-29 04:01:55', '2024-05-29 04:01:55'),
(2, 'asies', 'asies1@gmail.com', NULL, '$2y$12$esgmE7yX0Tfo6vTJHA7aeesRGSgPCPEPe//N9owcliecMDHHavuGG', 'YW33jDTXaYuy6C2hWIUkaD3hXY3pgFVsscgJ3sCsGq2PnoFMr34Ci5cYUaqJ', '2024-05-29 04:07:58', '2024-05-29 04:07:58'),
(3, '1', '1@gmail.com', NULL, '$2y$12$7.7lizwXqMPHUu4eVcuCaujJAvTkSZU/ZPDo2DIAlMlpZ51FUERJO', NULL, '2024-05-31 01:36:45', '2024-05-31 01:36:45'),
(4, 'bearbearbearbear', 'bearbearbearbear@gmail.com', NULL, '$2y$12$c/e4V26R34vRDu22mKwkse7JMnikEWoulAVHloY/vZ0RXAA7bX3PS', NULL, '2024-06-05 07:18:23', '2024-06-05 07:18:23');

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
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`),
  ADD KEY `sales_client_id_foreign` (`client_id`);

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
  MODIFY `cat_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
