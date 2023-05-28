-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2022-10-29 12:57:24
-- 服务器版本： 5.7.38-log
-- PHP 版本： 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `192168379`
--

-- --------------------------------------------------------

--
-- 表的结构 `app_updates`
--

CREATE TABLE `app_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `app_updates`
--

INSERT INTO `app_updates` (`id`, `version`, `created_at`, `updated_at`) VALUES
(1, '2_0_10', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(2, '2_0_13', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(3, '2_0_14', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(4, '2_0_16', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(5, '2_1_1', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(6, '2_1_2', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(7, '2_2_0', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(8, '2_2_0_13', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(9, '2_2_1', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(10, '2_2_2', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(11, '2_2_3', '2022-10-27 19:36:17', '2022-10-27 19:36:17'),
(12, '2_2_4', '2022-10-27 19:36:17', '2022-10-27 19:36:17');

-- --------------------------------------------------------

--
-- 表的结构 `balances`
--

CREATE TABLE `balances` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `billing_alerts`
--

CREATE TABLE `billing_alerts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `triggered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `customers`
--

CREATE TABLE `customers` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `dunnings`
--

CREATE TABLE `dunnings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `exifs`
--

CREATE TABLE `exifs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time_original` timestamp NULL DEFAULT NULL,
  `artist` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `x_resolution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `y_resolution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_space` int(11) DEFAULT NULL,
  `camera` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aperture_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exposure_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focal_length` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso` int(11) DEFAULT NULL,
  `aperture_f_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccd_width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `failed_payments`
--

CREATE TABLE `failed_payments` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `source` enum('balance','credit-card') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `metadata` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `favourite_folder`
--

CREATE TABLE `favourite_folder` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `files`
--

CREATE TABLE `files` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `basename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimetype` text COLLATE utf8mb4_unicode_ci,
  `filesize` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `folders`
--

