-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 03:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_approvals`
--

CREATE TABLE `admin_approvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_name` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `rent_date` date NOT NULL,
  `car_details` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approvals`
--

CREATE TABLE `approvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_name` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `rent_date` date NOT NULL,
  `car_details` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_users`
--

CREATE TABLE `block_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_services`
--

CREATE TABLE `car_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sit_number` int(11) NOT NULL,
  `car_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_buy_date` date NOT NULL,
  `car_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_price` int(11) NOT NULL,
  `car_owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `car_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_10_171323_create_users_table', 1),
(4, '2022_10_20_125004_create_approvals_table', 1),
(5, '2022_10_20_125115_create_block_users_table', 1),
(6, '2022_10_20_125229_create_notices_table', 1),
(7, '2022_10_20_125301_create_rent_histories_table', 1),
(8, '2022_10_20_125335_create_rent_messages_table', 1),
(9, '2022_10_20_125440_create_rent_posts_table', 1),
(10, '2022_10_20_125511_create_users_table', 2),
(11, '2022_10_20_130407_create_admin_approvals_table', 2),
(12, '2022_10_22_135127_create_car_services_table', 2),
(13, '2022_11_05_213513_create_video_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_date` date NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_histories`
--

CREATE TABLE `rent_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renter_name` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `rent_date` date NOT NULL,
  `car_details` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_messages`
--

CREATE TABLE `rent_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_date` date NOT NULL,
  `m_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_posts`
--

CREATE TABLE `rent_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poster_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` date NOT NULL,
  `post_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `dob`, `gender`, `phone_number`, `address`, `nid_number`, `dl_number`, `password`, `pp`, `type`, `block_status`, `created_at`, `updated_at`) VALUES
(4, 'Max', 'Payne', 'jawad123', 'mp3@gmail.com', '2022-12-07', 'Male', '01786492383', 'Niketan, Gulshan', '21231234', '1434353245', '$2y$10$mABpjmMm37BU9POW1xOF1uwKOFC65L9s0Etno5Pw03h9izFBdWiLy', '1670429719.png', 'Renter', 0, '2022-12-07 10:15:19', '2022-12-07 10:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `video_posts`
--

CREATE TABLE `video_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uploader_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploader_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `v_post_date` date NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_posts`
--

INSERT INTO `video_posts` (`id`, `uploader_name`, `uploader_type`, `uploader_id`, `v_post_date`, `video`, `created_at`, `updated_at`) VALUES
(1, 'Mansiv', '', 1, '2022-11-08', '1667889169.mp4', '2022-11-08 00:32:49', '2022-11-08 00:32:49'),
(2, 'elusive', '', 2, '2022-11-08', '1667889389.mp4', '2022-11-08 00:36:29', '2022-11-08 00:36:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_approvals`
--
ALTER TABLE `admin_approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals`
--
ALTER TABLE `approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_users`
--
ALTER TABLE `block_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_services`
--
ALTER TABLE `car_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rent_histories`
--
ALTER TABLE `rent_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_messages`
--
ALTER TABLE `rent_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_posts`
--
ALTER TABLE `rent_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_posts`
--
ALTER TABLE `video_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_approvals`
--
ALTER TABLE `admin_approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approvals`
--
ALTER TABLE `approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `block_users`
--
ALTER TABLE `block_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_services`
--
ALTER TABLE `car_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_histories`
--
ALTER TABLE `rent_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_messages`
--
ALTER TABLE `rent_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_posts`
--
ALTER TABLE `rent_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video_posts`
--
ALTER TABLE `video_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
