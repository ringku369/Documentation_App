-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 11:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelmultiauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `thumb`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr. Jamiluddin Khan', 'superadmin', 'superadmin@yahoo.com', '2021-11-08 23:08:42', '$2y$10$ghunalWLrGH83kiLXFeISe7C9ki8rca0UgHVv8/L4hBQLO.IvToPW', 'xp6nY7rf4XYgMa5IhVOOtTbtptFWh8Fd3XVDyakJu8y44yJR4k8kGNRdfggh', 1, 'user/2021/November/thumb-1-1637043140827.png', NULL, NULL, '2021-11-08 23:08:42', '2021-11-08 23:08:42'),
(2, 2, 'Mr. Jamiluddin Khan', 'admin', 'admin@yahoo.com', '2021-11-08 23:08:42', '$2y$10$ghunalWLrGH83kiLXFeISe7C9ki8rca0UgHVv8/L4hBQLO.IvToPW', 'ae7Ti0fXbW7PQp84kARg5TLfbwMYfKUmCTaHvVQJWOIFceRqORz3n6ZyWPVr', 1, 'user/2021/November/thumb-1-1637043140827.png', NULL, NULL, '2021-11-08 23:08:42', '2021-11-08 23:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_05_090150_create_admins_table', 1),
(6, '2021_11_06_141110_create_posts_table', 1),
(7, '2021_11_06_153729_create_permissions_table', 1),
(8, '2021_11_06_153741_create_roles_table', 1),
(9, '2021_11_06_160419_create_roles_permissions_table', 1),
(10, '2021_11_08_114604_create_site_products_table', 1),
(11, '2021_11_08_114855_create_site_menus_table', 1),
(12, '2021_11_08_114911_create_site_banners_table', 1),
(13, '2021_11_08_114933_create_site_courses_table', 1),
(14, '2021_11_08_114950_create_site_partners_table', 1),
(15, '2021_11_08_115003_create_site_services_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_parent_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `group_parent_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role.create', 'role', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(2, 'role.read', 'role', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(3, 'role.update', 'role', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(4, 'role.delete', 'role', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(5, 'role.permission.update', 'role', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(6, 'site_setting.create', 'site_setting', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(7, 'site_setting.read', 'site_setting', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(8, 'site_setting.update', 'site_setting', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(9, 'site_setting.delete', 'site_setting', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(10, 'user.create', 'user', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(11, 'user.read', 'user', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(12, 'user.update', 'user', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(13, 'user.delete', 'user', 'role-permissions', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(14, 'dashboard.read', 'dashboard', 'dashboards', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(15, 'partner.create', 'partner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(16, 'partner.read', 'partner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(17, 'partner.update', 'partner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(18, 'partner.delete', 'partner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(19, 'contact.create', 'contact', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(20, 'contact.read', 'contact', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(21, 'contact.update', 'contact', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(22, 'contact.delete', 'contact', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(23, 'banner.create', 'banner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(24, 'banner.read', 'banner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(25, 'banner.update', 'banner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(26, 'banner.delete', 'banner', 'pages', 'admin', '2021-11-18 04:04:32', '2021-11-18 04:04:32');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anastasia Heaney', 1, NULL, NULL, '2021-11-08 23:08:42', '2021-11-08 23:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', 1, NULL, NULL, '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(2, 'admin', 'admin', 1, NULL, NULL, '2021-11-18 04:04:32', '2021-11-18 04:04:32'),
(3, 'user', 'admin', 1, NULL, NULL, '2021-11-18 04:04:32', '2021-11-18 04:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `site_banners`
--

CREATE TABLE `site_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_banners`
--

INSERT INTO `site_banners` (`id`, `name`, `thumb`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, '1', 'banner/2021/November/thumb-1-1637228013829.jpg', 1, 1, 1, NULL, '2021-11-18 03:33:33', '2021-11-18 03:33:33'),
(6, '2', 'banner/2021/November/thumb-1-1637228028239.jpg', 2, 1, 1, NULL, '2021-11-18 03:33:48', '2021-11-18 03:33:48'),
(7, '3', 'banner/2021/November/thumb-1-1637228041544.jpg', 3, 1, 1, NULL, '2021-11-18 03:34:01', '2021-11-18 03:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `site_contacts`
--

CREATE TABLE `site_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contacts`
--

INSERT INTO `site_contacts` (`id`, `name`, `email`, `contact`, `time`, `thumb`, `address`, `short_description`, `description`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'DPG4PM', 'info@a2i.gov.bd', '88 02 55006931-34', '(Sat - Thu, 10:00 am to 6:00 pm)', 'contact/2021/November/thumb-1-1637230567628.svg', 'Aspire to Innovate (a2i) Programme E-14/X, ICT Tower Agargaon, Sher-e-Bangla Nagar, Dhaka-1207, Bangladesh', NULL, NULL, 1, 1, 1, 1, '2021-11-18 04:16:07', '2021-11-18 04:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `site_courses`
--

CREATE TABLE `site_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_menus`
--

CREATE TABLE `site_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_partners`
--

CREATE TABLE `site_partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_partners`
--

INSERT INTO `site_partners` (`id`, `name`, `email`, `contact`, `thumb`, `address`, `short_description`, `description`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(12, 'Synergy Interface Ltd', 'synergyinterfaceltd@gmail.com', '01712616957', 'partner/2021/November/thumb-1-1637228078971.png', 'Mirpur Dhaka', 'Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter.', 'Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter.', 1, 1, 1, 1, '2021-11-10 01:00:08', '2021-11-18 03:34:38'),
(13, 'Synergy Interface Ltd', 'synergyinterfaceltd@gmail.com', '01712616957', 'partner/2021/November/thumb-1-1637228129547.png', 'Mirpur Dhaka', 'Filler text is text that', 'Filler text is text that', 2, 1, 1, NULL, '2021-11-18 03:35:29', '2021-11-18 03:35:29'),
(14, 'Synergy Interface Ltd', 'synergyinterfaceltd@gmail.com', '01712616057', 'partner/2021/November/thumb-1-1637228176893.png', 'Filler text is text that', 'Filler text is text that', 'Filler text is text that', 3, 1, 1, NULL, '2021-11-18 03:36:16', '2021-11-18 03:36:16'),
(15, 'Synergy Interface Ltd', 'synergyinterfaceltd@gmail.com', '01712616057', 'partner/2021/November/thumb-1-1637228251512.png', 'Mirpur Dhaka', 'Filler text is text that', 'Filler text is text that', 4, 1, 1, NULL, '2021-11-18 03:37:31', '2021-11-18 03:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `site_products`
--

CREATE TABLE `site_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_services`
--

CREATE TABLE `site_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `footer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `title`, `favicon`, `logo`, `sort`, `footer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DP4PM', 'Digital Platform For People On The Move', 'site_setting/2021/November/favicon-1-163705709238.png', 'site_setting/2021/November/logo-1-1637057397877.png', 1, '<strong>Copyright &copy; 2020-- 2021 <a href=\"https://www.uysys.com/demo/DP4PM/dp4pm-static/\">Digital Platform For People On The Move</a>.</strong> All rights reserved.', 1, '2021-11-16 04:04:52', '2021-11-16 04:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `thumb`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Jayda Hahn', 'doug.crooks', 'gage.grant@example.com', '2021-11-15 06:17:47', '$2y$10$ItwjCSClwudJ/nTJ8JulGeyXiw0gQumA2SY6wG55XapWUGKDAvaAe', '6Oz7I5wL57', 'user/2021/November/thumb-1-1637045678643.png', 1, NULL, 1, '2021-11-15 06:17:55', '2021-11-16 00:54:38'),
(2, 'Mathilde Lynch I', 'hermiston.vivianne', 'llemke@example.org', '2021-11-15 06:17:48', '$2y$10$mtLkuLJ7rRTtaAQuoDNeV.aJVFSA526V9b5fOtfr28opu1X.f/is.', 'YwktDUMuyN', NULL, 0, NULL, 1, '2021-11-15 06:17:55', '2021-11-16 03:15:28'),
(3, 'Jennifer Fadel', 'mills.kenyon', 'eliseo18@example.com', '2021-11-15 06:17:48', '$2y$10$vgyZ9KJ1.KsxgPl.aYar9.zJsboekF6Hf8Zj1bGILj/rXZ2yBIJYq', '4WeRG6D9QY', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(4, 'Dr. Ida Aufderhar', 'elody.collier', 'xokeefe@example.net', '2021-11-15 06:17:48', '$2y$10$9C9KwrCX8NteweqNUtQBo.hf2jAWBZZHTVtUKmpwasKzBWPSTXyaG', 'Jh4HDDw1hR', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(5, 'Isaiah Gerlach', 'lisette.von', 'kstroman@example.org', '2021-11-15 06:17:48', '$2y$10$yY4KtLVLTvn60mEU9lpNNODtAZIPDsKKl6IP2CmLfwr1e.VR9f0be', 'zjEp7GFCoI', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(6, 'Pedro Lehner', 'considine.michale', 'willis.borer@example.org', '2021-11-15 06:17:48', '$2y$10$VEVqklcI/kp1EBAKQMdZjO8itLDedtWX6lqG5K62mexBx6qEslfnm', 'ftFHSrt30O', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(7, 'Prof. Raven Schamberger II', 'bartoletti.nathaniel', 'arvel.kunde@example.com', '2021-11-15 06:17:48', '$2y$10$wXPZvWP771uwJD7c5VGTOOs8YUWhyV8QKe.Tncee1MCZblB4.kLM.', 'I6GJyCzU1b', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(8, 'German Gusikowski DVM', 'celestine.simonis', 'ustracke@example.org', '2021-11-15 06:17:48', '$2y$10$fdQ3m2Lb73.EftopnMdeaOZCRvCC9vSzZ.nqLkxRMbvjw.JpEVPQ.', '3vlT3Q9CGt', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(9, 'Mrs. Laila McCullough II', 'faltenwerth', 'nicholas57@example.com', '2021-11-15 06:17:48', '$2y$10$gtLAYuE.WWrOiXXjHFI7relIuaQxSKty3fWSRmkpEMTeH4SB3GAru', '6pOyXYGNMt', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(10, 'Edyth Friesen', 'rubie.brown', 'hansen.cordia@example.org', '2021-11-15 06:17:48', '$2y$10$m52wdQDiFY4vvq8Iifpi0.a6cBk9pxnKvmJfB5ja.Z04TY7/HlSy2', 'sKS170cWNu', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(11, 'Berneice Ondricka', 'maxime.williamson', 'mills.wilber@example.org', '2021-11-15 06:17:48', '$2y$10$XVEEIhobkqYEIN2kzhqZxO6lj8pVd0mbgT3meSLMnMOIPvgKHDIba', 'VNKe7Q5ukT', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(12, 'Delilah Reinger', 'schinner.ansel', 'caesar.konopelski@example.com', '2021-11-15 06:17:48', '$2y$10$ler6.7jdWIQiIaMzbHajf.kTRJlNEnoaplx05gLGHGBLXnjaWBNSW', 'EF5TZ5fTaB', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(13, 'Ms. Breanne Brown DDS', 'pkohler', 'corrine27@example.net', '2021-11-15 06:17:48', '$2y$10$AEiBOKOvCtOtwMCFIQOWHO0yB.LZPFoW7dz0mb7M66P9c1rrVgMpu', 'JyadVjQqo9', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(14, 'Frank Hane', 'lorenza.beatty', 'gianni19@example.com', '2021-11-15 06:17:48', '$2y$10$n2BI1bAQYYu1Z1f9ooCsauU0DX5Lw2980QM96du.Une8RbapVJiKG', 'nxazGPHBhW', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(15, 'Gail Breitenberg', 'marjorie.jakubowski', 'chester.ziemann@example.org', '2021-11-15 06:17:49', '$2y$10$MId2a2XIFEZQ6FulY80RMec93d94SM19SZY5Y29FAIJKJcsMscy6m', 'H2JAUm4Xs7', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(16, 'Dr. Heber Feest', 'jason30', 'vratke@example.org', '2021-11-15 06:17:49', '$2y$10$Qf0cxJlgZMVmRUFlWeA0KeVRMpOXwdZ5I1notEaeawnX3wQuBzdCi', 'qzITzJ2bTs', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(17, 'Kory Parker', 'eldora.sipes', 'kelsi97@example.org', '2021-11-15 06:17:49', '$2y$10$tYCaAZXy5/qe/8WB7VP/ZujT2JlLrIlYQlp4cGCVpAN.Fb8vaeC.C', 'FV0QlmWGef', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(18, 'Dr. Richie Smitham IV', 'xstamm', 'jayce.prosacco@example.org', '2021-11-15 06:17:49', '$2y$10$F84d1Pk3QTY34XPTYO2GWesoreiRqwHadgaS/ZmgqzA7H0JMF1iBG', 'J9mM5xNtnk', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(19, 'Dr. Abe Schmidt', 'bhyatt', 'lockman.tre@example.com', '2021-11-15 06:17:49', '$2y$10$GW5ZaoB8jggiCwOc6u4N6.yP9Vkb7XEtl24t4HEru0TsA1bCPzTH6', 'hd9MRJTcmZ', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(20, 'Lillie Marks', 'wtrantow', 'aschaefer@example.com', '2021-11-15 06:17:49', '$2y$10$vWKdzzT3ZCEFweX0TFJ8UOWcY4lyR50dW7bAkb5inT4iPzo28tW/y', 'dw5K8sCRaA', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(21, 'Holly Herman', 'fay.carson', 'roderick.schneider@example.net', '2021-11-15 06:17:49', '$2y$10$9yyCn27nuCnfpD41H6omm.wC2DqAdpgtSUnkGNg8SlpTHQmxI0Vcu', 'tmmHSe8zj9', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(22, 'Dr. Virgil Kuhn', 'nrosenbaum', 'doyle.hagenes@example.com', '2021-11-15 06:17:49', '$2y$10$faeELLr.v374Derq0ah59.67YVpUjsjR64.KWZKgsvLPhLgPc4Yw6', '912ppXLADm', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(23, 'Darrel Huels', 'agustina32', 'ohara.zoe@example.net', '2021-11-15 06:17:49', '$2y$10$MotgwcTPgUGQ7DNnjp5kFee9JDnKCbSCXUnHPagXqfEyESJIuuYhC', 'kjrW68J8jI', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(24, 'Etha Conroy', 'meaghan.kilback', 'jordi93@example.org', '2021-11-15 06:17:49', '$2y$10$KnBWSx4jxnNMgVwGDKkccO7YZSmxFe3q8h3at5W0Ol06nAKG23BNe', 'WjemnID6xd', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(25, 'Ms. Susie Robel Sr.', 'fmurazik', 'noel96@example.org', '2021-11-15 06:17:49', '$2y$10$brPEU7TcruwBStX/yc72zuhdKsIV.Hxky/V.9iIUvTygfWFnH88tK', '3442mzoNKB', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(26, 'Colten Hand', 'ncrona', 'antonina.bosco@example.org', '2021-11-15 06:17:49', '$2y$10$1rr/x9M0PIHGx8cOmtn.Aemay2TXb2/dzkXdzIFRCwpmZidMc7.Bu', 'yIX1r0DvbP', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(27, 'Jedidiah Cartwright', 'sister.padberg', 'raynor.jack@example.org', '2021-11-15 06:17:49', '$2y$10$s1GOkQCh1BdFP.Bk.gx/ceZMVB6Di6JkALYJ1ImnoPA6sLRtZXOxG', 'GUpl1ulJyi', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(28, 'Dr. Liliane Hermann', 'scarroll', 'alexandra.frami@example.com', '2021-11-15 06:17:50', '$2y$10$1kL41BpTtc0E2hnBr0Z8cOY8tNDfqtbCFuBVtwTlqSLDkjexQ5cWC', 'F2RhTO9aId', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(29, 'Mr. Winfield Sauer IV', 'rowena60', 'alyson.green@example.com', '2021-11-15 06:17:50', '$2y$10$EZF8B75bRRujJNiXqsSra.nTPzDEDemjnE91y0gkZfC.B9FvOQnke', 'GKNscBQ2Fx', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(30, 'Fred Bednar', 'qmohr', 'madisen.huels@example.net', '2021-11-15 06:17:50', '$2y$10$wsaCqvN.KjXeN4RRAiVem.K9cxGKmCVGlD44vGuWTEBIQjNuKq2EK', 'ubo5jdBuqK', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(31, 'Prof. Bruce McGlynn', 'anissa31', 'rosalia91@example.com', '2021-11-15 06:17:50', '$2y$10$3VhglnC9OLpeWsN/OuR/TuO/v1qKiMGGYd9ByZsQnyv30wRZCyeCi', 'yXPvtcEZiI', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(32, 'Isabella Gusikowski', 'eabbott', 'volkman.sage@example.org', '2021-11-15 06:17:50', '$2y$10$Wcb2xJt4jtWB4MSAoU5nFuTNHD1R1zb5nf3T6XYhkDQz9B6cK7VvC', 'MN2hZCGBlm', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(33, 'Palma Kshlerin', 'prohaska.margaret', 'jeffry.marquardt@example.net', '2021-11-15 06:17:50', '$2y$10$6mweBHn7OUa.Gl.rv5SNKume7s9JAyhpXyk.kxchQwfx/c366L7MK', 'NbFXvDCft8', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(34, 'Susie Medhurst', 'morissette.hector', 'libby.toy@example.org', '2021-11-15 06:17:50', '$2y$10$WPyTHdAhTl5ug.lwp6oJBO9t.pEka1kcnsbvE6Gzo2E.I9ExX5xmq', 'JwZ38fyv0B', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(35, 'Kacey Kuhn', 'jacques60', 'jessika.leffler@example.org', '2021-11-15 06:17:50', '$2y$10$A4mUTNYMEu3tMaseOJrSl.CT3caJXVJP.YE0Qa7Wdj9pa2Rlcrh7O', '6WBfH2moOG', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(36, 'Emery Sporer DDS', 'ekiehn', 'feil.julia@example.net', '2021-11-15 06:17:50', '$2y$10$VwgWAKtrJ385jvujWy2BDezHNNhcjHGE8A9k56zMhZhrIOayNUdeW', '0rmJwIP2Fu', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(37, 'Kobe Hirthe IV', 'aurelie29', 'emmet.lynch@example.com', '2021-11-15 06:17:50', '$2y$10$1jfu6GVQ3YZHKbK7YYENQu//c33pgM0/06M0fjNAmqScP9puyJvVK', 'xZ3D7hSGHy', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(38, 'Adriana Bartoletti PhD', 'arosenbaum', 'heaven39@example.com', '2021-11-15 06:17:50', '$2y$10$C7jbgMxAXgFm5XyIqsApQe3wWGsWZe5IoEiV9HVP6qK/Qi8GbngsG', '2G5ctaiEpv', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(39, 'Violette Kirlin', 'jacobi.ada', 'kthiel@example.net', '2021-11-15 06:17:50', '$2y$10$u3OiQE1a0NnF9SSVrSEVbu9rv9iCxdYTwVxdGdcpeymzIRG0y9.mC', 'lnvPRG0czD', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(40, 'Karelle Runolfsson', 'bconroy', 'spouros@example.org', '2021-11-15 06:17:50', '$2y$10$/qlW/YonssDB4nOIJQaA1.7WC9/NnEdSv4VVn7spu8COL3U.VZVmK', '9v3WSfKsDn', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(41, 'Kevon Kunze', 'kshlerin.arch', 'sporer.silas@example.org', '2021-11-15 06:17:51', '$2y$10$G6JAgfx.1k5YD/7cSOh5guTRW.c/ZwPtzrpMsDoenuVyUC9mFfQqC', 'VzRAxuOCLM', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(42, 'Dr. Darryl Langosh', 'justice.kuphal', 'harmon01@example.net', '2021-11-15 06:17:51', '$2y$10$1X61ezGiPteTapenRVsrFuRRu2SwG3SBAJAWXkY0fy8cDq8LPPc0i', 'puihknxwQE', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(43, 'Jabari Swift Sr.', 'bart58', 'ufriesen@example.net', '2021-11-15 06:17:51', '$2y$10$MKcb5hzXEME71XwIwgS24O5v.Nyto7LJAp4gUQ4xP6L5cP2uaEWz.', 'SgfHQ09RHQ', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(44, 'Dr. Murphy Harvey', 'torp.whitney', 'trantow.aubrey@example.com', '2021-11-15 06:17:51', '$2y$10$hqwGUOCq1pnYBPwj3hM6JelkkIHb736e/zoSDo/brPJ53aBlAf6d.', 'lSlDTmwADo', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(45, 'Berniece Keebler', 'reynold.kuhic', 'matilde96@example.org', '2021-11-15 06:17:51', '$2y$10$sRx8mqfJ9xA7mCpf3KXAcOBT3pLz51oMpRuDKHEDlIBDEqf0qbv2i', 'mlbZbPpnur', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(46, 'Kaitlin Kertzmann III', 'jcremin', 'udavis@example.com', '2021-11-15 06:17:51', '$2y$10$oITUUBo51cg9yR403py2EOX5PrPUY95NyjeHaeu67ipQWWXxtf.Sm', 'M11UjUJ5Ar', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(47, 'Florida Reynolds', 'guadalupe.ondricka', 'rath.wilfred@example.net', '2021-11-15 06:17:51', '$2y$10$n..zGcoKKr43pdpsQ3LGAukC0ml5v/5UQs2yccA1Jt5Mf4qgQ7aZ2', 'Z5JH5oQeS9', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(48, 'Lauriane Purdy III', 'hassie17', 'alice62@example.org', '2021-11-15 06:17:51', '$2y$10$fK.h/GXtIBJkrxY1JTVkHu/LdsEzgYjtxexON6ftMzwS1GRNInWUq', 'RwawTygmoB', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(49, 'Prof. Lewis Torp I', 'roxane54', 'michele.kuhn@example.net', '2021-11-15 06:17:51', '$2y$10$DsvXiRy3Z1Kbqaf9CVN7GeCtz5LXJlztOx5OUIJbIaExbJrLLdAsm', 'C3r6sfh1H3', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(50, 'Tito Weber PhD', 'kgottlieb', 'zelma96@example.net', '2021-11-15 06:17:51', '$2y$10$wQgsHk6xH71mego5vMwGv.OMle0iZGOMfchbhZrAFpdwJy4b5EEEy', 'HNBxq6nNCc', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(51, 'Miss Marina Zulauf MD', 'savanna58', 'wilburn.mraz@example.net', '2021-11-15 06:17:51', '$2y$10$nrz6Vc/8aeqM0ws6tTvfuuX1L9dOZm8PUDFi1NM4/FA3J6ksivGS6', 'U8brhIcyre', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(52, 'Brandt Hilpert', 'dietrich.erwin', 'nolan.julien@example.net', '2021-11-15 06:17:51', '$2y$10$ktoIYiM/wSB8R87K5N5gAuZ5fTqV5fwLtAvEgK7NtXviYQi7YevPq', 'a3c8A8tnjt', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(53, 'Rossie Okuneva V', 'brandon86', 'huel.eliza@example.com', '2021-11-15 06:17:51', '$2y$10$ws6Wr63.HhEYlruGHv4GeuMKlsrGwNXxrY90TxbIafjsIGx2uO9sS', 'ZVZVGwMdUW', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(54, 'Laverne Rodriguez', 'marie51', 'camylle91@example.org', '2021-11-15 06:17:51', '$2y$10$MBKEYAWgCduY7aM8ox6N1eI3qAwVQzf/vSYlyinXq6ZwvOx5wPo0u', '4yNHakEWtp', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(55, 'Marilyne Reichel', 'horeilly', 'joyce21@example.com', '2021-11-15 06:17:52', '$2y$10$6SWbB7QNAOB04xhxyiEZrO6ZWWUo3sUx8CmJhGZAIrwV52l6fE1jq', '90TpP4nuJt', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(56, 'Alexane Medhurst', 'kulas.amaya', 'corrine.herman@example.com', '2021-11-15 06:17:52', '$2y$10$GxSZd7VoHHNp4U3QCTRsT.c.gFjs12BEBqMrhJIW13DNT3vDs9k1m', 'QCsop3FVIc', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(57, 'Talia Romaguera', 'madisyn41', 'solon.lebsack@example.com', '2021-11-15 06:17:52', '$2y$10$6Uu1oubP9oSdzENLJHFC8uJMfvaMDkBg1G5YmaQDz/tJutZ8d3tDe', 'a4o0u1tuX4', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(58, 'Fletcher Schowalter', 'amara.orn', 'caleigh.gislason@example.org', '2021-11-15 06:17:52', '$2y$10$tDBIVTLgLT63bOXP6b/WWeFzuatJgGWGVM2Ff6psbxPtSZm8mrYgK', 'y1ijz1xY9O', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(59, 'Robb Beier', 'parker.langworth', 'leila77@example.org', '2021-11-15 06:17:52', '$2y$10$4ghjLz2TrUQt6GSSAQZ1r.ko1O8IWou3vo8bxY4AIxVsNYeGd.Pta', 'XBPSXJ3nij', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(60, 'Mr. Jess Gulgowski', 'wschamberger', 'wwisoky@example.net', '2021-11-15 06:17:52', '$2y$10$dD2lr3BJljubQsY26jd0M.mXuMiJgq4yGkHLxgPajWjSsIsyVHc5y', 'BO20mrtaF4', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(61, 'Jarvis Hagenes', 'francis62', 'chaz47@example.com', '2021-11-15 06:17:52', '$2y$10$x5MJOp.aSxKYelzvdk4JhuRXQjx08hFqNpxQgfLdTmm60mTvGjUhi', 'jynj2sOwsW', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(62, 'Mr. Alford Reilly', 'gino.rath', 'halvorson.efren@example.com', '2021-11-15 06:17:52', '$2y$10$AtNZgznhBrgzQ2j2G6Ukw.S0p16vkwZ8BvwBMLV5Z6EZdZKkRUMV2', 'QhojOmi5c9', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(63, 'Emelia McGlynn MD', 'hortense.halvorson', 'libby27@example.net', '2021-11-15 06:17:52', '$2y$10$OriJ7FuJov31EUc5apSet.VtfKvpoUNDwf.xKvZjQTY7Rfznau9DK', 'LrlYtBRWi5', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(64, 'Mrs. Justina McClure DVM', 'raphaelle.koepp', 'mfranecki@example.net', '2021-11-15 06:17:52', '$2y$10$uQH9B9E.q9s6YAm9tb4dROATIYrz/fqUCH3z2a01eeD9Ir3gQLy3a', 'zMXbKAvpM2', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(65, 'Emmitt Wolff', 'pnader', 'senger.heath@example.com', '2021-11-15 06:17:52', '$2y$10$C3SorQ5ANf0vO.XH6yJj6exDqUg0/ax2sU8rEB45HXxyFCarl9C76', 'up0m1cQTya', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(66, 'Madeline Marquardt', 'caterina62', 'jschaden@example.com', '2021-11-15 06:17:52', '$2y$10$HQtSadIPQy.qsNEuA.T32OOlYhUJq/qOo2F8KFXm52/Hyz/FDzSKq', 'ntI791AUSa', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(67, 'Ashly Oberbrunner', 'walter.raymundo', 'britney.waters@example.net', '2021-11-15 06:17:52', '$2y$10$TnuhGGBk7qwgLWCsVNIoue9mCAArRs0t2MADJLDkhyI5bJc5iY5eW', 'EyUFo8qjTm', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(68, 'Yolanda Crona', 'hahn.ralph', 'amber65@example.com', '2021-11-15 06:17:53', '$2y$10$rrpKrW3m.TOpQGlTpWbueu5kFm86jTtgNx6zjPaGsYHR4xiSshHSq', 'b4fffbzJqw', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(69, 'Yazmin Carter', 'dwight56', 'sleffler@example.com', '2021-11-15 06:17:53', '$2y$10$s0smtO2P6A.iOKQdVofQjuKz.eHsmjv.hVd.Jpa0BsLFypEBHJfyu', 'AGODV4BUih', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(70, 'Freeman Bayer', 'parisian.madonna', 'qaltenwerth@example.com', '2021-11-15 06:17:53', '$2y$10$3cKrMc1gEUcjHZSHhrt9ae1k6Yz7kZqvgSESzsnWXuBQc0ACn9pSi', '7Y0d8ooyEu', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(71, 'Guy Nolan IV', 'dbergnaum', 'xbogan@example.org', '2021-11-15 06:17:53', '$2y$10$TjsDlRbtD68vFic.sxL5EuJ2jsEv8lzrdkmm1JWICzeot1FPmtAsC', 'oMSTkxaWrS', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(72, 'Jaycee Hansen', 'alize16', 'deckow.winona@example.net', '2021-11-15 06:17:53', '$2y$10$5zIZATEEHcK7xhlX.NYxI.oS7X0VwSa6nv/Tyg5YfstDPd/R8fOjW', 'xUQ4CR0H3h', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(73, 'Melvin Mayer', 'jess.kulas', 'thiel.lennie@example.org', '2021-11-15 06:17:53', '$2y$10$XBB68kaEMAUGzbPksL7f1OZcq1uecpOJ6ksxNyXyLPsrqWqBs59ca', 'EeYfD1n3h3', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(74, 'Shemar Kirlin III', 'shanahan.arielle', 'fredy17@example.com', '2021-11-15 06:17:53', '$2y$10$LHIYKcK76P.mdP2rxEax5uHgjlGWJQcQ8cCvK.dfHMC7K0FqiDGb2', 'AeOWOCvF8H', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(75, 'Prof. Pamela Macejkovic', 'tremblay.marina', 'bziemann@example.org', '2021-11-15 06:17:53', '$2y$10$4KGMG19dK4Vxp6RTveIbxeU4Z89s/wibsni7RbM6yA1tHr2bbi0Ne', 'svE6fFmXX2', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(76, 'Prof. Tessie Hodkiewicz DVM', 'luis.hermiston', 'mcglynn.amara@example.net', '2021-11-15 06:17:53', '$2y$10$ox7JJyWxHBjAFDbCzIQeJuklmcrmt8Sq61GoeSTvbeBQVyAT.g7la', 'O5RRKsI4j7', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(77, 'Dr. Eddie Bashirian DVM', 'treutel.ferne', 'michel.dach@example.net', '2021-11-15 06:17:53', '$2y$10$Y4vHvqY9rqR/vh48l08MAOW85XRogY4R6SHVm27v1RHgy2tnZE3Sa', 'ICQaZsiUzh', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(78, 'Prof. Wendell Mueller MD', 'ceasar.emard', 'kaycee45@example.com', '2021-11-15 06:17:53', '$2y$10$KE2zsSd53.rdCprQY3MF4u7GoXIdocXnECfRhrst9GjRrbkRoAFQi', 'DqxGZj0o7m', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(79, 'Onie Bechtelar', 'medhurst.maia', 'evans.ritchie@example.org', '2021-11-15 06:17:53', '$2y$10$5ECXUTA1vBXkwQ4x/EqFhOdri.nv1uZ4TlGrnhyHcR6oR5ZTRS3PC', 'yNP41WN36v', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(80, 'Cordia Jones', 'gerard.schneider', 'uwisozk@example.org', '2021-11-15 06:17:53', '$2y$10$/4yJ/B3sYveQW8OcEW1p9.YNBwGeh3.2abc5vmI.dfFHjX2onk5bS', 'Bn1NylR7w4', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(81, 'Mrs. Eleonore Adams', 'roxane.jaskolski', 'jfay@example.net', '2021-11-15 06:17:54', '$2y$10$PAqMQxoTL/M.74CjtU0I3Olf9va1WrZTkGMZNOP1/LN0FL7GDqQTK', 'AjNRly4WtG', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(82, 'Leonie Bednar', 'janice.stanton', 'yemmerich@example.org', '2021-11-15 06:17:54', '$2y$10$hLy/5BszWED.78EPK2ytseMokfgVeNK1zI2Ra.5xkNGHkODzS9r2q', 'YIjI960It3', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(83, 'Emmanuel Kiehn', 'wallace.metz', 'hmarquardt@example.com', '2021-11-15 06:17:54', '$2y$10$RYTRpDCDq3MCVfAATdtVp.uC5jQJ28NoIlIPmWEONLn.3N/WWDMMW', 'qpq7UPVrBz', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(84, 'Mr. Don Brown DDS', 'edyth03', 'skylar.krajcik@example.org', '2021-11-15 06:17:54', '$2y$10$jP3IhTU.ATOo9FcR09x46ONpSHvVZKOP0kt2qNwYtAHphfL3oj0gG', 'Rum9m7Nufg', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(85, 'Arely Rowe', 'welch.ryleigh', 'vandervort.madelyn@example.com', '2021-11-15 06:17:54', '$2y$10$0GKkSlMaC8cuL8uGVoceMe/1dQKzaM2AUerzAiSaZmYVZt.FKWHi.', 'l2CmGpgZup', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(86, 'Elinore Ebert', 'mustafa86', 'yessenia23@example.org', '2021-11-15 06:17:54', '$2y$10$FpESFAxAbc/tu0Hk3861ZejZtClsip.HWhZKvGJTqUVcXq1QFwDa2', 'bztWuT4jvc', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(87, 'Ron Harris', 'fay.jammie', 'don35@example.org', '2021-11-15 06:17:54', '$2y$10$CNLrsagUuN5/hqmCTSb2T.TPaza/2GA84pD.f14fuOeIr4vcn41Hq', 'zlfEfLiBBv', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(88, 'Mrs. Mae Crona', 'salma96', 'ygulgowski@example.net', '2021-11-15 06:17:54', '$2y$10$4pITpQDGltH6mHeKGyNNLuK8Uk8Jmxj97IbdGkBjdgKGU4k2p3I7y', '7Pu0tqQ5Mu', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(89, 'Dr. Cristina Dare', 'gregorio58', 'cyril23@example.com', '2021-11-15 06:17:54', '$2y$10$Vc0SmnAYLvqrN.8czp7TEu3pgNg714B/bsQqrm2hzK7dQUq3GO5bi', 'FfnD7tlyJp', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(90, 'Kian Auer', 'dietrich.kory', 'jpredovic@example.net', '2021-11-15 06:17:54', '$2y$10$g8cPy0BCls3YfwlJXmlaUeoMo2iA10FB1PkJtboYoyzKUdEg4ehTe', 'wqz1g2oyU1', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(91, 'Leila Thiel', 'jailyn16', 'shana00@example.net', '2021-11-15 06:17:54', '$2y$10$OzM2woVqzmx4JTAGbkZECel7dm7XNNjCY8rHkKsfuZht6wa0Bec3.', '7Gi89Qwjg4', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(92, 'Miss Hermina Zulauf III', 'mhalvorson', 'maggio.virginia@example.org', '2021-11-15 06:17:54', '$2y$10$C583.0FYGhJ61T48LT5QzO2p1eeCPVNQRdD5ExM.YlRvGiW/3LPYS', '8oP6f5zMlp', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(93, 'Magali Cummings', 'mariah.feeney', 'henriette.mcglynn@example.com', '2021-11-15 06:17:54', '$2y$10$TtCUZe70sD.yZcmDzaXC8eBNVJn9gv.x39XQgI2/s0ETbeBOgl.YG', 'i2yTAkAjfq', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(94, 'Cynthia Dooley', 'jewel.konopelski', 'stark.dallas@example.org', '2021-11-15 06:17:54', '$2y$10$7uAe7RazEoFMdIkKFsYKmOw8xMIYpCvhbTVRshhuaUS2KDyOTA2Mm', 'FpFEp4b6Qe', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(95, 'Xander Ryan', 'eleannon', 'brakus.meghan@example.net', '2021-11-15 06:17:55', '$2y$10$aakjVnv3crDlJTqPqNTw8O6ke9g4jD.rn6PvYAnoldmTYJIqHZvDO', 'yCwwPy70qQ', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(96, 'Jessie Bernhard IV', 'libbie47', 'darion.stark@example.com', '2021-11-15 06:17:55', '$2y$10$Jiu0CcfLP5xZw06jYkjIkeN.lz8TDZuNYkgtkXYEr3dHd21LFx75q', 'sOSJolVPNT', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(97, 'Mrs. Julie Bode', 'vmedhurst', 'ywolff@example.org', '2021-11-15 06:17:55', '$2y$10$90MOkZvCESBYbPhjIUm42OQlbbhiKevVwB2VTbw3JoKZYibshDZhC', 'M6iTBQIhsm', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(98, 'Jalyn Ferry', 'rkris', 'hschaefer@example.net', '2021-11-15 06:17:55', '$2y$10$d2smVuTz6C7Y7VzUjfTZ8eiZJvqKHkm8sUMF4V7lvuvm5rb16v83y', 'nydjdcHOON', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(99, 'Bill Greenholt', 'vklocko', 'coby.tillman@example.org', '2021-11-15 06:17:55', '$2y$10$X4uFsAjIrPg2Am.D9uqgcuIJczm0NLXOFiIdpi7BRn40jA3W.b3NC', '7xu6aTDzXP', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(100, 'Mr. Justyn Schulist II', 'eschulist', 'brannon85@example.com', '2021-11-15 06:17:55', '$2y$10$T45zx1ca5Qpq/0a.Zkf.yOTf6tbRttvk7IY5kBj9SR40j5ApjWX6a', 'e75xzKbssF', NULL, 1, NULL, NULL, '2021-11-15 06:17:55', '2021-11-15 06:17:55'),
(101, 'Mr. User1', 'user1', 'user1@yahoo.com', '2021-11-16 00:12:20', '$2y$10$9ZLTRX/gcbTt3kWWQJxG0OrNEyIRRYeaYJjuVO9RqLjMdlNDGv81a', 'wLMEyFiAQz', 'user/2021/November/thumb-1-1637043140827.png', 0, 1, 1, '2021-11-16 00:12:20', '2021-11-16 03:13:06'),
(102, 'user2', 'user2', 'user2@yahoo.com', '2021-11-17 02:01:20', '$2y$10$MTktqUtmDUvX2hqe54.PsODuudbZZikw.EHh9rZJEo4E/8GNdXthi', 'no3BZ37vQN', 'user/2021/November/thumb-1-1637136080675.png', 1, 1, 1, '2021-11-17 02:01:20', '2021-11-17 02:02:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_banners`
--
ALTER TABLE `site_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contacts`
--
ALTER TABLE `site_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_courses`
--
ALTER TABLE `site_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_menus`
--
ALTER TABLE `site_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_partners`
--
ALTER TABLE `site_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_products`
--
ALTER TABLE `site_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_services`
--
ALTER TABLE `site_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_banners`
--
ALTER TABLE `site_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_contacts`
--
ALTER TABLE `site_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_courses`
--
ALTER TABLE `site_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_menus`
--
ALTER TABLE `site_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_partners`
--
ALTER TABLE `site_partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `site_products`
--
ALTER TABLE `site_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_services`
--
ALTER TABLE `site_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
