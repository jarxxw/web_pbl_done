-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2025 at 09:13 AM
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
-- Database: `tekom2bweb`
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
-- Table structure for table `checkins`
--

CREATE TABLE `checkins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `identity_number` varchar(255) NOT NULL,
  `jam_checkin` timestamp NULL DEFAULT NULL,
  `status` enum('valid','invalid') NOT NULL DEFAULT 'valid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `event_date` datetime NOT NULL,
  `venue` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `capacity` int(11) NOT NULL,
  `available_tickets` int(11) NOT NULL,
  `status` enum('upcoming','ongoing','completed','cancelled') NOT NULL DEFAULT 'upcoming',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `image`, `event_date`, `venue`, `city`, `type`, `price`, `capacity`, `available_tickets`, `status`, `created_at`, `updated_at`) VALUES
(17, 'SunPlay Festival', 'Bersiaplah untuk merasakan serunya festival musim panas dalam Sunplay Festival, sebuah perayaan penuh warna, musik, dan kegembiraan! Mengusung konsep outdoor yang fun dan fresh, festival ini menghadirkan berbagai aktivitas yang memadukan hiburan, kreativitas, dan energi positif di bawah hangatnya sinar matahari.', 'images/1750527893_WhatsApp Image 2025-06-21 at 23.40.33.jpeg', '2025-06-24 01:44:00', 'Hotel Mercure', 'Padang', 'Konser', 85000.00, 100, 100, 'upcoming', '2025-06-21 10:44:53', '2025-06-21 10:44:53'),
(18, 'Soundwave', 'Soundwave adalah sebuah event musik yang memadukan energi, kreativitas, dan pengalaman audio-visual yang mengguncang. Dibuat untuk para penikmat musik sejati, event ini menghadirkan penampilan dari musisi, DJ, dan performer terbaik yang siap menggetarkan panggung.\r\n\r\nNikmati suasana malam penuh cahaya, dentuman bass, dan atmosfer yang tidak terlupakan. Soundwave bukan hanya tentang musik, tapi tentang koneksi, ekspresi, dan kebebasan dalam setiap gelombang suara yang mengalir.', 'images/1750527935_WhatsApp Image 2025-06-21 at 23.40.31.jpeg', '2025-06-28 03:00:00', 'Hotel Pangeran', 'Padang', 'Konser', 85000.00, 100, 100, 'upcoming', '2025-06-21 10:45:35', '2025-06-21 10:45:35'),
(19, 'Aloha', 'Event ALOHA adalah sebuah perayaan penuh warna dan keceriaan yang menghadirkan suasana khas Hawaii ke tengah-tengah kita. Dengan dekorasi bunga tropis, iringan musik ukulele, dan berbagai aktivitas menarik, event ini mengajak semua orang untuk merasakan hangatnya semangat ALOHA.\r\n\r\nNikmati serangkaian acara seru seperti parade busana Hawaii, pertunjukan tari hula, lomba permainan khas pantai, workshop membuat kalung bunga, hingga food festival bernuansa tropis. Tersedia juga photo booth tematik dan doorprize menarik bagi pengunjung yang hadir dengan kostum terbaik!', 'images/1750527984_WhatsApp Image 2025-06-21 at 23.39.32.jpeg', '2025-07-01 01:00:00', 'Hotel Pangeran', 'Padang', 'Konser', 65000.00, 100, 100, 'upcoming', '2025-06-21 10:46:24', '2025-06-21 10:46:24'),
(20, 'AfterGlow', 'Afterglow adalah sebuah event yang dirancang untuk merayakan keindahan senja dan ketenangan malam yang mulai datang. Dalam balutan cahaya temaram dan suasana hangat, Afterglow mengajakmu untuk menikmati detik-detik akhir hari dengan musik, cahaya, dan kebersamaan yang syahdu.\r\n\r\nDengan penampilan musik akustik, ambient lighting, dan area santai penuh kehangatan, Afterglow adalah tempat sempurna untuk melepas penat, merenung, dan merayakan perjalanan yang telah dilalui.', 'images/1750528022_WhatsApp Image 2025-06-21 at 23.39.31.jpeg', '2025-07-05 04:00:00', 'Hotel Pangeran', 'Padang', 'Konser', 95000.00, 100, 100, 'upcoming', '2025-06-21 10:47:02', '2025-06-21 10:47:02'),
(21, 'MEET WITH ROSSI', 'w', 'images/1750551514_Screenshot 2025-04-14 093546.png', '2025-06-22 07:17:00', 'Hotel Pangeran', 'Padang', 'Seminar', 95000.00, 100, 100, 'upcoming', '2025-06-22 00:18:34', '2025-06-22 00:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `event_organizers`
--

CREATE TABLE `event_organizers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_organizers`
--

INSERT INTO `event_organizers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Pelaminan Indah Mekar', 'indahmekar@gmail.com', '081678786589', 'Kota Payakumbuh', NULL, NULL);

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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2024_03_19_create_events_table', 1),
(5, '2024_03_19_create_tickets_table', 1),
(6, '2024_03_20_create_rfid_cards_table', 1),
(7, '2024_06_09_000000_create_ticket_orders_table', 1),
(8, '2025_05_15_211935_create_sessions_table', 1),
(9, '2025_05_15_212358_add_role_to_users_table', 1),
(10, '2025_06_02_160121_add_qrcode_to_ticket_orders_table', 2),
(11, '2025_06_17_053608_create_checkins_table', 2),
(12, '2025_06_21_032827_create_event_organizers_table', 3),
(13, '2025_06_21_180849_add_event_id_to_checkins_table', 4),
(14, '2025_06_21_184443_create_checkins_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `rfid_cards`
--

CREATE TABLE `rfid_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('PTE9qwEJEVxzRM0yv0EUvXN5SMvIn9kAKQaooHge', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXcycjZnc1JNbnh2dnRqOUJTckZXMXJDcEp0a0kwajVudVhjd0ZiRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi90aWNrZXRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1750576111);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_code` varchar(255) NOT NULL,
  `buyer_name` varchar(255) NOT NULL,
  `buyer_email` varchar(255) NOT NULL,
  `buyer_phone` varchar(255) NOT NULL,
  `identity_type` varchar(255) NOT NULL,
  `identity_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('pending','paid','used','expired','cancelled') NOT NULL DEFAULT 'pending',
  `payment_proof` varchar(255) DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_orders`
--

CREATE TABLE `ticket_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `identity_type` varchar(255) NOT NULL,
  `identity_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `identity_type` varchar(255) DEFAULT NULL,
  `identity_file` varchar(255) DEFAULT NULL,
  `rfid` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `name_eo` varchar(100) NOT NULL,
  `jobdesk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `identity_type`, `identity_file`, `rfid`, `remember_token`, `created_at`, `updated_at`, `jenis_kelamin`, `name_eo`, `jobdesk`) VALUES
(1, 'Fathurrahman Al Hafiz', 'admin@gmail.com', NULL, '$2y$12$zJfNOn9r1yLb5NSowQ2Are4IWLzTvlPBNVuGWfi8r0MPJODvJXZ6G', 'admin', 'KTP', 'identity_files/68576d818f3c4.png', '2345678989', NULL, '2025-05-21 21:33:51', '2025-06-22 06:56:24', 'Laki-Laki', 'Andalas Enam Tiga', 'angkat piring'),
(2, 'bagas', 'superadmin@gmail.com', NULL, '$2y$12$yFdLbGrm7dkcEOJsRe9U8.M5T785KzP7CdqzS8yY7fEFEnwTgo322', 'superadmin', NULL, NULL, NULL, NULL, '2025-05-21 21:33:51', '2025-05-21 21:33:51', '', '', ''),
(3, 'Dimas Erlangga', 'dimasgagah@gmail.com', NULL, '$2y$12$xPQe17Pu5IQwbrvdbLXLR.xGFalQXXJjwbXSrjPnwyt0X0PWloypG', 'admin', 'KTP', 'identity_files/685478621b950.png', '2345678989', NULL, '2025-05-22 11:16:08', '2025-06-22 06:55:57', 'Laki-Laki', 'Arvindo Bangun Mulia', 'angkat kursi'),
(5, 'Mohd. Fajar Ardian', 'mrfajarauto@gmail.com', NULL, '$2y$12$40ZfpYUenvCAu1JIsrzCG.X0vl59a/bTOH21Nsqe3HGrlrTycl56q', 'admin', 'KTP', 'identity_files/68576d4059040.png', '2345678989', NULL, '2025-06-19 13:02:20', '2025-06-22 06:58:25', 'Perempuan', 'Schoot Project', 'angkat kursi'),
(6, 'Bagastyan', 'ridwan@gmail.com', NULL, '$2y$12$riSJc2yK6ZFlhyBdnIjWA.btDr9V2VscGInmSwz6gg/6VN2tbZqtu', 'admin', 'KTP', 'identity_files/685636b3a5d0c.png', '2345678989', NULL, '2025-06-20 21:36:03', '2025-06-22 06:57:02', 'Laki-Laki', 'Serba Creative Production', 'angkat piring'),
(7, 'Ananda Devalino', 'ananda@gmail.com', NULL, '$2y$12$yt59qQmGBaEpjB/bYJcbWuVqL2rjnqC1I0J22JKywJaCT96eRJXJi', 'admin', 'KTP', 'identity_files/6857a979c6267.png', '234567898900', NULL, '2025-06-22 06:58:02', '2025-06-22 06:58:02', 'Laki-Laki', 'Serba Creative Production', 'angkat kursi');

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
-- Indexes for table `checkins`
--
ALTER TABLE `checkins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkins_event_id_foreign` (`event_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_organizers`
--
ALTER TABLE `event_organizers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_organizers_email_unique` (`email`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfid_cards`
--
ALTER TABLE `rfid_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rfid_cards_card_number_unique` (`card_number`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_code_unique` (`ticket_code`),
  ADD KEY `tickets_event_id_foreign` (`event_id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_orders`
--
ALTER TABLE `ticket_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qrcode` (`qrcode`),
  ADD KEY `ticket_orders_event_id_foreign` (`event_id`);

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
-- AUTO_INCREMENT for table `checkins`
--
ALTER TABLE `checkins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `event_organizers`
--
ALTER TABLE `event_organizers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rfid_cards`
--
ALTER TABLE `rfid_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_orders`
--
ALTER TABLE `ticket_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkins`
--
ALTER TABLE `checkins`
  ADD CONSTRAINT `checkins_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_orders`
--
ALTER TABLE `ticket_orders`
  ADD CONSTRAINT `ticket_orders_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
