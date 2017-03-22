-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2017 at 08:20 AM
-- Server version: 5.6.31
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuelaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_02_21_110923_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0c06b0082bc885e73499579ac33ee25feb3caa2def92f718ab805a92fea4e68fdcd1d116bdfac0d9', 1, 2, NULL, '[]', 0, '2017-03-22 02:03:48', '2017-03-22 02:03:48', '2018-03-22 07:48:48'),
('188028e6801e87c81d680cbf2644f106dcff3873925085f4aca0b1b35faeeb55195c55564a78b413', 1, 2, NULL, '[]', 0, '2017-03-22 00:53:21', '2017-03-22 00:53:21', '2018-03-22 06:38:21'),
('1dddc29943c955747e90c968e9a31e8fdb09e5e979566f570916046d4abf1f372e95f0dec07ab2b1', 1, 2, NULL, '[]', 0, '2017-03-22 01:15:55', '2017-03-22 01:15:55', '2018-03-22 07:00:55'),
('36805eba3a4cdfddc4eb853c835760fbd3afffabde9c03034a38279fb1e128d73677cb39b08b2d7c', 1, 2, NULL, '[]', 0, '2017-03-22 01:15:08', '2017-03-22 01:15:08', '2018-03-22 07:00:08'),
('553f0196da7461f9730a4dacdc3371698004aa8d86c834df3b0ac3f3bb6504d7cd30567e8f24e1dd', 1, 2, NULL, '[]', 0, '2017-03-22 02:30:58', '2017-03-22 02:30:58', '2018-03-22 08:15:58'),
('5ff44120924af1522584090500d1c0cf72705f8710fd2d6e943921c52338ebb3c036fe73227945c2', 1, 2, NULL, '[]', 0, '2017-03-22 02:30:36', '2017-03-22 02:30:36', '2018-03-22 08:15:36'),
('619a5b474093656cc14c4c32751fe3a1ad023e8595a85f44b5b987c02eec91a0c6d47eecd31ad65c', 1, 2, NULL, '[]', 0, '2017-03-22 02:24:39', '2017-03-22 02:24:39', '2018-03-22 08:09:39'),
('74d67c56e892a1ef4365ee39b6c5245db135ddc6617d91754df32c5ae36082843cf9119dbbbd6206', 1, 2, NULL, '[]', 0, '2017-03-22 01:23:54', '2017-03-22 01:23:54', '2018-03-22 07:08:54'),
('98c89d16ad7ff17101476c40fae65c45176280b1ff5277526971d6dd817487cf60116aaad8cebb75', 1, 2, NULL, '[]', 0, '2017-03-22 02:33:03', '2017-03-22 02:33:03', '2018-03-22 08:18:03'),
('ccfbc1866ed3b2c48ed29738472491db50a837eb03c0ceaacfefa6a53e5e5862a2a92a8273aa47da', 1, 2, NULL, '[]', 0, '2017-03-22 02:30:36', '2017-03-22 02:30:36', '2018-03-22 08:15:36'),
('cdb295242675fa246b66c71b117ee576c06b06d545347c4ddfdb36b45518848257c01eccbfcdf74b', 1, 2, NULL, '[]', 0, '2017-03-22 01:45:42', '2017-03-22 01:45:42', '2018-03-22 07:30:42'),
('ea4c3611219eedcccdadeb21f48f2a6811086fd4fb6f273c0b482cc500bc86761fe8dc6e9a4f0631', 1, 2, NULL, '[]', 0, '2017-03-22 02:16:43', '2017-03-22 02:16:43', '2018-03-22 08:01:43'),
('f5373533101e0ff7ad7c46d001307c54461f668cd2fb52f86040830299b2b72d643db0fee89d4491', 1, 2, NULL, '[]', 0, '2017-03-22 01:47:57', '2017-03-22 01:47:57', '2018-03-22 07:32:57'),
('ffe2f6158867a41ad7ceccf200a2df3613b87ffec61e8d757a05355d1dabd5775b665da9cf1e4936', 1, 2, NULL, '[]', 0, '2017-03-22 02:04:38', '2017-03-22 02:04:38', '2018-03-22 07:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5Ze5OKZFXJjMvIiByqTRmFhZhguF6XxpSFAr2Y16', 'http://localhost', 1, 0, 0, '2017-03-22 00:34:48', '2017-03-22 00:34:48'),
(2, NULL, 'Laravel Password Grant Client', '4EWHWKnMaMY4zO5LRekMLNUEDRkpfz6uSQi269sO', 'http://localhost', 0, 1, 0, '2017-03-22 00:34:48', '2017-03-22 00:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-03-22 00:34:48', '2017-03-22 00:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('1139b4968d5455aade91a2ffa75e1faa22db9e7221e4a29f20987b0670ecb40682457fde613e5ee1', '0c06b0082bc885e73499579ac33ee25feb3caa2def92f718ab805a92fea4e68fdcd1d116bdfac0d9', 0, '2018-03-22 07:48:48'),
('32dd2433bf31cada2e7ccbc5d231c30622f671482964d2b24a246defb817d0d2f948c80aea2bfb74', '36805eba3a4cdfddc4eb853c835760fbd3afffabde9c03034a38279fb1e128d73677cb39b08b2d7c', 0, '2018-03-22 07:00:08'),
('37e0ff79a3876c513d4db84b0e9f733417ef1ab1e4cb70f71beceaef79f7fabd8ef4d5d387ebc945', '5ff44120924af1522584090500d1c0cf72705f8710fd2d6e943921c52338ebb3c036fe73227945c2', 0, '2018-03-22 08:15:36'),
('60018ab4c821dbdfdc9111a181d7448bcf56f7958f9099e90825302f6e7a937d10ad0ad0cdecb96d', 'f5373533101e0ff7ad7c46d001307c54461f668cd2fb52f86040830299b2b72d643db0fee89d4491', 0, '2018-03-22 07:32:57'),
('7dbb1ebb30d9d236085c357cd040ce02f44ddd74b93aae861b518d119635f7062453aead38ee79a3', '98c89d16ad7ff17101476c40fae65c45176280b1ff5277526971d6dd817487cf60116aaad8cebb75', 0, '2018-03-22 08:18:03'),
('821f948275f3950144c697b4d9e499bd246c89b5b206bc2b18e507a81a94eae9d54d8b9d10a81320', 'ea4c3611219eedcccdadeb21f48f2a6811086fd4fb6f273c0b482cc500bc86761fe8dc6e9a4f0631', 0, '2018-03-22 08:01:43'),
('8c6a88d9db83df40a7dfeb5a88a64108d0b7ab47b3b2c590de0a5c76ad3779784cab36ca8cc7fffd', 'ffe2f6158867a41ad7ceccf200a2df3613b87ffec61e8d757a05355d1dabd5775b665da9cf1e4936', 0, '2018-03-22 07:49:38'),
('9de1645392b414bc529f105036d34a5bae61cb011601ce4f28d0ba26541159e843df4f7ce1848fb6', '74d67c56e892a1ef4365ee39b6c5245db135ddc6617d91754df32c5ae36082843cf9119dbbbd6206', 0, '2018-03-22 07:08:54'),
('b15bf6ef043397507ce102ee2a7d13763a39ea58ce4cfbeb8ad750d1d01fee0f078703e1da22ee28', '619a5b474093656cc14c4c32751fe3a1ad023e8595a85f44b5b987c02eec91a0c6d47eecd31ad65c', 0, '2018-03-22 08:09:39'),
('e09a402cf62e20b9471e9d911f8d8cf45c7816ac832c3fbee88ffa2a4c7416725411d2b9d59ae876', 'ccfbc1866ed3b2c48ed29738472491db50a837eb03c0ceaacfefa6a53e5e5862a2a92a8273aa47da', 0, '2018-03-22 08:15:36'),
('e55b3dda1b1df31aab1c4ec5735949a9f2063b84edbf8b1f11249e75c2c03437ff14a41968cacefe', 'cdb295242675fa246b66c71b117ee576c06b06d545347c4ddfdb36b45518848257c01eccbfcdf74b', 0, '2018-03-22 07:30:42'),
('f0f5bd44ba2fe3408e393ec9ad0d68d30fb9c121ff7fac46d9fa2b979506d3f222aa1e2948383f6b', '188028e6801e87c81d680cbf2644f106dcff3873925085f4aca0b1b35faeeb55195c55564a78b413', 0, '2018-03-22 06:38:21'),
('f21a415bb18f7ed8319ff57b8fb76126b300db86784b281ecf717c37413907e99c1edc79322d9dc3', '1dddc29943c955747e90c968e9a31e8fdb09e5e979566f570916046d4abf1f372e95f0dec07ab2b1', 0, '2018-03-22 07:00:55'),
('fdbfcfcd0677af9b3281a8485c246de6f0e8779b41ec2e604baefb455bf93a5ff52ce4fe883c8230', '553f0196da7461f9730a4dacdc3371698004aa8d86c834df3b0ac3f3bb6504d7cd30567e8f24e1dd', 0, '2018-03-22 08:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Javonte Carter', 'vbergstrom@example.net', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', '4Q5kQjN6C1', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(2, 'Mylene Lubowitz', 'mertz.adaline@example.net', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'qJQ2xM3Srv', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(3, 'Lempi Hoppe V', 'annie22@example.com', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'dLkyzqWR7D', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(4, 'Helga Parisian', 'swaniawski.mavis@example.com', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'N9dVyk68vk', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(5, 'Prince Hills MD', 'polly.sauer@example.net', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'mnEHqhhOpY', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(6, 'Justice Hodkiewicz', 'madams@example.com', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'xTvlfv3svD', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(7, 'Duncan Balistreri', 'molly71@example.com', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'stcppnn6V9', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(8, 'Miss Valentina Ryan Sr.', 'wlangosh@example.org', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', '1Sbz5YiWvt', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(9, 'Dr. Joe Hermiston III', 'thalia11@example.net', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', 'xSEyD15Nzx', '2017-03-01 11:22:37', '2017-03-01 11:22:37'),
(10, 'Chris Cruickshank', 'oral15@example.net', '$2y$10$8EUpknjvTiO8LDhHfDT7dOndRvAq7uhh4LB/F3cUCTqwHTZDNbSJO', '0ohpQhR3yr', '2017-03-01 11:22:37', '2017-03-01 11:22:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
