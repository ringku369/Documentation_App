-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 11:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_multi_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `thumb`, `remember_token`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr. Jamiluddin Khan', 'superadmin', 'superadmin@yahoo.com', '2022-01-09 23:31:33', '$2y$10$XNZetW1WuEf8XLar/9vSxe/AbgYlYPg3qFx6EoTv.evnE9C/AHwEO', NULL, 'WyohNMY6xuBgU66r8O64CcMtHMHuv11UZdjG2pUOy5GbDlslrPC8ODOPYvaZ', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(15, '2021_11_08_115003_create_site_services_table', 1),
(16, '2021_11_16_082729_create_site_settings_table', 1),
(17, '2021_11_18_094717_create_site_contacts_table', 1),
(18, '2021_11_28_043604_create_divisions_table', 1),
(19, '2021_11_28_043936_create_districts_table', 1),
(20, '2021_11_28_044524_add_foreign_keys_to_districts_table', 1);

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
  `group_parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `group_parent_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role.create', 'role', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(2, 'role.read', 'role', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(3, 'role.update', 'role', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(4, 'role.delete', 'role', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(5, 'role.permission.update', 'role', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(6, 'site_setting.create', 'site_setting', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(7, 'site_setting.read', 'site_setting', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(8, 'site_setting.update', 'site_setting', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(9, 'site_setting.delete', 'site_setting', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(10, 'user.create', 'user', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(11, 'user.read', 'user', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(12, 'user.update', 'user', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(13, 'user.delete', 'user', 'role-permissions', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(14, 'dashboard.read', 'dashboard', 'dashboards', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(15, 'partner.create', 'partner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(16, 'partner.read', 'partner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(17, 'partner.update', 'partner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(18, 'partner.delete', 'partner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(19, 'contact.create', 'contact', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(20, 'contact.read', 'contact', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(21, 'contact.update', 'contact', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(22, 'contact.delete', 'contact', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(23, 'banner.create', 'banner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(24, 'banner.read', 'banner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(25, 'banner.update', 'banner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(26, 'banner.delete', 'banner', 'pages', 'admin', '2022-01-09 23:31:33', '2022-01-09 23:31:33');

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
(1, 1, 'Archibald Herman', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33');

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
(1, 'superadmin', 'admin', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(2, 'admin', 'admin', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(3, 'user', 'admin', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33');

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
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_contacts`
--

CREATE TABLE `site_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` smallint(6) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `thumb` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `thumb`, `remember_token`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Mac Koss', 'oledner', 'justine51@example.net', '2022-01-09 23:31:26', '$2y$10$A2JeJ1ltY22RDibzbHRFBenMN4dR0DvnqkSZeGzPNijj03qf7JaWm', NULL, 'Otaw15Auxu', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(2, 'Abe Hoppe', 'isom.marvin', 'banderson@example.net', '2022-01-09 23:31:26', '$2y$10$iXuYIRoR8ZdcGcZcNZ0P9unJ0LjW9Kfk8/N.tl/w6NCdWpOHZJ06y', NULL, 'XCfW5O7nG3', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(3, 'Enola Nitzsche', 'loyal28', 'adalberto.haley@example.com', '2022-01-09 23:31:26', '$2y$10$XUJVw/N9y9RqhRfmxHAlW.WEnvg.KskxBxI5MIlC1VcH4w2p7HnqG', NULL, 'CdQnHc63gG', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(4, 'Constantin Mueller Sr.', 'earnest.hill', 'herman.clint@example.org', '2022-01-09 23:31:26', '$2y$10$duWTvSRUoVmnNWO5jMLsT.LyZkoDePHjQk83NanyykBjOCuDaiUiW', NULL, 'IqvPOHJ7SV', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(5, 'Prof. Aliza Runolfsdottir PhD', 'lisa39', 'kiara.kihn@example.net', '2022-01-09 23:31:26', '$2y$10$VceBNt9/HRcu4oVjtMVwMOQ8adU6StvrS6Bo2QwGHAvFJMzdTrFo6', NULL, 'DnsggCNkAI', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(6, 'Lolita Harris V', 'carroll.eloisa', 'ruben22@example.org', '2022-01-09 23:31:26', '$2y$10$qpkp5HbHrQEqY48hxKBatumSv68NPZa5ZrxQxLwcX.IguNEkNFNca', NULL, 'yC44WFi9sC', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(7, 'Maybelle Gulgowski', 'nienow.makenna', 'ngerhold@example.net', '2022-01-09 23:31:26', '$2y$10$znmIuCTTGcJAgpwDd4AiAevypb.l8QvSTSMPTz1eC3DC89e98I.qa', NULL, 'sS8TB5LQ4h', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(8, 'Blanche Ruecker', 'keagan28', 'florence.reichel@example.com', '2022-01-09 23:31:26', '$2y$10$HmQckyW1bGWFL8FsE.G/BeUnV4HD3KhIF1WKytT/72d6MpQePqaVm', NULL, 'IDjaXE7if6', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(9, 'Randi Barton MD', 'connor19', 'emmitt85@example.org', '2022-01-09 23:31:26', '$2y$10$DlKfK.hrRkzRlzJxmppZneGIX.HI5gwgMLTvf8DUOOE9UUDCvEFom', NULL, 'ZaWg8c8Bt2', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(10, 'Rowan Senger', 'edward.terry', 'eschaden@example.net', '2022-01-09 23:31:26', '$2y$10$FDJ6FqUlvBBAWOJIUq./feIVLMqO5vn.SCAA5xeraJ.WrJDr6dIfO', NULL, 'zqVZGvjhQI', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(11, 'Kendrick Block', 'zhettinger', 'leuschke.brett@example.com', '2022-01-09 23:31:26', '$2y$10$soHdSH.Lti/WYjTT4oLlg.J/aVc5IF/4U1XsnR8xd.Mds2JQAlo8m', NULL, 'A0nhvH1uEI', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(12, 'Tyrel Steuber', 'morissette.beatrice', 'hegmann.ramon@example.org', '2022-01-09 23:31:27', '$2y$10$34H96gsrbGncEPo8yE95nePCyF6cQoXrmdGsQV4F.9KHeDzaWtPdO', NULL, 'VOx3HYDu2L', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(13, 'Winnifred Dietrich DVM', 'baumbach.lina', 'streich.makenzie@example.com', '2022-01-09 23:31:27', '$2y$10$LrETVnqmerWJEcAiNHm2PecJsyqo01FcCSqQ1bE0jCyPHCZlF/66C', NULL, 'ImEOofbPv1', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(14, 'Miss Jany Runolfsdottir', 'tony.ohara', 'smith.darryl@example.net', '2022-01-09 23:31:27', '$2y$10$Mr3EZWn5zApw6nLAtx.W/ulbM.J7EdX29NiUEcPWUOzu2iwiBymO2', NULL, 'bUyhRTinp3', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(15, 'Dominique Abbott', 'maximilian.bode', 'hessel.gwen@example.org', '2022-01-09 23:31:27', '$2y$10$YmBVYFwHQNLSbSVBMd6V6OuOkDOrtMKxoHpNvEf7YEIEuU1/2RQEG', NULL, 'rMZA2Gn4Fq', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(16, 'Hanna Tillman PhD', 'conroy.litzy', 'jbraun@example.org', '2022-01-09 23:31:27', '$2y$10$Y1uxRQt1ZoQNf5WNGX7x6.qP2wQXdp9i9VZ1Wh9CRBJCRrtFw55va', NULL, 'fTKp9r5R4v', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(17, 'Minnie Hane', 'nswaniawski', 'ihayes@example.org', '2022-01-09 23:31:27', '$2y$10$/rrfE786cPydf8AC.R/KCOxIZ4V0WfJs/1.fPxKzBfyqeJE2fH5x6', NULL, 'K8H60SPz19', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(18, 'Annabelle Harvey', 'swaniawski.hobart', 'marvin.zelda@example.com', '2022-01-09 23:31:27', '$2y$10$7GT2e67KIhM3k71S2yXBfuMOIgqKrPkDHq2QKBYP24yjN/jluUOP.', NULL, 'tCBVGfO91X', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(19, 'Josefa Kuhn II', 'verner38', 'alexane15@example.org', '2022-01-09 23:31:27', '$2y$10$xZdI7IcWfF8Wp1hPt3zKk.O5uBsi.DYRibVdP7leRSujf.7X6tPZ6', NULL, 'X3B8Tld9L0', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(20, 'Mr. Finn Dare', 'zieme.cesar', 'beier.luther@example.net', '2022-01-09 23:31:27', '$2y$10$mlA518wduLIs/bNY/5PEcexBjGj001mAANrnAhY003teqFHLkCDoq', NULL, 'tKmsuGNZ9E', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(21, 'Laurianne Kassulke Sr.', 'cecilia28', 'fletcher31@example.org', '2022-01-09 23:31:27', '$2y$10$jWin9yC2XwhafkrgRI360.5NeCVvGS5YKrDzskurox3D6HENpiZD2', NULL, 'TCo6gkrgZG', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(22, 'Torrey Spinka', 'lily.emard', 'lang.antonio@example.com', '2022-01-09 23:31:27', '$2y$10$LPJlbzsvZYE31WAr51lA..6AO78ZxP1slLDQ7p9wKN64vY6ATVG9S', NULL, 'yDb6ztPRdm', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(23, 'Prof. Stephanie Parker', 'ssatterfield', 'jaskolski.destin@example.com', '2022-01-09 23:31:27', '$2y$10$XSga2LnuMZ71cfd24lLBUeoEGfAYgmT9O.AjP0HqP0ZB1ju4.I4BG', NULL, 't3YpYpst8f', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(24, 'Mrs. Corene Gaylord IV', 'eve.abbott', 'dstroman@example.org', '2022-01-09 23:31:27', '$2y$10$qrhnTkN3YpsWZm4.pTfxN.VP56QjIHrGtfMqfT94i0dfQoZZLrvwK', NULL, '5ZcdqNH7mC', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(25, 'Dasia Bartell MD', 'ischaden', 'gleichner.jaycee@example.com', '2022-01-09 23:31:27', '$2y$10$cHkUd/MQzV296dxaSmb6.eNan/0Ta3fV0WJ2l2tYxPwM.2YCueAOO', NULL, 'a0hpCWg3Tw', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(26, 'Miss Maybelle Walker DDS', 'cristobal.hodkiewicz', 'rmosciski@example.net', '2022-01-09 23:31:28', '$2y$10$c41bSMIOVCV2kBEcFHAVHuvs30yDGTg1zBABdL0Ql/lDGVcqHmd2.', NULL, 'CXhTdVZ7CR', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(27, 'Dr. Destiney Goodwin', 'norene47', 'kunze.danial@example.com', '2022-01-09 23:31:28', '$2y$10$1jOD.0ko9.aY5ysdJs2xIunIkuWZQqAycuI0eMJy26P4WXo5oRy/C', NULL, 'AOdoSI742L', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(28, 'Mrs. Esta Lang', 'helmer.klein', 'qmiller@example.com', '2022-01-09 23:31:28', '$2y$10$002bPXXu5fH5xovHbZ/6ue4ULetZIL1uY25BV7.IlMtdnSOlFIJA.', NULL, 'aGUJA5JRi4', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(29, 'Mr. Cristina Schultz', 'krajcik.wyatt', 'leuschke.jeremie@example.net', '2022-01-09 23:31:28', '$2y$10$KKZZ0XXPO8Mxm3BIm7j/y.0b.h0GslFGmzUGWCfVMDDG.qfnmcOYe', NULL, 'R1iJnsBlKw', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(30, 'Ally Turcotte', 'mckenzie.octavia', 'connelly.alysa@example.com', '2022-01-09 23:31:28', '$2y$10$EOfog1aGfW6ebBfcjFk5IeB5SbH.eVSk.Sa7vt37nE2skVDGBZNC.', NULL, 'SOdOtYIZ1l', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(31, 'Frank Walter', 'velva.funk', 'marvin.garrison@example.org', '2022-01-09 23:31:28', '$2y$10$UddCXfErevOeyw1unqywSuv9PgRHxjGtbdCBSizcBCI1WtMPTUAxu', NULL, 'dHgD7BllQK', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(32, 'Prof. Lorenza Barton IV', 'tharris', 'rau.will@example.com', '2022-01-09 23:31:28', '$2y$10$kTVJ8ZF4asJrXLtXIjyT1OJuVYRMFHh/YmwhW5T8BKDbfHLK47iyC', NULL, 'X5InZqEiOl', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(33, 'Elliott McKenzie', 'gkub', 'ritchie.christop@example.org', '2022-01-09 23:31:28', '$2y$10$Sf.XjMCWnOAgcvMsZtfF0.TgjaC/C.8MQYBcrDvnv5n1K6xFp1fxO', NULL, 'sv0VFZARjr', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(34, 'Gerald Bailey', 'koch.clovis', 'wtillman@example.org', '2022-01-09 23:31:28', '$2y$10$telAO3WrqlKvUTgQ6vrQ8ubI1Ll9hnfgGLcGrpuOgVhRIRWf3uav.', NULL, '68BWKsoY6l', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(35, 'Mrs. Estel Brown', 'qmclaughlin', 'goldner.eliseo@example.org', '2022-01-09 23:31:28', '$2y$10$nvaaBnVBugdaGsa9AJbBEOVSmmMdqHZYfU8Ik8NGhzq.tm.3nta/a', NULL, 'vEYYH6HzoF', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(36, 'Evan Ziemann V', 'cleora96', 'tevin21@example.org', '2022-01-09 23:31:28', '$2y$10$0EqIWhIvMgFzuuj8yzgBOOJb1aM1UsaSIaTD0yCdZiRW2jKqMYJz.', NULL, 'CPWjxW08P4', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(37, 'Theodora Schulist', 'mohammed01', 'lavinia.borer@example.net', '2022-01-09 23:31:28', '$2y$10$ZNdbHsXl3/oLuT01MZm4J.sMnSdKwfowSzPzyozUO//7dF/YbvF/W', NULL, 'U43A8EtxZc', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(38, 'Pat Kshlerin', 'whettinger', 'cheaney@example.net', '2022-01-09 23:31:28', '$2y$10$aoMqPNF98iVoafTxPa0g4uR7a80KlNPNAEInCsqodUuZ3PdMf/JeW', NULL, 'jbrPJGaxph', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(39, 'Prof. Brady Ankunding Sr.', 'ncorwin', 'heathcote.travon@example.com', '2022-01-09 23:31:28', '$2y$10$qJorSKmdO6EKiiA7TMPyrOCf/CPC.7WSspsBNt...MkQw1zzGdWYq', NULL, 'uf57obPMSP', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(40, 'Mallory Orn', 'qmaggio', 'aletha.oconner@example.org', '2022-01-09 23:31:28', '$2y$10$TR/PaMz8HXaeFh4m2yqXLeUijBcvigXw1IxgO0jwe.VSadP4tFF1W', NULL, 'Hv4TGJCdwa', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(41, 'Rick Kris', 'erdman.hunter', 'irving81@example.net', '2022-01-09 23:31:29', '$2y$10$qLAraQunJT2mKDBBh4EyA..6fQqkuvnV.TJWC3204lkJ8FCevZdvi', NULL, 'kIYZdpkHmS', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(42, 'Miguel Hahn', 'purdy.will', 'gianni.hickle@example.com', '2022-01-09 23:31:29', '$2y$10$OL4wvxfPayhUHMRTL8eFuuSYQN4s/lroi/4F6lJEIqKzvulm9N9am', NULL, 'XJsx61QgEI', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(43, 'Prof. Margarete Bogan V', 'tavares83', 'zcronin@example.net', '2022-01-09 23:31:29', '$2y$10$cpSU4S.8sdVXxxV2Gib69OBlnMX0ivRQTY75flF21dold/8n.Xf52', NULL, 'VooJNhg31T', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(44, 'Jalyn Blanda', 'tevin.daniel', 'thompson.margot@example.org', '2022-01-09 23:31:29', '$2y$10$vt3nOt5RMS7Nt4Lw.M/enunVUX3PpyeHoB4W.VIlBAPYdAFaMArMe', NULL, 'bNwpjfDnZP', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(45, 'Alanna Kreiger', 'santino17', 'wschoen@example.com', '2022-01-09 23:31:29', '$2y$10$iQ8lZxS24JMfHFhi2aZH9OVrIy5DSaZrVN8LCf//2QKniZIm6U56K', NULL, 'orUGsOelkK', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(46, 'Lucinda Breitenberg Sr.', 'ireinger', 'qfisher@example.org', '2022-01-09 23:31:29', '$2y$10$E5rAF80hXiZu.rkq0tSJVe73W25wS2H.Z2.dBrnRXfyTzTwkzduBG', NULL, 'yLppW9qCMv', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(47, 'Callie Gleichner', 'russel.bogisich', 'vkeebler@example.net', '2022-01-09 23:31:29', '$2y$10$FYVGXeymFU/DmXYlxZN32eDcr23/fCgII8bTr2eUo1c8zvr/4SMr2', NULL, 'zxqDGoGo9b', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(48, 'Coty Block II', 'veronica52', 'kiley59@example.net', '2022-01-09 23:31:29', '$2y$10$3kExFVlb8usIjNeDtdIcROYLyuvTuAZb9RnA/VXlKi03Yxl.BdcIq', NULL, 'ZVIPKZrWZR', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(49, 'Prof. Gage Marquardt', 'heaney.frieda', 'lambert.swift@example.net', '2022-01-09 23:31:29', '$2y$10$Rr5MKHXqxpvozYTYuKaTyeNQUGcMTFjiU0y6RnVvzBv1nP8/oLOsa', NULL, 'SWRHhjZ6ZQ', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(50, 'Bernhard Rath', 'fadel.danial', 'chegmann@example.net', '2022-01-09 23:31:29', '$2y$10$Cwke5xxw4gdauJzP/modvebwd8gLDGIf5CfuixP/OQdpZPvjGolFC', NULL, 'nogtDnjXTi', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(51, 'Mr. Quincy Wyman', 'sebastian.vandervort', 'oberbrunner.jake@example.org', '2022-01-09 23:31:29', '$2y$10$0OdzgQY4QIQIzRKQ1cgAiebqId.cnQ7akg9JI4oGdRKb8xIfvfhHi', NULL, 'cq2bXzvVz6', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(52, 'Jordi Cole II', 'rhilpert', 'ellsworth.fay@example.com', '2022-01-09 23:31:29', '$2y$10$swCMWmIm.Zux7Dad1smfh.R5npI./L9NNiufbQXKUkjHONQgVPlZe', NULL, 'TOIbFR1rOq', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(53, 'Prof. Hilma Cormier DVM', 'janice93', 'tschmitt@example.com', '2022-01-09 23:31:29', '$2y$10$c1mJTpCidZnFfyITT5b2Oe1FZLNrPbwiGRuvKo2HK0TeIb8UBPLji', NULL, 'kTod8Wp5Dd', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(54, 'Dr. Declan Yost II', 'thammes', 'pframi@example.net', '2022-01-09 23:31:29', '$2y$10$FuVIYTpQe1Z61ILTW1V02.8osOMteG/0n7ygkPZnEyi5Ux29iXWgi', NULL, '8wEUNO6a8j', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(55, 'Loyce Barrows', 'logan91', 'estevan.mills@example.com', '2022-01-09 23:31:30', '$2y$10$6Ey8VgCOJ1/6G3yfqtbV2ehRs.m8XKmJFdENE4X6gUxoBT/OKj8fK', NULL, 'PBJrOMyAe5', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(56, 'Nash Wintheiser', 'kyra.konopelski', 'owen95@example.org', '2022-01-09 23:31:30', '$2y$10$5u.9dq.hOxgsg6p.2WbJxuDdsl1SWjjtMZqAtlWQnqxveSGDAtt2O', NULL, 'b0CHSdnVfY', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(57, 'Rashad Hauck', 'urutherford', 'ole.cartwright@example.net', '2022-01-09 23:31:30', '$2y$10$BSkNtQlLAjXsqARFzRWuy.Wrvtdqi1ZK7n0zpnnfK/CMECSrLPsTC', NULL, 'HRKcsIKEcW', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(58, 'Miss Jennie Bashirian IV', 'curt69', 'kiehn.norwood@example.com', '2022-01-09 23:31:30', '$2y$10$bjhbYpZ2YHKnRb.e3FaWHOFb/8mUR/jrUFVTF4dGBqHpmqsmVZVMq', NULL, '10rcLB8y2W', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(59, 'Gustave Kuvalis', 'anastasia55', 'qmueller@example.com', '2022-01-09 23:31:30', '$2y$10$KCYgJ5hSTt7DQXsBJpEU/.GFyDG55OjG6TIwcWA5SNfcKfaqgGauO', NULL, '9Rgc44gQrJ', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(60, 'Mohammad Dietrich', 'hettie.ullrich', 'remington42@example.net', '2022-01-09 23:31:30', '$2y$10$TvbbkVIDEpBWAfVIVBsnrO4.5QmgM47Xk01GzjY6nqYDXswHwURRC', NULL, 'WtwCvoLHSV', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(61, 'Dustin Mills', 'equitzon', 'liana93@example.net', '2022-01-09 23:31:30', '$2y$10$FxxlXUxBueuenI1fkkr6v.cjk45J0lOga3K89qVsXInxcRfxtbnMq', NULL, 'YsStIpEoPF', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(62, 'Jaleel Grant', 'mertz.carmel', 'kilback.sonya@example.net', '2022-01-09 23:31:30', '$2y$10$MgHMCb.BD2l1yos7QgGWce17xnXCqScEUFSdYCbfXO8k.EpSV2PS6', NULL, 'qouY83dNuJ', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(63, 'Berniece Hintz', 'martin.lesch', 'schinner.trever@example.org', '2022-01-09 23:31:30', '$2y$10$VqTgYJyEsFw90RZaqY.tGu.xlyb5n16Axea8Os2VDwYS2ySmB/FCi', NULL, 'HZ9L8J7Jwl', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(64, 'Celestino Dickinson', 'ryleigh.kassulke', 'janie.koss@example.com', '2022-01-09 23:31:30', '$2y$10$TgwHHIGEndP1XnN4CW/ulumBrKclERED/rmnvicv0AUBBf7IxtyTO', NULL, 'q2KlCajmkF', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(65, 'Gretchen Cummerata I', 'alanis.schumm', 'mills.autumn@example.org', '2022-01-09 23:31:30', '$2y$10$j8V6nGXiD4P9M0b.6NY03OezKFKjWH2os8HL89YnDA8ACokLuelEm', NULL, 'w6NwuDQBjU', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(66, 'Evans Rowe', 'herta12', 'brekke.delpha@example.org', '2022-01-09 23:31:30', '$2y$10$OLrL2xbiZRHTaEOH3pOFweZSRdVBa7/NTZWG57Yz.SeyZw5X8wx7m', NULL, '61pXzurqxF', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(67, 'Prof. Oren Kerluke I', 'lydia.schimmel', 'oran61@example.org', '2022-01-09 23:31:30', '$2y$10$E.xE7rMpMY5KXTNlXc8wVeujCWo8B917NLS3Q1galhdcUt7fqnZ2O', NULL, 'VCsbiBOZmV', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(68, 'Deja Hahn', 'rempel.ila', 'arenner@example.com', '2022-01-09 23:31:30', '$2y$10$rK.EV0JBrTZvHmsBl/7PievwYwIvu95JKMWrCj3k1NaWo2Rh2vhKu', NULL, 'mtUvjHGd8x', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(69, 'Miss Germaine Heller', 'hwunsch', 'lakin.guy@example.com', '2022-01-09 23:31:31', '$2y$10$v0yddcoLfx0imFKA.mjekeOQXXrL53owI9Tdsz.OA5McefAV1nqrW', NULL, '9vB8sj38hP', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(70, 'Marta Rohan', 'schuster.libby', 'crooks.edwardo@example.org', '2022-01-09 23:31:31', '$2y$10$AkXjrYnK/F6ZbtOvFb2OhOU2CPUKGH64cDNjRw1wDiVZgsVh4dDpW', NULL, 'MYMU7yBjBX', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(71, 'Nelson Runolfsdottir', 'hmcdermott', 'leanne.crooks@example.com', '2022-01-09 23:31:31', '$2y$10$9t.uvTtU6p0GV09DPtT.WuvAKJbRhHDBxz7R84nUIJ8Kan4C0t3zy', NULL, 'RIXyASRp4C', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(72, 'Chaim Monahan', 'mossie63', 'fgraham@example.com', '2022-01-09 23:31:31', '$2y$10$yJUOrIqu.9KPyl75I00ajO0l2OwwbloFfiRKe96RTOSdaqoH7zibi', NULL, 'xRrlVpHlQj', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(73, 'Gwen Parisian V', 'glover.tommie', 'tyrese92@example.com', '2022-01-09 23:31:31', '$2y$10$DLrjMzw23oJqma9BsXggh.asAxFmSOQf8DSGADf/hPreAPZ/eiU0S', NULL, 'dh2az908pF', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(74, 'Novella Emmerich', 'stamm.nannie', 'ngrimes@example.com', '2022-01-09 23:31:31', '$2y$10$7UbyO029EjRXVDlnEMXgLuS2RFBKIReAeILrHBVR.vso5Pa.VYei2', NULL, 'nHJ0YL3rnN', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(75, 'Mohammed Renner', 'isaiah.murphy', 'ohara.mark@example.com', '2022-01-09 23:31:31', '$2y$10$NaTbsnPY3DL.ol1RLDgsie7EBnEN03q8cNirMTt6I2A46XCbblj4e', NULL, 'u502ClYBYG', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(76, 'Olen Zieme', 'ulises.west', 'clotilde89@example.net', '2022-01-09 23:31:31', '$2y$10$n6OO9Nlg4Dk6IU6D/IFF3eeEHfq10LtqiCmGModtzl/wS20r7sHe2', NULL, '9ZCv6Nptdf', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(77, 'Gerson Muller IV', 'johns.serena', 'judd70@example.org', '2022-01-09 23:31:31', '$2y$10$HW12Xgmt0HRLSYsWmi5D7./oq4CPtcyuaw7N4WeDa23fzogj/Smym', NULL, 'sUEoimWyEi', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(78, 'Wilbert D\'Amore', 'wnitzsche', 'purdy.jace@example.org', '2022-01-09 23:31:31', '$2y$10$TiZyZ0ifeC2tSc6w/hyAPuWwmMfsDaynYZJlSk5bKY2EcdU/dP8qy', NULL, 'CgoF5Eks3I', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(79, 'Webster Koelpin', 'retta.lindgren', 'koby13@example.com', '2022-01-09 23:31:31', '$2y$10$x8xH7Uqn9HX7AQosHX765OguYc6U2ML9lCFENmeOWvzN.JolR2MBa', NULL, 'R1leqaAyMz', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(80, 'Mrs. Esta Friesen', 'ernestine.hilpert', 'cornell.gleason@example.org', '2022-01-09 23:31:31', '$2y$10$3YAlndwd8EN/U77k1JtSheyS/1h/93V4NiS6UQIYYsxNlkudZFvz2', NULL, 'GEZwHckyn4', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(81, 'Dr. Tommie Boyle', 'diana.nader', 'kari.hane@example.org', '2022-01-09 23:31:31', '$2y$10$QvuhMOw/wJ7PJueTEkgR9eyDxosTuydDTqVutJ/BOGIOB/vCLGTaC', NULL, 'P7C6xGtkBG', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(82, 'Laverne Denesik', 'magnolia08', 'ruby.abernathy@example.org', '2022-01-09 23:31:31', '$2y$10$qGxc93iwnXYxAQ6tn6kTv.wJHKKNcIlulpSWw..DbFKq37nQllxIC', NULL, 'Ezbay7rrwK', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(83, 'Prof. Brenden Gusikowski', 'keira.kertzmann', 'rosenbaum.tevin@example.com', '2022-01-09 23:31:32', '$2y$10$qf08On8m48LvhnURXjCsN.6u6caCqgnhz6i2SzsOaahQCov/.Lf2q', NULL, 'BbJX3RuwjM', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(84, 'Arnulfo Wolf', 'winston60', 'kaelyn05@example.org', '2022-01-09 23:31:32', '$2y$10$dxjcwNHPoaKvkOUucvDYV.rHqOJU/RFcGET.esE2xLSz3KtTXbgGm', NULL, 'Lol3bNa8Hk', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(85, 'Joanne Rogahn', 'mayert.jailyn', 'holly23@example.net', '2022-01-09 23:31:32', '$2y$10$sG8chx6pX2Epit3iNwKFtekyGzLvy8QZMq./.r2C50xPcm1vF1qia', NULL, 'aVtnZl8bBu', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(86, 'Mrs. Darlene Grady', 'sgoldner', 'omorar@example.com', '2022-01-09 23:31:32', '$2y$10$W.EYFES5N3.h2sMIenRpcOp68AQy3IPNNUosDa0Zj6Et2eVPpDgWO', NULL, 'x9wBK8APsl', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(87, 'June O\'Kon', 'kariane07', 'dickinson.adolf@example.org', '2022-01-09 23:31:32', '$2y$10$3pGI3u2laPv6QAABcRFzYeqUTIh12/1NarG1AfFMh.xOpYrmC3vXy', NULL, '1N0Edqb9so', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(88, 'Carter Hoppe PhD', 'juliet65', 'yryan@example.net', '2022-01-09 23:31:32', '$2y$10$YfildXvKG.BkB33W5W1ZgOP.opbXLR35XWTZk2X2EQfq61ki.lDVC', NULL, 'NRfHu93jd6', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(89, 'Cathryn Runolfsson Jr.', 'oconnell.kevon', 'zulauf.amira@example.com', '2022-01-09 23:31:32', '$2y$10$0QD64.30b9pF3PsLSYxkzed1LZBGuJ.AoXQDlw7lWwVbQ7ysoenVK', NULL, '3RD1DJhMK1', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(90, 'Prof. Zoe King', 'nstiedemann', 'pmcdermott@example.net', '2022-01-09 23:31:32', '$2y$10$09duqcuPVI5smklbWA2Jeu87YqZxB5eqQXTWaS1w4se6a7Py.zwDS', NULL, 'BgTLIOwV6i', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(91, 'Gabe Koelpin', 'whauck', 'chadrick12@example.com', '2022-01-09 23:31:32', '$2y$10$QHooUMv9/utJcrdFjrr0xOGIUMwDj9Nej.vWr1zpknnDhl4T7zV1i', NULL, '12YOwwKV2s', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(92, 'Keegan Greenholt V', 'bahringer.agnes', 'dana.zemlak@example.net', '2022-01-09 23:31:32', '$2y$10$fYAc0LR5/5XcBrHuWp5ifuYBDxJWkuK0eZFHC8A1xkTWtG/q9D6B.', NULL, 'nvuSFVfDxn', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(93, 'Viviane Grant', 'ryan.jayson', 'erika.ebert@example.net', '2022-01-09 23:31:32', '$2y$10$ipp5zsJvLjr9v8rzS5gMQ..JlomEd2lTVq05/O1e4OyTC6k/5dD5y', NULL, 'B45oBSCI6s', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(94, 'Kattie Sporer', 'ubreitenberg', 'lila60@example.com', '2022-01-09 23:31:32', '$2y$10$U3HntpHYqikCYUjl7XAlKOhui6J6J1Wt1Dee1XSYpmWgLkq7e7Veu', NULL, 'tiDTjCILwW', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(95, 'Mr. Lorenzo Herzog', 'kuphal.tate', 'mfritsch@example.net', '2022-01-09 23:31:32', '$2y$10$G6yOy08B5gFotR9AM0yzuuGm5dDKATadGO8TMuCMUzQ1/r90A2eJi', NULL, 'hq43BhvEax', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(96, 'Martine Ryan', 'price.cierra', 'ona.lemke@example.org', '2022-01-09 23:31:32', '$2y$10$GS7HRNgICLZMswqqR/nFq.P.8s3wnveHAhV4E6rDu2jmoCWK8KJ2u', NULL, '12vz4yJ3Hy', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(97, 'Aditya Ebert', 'abshire.bettye', 'spencer.bryon@example.org', '2022-01-09 23:31:33', '$2y$10$2Q8XR.sdFvAkCjuve/jdxeLdQIrp/D0kpN6roYvGUDue4Xv0Q2xSC', NULL, '2F02917bAl', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(98, 'Timmothy Effertz II', 'jefferey.hyatt', 'vickie40@example.net', '2022-01-09 23:31:33', '$2y$10$4aJ0YlU6GPIbA/M3GGCxdeteyOCZiZg1i5RyzZZz1NFi40Fzrny8W', NULL, '6XKw0bGAqN', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(99, 'Dr. Ruben Walker', 'madie.kirlin', 'mcglynn.marcelina@example.org', '2022-01-09 23:31:33', '$2y$10$JRFMb6CJlsy3dMoE8Jsm2ubpL8aqA74UC0dZyS1W/4RrzzUQKh8j6', NULL, 'luzVpFLAUN', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33'),
(100, 'Jaida Kohler', 'reilly.misty', 'rebecca01@example.net', '2022-01-09 23:31:33', '$2y$10$CiCXfBsEVh3Cu.qU8KPDNuH0DtO0CEhopTfoGAeaJAeAl/64OTwmu', NULL, 'jUpdyAUSLt', 1, NULL, NULL, '2022-01-09 23:31:33', '2022-01-09 23:31:33');

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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_fk_division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_contacts`
--
ALTER TABLE `site_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_fk_division_id` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