CREATE TABLE `folders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emoji` longtext COLLATE utf8mb4_unicode_ci,
  `team_folder` tinyint(1) NOT NULL DEFAULT '0',
  `author` enum('user','member','visitor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"21610f46-f41a-4bb8-841a-47a78850e813\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"App\\\\Users\\\\Models\\\\UserSetting\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"75288ff4-0223-423f-bc52-8fa0390aebb6\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1666928177, 1666928177),
(2, 'default', '{\"uuid\":\"497f44d7-8d42-47d2-9f27-29560c1c94c7\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"9b70d45e-ff01-4d0f-bb8f-5789a1c42c52\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1666928681, 1666928681),
(3, 'default', '{\"uuid\":\"3bcaee38-b940-48d3-a968-6209c1cf8f82\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1666928762, 1666928762),
(4, 'default', '{\"uuid\":\"fe5dba4b-b0e0-41b9-85fc-2293ac59b432\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"35a93b59-c63d-43af-b3c2-21d8659c9382\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1666928762, 1666928762),
(5, 'high', '{\"uuid\":\"a7c7d89c-1c94-40b6-821c-7670534ad65a\",\"displayName\":\"Domain\\\\Files\\\\Actions\\\\GenerateImageThumbnailAction\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\QueueableAction\\\\ActionJob\",\"command\":\"O:32:\\\"Spatie\\\\QueueableAction\\\\ActionJob\\\":5:{s:14:\\\"\\u0000*\\u0000actionClass\\\";s:49:\\\"Domain\\\\Files\\\\Actions\\\\GenerateImageThumbnailAction\\\";s:13:\\\"\\u0000*\\u0000parameters\\\";a:3:{s:8:\\\"fileName\\\";s:40:\\\"41d82827-b801-4036-b792-b6a05d873eb2.png\\\";s:6:\\\"userId\\\";s:36:\\\"419d7017-1505-4f66-ac42-31f0bdda7f59\\\";s:9:\\\"execution\\\";s:5:\\\"later\\\";}s:7:\\\"\\u0000*\\u0000tags\\\";a:1:{i:0;s:49:\\\"Domain\\\\Files\\\\Actions\\\\GenerateImageThumbnailAction\\\";}s:10:\\\"\\u0000*\\u0000backoff\\\";a:0:{}s:5:\\\"queue\\\";s:4:\\\"high\\\";}\"}}', 0, NULL, 1666928763, 1666928763),
(6, 'default', '{\"uuid\":\"d12cce7c-930a-4d5f-bc81-fe10a2ecc70d\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"17d0fad1-ea04-42cc-b7fa-0e506e9da6a7\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1666928763, 1666928763),
(7, 'default', '{\"uuid\":\"1d029ee9-a314-4d64-8007-97066d136a5c\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667001028, 1667001028),
(8, 'default', '{\"uuid\":\"2c4ed400-ab1f-42fe-a24e-ea092f3c5046\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667001028, 1667001028),
(9, 'default', '{\"uuid\":\"93657d67-8b84-419b-99ea-05bc3332d94d\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667001043, 1667001043),
(10, 'default', '{\"uuid\":\"6dfbb8e4-ae1d-4039-8071-38eaa8cbc973\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667001043, 1667001043),
(11, 'high', '{\"uuid\":\"6c7e5aa9-6c2c-4895-b9dc-a92bc4d7644e\",\"displayName\":\"Domain\\\\Files\\\\Actions\\\\GenerateImageThumbnailAction\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\QueueableAction\\\\ActionJob\",\"command\":\"O:32:\\\"Spatie\\\\QueueableAction\\\\ActionJob\\\":5:{s:14:\\\"\\u0000*\\u0000actionClass\\\";s:49:\\\"Domain\\\\Files\\\\Actions\\\\GenerateImageThumbnailAction\\\";s:13:\\\"\\u0000*\\u0000parameters\\\";a:3:{s:8:\\\"fileName\\\";s:40:\\\"f6a84192-f8dd-4c76-9cc0-5765e70207c9.jpg\\\";s:6:\\\"userId\\\";s:36:\\\"419d7017-1505-4f66-ac42-31f0bdda7f59\\\";s:9:\\\"execution\\\";s:5:\\\"later\\\";}s:7:\\\"\\u0000*\\u0000tags\\\";a:1:{i:0;s:49:\\\"Domain\\\\Files\\\\Actions\\\\GenerateImageThumbnailAction\\\";}s:10:\\\"\\u0000*\\u0000backoff\\\";a:0:{}s:5:\\\"queue\\\";s:4:\\\"high\\\";}\"}}', 0, NULL, 1667001204, 1667001204),
(12, 'default', '{\"uuid\":\"1153ca2b-38fe-4f28-8376-dd15ab2c8ea1\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\",\"command\":\"O:33:\\\"Laravel\\\\Scout\\\\Jobs\\\\MakeSearchable\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"c363b662-b71b-4efc-bf14-1dd468ccb934\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667001204, 1667001204),
(13, 'default', '{\"uuid\":\"0379bf8d-10e8-4689-8d98-91276eedeb39\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"17d0fad1-ea04-42cc-b7fa-0e506e9da6a7\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007368, 1667007368),
(14, 'default', '{\"uuid\":\"f1f3a1e1-a85a-4a12-88bd-2ac1aa2634cd\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"35a93b59-c63d-43af-b3c2-21d8659c9382\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007368, 1667007368),
(15, 'default', '{\"uuid\":\"b9413ad6-0dce-4fd7-8e00-818e756123a1\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"folders\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007368, 1667007368),
(16, 'default', '{\"uuid\":\"876483ca-b1ca-4dcd-8ead-62979ad50998\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"c363b662-b71b-4efc-bf14-1dd468ccb934\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007372, 1667007372),
(17, 'default', '{\"uuid\":\"09c32d8e-8deb-40bd-af32-6e6da24788a9\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"9b70d45e-ff01-4d0f-bb8f-5789a1c42c52\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007374, 1667007374),
(18, 'default', '{\"uuid\":\"23fb9c00-5ca9-4e0a-b489-47d20c9ea50d\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(19, 'default', '{\"uuid\":\"47da103b-f5a7-4c3e-87e7-71817c3f62ee\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"Domain\\\\Folders\\\\Models\\\\Folder\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"2bee5955-0e7a-421a-9998-fb888360f477\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(20, 'default', '{\"uuid\":\"0a14de4c-47ff-47fa-a5ac-3b038b9438a6\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"17d0fad1-ea04-42cc-b7fa-0e506e9da6a7\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(21, 'default', '{\"uuid\":\"932942b3-9045-4e2b-bccb-588533f3820e\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"17d0fad1-ea04-42cc-b7fa-0e506e9da6a7\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(22, 'default', '{\"uuid\":\"1636d9c0-2034-4e4e-b536-3294d2a61485\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"35a93b59-c63d-43af-b3c2-21d8659c9382\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(23, 'default', '{\"uuid\":\"4d7f7977-1249-4345-aa8b-8c53db91c1cc\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"35a93b59-c63d-43af-b3c2-21d8659c9382\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(24, 'default', '{\"uuid\":\"d14e66ba-fc9d-4bad-8069-4914c9585f91\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"9b70d45e-ff01-4d0f-bb8f-5789a1c42c52\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(25, 'default', '{\"uuid\":\"fdc28f5c-a27d-47e0-89a3-7999ae5d57e3\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"9b70d45e-ff01-4d0f-bb8f-5789a1c42c52\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(26, 'default', '{\"uuid\":\"40d32a0f-b31d-442b-b59a-1368d7421f77\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"c363b662-b71b-4efc-bf14-1dd468ccb934\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387),
(27, 'default', '{\"uuid\":\"d5ae67fa-61ea-408c-8e10-dbf998ec6869\",\"displayName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\",\"command\":\"O:35:\\\"Laravel\\\\Scout\\\\Jobs\\\\RemoveFromSearch\\\":2:{s:6:\\\"models\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:24:\\\"Domain\\\\Files\\\\Models\\\\File\\\";s:2:\\\"id\\\";a:1:{i:0;s:36:\\\"c363b662-b71b-4efc-bf14-1dd468ccb934\\\";}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"connection\\\";s:8:\\\"database\\\";}\"}}', 0, NULL, 1667007387, 1667007387);

-- --------------------------------------------------------

--
-- 表的结构 `languages`
--

CREATE TABLE `languages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
('532e077e-4c55-4378-a7eb-47986ea43251', 'Chinese', 'zh', '2022-10-27 23:13:23', '2022-10-27 23:13:23'),
('ad77413c-b7de-4a4c-b119-d22794a6898a', 'English', 'en', '2022-10-27 19:36:17', '2022-10-27 19:36:17');

-- --------------------------------------------------------

--
-- 表的结构 `language_translations`
--

CREATE TABLE `language_translations` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `language_translations`
--

INSERT INTO `language_translations` (`key`, `value`, `lang`) VALUES
('plans', 'Plans', 'en'),
('total', 'Total', 'en'),
('create_plan', 'Create Plan', 'en'),
('delete_plan', 'Delete Plan', 'en'),
('admin_page_plans.disclaimer_delete_plan', 'You can delete this plan, but, pay attention! Your plan will be deleted, but users who are subscribed with this plan, will be still charged unless they cancel subscription.', 'en'),
('description_optional', 'Description (optional)', 'en'),
('plan_description', 'Plan description', 'en'),
('type_plan_name', 'Type plan name', 'en'),
('plan_name', 'Plan name', 'en'),
('plan_price', 'Plan price', 'en'),
('admin_page_plans.form.status_help', 'Status of your plan availability on website.', 'en'),
('admin_page_plans.form.storage', 'Storage Capacity in GB', 'en'),
('admin_page_plans.form.storage_helper', 'You have to type only number e.g. value \'5\' means, user will have 5GB of storage capacity.', 'en'),
('admin_page_plans.form.storage_plac', 'Storage capacity', 'en'),
('admin_page_plans.subscribers.empty', 'There is no any subscriber yet.', 'en'),
('subscribers', 'Subscribers', 'en'),
('settings', 'Settings', 'en'),
('billing_address', 'Billing Address', 'en'),
('admin_settings.billings.address_plac', 'Type your billing address', 'en'),
('billing_city', 'Billing City', 'en'),
('admin_settings.billings.city_plac', 'Type your billing city', 'en'),
('admin_settings.billings.company_name', 'Company Name', 'en'),
('admin_settings.billings.company_name_plac', 'Type your company name', 'en'),
('admin_settings.billings.country', 'Billing Country', 'en'),
('admin_settings.billings.country_plac', 'Select your billing country', 'en'),
('admin_settings.billings.phone_number', 'Billing Phone Number (optional)', 'en'),
('admin_settings.billings.phone_number_plac', 'Type your billing phone number', 'en'),
('admin_settings.billings.postal_code', 'Billing Postal Code', 'en'),
('admin_settings.billings.postal_code_plac', 'Type your billing postal code', 'en'),
('admin_settings.billings.section_billing', 'Billing Information', 'en'),
('admin_settings.billings.section_company', 'Company Information', 'en'),
('admin_settings.billings.state', 'Billing State', 'en'),
('admin_settings.billings.state_plac', 'Type your billing state', 'en'),
('admin_settings.billings.vat', 'VAT Number', 'en'),
('admin_settings.billings.vat_plac', 'Type your VAT number', 'en'),
('admin_settings.payments.stripe_pub_key', 'Publishable Key', 'en'),
('admin_settings.payments.stripe_pub_key_plac', 'Paste your publishable key', 'en'),
('admin_settings.payments.stripe_sec_key', 'Secret Key', 'en'),
('admin_settings.payments.stripe_sec_key_plac', 'Paste your secret key', 'en'),
('billings', 'Billings', 'en'),
('payments', 'Payments', 'en'),
('mo.', 'Mo.', 'en'),
('premium', 'Premium', 'en'),
('invoices', 'Invoices', 'en'),
('subscription', 'Subscription', 'en'),
('page_pricing_tables.storage_capacity', 'Of Storage Capacity', 'en'),
('page_pricing_tables.vat_excluded', 'Price displayed excludes VAT.', 'en'),
('popup_deleted_plan.title', 'Plan was deleted', 'en'),
('popup_subscription_cancel.message', 'You\'ll continue to have access to the features you\'ve paid for until the end of your billing cycle.', 'en'),
('popup_subscription_cancel.title', 'Subscription Was Canceled', 'en'),
('plan', 'Plan', 'en'),
('plan_delete', 'Plan Delete', 'en'),
('plan_settings', 'Plan Settings', 'en'),
('pricing_plans', 'Pricing Plans', 'en'),
('toaster.plan_created', 'Your plan was successfully created!', 'en'),
('toaster.credentials_set', 'Your {service} credentials was successfully set!', 'en'),
('user_invoices.empty', 'You don\'t have any invoices yet.', 'en'),
('print_button', 'Print Document', 'en'),
('invoice', 'Invoice', 'en'),
('date', 'Date', 'en'),
('product', 'Product', 'en'),
('invoice_number', 'Invoice Number', 'en'),
('seller', 'Seller', 'en'),
('client', 'Client', 'en'),
('seller_vat', 'VAT number', 'en'),
('phone', 'Phone', 'en'),
('postal_code', 'Postal Code', 'en'),
('price', 'Price', 'en'),
('charged_features', 'Charged Features', 'en'),
('team_members', 'Team Members', 'en'),
('add_max_team_members', 'Add max team members in number', 'en'),
('max_team_members_total', 'Up to {value} Team Members', 'en'),
('max_team_members.unlimited', 'Unlimited Team Members', 'en'),
('max_storage_amount', '{value} GB Storage Size', 'en'),
('monthly', 'Monthly', 'en'),
('yearly', 'Yearly', 'en'),
('month', 'Month', 'en'),
('year', 'Year', 'en'),
('bandwidth', 'Bandwidth', 'en'),
('storage', 'Storage', 'en'),
('flatFee', 'Flat Fee', 'en'),
('feature_usage_desc_flatFee', 'Price for the service.', 'en'),
('feature_usage_desc_bandwidth', 'Data amount you transferred to/from your account.', 'en'),
('feature_usage_desc_storage', 'Total storage amount you are using.', 'en'),
('feature_usage_desc_member', 'Total members you invited to your team folders.', 'en'),
('feature_usage_desc_platform', 'Total storage amount you are using.', 'en'),
('credit_to_auto_withdraw', 'You own {credit} in credits that will be automatically withdrawn on your next payment.', 'en'),
('transactions', 'Transactions', 'en'),
('not_any_transactions', 'There aren\'t any transactions.', 'en'),
('service', 'Service', 'en'),
('payed_at', 'Payed At', 'en'),
('current_estimated_usage', 'Your current estimated usage:', 'en'),
('payment_was_successfully_received', 'Your payment was successfully received.', 'en'),
('failed_to_load_paypal', 'Failed to load the PayPal service', 'en'),
('cancel_payment', 'Cancel Payment', 'en'),
('not_any_payment_method', 'There isn\'t any payment method yet.', 'en'),
('select_payment_method', 'Select Payment Method', 'en'),
('change_your_plan', 'Change Your Plan', 'en'),
('not_any_plan', 'There isn\'t any plan yet.', 'en'),
('change_plan', 'Change Plan', 'en'),
('subscription_changed', 'Your subscription was successfully changed.', 'en'),
('expires', 'Expires', 'en'),
('want_to_delete_card_title', 'Are you sure you want to delete your credit card?', 'en'),
('want_to_delete_card_description', 'We will no longer settle your payments automatically and you will have to fund your account for the next payments.', 'en'),
('credit_card_deleted', 'Your credit card was deleted.', 'en'),
('billed_annually', 'Billed Annually', 'en'),
('restricted_account_warning', 'Your functionality is restricted.', 'en'),
('subscription_type', 'Subscription Type', 'en'),
('subscription_type_note', 'Please do not change in production environment.', 'en'),
('select_subscription_type', 'Select your subscription type', 'en'),
('subscription_type_change_warn', 'Are you sure you want to change subscription type?', 'en'),
('subscription_type_change_warn_description', 'We strongly do not recommend change this value if there is any subscribed user to prevent any failures. You can operate only with one type of subscription and you can not change it on the fly!', 'en'),
('x_days_intervals', '30 Days intervals', 'en'),
('interval', 'Interval', 'en'),
('currency', 'Currency', 'en'),
('allow_pay_by_card', 'Allow your users pay by their credit card', 'en'),
('paste_webhook_secret', 'Paste your webhook secret', 'en'),
('configure_your_credentials', 'Configure Your Credentials', 'en'),
('allow_registration_bonus', 'Allow Registration Bonus', 'en'),
('allow_registration_bonus_description', 'Credit user automatically bonus to his balance after registration.', 'en'),
('registration_bonus_amount', 'The Amount of Registration Bonus', 'en'),
('registration_bonus_amount_description', 'This bonus will be automatically added when user successfully register his account.', 'en'),
('registration_bonus_amount_', 'Type registration bonus amount...', 'en'),
('metered_plan', 'Metered Plan', 'en'),
('metered_plan_description', 'Your price set up for billing multiple features by user usage.', 'en'),
('plan_details', 'Plan Details', 'en'),
('copy_webhook_note', 'Please copy your url and paste it to the service webhook setup.', 'en'),
('webhook_url', 'Your Webhook URL', 'en'),
('payment_description', 'Payment Description', 'en'),
('payment_description_note', 'The description showed below user payment method selection.', 'en'),
('additional_info_about_payment_method_', 'Describe in short which methods user can pay with this payment method...', 'en'),
('select_plan_currency', 'Select plan currency', 'en'),
('select_billing_interval', 'Select billing interval', 'en'),
('features', 'Features', 'en'),
('bandwidth_per_gb', 'Bandwidth Price per 1GB', 'en'),
('bandwidth_per_gb_note', 'Charge your user by the amount of data he upload or download.', 'en'),
('type_bandwidth_price', 'Type the price per 1GB...', 'en'),
('storage_per_gb', 'Storage Price per 1GB', 'en'),
('storage_per_gb_note', 'Charge your user by the amount of data he has stored on the disk per 1GB.', 'en'),
('type_storage_price', 'Type the price per 1GB...', 'en'),
('member_per_unit', 'Price per 1 Member', 'en'),
('member_per_unit_note', 'Charge your user by the total members he use in his Team Folders.', 'en'),
('type_member_price', 'Type the price per 1 member...', 'en'),
('flat_fee_unit_gb', 'Flat Fee per Cycle', 'en'),
('flat_fee_unit_gb_note', 'Charge monthly flat fee.', 'en'),
('type_flat_fee_price', 'Type the price...', 'en'),
('price_change_not_possible_create_new', 'Price change is not possible. If you would like to change your price or currency, please feel free to create a new plan.', 'en'),
('metered_billing_settings', 'Metered Billing Settings', 'en'),
('allow_subscription_payments', 'Allow Subscription Payments', 'en'),
('allow_subscription_payments_description', 'User can subscribe to fixed or metered plan', 'en'),
('subscription_payments', 'Subscription Payments', 'en'),
('free_plan_parameters', '{storage}GB Free storage space with {members} Team members', 'en'),
('active_until', 'Active until {date}', 'en'),
('ends_at_date', 'Ends at {date}', 'en'),
('price_per_month', '{price} Per Month', 'en'),
('price_per_year', '{price} Per Year', 'en'),
('balance_will_be_increased', 'User balance will be increased for the amount above.', 'en'),
('increase_for', 'Increase user balance for...', 'en'),
('increase_balance', 'Increase Balance', 'en'),
('balance_was_increased', 'User balance was successfully increased', 'en'),
('user_dont_have_transactions', 'User doesn\'t have any transactions yet.', 'en'),
('billing_est.', 'Billing Est.', 'en'),
('ends_at', 'Ends At', 'en'),
('renews_at', 'Renews At', 'en'),
('create_first_plan', 'Create First Plan', 'en'),
('all_visible_subscriptions_here', 'All your subscriptions will be visible here', 'en'),
('all_visible_plans_here', 'All your plans will be visible here', 'en'),
('transaction_will_be_here', 'All your transactions will be visible here', 'en'),
('latest_transactions', 'Latest Transactions', 'en'),
('show_all_transactions', 'Show all transactions', 'en'),
('earnings', 'Earnings', 'en'),
('records_updated_daily_bases', 'Records are updated on daily bases.', 'en'),
('till_now', 'till now', 'en'),
('usage_estimates', 'Usage Estimates', 'en'),
('payment_method_update_redirect_description', 'You will be redirected to your payment provider to edit your payment method.', 'en'),
('update_payment_method', 'Update your Payment Method', 'en'),
('update_payments', 'Update Payments', 'en'),
('credit_card_stored', 'Your credit card was stored successfully', 'en'),
('store_my_credit_card', 'Store My Credit Card', 'en'),
('add_payment_method', 'Add Payment Method', 'en'),
('auto_settled_credit_card', 'We are settling your payment automatically via your saved credit card.', 'en'),
('payment_method', 'Payment Method', 'en'),
('unable_to_charge', 'We are unable to charge your usage. Please register new credit card or fund your account with sufficient amount and we\'ll give it another try!', 'en'),
('failed_payments', 'Failed Payments', 'en'),
('upgrade_to_get_more', 'Upgrade your account to get more.', 'en'),
('free_plan', 'Free Plan', 'en'),
('want_cancel_subscription', 'Are you sure you want to cancel subscription?', 'en'),
('upgrade_downgrade_plan', 'Upgrade or Downgrade Plan', 'en'),
('upgrade_downgrade_plan_description', 'You can upgrade your plan at any time you want.', 'en'),
('cancel_now', 'Cancel Now', 'en'),
('cancel_subscription', 'Cancel Subscription', 'en'),
('cancel_subscription_description', 'You can cancel your subscription now. You\'ll continue to have access to the features you\'ve paid for until the end of your billing cycle.', 'en'),
('edit_your_subscription', 'Edit your Subscription', 'en'),
('want_to_delete_alert_description', 'You will no longer receive any notifications that your billing limit has been exceeded.', 'en'),
('want_to_delete_alert', 'Are you sure you want to delete your alert?', 'en'),
('alert_set_successfully', 'Your billing alert was set successfully', 'en'),
('alert_updated', 'Your billing alert was updated successfully', 'en'),
('set_alert', 'Set Alert', 'en'),
('update_alert', 'Update Alert', 'en'),
('deleted_alert', 'Your billing alert was deleted.', 'en'),
('alert_amount_', 'Alert Amount...', 'en'),
('billing_alert', 'Billing Alert', 'en'),
('billing_alert_description', 'Alert will be triggered after you reach the value above.', 'en'),
('billing_alert_notes', 'You will receive an email whenever your monthly balance reaches the specified amount above.', 'en'),
('make_payment', 'Make a Payment', 'en'),
('fund_account_balance', 'Fund Your Account Balance...', 'en'),
('amount_increase_description', 'The amount will be increased as soon as we register your charge from payment gateway.', 'en'),
('balance', 'Balance', 'en'),
('upgrade_account', 'Upgrade Account', 'en'),
('upgrade_your_account', 'Upgrade Your Account', 'en'),
('upload_temporarily_disabled', 'Upload is temporarily disabled', 'en'),
('upload_temporarily_disabled_note', 'Please review your billing settings.', 'en'),
('create_folder_temporarily_disabled', 'Folder creation is temporarily disabled', 'en'),
('create_folder_temporarily_disabled_desc', 'Please review your billing settings.', 'en'),
('download_temporarily_disabled', 'File download is temporarily disabled', 'en'),
('download_temporarily_disabled_desc', 'Please review your billing settings.', 'en'),
('billing', 'Billing', 'en'),
('usage', 'usage', 'en'),
('charge', 'Charge', 'en'),
('credit', 'Credit', 'en'),
('withdrawal', 'Withdrawal', 'en'),
('interval.year', 'Yearly', 'en'),
('interval.month', 'Monthly', 'en'),
('subscriptions', 'Subscriptions', 'en'),
('show_billing', 'Show Billing', 'en'),
('billing_alert_reached_short', 'Billing Alert Reached!', 'en'),
('billing_alert_reached_short_note', 'The billing alert you set previously has been reached. Please revise your spending.', 'en'),
('billing_alert_reached_long', 'Your billing alert has been reached!', 'en'),
('billing_alert_reached_long_note', 'The billing alert you set previously has been reached. Please go to your user account and revise your spending', 'en'),
('you_received_bonus', 'You Received :bonus', 'en'),
('you_received_bonus_note', 'You received credit bonus :bonus from us. Happy spending!', 'en'),
('you_received_registration_bonus_note', 'You received credit bonus :bonus for your registration. Happy spending!', 'en'),
('withdrawal_failed_short', 'Withdrawal Failed', 'en'),
('withdrawal_failed_short_note', 'Your credit withdrawal for your account didn\'t go through. Please make sure you have sufficient funds on your account.', 'en'),
('withdrawal_failed_long', 'Uh-oh! Your credit withdrawal for your pre-paid subscription failed', 'en'),
('withdrawal_failed_long_note', 'It looks like your subscription credit withdrawal for your account didn\'t go through. Please make sure you have sufficient funds on your account and we\'ll give it another try!', 'en'),
('fund_your_account', 'Fund Your Account', 'en'),
('subscription_created_short', 'Subscription Has Been Created', 'en'),
('subscription_created_short_note', 'Your subscription :plan has been successfully created', 'en'),
('subscription_created_long', 'Your subscription :plan has been successfully created', 'en'),
('subscription_created_long_note', 'You have been successfully subscribed to your :plan subscription. Now you can take full advantage of our platform.', 'en'),
('go_to_subscription', 'Go to Subscription', 'en'),
('charge_from_card_failed_subject', 'Uh-oh! Your withdrawal from your credit card for pre-paid subscription failed', 'en'),
('charge_from_card_failed_line', 'It looks like withdrawal from your credit card for pre-paid subscription for your account didn\'t go through. Please check your credit card or register new credit card for your account and we\'ll give it another try!', 'en'),
('charge_from_card_failed_action', 'Go to Billing Settings', 'en'),
('charge_from_card_failed_again_subject', 'Uh-oh! Your withdrawal from your credit card for pre-paid subscription failed once again', 'en'),
('charge_from_card_failed_again_line', 'It looks like withdrawal from your credit card for pre-paid subscription for your account didn\'t go through once again. Please check your credit card or register new credit card for your account and we\'ll give it another try!', 'en'),
('charge_from_card_failed_again_action', 'Update Your Payment Information', 'en'),
('confirm_payment', 'Confirm Payment', 'en'),
('confirm_payment_greeting', 'Confirm your :amount payment', 'en'),
('confirm_payment_line', 'Extra confirmation is needed to process your payment. Please continue to the payment page by clicking on the button below.', 'en'),
('confirm_payment_action', 'Confirm Payment', 'en'),
('registration_bonus', 'Registration Bonus', 'en'),
('number', 'Number', 'en'),
('head_office', 'Head Office', 'en'),
('vat_id', 'VAT ID', 'en'),
('date_of_issue', 'Date of issue', 'en'),
('period', 'Period', 'en'),
('Description', 'description', 'en'),
('description', 'description', 'en'),
('generated_by', 'Generated by', 'en'),
('synchronize_plans', 'Synchronize Plans', 'en'),
('synchronizing_plans', 'Synchronizing Plans...', 'en'),
('plans_are_synchronizing', 'Your plans are synchronizing with the payment gateways', 'en'),
('plans_was_synchronized', 'Plans was successfully synchronized', 'en'),
('limit_usage_in_new_accounts_1_subject', 'Please make first payment for your account to fund your usage', 'en'),
('limit_usage_in_new_accounts_1_line', 'We are happy you are using our service. To continue to using our service, please make first payment for your account balance to fund your usage.', 'en'),
('limit_usage_in_new_accounts_2_subject', '📆 Reminder: Please make first payment for your account to fund your usage', 'en'),
('limit_usage_in_new_accounts_2_line', 'We are happy you are using our service. To continue to using our service, please make first payment for your account balance to fund your usage.', 'en'),
('limit_usage_in_new_accounts_3_subject', '‼️ Uh-oh! Your functionality was restricted. Please make payment to continue using your account', 'en'),
('limit_usage_in_new_accounts_3_line', 'We are sorry for the inconvenience with using our service. To continue to using our service, please make first payment for your account balance to fund your usage and your functionality will be allowed as soon as possible.', 'en'),
('usage_bigger_than_balance_1_subject', '⚠️ You don\'t have sufficient funds in your account, please increase your account balance', 'en'),
('usage_bigger_than_balance_1_line', 'We are happy you are using our service. To continue to using our service, please increase your funds for your account balance to cover your usage.', 'en'),
('usage_bigger_than_balance_2_subject', '📆 Reminder: You don\'t have sufficient funds in your account, please increase your account balance', 'en'),
('usage_bigger_than_balance_2_line', 'We are happy you are using our service. To continue to using our service, please increase your funds for your account balance to cover your usage.', 'en'),
('usage_bigger_than_balance_3_subject', '‼️ Uh-oh! Your functionality was restricted. Please increase your funds for your account balance to cover your usage', 'en'),
('usage_bigger_than_balance_3_line', 'We are sorry for the inconvenience with using our service. To continue to using our service, please increase your funds for your account balance to cover your usage and your functionality will be allowed as soon as possible.', 'en'),
('dunning_notification_description', 'Please resolve your billing as soon as possible. Your functions can be restricted.', 'en'),
('allow_limit_usage_in_new_accounts', 'Allow limiting max usage before users will be forced to increase balance in first month of account existence', 'en'),
('allow_limit_usage_bigger_than_balance', 'Force users to increase balance when usage is bigger than their current balance', 'en'),
('limit_usage_description_for_restrictions', 'If user does not increase his balance or store his credit card, after third notification user account functionality will be restricted.', 'en'),
('type', 'Type', 'en'),
('cancel', 'Cancel', 'en'),
('close', 'Close', 'en'),
('create_folder', 'Create folder', 'en'),
('delete', 'Delete', 'en'),
('download_item', 'Download item', 'en'),
('info_panel', 'Info panel', 'en'),
('move', 'Move', 'en'),
('print', 'Print item', 'en'),
('share_item', 'Share item', 'en'),
('sorting_view', 'Sorting and View', 'en'),
('upload_files', 'Upload Files', 'en'),
('dashboard', 'Dashboard', 'en'),
('pages', 'Pages', 'en'),
('users', 'Users', 'en'),
('license', 'License', 'en'),
('version', 'Version', 'en'),
('show_all_users', 'Show All Users', 'en'),
('change_capacity', 'Change Capacity', 'en'),
('avatar', 'Avatar', 'en'),
('account_details', 'Account Details', 'en'),
('admin_page_user.create_user.label_email', 'Type E-mail', 'en'),
('admin_page_user.create_user.label_name', 'Type full name', 'en'),
('admin_page_user.create_user.submit', 'Create User', 'en'),
('admin_page_user.delete_user', 'Delete User', 'en'),
('admin_page_user.label_change_capacity', 'Type storage capacity in GB', 'en'),
('admin_page_user.label_delete_user', 'Type with Case Sensitive user name ‘{user}‘', 'en'),
('admin_page_user.label_person_info', 'Personal Information', 'en'),
('admin_page_user.placeholder_delete_user', 'Type here', 'en'),
('admin_page_user.save_role', 'Save Role', 'en'),
('admin_page_user.select_role', 'Select user role', 'en'),
('admin_page_user.send_password_link', 'Send Password Reset Link', 'en'),
('action', 'Action', 'en'),
('user', 'User', 'en'),
('role', 'Role', 'en'),
('storage_used', 'Storage Used', 'en'),
('detail', 'Detail', 'en'),
('password', 'Password', 'en'),
('content', 'Content', 'en'),
('admin_pages.form.content_plac', 'Type your content here...', 'en'),
('slug', 'Slug', 'en'),
('title', 'Title', 'en'),
('admin_pages.form.title_plac', 'Title name', 'en'),
('visibility', 'Visibility', 'en'),
('admin_pages.form.visibility_help', 'Status of your page visibility on website.', 'en'),
('page', 'Page', 'en'),
('status', 'Status', 'en'),
('admin_settings.appearance.description', 'App Description', 'en'),
('admin_settings.appearance.description_plac', 'Type your app description', 'en'),
('admin_settings.appearance.favicon', 'App Favicon (optional)', 'en'),
('admin_settings.appearance.logo', 'App Logo (optional)', 'en'),
('app_logo_dark_mode', 'App Logo Dark Mode (optional)', 'en'),
('app_logo_horizontal_dark_mode', 'App Logo Horizontal Dark Mode (optional)', 'en'),
('admin_settings.appearance.logo_horizontal', 'App Logo Horizontal (optional)', 'en'),
('admin_settings.appearance.section_general', 'General Settings', 'en'),
('admin_settings.appearance.title', 'App Title', 'en'),
('admin_settings.appearance.title_plac', 'Type your app title', 'en'),
('admin_settings.email.driver', 'Mail Driver', 'en'),
('admin_settings.email.email_disclaimer', 'This form is not fully pre-filled for security reasons. Your email settings is available in your <b class=\'text-theme dark-text-theme\'>.env</b> file. For apply new Email settings, please confirm your options by button at the end of form.', 'en'),
('admin_settings.email.encryption', 'Mail Encryption', 'en'),
('admin_settings.email.host', 'Mail Host', 'en'),
('admin_settings.email.password', 'Mail Password', 'en'),
('admin_settings.email.password_plac', 'Type your mail password', 'en'),
('admin_settings.email.port', 'Mail Port', 'en'),
('admin_settings.email.save_button', 'Save Email Settings', 'en'),
('admin_settings.others.allow_registration', 'Allow User Registration', 'en'),
('admin_settings.others.allow_registration_help', 'You can disable public registration for new users. You will still able to create new users in administration panel.', 'en'),
('admin_settings.others.allow_user_verification', 'Allow User Email Verification', 'en'),
('clear_cache', 'Clear Cache', 'en'),
('admin_settings.others.contact_email', 'Contact Email', 'en'),
('admin_settings.others.contact_email_plac', 'Type your contact email', 'en'),
('admin_settings.others.default_storage', 'Default Storage Space for User Accounts (in GB)', 'en'),
('admin_settings.others.default_storage_plac', 'Set default storage space in GB', 'en'),
('admin_settings.others.google_analytics', 'Google Analytics Code (optional)', 'en'),
('admin_settings.others.google_analytics_plac', 'Paste your Google Analytics Code', 'en'),
('admin_settings.others.mimetypes_blacklist', 'Mimetypes Blacklist', 'en'),
('admin_settings.others.mimetypes_blacklist_help', 'If you want to prevent upload some type of files, just add them to blacklist like this: x-php,mp3,jpeg Use a comma between each mimetype. Don\'t use a dot before mimetypes.', 'en'),
('admin_settings.others.mimetypes_blacklist_plac', 'Add mimetypes to Blacklist', 'en'),
('admin_settings.others.storage_limit', 'Storage Limitation', 'en'),
('admin_settings.others.storage_limit_help', 'If this value is off, all users will have infinity storage capacity and you won\'t be able to charge your users for storage plan.', 'en'),
('admin_settings.others.upload_limit', 'Upload Limit (in MB)', 'en'),
('admin_settings.others.upload_limit_help', 'If you want to set max file size limit on single upload, add size of your limit in MB. E.g. 100 means 100 MB and 2 000 means 2 000 MB limit.', 'en'),
('admin_settings.others.upload_limit_plac', 'Type your upload limit in MB', 'en'),
('appearance', 'Appearance', 'en'),
('admin_settings.tabs.others', 'Application', 'en'),
('alerts.error_confirm', 'That’s horrible!', 'en'),
('alerts.leave_to_sign_in', 'Do you really want to leave?', 'en'),
('alerts.success_confirm', 'Awesome!', 'en'),
('add_to_favourites', 'Add to Favourites', 'en'),
('download', 'Download', 'en'),
('copy', 'Copy', 'en'),
('empty_trash', 'Flush', 'en'),
('remove_favourite', 'Remove Favourite', 'en'),
('rename', 'Rename', 'en'),
('restore', 'Restore', 'en'),
('select', 'Select', 'en'),
('share', 'Share', 'en'),
('cancel_sharing', 'Cancel Sharing', 'en'),
('edit_sharing', 'Edit Sharing', 'en'),
('upload', 'Upload', 'en'),
('cookie_disclaimer.button', 'cookies policy', 'en'),
('cookie_disclaimer.description', 'By browsing this website you are agreeing to our {0}', 'en'),
('datatable.paginate_info', 'Showing 1 - {visible} from {total} records', 'en'),
('empty_page.call_to_action', 'Upload Files', 'en'),
('empty_page.description', 'Upload some files here easily via upload button.', 'en'),
('empty_page.title', 'Upload Your First File', 'en'),
('errors.capacity_digit', 'The storage capacity must be lower than 10 digit number.', 'en'),
('created_at', 'Created at', 'en'),
('items', 'Items', 'en'),
('space', 'space', 'en'),
('selected_multiple', 'Selected Multiple Items', 'en'),
('shared', 'Shared', 'en'),
('size', 'Size', 'en'),
('where', 'Where', 'en'),
('aperature', 'F Number', 'en'),
('aperture_value', 'Aperture Value', 'en'),
('author', 'Author', 'en'),
('camera_lens', 'Camera Lens', 'en'),
('color_space', 'Color Space', 'en'),
('dimension', 'Dimensions', 'en'),
('exposure', 'Exposure Time', 'en'),
('focal', 'Focal Length', 'en'),
('iso', 'ISO', 'en'),
('latitude', 'Latitude', 'en'),
('longitude', 'Longitude', 'en'),
('make', 'Camera', 'en'),
('meta_data', 'Metadata', 'en'),
('model', 'Model', 'en'),
('resolution', 'Resolution', 'en'),
('time_data', 'Content Created', 'en'),
('empty', 'Empty', 'en'),
('folder.item_counts', '{count} Item | {count} Items', 'en'),
('admin', 'Admin', 'en'),
('yes_iam_sure', 'Yes, I\'m sure', 'en'),
('free', 'Free', 'en'),
('get_it', 'Get It', 'en'),
('input_image.supported', 'Supported formats are .png, .jpg, .jpeg.', 'en'),
('input_image.title', 'Upload Image', 'en'),
('search_anything', 'Search anything...', 'en'),
('item_thumbnail.deleted_at', 'Deleted {time}', 'en'),
('locations.home', 'Files', 'en'),
('logout', 'Log Out', 'en'),
('locations.profile', 'Profile', 'en'),
('locations.settings', 'Settings', 'en'),
('locations.trash', 'Trash', 'en'),
('administration', 'Administration', 'en'),
('menu.files', 'Files', 'en'),
('menu.latest', 'Recent Uploads', 'en'),
('menu.password', 'Security & API', 'en'),
('menu.profile', 'Profile Settings', 'en'),
('menu.shared', 'Shared Files', 'en'),
('trash', 'Trash', 'en'),
('nothing_to_preview', 'There is nothing to preview.', 'en'),
('messages.nothing_was_found', 'Nothing was found.', 'en'),
('deselect_all', 'Deselect All', 'en'),
('done', 'Done', 'en'),
('select_all', 'Select All', 'en'),
('page_contact_us.description', 'Do you have any questions? Get in touch with us.', 'en'),
('page_contact_us.error_message', 'Something went wrong, please try it again.', 'en'),
('page_contact_us.form.email_plac', 'Type your email', 'en'),
('message', 'Message', 'en'),
('page_contact_us.form.message_plac', 'Type your message here...', 'en'),
('send_message', 'Send Message', 'en'),
('page_contact_us.success_message', 'Your message was send successfully.', 'en'),
('update_password', 'Update Password', 'en'),
('confirm_password', 'Confirm password', 'en'),
('email', 'Email', 'en'),
('new_password', 'New password', 'en'),
('page_create_password.subtitle', 'Create your new password here', 'en'),
('page_create_password.title', 'Only One Step to Log In', 'en'),
('get_link', 'Get Link', 'en'),
('sign_in', 'Sign In', 'en'),
('page_forgotten_password.pass_reseted_subtitle', 'Your password was reset successfully.', 'en'),
('page_forgotten_password.pass_reseted_title', 'Awesome!', 'en'),
('page_forgotten_password.pass_sennded_subtitle', 'We have e-mailed your password reset link!', 'en'),
('page_forgotten_password.pass_sennded_title', 'Thank you!', 'en'),
('page_forgotten_password.password_remember_text', 'Remember your password?', 'en'),
('page_forgotten_password.subtitle', 'Get reset link with your email', 'en'),
('page_forgotten_password.title', 'Forgotten Password?', 'en'),
('sign_up_now', 'Sign Up Now', 'en'),
('contact_us', 'Contact Us', 'en'),
('pricing', 'Pricing', 'en'),
('page_index.menu.sign_in', 'Sign Up', 'en'),
('page_index.sign_feature_1', 'No credit card required', 'en'),
('page_index.sign_feature_2', '{defaultSpace} Free storage space', 'en'),
('page_index.sign_up_button', 'Sign Up Now', 'en'),
('next_step', 'Next Step', 'en'),
('page_login.placeholder_email', 'Type your E-mail', 'en'),
('page_login.registration_button', 'Register account.', 'en'),
('page_login.registration_text', 'Don’t have an account?', 'en'),
('page_login.subtitle', 'Please type your email to log in', 'en'),
('welcome_back', 'Welcome Back!', 'en'),
('page_registration.agreement', 'By clicking on \'Create Account\' button I agree to the {0} and {1}.', 'en'),
('create_account', 'Create Account', 'en'),
('page_registration.have_an_account', 'Do you have an account?', 'en'),
('full_name', 'Full Name', 'en'),
('page_registration.label_pass', 'Create password', 'en'),
('page_registration.placeholder_confirm_pass', 'Confirm your new password', 'en'),
('page_registration.placeholder_email', 'Type your E-mail', 'en'),
('page_registration.placeholder_name', 'Type your full name', 'en'),
('page_registration.subtitle', 'Please fill registration to create account', 'en'),
('page_registration.title', 'Create New Account', 'en'),
('page_shared.download_file', 'Download File', 'en'),
('page_shared.placeholder_pass', 'Type password', 'en'),
('submit', 'Submit', 'en'),
('page_shared.subtitle', 'Please type the password to get shared content', 'en'),
('page_shared.title', 'Your Share Link is Protected', 'en'),
('page_shared_404.subtitle', 'The content you are finding was probably deleted.', 'en'),
('page_shared_404.title', 'Not Found :(', 'en'),
('log_in', 'Log In', 'en'),
('page_sign_in.password_reset_button', 'Reset Password.', 'en'),
('page_sign_in.password_reset_text', 'Forgotten your password?', 'en'),
('page_sign_in.placeholder_password', 'Type your password', 'en'),
('page_sign_in.subtitle', 'Confirm you by your password', 'en'),
('page_sign_in.title', 'Are You {name}?', 'en'),
('page_sign_in_2fa_title', 'Welcome {name}', 'en'),
('page_sign_in_2fa_subtitle', 'Confirm you by 2FA code from your Authenticator app', 'en'),
('page_sign_in.placeholder_2fa', 'Type your 2FA code...', 'en'),
('page_sign_in.2fa_recovery_text', 'Can\'t get your 2FA code?', 'en'),
('page_sign_in.2fa_recovery_button', 'Use recovery code.', 'en'),
('page_sign_in.2fa_recovery_subtitle', 'Use your recovery code', 'en'),
('page_sign_in.placeholder_2fa_recovery', 'Type your recovery code', 'en'),
('page_not_verified.subtitle', 'Your account is not verified. Before login, verify your account please.', 'en'),
('page_not_verified.resend_text', 'Do you want resend verification email?', 'en'),
('page_not_verified.resend_button', 'Resend verification email.', 'en'),
('page_email_successfully_verified.title', 'Your account was successfully verified!', 'en'),
('page_email_successfully_verified.subtitle', 'Now you can log in.', 'en'),
('page_email_successfully_send.title', 'Verification email was successfully send!', 'en'),
('page_email_successfully_send.subtitle', 'Check your email address where the email was send.', 'en'),
('popup_create_folder.folder_default_name', 'New Folder', 'en'),
('popup_create_folder.label', 'Type Name', 'en'),
('popup_create_folder.placeholder', 'Type your name', 'en'),
('popup_create_folder.title', 'Create Folder', 'en'),
('popup_deleted_user.message', 'Your user was deleted with all user data content.', 'en'),
('popup_deleted_user.title', 'User was deleted', 'en'),
('popup_deleted_user_aborted.message', 'You can\'t delete this account while user have active subscription.', 'en'),
('popup_deleted_user_aborted.title', 'User wasn\'t deleted', 'en'),
('popup_error.message', 'Something went wrong and we can\'t continue. Please contact us.', 'en'),
('popup_error.title', 'Whooops, something went wrong!', 'en'),
('popup_exceed_limit.message', 'Please upgrade your account to change your limit.', 'en'),
('popup_exceed_limit.title', 'You exceed storage limit', 'en'),
('popup_mimetypes_blacklist.message', 'File of this type ({mimetype}) is not allowed to upload.', 'en'),
('popup_mimetypes_blacklist.title', 'You are trying to upload unsupported file type', 'en'),
('popup_move_item.submit', 'Move Item', 'en'),
('popup_move_item.title', 'Move Item', 'en'),
('popup_pass_changed.message', 'So now, you have awesome new password.', 'en'),
('popup_pass_changed.title', 'Your password was changed!', 'en'),
('popup_paylod_error.message', 'Sorry, your file is too large and can\'t be uploaded', 'en'),
('popup_paylod_error.title', 'File is too large', 'en'),
('popup_rename.select_emoji_label', 'Pick Your Emoji Icon', 'en'),
('popup_rename.label', 'Edit Name', 'en'),
('popup_rename.placeholder', 'Type your title', 'en'),
('popup_rename.title', 'Rename Your {item}', 'en'),
('popup_share_create.title', 'Share Your {item}', 'en'),
('popup_share_edit.change_pass', 'Change Password', 'en'),
('popup_share_edit.confirm', 'Confirm', 'en'),
('popup_share_edit.save', 'Save Changes', 'en'),
('popup_share_edit.stop', 'Cancel Sharing', 'en'),
('popup_share_edit.title', 'Update sharing options', 'en'),
('popup_signup_error.message', 'Please check your database connection if everything works correctly.', 'en'),
('popup_signup_error.title', 'Server Error', 'en'),
('popup_upload_limit.message', 'Size of your uploaded file exceed the upload limit ({uploadLimit}).', 'en'),
('popup_upload_limit.title', 'You exceed upload limit on single file', 'en'),
('preview_sorting.grid_view', 'Grid View', 'en'),
('preview_sorting.list_view', 'List View', 'en'),
('preview_sorting.preview_sorting_button', 'View', 'en'),
('preview_sorting.sort_alphabet', 'Sort By Alphabet', 'en'),
('preview_sorting.sort_date', 'Sort By Date', 'en'),
('profile.store_pass', 'Store New Password', 'en'),
('pronouns.of', 'of', 'en'),
('roles.admin', 'Admin', 'en'),
('roles.user', 'User', 'en'),
('others', 'Others', 'en'),
('edit_page', 'Edit Page', 'en'),
('my_profile', 'My Profile', 'en'),
('change_password', 'Security & API', 'en'),
('create_user', 'Create User', 'en'),
('delete_user', 'Delete User', 'en'),
('routes_title.users_list', 'User Management', 'en'),
('routes_title.users_password', 'Password', 'en'),
('routes_title.users_storage_usage', 'Storage Usage', 'en'),
('routes_title.users_user', 'User', 'en'),
('can_download_file', 'Can download file', 'en'),
('shared.editor', 'Can edit and upload files', 'en'),
('shared.empty_shared', 'Nothing Shared Yet', 'en'),
('shared.empty_shared_desc', 'All items you share will be visible here.', 'en'),
('shared.visitor', 'Can only view and download', 'en'),
('awesome_iam_done', 'Awesome, I’m done!', 'en'),
('generate_link', 'Generate Link', 'en'),
('shared_form.email_placeholder', 'Type your emails', 'en'),
('shared_form.expiration_day', '{value}d.', 'en'),
('shared_form.expiration_hour', '{value}h.', 'en'),
('password_protected', 'Password Protected', 'en'),
('permission', 'Permission', 'en'),
('shared_form.label_send_to_recipients', 'Send to Recipients', 'en'),
('get_your_link', 'Get your link', 'en'),
('shared_form.placeholder_permission', 'Select your permission', 'en'),
('recipients', 'Recipients', 'en'),
('favourites', 'Favourites', 'en'),
('sidebar.favourites_empty', 'Drag here your favourite folder.', 'en'),
('sidebar.home', 'My Files', 'en'),
('sidebar.latest', 'Recent Uploads', 'en'),
('sidebar.locations_title', 'Base', 'en'),
('publicly_shared', 'Publicly Shared', 'en'),
('navigator', 'Navigator', 'en'),
('toaster.changed_capacity', 'You successfully changed user\'s storage size!', 'en'),
('toaster.changed_user', 'You successfully changed user\'s role!', 'en'),
('toaster.created_user', 'User was created successfully!', 'en'),
('toaster.email_set', 'Your email settings was updated successfully', 'en'),
('toaster.sended_password', 'You successfully send user email for reset password!', 'en'),
('file', 'File', 'en'),
('folder', 'Folder', 'en'),
('uploading.cancel', 'Cancel Uploading', 'en'),
('uploading.processing_file', 'Processing File...', 'en'),
('uploading.progress', 'Uploading File {progress}% - {current}/{total}', 'en'),
('user_box_delete.description', 'You can delete your user, but, pay attention! This event is irreversible and all user data include user files will be deleted.', 'en'),
('user_box_delete.title', 'Delete User', 'en'),
('user_box_password.description', 'You can send password reset email via button bellow. User will be redirected to page where he can update password for his account.', 'en'),
('user_box_password.title', 'Change User Password', 'en'),
('user_box_role.description', 'You can change role for current user. Admin role can edit or create new users, change storage capacity and any other application settings.', 'en'),
('user_box_role.title', 'Change User Role', 'en'),
('user_box_storage.description', 'Change user storage capacity by input above. You have to type only number e.g. value \'5\' means, user will have 5GB of storage capacity.', 'en'),
('user_box_storage.title', 'Change User Storage Capacity', 'en'),
('user_password.title', 'Change Your Password', 'en'),
('address', 'Address', 'en'),
('user_settings.address_plac', 'Type your billing address', 'en'),
('city', 'City', 'en'),
('user_settings.city_plac', 'Type your billing city', 'en'),
('country', 'Country', 'en'),
('user_settings.country_plac', 'Select your billing country', 'en'),
('name', 'Name', 'en'),
('user_settings.name_plac', 'Type your billing name', 'en'),
('phone_number', 'Phone Number', 'en'),
('user_settings.phone_number_plac', 'Type your billing phone number', 'en'),
('postal_code_plac', 'Type your postal code', 'en'),
('state', 'State', 'en'),
('user_settings.state_plac', 'Type your billing state', 'en'),
('timezone', 'Timezone', 'en'),
('select_your_timezone', 'Select your timezone', 'en'),
('account_information', 'Account Information', 'en'),
('billing_information', 'Billing Information', 'en'),
('validation_errors.incorrect_2fa_code', 'Sorry, you passed incorrect or expired code', 'en'),
('validation_errors.incorrect_2fa_recovery_code', 'Sorry, you passed incorrect recovery code', 'en'),
('validation_errors.incorrect_password', 'Sorry, you passed incorrect password :(', 'en'),
('wrong_image_error', 'You may have uploaded the wrong file, try again!', 'en'),
('app_description', 'Your self-hosted storage cloud software powered by Laravel and Vue', 'en'),
('user_not_fount', 'We can\'t find a user with that e-mail address.', 'en'),
('incorrect_password', 'Sorry, your password is incorrect.', 'en'),
('time', 'd. M. Y, h:i', 'en'),
('home', 'Home', 'en'),
('shared_link_email_subject', '🙋 :user share some files with you. Look at it!', 'en'),
('shared_link_email_user', ':user (:email) send you a link to shared files.', 'en'),
('shared_link_email_link', 'Open your files', 'en'),
('shared_link_email_salutation', 'Regards, :app_name', 'en'),
('hello', 'Hello!', 'en'),
('reset_password_subject', 'Reset password for your account on ', 'en'),
('reset_password_line_1', 'You are receiving this email because we received a password reset request for your account.', 'en'),
('reset_password_line_2', 'If you did not request a password reset, no further action is required.', 'en'),
('reset_password', 'Reset Password', 'en'),
('salutation', 'Regards', 'en'),
('user_sending', ':name is sending you this file', 'en'),
('protected_file', 'This link is protected by password', 'en'),
('languages', 'Languages', 'en'),
('add_language', 'Add Language', 'en'),
('create_language', 'Create Language', 'en'),
('edit_translations', 'Edit Translations', 'en'),
('language_name', 'Language Name', 'en'),
('set_as_default_language', 'Set as Default Language', 'en'),
('language_settings', 'Language Settings', 'en'),
('search_translations', 'Search Language Translations...', 'en'),
('select_locale', 'Select Locale', 'en'),
('locale_name', 'Language Name', 'en'),
('select_language_locale', 'Select Language Locale', 'en'),
('type_language_name', 'Type Language Name', 'en'),
('go_to_files', 'Go to Files', 'en'),
('color_theme', 'Color Theme', 'en'),
('color_theme_description', 'Your color change will be visible after app refresh.', 'en'),
('og_image', 'OG Image', 'en'),
('og_image_description', 'Image that appear when someone shares the content to Facebook or any other social medium. Preferred size is 1200x627', 'en'),
('app_touch_icon', 'App Touch Icon', 'en'),
('app_touch_icon_description', 'If user store bookmark on his phone screen, this icon appear in app thumbnail. Preferred size is 156x156', 'en'),
('search_in_list', 'Search in list...', 'en'),
('2fa.settings.title', 'Two Factor Authentication', 'en'),
('2fa.i_have_2fa_app', 'I have already 2FA app', 'en'),
('confirm_your_password', 'Confirm Your Password', 'en'),
('popup_2fa.help', 'Scan the image above with the <b class=\"text-theme dark-text-theme\">two-factor authentication app</b> on your phone.', 'en'),
('confirm', 'Confirm', 'en'),
('popup_2fa.toaster_enabled', 'Your 2FA was enabled successfully!', 'en'),
('popup_2fa.toaster_disabled', 'Your 2FA was disabled!', 'en'),
('popup_2fa.switch_title', 'Enable / Disable Two Factor Authentication', 'en'),
('popup_2fa.switch_info', 'Here you can improve your account security by turn on 2fa verification.', 'en'),
('show_recovery_codes', 'Show Recovery Codes', 'en'),
('popup_2fa.codes_info', 'Recovery codes can be used to access your account in the event you lose access to your device and cannot receive two-factor authentication codes.', 'en'),
('show_codes', 'Show Codes', 'en'),
('your_security_codes', 'Your Security Codes', 'en'),
('popup_2fa.popup_codes_disclaimer', '<b class=\"text-theme dark-text-theme\">Put these in a safe spot.</b> If you lose your device and don’t have the recovery codes you will lose access to your account.', 'en'),
('regenerate_codes', 'Regenerate Codes', 'en'),
('popup_2fa.toaster_codes_copied', 'Your codes was copied!', 'en'),
('popup_2fa.toaster_codes_regenerated', 'Your codes was regenerated!', 'en'),
('go_home', 'Go to the homepage', 'en'),
('never', 'Never', 'en'),
('last_used', 'Last Used', 'en'),
('personal_access_token', 'Personal Access Token', 'en'),
('personal_token.section_description', 'You don\'t have any created personal access tokens yet.', 'en'),
('create_token', 'Create Token', 'en'),
('create_personal_token', 'Create Personal Token', 'en'),
('token_name', 'Token Name', 'en'),
('popup_personal_token.plc', 'Type token name...', 'en'),
('popup_personal_token.your_token', 'Your Personal Access Token', 'en'),
('popup_personal_token.copy_token', 'Make sure to <b class=\'text-theme dark-text-theme\'>copy your personal access token now</b>. You won’t be able to see it again!', 'en'),
('popup_delete_personal_token.title', 'Are you sure you want to delete this token?', 'en'),
('popup_delete_personal_token.description', 'Any applications or scripts using this token will no longer be able to access into your account. You cannot undo this action.', 'en'),
('personal_token.token_deleted', 'Token was successfully deleted!', 'en'),
('dark_mode_toggle', 'Toggle Dark Mode', 'en'),
('convert_into_team_folder', 'Convert into Team Folder', 'en'),
('create_something', 'Create Something', 'en'),
('popup.share.email_send', 'Send link by Email', 'en'),
('popup.share.email_description', 'Send your share link via email to many recipients.', 'en'),
('expiration', 'Expiration', 'en'),
('popup.share.expiration_description', 'Your link expire after exact period of time.', 'en'),
('popup.share.password_description', 'Protect your item by your custom password.', 'en'),
('sharelink.share_via_email', 'Share Link on Emails', 'en'),
('sharelink.copy_embed', 'Copy Web Insert Code', 'en'),
('popup.move_into_team_disclaimer', 'Your folder <b class=\"text-theme dark-text-theme\">will be moved</b> into Team Folders section.', 'en'),
('upload_folder', 'Upload Folder', 'en'),
('member', 'Members', 'en'),
('request_for_upload', '{name} is Asking You For Files', 'en'),
('upload_request', 'Upload Request', 'en'),
('request_for_upload_success', 'Upload Request for {name} was Fulfilled Successfully', 'en'),
('request_for_upload_expired', 'Upload Request Expired', 'en'),
('automatically_uploads_for_file_request', 'Your files will be uploaded automatically and after that, you can organize your files in folders.', 'en'),
('request_for_upload_unavailable', 'This upload request is no longer available for uploading files.', 'en'),
('closing_request_for_upload', 'Are you sure you uploaded all files you want for {name}?', 'en'),
('closing_request_for_upload_warn', 'You won\'t be able to upload any files here once again.', 'en'),
('user_leave_message', '{name} leave you a message', 'en'),
('tell_you_are_done', 'Tell {name} you are done!', 'en'),
('user_invite_you_into_team_folder', '{name} invite you to join with his team into shared team folder', 'en'),
('register_with_email_and_get_folder', 'Register account with your email {email} and get access to this Team Folder.', 'en'),
('invite_to_join_team_folder', 'Invitation To Join Team Folder', 'en'),
('or_decline_your_invitation', 'Or {0} your invitation.', 'en'),
('decline', 'Decline', 'en'),
('you_are_successfully_joined', 'You are successfully joined', 'en'),
('proceed_to_participate_with_team', 'You can now proceed to your account and participate in team folder', 'en'),
('proceed_to_your_account', 'Proceed to your account', 'en'),
('go_to_team_folder', 'Go to Team Folder', 'en'),
('you_denied_invitation', 'You are successfully denied invitation', 'en'),
('invitation_used', 'Your invitation has been used', 'en'),
('invitation_used_description', 'We are sorry but this invitation was used previously', 'en'),
('go_to_your_shared_folders', 'Go to your shared folders', 'en'),
('accept_invitation', 'Accept Invitation', 'en'),
('accept_and_register', 'Accept and Register Account', 'en'),
('application', 'Application', 'en'),
('account_settings', 'Account Settings', 'en'),
('first_name', 'First Name', 'en'),
('last_name', 'Last Name', 'en'),
('gmt', 'GMT', 'en'),
('theme_mode', 'Theme Mode', 'en'),
('set_default_theme_disclaimer', 'Set your theme mode on dark, light or based on your system settings.', 'en'),
('default_emojis', 'Default Emojis', 'en'),
('set_default_emoji_disclaimer', 'Set your default emojis for your folder custom icons. You can set Twemoji or default Apple emojis.', 'en'),
('light_mode', 'Light mode', 'en'),
('dark_mode', 'Dark mode', 'en'),
('based_on_system', 'Based on system settings', 'en'),
('storage_usage', 'Storage Usage', 'en'),
('total_of', 'Total of {capacity}', 'en'),
('used', 'Used', 'en'),
('in_last_x_days', 'In last 45 days', 'en'),
('edit_members', 'Edit Members', 'en'),
('dissolve_team', 'Dissolve Team', 'en'),
('edit_team_members', 'Edit Team Members', 'en'),
('file_request', 'File Request', 'en'),
('create_team_folder_description', 'Collaborate on your files with your team easily by creating new team folder.', 'en'),
('create_team_folder', 'Create Team Folder', 'en'),
('spotlight', 'Spotlight', 'en'),
('your_trash_is_empty', 'Your Trash is Empty', 'en'),
('your_trash_is_empty_desc', 'After you delete the files, you can restore them from trash.', 'en'),
('create', 'Create', 'en'),
('upload_or_create', 'Upload / Create', 'en'),
('base', 'Base', 'en'),
('not_any_folder', 'There isn\'t any folder.', 'en'),
('collaboration', 'Collaboration', 'en'),
('team_folders', 'Team Folders', 'en'),
('shared_with_me', 'Shared with Me', 'en'),
('broadcasting', 'Broadcasting', 'en'),
('view', 'View', 'en'),
('sorting', 'Sorting', 'en'),
('accept', 'Accept', 'en'),
('you_accepted_invitation', 'You successfully accepted invitation', 'en'),
('you_decline_invitation', 'You successfully decline invitation', 'en'),
('notification_center', 'Notification Center', 'en'),
('clear_all', 'Clear all', 'en'),
('not_any_notifications', 'There aren\'t any notifications.', 'en'),
('unread', 'Unread', 'en'),
('read', 'Read', 'en'),
('notifications', 'Notifications', 'en'),
('options', 'Options', 'en'),
('loading_content', 'loading content...', 'en'),
('note', 'Note', 'en'),
('user_was_deleted', 'User was deleted', 'en'),
('max_storage', 'Max Storage', 'en'),
('create_file_request', 'Create File Request', 'en'),
('convert_as_team_folder', 'Convert as Team Folder', 'en'),
('leave_team_folder', 'Leave the Team Folder', 'en'),
('nothing_shared_with_you', 'Nothing Shared With You', 'en'),
('nothing_shared_with_you_description', 'All items that are shared with you will be visible here.', 'en'),
('you_left_team_folder', 'You have successfully left the team folder', 'en'),
('there_is_nothing', 'There is Nothing', 'en'),
('frequently_used', 'Frequently Used', 'en'),
('there_is_nothing_smile', 'There is nothing :(', 'en');
INSERT INTO `language_translations` (`key`, `value`, `lang`) VALUES
('cache', 'Cache', 'en'),
('cache_note', 'Did you change anything in your .env file? Then clear your cache.', 'en'),
('there_is_not_log', 'There is not any server log.', 'en'),
('there_is_not_database_backup', 'There is not any database backup stored.', 'en'),
('backup_path', 'You can find your backups in <b>/storage/app/app-backups</b>.', 'en'),
('update_your_credentials', 'Update Your Credentials', 'en'),
('search_your_users', 'Search through your users...', 'en'),
('files_and_folders', 'Files & Folders', 'en'),
('actions', 'Actions', 'en'),
('suggested_filters', 'Suggested Filters', 'en'),
('go', 'Go', 'en'),
('navigate', 'Navigate', 'en'),
('web_code_copied', 'Your web insert code was copied', 'en'),
('share_with_multiple_emails', 'Share on multiple emails', 'en'),
('get_qr_code', 'Get your QR code', 'en'),
('store_changes', 'Store Changes', 'en'),
('send', 'Send', 'en'),
('show_details', 'Show Details', 'en'),
('select_or_search_emoji', 'Select or search emoji icon...', 'en'),
('create_request', 'Create Request', 'en'),
('copy_upload_request_link', 'Copy your upload request link', 'en'),
('type_email_', 'Type email...', 'en'),
('send_request_by_email', 'Send Request by Email', 'en'),
('send_request_by_email_description', 'Send your file request on recipients email', 'en'),
('message_for_recipient', 'Type message for recipient...', 'en'),
('message_optional', 'Message (optional)', 'en'),
('message_optional_description', 'This message will be showed for your email recipient or in the upload page.', 'en'),
('folder_name_optional', 'Folder Name (optional)', 'en'),
('folder_name_optional_description', 'Created folder with files will be named with your own name.', 'en'),
('type_name_', 'Type name...', 'en'),
('replace_icon_with_emoji', 'Replace folder icon with an Emoji', 'en'),
('emoji_as_an_icon', 'Emoji as an Icon', 'en'),
('current_password', 'Current Password', 'en'),
('delete_account', 'Delete Account', 'en'),
('details', 'Details', 'en'),
('store_credentials', 'Store Credentials', 'en'),
('default_language_disclaimer', 'If this language is set as default, app will appear in this language for all users.', 'en'),
('reset_user_password', 'Reset User Password', 'en'),
('server', 'Server', 'en'),
('environment', 'Environment', 'en'),
('homepage', 'Homepage', 'en'),
('allow_homepage', 'Allow Homepage', 'en'),
('allow_homepage_note', 'When this is turned on, your visitors can visit your default homepage.', 'en'),
('storage_upload', 'Storage & Upload', 'en'),
('allow_recaptcha', 'Allow ReCaptcha v3', 'en'),
('allow_recaptcha_note', 'ReCaptcha will be allowed on Registration and Contact Us forms.', 'en'),
('login_and_registration', 'Login & Registration', 'en'),
('account', 'Account', 'en'),
('search', 'Search', 'en'),
('latest_registrations', 'Latest Registrations', 'en'),
('total_storage', 'Total Storage', 'en'),
('total_users', 'Total Users', 'en'),
('temporary_unavailable', 'Temporary Unavailable', 'en'),
('shared_link_temporary_unavailable', 'Unfortunately, this shared link is temporary unavailable. Please try it later.', 'en'),
('not_selected', 'Not selected', 'en'),
('waiting_for_accept_invitation', 'Waiting for accept invitation...', 'en'),
('team_folder_updated', 'Your team folder was updated', 'en'),
('update_team_folder', 'Update Team Folder', 'en'),
('edit_team_folder', 'Edit Team Folder', 'en'),
('upgrade_to_invite_members', 'You have to upgrade your account to add this new member.', 'en'),
('type_valid_email', 'You have to type valid email', 'en'),
('team_was_invited', 'Your Team was invited successfully.', 'en'),
('team_was_invited_and_folder_moved', 'Your Team was invited and folder was moved into Team Folders section.', 'en'),
('move_and_invite_members', 'Move & Invite Members', 'en'),
('add_at_least_one_member', 'Please add at least one member.', 'en'),
('add_at_least_one_member_into_team_folder', 'Please add at least one member into your Team Folders.', 'en'),
('your_members', 'Your Members', 'en'),
('type_member_email_', 'Type member email...', 'en'),
('add_member', 'Add Member', 'en'),
('go_to_dashboard', 'Go To Dashboard', 'en'),
('go_to_settings', 'Go To Settings', 'en'),
('go_to_payments', 'Payments / Settings', 'en'),
('go_to_pages', 'Go To Pages', 'en'),
('go_to_languages', 'Go To Languages', 'en'),
('show_all_plans', 'Show all Plans', 'en'),
('show_transactions', 'Show Transactions', 'en'),
('go_home_spotlight', 'Go Home', 'en'),
('go_to_recent_uploads', 'Go To Recent Uploads', 'en'),
('go_to_publicly_shared', 'Go To Publicly Shared', 'en'),
('go_to_trash', 'Go To Trash', 'en'),
('go_to_team_folders', 'Go To Team Folders', 'en'),
('go_to_shared_with_me', 'Go To Shared with Me', 'en'),
('update_profile_settings', 'Update Profile Settings', 'en'),
('update_security_api', 'Update Security & API', 'en'),
('show_storage_details', 'Show Storage Details', 'en'),
('empty_your_trash', 'Empty Your Trash', 'en'),
('toggle_grid_list_view', 'Toggle Grid/List View', 'en'),
('toggle_dark_light_mode', 'Toggle Dark/Light Mode', 'en'),
('toggle_full_screen_mode', 'Toggle Full-Screen Mode', 'en'),
('toggle_emoji_type', 'Toggle Emoji Type', 'en'),
('show_all_subscriptions', 'Show all Subscriptions', 'en'),
('write_feedback', 'Write a Feedback', 'en'),
('branding', 'Branding', 'en'),
('save_broadcast_settings', 'Save Broadcast Settings', 'en'),
('save_storage_settings', 'Save Storage Settings', 'en'),
('storage_driver', 'Storage Driver', 'en'),
('mail_driver', 'Mail Driver', 'en'),
('select_mail_driver', 'Select your mail driver', 'en'),
('broadcast_driver_updated', 'Your broadcast driver was updated.', 'en'),
('storage_driver_updated', 'Your storage driver was updated.', 'en'),
('spotlight_search', 'Spotlight search...', 'en'),
('add', 'Add', 'en'),
('can_edit', 'Can Edit', 'en'),
('can_view', 'Can View', 'en'),
('exceed_upload_limit', 'You exceeded your upload limit', 'en'),
('exceed_upload_limit_description', 'Unfortunately, you can not upload your file.', 'en'),
('really_dissolve_team', 'Are you sure you want to dissolve this team?', 'en'),
('really_dissolve_team_desc', 'All team members will lose access to your files and existing folder will be moved into your \"Files\" section.', 'en'),
('really_leave_team', 'Are you sure you want to leave this team folder?', 'en'),
('really_leave_team_desc', 'You will don\'t have access to the files and all your previously uploaded content will be part of this Team Folder you are leaving.', 'en'),
('images', 'Images', 'en'),
('videos', 'Videos', 'en'),
('audios', 'Audios', 'en'),
('documents', 'Documents', 'en'),
('paginator', 'Showing {from} - {to} from {total} records', 'en'),
('require_email_verification', 'Require Verify Email Address', 'en'),
('require_email_verification_note', 'Turn on, if you want verify user email address after registration.', 'en'),
('completed', 'Completed', 'en'),
('error', 'Error', 'en'),
('cancelled', 'Cancelled', 'en'),
('active', 'Active', 'en'),
('archived', 'Archived', 'en'),
('inactive', 'Inactive', 'en'),
('total_x_of_x_used', 'Total {use} of {total} Used', 'en'),
('total_x_of_x_members', 'Total {use} of {total} Members', 'en'),
('go_back_from_x', 'Go back from {location}', 'en'),
('new_team_invitation', 'New Team Invitation', 'en'),
('x_invite_to_join_team', ':name invite you to join into Team Folder.', 'en'),
('team_invitation_notify_title', 'You are invited to collaboration with team folder in :app', 'en'),
('team_invitation_notify_desc', 'You are invited to collaboration with team folder.', 'en'),
('team_invitation_notify_desc_without_account', 'You are invited to collaboration with team folder. But at first, you have to create an account to proceed into team folder.', 'en'),
('join_into_team_folder', 'Join into Team Folder', 'en'),
('join_and_create_account', 'Join & Create an Account', 'en'),
('file_request_filled', 'File Request Filled', 'en'),
('file_request_filled_desc', 'Your file request for \':name\' folder was filled successfully.', 'en'),
('show_files', 'Show Files', 'en'),
('file_request_filled_mail', 'Your file request was fulfilled in your \':name\' folder', 'en'),
('file_request_filled_mail_note', 'We are emailing you because your file request was fulfilled. Please click on the link below to show uploaded files.', 'en'),
('thanks_salutation', 'Thank you for using our application!', 'en'),
('upload_your_files', 'Upload your Files', 'en'),
('file_request_optional_message', 'PS: :name left you a message: :notes', 'en'),
('file_request_notify_title', ':name Request You for File Upload', 'en'),
('file_request_notify_description', 'We are emailing you because :name requested files from you. Please click on the link below and upload your files for :name.', 'en'),
('user_action_not_allowed', 'This user action is not allowed.', 'en'),
('pcs.', 'Pcs.', 'en'),
('mem.', 'Mem.', 'en'),
('password_doesnt_match', 'The provided password does not match your current password.', 'en'),
('amount', 'Amount', 'en'),
('upload_request_default_folder', 'Upload Request from :timestamp', 'en'),
('copy_direct_download_link', 'Copy Direct Download Link', 'en'),
('direct_link_copied', 'Your direct download link was copied', 'en'),
('application_settings', 'Application / Settings', 'en'),
('login_registration_settings', 'Login & Registration / Settings', 'en'),
('appearance_settings', 'Appearance / Settings', 'en'),
('adsense_settings', 'Adsense / Settings', 'en'),
('homepage_settings', 'Homepage / Settings', 'en'),
('environment_settings', 'Environment / Settings', 'en'),
('server_settings', 'Server / Settings', 'en'),
('user_features', 'User Features', 'en'),
('upload_settings', 'Upload Settings', 'en'),
('set_up_2fa_app', 'Set up Your Authenticator App', 'en'),
('confirm_your_code', 'Confirm Your Code', 'en'),
('paste_code_from_2fa_app', 'Paste the latest code from 2fa app...', 'en'),
('zero_for_unlimited_members', 'Type -1 to set unlimited team members.', 'en'),
('max_team_members', 'Max Team Members', 'en'),
('remote_upload', 'Remote Upload', 'en'),
('upload_files_remotely', 'Upload Files Remotely', 'en'),
('remote_links', 'Remote Links', 'en'),
('remote_links_help', 'For every new line paste one link and we will give a try to download the file.', 'en'),
('paste_remote_links_here', 'Paste your links to the files here...', 'en'),
('remote_download_finished', 'Remote upload was successfully finished', 'en'),
('remote_upload_progress', 'Uploading Remotely - {processed} / {total}', 'en'),
('remote_upload_failed_count', 'Failed: {count}', 'en'),
('file_request_notify_center_description', 'Please click on the link below and upload your files for :name.', 'en'),
('verify_email_subject', 'Verify Email Address', 'en'),
('verify_email_line', 'Click the button below to verify your email address.', 'en'),
('verify_email_action', 'Verify Email Address', 'en'),
('custom', 'translation', 'en'),
('plans', '计划', 'zh'),
('total', '总计', 'zh'),
('create_plan', '创建计划', 'zh'),
('delete_plan', '删除计划', 'zh'),
('admin_page_plans.disclaimer_delete_plan', '您可以删除此计划，但请注意！您的计划将被删除，但订阅此计划的用户仍将被收取费用，除非他们取消订阅。', 'zh'),
('description_optional', '说明（可选）', 'zh'),
('plan_description', '计划说明', 'zh'),
('type_plan_name', '输入计划名称', 'zh'),
('plan_name', '计划名称', 'zh'),
('plan_price', '计划价格', 'zh'),
('admin_page_plans.form.status_help', '你的计划在网站上的可用性状况。', 'zh'),
('admin_page_plans.form.storage', '存储容量（GB', 'zh'),
('admin_page_plans.form.storage_helper', '你必须只输入数字，例如，值\'5\'意味着，用户将有5GB的存储容量。', 'zh'),
('admin_page_plans.form.storage_plac', '存储容量', 'zh'),
('admin_page_plans.subscribers.empty', '目前还没有任何订阅者。', 'zh'),
('subscribers', '订阅', 'zh'),
('settings', '设置', 'zh'),
('billing_address', '账单地址', 'zh'),
('admin_settings.billings.address_plac', '输入你的帐单地址', 'zh'),
('billing_city', '开票城市', 'zh'),
('admin_settings.billings.city_plac', '输入你的帐单城市', 'zh'),
('admin_settings.billings.company_name', '公司名称', 'zh'),
('admin_settings.billings.company_name_plac', '输入你的公司名称', 'zh'),
('admin_settings.billings.country', '开票国家', 'zh'),
('admin_settings.billings.country_plac', '选择你的帐单国家', 'zh'),
('admin_settings.billings.phone_number', '账单电话号码（可选）', 'zh'),
('admin_settings.billings.phone_number_plac', '输入你的帐单电话号码', 'zh'),
('admin_settings.billings.postal_code', '账单邮政编码', 'zh'),
('admin_settings.billings.postal_code_plac', '输入你的帐单邮政编码', 'zh'),
('admin_settings.billings.section_billing', '账单信息', 'zh'),
('admin_settings.billings.section_company', '公司信息', 'zh'),
('admin_settings.billings.state', '开票国家', 'zh'),
('admin_settings.billings.state_plac', '键入您的帐单状态', 'zh'),
('admin_settings.billings.vat', '增值税号', 'zh'),
('admin_settings.billings.vat_plac', '输入你的增值税号码', 'zh'),
('admin_settings.payments.stripe_pub_key', '可发布的密钥', 'zh'),
('admin_settings.payments.stripe_pub_key_plac', '粘贴你的可发布密钥', 'zh'),
('admin_settings.payments.stripe_sec_key', 'Secret Key', 'zh'),
('admin_settings.payments.stripe_sec_key_plac', '粘贴你的密匙', 'zh'),
('billings', 'Billings', 'zh'),
('payments', '付款方式', 'zh'),
('mo.', 'Mo.', 'zh'),
('premium', '升级', 'zh'),
('invoices', '发票', 'zh'),
('subscription', '订阅', 'zh'),
('page_pricing_tables.storage_capacity', '储存容量', 'zh'),
('page_pricing_tables.vat_excluded', '显示的价格不包括增值税。', 'zh'),
('popup_deleted_plan.title', '计划被删除', 'zh'),
('popup_subscription_cancel.message', '你将继续使用你已经支付的功能，直到你的帐单周期结束。', 'zh'),
('popup_subscription_cancel.title', '订阅被取消', 'zh'),
('plan', '计划', 'zh'),
('plan_delete', '计划删除', 'zh'),
('plan_settings', '计划设置', 'zh'),
('pricing_plans', '定价计划', 'zh'),
('toaster.plan_created', '您的计划已成功创建!', 'zh'),
('toaster.credentials_set', '您的{service}凭证已成功设置!', 'zh'),
('user_invoices.empty', '你还没有任何发票。', 'zh'),
('print_button', '打印文档', 'zh'),
('invoice', '发票', 'zh'),
('date', '日期', 'zh'),
('product', '产品', 'zh'),
('invoice_number', '发票号码', 'zh'),
('seller', '卖家', 'zh'),
('client', '客户', 'zh'),
('seller_vat', '增值税号', 'zh'),
('phone', '电话', 'zh'),
('postal_code', '邮政编号', 'zh'),
('price', '价格', 'zh'),
('charged_features', '更改功能', 'zh'),
('team_members', '团队成员', 'zh'),
('add_max_team_members', '添加最大的团队成员数量', 'zh'),
('max_team_members_total', '多达{value}团队成员', 'zh'),
('max_team_members.unlimited', '无限的团队成员', 'zh'),
('max_storage_amount', '{value} GB 存储大小', 'zh'),
('monthly', '月度', 'zh'),
('yearly', '度', 'zh'),
('month', '月份', 'zh'),
('year', '年', 'zh'),
('bandwidth', '带宽', 'zh'),
('storage', '存储', 'zh'),
('flatFee', '统一费用', 'zh'),
('feature_usage_desc_flatFee', '该服务的价格。', 'zh'),
('feature_usage_desc_bandwidth', '你转入/转出你账户的数据量。', 'zh'),
('feature_usage_desc_storage', '你正在使用的总存储量。', 'zh'),
('feature_usage_desc_member', '你邀请到的团队文件夹中的成员总数。', 'zh'),
('feature_usage_desc_platform', '你正在使用的总存储量。', 'zh'),
('credit_to_auto_withdraw', '你拥有{credit} 的信用，将在你下次付款时自动提取。', 'zh'),
('transactions', '交易', 'zh'),
('not_any_transactions', '没有任何交易。', 'zh'),
('service', '服务', 'zh'),
('payed_at', '支付时间', 'zh'),
('current_estimated_usage', '你目前的估计用量。', 'zh'),
('payment_was_successfully_received', '您的付款已成功收到。', 'zh'),
('failed_to_load_paypal', '加载PayPal服务失败', 'zh'),
('cancel_payment', '取消付款', 'zh'),
('not_any_payment_method', '目前还没有任何支付方式。', 'zh'),
('select_payment_method', '选择支付方式', 'zh'),
('change_your_plan', '改变你的计划', 'zh'),
('not_any_plan', '目前还没有任何计划。', 'zh'),
('change_plan', '改变计划', 'zh'),
('subscription_changed', '您的订阅已成功更改。', 'zh'),
('expires', '过期', 'zh'),
('want_to_delete_card_title', '你确定要删除你的信用卡吗？', 'zh'),
('want_to_delete_card_description', '我们将不再自动结算你的付款，你将不得不为你的账户提供资金以进行下一次付款。', 'zh'),
('credit_card_deleted', '你的信用卡已被删除。', 'zh'),
('billed_annually', '按年计费', 'zh'),
('restricted_account_warning', '你的功能受到了限制。', 'zh'),
('subscription_type', '订阅类型', 'zh'),
('subscription_type_note', '请不要在生产环境中改变。', 'zh'),
('select_subscription_type', '选择你的订阅类型', 'zh'),
('subscription_type_change_warn', '你确定你要改变订阅类型吗？', 'zh'),
('subscription_type_change_warn_description', '如果有任何订阅的用户，我们强烈建议不要改变这个值，以防止出现任何故障。你只能用一种类型的订阅来操作，你不能临时改变它!', 'zh'),
('x_days_intervals', '间隔30天', 'zh'),
('interval', '间隔', 'zh'),
('currency', '货币', 'zh'),
('allow_pay_by_card', '允许你的用户用他们的信用卡支付', 'zh'),
('paste_webhook_secret', '粘贴你的webhook秘密', 'zh'),
('configure_your_credentials', '配置你的凭证', 'zh'),
('allow_registration_bonus', '允许注册奖金', 'zh'),
('allow_registration_bonus_description', '贷方用户在注册后自动获得奖金到他的余额。', 'zh'),
('registration_bonus_amount', '注册奖金的数额', 'zh'),
('registration_bonus_amount_description', '这笔奖金将在用户成功注册账户后自动添加。', 'zh'),
('registration_bonus_amount_', '键入注册奖金金额...', 'zh'),
('metered_plan', '计量计划', 'zh'),
('metered_plan_description', '你的价格设置为按用户使用量计费的多种功能。', 'zh'),
('plan_details', '计划细节', 'zh'),
('copy_webhook_note', '请复制你的网址并将其粘贴到服务网络钩子设置中。', 'zh'),
('webhook_url', '您的Webhook URL', 'zh'),
('payment_description', '付款说明', 'zh'),
('payment_description_note', '下面的描述显示了用户支付方式的选择。', 'zh'),
('additional_info_about_payment_method_', '简要描述一下，用户可以用这种支付方式支付...', 'zh'),
('select_plan_currency', '选择计划货币', 'zh'),
('select_billing_interval', '选择计费区间', 'zh'),
('features', '特点', 'zh'),
('bandwidth_per_gb', '每1GB的带宽价格', 'zh'),
('bandwidth_per_gb_note', '按用户上传或下载的数据量收费。', 'zh'),
('type_bandwidth_price', '输入每1GB的价格...', 'zh'),
('storage_per_gb', '每1GB的存储价格', 'zh'),
('storage_per_gb_note', '按用户存储在磁盘上的数据量收取每1GB的费用。', 'zh'),
('type_storage_price', '输入每1GB的价格...', 'zh'),
('member_per_unit', '每1名成员的价格', 'zh'),
('member_per_unit_note', '按用户在其团队文件夹中使用的成员总数收费。', 'zh'),
('type_member_price', '输入每1名成员的价格...', 'zh'),
('flat_fee_unit_gb', '每个周期的固定费用', 'zh'),
('flat_fee_unit_gb_note', '每月收取统一费用。', 'zh'),
('type_flat_fee_price', '输入价格...', 'zh'),
('price_change_not_possible_create_new', '价格改变是不可能的。如果你想改变你的价格或货币，请随时创建一个新的计划。', 'zh'),
('metered_billing_settings', '计量计费设置', 'zh'),
('allow_subscription_payments', '允许订阅支付', 'zh'),
('allow_subscription_payments_description', '用户可以订购固定或计量的计划', 'zh'),
('subscription_payments', '订阅付款', 'zh'),
('free_plan_parameters', '{storage}GB的免费存储空间与{members}。团队成员', 'zh'),
('active_until', '有效期至{date}。', 'zh'),
('ends_at_date', '结束于 {date}', 'zh'),
('price_per_month', '{price}每个月', 'zh'),
('price_per_year', '{price} 每年', 'zh'),
('balance_will_be_increased', '用户余额将按上述金额增加。', 'zh'),
('increase_for', '增加用户的余额', 'zh'),
('increase_balance', '增加余额', 'zh'),
('balance_was_increased', '用户余额已成功增加', 'zh'),
('user_dont_have_transactions', '用户还没有任何交易。', 'zh'),
('billing_est.', '计费方式', 'zh'),
('ends_at', '结束于', 'zh'),
('renews_at', '续订于', 'zh'),
('create_first_plan', '创建第一个计划', 'zh'),
('all_visible_subscriptions_here', '您的所有订阅将在此可见', 'zh'),
('all_visible_plans_here', '你的所有计划都将在此可见', 'zh'),
('transaction_will_be_here', '你的所有交易将在这里可见', 'zh'),
('latest_transactions', '最新交易', 'zh'),
('show_all_transactions', '显示所有交易', 'zh'),
('earnings', '收益', 'zh'),
('records_updated_daily_bases', '记录每天都会更新。', 'zh'),
('till_now', '直到现在', 'zh'),
('usage_estimates', '使用量估计', 'zh'),
('payment_method_update_redirect_description', '你将被转到你的支付机构，编辑你的支付方式。', 'zh'),
('update_payment_method', '更新您的支付方式', 'zh'),
('update_payments', '更新付款', 'zh'),
('credit_card_stored', '您的信用卡已成功存储', 'zh'),
('store_my_credit_card', '存储我的信用卡', 'zh'),
('add_payment_method', '添加支付方式', 'zh'),
('auto_settled_credit_card', '我们正在通过你保存的信用卡自动结算你的付款。', 'zh'),
('payment_method', '支付方式', 'zh'),
('unable_to_charge', '我们无法收取您的使用费。请注册新的信用卡或为您的账户注入足够的资金，我们会再试一次！\"。', 'zh'),
('failed_payments', '失败的支付', 'zh'),
('upgrade_to_get_more', '升级你的账户以获得更多。', 'zh'),
('free_plan', '免费计划', 'zh'),
('want_cancel_subscription', '你确定要取消订阅吗？', 'zh'),
('upgrade_downgrade_plan', '升级或降级计划', 'zh'),
('upgrade_downgrade_plan_description', '你可以在任何时候升级你的计划。', 'zh'),
('cancel_now', '立即取消', 'zh'),
('cancel_subscription', '取消订阅', 'zh'),
('cancel_subscription_description', '你现在可以取消你的订阅。你将继续使用你所支付的功能，直到你的帐单周期结束。', 'zh'),
('edit_your_subscription', '编辑您的订阅', 'zh'),
('want_to_delete_alert_description', '你将不再收到任何关于你的帐单限额已被超过的通知。', 'zh'),
('want_to_delete_alert', '你确定要删除你的警报吗？', 'zh'),
('alert_set_successfully', '您的帐单提醒已成功设置', 'zh'),
('alert_updated', '您的帐单提醒已成功更新', 'zh'),
('set_alert', '设置警报', 'zh'),
('update_alert', '更新提示', 'zh'),
('deleted_alert', '您的帐单提醒已被删除。', 'zh'),
('alert_amount_', '警报金额...', 'zh'),
('billing_alert', '账单提醒', 'zh'),
('billing_alert_description', '在你达到上述数值后，警报将被触发。', 'zh'),
('billing_alert_notes', '每当你的月度余额达到上述指定数额时，你将收到一封电子邮件。', 'zh'),
('make_payment', '缴费', 'zh'),
('fund_account_balance', '资助你的账户余额...', 'zh'),
('amount_increase_description', '一旦我们从支付网关登记了你的费用，金额就会增加。', 'zh'),
('balance', '平衡', 'zh'),
('upgrade_account', '升级账户', 'zh'),
('upgrade_your_account', '升级您的账户', 'zh'),
('upload_temporarily_disabled', '上传被暂时禁止', 'zh'),
('upload_temporarily_disabled_note', '请审查您的帐单设置。', 'zh'),
('create_folder_temporarily_disabled', '文件夹创建暂时被禁用', 'zh'),
('create_folder_temporarily_disabled_desc', '请审查您的帐单设置。', 'zh'),
('download_temporarily_disabled', '文件下载被暂时禁止', 'zh'),
('download_temporarily_disabled_desc', '请审查您的帐单设置。', 'zh'),
('billing', '账单', 'zh'),
('usage', '使用', 'zh'),
('charge', '收费', 'zh'),
('credit', '信用', 'zh'),
('withdrawal', '撤诉', 'zh'),
('interval.year', '每年一次', 'zh'),
('interval.month', '月度', 'zh'),
('subscriptions', '订阅', 'zh'),
('show_billing', '显示帐单', 'zh'),
('billing_alert_reached_short', '帐单警报达到了!', 'zh'),
('billing_alert_reached_short_note', '您之前设定的帐单提醒已经达到。请修改您的支出。', 'zh'),
('billing_alert_reached_long', '您的帐单警报已经达到!', 'zh'),
('billing_alert_reached_long_note', '您之前设置的帐单提醒已经达到。请到您的用户账户中修改您的支出', 'zh'),
('you_received_bonus', '您收到的您收到的:bonus', 'zh'),
('you_received_bonus_note', '你从我们这里得到了信用奖金:奖金。祝您消费愉快!', 'zh'),
('you_received_registration_bonus_note', '您的注册获得了信用奖金:bonus。祝您消费愉快!', 'zh'),
('withdrawal_failed_short', '撤军失败', 'zh'),
('withdrawal_failed_short_note', '你的账户的信用提款没有通过。请确保你的账户有足够的资金。', 'zh'),
('withdrawal_failed_long', '啊哦!您的预付费订阅的信贷提款失败', 'zh'),
('withdrawal_failed_long_note', '看起来你的账户的订阅信用提款没有通过。请确保你的账户有足够的资金，我们会再试一次！\"。', 'zh'),
('fund_your_account', '为您的账户充值', 'zh'),
('subscription_created_short', '订阅已被创建', 'zh'),
('subscription_created_short_note', '您的订阅：计划已成功创建', 'zh'),
('subscription_created_long', '您的订阅：计划已成功创建您的订阅：计划已成功创建', 'zh'),
('subscription_created_long_note', '您已经成功订阅了您的:计划订阅。现在您可以充分利用我们的平台了。', 'zh'),
('go_to_subscription', '转到订阅', 'zh'),
('charge_from_card_failed_subject', '啊哦!您从您的信用卡上提取的预付费订阅费用失败了', 'zh'),
('charge_from_card_failed_line', '看起来你的信用卡为你的账户预付订阅的提款没有通过。请检查您的信用卡或为您的账户注册新的信用卡，我们将再试一次!', 'zh'),
('charge_from_card_failed_action', '转到帐单设置', 'zh'),
('charge_from_card_failed_again_subject', '啊哦!您从信用卡中提取预付费订阅费用再次失败', 'zh'),
('charge_from_card_failed_again_line', '看起来你的信用卡为你的账户预付订阅的提款又一次没有通过。请检查您的信用卡或为您的账户注册新的信用卡，我们会再试一次!', 'zh'),
('charge_from_card_failed_again_action', '更新您的付款信息', 'zh'),
('confirm_payment', '确认付款', 'zh'),
('confirm_payment_greeting', '确认您的:支付金额', 'zh'),
('confirm_payment_line', '处理您的付款需要额外的确认。请继续点击下面的按钮，进入付款页面。', 'zh'),
('confirm_payment_action', '确认付款', 'zh'),
('registration_bonus', '注册奖金', 'zh'),
('number', '数量', 'zh'),
('head_office', '总部办公室', 'zh'),
('vat_id', '增值税编号', 'zh'),
('date_of_issue', '签发日期', 'zh'),
('period', '期间', 'zh'),
('Description', '描述', 'zh'),
('description', '描述', 'zh'),
('generated_by', '生成的 by', 'zh'),
('synchronize_plans', '同步计划', 'zh'),
('synchronizing_plans', '同步计划...', 'zh'),
('plans_are_synchronizing', '你的计划正在与支付网关进行同步', 'zh'),
('plans_was_synchronized', '计划已成功同步化', 'zh'),
('limit_usage_in_new_accounts_1_subject', '请为您的账户支付第一笔款项，以资助您的使用。', 'zh'),
('limit_usage_in_new_accounts_1_line', '我们很高兴你在使用我们的服务。要继续使用我们的服务，请先支付您的账户余额，以资助您的使用。', 'zh'),
('limit_usage_in_new_accounts_2_subject', '📆 提醒您。请为您的账户支付第一笔款项，以资助您的使用。', 'zh'),
('limit_usage_in_new_accounts_2_line', '我们很高兴你在使用我们的服务。要继续使用我们的服务，请先支付您的账户余额，以资助您的使用。', 'zh'),
('limit_usage_in_new_accounts_3_subject', '‼️ 呃，哦!您的功能受到限制。请付款以继续使用您的帐户', 'zh'),
('limit_usage_in_new_accounts_3_line', '我们对使用我们的服务所带来的不便感到抱歉。要继续使用我们的服务，请先支付您的账户余额，以资助您的使用，您的功能将被尽快允许。', 'zh'),
('usage_bigger_than_balance_1_subject', '⚠️ 你的账户中没有足够的资金，请增加你的账户余额', 'zh'),
('usage_bigger_than_balance_1_line', '我们很高兴你在使用我们的服务。为了继续使用我们的服务，请增加您的资金，以支付您的使用量。', 'zh'),
('usage_bigger_than_balance_2_subject', '📆 提醒您。您的账户中没有足够的资金，请增加您的账户余额', 'zh'),
('usage_bigger_than_balance_2_line', '我们很高兴你在使用我们的服务。为了继续使用我们的服务，请增加您的资金，以支付您的使用量。', 'zh'),
('usage_bigger_than_balance_3_subject', '‼️ 呃，哦!您的功能受到限制。请为您的账户余额增加资金以支付您的使用量', 'zh'),
('usage_bigger_than_balance_3_line', '我们对使用我们的服务所带来的不便感到抱歉。要继续使用我们的服务，请增加您的账户余额的资金，以支付您的使用量，您的功能将被尽快允许。', 'zh'),
('dunning_notification_description', '请尽快解决你的帐单问题。你的功能可能会受到限制。', 'zh'),
('allow_limit_usage_in_new_accounts', '允许限制最大使用量，否则用户将被迫在账户存在的第一个月增加余额', 'zh'),
('allow_limit_usage_bigger_than_balance', '当使用量大于其当前余额时，强制用户增加余额', 'zh'),
('limit_usage_description_for_restrictions', '如果用户不增加他的余额或存储他的信用卡，在第三次通知后，用户账户功能将被限制。', 'zh'),
('type', '类型', 'zh'),
('cancel', '取消', 'zh'),
('close', '关闭', 'zh'),
('create_folder', '创建文件夹', 'zh'),
('delete', '删除', 'zh'),
('download_item', '下载项目', 'zh'),
('info_panel', '小组信息', 'zh'),
('move', '移动', 'zh'),
('print', '打印项目', 'zh'),
('share_item', '分享项目', 'zh'),
('sorting_view', '排序和查看', 'zh'),
('upload_files', '上传文件', 'zh'),
('dashboard', '仪表板', 'zh'),
('pages', '页面', 'zh'),
('users', '用户', 'zh'),
('license', '许可证', 'zh'),
('version', '版本', 'zh'),
('show_all_users', '显示所有用户', 'zh'),
('change_capacity', '更改容量', 'zh'),
('avatar', '头像', 'zh'),
('account_details', '帐户详情', 'zh'),
('admin_page_user.create_user.label_email', '输输入电子邮件', 'zh'),
('admin_page_user.create_user.label_name', '输入全名', 'zh'),
('admin_page_user.create_user.submit', '创建用户', 'zh'),
('admin_page_user.delete_user', '删除用户', 'zh'),
('admin_page_user.label_change_capacity', '输入容量 GB', 'zh'),
('admin_page_user.label_delete_user', '使使使使用大小写输入用户名 ‘{user}‘', 'zh'),
('admin_page_user.label_person_info', '个人资料', 'zh'),
('admin_page_user.placeholder_delete_user', '在此键入', 'zh'),
('admin_page_user.save_role', '保存角色', 'zh'),
('admin_page_user.select_role', '选择用户角色', 'zh'),
('admin_page_user.send_password_link', '发送密码重置链接', 'zh'),
('action', '操作', 'zh'),
('user', '用户', 'zh'),
('role', '角色', 'zh'),
('storage_used', '使用的存储', 'zh'),
('detail', '详情', 'zh'),
('password', '密码', 'zh'),
('content', '内容', 'zh'),
('admin_pages.form.content_plac', '在这里输入你的内容...', 'zh'),
('slug', 'Slug', 'zh'),
('title', '标题', 'zh'),
('admin_pages.form.title_plac', '标题名称', 'zh'),
('visibility', '可见性', 'zh'),
('admin_pages.form.visibility_help', '你的页面在网站上的可见度状况。', 'zh'),
('page', '页面', 'zh'),
('status', '状态', 'zh'),
('admin_settings.appearance.description', '应用描述', 'zh'),
('admin_settings.appearance.description_plac', '输入你的应用程序描述', 'zh'),
('admin_settings.appearance.favicon', '应用程序的Favicon（可选）', 'zh'),
('admin_settings.appearance.logo', '应用程序LOGO（可选）', 'zh'),
('app_logo_dark_mode', '应用程序LOGO的黑暗模式（可选）', 'zh'),
('app_logo_horizontal_dark_mode', '应用程序的Logo水平黑暗模式（可选）。', 'zh'),
('admin_settings.appearance.logo_horizontal', '应用程序Logo水平（可选）', 'zh'),
('admin_settings.appearance.section_general', '一般设置', 'zh'),
('admin_settings.appearance.title', '应用程序标题', 'zh'),
('admin_settings.appearance.title_plac', '输入你的应用程序标题', 'zh'),
('admin_settings.email.driver', '电子邮件', 'zh'),
('admin_settings.email.email_disclaimer', '出于安全考虑，这个表格没有完全预填。你的电子邮件设置可以在你的<b class=\'text-theme dark-text-theme\'>.env</b>文件中找到。要应用新的电子邮件设置，请通过表格末尾的按钮确认您的选项。', 'zh'),
('admin_settings.email.encryption', '邮件加密', 'zh'),
('admin_settings.email.host', '邮件主机', 'zh'),
('admin_settings.email.password', '邮件密码', 'zh'),
('admin_settings.email.password_plac', '输入你的邮件密码', 'zh'),
('admin_settings.email.port', '邮件端口', 'zh'),
('admin_settings.email.save_button', '保存电子邮件设置', 'zh'),
('admin_settings.others.allow_registration', '允许用户注册', 'zh'),
('admin_settings.others.allow_registration_help', '你可以禁用新用户的公开注册。你仍然能够在管理面板上创建新用户。', 'zh'),
('admin_settings.others.allow_user_verification', '允许用户电子邮件验证', 'zh'),
('clear_cache', '清除缓存', 'zh'),
('admin_settings.others.contact_email', '联系电子邮件', 'zh'),
('admin_settings.others.contact_email_plac', '输入您的联系电子邮件', 'zh'),
('admin_settings.others.default_storage', '用户账户的默认存储空间（单位：GB）', 'zh'),
('admin_settings.others.default_storage_plac', '设置默认的存储空间，单位为GB', 'zh'),
('admin_settings.others.google_analytics', '谷歌分析代码（可选）', 'zh'),
('admin_settings.others.google_analytics_plac', '粘贴你的谷歌分析代码', 'zh'),
('admin_settings.others.mimetypes_blacklist', 'Mimetypes黑名单', 'zh'),
('admin_settings.others.mimetypes_blacklist_help', '如果你想阻止上传某些类型的文件，只需像这样把它们添加到黑名单中：X-php,mp3,jpeg 在每个mimetype之间使用逗号。不要在mimetypes前使用一个点。', 'zh'),
('admin_settings.others.mimetypes_blacklist_plac', '在黑名单中添加拟态类型', 'zh'),
('admin_settings.others.storage_limit', '存储限制', 'zh'),
('admin_settings.others.storage_limit_help', '如果这个值是关闭的，所有用户将拥有无限的存储容量，你将无法向用户收取存储计划的费用。', 'zh'),
('admin_settings.others.upload_limit', '上传限制（单位：MB）', 'zh'),
('admin_settings.others.upload_limit_help', '如果你想设置单次上传的最大文件大小限制，请添加你的限制大小，单位为MB。例如，100表示100MB，2 000表示2 000MB的限制。', 'zh'),
('admin_settings.others.upload_limit_plac', '输入你的上传限制（MB）。', 'zh'),
('appearance', '外观', 'zh'),
('admin_settings.tabs.others', '应用', 'zh'),
('alerts.error_confirm', '那太可怕了!', 'zh'),
('alerts.leave_to_sign_in', '你真的想离开吗？', 'zh'),
('alerts.success_confirm', '棒极了!', 'zh'),
('add_to_favourites', '添加到收藏夹', 'zh'),
('download', '下载', 'zh'),
('copy', '复制', 'zh'),
('empty_trash', '清空', 'zh'),
('remove_favourite', '移除收藏夹', 'zh'),
('rename', '重命名', 'zh'),
('restore', '恢复', 'zh'),
('select', '选择', 'zh'),
('share', '分享', 'zh'),
('cancel_sharing', '取消共享', 'zh'),
('edit_sharing', '编辑分享', 'zh'),
('upload', '上传', 'zh'),
('cookie_disclaimer.button', 'cookies政策', 'zh'),
('cookie_disclaimer.description', '通过浏览本网站，你同意我们的 {0}', 'zh'),
('datatable.paginate_info', '显示1 - {visible} 从{total} 的记录', 'zh'),
('empty_page.call_to_action', '上传文件', 'zh'),
('empty_page.description', '通过上传按钮轻松地在这里上传一些文件。', 'zh'),
('empty_page.title', '上传你的第一个文件', 'zh'),
('errors.capacity_digit', '存储容量必须低于10位数字。', 'zh'),
('created_at', '创建于', 'zh'),
('items', '项目', 'zh'),
('space', '空间', 'zh'),
('selected_multiple', '选定的多个项目', 'zh'),
('shared', '共用的', 'zh'),
('size', '大小', 'zh'),
('where', '哪里', 'zh'),
('aperature', 'F编号', 'zh'),
('aperture_value', '光圈值', 'zh'),
('author', '作者', 'zh'),
('camera_lens', '摄像机镜头', 'zh'),
('color_space', '色彩空间', 'zh'),
('dimension', '尺寸', 'zh'),
('exposure', '曝光时间', 'zh'),
('focal', '焦距', 'zh'),
('iso', 'ISO', 'zh'),
('latitude', '纬度', 'zh'),
('longitude', '经度', 'zh'),
('make', '摄像机', 'zh'),
('meta_data', '元数据', 'zh'),
('model', '模型', 'zh'),
('resolution', '决议', 'zh'),
('time_data', '创建的内容', 'zh'),
('empty', '空的', 'zh'),
('folder.item_counts', '{count}项目|{count}项目', 'zh'),
('admin', '管理员', 'zh'),
('yes_iam_sure', '是的，我肯定', 'zh'),
('free', '免费', 'zh'),
('get_it', '得到它', 'zh'),
('input_image.supported', '支持的格式是.png, .jpg, .jpeg。', 'zh'),
('input_image.title', '上传图片', 'zh'),
('search_anything', '搜索任何东西...', 'zh'),
('item_thumbnail.deleted_at', '已删除 {time}', 'zh'),
('locations.home', '文件', 'zh'),
('logout', '退出登录', 'zh'),
('locations.profile', '个人资料', 'zh'),
('locations.settings', '设置', 'zh'),
('locations.trash', '回收站', 'zh'),
('administration', 'Administration', 'zh'),
('menu.files', '文件', 'zh'),
('menu.latest', '最新上传', 'zh'),
('menu.password', '密码安全', 'zh'),
('menu.profile', '个人资料设置', 'zh'),
('menu.shared', '共享的文件', 'zh'),
('trash', '回收站', 'zh'),
('nothing_to_preview', '没有什么可以预览。', 'zh'),
('messages.nothing_was_found', '没有发现任何问题。', 'zh'),
('deselect_all', '取消选择所有', 'zh'),
('done', '已完成', 'zh'),
('select_all', '选择所有', 'zh'),
('page_contact_us.description', '你有任何问题吗？请与我们联系。', 'zh'),
('page_contact_us.error_message', '有些地方出错了，请再试一次。', 'zh'),
('page_contact_us.form.email_plac', '输入你的电子邮件', 'zh'),
('message', '留言', 'zh'),
('page_contact_us.form.message_plac', '在这里输入你的信息...', 'zh'),
('send_message', '发送信息', 'zh'),
('page_contact_us.success_message', '您的信息已成功发送。', 'zh'),
('update_password', '更新密码', 'zh'),
('confirm_password', '确认密码', 'zh'),
('email', '电子邮件', 'zh'),
('new_password', '新密码', 'zh'),
('page_create_password.subtitle', '在这里创建你的新密码', 'zh'),
('page_create_password.title', '只需一个步骤即可登录', 'zh'),
('get_link', '获取链接', 'zh'),
('sign_in', '登录', 'zh'),
('page_forgotten_password.pass_reseted_subtitle', '您的密码已成功重置。', 'zh'),
('page_forgotten_password.pass_reseted_title', '棒极了!', 'zh'),
('page_forgotten_password.pass_sennded_subtitle', '我们已经通过电子邮件发送了您的密码重置链接!', 'zh'),
('page_forgotten_password.pass_sennded_title', '谢谢你!', 'zh'),
('page_forgotten_password.password_remember_text', '记得你的密码吗？', 'zh'),
('page_forgotten_password.subtitle', '用你的电子邮件获得重置链接', 'zh'),
('page_forgotten_password.title', '忘记密码？', 'zh'),
('sign_up_now', '现在注册', 'zh'),
('contact_us', '联系我们', 'zh'),
('pricing', '定价', 'zh'),
('page_index.menu.sign_in', '注册', 'zh'),
('page_index.sign_feature_1', '不需要信用卡', 'zh'),
('page_index.sign_feature_2', '{defaultSpace} 免费存储空间', 'zh'),
('page_index.sign_up_button', '现在注册', 'zh'),
('next_step', '下一步', 'zh'),
('page_login.placeholder_email', '输入你的电子邮件', 'zh'),
('page_login.registration_button', '注册账户。', 'zh'),
('page_login.registration_text', '没有账户？', 'zh'),
('page_login.subtitle', '请输入你的电子邮件以登录', 'zh'),
('welcome_back', '欢迎回来!', 'zh'),
('page_registration.agreement', '通过点击 \"创建账户 \"按钮，我同意{0}和{1}。', 'zh'),
('create_account', '创建账户', 'zh'),
('page_registration.have_an_account', '你有一个账户吗？', 'zh'),
('full_name', '全名', 'zh'),
('page_registration.label_pass', '创建密码', 'zh'),
('page_registration.placeholder_confirm_pass', '确认你的新密码', 'zh'),
('page_registration.placeholder_email', '输入你的电子邮件', 'zh'),
('page_registration.placeholder_name', '输入你的全名', 'zh'),
('page_registration.subtitle', '请填写注册表以创建账户', 'zh'),
('page_registration.title', '创建新账户', 'zh'),
('page_shared.download_file', '下载文件', 'zh'),
('page_shared.placeholder_pass', '输入密码', 'zh'),
('submit', '提交', 'zh'),
('page_shared.subtitle', '请输入密码以获得共享内容', 'zh'),
('page_shared.title', '您的分享链接受到保护', 'zh'),
('page_shared_404.subtitle', '你发现的内容可能已经被删除。', 'zh'),
('page_shared_404.title', '未找到 :(', 'zh'),
('log_in', '登录', 'zh'),
('page_sign_in.password_reset_button', '重置密码。', 'zh'),
('page_sign_in.password_reset_text', '忘记密码了吗？', 'zh'),
('page_sign_in.placeholder_password', '输入你的密码', 'zh'),
('page_sign_in.subtitle', '通过密码确认你的身份', 'zh'),
('page_sign_in.title', '你是{name}?', 'zh'),
('page_sign_in_2fa_title', '欢迎 {name}', 'zh'),
('page_sign_in_2fa_subtitle', '通过你的Authenticator应用程序的2FA代码确认你。', 'zh'),
('page_sign_in.placeholder_2fa', '输入你的2FA代码...', 'zh'),
('page_sign_in.2fa_recovery_text', '拿不到你的2FA代码？', 'zh'),
('page_sign_in.2fa_recovery_button', '使用恢复代码。', 'zh'),
('page_sign_in.2fa_recovery_subtitle', '使用你的恢复代码', 'zh'),
('page_sign_in.placeholder_2fa_recovery', '输入你的恢复代码', 'zh'),
('page_not_verified.subtitle', '您的账户没有经过验证。在登录之前，请验证您的账户。', 'zh'),
('page_not_verified.resend_text', '你想重新发送验证邮件吗？', 'zh'),
('page_not_verified.resend_button', '重新发送验证邮件。', 'zh'),
('page_email_successfully_verified.title', '您的账户已成功验证!', 'zh'),
('page_email_successfully_verified.subtitle', '现在你可以登录了。', 'zh'),
('page_email_successfully_send.title', '验证邮件已成功发送!', 'zh'),
('page_email_successfully_send.subtitle', '检查你的电子邮件地址，该邮件是在哪里发送的。', 'zh'),
('popup_create_folder.folder_default_name', '新文件夹', 'zh'),
('popup_create_folder.label', '输入名称', 'zh'),
('popup_create_folder.placeholder', '输入你的名称', 'zh'),
('popup_create_folder.title', '创建文件夹', 'zh'),
('popup_deleted_user.message', '你的用户和所有的用户数据内容被删除。', 'zh'),
('popup_deleted_user.title', '用户被删除', 'zh'),
('popup_deleted_user_aborted.message', '当用户有活跃的订阅时，你不能删除这个账户。', 'zh'),
('popup_deleted_user_aborted.title', '用户没有被删除', 'zh'),
('popup_error.message', '出了点问题，我们无法继续。请与我们联系。', 'zh'),
('popup_error.title', '呜呼，出错了!', 'zh'),
('popup_exceed_limit.message', '请升级您的账户以改变您的限额。', 'zh'),
('popup_exceed_limit.title', '你超过了存储限制', 'zh'),
('popup_mimetypes_blacklist.message', '这种类型的文件（{mimetype}）不允许上传。', 'zh'),
('popup_mimetypes_blacklist.title', '你试图上传不支持的文件类型', 'zh'),
('popup_move_item.submit', '移动项目', 'zh'),
('popup_move_item.title', '移动项目', 'zh'),
('popup_pass_changed.message', '所以现在，你有了很棒的新密码。', 'zh'),
('popup_pass_changed.title', '您的密码被更改了', 'zh'),
('popup_paylod_error.message', '对不起，你的文件太大，无法上传', 'zh'),
('popup_paylod_error.title', '文件太大', 'zh'),
('popup_rename.select_emoji_label', '选择你的表情符号图标', 'zh'),
('popup_rename.label', '编辑名称', 'zh'),
('popup_rename.placeholder', '输入你的标题', 'zh'),
('popup_rename.title', '重命名您的 {item}', 'zh'),
('popup_share_create.title', '分享您的 {item}', 'zh'),
('popup_share_edit.change_pass', '更改密码', 'zh'),
('popup_share_edit.confirm', '确认', 'zh'),
('popup_share_edit.save', '保存更改', 'zh'),
('popup_share_edit.stop', '取消共享', 'zh'),
('popup_share_edit.title', '更新共享选项', 'zh'),
('popup_signup_error.message', '请检查你的数据库连接是否一切正常。', 'zh'),
('popup_signup_error.title', '服务器错误', 'zh'),
('popup_upload_limit.message', '你上传的文件大小超过了上传限制（{uploadLimit}）。', 'zh'),
('popup_upload_limit.title', '你超过了单个文件的上传限制', 'zh'),
('preview_sorting.grid_view', '网格视图', 'zh'),
('preview_sorting.list_view', '列表查看', 'zh'),
('preview_sorting.preview_sorting_button', '查看', 'zh'),
('preview_sorting.sort_alphabet', '按字母排序', 'zh'),
('preview_sorting.sort_date', '按日期排序', 'zh'),
('profile.store_pass', '存储新密码', 'zh'),
('pronouns.of', '的', 'zh'),
('roles.admin', '管理员', 'zh'),
('roles.user', '用户', 'zh'),
('others', '其他', 'zh'),
('edit_page', '编辑页面', 'zh'),
('my_profile', '我的资料', 'zh'),
('change_password', '密码安全', 'zh'),
('create_user', '创建用户', 'zh'),
('delete_user', '删除用户', 'zh'),
('routes_title.users_list', '用户管理', 'zh'),
('routes_title.users_password', '密码', 'zh'),
('routes_title.users_storage_usage', '存储使用', 'zh'),
('routes_title.users_user', '用户', 'zh'),
('can_download_file', '可以下载文件', 'zh'),
('shared.editor', '可以编辑和上传文件', 'zh'),
('shared.empty_shared', '还没有分享到任何东西', 'zh'),
('shared.empty_shared_desc', '你分享的所有项目都将在此可见。', 'zh'),
('shared.visitor', '只能查看和下载', 'zh'),
('awesome_iam_done', '棒极了，我完成了!', 'zh'),
('generate_link', '生成链接', 'zh'),
('shared_form.email_placeholder', '输入你的电子邮件', 'zh'),
('shared_form.expiration_day', '{value}d.', 'zh'),
('shared_form.expiration_hour', '{value}h.', 'zh'),
('password_protected', '受密码保护的', 'zh'),
('permission', '许可', 'zh'),
('shared_form.label_send_to_recipients', '发送给收件人', 'zh'),
('get_your_link', '获取您的链接', 'zh'),
('shared_form.placeholder_permission', '选择你的许可', 'zh'),
('recipients', '受益人', 'zh'),
('favourites', '收藏夹', 'zh'),
('sidebar.favourites_empty', '在这里拖动你喜欢的文件夹。', 'zh'),
('sidebar.home', '我的文件', 'zh'),
('sidebar.latest', '最新上传', 'zh'),
('sidebar.locations_title', '基地', 'zh'),
('publicly_shared', '公开分享', 'zh'),
('navigator', '导航', 'zh'),
('toaster.changed_capacity', '你成功地改变了用户的存储大小!', 'zh'),
('toaster.changed_user', '你成功地改变了用户的角色!', 'zh'),
('toaster.created_user', '用户已成功创建!', 'zh'),
('toaster.email_set', '您的电子邮件设置已成功更新', 'zh'),
('toaster.sended_password', '您成功地发送了重置密码的用户邮件!', 'zh'),
('file', '文件', 'zh'),
('folder', '文件夹', 'zh'),
('uploading.cancel', '取消上传', 'zh'),
('uploading.processing_file', '处理文件...', 'zh'),
('uploading.progress', '上传文件{progress}% - {current}/{total}', 'zh'),
('user_box_delete.description', '你可以删除你的用户，但是，请注意！这个事件是不可逆的。这个事件是不可逆的，所有的用户数据包括用户文件都将被删除。', 'zh'),
('user_box_delete.title', '删除用户', 'zh'),
('user_box_password.description', '你可以通过下面的按钮发送密码重置邮件。用户将被重定向到他可以更新其账户密码的页面。', 'zh'),
('user_box_password.title', '更改用户密码', 'zh'),
('user_box_role.description', '你可以改变当前用户的角色。管理员角色可以编辑或创建新用户，改变存储容量和任何其他应用设置。', 'zh'),
('user_box_role.title', '改变用户角色', 'zh'),
('user_box_storage.description', '通过上面的输入改变用户的存储容量。你必须只输入数字，例如，值\'5\'意味着，用户将有5GB的存储容量。', 'zh'),
('user_box_storage.title', '改变用户存储容量', 'zh'),
('user_password.title', '改变你的密码', 'zh'),
('address', '地址', 'zh'),
('user_settings.address_plac', '输入你的帐单地址', 'zh'),
('city', '城市', 'zh'),
('user_settings.city_plac', '输入你的帐单城市', 'zh'),
('country', '国家', 'zh'),
('user_settings.country_plac', '选择你的帐单国家', 'zh'),
('name', '名称', 'zh'),
('user_settings.name_plac', '输入你的帐单名称', 'zh'),
('phone_number', '电话', 'zh'),
('user_settings.phone_number_plac', '输入你的帐单电话号码', 'zh'),
('postal_code_plac', '输入你的邮政编码', 'zh'),
('state', '国家', 'zh'),
('user_settings.state_plac', '键入您的帐单状态', 'zh'),
('timezone', '时区', 'zh'),
('select_your_timezone', '选择你的时区', 'zh'),
('account_information', '帐户信息', 'zh'),
('billing_information', '账单信息', 'zh'),
('validation_errors.incorrect_2fa_code', '对不起，你通过了不正确或过期的代码', 'zh'),
('validation_errors.incorrect_2fa_recovery_code', '对不起，你通过了不正确的恢复代码', 'zh'),
('validation_errors.incorrect_password', '对不起，你通过了错误的密码 :(', 'zh'),
('wrong_image_error', '你可能上传了错误的文件，请再试一次!', 'zh'),
('app_description', '你的自我托管的存储云软件由Laravel和Vue驱动', 'zh'),
('user_not_fount', '我们找不到有这个电子邮件地址的用户。', 'zh'),
('incorrect_password', '对不起，您的密码不正确。', 'zh'),
('time', 'd. M. Y, h:i', 'zh'),
('home', '首页', 'zh'),
('shared_link_email_subject', '🙋 :用户与你分享一些文件。看看吧!', 'zh'),
('shared_link_email_user', ':user (:email) 向你发送共享文件的链接。', 'zh'),
('shared_link_email_link', '打开你的文件', 'zh'),
('shared_link_email_salutation', '问候, :app_name', 'zh'),
('hello', '你好!', 'zh'),
('reset_password_subject', '为您的账户重设密码', 'zh'),
('reset_password_line_1', '您收到这封邮件是因为我们收到了您账户的密码重置请求。', 'zh'),
('reset_password_line_2', '如果你没有要求重置密码，则不需要采取进一步行动。', 'zh'),
('reset_password', '重置密码', 'zh'),
('salutation', '问候', 'zh'),
('user_sending', ':name 正在向你发送这个文件', 'zh'),
('protected_file', '此链接受密码保护', 'zh'),
('languages', '语言', 'zh'),
('add_language', '添加语言', 'zh'),
('create_language', '创建语言', 'zh'),
('edit_translations', '编辑翻译', 'zh'),
('language_name', '语言名称', 'zh'),
('set_as_default_language', '设置为默认语言', 'zh'),
('language_settings', '语言设置', 'zh'),
('search_translations', '搜索语言翻译...', 'zh'),
('select_locale', '选择地区', 'zh'),
('locale_name', '语言名称', 'zh'),
('select_language_locale', '选择语言区位', 'zh'),
('type_language_name', '输入语言名称', 'zh'),
('go_to_files', '转到文件', 'zh'),
('color_theme', '颜色主题', 'zh'),
('color_theme_description', '你的颜色变化将在应用程序刷新后可见。', 'zh'),
('og_image', 'OG 图片', 'zh'),
('og_image_description', '当有人将内容分享到Facebook或任何其他社交媒体时出现的图像。最好的尺寸是1200x627', 'zh'),
('app_touch_icon', '应用程序触摸图标', 'zh'),
('app_touch_icon_description', '如果用户在他的手机屏幕上存储书签，这个图标会出现在应用程序的缩略图中。最好的尺寸是156x156', 'zh'),
('search_in_list', '在列表中搜索...', 'zh'),
('2fa.settings.title', '双因素认证', 'zh'),
('2fa.i_have_2fa_app', '我已经有了2FA应用程序', 'zh'),
('confirm_your_password', '确认您的密码', 'zh'),
('popup_2fa.help', '用你手机上的<b class=\"text-theme dark-text-theme\">双因素认证应用</b>扫描上面的图片。', 'zh'),
('confirm', '确认', 'zh'),
('popup_2fa.toaster_enabled', '您的2FA已成功启用!', 'zh'),
('popup_2fa.toaster_disabled', '你的2FA被禁用了!', 'zh'),
('popup_2fa.switch_title', '启用/停用双因素认证', 'zh'),
('popup_2fa.switch_info', '在这里，你可以通过打开2fa验证来提高你的账户安全性。', 'zh'),
('show_recovery_codes', '显示恢复代码', 'zh'),
('popup_2fa.codes_info', '恢复代码可以在你失去对设备的访问权和无法收到双因素认证代码的情况下用于访问你的账户。', 'zh'),
('show_codes', '显示代码', 'zh'),
('your_security_codes', '你的安全代码', 'zh'),
('popup_2fa.popup_codes_disclaimer', '<b class=\"text-theme dark-text-theme\">把这些放在一个安全的地方。</b>如果你丢失了你的设备，并且没有恢复代码，你将失去对你账户的访问。', 'zh'),
('regenerate_codes', '再生代码', 'zh'),
('popup_2fa.toaster_codes_copied', '你的代码被复制了!', 'zh'),
('popup_2fa.toaster_codes_regenerated', '你的代码被再生了!', 'zh'),
('go_home', '转到主页', 'zh'),
('never', '从不', 'zh'),
('last_used', '最后一次使用', 'zh'),
('personal_access_token', '个人访问令牌', 'zh'),
('personal_token.section_description', '你还没有创建任何个人访问令牌。', 'zh'),
('create_token', '创建令牌', 'zh'),
('create_personal_token', '创建个人标识', 'zh'),
('token_name', '代币名称', 'zh'),
('popup_personal_token.plc', '键入代币名称...', 'zh'),
('popup_personal_token.your_token', '你的个人访问令牌', 'zh'),
('popup_personal_token.copy_token', '请确保<b class=\'text-theme dark-text-theme\'>现在复制你的个人访问令牌</b>。你将无法再看到它!', 'zh'),
('popup_delete_personal_token.title', '你确定要删除这个令牌吗？', 'zh'),
('popup_delete_personal_token.description', '任何使用该令牌的应用程序或脚本将不再能够进入你的账户。你不能撤消这一行动。', 'zh'),
('personal_token.token_deleted', '代币已成功删除!', 'zh'),
('dark_mode_toggle', '切换黑暗模式', 'zh'),
('convert_into_team_folder', '转换为团队文件夹', 'zh'),
('create_something', '创造一些东西', 'zh'),
('popup.share.email_send', '通过电子邮件发送链接', 'zh'),
('popup.share.email_description', '通过电子邮件向许多收件人发送你的分享链接。', 'zh'),
('expiration', '终止日期', 'zh'),
('popup.share.expiration_description', '你的链接在确切的时间段后失效。', 'zh'),
('popup.share.password_description', '用你的自定义密码保护你的物品。', 'zh'),
('sharelink.share_via_email', '在电子邮件中分享链接', 'zh'),
('sharelink.copy_embed', '复制网页插入代码', 'zh'),
('popup.move_into_team_disclaimer', '你的文件夹<b class=\"text-theme dark-text-theme\">将被移动</b>到团队文件夹部分。', 'zh'),
('upload_folder', '上传文件夹', 'zh'),
('member', '成员', 'zh'),
('request_for_upload', '{name} 正在向你索取文件', 'zh'),
('upload_request', '上传请求', 'zh'),
('request_for_upload_success', '上传 {name}的请求已成功完成', 'zh'),
('request_for_upload_expired', '上传请求已过期', 'zh'),
('automatically_uploads_for_file_request', '你的文件将被自动上传，之后，你可以在文件夹中组织你的文件。', 'zh'),
('request_for_upload_unavailable', '这个上传请求不再适用于上传文件。', 'zh'),
('closing_request_for_upload', '你确定你上传了所有你想要的{name}的文件吗？', 'zh'),
('closing_request_for_upload_warn', '你将无法再次在这里上传任何文件。', 'zh'),
('user_leave_message', '{name} 给您留言', 'zh'),
('tell_you_are_done', '告诉{name}你已经完成了!', 'zh'),
('user_invite_you_into_team_folder', '{name} 邀请你加入他的团队，加入共享的团队文件夹', 'zh'),
('register_with_email_and_get_folder', '用你的电子邮件{email} 注册账户，并获得该团队文件夹的访问权。', 'zh'),
('invite_to_join_team_folder', '邀请加入团队文件夹', 'zh'),
('or_decline_your_invitation', '或{0} 你的邀请。', 'zh'),
('decline', '拒绝', 'zh'),
('you_are_successfully_joined', '您已成功加入', 'zh'),
('proceed_to_participate_with_team', '你现在可以进入你的账户，参与团队文件夹的建设。', 'zh'),
('proceed_to_your_account', '进入你的账户', 'zh'),
('go_to_team_folder', '转到团队文件夹', 'zh'),
('you_denied_invitation', '您被成功拒绝邀请', 'zh'),
('invitation_used', '您的邀请已被使用', 'zh'),
('invitation_used_description', '我们很抱歉，但这个邀请函之前已经使用过了', 'zh'),
('go_to_your_shared_folders', '转到你的共享文件夹', 'zh'),
('accept_invitation', '接受邀请', 'zh'),
('accept_and_register', '接受并注册账户', 'zh'),
('application', '应用', 'zh'),
('account_settings', '帐户设置', 'zh'),
('first_name', '名字', 'zh'),
('last_name', '姓氏', 'zh'),
('gmt', '格林威治标准时间', 'zh'),
('theme_mode', '主题模式', 'zh'),
('set_default_theme_disclaimer', '将你的主题模式设置为深色、浅色或基于你的系统设置。', 'zh'),
('default_emojis', '默认表情符号', 'zh'),
('set_default_emoji_disclaimer', '为你的文件夹自定义图标设置默认的表情符号。你可以设置Twemoji或默认的苹果表情符号。', 'zh'),
('light_mode', '灯光模式', 'zh'),
('dark_mode', '黑暗模式', 'zh'),
('based_on_system', '基于系统设置', 'zh'),
('storage_usage', '存储使用', 'zh'),
('total_of', '总数{capacity}', 'zh'),
('used', '使用', 'zh'),
('in_last_x_days', '在过去45天内', 'zh'),
('edit_members', '编辑成员', 'zh'),
('dissolve_team', '解散团队', 'zh'),
('edit_team_members', '编辑团队成员', 'zh'),
('file_request', '文件请求', 'zh'),
('create_team_folder_description', '通过创建新的团队文件夹，轻松地与你的团队协作处理你的文件。', 'zh'),
('create_team_folder', '创建团队文件夹', 'zh'),
('spotlight', '聚光灯', 'zh'),
('your_trash_is_empty', '你的垃圾箱是空的', 'zh'),
('your_trash_is_empty_desc', '在你删除文件后，你可以从垃圾箱中恢复它们。', 'zh'),
('create', '创建', 'zh'),
('upload_or_create', '上传/创建', 'zh'),
('base', '基地', 'zh'),
('not_any_folder', '没有任何文件夹。', 'zh'),
('collaboration', '协作', 'zh'),
('team_folders', '团队文件夹', 'zh'),
('shared_with_me', '与我分享', 'zh'),
('broadcasting', '广播', 'zh'),
('view', '查看', 'zh'),
('sorting', '排序', 'zh'),
('accept', '接受', 'zh'),
('you_accepted_invitation', '您成功接受了邀请', 'zh'),
('you_decline_invitation', '你成功地拒绝了邀请', 'zh'),
('notification_center', '通知中心', 'zh'),
('clear_all', '清除所有', 'zh'),
('not_any_notifications', '没有任何通知。', 'zh'),
('unread', '未读', 'zh'),
('read', '阅读', 'zh'),
('notifications', '通知', 'zh'),
('options', '选择', 'zh'),
('loading_content', '正在加载内容...', 'zh'),
('note', '注意事项', 'zh'),
('user_was_deleted', '用户被删除', 'zh'),
('max_storage', '最大存储量', 'zh'),
('create_file_request', '创建文件请求', 'zh'),
('convert_as_team_folder', '转换为团队文件夹', 'zh'),
('leave_team_folder', '离开团队文件夹', 'zh'),
('nothing_shared_with_you', '没有与你分享的东西', 'zh'),
('nothing_shared_with_you_description', '所有与你分享的项目都将在这里可见。', 'zh'),
('you_left_team_folder', '你已成功离开团队文件夹', 'zh'),
('there_is_nothing', '没有什么', 'zh'),
('frequently_used', '经常使用的', 'zh'),
('there_is_nothing_smile', '什么都没有 :(', 'zh'),
('cache', '缓存', 'zh'),
('cache_note', '你在你的.env文件中改变了什么吗？然后清除你的缓存。', 'zh'),
('there_is_not_log', '没有任何服务器日志。', 'zh'),
('there_is_not_database_backup', '没有存储任何数据库备份。', 'zh'),
('backup_path', '你可以在以下位置找到你的备份 <b>/storage/app/app-backups</b>.', 'zh'),
('update_your_credentials', '更新你的证书', 'zh'),
('search_your_users', '通过你的用户搜索...', 'zh'),
('files_and_folders', '文件和文件夹', 'zh'),
('actions', '操作', 'zh'),
('suggested_filters', '建议的过滤器', 'zh'),
('go', 'Go', 'zh'),
('navigate', '导航', 'zh'),
('web_code_copied', '你的网页插入代码被复制了', 'zh'),
('share_with_multiple_emails', '在多个电子邮件上分享', 'zh'),
('get_qr_code', '获取你的二维码', 'zh'),
('store_changes', '保存更改', 'zh'),
('send', '发送', 'zh'),
('show_details', '显示细节', 'zh'),
('select_or_search_emoji', '选择或搜索表情符号图标...', 'zh'),
('create_request', '创建请求', 'zh'),
('copy_upload_request_link', '复制您的上传请求链接', 'zh'),
('type_email_', '输入电子邮件...', 'zh'),
('send_request_by_email', '通过电子邮件发送请求', 'zh'),
('send_request_by_email_description', '在收件人的电子邮件中发送您的文件请求', 'zh'),
('message_for_recipient', '为收件人键入信息...', 'zh'),
('message_optional', '信息（可选）', 'zh'),
('message_optional_description', '这条信息将显示在你的电子邮件收件人或上传页面中。', 'zh'),
('folder_name_optional', '文件夹名称（可选）', 'zh'),
('folder_name_optional_description', '创建的文件夹和文件将以你自己的名字命名。', 'zh'),
('type_name_', '输入名称', 'zh'),
('replace_icon_with_emoji', '用Emoji代替文件夹图标', 'zh'),
('emoji_as_an_icon', '表情符号作为一种图标', 'zh'),
('current_password', '当前密码', 'zh'),
('delete_account', '删除账户', 'zh'),
('details', '详细内容', 'zh'),
('store_credentials', '存储凭证', 'zh'),
('default_language_disclaimer', '如果该语言被设置为默认语言，应用程序将以该语言显示给所有用户。', 'zh'),
('reset_user_password', '重置用户密码', 'zh'),
('server', '服务器', 'zh'),
('environment', '环境', 'zh'),
('homepage', '主页', 'zh'),
('allow_homepage', '允许主页', 'zh'),
('allow_homepage_note', '当这一点被打开时，你的访问者可以访问你的默认主页。', 'zh'),
('storage_upload', '存储和上传', 'zh'),
('allow_recaptcha', '允许 ReCaptcha v3', 'zh'),
('allow_recaptcha_note', 'ReCaptcha将被允许用于注册和联系我们表格。', 'zh'),
('login_and_registration', '登录和注册', 'zh'),
('account', '帐户', 'zh'),
('search', '搜索', 'zh'),
('latest_registrations', '最新注册', 'zh'),
('total_storage', '储存总量', 'zh'),
('total_users', '用户总数', 'zh'),
('temporary_unavailable', '暂时无法使用', 'zh'),
('shared_link_temporary_unavailable', '不幸的是，这个共享链接暂时无法使用。请稍后再试。', 'zh'),
('not_selected', '未选择', 'zh'),
('waiting_for_accept_invitation', '等待接受邀请...', 'zh'),
('team_folder_updated', '你的团队文件夹已更新', 'zh'),
('update_team_folder', '更新团队文件夹', 'zh'),
('edit_team_folder', '编辑团队文件夹', 'zh'),
('upgrade_to_invite_members', '你必须升级你的账户才能添加这个新成员。', 'zh'),
('type_valid_email', '你必须输入有效的电子邮件', 'zh'),
('team_was_invited', '您的团队已被成功邀请。', 'zh'),
('team_was_invited_and_folder_moved', '你的团队被邀请，文件夹被移到团队文件夹部分。', 'zh'),
('move_and_invite_members', '移动和邀请成员', 'zh'),
('add_at_least_one_member', '请至少增加一名成员。', 'zh'),
('add_at_least_one_member_into_team_folder', '请在你的团队文件夹中至少添加一名成员。', 'zh'),
('your_members', '您的会员', 'zh'),
('type_member_email_', '输入会员的电子邮件...', 'zh'),
('add_member', '添加会员', 'zh'),
('go_to_dashboard', '转到仪表板', 'zh'),
('go_to_settings', '转到设置', 'zh'),
('go_to_payments', '支付/设置', 'zh'),
('go_to_pages', '转到页面', 'zh'),
('go_to_languages', '转到语言', 'zh'),
('show_all_plans', '显示所有计划', 'zh'),
('show_transactions', '显示交易', 'zh'),
('go_home_spotlight', '转到首页', 'zh'),
('go_to_recent_uploads', '转到最近上传的文件', 'zh'),
('go_to_publicly_shared', '转到公共共享', 'zh'),
('go_to_trash', '转到垃圾箱', 'zh'),
('go_to_team_folders', '转到团队文件夹', 'zh'),
('go_to_shared_with_me', '转到分享于我的', 'zh'),
('update_profile_settings', '更新个人资料设置', 'zh'),
('update_security_api', '更新密码安全', 'zh'),
('show_storage_details', '显示存储细节', 'zh'),
('empty_your_trash', '清空你的垃圾', 'zh'),
('toggle_grid_list_view', '切换网格/列表视图', 'zh'),
('toggle_dark_light_mode', '切换黑暗/光明模式', 'zh'),
('toggle_full_screen_mode', '切换全屏模式', 'zh'),
('toggle_emoji_type', '切换表情符号类型', 'zh'),
('show_all_subscriptions', '显示所有订阅号', 'zh'),
('write_feedback', '撰写反馈意见', 'zh'),
('branding', '品牌建设', 'zh'),
('save_broadcast_settings', '保存广播设置', 'zh'),
('save_storage_settings', '保存存储设置', 'zh'),
('storage_driver', '存储驱动', 'zh'),
('mail_driver', '邮件驱动', 'zh'),
('select_mail_driver', '选择你的邮件驱动程序', 'zh'),
('broadcast_driver_updated', '您的广播驱动程序已更新。', 'zh'),
('storage_driver_updated', '您的存储驱动器已更新。', 'zh'),
('spotlight_search', '聚光灯搜索...', 'zh'),
('add', '添加', 'zh'),
('can_edit', '可以编辑', 'zh'),
('can_view', '可以查看', 'zh'),
('exceed_upload_limit', '你超过了你的上传限制', 'zh'),
('exceed_upload_limit_description', '不幸的是，你不能上传你的文件。', 'zh'),
('really_dissolve_team', '你确定你要解散这个团队吗？', 'zh'),
('really_dissolve_team_desc', '所有团队成员将失去对你的文件的访问权，现有文件夹将被移到你的 \"文件 \"部分。', 'zh'),
('really_leave_team', '你确定你要离开这个团队的文件夹吗？', 'zh');
INSERT INTO `language_translations` (`key`, `value`, `lang`) VALUES
('really_leave_team_desc', '你将不能访问这些文件，你以前上传的所有内容将成为你离开的这个团队文件夹的一部分。', 'zh'),
('images', '图片', 'zh'),
('videos', '视频', 'zh'),
('audios', '音频', 'zh'),
('documents', '文档', 'zh'),
('paginator', '显示 {from} - {to} 从 {total} 记录', 'zh'),
('require_email_verification', '要求验证电子邮件地址', 'zh'),
('require_email_verification_note', '如果你想在注册后验证用户的电子邮件地址，请打开。', 'zh'),
('completed', '已完成', 'zh'),
('error', '错误', 'zh'),
('cancelled', '取消了', 'zh'),
('active', '活跃', 'zh'),
('archived', '归档', 'zh'),
('inactive', '不活跃', 'zh'),
('total_x_of_x_used', '总共 {total}已用{use', 'zh'),
('total_x_of_x_members', '共有{total}成员{use}', 'zh'),
('go_back_from_x', '从{location}回去', 'zh'),
('new_team_invitation', '新团队邀请函', 'zh'),
('x_invite_to_join_team', ':name 邀请你加入到文件夹团队。', 'zh'),
('team_invitation_notify_title', '我们邀请你与团队成员合作，在 :app', 'zh'),
('team_invitation_notify_desc', '我们邀请你与团队合作。', 'zh'),
('team_invitation_notify_desc_without_account', '你被邀请与团队文件夹合作。但首先，你必须创建一个账户才能进入团队文件夹。', 'zh'),
('join_into_team_folder', '加入到团队文件夹中', 'zh'),
('join_and_create_account', '加入并创建一个账户', 'zh'),
('file_request_filled', '文件要求已完成', 'zh'),
('file_request_filled_desc', '你对\':name\'文件夹的文件请求已成功填充。', 'zh'),
('show_files', '显示文件', 'zh'),
('file_request_filled_mail', '你的文件请求在你的\':name\'文件夹中得到了满足。', 'zh'),
('file_request_filled_mail_note', '我们给你发电子邮件是因为你的文件请求已得到满足。请点击下面的链接来显示上传的文件。', 'zh'),
('thanks_salutation', '感谢你使用我们的应用程序!', 'zh'),
('upload_your_files', '上传你的文件', 'zh'),
('file_request_optional_message', 'PS: :name 给你留言了: :notes', 'zh'),
('file_request_notify_title', ':name 要求您上传文件', 'zh'),
('file_request_notify_description', '我们给你发电子邮件是因为:name要求你提供文件。请点击下面的链接，为:name传您的文件。', 'zh'),
('user_action_not_allowed', '这种用户行为是不允许的。', 'zh'),
('pcs.', '颗数。', 'zh'),
('mem.', '记忆.', 'zh'),
('password_doesnt_match', '所提供的密码与你当前的密码不一致。', 'zh'),
('amount', '数量', 'zh'),
('upload_request_default_folder', '上传请求来自 :timestamp', 'zh'),
('copy_direct_download_link', '复制直接下载链接', 'zh'),
('direct_link_copied', '你的直接下载链接被复制了', 'zh'),
('application_settings', '应用/设置', 'zh'),
('login_registration_settings', '登录和注册 / 设置', 'zh'),
('appearance_settings', '外观/设置', 'zh'),
('adsense_settings', '广告 / 设置', 'zh'),
('homepage_settings', '主页/设置', 'zh'),
('environment_settings', '环境/设置', 'zh'),
('server_settings', '服务器/设置', 'zh'),
('user_features', '用户功能', 'zh'),
('upload_settings', '上传设置', 'zh'),
('set_up_2fa_app', '设置您的Authenticator应用程序', 'zh'),
('confirm_your_code', '确认你的代码', 'zh'),
('paste_code_from_2fa_app', '粘贴2fa应用程序的最新代码...', 'zh'),
('zero_for_unlimited_members', '输入-1来设置无限的团队成员。', 'zh'),
('max_team_members', '最大的团队成员', 'zh'),
('remote_upload', '远程上传', 'zh'),
('upload_files_remotely', '远程上传文件', 'zh'),
('remote_links', '远程链接', 'zh'),
('remote_links_help', '每一个新行粘贴一个链接，我们将尝试下载该文件。', 'zh'),
('paste_remote_links_here', '在这里粘贴你的文件链接...', 'zh'),
('remote_download_finished', '远程上传已成功完成', 'zh'),
('remote_upload_progress', '远程上传 - {processed} / {total}', 'zh'),
('remote_upload_failed_count', '失败: {count}', 'zh'),
('file_request_notify_center_description', '请点击下面的链接并上传你的文件:name.', 'zh'),
('verify_email_subject', '验证电子邮件地址', 'zh'),
('verify_email_line', '点击下面的按钮来验证你的电子邮件地址。', 'zh'),
('verify_email_action', '验证电子邮件地址', 'zh'),
('custom', '翻译', 'zh');

-- --------------------------------------------------------

--
-- 表的结构 `metered_tiers`
--

CREATE TABLE `metered_tiers` (
  `metered_feature_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_unit` int(11) NOT NULL DEFAULT '1',
  `last_unit` int(11) DEFAULT NULL,
  `per_unit` decimal(8,4) NOT NULL,
  `flat_fee` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_15_171328_create_folders_table', 1),
(5, '2019_08_15_171345_create_files_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2020_03_03_070319_create_favourites_folders_table', 1),
(9, '2020_04_20_071047_create_shares_table', 1),
(10, '2020_05_26_092649_create_user_settings_table', 1),
(11, '2020_06_25_142635_create_settings_table', 1),
(12, '2020_07_08_080255_create_pages_table', 1),
(13, '2020_11_22_101014_create_traffic_table', 1),
(14, '2020_12_05_090531_create_jobs_table', 1),
(15, '2021_01_09_130434_create_languages_table', 1),
(16, '2021_01_09_152048_create_language_strings', 1),
(17, '2021_08_15_141112_create_plans_table', 1),
(18, '2021_08_15_150116_create_plan_drivers_table', 1),
(19, '2021_08_15_150116_create_subscription_drivers_table', 1),
(20, '2021_08_24_080638_create_team_folder_invitations_table', 1),
(21, '2021_08_24_092726_create_team_folder_members_table', 1),
(22, '2021_11_05_080436_create_customers_table', 1),
(23, '2021_11_05_112613_create_subscriptions_table', 1),
(24, '2021_11_08_155428_create_plan_fixed_features_table', 1),
(25, '2021_11_18_064523_create_transactions_table', 1),
(26, '2021_11_19_164732_create_user_limitations_table', 1),
(27, '2021_12_07_073632_create_plan_metered_features_table', 1),
(28, '2021_12_07_073633_create_metered_tiers_table', 1),
(29, '2021_12_07_140020_create_usages_table', 1),
(30, '2021_12_07_151224_create_balance_table', 1),
(31, '2021_12_08_073056_create_failed_payments_table', 1),
(32, '2021_12_16_080643_create_billing_alerts_table', 1),
(33, '2021_12_28_180644_create_credit_cards_table', 1),
(34, '2022_01_25_152729_create_exifs_table', 1),
(35, '2022_02_17_073653_create_upload_requests_table', 1),
(36, '2022_03_10_052753_create_notifications_table', 1),
(37, '2022_03_29_161750_update_tables_to_v2.0.10_table', 1),
(38, '2022_03_30_143926_create_app_updates_table', 1),
(39, '2022_04_05_161750_update_tables_to_v2.0.14_table', 1),
(40, '2022_06_07_141902_create_dunnings_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE `pages` (
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`slug`, `title`, `visibility`, `content`) VALUES
('terms-of-service', '服务条款', 1, '本协议是您与我们之间就本网站服务等相关事宜所订立的契约，您点击“我已阅读并同意”后，本协议即构成对双方有约束力的法律文件。您在使用本网站各项服务前，请您务必仔细阅读本协议，如果您不同意本协议或其中任何内容，您应立即停止使用本网站服务。如果您使用本网站服务的，您的使用行为将被视为对本协议全部内容的认可。'),
('privacy-policy', '隐私政策', 1, '本协议是您与我们之间就本网站服务等相关事宜所订立的契约，您点击“我已阅读并同意”后，本协议即构成对双方有约束力的法律文件。您在使用本网站各项服务前，请您务必仔细阅读本协议，如果您不同意本协议或其中任何内容，您应立即停止使用本网站服务。如果您使用本网站服务的，您的使用行为将被视为对本协议全部内容的认可。'),
('cookie-policy', 'Cookie 政策', 1, '本协议是您与我们之间就本网站服务等相关事宜所订立的契约，您点击“我已阅读并同意”后，本协议即构成对双方有约束力的法律文件。您在使用本网站各项服务前，请您务必仔细阅读本协议，如果您不同意本协议或其中任何内容，您应立即停止使用本网站服务。如果您使用本网站服务的，您的使用行为将被视为对本协议全部内容的认可。');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `plans`
--

CREATE TABLE `plans` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `type` enum('fixed','metered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` enum('day','week','month','quarter','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `plan_drivers`
--

CREATE TABLE `plan_drivers` (
  `plan_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `plan_fixed_features`
--

CREATE TABLE `plan_fixed_features` (
  `plan_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `plan_metered_features`
--

CREATE TABLE `plan_metered_features` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aggregate_strategy` enum('sum_of_usage','maximum_usage') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('allowed_adsense', '0'),
('allowed_recaptcha', '0'),
('allowed_registration_bonus', '0'),
('app_color', '#00BC7E'),
('app_description', '松果个人存储网盘是一款国民级产品,已连续9年为超过7亿用户提供稳定、安全的个人云存储服务,已实现电脑、手机、电视等多种终端场景的覆盖和互联,并支持多类型文件的备份、分享、查'),
('app_favicon', 'system/3fa2dd2e-e290-4448-8d20-10924f8732e3.png'),
('app_logo', 'system/a3b9c9d5-6f41-4740-9a05-857777f7955e.svg'),
('app_logo_dark', 'system/11bd4d1a-0d0e-43b2-b9f4-e76bc826abaa.svg'),
('app_logo_horizontal', 'system/de8bb333-e3fa-48ae-81ab-cd89ab46def5.png'),
('app_logo_horizontal_dark', 'system/292c8900-9b73-448e-b502-fa8aa2fcf3c6.png'),
('app_og_image', NULL),
('app_title', '松果个人存储网盘'),
('app_touch_icon', 'system/5b1acabf-f16a-42f2-a5d2-8c4512caefbd.svg'),
('contact_email', 'admin@qq.com'),
('default_max_storage_amount', '5'),
('default_max_team_member', '5'),
('feature_description_1', '具有官方标识、多人极速共享空间、文件接收方极速下载、文件权限分级、全流程日志等功能'),
('feature_description_2', '邀请用户加入团队协作、分享你的音视频文件、随时随地高效办公'),
('feature_description_3', '十年持续稳定服务，ISO三项权威认证，保护文件隐私安全'),
('feature_title_1', '文件极速传输'),
('feature_title_2', '团队协作'),
('feature_title_3', '数据安全保护'),
('features_description', '上传存储分享你的文件、支持文件上传和文件夹上传、支持智能标题搜索、本地存储或者阿里云存储，轻轻松松搜你想要'),
('features_title', '不止存储，数据管理更便捷 <span class=\"text-theme\">智能搜索</span>盘中文件一搜即有'),
('footer_content', '© 2022 松果个人存储网盘<a href=\"https://www.pineal.cn/goods-92.html\" target=\"_blank\" class=\"text-theme\">松果商城</a>'),
('get_started_description', '从现在开始 记录每一份热爱\n让美好永远陪伴\n为你电脑/手机中的文件提供云备份、预览、分享等服务，帮你更便捷安全地管理数据'),
('get_started_title', '立即使用松果云盘<span class=\"text-theme\">存储文件数据</span><br> 简单高效工作'),
('google_analytics', NULL),
('header_description', '为你电脑/手机中的文件提供云备份、预览、分享等服务，帮你更便捷安全地管理数据。'),
('header_title', '松果网盘 <span class=\"text-theme\">&</span> 记录每一份热爱 让美好永远陪伴'),
('language', 'zh'),
('license', 'extended'),
('paypal_payment_description', 'Available PayPal Credit, Debit or Credit Card.'),
('paystack_payment_description', 'Available Bank Account, USSD, Mobile Money, Apple Pay.'),
('pricing_description', 'Your private cloud storage software build on Laravel & Vue.js. No limits & no monthly fees. Truly freedom.'),
('pricing_title', 'Pick the <span class=\"text-theme\">Best Plan</span> For Your Needs'),
('purchase_code', 'www.pineal.cn'),
('registration', '1'),
('registration_bonus_amount', '0'),
('section_feature_boxes', '1'),
('section_features', '1'),
('section_get_started', '1'),
('section_pricing_content', '1'),
('setup_wizard_success', '1'),
('storage_limitation', '1'),
('stripe_payment_description', 'Available credit card or Apple Pay.'),
('subscription_type', 'none'),
('user_verification', '0');

-- --------------------------------------------------------

--
-- 表的结构 `shares`
--

CREATE TABLE `shares` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('file','folder') COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` enum('visitor','editor') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_in` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','pre-paid','auto-renew') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('inactive','active','cancelled','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `renews_at` timestamp NULL DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `subscription_drivers`
--

CREATE TABLE `subscription_drivers` (
  `subscription_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_subscription_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `team_folder_invitations`
--

CREATE TABLE `team_folder_invitations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inviter_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` enum('can-edit','can-view','can-view-and-download') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','accepted','waiting-for-registration','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `team_folder_members`
--

CREATE TABLE `team_folder_members` (
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `traffic`
--

CREATE TABLE `traffic` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload` bigint(20) NOT NULL DEFAULT '0',
  `download` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `traffic`
--

INSERT INTO `traffic` (`id`, `user_id`, `upload`, `download`, `created_at`, `updated_at`) VALUES
('865c5098-4052-40a8-8b76-a4eb4d5f1b71', '419d7017-1505-4f66-ac42-31f0bdda7f59', 131419838, 131274179, '2022-10-27 19:44:41', '2022-10-28 15:53:24');

-- --------------------------------------------------------

--
-- 表的结构 `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('charge','credit','withdrawal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('completed','error','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `upload_requests`
--

CREATE TABLE `upload_requests` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','filling','filled','expired') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `usages`
--

CREATE TABLE `usages` (
  `metered_feature_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(32,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `oauth_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `email_verified_at`, `oauth_provider`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
('419d7017-1505-4f66-ac42-31f0bdda7f59', 'admin', 'admin@qq.com', '2022-10-27 19:36:16', NULL, '$2y$10$8bWa0H4T29Svtv3f7UaBruw.m8c67bpTNjcyR.WYYZfP3kH8gVxzm', NULL, NULL, NULL, NULL, '2022-10-27 19:36:16', '2022-10-28 20:51:16');

-- --------------------------------------------------------

--
-- 表的结构 `user_limitations`
--

CREATE TABLE `user_limitations` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_storage_amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_team_members` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_limitations`
--

INSERT INTO `user_limitations` (`user_id`, `max_storage_amount`, `max_team_members`) VALUES
('419d7017-1505-4f66-ac42-31f0bdda7f59', '5', '5');

-- --------------------------------------------------------

--
-- 表的结构 `user_settings`
--

CREATE TABLE `user_settings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci,
  `last_name` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `postal_code` text COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `phone_number` text COLLATE utf8mb4_unicode_ci,
  `timezone` decimal(10,1) DEFAULT NULL,
  `emoji_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_mode` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `avatar`, `color`, `first_name`, `last_name`, `address`, `state`, `city`, `postal_code`, `country`, `phone_number`, `timezone`, `emoji_type`, `theme_mode`) VALUES
('75288ff4-0223-423f-bc52-8fa0390aebb6', '419d7017-1505-4f66-ac42-31f0bdda7f59', 'f18f7d46-6be5-46f3-8bc1-336a00dd661e.png', '#F1E9DA', '文霞', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'twemoji', 'light');

-- --------------------------------------------------------

--
-- 表的结构 `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `app_updates`
--
ALTER TABLE `app_updates`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `dunnings`
--
ALTER TABLE `dunnings`
  ADD KEY `dunnings_user_id_index` (`user_id`);

--
-- 表的索引 `exifs`
--
ALTER TABLE `exifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exifs_file_id_index` (`file_id`);

--
-- 表的索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `failed_payments`
--
ALTER TABLE `failed_payments`
  ADD KEY `failed_payments_id_index` (`id`),
  ADD KEY `failed_payments_user_id_index` (`user_id`);

--
-- 表的索引 `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_basename_index` (`basename`);

--
-- 表的索引 `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folders_user_id_index` (`user_id`);

--
-- 表的索引 `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- 表的索引 `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_locale_unique` (`locale`);

--
-- 表的索引 `metered_tiers`
--
ALTER TABLE `metered_tiers`
  ADD KEY `metered_tiers_metered_feature_id_index` (`metered_feature_id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pages`
--
ALTER TABLE `pages`
  ADD KEY `pages_slug_index` (`slug`);

--
-- 表的索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 表的索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 表的索引 `plans`
--
ALTER TABLE `plans`
  ADD KEY `plans_id_index` (`id`);

--
-- 表的索引 `plan_fixed_features`
--
ALTER TABLE `plan_fixed_features`
  ADD KEY `plan_fixed_features_plan_id_index` (`plan_id`);

--
-- 表的索引 `plan_metered_features`
--
ALTER TABLE `plan_metered_features`
  ADD KEY `plan_metered_features_id_index` (`id`),
  ADD KEY `plan_metered_features_plan_id_index` (`plan_id`);

--
-- 表的索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- 表的索引 `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shares_token_unique` (`token`);

--
-- 表的索引 `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD KEY `subscriptions_user_id_plan_id_status_index` (`user_id`,`plan_id`,`status`);

--
-- 表的索引 `team_folder_invitations`
--
ALTER TABLE `team_folder_invitations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `traffic`
--
ALTER TABLE `traffic`
  ADD KEY `traffic_user_id_index` (`user_id`);

--
-- 表的索引 `transactions`
--
ALTER TABLE `transactions`
  ADD KEY `transactions_id_index` (`id`),
  ADD KEY `transactions_user_id_index` (`user_id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 表的索引 `user_settings`
--
ALTER TABLE `user_settings`
  ADD KEY `user_settings_id_index` (`id`),
  ADD KEY `user_settings_user_id_index` (`user_id`);

--
-- 表的索引 `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `app_updates`
--
ALTER TABLE `app_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
