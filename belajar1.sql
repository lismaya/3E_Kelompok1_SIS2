-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 09:54 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar1`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telpon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Kasimah', '087654678987', 'Jombang', '2019-08-26 22:48:01', '0000-00-00 00:00:00'),
(2, 'Marsudi', '085607543657', 'Surabaya', '2019-08-26 22:48:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'A111', 'Matematika', 'ganjil', 1, '2019-08-22 03:21:00', '0000-00-00 00:00:00'),
(2, 'B111', 'Bahasa Indonesia', 'ganjil', 1, '2019-08-22 03:21:00', '0000-00-00 00:00:00'),
(3, 'C111', 'Agama Islam', 'ganjil', 2, '2019-08-26 04:16:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 85, '2019-08-22 03:22:11', '2019-08-28 03:26:03'),
(2, 3, 2, 75, '2019-08-22 03:22:11', '0000-00-00 00:00:00'),
(3, 4, 1, 65, '2019-08-22 03:35:40', '0000-00-00 00:00:00'),
(4, 4, 2, 70, '2019-08-23 10:54:37', '2019-08-23 17:54:37'),
(5, 5, 2, 95, '2019-08-23 10:55:25', '2019-08-23 17:55:25'),
(6, 5, 1, 65, '2019-08-23 11:06:04', '2019-08-23 18:06:04'),
(9, 6, 3, 85, '2019-08-25 21:43:02', '2019-08-26 04:43:02'),
(10, 3, 3, 95, '2019-08-26 16:25:17', '2019-08-26 23:25:17'),
(11, 6, 1, 95, '2019-08-26 16:55:12', '2019-08-26 23:55:12'),
(12, 7, 1, 75, '2019-08-26 16:56:09', '2019-08-26 23:56:09'),
(13, 7, 2, 80, '2019-08-26 16:56:18', '2019-08-26 23:56:18'),
(14, 10, 1, 85, '2019-08-26 16:56:42', '2019-08-26 23:56:42'),
(15, 10, 2, 80, '2019-08-26 16:56:51', '2019-08-26 23:56:51'),
(16, 10, 3, 95, '2019-08-26 16:57:03', '2019-08-26 23:57:03'),
(17, 15, 1, 65, '2019-08-26 16:57:34', '2019-08-26 23:57:34'),
(18, 15, 2, 70, '2019-08-26 16:57:44', '2019-08-26 23:57:44'),
(20, 7, 3, 95, '2019-08-26 16:58:12', '2019-08-26 23:58:12'),
(21, 6, 2, 95, '2019-08-26 16:58:37', '2019-08-26 23:58:37'),
(22, 5, 3, 90, '2019-08-26 16:59:00', '2019-08-26 23:59:00'),
(23, 4, 3, 95, '2019-08-26 16:59:21', '2019-08-26 23:59:21'),
(24, 16, 1, 80, '2019-08-27 10:06:02', '2019-08-27 17:06:02'),
(25, 16, 2, 90, '2019-08-27 10:08:20', '2019-08-27 17:08:20'),
(26, 11, 1, 80, '2019-08-27 19:59:54', '2019-08-28 02:59:54'),
(27, 11, 2, 75, '2019-08-27 20:00:46', '2019-08-28 03:00:46'),
(28, 12, 1, 65, '2019-08-27 20:07:47', '2019-08-28 03:07:47'),
(29, 12, 3, 85, '2019-08-27 20:13:59', '2019-08-28 03:13:59'),
(30, 13, 2, 70, '2019-08-27 20:14:32', '2019-08-28 03:14:32'),
(31, 13, 3, 90, '2019-08-27 20:15:50', '2019-08-28 03:15:50'),
(32, 14, 1, 90, '2019-08-27 20:17:17', '2019-08-28 03:17:17'),
(33, 14, 2, 85, '2019-08-27 20:19:50', '2019-08-28 03:19:50'),
(34, 12, 2, 85, '2019-08-27 22:20:31', '2019-08-28 05:20:31'),
(35, 15, 3, 100, '2019-08-28 00:48:08', '2019-08-28 07:48:40');

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
(3, '2019_08_15_074157_create_siswa_table', 1);

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
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 0, 'Salma', 'Imania', 'P', 'Islam', 'Jombang', 'user4.png', NULL, '2019-08-21 09:16:05'),
(10, 0, 'Hanum', 'Febriani', 'P', 'Islam', 'Jombang', NULL, '2019-08-21 10:05:55', '2019-08-21 10:05:55'),
(11, 11, 'Dhina', 'Rohmawati', 'P', 'Islam', 'Jombang', NULL, '2019-08-27 19:52:29', '2019-08-27 19:52:29'),
(12, 12, 'Kinanti', 'Kumalasari', 'P', 'Islam', 'Surabaya', NULL, '2019-08-27 19:54:02', '2019-08-27 19:54:02'),
(13, 13, 'Taufik', 'Arifin', 'L', 'Islam', 'Sidoarjo', NULL, '2019-08-27 19:54:57', '2019-08-27 19:54:57'),
(14, 14, 'Inola', 'rahma', 'P', 'Islam', 'Surabaya', NULL, '2019-08-27 19:57:09', '2019-08-28 00:46:36'),
(15, 15, 'Rahmad', 'Kurniawan', 'L', 'Islam', 'Sidoarjo', NULL, '2019-08-27 19:57:59', '2019-08-27 19:57:59'),
(19, 19, 'Sitis', 'Rohmania', 'P', 'Islam', 'Surabaya', 'user4.png', '2019-08-28 00:39:35', '2019-08-28 00:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Ajeng', 'ajengtri@gmail.com', NULL, '$2y$10$rsFP7ZLkYq54Na2xqF1yPeA0r94sSEPynY1B/TESkOSTzZscr8b0e', 'swRe40fvdmgXAzUoLXe1ledUIboDJDbNQhbFOJVJ4ukgRdkF86DcfOS5AXDW', '2019-08-21 01:06:18', '2019-08-21 01:06:18'),
(5, 'siswa', 'Yunita', 'yunitaira@gmail.com', NULL, '$2y$10$OG/nnmjcGWuELE3qVE64Gu0GWGV15cAdsXPCRGR8AimAb7HVFddZS', 'z7Ed5JMb1jT8C9eTsP5PjsfZwoGGyQzCqkLW1FAtaDmG0JDYh5owQZx4rOP9', '2019-08-21 23:35:47', '2019-08-21 23:35:47'),
(7, 'siswa', 'Mahmud', 'mahmud@gmail.com', NULL, '$2y$10$18VCrRqUwk/Wi8uvhtzlTu47ZZ0c3v7GYKsLXbOMB3/9.YCm0YfDm', '7z7xRADYw0XY0AwpSD1BRPbTGtRKKrtX9gSArseCfehjOk0Tg7YWdc16YtcQ', '2019-08-23 08:49:26', '2019-08-23 08:49:26'),
(9, 'siswa', 'Najwa', 'najwa@gmail.com', NULL, '$2y$10$KHpvBflX2zzAg1U2UrEKfej55JZfUFkwfUFB2jOp/bB22BjQNbdK2', 'uOqhjyI2YDCz1y2of3mjopLEXmxILmSGyXZ94GjtaE9LNbo2CevKzBpNqKMu', '2019-08-23 09:25:18', '2019-08-23 09:25:18'),
(10, 'siswa', 'Dhina', 'dinarohma@gmail.com', NULL, '$2y$10$zJjoesA7s9SSTLJluoivI.gnlIm1vCqW41DfeDQ/lQzhy4cRw.tEW', 'xWCNzh6QiZCMnTRLjo6EVLvHn4LmF35JxiestnvboM6Hb2dz1L4HqUHCuWpM', '2019-08-27 10:03:05', '2019-08-27 10:03:05'),
(11, 'siswa', 'Dhina', 'dhinarohma@gmail.com', NULL, '$2y$10$awmGgaMAfi7nPLeDNClkTu26uCDaFqg6trdi9KzgqMaG0l4zI1rNu', 'ndIoHA7MaTJG5HyxPJh5zkOyHveHvTdWGeP1ioDKHOMljN1u2qqUELyec60x', '2019-08-27 19:52:28', '2019-08-27 19:52:28'),
(12, 'siswa', 'Kinanti', 'kikinanti@gmail.com', NULL, '$2y$10$ENmw.YJgn0Tm.kaGsN4iDenyT8gXlL793i9xUpgO61SExEt7Us0xm', 'yiIYIGCUImdFjyZbVaSpTHFvJfxawdOQt2SKWvncO0hgcDb4NATej5ruCoWq', '2019-08-27 19:54:02', '2019-08-27 19:54:02'),
(13, 'siswa', 'Taufik', 'taufik12345@gmail.com', NULL, '$2y$10$U4kjlRlvWZK4OtfyqNicCOuecGf3rBYHHTLSBRk2OsSxGk1Pn6yty', 'mRqADwwfpStn30wRB3XSKL7EavPFnpx5nkrcNCscoxBfza6W7HAkF5fYkycG', '2019-08-27 19:54:57', '2019-08-27 19:54:57'),
(14, 'siswa', 'Inola', 'inolawieke@gmail.com', NULL, '$2y$10$rnyHuDBbwSsjg8aLZYTBBO7QGsTap1lYrRIfMaMr3JymQeaU9kyoq', '2Ci4lWQA7Dl2BDx5K4rp1kwZjlPmc96yLwZcmgaZ882tiI3eeRRKbaJcHJQ1', '2019-08-27 19:57:09', '2019-08-27 19:57:09'),
(15, 'siswa', 'Rahmad', 'rahmadkr@gmail.com', NULL, '$2y$10$dxUO2PXUmybRs0zPlqGG9edePw7HPntxSM0mm2MpJjRw37KToIghW', 'LXqpGyMD6Tdht60iCdzulprKl6HN3no2pNg5GfQMNHcGno0x6vRX66QBsBwQ', '2019-08-27 19:57:59', '2019-08-27 19:57:59'),
(16, 'siswa', 'Selviana', 'selvirosa@gmail.com', NULL, '$2y$10$tVCq3LaDF.Z3qcV6TU4.AO2rk2LglazmKsZMxmXcOYw.xxnoDHZLm', 'afMaj2uHCkH4bunLUXhlm9cmtjFL0vPzdslt4QQoZGsq2gqhrgkiCRK11gPH', '2019-08-27 19:58:51', '2019-08-27 19:58:51'),
(17, 'siswa', 'Analia', 'analiarida@gmail.com', NULL, '$2y$10$rDicG1P5RNve3ZZ9oZZJS.UcwFdHffHfu8ZO1H96E8VIrjXSdQmyy', '16sOUja8WC7PJ6hy6Dh6CJaacNI4XvwEWpLDsoWdsYJ0fYAWf4M8NPsqeq17', '2019-08-27 23:42:08', '2019-08-27 23:42:08'),
(18, 'siswa', 'Sitis', 'sitirohmania@gmail.com', NULL, '$2y$10$rkMgq.aWWEi4Rc49gCBGqO1trFpSk9QKVqEspPudp8TFoDbgNVER2', 'cJ3p6aSLrI19dTYN767szimdK2L6GutapYutzhW0spmTwvIIWUn5bM5sL0iR', '2019-08-28 00:32:32', '2019-08-28 00:32:32'),
(19, 'siswa', 'Sitis', 'sitirohmania123@gmail.com', NULL, '$2y$10$Cu3krOlJeiY1xTWZnkJ21OVxvLUFGJPQoDYKdkPxldhrKcDHoWZSa', '3241zSvxo9vCAppnpjpyzIJezuiUxWoyQPW6nkAW3SUpmQau0ynaC1zsTKVd', '2019-08-28 00:39:35', '2019-08-28 00:39:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
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
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
