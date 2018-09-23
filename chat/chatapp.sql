-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 08:54 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `body` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `room_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'Hi Ahmed', '2018-05-13 17:53:54', '2018-05-13 17:53:54'),
(2, 1, 6, 'Hi Rama', '2018-05-13 17:54:25', '2018-05-13 17:54:25'),
(3, 1, 6, 'Hi yaser', '2018-05-13 18:51:36', '2018-05-13 18:51:36'),
(4, 1, 6, 'Hi My Love', '2018-05-13 19:14:50', '2018-05-13 19:14:50'),
(5, 1, 6, 'Hi Rama', '2018-05-13 19:18:49', '2018-05-13 19:18:49'),
(6, 1, 6, 'Hi ahmed', '2018-05-13 19:20:10', '2018-05-13 19:20:10'),
(7, 1, 6, 'hi hossam', '2018-05-13 19:24:56', '2018-05-13 19:24:56'),
(8, 1, 6, 'Hi medo', '2018-05-13 19:28:45', '2018-05-13 19:28:45'),
(9, 1, 6, 'Hi Mito', '2018-05-13 19:31:18', '2018-05-13 19:31:18'),
(10, 1, 6, 'Hi Fatama', '2018-05-13 19:34:59', '2018-05-13 19:34:59'),
(11, 1, 6, 'Hi Taher', '2018-05-13 19:36:31', '2018-05-13 19:36:31'),
(12, 1, 6, 'khikhgi', '2018-05-13 19:38:10', '2018-05-13 19:38:10'),
(13, 1, 9, 'Hi yaser', '2018-05-14 11:30:01', '2018-05-14 11:30:01'),
(14, 1, 9, 'Hi yaser', '2018-05-14 12:07:28', '2018-05-14 12:07:28'),
(15, 1, 9, 'Hi Moni', '2018-05-14 12:08:59', '2018-05-14 12:08:59'),
(16, 1, 9, 'Hi ahmed', '2018-05-14 13:41:59', '2018-05-14 13:41:59'),
(17, 1, 9, 'hi salah', '2018-05-14 13:45:56', '2018-05-14 13:45:56'),
(18, 1, 9, 'ooiuyi9y89', '2018-05-14 13:47:24', '2018-05-14 13:47:24'),
(19, 1, 9, 'kkjsjksksk', '2018-05-14 13:48:55', '2018-05-14 13:48:55'),
(20, 1, 9, 'rrrrrrrrr', '2018-05-14 13:50:10', '2018-05-14 13:50:10'),
(21, 1, 9, 'ffffffffffff', '2018-05-14 13:51:12', '2018-05-14 13:51:12'),
(22, 1, 9, 'ggggggg', '2018-05-14 13:53:37', '2018-05-14 13:53:37'),
(23, 1, 9, 'Hi My Brother Khaleed', '2018-05-14 13:56:10', '2018-05-14 13:56:10'),
(24, 2, 9, ';dt; hpl]', '2018-05-14 13:57:19', '2018-05-14 13:57:19'),
(25, 1, 9, 'hello nkha;ledd', '2018-05-14 13:57:55', '2018-05-14 13:57:55'),
(26, 2, 9, 'what are you doing?', '2018-05-14 13:59:02', '2018-05-14 13:59:02'),
(27, 2, 9, 'iam playing football', '2018-05-14 14:00:06', '2018-05-14 14:00:06'),
(28, 1, 9, 'fffffffffffff', '2018-05-14 14:01:27', '2018-05-14 14:01:27'),
(29, 2, 9, 'ffffffffffffffffffffff', '2018-05-14 14:02:11', '2018-05-14 14:02:11'),
(30, 2, 9, 'Hi Ahmedd', '2018-05-14 15:33:55', '2018-05-14 15:33:55'),
(31, 1, 9, 'Hello Khaleed', '2018-05-14 15:34:09', '2018-05-14 15:34:09'),
(32, 1, 9, 'Hi My Brother Khaleed', '2018-05-14 15:42:19', '2018-05-14 15:42:19'),
(33, 2, 9, 'Hi Aheddd', '2018-05-14 15:42:30', '2018-05-14 15:42:30'),
(34, 2, 9, 'كيفك أخبارك أحوالك مزين', '2018-05-14 15:42:40', '2018-05-14 15:42:40'),
(35, 1, 9, 'تمام بخير', '2018-05-14 15:42:51', '2018-05-14 15:42:51'),
(36, 1, 9, 'Hi Khaleed', '2018-05-14 16:14:10', '2018-05-14 16:14:10'),
(37, 1, 9, 'rrrrrrrrrrrrrr', '2018-05-14 16:15:21', '2018-05-14 16:15:21'),
(38, 1, 9, 'hi kh aleed', '2018-05-14 16:19:54', '2018-05-14 16:19:54'),
(39, 2, 9, 'hi ahmed', '2018-05-14 16:20:04', '2018-05-14 16:20:04'),
(40, 1, 9, 'Hi l;jop', '2018-05-14 16:46:49', '2018-05-14 16:46:49'),
(41, 1, 9, 'Hikhnhhoh', '2018-05-14 16:47:44', '2018-05-14 16:47:44'),
(42, 2, 9, 'ما هذا يا برنس', '2018-05-14 16:47:59', '2018-05-14 16:47:59'),
(43, 2, 9, 'hi ahmed', '2018-05-14 16:54:00', '2018-05-14 16:54:00'),
(44, 1, 9, 'hi master khaleed', '2018-05-14 16:54:16', '2018-05-14 16:54:16'),
(45, 2, 9, 'yyyyyyyyyyyyyyyyy', '2018-05-14 18:16:18', '2018-05-14 18:16:18'),
(46, 1, 9, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', '2018-05-14 18:16:26', '2018-05-14 18:16:26'),
(47, 1, 9, 'tey5yyy', '2018-05-14 18:16:38', '2018-05-14 18:16:38'),
(48, 1, 9, 'ففففففففف', '2018-05-14 18:41:18', '2018-05-14 18:41:18'),
(49, 1, 9, 'fffffffffffffffffffff', '2018-05-14 19:55:44', '2018-05-14 19:55:44'),
(50, 2, 9, 'yttttttttttttttttttttttttttttttttttttttttttt', '2018-05-14 19:55:52', '2018-05-14 19:55:52'),
(51, 1, 9, 'ggggggggggggggg', '2018-05-14 20:01:35', '2018-05-14 20:01:35'),
(52, 2, 9, 'hi ahmed', '2018-05-14 20:01:57', '2018-05-14 20:01:57'),
(53, 1, 9, 'hi kkggh', '2018-05-14 20:02:10', '2018-05-14 20:02:10'),
(54, 2, 6, 'hi yase', '2018-05-15 10:47:36', '2018-05-15 10:47:36'),
(55, 1, 6, 'iam ahmed', '2018-05-15 10:47:47', '2018-05-15 10:47:47'),
(56, 1, 6, 'hiiiiii', '2018-05-15 11:25:43', '2018-05-15 11:25:43'),
(57, 1, 9, 'hii ahmed', '2018-05-15 11:30:42', '2018-05-15 11:30:42'),
(58, 3, 9, 'hi admin', '2018-05-15 11:30:57', '2018-05-15 11:30:57'),
(59, 2, 9, 'hello ahmed', '2018-05-15 11:31:09', '2018-05-15 11:31:09'),
(60, 1, 9, 'الاء المتولى المتولى', '2018-05-15 16:35:41', '2018-05-15 16:35:41'),
(61, 1, 9, 'الاء المتولى المتولى', '2018-05-15 16:35:46', '2018-05-15 16:35:46'),
(62, 2, 9, 'الاء المتولى المتولى سليما ن فرج فصل رقم 2 مدرسة نجير ميت شداد', '2018-05-15 16:36:33', '2018-05-15 16:36:33'),
(63, 1, 9, 'ازيك ياض يا خالد', '2018-05-16 18:53:42', '2018-05-16 18:53:42'),
(64, 1, 9, 'hi khaleed', '2018-05-16 18:56:47', '2018-05-16 18:56:47'),
(65, 2, 9, 'hi ahmed', '2018-05-16 18:57:05', '2018-05-16 18:57:05'),
(66, 1, 9, 'hi khaleed', '2018-05-16 18:59:47', '2018-05-16 18:59:47'),
(67, 1, 9, 'hiilllllllllllllllll', '2018-05-16 19:02:43', '2018-05-16 19:02:43'),
(68, 2, 9, 'hi rama', '2018-05-16 19:03:12', '2018-05-16 19:03:12'),
(69, 1, 6, 'hi ahmed', '2018-05-16 19:04:29', '2018-05-16 19:04:29'),
(70, 2, 6, 'pppppppppppppppp', '2018-05-16 19:04:36', '2018-05-16 19:04:36'),
(71, 2, 6, 'ttttttttttttt', '2018-05-16 20:14:02', '2018-05-16 20:14:02'),
(72, 1, 9, 'hello khaleed', '2018-05-19 19:29:29', '2018-05-19 19:29:29'),
(73, 2, 9, 'hello ahmed', '2018-05-19 19:29:38', '2018-05-19 19:29:38'),
(74, 4, 9, 'ffffff', '2018-05-20 09:42:12', '2018-05-20 09:42:12'),
(75, 4, 6, 'rrrrrrrrrrrrrrrrr', '2018-05-20 09:43:57', '2018-05-20 09:43:57'),
(76, 1, 9, 'affff', '2018-05-20 10:26:54', '2018-05-20 10:26:54'),
(77, 1, 9, 'aaaaaaaaaaa', '2018-05-20 10:26:57', '2018-05-20 10:26:57'),
(78, 1, 9, 'aaaaaaaaaaaaaaa', '2018-05-20 10:26:59', '2018-05-20 10:26:59'),
(79, 1, 9, 'aaaaaaaaaaaa', '2018-05-20 10:27:02', '2018-05-20 10:27:02'),
(80, 1, 9, 'aaaaaaaaaaaaaa', '2018-05-20 10:27:05', '2018-05-20 10:27:05'),
(81, 1, 9, 'aaaaaaaa', '2018-05-20 10:33:58', '2018-05-20 10:33:58'),
(82, 1, 9, 'aaaaaaaaaaaaaaa', '2018-05-20 10:34:01', '2018-05-20 10:34:01'),
(83, 1, 9, 'aaaaaa', '2018-05-20 10:34:04', '2018-05-20 10:34:04'),
(84, 1, 9, 'aaaaaaaaaaaa', '2018-05-20 10:34:07', '2018-05-20 10:34:07'),
(85, 1, 9, 'aaaaaaaaaaaaaaaaaaaaaa', '2018-05-20 10:34:15', '2018-05-20 10:34:15'),
(86, 1, 9, 'aahmmee', '2018-05-20 10:34:24', '2018-05-20 10:34:24'),
(87, 1, 9, 'aaaaaaaaaaaaaaaaa', '2018-05-20 10:36:03', '2018-05-20 10:36:03'),
(88, 1, 9, 'ssssssssssssssssss', '2018-05-20 10:36:07', '2018-05-20 10:36:07'),
(89, 1, 9, 'ssssssssssssss', '2018-05-20 10:36:11', '2018-05-20 10:36:11'),
(90, 1, 9, 'sssssssssssssssssssssssssss', '2018-05-20 10:36:16', '2018-05-20 10:36:16'),
(91, 1, 9, 'ahmed', '2018-05-20 10:37:02', '2018-05-20 10:37:02'),
(92, 1, 9, 'aaaaaaaaaa', '2018-05-20 10:42:42', '2018-05-20 10:42:42'),
(93, 1, 9, 'sssssssssssssssssssssssss', '2018-05-20 10:42:46', '2018-05-20 10:42:46'),
(94, 1, 9, 'sssssssssssssssssssss', '2018-05-20 10:42:49', '2018-05-20 10:42:49'),
(95, 1, 9, 'ssssssssssssssssssss', '2018-05-20 10:42:52', '2018-05-20 10:42:52'),
(96, 1, 9, 'ahmed', '2018-05-20 10:42:57', '2018-05-20 10:42:57'),
(97, 1, 9, 'ahmeeeee', '2018-05-20 10:43:03', '2018-05-20 10:43:03'),
(98, 1, 9, 'aaaaaaaaaaaaa', '2018-05-20 10:44:45', '2018-05-20 10:44:45'),
(99, 1, 9, 'ssssssssssssssssss', '2018-05-20 10:44:51', '2018-05-20 10:44:51'),
(100, 1, 9, 'ssssssssssssssssssssssssssssssssssssssssss', '2018-05-20 10:44:55', '2018-05-20 10:44:55'),
(101, 1, 9, 'ahmed', '2018-05-20 10:45:00', '2018-05-20 10:45:00'),
(102, 1, 9, 'sssssssssssssssss', '2018-05-20 10:51:18', '2018-05-20 10:51:18'),
(103, 1, 9, 'aaaaaaaaaaaaaaaaaaaaaa', '2018-05-20 10:51:22', '2018-05-20 10:51:22'),
(104, 1, 9, 'ssssssssssssssssssssssssssssssssssssssssssssssss', '2018-05-20 10:51:25', '2018-05-20 10:51:25'),
(105, 1, 9, 'ssssssssssssssssss', '2018-05-20 10:51:28', '2018-05-20 10:51:28'),
(106, 1, 9, 'ahmed', '2018-05-20 10:51:32', '2018-05-20 10:51:32'),
(107, 1, 9, 'mahmoud', '2018-05-20 10:51:37', '2018-05-20 10:51:37'),
(108, 1, 9, 'yaser', '2018-05-20 10:52:33', '2018-05-20 10:52:33'),
(109, 2, 9, 'hello ahmed', '2018-05-20 10:53:01', '2018-05-20 10:53:01'),
(110, 1, 9, 'hello khaleed', '2018-05-20 10:53:25', '2018-05-20 10:53:25'),
(111, 1, 9, 'كيفك احبارك', '2018-05-20 10:53:34', '2018-05-20 10:53:34'),
(112, 1, 9, 'احوالك', '2018-05-20 10:53:47', '2018-05-20 10:53:47'),
(113, 2, 9, 'بخير الحمد لله', '2018-05-20 10:54:09', '2018-05-20 10:54:09'),
(114, 3, 9, 'hi admin', '2018-05-20 12:20:45', '2018-05-20 12:20:45'),
(115, 1, 9, 'hi ahmed', '2018-05-20 12:20:53', '2018-05-20 12:20:53'),
(116, 1, 9, 'ddddddddd', '2018-05-20 12:30:07', '2018-05-20 12:30:07'),
(117, 1, 9, 'sssssssssss', '2018-05-20 12:31:46', '2018-05-20 12:31:46'),
(118, 1, 9, 'eeeeeeeeeeeeeeeeeeee', '2018-05-20 12:36:20', '2018-05-20 12:36:20'),
(119, 1, 9, 'aaaaaaaaaaaaaa', '2018-05-20 13:03:31', '2018-05-20 13:03:31'),
(120, 2, 9, 'hellllo ahmed', '2018-05-20 13:03:43', '2018-05-20 13:03:43'),
(121, 3, 9, 'hello khaleed', '2018-05-20 13:04:00', '2018-05-20 13:04:00');

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
(3, '2018_05_12_125731_create_table_rooms', 2),
(4, '2018_05_12_125916_create_table_messages', 2),
(5, '2018_05_14_192031_create_table_who_is_online', 3);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `timeLogin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeLogout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'room2', 2, '2018-05-13 12:45:00', '2018-05-13 12:45:00'),
(9, 'room1', 1, '2018-05-13 14:14:38', '2018-05-13 14:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$DD0dvnoHCnxxV5KLC0DD5.k0yo1n6ijHDuYQJCPO5JMpDR3WcB1ti', '1526509557_admin_32169797_2086697108284978_3027558889747906560_n.jpg', '0tPr0AMH9iIBwyqi6jd19cWOTcAi4NlPqvr9pxlQIuTwDCis1nU9E7WX401B', '2018-05-12 10:03:08', '2018-05-16 20:25:57'),
(2, 'khaleed', 'khaleed@gmail.com', '$2y$10$hMpQ29SHpVJjY/6cLREQseHrxunGv/RCyDVIvGhIm.jSymsGQ5TA2', '1526508809_khaleed_avatar.png', 'rNjnPBMpJvs6NsESHvPwvctADI9JBWHusi3KFhJVkz7gzWuLRc3dqPHBpuWx', '2018-05-13 12:44:50', '2018-05-16 20:13:29'),
(3, 'ahmed', 'ahmed@gamil.com', '$2y$10$KkiDPvalz4rWDpJFkCrAKeaktz8f6b6nNkBJCQzVCFWRXg8dMvoeG', '', NULL, '2018-05-15 11:30:02', '2018-05-15 11:30:02'),
(4, 'yaser', 'yaser@gmail.com', '$2y$10$40mnTTzmVBDLv4FmR1RFneuCeSzuuv3FjMFht/SaJ7tHx71ChkHfm', '', 'uv9Lsoxx8anlzFcFfqxUdsa33GwXKW8uOYgoN4tuxANWbpvu864hlHPz8s1b', '2018-05-20 09:39:00', '2018-05-20 09:39:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
