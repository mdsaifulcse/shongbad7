-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2021 at 08:39 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ustutor1_news7`
--

-- --------------------------------------------------------

--
-- Table structure for table `biggapons`
--

CREATE TABLE `biggapons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Top',
  `show_on_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Home Page',
  `active_till` datetime DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biggapons`
--

INSERT INTO `biggapons` (`id`, `image`, `target_url`, `status`, `place`, `show_on_page`, `active_till`, `serial_num`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'images/biggapon/2021/01/06/794060121084843.gif', 'http://northtech.io/', 'Active', 'Top', 'Home Page', '2021-02-01 00:00:00', 1, NULL, NULL, '2021-01-03 12:02:39', '2021-01-07 03:48:43'),
(2, 'images/biggapon/2021/01/06/533060121085509.jpeg', 'http://sangbad7.com/contact.htm', 'Active', 'Right Side', 'Home Page', '2021-02-01 00:00:00', 2, NULL, NULL, '2021-01-03 20:17:44', '2021-01-13 04:29:11'),
(3, 'images/biggapon/2021/01/06/76060121085909.gif', '#', 'Active', 'Bottom', 'Home Page', '2021-03-01 00:00:00', 4, NULL, NULL, '2021-01-03 20:32:09', '2021-01-07 03:59:09'),
(4, 'images/biggapon/2021/01/06/3060121112424.jpeg', '#', 'Active', 'Right Side', 'Home Page', '2021-03-01 00:00:00', 3, NULL, NULL, '2021-01-03 22:01:06', '2021-01-07 06:24:24'),
(5, 'images/biggapon/2021/01/06/846060121085348.gif', '#', 'Active', 'Right Side', 'Home Page', '1970-01-01 00:00:00', 5, NULL, NULL, '2021-01-04 10:01:39', '2021-01-07 03:53:48'),
(6, 'images/biggapon/2021/01/06/790060121085601.gif', '#', 'Active', 'Right Side', 'Detail Page', '1970-01-01 00:00:00', 6, NULL, NULL, '2021-01-04 10:19:57', '2021-01-07 03:56:01'),
(7, 'images/biggapon/2021/01/11/724110121114100.gif', '#', 'Active', 'Right Side', 'Other Page', '2021-01-02 00:00:00', 7, NULL, NULL, '2021-01-04 10:39:57', '2021-01-12 06:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_num` tinyint(4) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `icon_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_name_bn`, `link`, `serial_num`, `short_description`, `icon_photo`, `icon_class`, `status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cc', NULL, 'cc', 1, NULL, NULL, NULL, 'Active', 1, NULL, '2020-12-10 22:05:01', '2020-12-08 12:09:38', '2020-12-10 22:05:01'),
(2, 'আমেরিকা', NULL, 'America', 2, 'America', NULL, NULL, 'Active', 1, 1, NULL, '2020-12-10 22:04:48', '2021-01-09 08:16:36'),
(3, 'বাংলাদেশ', NULL, 'Bangladesh', 3, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-10 22:23:07', '2021-01-09 08:17:17'),
(4, 'আন্তর্জাতিক', NULL, 'International', 4, 'আন্তর্জাতিক', NULL, NULL, 'Active', 1, 2, NULL, '2020-12-13 11:37:40', '2021-01-09 08:10:20'),
(5, 'খেলাধুলা', NULL, 'sports', 8, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:38:14', '2021-01-06 09:47:10'),
(6, 'বিনোদন', NULL, 'entertainment', 9, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:45:14', '2021-01-06 09:49:23'),
(7, 'ফিচার', NULL, 'feature', 10, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:45:38', '2021-01-06 09:52:31'),
(8, 'শিক্ষা', NULL, 'education', 10, NULL, NULL, NULL, 'Other', 1, 6, NULL, '2020-12-16 19:58:31', '2021-01-08 06:17:34'),
(9, 'Campus', NULL, 'campus', 12, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-07 15:42:42', '2020-12-16 19:58:42', '2021-01-06 10:00:43'),
(10, 'স্বাস্থ্য', NULL, 'health', 13, 'health', NULL, NULL, 'Other', 1, 2, NULL, '2020-12-16 19:59:03', '2021-01-11 06:26:01'),
(11, 'আইন ও আদালত', NULL, 'law-courts', 14, NULL, NULL, NULL, 'Other', 1, 1, NULL, '2020-12-16 19:59:30', '2021-01-06 10:04:44'),
(12, 'Religion', NULL, 'religion', 15, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-06 02:51:58', '2020-12-16 19:59:53', '2021-01-06 02:51:58'),
(14, 'Mass Media', NULL, 'mass-media', 17, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-06 10:03:35', '2020-12-16 20:00:22', '2021-01-06 10:03:35'),
(15, 'নারী ও শিশু', NULL, 'women-and-children', 18, NULL, NULL, NULL, 'Other', 1, 1, NULL, '2020-12-16 20:00:43', '2021-01-06 10:03:14'),
(16, 'Trade Fair', NULL, 'trade-fair', 19, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-06 10:01:13', '2020-12-16 20:01:06', '2021-01-06 10:01:13'),
(17, 'শিল্প ও সাহিত্য', NULL, 'literature', 20, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-11 21:14:12', '2020-12-16 20:01:20', '2021-01-11 21:14:12'),
(18, 'চাকুরী', NULL, 'jobs', 21, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-11 22:03:34', '2020-12-16 20:01:37', '2021-01-11 22:03:34'),
(19, 'Eid Magazine', NULL, 'eid-magazine', 22, NULL, NULL, NULL, 'Other', 1, 1, '2021-01-06 02:57:47', '2020-12-16 20:01:56', '2021-01-06 02:57:47'),
(20, 'আজকের সংবাদ', NULL, 'today-arrangement', 23, NULL, NULL, 'fa fa-clock-o', 'Inactive', 1, 1, NULL, '2020-12-16 20:02:13', '2021-01-06 10:05:21'),
(21, 'আর্কাইভ', NULL, 'archive', 24, NULL, NULL, 'fa fa-camera-retro', 'Other', 1, 1, NULL, '2020-12-16 20:03:17', '2021-01-06 10:06:19'),
(22, 'সোসাল মিডিয়া', NULL, 'social-media', 25, NULL, NULL, 'fa fa-share-alt', 'Other', 1, 1, NULL, '2020-12-16 20:04:00', '2021-01-06 10:06:58'),
(23, 'POLITICS', NULL, 'Politics', 7, 'Kusti, lathikhela ittadi', NULL, NULL, 'Active', 1, 1, '2021-01-06 02:51:06', '2021-01-05 23:34:16', '2021-01-06 02:51:06'),
(24, 'ব্যবসা', NULL, 'business', 6, NULL, NULL, NULL, 'Active', 1, 2, NULL, '2021-01-06 02:45:38', '2021-01-11 06:01:04'),
(25, 'প্রযুক্তি', NULL, 'technology', 7, 'TECHNOLOGY', NULL, NULL, 'Active', 1, 2, NULL, '2021-01-06 02:47:09', '2021-01-11 06:01:15'),
(26, 'বিজ্ঞাপন', NULL, 'advertisement', 26, 'Advertisement Section', NULL, NULL, 'Active', 1, 2, NULL, '2021-01-06 02:49:35', '2021-01-09 08:11:07'),
(27, 'শিক্ষা', NULL, 'শিক্ষা', 27, 'শিক্ষা', NULL, NULL, 'Active', 6, 2, '2021-01-09 06:50:36', '2021-01-08 06:16:08', '2021-01-09 06:50:36'),
(28, 'সকল বিভাগ', NULL, 'সকল-বিভাগ', 28, 'সকল বিভাগ', NULL, NULL, 'Active', 6, NULL, '2021-01-08 08:28:58', '2021-01-08 06:24:59', '2021-01-08 08:28:58'),
(29, 'ক্যাম্পাস', NULL, 'ক্যাম্পাস', 28, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:40:52', '2021-01-08 08:56:17', '2021-01-09 08:40:52'),
(30, 'ধর্ম', NULL, 'ধর্ম', 29, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:41:03', '2021-01-08 08:56:29', '2021-01-09 08:41:03'),
(31, 'প্রবাস', NULL, 'প্রবাস', 30, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:41:12', '2021-01-08 08:56:36', '2021-01-09 08:41:12'),
(32, 'গণমাধ্যম', NULL, 'গণমাধ্যম', 31, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:41:23', '2021-01-08 08:56:43', '2021-01-09 08:41:23'),
(33, 'বাণিজ্য মেলা', NULL, 'বাণিজ্য-মেলা', 32, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:41:37', '2021-01-08 08:56:52', '2021-01-09 08:41:37'),
(34, 'ঈদ সংখ্যা ২০২১', NULL, 'ঈদ-সংখ্যা-২০২১', 33, NULL, NULL, NULL, 'Inactive', 6, 2, '2021-01-09 08:41:59', '2021-01-08 08:57:04', '2021-01-09 08:41:59'),
(35, 'আজকের আয়োজন', NULL, 'আজকের-আয়োজন', 34, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:41:51', '2021-01-08 08:57:13', '2021-01-09 08:41:51'),
(36, 'ইউনিকোড কনভার্টার', NULL, 'ইউনিকোড-কনভার্টার', 35, NULL, NULL, NULL, 'Other', 6, 2, '2021-01-09 08:41:44', '2021-01-08 08:57:25', '2021-01-09 08:41:44'),
(37, 'লাইফস্টাইল', NULL, 'lifestyle', 27, 'lifestyle', NULL, NULL, 'Other', 2, 2, NULL, '2021-01-11 05:08:05', '2021-01-11 05:21:43'),
(38, 'সাক্ষাৎকার', NULL, 'interview', 28, 'interview', NULL, NULL, 'Other', 2, 2, NULL, '2021-01-11 05:14:06', '2021-01-11 05:18:35'),
(39, 'প্রবাস', NULL, 'probash', 5, 'probash', NULL, NULL, 'Active', 2, 2, NULL, '2021-01-11 05:31:22', '2021-01-11 06:00:23'),
(40, 'সাহিত্য', NULL, 'shahitto', 29, 'shahitto', NULL, NULL, 'Other', 2, 2, NULL, '2021-01-11 06:03:46', '2021-01-11 06:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_bn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `serial_num` int(10) UNSIGNED DEFAULT NULL,
  `show_at_home` tinyint(3) UNSIGNED DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `district`, `district_bn`, `link`, `icon_photo`, `icon_class`, `status`, `serial_num`, `show_at_home`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ssvcvbn', NULL, 'ssvcvbn', NULL, NULL, 'Active', 1, 0, NULL, '2020-12-13 11:18:03', '2020-12-13 11:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_bn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `show_at_home` tinyint(3) UNSIGNED DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division`, `division_bn`, `link`, `icon_photo`, `icon_class`, `serial_num`, `status`, `show_at_home`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Alabama1', NULL, 'alabama1', 'images/divisions//2020/12/13/download-113-12-202017-20-09.png', NULL, 5, 'Active', 0, '2021-01-08 04:54:59', '2020-12-13 11:11:10', '2021-01-08 04:54:59'),
(2, 'Alaska', NULL, 'alaska', NULL, NULL, 2, 'Active', 0, '2021-01-08 04:55:18', '2020-12-13 11:19:32', '2021-01-08 04:55:18'),
(3, 'American Samoa', NULL, 'american-samoa', NULL, NULL, 3, 'Active', 0, '2021-01-08 04:55:06', '2020-12-13 11:19:50', '2021-01-08 04:55:06'),
(4, 'Arizona', NULL, 'arizona', NULL, NULL, 6, 'Active', 0, '2021-01-08 04:55:13', '2020-12-13 11:23:33', '2021-01-08 04:55:13'),
(5, 'Arkansas', NULL, 'arkansas', NULL, NULL, 7, 'Active', 0, '2021-01-08 04:55:23', '2020-12-13 11:23:40', '2021-01-08 04:55:23'),
(6, 'California', NULL, 'california', NULL, NULL, 8, 'Active', 0, '2021-01-08 04:55:40', '2020-12-13 11:23:50', '2021-01-08 04:55:40'),
(7, 'Colorado', NULL, 'colorado', NULL, NULL, 9, 'Active', 0, '2021-01-08 04:55:35', '2020-12-13 11:23:59', '2021-01-08 04:55:35'),
(8, 'Connecticut', NULL, 'connecticut', NULL, NULL, 10, 'Active', 0, '2021-01-08 04:55:45', '2020-12-13 11:24:08', '2021-01-08 04:55:45'),
(9, 'Delaware', NULL, 'delaware', NULL, NULL, 11, 'Active', 0, '2021-01-08 04:55:51', '2020-12-13 11:24:25', '2021-01-08 04:55:51'),
(10, 'District Of Columbia', NULL, 'district-of-columbia', NULL, NULL, 12, 'Active', 0, '2021-01-08 04:55:57', '2020-12-13 11:24:33', '2021-01-08 04:55:57'),
(11, 'Federated States Of Micronesia', NULL, 'federated-states-of-micronesia', NULL, NULL, 13, 'Active', 0, '2021-01-08 04:56:24', '2020-12-13 11:24:41', '2021-01-08 04:56:24'),
(12, 'ইউরোপ', NULL, 'ইউরোপ', NULL, NULL, 33, 'Active', 0, NULL, '2020-12-13 11:24:53', '2021-01-08 09:07:55'),
(13, 'Georgia', NULL, 'georgia', NULL, NULL, 15, 'Active', 0, '2021-01-08 04:56:36', '2020-12-13 11:25:00', '2021-01-08 04:56:36'),
(14, 'Guam', NULL, 'guam', NULL, NULL, 16, 'Active', 0, '2021-01-08 04:56:41', '2020-12-13 11:25:11', '2021-01-08 04:56:41'),
(15, 'Hawaii', NULL, 'hawaii', NULL, NULL, 17, 'Active', 0, '2021-01-08 04:56:48', '2020-12-13 11:25:18', '2021-01-08 04:56:48'),
(16, 'Idaho', NULL, 'idaho', NULL, NULL, 18, 'Active', 0, '2021-01-08 04:54:46', '2020-12-13 11:25:26', '2021-01-08 04:54:46'),
(17, 'Illinois', NULL, 'illinois', NULL, NULL, 19, 'Active', 0, '2021-01-08 04:54:53', '2020-12-13 11:25:33', '2021-01-08 04:54:53'),
(18, 'Indiana', NULL, 'indiana', NULL, NULL, 20, 'Active', 0, '2021-01-08 04:54:41', '2020-12-13 11:25:40', '2021-01-08 04:54:41'),
(19, 'sfs', NULL, 'sfs', NULL, NULL, 21, 'Active', 0, '2020-12-13 11:44:07', '2020-12-13 11:44:01', '2020-12-13 11:44:07'),
(20, 'Iowa', NULL, 'iowa', NULL, NULL, 21, 'Active', 0, '2021-01-08 04:54:31', '2020-12-13 11:44:33', '2021-01-08 04:54:31'),
(21, 'Kansas', NULL, 'kansas', NULL, NULL, 22, 'Active', 0, '2021-01-08 04:54:23', '2020-12-13 11:44:41', '2021-01-08 04:54:23'),
(22, 'আমেরিকা', NULL, 'আমেরিকা', NULL, NULL, 32, 'Active', 0, NULL, '2021-01-08 04:54:15', '2021-01-08 09:07:39'),
(23, 'বাংলাদেশ', NULL, 'বাংলাদেশ', NULL, NULL, 28, 'Active', 0, NULL, '2021-01-08 04:57:58', '2021-01-08 09:06:29'),
(24, 'যুক্তরাজ্য', NULL, 'যুক্তরাজ্য', NULL, NULL, 31, 'Active', 0, NULL, '2021-01-08 04:58:20', '2021-01-08 09:07:25'),
(25, 'কানাডা', NULL, 'কানাডা', NULL, NULL, 30, 'Active', 0, NULL, '2021-01-08 04:58:44', '2021-01-08 09:06:55'),
(26, 'ভারত', NULL, 'ভারত', NULL, NULL, 29, 'Active', 0, NULL, '2021-01-08 04:58:55', '2021-01-08 09:06:45'),
(27, 'মধ্যপ্রাচ্য', NULL, 'মধ্যপ্রাচ্য', NULL, NULL, 35, 'Active', 0, NULL, '2021-01-08 09:09:01', '2021-01-08 09:09:52');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Menu for admin',
  `open_new_tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Open New Tab',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `name_bn`, `url`, `icon_class`, `icon`, `big_icon`, `serial_num`, `status`, `slug`, `menu_for`, `open_new_tab`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Acl', NULL, 'javascript:;', 'fa fa-home', NULL, NULL, 2, 'Active', '[\"role-delete\",\"role-edit\",\"role-create\",\"role-list\"]', 'Menu for admin', 'No Open New Tab', NULL, NULL, '2020-12-30 10:39:29'),
(2, 'Setting', NULL, 'javascript:;', 'fa fa-home', NULL, NULL, 2, 'Active', '[\"setting\"]', 'Menu for admin', 'No Open New Tab', NULL, NULL, '2020-12-30 11:02:49'),
(9, 'Visit Site', NULL, '/', NULL, NULL, NULL, 0, 'Active', '[\"setting\"]', 'Menu for admin', 'Open New Tab', NULL, '2020-12-16 20:05:34', '2020-12-16 20:07:08'),
(10, 'All News', NULL, 'admin/news', NULL, NULL, NULL, 1, 'Active', '[\"news-delete\",\"news-edit\",\"news-create\",\"news-list\"]', 'Menu for admin', 'No Open New Tab', NULL, '2020-12-20 10:19:58', '2020-12-25 06:14:19'),
(11, 'Users', NULL, 'admin/users', NULL, NULL, NULL, 3, 'Active', '[\"user-delete\",\"user-edit\",\"user-create\",\"user-list\"]', 'Menu for admin', 'No Open New Tab', NULL, '2020-12-26 13:41:07', '2020-12-26 13:41:07'),
(12, 'Advertisment', NULL, 'admin/biggapons', NULL, NULL, NULL, 4, 'Active', '[\"ads-delete\",\"ads-edit\",\"ads-create\",\"ads-list\"]', 'Menu for admin', 'No Open New Tab', NULL, '2021-01-05 23:58:37', '2021-01-05 23:58:37');

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
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_resets_table', 1),
(43, '2019_08_19_000000_create_failed_jobs_table', 1),
(44, '2020_11_11_025205_create_permission_tables', 1),
(46, '2020_11_24_022623_create_menus_table', 1),
(47, '2020_11_24_031938_create_sub_menus_table', 1),
(48, '2020_11_24_032345_create_sub_sub_menus_table', 1),
(49, '2020_11_30_015126_create_categories_table', 1),
(50, '2020_11_30_015745_create_sub_categories_table', 1),
(51, '2020_11_30_022500_create_divisions_table', 1),
(52, '2020_12_01_150515_create_districts_table', 1),
(53, '2020_12_02_023721_create_sliders_table', 1),
(54, '2020_12_02_023846_create_social_icons_table', 1),
(55, '2020_12_03_020139_create_testimonials_table', 1),
(56, '2020_12_03_171100_create_settings_table', 1),
(57, '2020_12_03_175207_create_faqs_table', 1),
(58, '2020_12_03_175441_create_our_clients_table', 1),
(59, '2020_12_08_012756_create_pages_table', 1),
(60, '2020_12_08_012845_create_page_photos_table', 1),
(61, '2020_11_11_030319_create_user_profiles_table', 2),
(62, '2020_12_10_040713_create_news_table', 2),
(63, '2020_12_10_163610_create_most_read_news_table', 2),
(64, '2020_12_10_163651_create_news_detail_photos_table', 2),
(65, '2020_12_29_175354_create_views_table', 3),
(66, '2021_01_03_152157_create_biggapons_table', 4),
(68, '2021_01_06_174011_create_visitor_tracks_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(19, 'App\\Models\\User', 3),
(20, 'App\\Models\\User', 3),
(19, 'App\\Models\\User', 4),
(22, 'App\\Models\\User', 4),
(9, 'App\\Models\\User', 5),
(19, 'App\\Models\\User', 7),
(20, 'App\\Models\\User', 7),
(22, 'App\\Models\\User', 7),
(23, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `most_read_news`
--

CREATE TABLE `most_read_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `read_number` tinyint(4) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `most_read_news`
--

INSERT INTO `most_read_news` (`id`, `news_id`, `read_number`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 10, 29, 5, '2020-12-21 12:33:37', '2021-01-09 02:56:27'),
(2, 7, 13, 5, '2020-12-21 12:36:07', '2021-01-09 02:56:00'),
(3, 9, 3, 5, '2020-12-21 20:14:54', '2021-01-06 17:33:58'),
(4, 8, 7, 5, '2020-12-21 20:16:39', '2021-01-06 17:34:20'),
(5, 6, 11, 2, '2020-12-21 20:36:01', '2021-01-07 22:48:15'),
(6, 11, 52, 2, '2020-12-22 11:36:51', '2021-01-07 15:30:58'),
(7, 5, 7, 2, '2020-12-22 12:42:23', '2021-01-12 01:03:09'),
(8, 2, 10, 5, '2020-12-23 14:33:08', '2021-01-07 22:45:22'),
(9, 12, 4, 8, '2021-01-06 01:31:24', '2021-01-06 01:51:56'),
(10, 15, 10, 3, '2021-01-07 03:56:09', '2021-01-08 04:37:15'),
(11, 14, 14, 11, '2021-01-07 08:47:12', '2021-01-10 18:01:38'),
(12, 16, 120, 2, '2021-01-07 12:00:45', '2021-01-09 04:40:20'),
(13, 17, 11, 2, '2021-01-08 05:37:01', '2021-01-08 06:09:23'),
(14, 20, 2, 5, '2021-01-08 19:24:27', '2021-01-08 20:14:09'),
(15, 25, 2, 6, '2021-01-09 03:03:46', '2021-01-09 03:05:59'),
(16, 28, 3, 25, '2021-01-09 07:10:57', '2021-01-09 08:56:00'),
(17, 36, 1, 26, '2021-01-09 15:52:42', '2021-01-09 15:52:42'),
(18, 34, 1, 26, '2021-01-09 16:44:08', '2021-01-09 16:44:08'),
(19, 23, 1, 2, '2021-01-09 18:53:25', '2021-01-09 18:53:25'),
(20, 44, 2, 6, '2021-01-09 18:53:46', '2021-01-09 18:54:04'),
(21, 27, 1, 6, '2021-01-10 08:35:39', '2021-01-10 08:35:39'),
(22, 45, 3, 8, '2021-01-10 17:39:49', '2021-01-11 04:18:26'),
(23, 22, 1, 3, '2021-01-10 17:40:14', '2021-01-10 17:40:14'),
(24, 47, 10, 3, '2021-01-10 18:00:53', '2021-01-11 04:43:18'),
(25, 46, 2, 7, '2021-01-10 18:21:20', '2021-01-11 04:48:28'),
(26, 53, 15, 38, '2021-01-11 09:54:04', '2021-01-11 21:33:17'),
(27, 55, 4, 10, '2021-01-11 18:02:42', '2021-01-12 16:48:30'),
(28, 4, 3, 8, '2021-01-11 18:21:00', '2021-01-12 01:02:35'),
(29, 57, 2, 3, '2021-01-11 21:04:08', '2021-01-12 05:52:11'),
(30, 60, 4, 40, '2021-01-11 21:04:18', '2021-01-12 07:06:20'),
(31, 54, 3, 40, '2021-01-11 21:15:46', '2021-01-11 21:23:27'),
(32, 40, 3, 37, '2021-01-11 21:34:02', '2021-01-11 21:46:04'),
(33, 26, 2, 6, '2021-01-11 21:55:03', '2021-01-11 22:01:04'),
(34, 64, 6, 40, '2021-01-12 07:09:23', '2021-01-12 22:02:59'),
(35, 72, 2, 38, '2021-01-12 22:05:08', '2021-01-12 22:05:58'),
(36, 59, 2, 25, '2021-01-13 01:34:49', '2021-01-13 01:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpublished',
  `published_date` datetime DEFAULT NULL,
  `is_cover_news` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `show_at_homepage` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `news_author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial_num` tinyint(4) DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `feature_photo`, `feature_medium`, `feature_small`, `photo_caption`, `meta_description`, `description`, `topic`, `video_url`, `published_status`, `published_date`, `is_cover_news`, `show_at_homepage`, `category_id`, `sub_cat_id`, `division_id`, `district_id`, `news_author_id`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'অর্থপাচার : অ্যাটর্নি জেনারেলের সঙ্গে সংশ্লিষ্ট সংস্থার বৈঠক', 'images/news/big/2020/12/14/download-114-12-202016-25-10.png', 'images/news/medium/2020/12/14/download-114-12-202016-25-10.png', 'images/news/small/2020/12/14/download-114-12-202016-25-10.png', NULL, NULL, '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">কানাডার &lsquo;বেগমপাড়া&rsquo;সহ বিশ্বের বিভিন্ন দেশে বাংলাদেশ থেকে পাচার হওয়া অর্থ ফেরাতে কী ধরনের পদক্ষেপ গ্রহণ করা হয়েছে- সে বিষয়ে হাইকোর্টের নির্দেশনার আলোকে রাষ্ট্রের প্রধান আইন কর্মকর্তার (অ্যাটর্নি জেনারেল) সঙ্গে বৈঠক করেছে সরকারের সংশ্লিষ্ট সংস্থা।</span></p>', '', 'https://www.jagonews24.com/law-courts/news/629610', 'Published', '2020-12-14 16:25:10', 'Yes', 'Yes', 2, 1, 2, NULL, 3, 1, 1, NULL, '2020-12-14 13:12:00', '2020-12-14 10:25:10', '2020-12-14 13:12:00'),
(2, 'প্যাট কামিন্সের দাবি শুনলে ভয়ে কাঁপতে থাকবে ভারতীয়রা', 'images/news/big//2020/12/20/pat-20-12-202016-42-09.webp', 'images/news/medium/2020/12/20/pat-20-12-202016-42-09.webp', 'images/news/small/2020/12/20/pat-20-12-202016-42-09.webp', NULL, 'প্যাট কামিন্স আর জস হ্যাজলউডের আগুন মাখানো বিষাক্ত বোলিংয়েই শেষ হয়ে গিয়েছিল ভারতীদের গর্ব, তাদের বিখ্যাত ব্যাটিং লাইনআপ। প্যাট কামিন্স নিয়েছিলেন ৪ উইকেট এবং জস হ্যাজলউড নিয়েছিলেন ৫ উইকেট। তাতেই মাত্র ৩৬ রানে শেষ ভারতীয় ব্যাটিং।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সামনেই বক্সিং ডে টেস্ট। ২৬ ডিসেম্বর মেলবোর্ন ক্রিকেট গ্রাউন্ডে (এমসিজি) শুরু হবে সিরিজের দ্বিতীয় টেস্ট। এমনিতে ওই টেস্টে ভারতীয় দলে নেই বিরাট কোহলির মত ব্যাটসম্যান এবং অধিনায়ক। তার সঙ্গে কব্জির ইনজুরিতে পড়ে ছিটকে গেলেন পেসার মোহাম্মদ শামি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">যে কারণে ভারত এমনিতেই খর্ব শক্তিতে পরিণত হয়েছে। তারওপর, মেলবোর্ন টেস্ট নিয়ে অসি পেসার প্যাট কামিন্স যে দাবি তুলেছেন, সেটা শুনলে তো ভারতীয়দের হাঁটু কাঁপতে শুরু করবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">অ্যাডিলেডের দ্বিতীয় ইনিংসে ৪ উইকেট নেয়া কামিন্স চান মেলবোর্নে বক্সিং ডে টেস্টে গতিময় বাউন্সযুক্ত উইকেট তৈরি করা হোক। আর কে না জানে, অ্যাডিলেডে সেই গতির আগুনে পুড়ে ছাই হয়েছেন ভারতীয় ব্যাটসম্যানরা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শনিবার অ্যাডিলেড ওভালে গোলাপি বলে দিবারাত্রির টেস্টে নাইটওয়াচম্যান যশপ্রিত বুমরা এবং চেতেশ্বর পূজারাকে ফিরিয়ে তিনিই ভাঙন ধরিয়েছিলেন। এরপর ৫ উইকেট নিয়ে ভারতকে পুরোপুরি ধ্বসে দিয়েছেন জশ হ্যাজলউড। ২১ রানের বিনিময়ে কামিন্স নেন ৪ উইকেট। তার শিকারের মধ্যে ছিলেন ভারত অধিনায়ক বিরাট কোহলিও।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্যাট কামিন্সের আশা, অ্যাডিলেডের মতো মেলবোর্ন ক্রিকেট স্টেডিয়ামে সহায়তা মজুত থাকবে পেস বোলারদের জন্য। তিনি বলেছেন, &lsquo;আমার মনে হয় ২০১৭ সালের অ্যাশেজ টেস্ট ও দু&rsquo;বছর আগে ভারতের বিরুদ্ধে টেস্টে মেলবোর্নের উইকেট রীতিমতো পাটা ছিল। একজন বোলারের উৎসাহিত হওয়ার মতো কিছু ছিল না। গত বছর নিউজিল্যান্ডের বিরুদ্ধে অবশ্য ভাল উইকেটে খেলা হয়েছিল। যাতে মুভমেন্টের পাশাপাশি গতি-বাউন্সও ছিল। আশা করা যায় যে এবারও তেমন থাকবে।&rsquo;</p>', 'Indian Cricket,Austrialia Cricket', NULL, 'Published', '2020-12-20 16:42:09', 'Yes', 'No', 5, 4, 26, NULL, 4, 1, 1, NULL, '2021-01-09 03:33:25', '2020-12-14 11:29:14', '2021-01-09 03:33:25'),
(3, 'মাশরাফির ক্যারিয়ার সেরা বোলিং', 'images/news/big//2020/12/21/maswebp-21-12-202001-58-03.webp', 'images/news/medium/2020/12/21/maswebp-21-12-202001-58-03.webp', 'images/news/small/2020/12/21/maswebp-21-12-202001-58-03.webp', NULL, 'একেই হয়তো নিয়তি বলে! ফিটনেসজনিত কারণে প্রথমে টুর্নামেন্টে খেলারই কথা ছিল না তার, রাখা হয়নি প্লেয়ার্স ড্রাফটে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;তবে পরের পরিস্থিতি মাথায় রেখে বিশেষ বিবেচনায় খেলানোর সুযোগটা রাখা হয়েছিল। সেটি কাজে লাগিয়ে ফিটনেস পরীক্ষা দিয়ে লটারির মাধ্যমে পেয়েছেন জেমকন খুলনার হয়ে খেলার সুযোগ। কিন্তু প্রশ্ন থেকেই গিয়েছিল, এমন হুট করে মাঠে নেমে কেমন করবেন মাশরাফি?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ প্রশ্নের উত্তর দিতে তিন ম্যাচ সময় নিলেন মাশরাফি। প্রথম দুই ম্যাচে করেছেন চলনসই বোলিং। তবে মূল জাদুটা দেখালেন টুর্নামেন্টের অপ্রতিরোধ্য দল গাজী গ্রুপ চট্টগ্রামের বিপক্ষে কোয়ালিফায়ারের মতো গুরুত্বপূর্ণ ম্যাচে। তার বোলিং জাদুতে কোয়ালিফায়ার ম্যাচটি জিতে সোজা ফাইনালে চলে গেছে খুলনা, ক্যারিয়ার সেরা বোলিংয়ে মাশরাফি নিয়েছেন ৩৫ রানে ৫টি উইকেট। স্বাভাবিকভাবেই জিতেছেন ম্যাচসেরার পুরস্কার।</p>', 'Cricket,মাশরাফি-মর্তুজা,বাংলাদেশ-ক্রিকেট,মাশরাফির', NULL, 'Unpublished', '2020-12-21 01:58:03', 'Yes', 'Yes', 5, 4, 23, NULL, 3, 1, 1, NULL, NULL, '2020-12-14 11:41:34', '2021-01-13 03:09:03'),
(4, 'ঢাবি শিক্ষক সমিতি নির্বাচনে বিনা প্রতিদ্বন্দ্বিতায় জয়ী নীল দল', 'images/news/big//2020/12/20/dhaka-university20-12-202016-32-18.jpg', 'images/news/medium/2020/12/20/dhaka-university20-12-202016-32-18.jpg', 'images/news/small/2020/12/20/dhaka-university20-12-202016-32-18.jpg', NULL, 'করোনা পরিস্থিতির কারণে ঢাকা বিশ্ববিদ্যালয় (ঢাবি) শিক্ষক সমিতির নির্বাচনে বিএনপি-জামায়াতপন্থী শিক্ষকদের সংগঠন সাদা দল অংশগ্রহণ না করায় বিনা', '<p>করোনা পরিস্থিতির কারণে ঢাকা বিশ্ববিদ্যালয় (ঢাবি) শিক্ষক সমিতির নির্বাচনে বিএনপি-জামায়াতপন্থী শিক্ষকদের সংগঠন সাদা দল অংশগ্রহণ না করায় বিনা প্রতিদ্বন্দ্বিতায় আওয়ামী লীগপন্থী শিক্ষকদের সংগঠন নীল দল জয়ী হয়েছে। রোববার (২০ ডিসেম্বর) রাত আটটায় ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতি নির্বাচনের প্রধান নির্বাচন কমিশনার অধ্যাপক ড. জাকির হোসেন ভূঁইয়া নীল দলের প্রার্থীদের বিনা প্রতিদ্বন্দ্বিতায় জয়ী ঘোষণা করেন। সভাপতি পদে অধ্যাপক ড. মো. রহমত উল্লাহ, সহ-সভাপতি পদে অধ্যাপক ড. সাবিতা রেজওয়ানা চৌধুরী, কোষাধ্যক্ষ পদে অধ্যাপক ড. মো. আকরাম হোসেন, সাধারণ সম্পাদক পদে অধ্যাপক ড. নিজামুল হক ভূইঁয়া এবং যুগ্ম-সম্পাদক পদে অধ্যাপক ড. মো. আব্দুর রহিম জয়ী হয়েছেন। এছাড়া ১০টি সদস্য পদে অধ্যাপক ড. জিয়া রহমান, অধ্যাপক ড. সাদেকা হালিম, অধ্যাপক ড. এজেএম শফিউল আলম ভুইয়া, অধ্যাপক ড. ইসতিয়াক মঈন সৈয়দ, অধ্যাপক ড. সাইফুল ইসলাম, অধ্যাপক ড. আমজাদ আলী, অধ্যাপক ড. চন্দ্রনাথ পোদ্দার, অধ্যাপক ড. আবু সারা শামসুর রউফ, অধ্যাপক ড. মুহাম্মদ আব্দুল মঈন এবং অধ্যাপক ড. নিসার হোসেন জয়ী হয়েছেন। শিক্ষক সমিতির নির্বাচন ৩০ ডিসেম্বর অনুষ্ঠিত হওয়ার কথা ছিল। কিন্তু ১৫ টি পদে আর কেউ প্রার্থীতা না করায় নীল দল বিনা প্রতিদ্বন্দ্বিতায় জয়ী হয়। তবে নির্বাচনের আনুষ্ঠানিক ফলাফল সোমবার (২১ ডিসেম্বর) বিকেল ৪ টায় ঘোষণা করা হবে।</p>', 'শিক্ষা,বিশ্ববিদ্যালয়', NULL, 'Published', '2020-12-20 16:53:29', 'Yes', 'Yes', 8, NULL, 23, NULL, 3, 1, 1, NULL, NULL, '2020-12-14 13:46:05', '2021-01-13 03:19:00'),
(5, 'ইসির বিরুদ্ধে রাষ্ট্রপতিকে চিঠি : মুখে কুলুপ এঁটেছেন সিইসি', 'images/news/big//2020/12/20/cec-20-12-202016-46-21.webp', 'images/news/medium/2020/12/20/cec-20-12-202016-46-21.webp', 'images/news/small/2020/12/20/cec-20-12-202016-46-21.webp', 'ইসির বিরুদ্ধে রাষ্ট্রপতিকে চিঠি : মুখে কুলুপ এঁটেছেন সিইসি Caption', 'বিভিন্ন অভিযোগে নির্বাচন কমিশনের (ইসি) বিরুদ্ধে ব্যবস্থা নিতে রাষ্ট্রপতিকে চিঠি দিয়েছেন দেশের ৪২ বিশিষ্ট নাগরিক। এ নিয়ে নানা ধরনের আলোচনা-সমালোচনা হলেও চিঠির বিষয়ে কোনো ধরনের মন্তব্য করছেন না প্রধান নির্বাচন কমিশনার (সিইসি) কে এম নূরুল হুদা।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ ঘটনা প্রকাশ্যে আসার পর রোববার (২০ ডিসেম্বর) আগারগাঁওয়ের নির্বাচন ভবনের নিজ কার্যালয়ে অফিস করেছেন সিইসি। তবে সাংবাদিকরা সকাল থেকে সন্ধ্যা পর্যন্ত চেষ্টা করেও তার কাছ থেকে এ বিষয়ে কোনো বক্তব্য নিতে পারেননি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রোববার দুপুরে সিইসির সঙ্গে গণমাধ্যমকর্মীরা কথা বলার চেষ্টা করে ব্যর্থ হন। এরপর বিকেল ৩টার দিকে নির্বাচন কমিশনার ব্রিগেডিয়ার জেনারেল (অব.) শাহাদাত হোসেন চৌধুরী সাংবাদিকদের সঙ্গে কথা বলেন। তিনি বলেন, &lsquo;এটা হয়তো উদ্দেশ্যপ্রণোদিত&nbsp;এবং এগুলোর কোনোটার ভিত্তি আছে বলে আমি মনে করি না। এরকম একটা বিষয় উপস্থাপন করা সুধীজনদের জন্য বিবেচনাপ্রসূত নয়।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তবে সেই বক্তব্য ছিল এই কমিশনারের &lsquo;নিজস্ব মতামত&rsquo;। সে কারণে কমিশনের পক্ষ থেকে সিইসির বক্তব্য নিতে গণমাধ্যমকর্মীরা অপেক্ষা করতে থাকেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সন্ধ্যায় অফিস শেষ করে সিইসি চলে যাওয়ার সময় বিভিন্ন গণমাধ্যমের সংবাদকর্মীরা এ বিষয়ে জানতে চাইলে তিনি কোনো ধরনের মন্তব্য করা থেকে বিরত থাকেন। ইসির পক্ষ থেকে এ বিষয়ে অন্যকোনো নির্বাচন কমিশনারও কথা বলছেন না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইসির বিরুদ্ধে অভিযোগের বিষয়ে সুশাসনের জন্য নাগরিকের (সুজন) সম্পাদক বদিউল আলম মজুমদার বলেছেন, &lsquo;৪২ জন বিশিষ্ট নাগরিক ইসির বিরুদ্ধে ব্যবস্থা নেয়ার জন্য রাষ্ট্রপতিকে চিঠি দিয়েছি। গত ১৪ ডিসেম্বর এই চিঠি দিয়েছি। ইসির বিরুদ্ধে আর্থিক অনিয়ম, দুর্নীতি, নির্বাচনে কারচুপি-জালিয়াতিসহ বেশকিছু অভিযোগ আনা হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাংলাদেশ সুপ্রিম কোর্টের আইনজীবী ড. শাহদীন মালিক এক বিজ্ঞপ্তিতে জানিয়েছিলেন, &lsquo;কে এম নূরুল হুদার নেতৃত্বে গঠিত বর্তমান নির্বাচন কমিশনের বিরুদ্ধে গুরুতর আর্থিক অনিয়ম, দুর্নীতি ও অর্থ সংশ্লিষ্ট অসদাচারণ এবং নির্বাচন সংক্রান্ত অনেকগুলো গুরুতর অসদাচরণের অভিযোগে বাংলাদেশের সংবিধানের ৯৬ অনুচ্ছেদের অধীনে সুপ্রীম জুডিসিয়াল কাউন্সিল গঠন করে তদন্ত করার জন্য বাংলাদেশের ৪২ জন বিশিষ্ট নাগরিকের পক্ষ থেকে ১৪ ডিসেম্বর রাষ্ট্রপতির কাছে একটি আবেদন দাখিল করা হয়।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চিঠি দেয়া বিশিষ্ট নাগরিকদের মধ্যে রয়েছেন অধ্যাপক সিরাজুল ইসলাম চৌধুরী, এম হাফিজউদ্দিন খান, ড. আকবর আলী খান, সুলতানা কামাল, আলী ইমাম মজুমদার, ড. হামিদা হোসেন, অধ্যাপক মইনুল ইসলাম, খুশী কবির, ড. বদিউল আলম মজুমদার, ড. ইফতেখারুজ্জামান, ড. শহিদুল আলম, সৈয়দা রেজওয়ানা হাসান, অধ্যাপক আনু মুহাম্মদ, ড. সি আর আবরার, অধ্যাপক আসিফ নজরুল, ব্যারিস্টার জ্যোতির্ময় বড়ুয়া প্রমুখ।</p>', 'নির্বাচন', NULL, 'Published', '2020-12-21 16:45:32', 'Yes', 'No', 3, 22, 23, NULL, 4, 1, 1, NULL, NULL, '2020-12-20 10:46:21', '2021-01-13 03:19:49'),
(6, 'ময়মনসিংহে ট্রাকচাপায় অটোরিকশার তিন যাত্রী নিহত', 'images/news/big//2020/12/20/rojpg20-12-202016-49-49.jpg', 'images/news/medium/2020/12/20/rojpg20-12-202016-49-49.jpg', 'images/news/small/2020/12/20/rojpg20-12-202016-49-49.jpg', 'ময়মনসিংহে ট্রাকচাপায় অটোরিকশার তিন যাত্রী নিহত Caption', 'ময়মনসিংহের গৌরীপুরে ট্রাকচাপায় সিএনজিচালিত অটোরিকশার তিন যাত্রী নিহত হয়েছেন। রোববার (২০ ডিসেম্বর) রাত সোয়া ৯টার দিকে এ ঘটনা ঘটে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গৌরীপুর থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) বোরহান উদ্দিন জাগো নিউজকে বিষয়টি নিশ্চিত করেছেন।</p>', 'Accident', NULL, 'Published', '2020-12-20 16:49:49', 'No', 'Yes', 2, 1, 21, NULL, 3, 1, 1, NULL, '2021-01-09 03:33:34', '2020-12-20 10:49:49', '2021-01-09 03:33:34'),
(7, 'ফিফার সর্বশেষ নিয়মে হবে ঘরোয়া ফুটবল', 'images/news/big//2020/12/21/sa1-21-12-202017-53-28.webp', 'images/news/medium/2020/12/21/sa1-21-12-202017-53-29.webp', 'images/news/small/2020/12/21/sa1-21-12-202017-53-29.webp', NULL, 'করোনাভাইরাসের কারণে ফুটবল ম্যাচের নিয়মে বেশ কিছু পরিবর্তন এনেছে ফিফা। এর মধ্যে উল্লেখযোগ্য হচ্ছে-খেলোয়াড় বদল। আগে ম্যাচে সর্বাধিক ৩ জন খেলোয়াড়', '<p>&nbsp;পরিবর্তন করা যেতো। এখন সেটা বাড়িয়ে করা হয়েছে ৫ জন। নাকআউট ম্যাচে খেলা অতিরিক্ত সময়ে গড়ালে আরও একজন অর্থাৎ ৬ জন খেলোয়াড় পরিবর্তন করা যাবে। ফেডারেশন কাপ দিয়ে এই নতুন নিয়ম শুরু হচ্ছে বাংলাদেশের ঘরোয়া ফুটবলে। একটি দল ৫ জন খেলোয়াড় পরিবর্তন করতে পারবে ৯০ মিনিটের ম্যাচে। তবে এর জন্য যাতে সময় নষ্ট না হয়, তাই ৫ খেলোয়াড় বদল করতে হবে ৩ বারে। ৫ জন ভিন্ন সময়ে বদল করা যাবে না। অতিরিক্ত সময়ে ষষ্ঠ খেলোয়াড় বদল করা যাবে। ছেলেদের খেলায় নিয়মটা চালু হচ্ছে ফেডারেশন কাপ দিয়ে। তবে এর আগে মেয়েদের লিগে ফিফার নতুন নিয়ম অনুসারে ৫ খেলোয়াড় বদলের সুযোগ ছিল।</p>', 'বাংলাদেশ-ফুটবল', NULL, 'Published', '2020-12-21 17:53:28', 'Yes', 'Yes', 5, 5, 23, NULL, 4, 1, 1, NULL, NULL, '2020-12-21 11:53:29', '2021-01-13 03:23:13'),
(8, 'ওয়েস্ট ইন্ডিজের বিপক্ষে দল সাজাতে গিয়ে বিপাকে নির্বাচকরা', 'images/news/big//2020/12/21/bd-20201221203022-21-12-202017-55-47.webp', 'images/news/medium/2020/12/21/bd-20201221203022-21-12-202017-55-47.webp', 'images/news/small/2020/12/21/bd-20201221203022-21-12-202017-55-48.webp', NULL, 'আগেই জানা, ওয়েস্ট ইন্ডিজের বিপক্ষে বাংলাদেশের টেস্ট স্কোয়াডে একদম নতুন কারও অন্তর্ভুক্তির সম্ভাবনা খুব কম। তার মানে আগামী ৩ ফেব্রুয়ারি থেকে ক্যারিবীয়দের বিপক্ষে যে দুই ম্যাচের টেস্ট সিরিজ শুরু হচ্ছে, তাতে পুরনো ও পরীক্ষিত পারফরমার নিয়েই সাজানো হবে স্বাগতিকদের দল।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তবে প্রধান নির্বাচক মিনহাজুল আবেদিন নান্নুর কথায় আভাস মিলছে, ওয়ানডে সিরিজে ঠিকই দুই-একজন নবীণ সম্ভাবনাময় তরুণ ঢুকে পড়তে পারেন। এটুকু শুনে মনে হচ্ছিল, এবার ক্যারিবীয়দের বিপক্ষে হোম সিরিজে টাইগারদের দল সাজানোর কাজটা বেশ সহজ হবে নির্বাচকদের।</p>', 'বাংলাদেশ-ক্রিকেট', NULL, 'Published', '2020-12-21 17:55:47', 'No', 'Yes', 5, 4, 23, NULL, 4, 1, 1, NULL, NULL, '2020-12-21 11:55:48', '2021-01-13 03:23:33'),
(9, 'টি-টেন লিগে এখনও আইকন শহিদ আফ্রিদি', 'images/news/big//2020/12/21/152108-21-12-202017-59-05.webp', 'images/news/medium/2020/12/21/152108-21-12-202017-59-05.webp', 'images/news/small/2020/12/21/152108-21-12-202017-59-05.webp', NULL, 'বয়স ৪১ ছুঁই ছুঁই। কিন্তু এখনও যেন তারুণ্য শেষ হচ্ছে না পাকিস্তানের বুমবুম খ্যাত শহিদ আফ্রিদির। জাতীয় দল থেকে অনেক আগেই অবসরে চলে গেছেন তিনি।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;কিন্তু এখনও ফ্রাঞ্চাইজি ক্রিকেট খেলে যাচ্ছেন পাকিস্তানের সাবেক অধিনায়ক। সম্প্রতি তিনি খেলেছেন শ্রীলঙ্কার এলপিএলেও। যদিও ব্যক্তিগত কারণে পুরো টুর্নামেন্ট খেলতে পারেননি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এবার আরব আমিরাতের আবুধাবিতে অনুষ্ঠিতব্য টি-টেন লিগের আগামী আসরের জন্য আইকন খেলোয়াড় হিসেবে রাখা হয়েছে আফ্রিদিকে এবং পাকিস্তানের ফ্রাঞ্চাইজি লাহোর কালান্দার্সের হয়ে খেলার ব্যাপারে চুক্তিবদ্ধ হয়েছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আগামী বছর জানুয়ারির ২৮ তারিখ শুরু হবে টি-টেন লিগ। শেষ হবে ৬ ফেব্রুয়ারি। আবুধাবির শেখ জায়েদ স্টেডিয়ামে অনুষ্ঠিত হবে টুর্নামেন্টের সবগুলো ম্যাচ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">লাহোর কালান্দার্সের প্রধান নির্বাহী সামিন রানা বলেন, &lsquo;শহিদ আফ্রিদি একজন অভিজ্ঞ এবং আকর্ষনীয় ক্রিকেটার। আবুধাবি টি-টেন লিগে লাহোর কালান্দার্সে আবারও তাকে আইকন খেলোয়াড় হিসেবে স্বাগত জানাতে পেরে আমরা গর্ব বোধ করছি। আশা করি তার উপস্থিতি লাহোর কালান্দাসর্কে অন্য উচ্চতায় নিয়ে যাবে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">২০১৯ সালেও আফ্রিদি একই চুক্তিতে আবদ্ধ হয়েছিলেন। কিন্তু খেলতে পারেননি তিনি। কারণ, সেবার পাকিস্তান ক্রিকেট বোর্ড আফ্রিদিসহ দেশটির সাবেক এবং বর্তমান কোনো ক্রিকেটারকেই এনওসি দিতে অপারগতা প্রকাশ করে। কারণ, আরব আমিরাতের সঙ্গে পাকিস্তানের কুটনৈতিক সম্পর্কের টানাপড়েন।&rsquo;</p>', 'শহীদ-আফ্রিদি', NULL, 'Published', '2020-12-20 17:35:13', 'No', 'Yes', 5, 4, 12, NULL, 4, 1, 1, NULL, NULL, '2020-12-21 11:59:05', '2021-01-13 03:24:49'),
(10, 'বার্সেলোনা ছাড়বেন? অবশেষে মুখ খুললেন মেসি', 'images/news/big//2020/12/21/messi-20201221195402-21-12-202018-23-47.webp', 'images/news/medium/2020/12/21/messi-20201221195402-21-12-202018-23-47.webp', 'images/news/small/2020/12/21/messi-20201221195402-21-12-202018-23-47.webp', NULL, 'গত মৌসুমে কত নাটকই না হলো! লিওনেল মেসি তার এত বছরের সম্পর্কচ্ছেদ করতে চাইলেন, চাইলেন বার্সেলোনা ছেড়ে দিতে। কিন্তু আইনের মারপ্যাঁচে ফেলে তাকে আটকে দিল বার্সা কর্তৃপক্ষ।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মেসি অবশ্য সামনের মৌসুমেই &lsquo;ফ্রি&rsquo; হয়ে যাবেন। তাকে তখন নিতে পারবে যে কোনো ক্লাব। আইনের আর কোনো প্যাঁচ থাকবে না। গতবার তো একপ্রকার জোর করেই বেঁধে রাখা হয়েছিল। এবার তো তিনি চলেই যাবেন, কার সাধ্য আটকে রাখার?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সত্যিই কি তাই? গত মৌসুমে মেসি-বার্সা নাটকের পর অনেক ঘটনাই ঘটেছে। যার সঙ্গে সবচেয়ে বড় ঝামেলা ছিল, সেই বার্সা প্রেসিডেন্ট হোসে মারিয়া বার্তোমেউ শেষ পর্যন্ত পদত্যাগ করেছেন। নতুন কোচ এসেছেন, সব কিছু নতুন করে সাজানো হয়েছে। এখনও কি মেসি চলে যাবেন?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মেসি যাবেন কি থাকবেন, সেটি নিয়ে গণমাধ্যমে নানা ধরনের গুঞ্জন শোনা গেছে। এর বেশিরভাগই ছিল ইংলিশ ক্লাব ম্যানচেস্টার সিটিকে ঘিরে। গত মৌসুমেই ম্যানসিটিতে চলে যাওয়ার সম্ভাবনা ছিল মেসির। সামনের মৌসুমে শুধু ম্যানসিটি নয়, আর্জেন্টাইন সুপারস্টাকে দলে টানতে দৌড়ঝাঁপ শুরু করে দিয়েছে ফরাসি ক্লাব প্যারিস সেন্ট জার্মেইও (পিএসজি)।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কিন্তু মেসি কি চান? এতদিন এই বিষয়ে স্পষ্ট করে কিছু না বললেও অবশেষে মুখ খুললেন বার্সা দলপতি। স্বীকার করলেন, গত মৌসুমে খারাপ সময় গেছে তার। তবে এখন নাকি ন্যু ক্যাম্পে সুখেই আছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">হ্যাঁ, এমন কথাই বলেছেন মেসি। স্প্যানিশ টিভি চ্যানেল \'লা সেক্সতা\'র সঙ্গে আলাপে তিনি বলেন, &lsquo;সত্যটা হলো, আমি এখন ভালো আছি। এটা ঠিক, গ্রীষ্মে (গত মৌসুমে) আমার খুব খারাপ সময় কাটছিল। এটা আগের ঘটনা থেকে। যেভাবে মৌসুমটা শেষ হয়েছিল, বুরোফ্যাক্স এবং অন্য সব কিছু...মৌসুমের শুরুতে আমি সেগুলো নিয়েই ভাবছিলাম।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মেসি যোগ করেন, &lsquo;কিন্তু আজ আমি ভালো আছি। সামনে যা কিছু আছে সবগুলোর জন্যই আমি প্রাণপণ লড়ব। আমি রোমাঞ্চিত। আমি জানি ক্লাব কঠিন সময়ের মধ্য দিয়ে যাচ্ছে। ক্লাব লেভেল এবং বার্সেলোনার যা কিছু আছে সব নিয়েই। তবে আমি সামনের দিকে ভালো কিছুর আশায় আছি। &rsquo;</p>', 'মেসি,ফুটবল,বার্সেলোনা', NULL, 'Published', '2020-12-22 17:23:11', 'Yes', 'Yes', 5, 5, 13, NULL, 4, 1, 1, NULL, '2021-01-09 03:33:43', '2020-12-21 12:23:47', '2021-01-09 03:33:43'),
(11, 'পৌরসভা নির্বাচন : দ্বিতীয় ধাপে ১৪৭ জনের মনোনয়ন বাতিল', 'images/news/big//2021/01/06/pouro-election2-20210106205846-06-01-202123-22-11.webp', 'images/news/medium/2021/01/06/pouro-election2-20210106205846-06-01-202123-22-11.webp', 'images/news/small/2021/01/06/pouro-election2-20210106205846-06-01-202123-22-11.webp', NULL, 'দ্বিতীয় ধাপে ৬১টি পৌরসভা নির্বাচনের ১৪৭টি মনোনয়নপত্র বাতিল করা হয়েছে। এর মধ্যে মেয়র পদে ৩১ জন, সংরক্ষিত নারী ওয়ার্ডে ২৫ জন ও সাধারণ ওয়ার্ডে ৯১ জন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মঙ্গলবার (২২ ডিসেম্বর) যাচাই-বাছাই শেষে মেয়র, সাধারণ কাউন্সিলর ও সংরক্ষিত কাউন্সিলর পদে মোট ১৪৭টি মনোনয়নপত্র বাতিল করেছেন সংশ্লিষ্ট রিটার্নিং কর্মকর্তারা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">পৌরসভা সাধারণ নির্বাচন-২০২০ এর সমন্বয়ক ও নির্বাচন কমিশনের উপসচিব (চলতি দায়িত্ব) মিজানুর রহমান সাংবাদিকদের এ তথ্য জানান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইসির তফসিল অনুযায়ী আগামী বছরের ১৬ জানুয়ারি দ্বিতীয় ধাপের নির্বাচন অনুষ্ঠিত হবে। এ ধাপে মনোনয়নপত্র দাখিলের শেষ তারিখ ছিল ২০ ডিসেম্বর। আর প্রার্থিতা প্রত্যাহারের শেষ দিন ২৯ ডিসেম্বর।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এর আগে নির্বাচন কমিশনের (ইসি) জ্যেষ্ঠ সচিব মো. আলমগীর বলেন, ইভিএমের মাধ্যমে ২৯টি এবং ব্যালটের মাধ্যমে ৩২টি পৌরসভায় ভোট গ্রহণ অনুষ্ঠিত হবে। সকাল ৮টা থেকে বিকেল ৪টা পর্যন্ত চলবে ভোট গ্রহণ।</p>', 'পৌরসভা-নির্বাচন', NULL, 'Published', '2020-12-22 17:36:28', 'No', 'No', 3, 22, 23, NULL, 4, 1, 1, NULL, NULL, '2020-12-22 11:26:14', '2021-01-09 02:50:45'),
(12, 'Technolgoy sample', 'images/news/big//2021/01/05/blacks-wall-pops-wall-decals-dwpq2100-64-60005-01-202117-36-41.jpg', 'images/news/medium/2021/01/05/blacks-wall-pops-wall-decals-dwpq2100-64-60005-01-202117-36-41.jpg', 'images/news/small/2021/01/05/blacks-wall-pops-wall-decals-dwpq2100-64-60005-01-202117-36-42.jpg', NULL, 'jfjfjskal;;slfdh\'sa;kdfjd[io\'alf;SLd', '<p>\'a;kl;sfhda\'/l;hssfjd\'qhsda\'jamrju;ewj\'reknfda</p>\r\n<p>d;ahfn/rspf;jands/j;hf;ioasn/&nbsp;</p>', 'Technology', NULL, 'Published', '2021-01-05 17:36:41', 'No', 'Yes', 25, NULL, 8, NULL, 4, 1, 1, NULL, '2021-01-09 04:09:09', '2021-01-06 00:36:42', '2021-01-09 04:09:09'),
(13, 'education sample news', 'images/news/big//2021/01/05/ad-3-05-01-202121-15-05.jpeg', 'images/news/medium/2021/01/05/ad-3-05-01-202121-15-05.jpeg', 'images/news/small/2021/01/05/ad-3-05-01-202121-15-05.jpeg', NULL, 'fhfhfhfhfhfhhfhhf', '<p>ahghagfahgdkafdafd</p>\r\n<p>ldh;adahfhfa</p>', 'education', NULL, 'Published', '2021-01-05 21:15:05', 'No', 'Yes', 8, NULL, 15, NULL, 4, 1, 1, NULL, '2021-01-09 04:09:16', '2021-01-06 04:15:05', '2021-01-09 04:09:16'),
(14, 'উপজেলা চেয়ারম্যানকে বাদ দিয়ে ইউএনও কীভাবে সভাপতি হন : হাইকোর্ট', 'images/news/big//2021/01/06/bangldesh-high-court06-01-202120-33-34.jpg', 'images/news/medium/2021/01/06/bangldesh-high-court06-01-202120-33-34.jpg', 'images/news/small/2021/01/06/bangldesh-high-court06-01-202120-33-34.jpg', NULL, 'জনগণের ভোটে নির্বাচিত উপজেলা পরিষদের চেয়ারম্যানদের বাদ দিয়ে উপজেলা নির্বাহী অফিসাররা (ইউএনও) কীভাবে উপজেলা পরিষদের বিভিন্ন স্থায়ী কমিটির সভাপতি হন তা জানতে চেয়ে রুল জারি করেছেন হাইকোর্ট...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জনগণের ভোটে নির্বাচিত উপজেলা পরিষদের চেয়ারম্যানদের বাদ দিয়ে উপজেলা নির্বাহী অফিসাররা (ইউএনও) কীভাবে উপজেলা পরিষদের বিভিন্ন স্থায়ী কমিটির সভাপতি হন তা জানতে চেয়ে রুল জারি করেছেন হাইকোর্ট।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ সংক্রান্ত রিটের শুনানি নিয়ে বুধবার (৬ ডিসেম্বর) হাইকোর্টের বিচারপতি মো. মজিবুর রহমান মিয়া ও বিচারপতি মহিউদ্দিন শামীমের সমন্বয়ে গঠিত বেঞ্চ এ রুল জারি করেন। আদেশের বিষয়টি জাগো নিউজকে নিশ্চিত করেছেন রাষ্ট্রপক্ষের আইনজীবী ডেপুটি অ্যাটর্নি জেনারেল ব্যারিস্টার নওরোজ মো. রাসেল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আদালতে এদিন রিটকারী সংগঠন বাংলাদেশ উপজেলা পরিষদ অ্যাসোসিয়েশনের নেতৃবৃন্দের পক্ষে ছিলেন অ্যাডভোকেট হাসাম এমএস আজিম। অন্যদিকে রাষ্ট্রপক্ষের শুনানিতে ছিলেন ডেপুটি অ্যাটর্নি জেনারেল ব্যারিস্টার নওরোজ মো. রাসেল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">অপর এক রুলে উপজেলা পরিষদের সিদ্ধান্ত বাস্তবায়ন ও আর্থিক শৃঙ্খলা আনয়নসহ অন্যান্য ক্ষেত্রে উপজেলা নির্বাহী অফিসারদের (ইউএনও) সাচিবিক দায়িত্বপালনের বিধান সম্বলিত উপজেলা পরিষদ আইনের ৩৩ ধারা কেন বেআইনি ও অবৈধ ঘোষণা করা হবে তাও জানতে চাওয়া হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এছাড়া, বিভিন্ন আমন্ত্রণপত্রে উপজেলা পরিষদ না লিখে উপজেলা প্রশাসন লেখার সিদ্ধান্ত কেন অবৈধ ঘোষণা করা হবে না তাও জানতে চাওয়া হয়েছে। উপজেলার বিভিন্ন কমিটিতে ইউএনওকে সভাপতি এবং উপজেলা চেয়ারম্যানকে উপদেষ্টা করা সংক্রান্ত পরিপত্র কেন অবৈধ ঘোষণা করা হবে না তাও জানতে চেয়েছেন হাইকোর্ট।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আগামী ১০ দিনের মধ্যে মন্ত্রিপরিষদ সচিব, স্থানীয় সরকার সচিব, আইন সচিবসহ সংশ্লিষ্টদের রুলের জবাব দিতে বলা হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'Law', NULL, 'Published', '2021-01-06 20:33:34', 'Yes', 'Yes', 11, NULL, 23, NULL, 4, 1, 1, NULL, NULL, '2021-01-07 03:33:34', '2021-01-13 03:25:23'),
(15, '২০৩৫ সালের মধ্যে থাইল্যান্ডের পর্যায়ে পৌঁছে যাবে বাংলাদেশ', 'images/news/big//2021/01/06/tanker-06-01-202120-39-46.webp', 'images/news/medium/2021/01/06/tanker-06-01-202120-39-46.webp', 'images/news/small/2021/01/06/tanker-06-01-202120-39-46.webp', NULL, 'উন্নয়নের যে ধারা, তা অব্যাহত থাকলে ২০৩৫ সালের মধ্যেই বাংলাদেশ অর্থনৈতিকভাবে থাইল্যান্ডের পর্যায়ে পৌঁছে যাবে', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">উন্নয়নের যে ধারা, তা অব্যাহত থাকলে ২০৩৫ সালের মধ্যেই বাংলাদেশ অর্থনৈতিকভাবে থাইল্যান্ডের পর্যায়ে পৌঁছে যাবে বলে আশাবাদ ব্যক্ত করেন প্রধানমন্ত্রীর বিশেষ সহকারী ও আওয়ামী লীগের দফতর বিষয়ক সম্পাদক ব্যারিস্টার বিপ্লব বড়ুয়া।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি মনে করেন, আওয়ামী লীগ সভাপতি&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent; border-bottom: 2px solid #b30f0f !important;\" title=\"প্রধানমন্ত্রী শেখ হাসিনার\" href=\"https://www.jagonews24.com/topic/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%A7%E0%A6%BE%E0%A6%A8%E0%A6%AE%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A7%8D%E0%A6%B0%E0%A7%80\" target=\"_blank\" rel=\"follow noopener\">প্রধানমন্ত্রী শেখ হাসিনার</a>&nbsp;নেতৃত্বে সরকারের অবস্থান দৃঢ় আছে বলেই&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent; border-bottom: 2px solid #b30f0f !important;\" title=\"পদ্মা সেতুর মতো মহাপ্রকল্প\" href=\"https://www.jagonews24.com/topic/%E0%A6%AA%E0%A6%A6%E0%A7%8D%E0%A6%AE%E0%A6%BE-%E0%A6%B8%E0%A7%87%E0%A6%A4%E0%A7%81\" target=\"_blank\" rel=\"follow noopener\">পদ্মা সেতুর মতো মহাপ্রকল্প</a>&nbsp;নিজস্ব অর্থায়নে বাস্তবায়ন করা সম্ভব হচ্ছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি বলেন, বঙ্গবন্ধুকন্যা প্রধানমন্ত্রী শেখ হাসিনা নিরলস পরিশ্রমের মধ্য দিয়ে যখন দেশকে এগিয়ে নিয়ে যাচ্ছেন, তখন প্রতিনিয়ত আমাদের ষড়যন্ত্র মোকাবিলা করতে হয়। সভ্যতার এমন সময়েও&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; border-bottom: 2px solid #b30f0f !important;\" title=\"গুজব\" href=\"https://www.jagonews24.com/topic/%E0%A6%97%E0%A7%81%E0%A6%9C%E0%A6%AC\" target=\"_blank\" rel=\"follow noopener\">গুজব</a>&nbsp;মোকাবিলা করতে হয়। আমাদের জন্য এর চেয়ে আর দুর্ভাগ্য কী হতে পারে! এটিই আমাদের জন্য বড় চ্যালেঞ্জ বলে মনে করি।</p>', 'Economy', NULL, 'Published', '2021-01-06 20:39:46', 'Yes', 'No', 3, 24, 23, NULL, 4, 1, 1, NULL, NULL, '2021-01-07 03:39:46', '2021-01-13 03:27:17'),
(16, 'যুক্তরাষ্ট্রের গণতন্ত্র নজিরবিহীন আক্রমণের মুখে : জো বাইডেন', 'images/news/big//2021/01/07/trump-2021010709420907-01-202105-00-13.jpg', 'images/news/medium/2021/01/07/trump-2021010709420907-01-202105-00-13.jpg', 'images/news/small/2021/01/07/trump-2021010709420907-01-202105-00-13.jpg', NULL, 'আমিনা ইকবাল: যুক্তরাষ্ট্রের পার্লামেন্ট ভবনে (ইউএস ক্যাপিটল) বিক্ষোভের নামে বিদায়ী প্রেসিডেন্ট ডোনাল্ড ট্রাম্প সমর্থকদের হামলার ঘটনায় নবনির্বাচিত প্রেসিডেন্ট জো বাইডেন বলেছেন, ‘এই বিক্ষোভ একটি বিদ্রোহের সমতুল্য এবং এখনই তার অবসান হওয়া উচিত। এই সময় আমাদের গণতন্ত্র এক নজিরবিহীন আক্রমণের মুখে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">যুক্তরাষ্ট্রের পার্লামেন্ট ভবনে (ইউএস ক্যাপিটল) বিক্ষোভের নামে বিদায়ী প্রেসিডেন্ট ডোনাল্ড ট্রাম্প সমর্থকদের হামলার ঘটনায় নবনির্বাচিত প্রেসিডেন্ট জো বাইডেন বলেছেন, &lsquo;এই বিক্ষোভ একটি বিদ্রোহের সমতুল্য এবং এখনই তার অবসান হওয়া উচিত। এই সময় আমাদের গণতন্ত্র এক নজিরবিহীন আক্রমণের মুখে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ট্রাম্প সমর্থকদের বিক্ষোভ, ভাঙচুর ও গুলিতে&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent; border-bottom: 2px solid #b30f0f !important;\" title=\"এক নারী নিহত\" href=\"https://www.jagonews24.com/international/news/634494\" target=\"_blank\" rel=\"follow noopener\">এক নারী নিহত</a>&nbsp;হয়েছেন। এছাড়া আহত হয়েছেন বেশ কয়েকজন। যুক্তরাষ্ট্রের ইতিহাসে নজিরবিহীন এই ঘটনায় ওয়াশিংটন ডিসির ক্যাপিটলের (পার্লামেন্ট) যৌথ অধিবেশন স্থগিত করা হয়েছে। এছাড়া কারফিউ জারি করা হয়েছে ওয়াশিংটনে।</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; text-align: center; margin-top: 20px; margin-bottom: 20px; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">\r\n<div id=\"div-gpt-ad-1509258458742-10\" style=\"box-sizing: border-box;\" data-google-query-id=\"CNKTqviDie4CFY0GiwodbUwNIw\">&nbsp;</div>\r\n</div>', 'আন্তর্জাতিক,আমেরিকা', NULL, 'Published', '2021-01-07 05:00:13', 'Yes', 'No', 2, 1, 22, NULL, 4, 1, 1, NULL, NULL, '2021-01-07 12:00:13', '2021-01-13 03:27:41'),
(17, 'পড়ন্ত বিকেলে বন্ধুদের সাথে একদিন...', 'images/news/big//2021/01/07/133560420-895166871256776-2030277835465746311-n07-01-202122-26-33.jpg', 'images/news/medium/2021/01/07/133560420-895166871256776-2030277835465746311-n07-01-202122-26-33.jpg', 'images/news/small/2021/01/07/133560420-895166871256776-2030277835465746311-n07-01-202122-26-33.jpg', NULL, 'গৃহবন্দি দশা থেকে নতুন স্বাভাবিক (নিউ নরমাল) অবস্থায় প্রবেশ করেছে পৃথিবী। এ বন্দিদশায় প্রিয়জনের কাছে বা দূরে যেখানেই থাকুক-হাঁপিয়ে উঠেছে মানুষ। সহজেই অনুমেয় দীর্ঘ কারাবাসে মানুষের কতটা যন্ত্রণায় কাটে। ঘরবন্দি অবস্থায় বারবার মনে পড়েছে ইরানের কবি নাজিম হিকমাত, আফ্রিকার মানবতাবাদী নেলসন ম্যান্ডেলা কিংবা বাংলাদেশ প্রতিষ্ঠার আন্দোলনে শেখ মুজিবের লড়াইয়ের কথা।', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">গৃহবন্দি দশা থেকে নতুন স্বাভাবিক (নিউ নরমাল) অবস্থায় প্রবেশ করেছে পৃথিবী। এ বন্দিদশায় প্রিয়জনের কাছে বা দূরে যেখানেই থাকুক-হাঁপিয়ে উঠেছে মানুষ। সহজেই অনুমেয় দীর্ঘ কারাবাসে মানুষের কতটা যন্ত্রণায় কাটে। ঘরবন্দি অবস্থায় বারবার মনে পড়েছে ইরানের কবি নাজিম হিকমাত, আফ্রিকার মানবতাবাদী নেলসন ম্যান্ডেলা কিংবা বাংলাদেশ প্রতিষ্ঠার আন্দোলনে শেখ মুজিবের লড়াইয়ের কথা।</span></p>', 'ভ্রমণ', NULL, 'Published', '2021-01-07 22:26:33', 'Yes', 'Yes', 7, 10, 23, NULL, 3, 1, 2, NULL, '2021-01-08 06:10:39', '2021-01-08 05:26:33', '2021-01-08 06:10:39'),
(18, 'উপজেলা চেয়ারম্যানকে বাদ দিয়ে ইউএনও কীভাবে সভাপতি হন : হাইকোর্ট', 'images/news/big//2021/01/08/bangldesh-high-court06-01-202120-33-3408-01-202111-36-59.jpg', 'images/news/medium/2021/01/08/bangldesh-high-court06-01-202120-33-3408-01-202111-36-59.jpg', 'images/news/small/2021/01/08/bangldesh-high-court06-01-202120-33-3408-01-202111-36-59.jpg', NULL, 'জনগণের ভোটে নির্বাচিত উপজেলা পরিষদের চেয়ারম্যানদের বাদ দিয়ে উপজেলা নির্বাহী অফিসাররা (ইউএনও) কীভাবে উপজেলা ....', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জনগণের ভোটে নির্বাচিত উপজেলা পরিষদের চেয়ারম্যানদের বাদ দিয়ে উপজেলা নির্বাহী অফিসাররা (ইউএনও) কীভাবে উপজেলা পরিষদের বিভিন্ন স্থায়ী কমিটির সভাপতি হন তা জানতে চেয়ে রুল জারি করেছেন হাইকোর্ট...</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জনগণের ভোটে নির্বাচিত উপজেলা পরিষদের চেয়ারম্যানদের বাদ দিয়ে উপজেলা নির্বাহী অফিসাররা (ইউএনও) কীভাবে উপজেলা পরিষদের বিভিন্ন স্থায়ী কমিটির সভাপতি হন তা জানতে চেয়ে রুল জারি করেছেন হাইকোর্ট।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ সংক্রান্ত রিটের শুনানি নিয়ে বুধবার (৬ ডিসেম্বর) হাইকোর্টের বিচারপতি মো. মজিবুর রহমান মিয়া ও বিচারপতি মহিউদ্দিন শামীমের সমন্বয়ে গঠিত বেঞ্চ এ রুল জারি করেন। আদেশের বিষয়টি জাগো নিউজকে নিশ্চিত করেছেন রাষ্ট্রপক্ষের আইনজীবী ডেপুটি অ্যাটর্নি জেনারেল ব্যারিস্টার নওরোজ মো. রাসেল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আদালতে এদিন রিটকারী সংগঠন বাংলাদেশ উপজেলা পরিষদ অ্যাসোসিয়েশনের নেতৃবৃন্দের পক্ষে ছিলেন অ্যাডভোকেট হাসাম এমএস আজিম। অন্যদিকে রাষ্ট্রপক্ষের শুনানিতে ছিলেন ডেপুটি অ্যাটর্নি জেনারেল ব্যারিস্টার নওরোজ মো. রাসেল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">অপর এক রুলে উপজেলা পরিষদের সিদ্ধান্ত বাস্তবায়ন ও আর্থিক শৃঙ্খলা আনয়নসহ অন্যান্য ক্ষেত্রে উপজেলা নির্বাহী অফিসারদের (ইউএনও) সাচিবিক দায়িত্বপালনের বিধান সম্বলিত উপজেলা পরিষদ আইনের ৩৩ ধারা কেন বেআইনি ও অবৈধ ঘোষণা করা হবে তাও জানতে চাওয়া হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এছাড়া, বিভিন্ন আমন্ত্রণপত্রে উপজেলা পরিষদ না লিখে উপজেলা প্রশাসন লেখার সিদ্ধান্ত কেন অবৈধ ঘোষণা করা হবে না তাও জানতে চাওয়া হয়েছে। উপজেলার বিভিন্ন কমিটিতে ইউএনওকে সভাপতি এবং উপজেলা চেয়ারম্যানকে উপদেষ্টা করা সংক্রান্ত পরিপত্র কেন অবৈধ ঘোষণা করা হবে না তাও জানতে চেয়েছেন হাইকোর্ট।</p>', 'উপজেলা', NULL, 'Published', '2021-01-08 11:36:59', 'Yes', 'No', 11, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-08 18:36:59', '2021-01-13 03:26:55'),
(19, 'সংশোধিত ড্যাপ বাস্তবায়ন হলে ঢাকা হবে পূর্ণাঙ্গ মেগাসিটি', 'images/news/big//2021/01/08/120609krishi08-01-202112-17-48.jpg', 'images/news/medium/2021/01/08/120609krishi08-01-202112-17-48.jpg', 'images/news/small/2021/01/08/120609krishi08-01-202112-17-48.jpg', NULL, 'শত শত বছরের পুরোনো রাজধানী ঢাকাকে বসবাস উপযোগী, দৃষ্টিনন্দন ও নাগরিক সুবিধার আধারে পরিণত করতে ঢাকা স্ট্রাকচার প্ল্যান (১৯৯৫-২০১৫) বা ২০ বছর মেয়াদি বিশদ অঞ্চল পরিকল্পনা (ড্যাপ) প্রণয়ন করা হয়...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #800000;\"><em style=\"box-sizing: border-box;\">শত শত বছরের পুরোনো রাজধানী ঢাকাকে বসবাস উপযোগী, দৃষ্টিনন্দন ও নাগরিক সুবিধার আধারে পরিণত করতে ঢাকা স্ট্রাকচার প্ল্যান (১৯৯৫-২০১৫) বা ২০ বছর মেয়াদি বিশদ অঞ্চল পরিকল্পনা (ড্যাপ) প্রণয়ন করা হয়। কিন্তু নানা অসঙ্গতি থাকায় পরে ড্যাপ সংশোধনের সিদ্ধান্ত নেয়া হয়। এ কারণে বাস্তব কোনো চেহারা পায়নি পুরোনো সেই রাজধানী উন্নয়ন কর্তৃপক্ষের (রাজউক) পরিকল্পনা। বর্তমানে সংশোধিত ড্যাপ (২০১৫-৩৫) প্রণয়নের কাজ রয়েছে শেষ পর্যায়ে। সংশোধিত ড্যাপ নিয়ে জাগো নিউজের সঙ্গে কথা বলেন প্রকল্প পরিচালক মো. আশরাফুল ইসলাম। সাক্ষাৎকার নিয়েছেন সাইফুল হক মিঠু।</em></span></p>\r\n<div class=\"adv-img text-center hidden-print\" style=\"box-sizing: border-box; text-align: center; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">\r\n<div class=\"quote\" style=\"box-sizing: border-box; border: 1px solid #c5c5c5; padding: 20px 30px; text-align: left; margin-left: -30px; background: #ffffff; width: 381.562px; float: left; margin-right: 15px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.75; font-size: 16px; position: relative; color: #0f0a0e;\">&nbsp;শুধু জলাশয় বা কৃষিজমি নয়, ঐতিহাসিক স্থাপনাসমূহ সংরক্ষণ করার সুপারিশ সংশোধিত ড্যাপে দেয়া হয়েছে&nbsp;</p>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">জাগো নিউজ: আগের (১৯৯৫-২০১৫) বিশদ অঞ্চল পরিকল্পনা বা ড্যাপের পর সংশোধিত ড্যাপের (২০১৫-২০৩৫) যৌক্তিকতা কতটুকু?</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">মো. আশরাফুল ইসলাম:</span>&nbsp;সমন্বিত পরিকল্পনার অভাবে আগের ড্যাপে কিছু অসঙ্গতি লক্ষ্য করা যায়। সেটিতে এলাকাভিত্তিক তথ্য-উপাত্ত নিয়ে পরিকল্পনা করা হয়নি। যেমন আশুলিয়া ও গাজীপুরে অনুমোদনহীনভাবে গার্মেন্টস শিল্প গড়ে উঠেছে। পরিকল্পনাহীনভাবে হওয়ায় সেখানে পরিবেশের বিপর্যয় ঘটেছে, দুর্ঘটনাও ঘটছে। সংশোধিত ড্যাপে এলাকাভিত্তিক তথ্য সংগ্রহ করা হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এছাড়া আগের ড্যাপে কৃষিজমি কিংবা জলাশয় সংরক্ষণে কোনো উদ্যোগ ছিল না। এবার টিডিআর পলিসির (ট্রান্সফার অব ডেভেলপমেন্ট রাইটস) প্রস্তাব করেছি। শুধু জলাশয় বা কৃষিজমি নয়, ঐতিহাসিক স্থাপনাসমূহ সংরক্ষণের সুপারিশ সংশোধিত ড্যাপে দেয়া হয়েছে। পাশাপাশি এতে বিশেষজ্ঞ ও সুশীল সমাজের প্রতিনিধিদের মতামত নেয়া হয়েছে।</p>', 'জাতীয়', NULL, 'Published', '2021-01-08 12:17:48', 'Yes', 'No', 3, 22, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-08 19:17:48', '2021-01-13 03:25:50'),
(20, 'সাইফকে চ্যাম্পিয়ন চাই-কলকাতায় গিয়েও শুভকামনা জামালের', 'images/news/big//2021/01/08/bd-footbal-team-2020-08-04-17-10-1008-01-202112-23-44.jpg', 'images/news/medium/2021/01/08/bd-footbal-team-2020-08-04-17-10-1008-01-202112-23-44.jpg', 'images/news/small/2021/01/08/bd-footbal-team-2020-08-04-17-10-1008-01-202112-23-44.jpg', NULL, 'ফেডারেশন কাপ ফুটবলের ফাইনালের আগের দুপুরে দুই দলের কোচ ও অধিনায়ককে নিয়ে আনুষ্ঠানিক সংবাদ সম্মেলনের আয়োজন করেছে বাংলাদেশ ফুটবল ফেডারেশন...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ফেডারেশন কাপ ফুটবলের ফাইনালের আগের দুপুরে দুই দলের কোচ ও অধিনায়ককে নিয়ে আনুষ্ঠানিক সংবাদ সম্মেলনের আয়োজন করেছে বাংলাদেশ ফুটবল ফেডারেশন। সেখানে ট্রফি হাতে পোজ দেবেন দুই দলের অধিনায়ক। বাংলাদেশ অধিনায়ক জামাল ভূঁইয়া থাকতেন এই ছবিতে। তিনি যে গত দুই মৌসুম সাইফ স্পোর্টিং ক্লাবের অধিনায়ক ছিলেন। এবার ধারে খেলতে গেছেন আই লিগে কলকাতা মোহামেডানের হয়ে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আই লিগে যেদিন জামাল ভূঁইয়ার অভিষেক হবে, ঠিক তার পরের দিন ঢাকার বঙ্গবন্ধু জাতীয স্টেডিয়ামে প্রথমবারের মতো ফেডারেশন কাপ ফুটবলের ফাইনালে নামবে তার ক্লাব সাইফ স্পোর্টিং। শুক্রবার আই লিগ শুরুর আগে যে সংবাদ সম্মেলন হয়েছে, সেখানে কলকাতা মোহামেডানের কোচের সঙ্গে ছিলেন জামাল ভূইয়া।আই লিগে অভিষেক, মোহামেডানে খেলা এবং ইউরোপের অভিজ্ঞতা-নানা বিষয় নিয়ে সংবাদ সম্মেলনে কথা বলেছেন জামাল। কলকাতার সাংবাদিকরা জামালকে বাংলাদেশের ফেডারেশন কাপ নিয়েও প্রশ্ন করেছেন জামালকে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রথমবার ফেডারেশন কাপের ফাইনালে উঠেছে জামালের দল সাইফ স্পোর্টিং ক্লাব। ফাইনালে প্রতিপক্ষ গতবারের চ্যাম্পিয়ন বসুন্ধরা কিংস। এ ফাইনাল নিয়ে জামালের প্রত্যাশা কি? জামাল ভূঁইয়া বলেছেন,&lsquo;আমার শুভ কামনা থাকলো সাইফ স্পোর্টিংয়ের জন্য। আমার প্রত্যাশা দল ভালো খেলে চ্যাম্পিয়ন হোক।&rsquo;</p>', 'খেলাধুলা', NULL, 'Published', '2021-01-08 12:23:44', 'Yes', 'No', 5, 5, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-08 19:23:44', '2021-01-13 03:24:25'),
(21, 'করোনার টিকা নিলেন সৌদি বাদশা সালমান', 'images/news/big//2021/01/08/saudi-badsha-2021010904103808-01-202119-36-04.jpg', 'images/news/medium/2021/01/08/saudi-badsha-2021010904103808-01-202119-36-04.jpg', 'images/news/small/2021/01/08/saudi-badsha-2021010904103808-01-202119-36-04.jpg', NULL, 'করোনাভাইরাসের সংক্রমণ ঠেকাতে প্রথম ডোজ টিকা নিয়েছেন আরবে আরবের বাদশা সালমান। স্থানীয় সময় শুক্রবার (৮ জানুয়ারি) তিনি এই টিকা নিয়েছেন বলে দেশটির রাষ্ট্রীয় গণমাধ্যম সৌদি প্রেস এজেন্সির বরাত দিয়ে বার্তা সংস্থা রয়টার্স এই তথ্য জানিয়েছে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">করোনাভাইরাসের সংক্রমণ ঠেকাতে প্রথম ডোজ টিকা নিয়েছেন সৌদি আরবের বাদশা সালমান। স্থানীয় সময় শুক্রবার (৮ জানুয়ারি) তিনি এই টিকা নিয়েছেন বলে দেশটির রাষ্ট্রীয় গণমাধ্যম সৌদি প্রেস এজেন্সির বরাত দিয়ে বার্তা সংস্থা রয়টার্স এই তথ্য জানিয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রয়টার্সের ওই প্রতিবেদনে বলা হয়েছে, সৌদি আরবের রাষ্ট্রীয় গণমাধ্যম বাদশার টিকা নেয়ার দুটি ছবি এবং একটি ভিডিও ক্লিপ প্রকাশ করেছে। সেখানে দেখা গেছে, একজন স্বাস্থ্যকর্মী বাদশা সালমানকে টিকা দিচ্ছেন।&nbsp;এদিকে এএফপির খবরে বলা হয়েছে, ফাইজার-বায়োএনটেকের করোনা টিকার প্রথম চালান পাওয়ার পর গত ১৭ ডিসেম্বর থেকে সৌদি আরবে টিকা দেয়া শুরু হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">দেশটির স্বাস্থ্য মন্ত্রণালয়ের বরাত দিয়ে এএফপি বলছে, সেখানে তিন ধাপে করোনার টিকা দেয়া হবে। প্রথম ধাপে ৬৫ বছরের বেশি বয়সীদের টিকা দেয়া হবে। দ্বিতীয় ধাপে ৫০ বছরের বেশি বয়সীদের এবং শেষ ধাপে বাকি সবাইকে টিকা দেয়া হবে। দেশটির স্বাস্থ্য মন্ত্রণালয় বলছে, এই টিকা তাদের দেশের নাগরিক ও বাসিন্দাদের বিনা মূল্যে দেয়া হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সৌদি আরবে এখন পর্যন্ত ৩ লাখ ৬৩ হাজারের মতো করোনা রোগী শনাক্ত হয়েছে। আর দেশটিতে এই রোগে ৬ হাজারের বেশি মানুষের মৃত্যু হয়েছে।</p>', 'সৌদি', NULL, 'Published', '2021-01-08 19:36:04', 'Yes', 'Yes', 4, NULL, 27, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 02:36:04', '2021-01-13 03:24:04'),
(22, 'ভারতীয় পেঁয়াজ কিনছেন না ক্রেতারা, বিপাকে ব্যবসায়ীরা', 'images/news/big//2021/01/08/indian-onion-20210108192621-08-01-202119-38-45.webp', 'images/news/medium/2021/01/08/indian-onion-20210108192621-08-01-202119-38-45.webp', 'images/news/small/2021/01/08/indian-onion-20210108192621-08-01-202119-38-45.webp', NULL, 'বাজারে উঠতে শুরু করেছে দেশি পেঁয়াজ। চলছে ভরা মৌসুম। এদিকে, গত সাড়ে তিন মাস বন্ধ থাকার পর আবার পেঁয়াজ পাঠাতে শুরু করেছে ভারত। এতে বিপদে পড়েছেন দেশি কৃষকরা।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাজারে উঠতে শুরু করেছে দেশি পেঁয়াজ। চলছে ভরা মৌসুম। এদিকে, গত সাড়ে তিন মাস বন্ধ থাকার পর আবার পেঁয়াজ পাঠাতে শুরু করেছে ভারত। এতে বিপদে পড়েছেন দেশি কৃষকরা। তবে ভারতীয় পেঁয়াজ আমদানি করে স্বস্তিতে নেই আমদানিকারক ও ব্যবসায়ীরা। বাজারে এখন খুব বেশি চাহিদা নেই ভারতীয় পেঁয়াজের।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাজারে দেশি পেঁয়াজের চাহিদা বেশি, দামও কম। আর তুলনামূলক বেশি দাম হওয়ায় মানুষ ভারতীয় পেঁয়াজ থেকে মুখ ফিরিয়ে নিয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গত বছরের ১৪ সেপ্টেম্বর হঠাৎ করেই পেঁয়াজ রফতানি বন্ধ করে দেয় ভারত সরকার। গত বছরের শেষদিকে এসে (২৯ ডিসেম্বর) এ রফতানি নিষেধাজ্ঞা তুলে নেয় দেশটি। এরপর চলতি বছরের শুরুতে (২ জানুয়ারি) থেকে অন্যান্য বন্দরের মতো সাতক্ষীরার ভোমরা স্থলবন্দর দিয়েও ভারতীয় পেঁয়াজ আসতে শুরু করে দেশে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">পেঁয়াজের বড় পাইকারি বাজার সাতক্ষীরা শহরের সুলতানপুর বড়বাজার।&nbsp;সেখানকার আড়তদার মেসার্স সাকিব এন্টারপ্রাইজের স্বত্বাধিকারী আক্তারুজ্জামান আক্তার জানান, বাজারে এখন দেশি পেঁয়াজ পাইকারি দরে প্রতি কেজি বিক্রি হচ্ছে ২৭-২৮ টাকায় আর খুচরা প্রতি কেজি ৩০ টাকা। আর মেহেরপুর জেলায় উৎপাদিত পেঁয়াজের দাম আরও কম। সেগুলো বিক্রি হচ্ছে পাইকারি ২০-২২ টাকা ও খুচরা ২৫ টাকা। হল্যান্ডের পেঁয়াজ পাইকারি ১৯-২০ টাকা, খুচরা ২০-২১ টাকা।&nbsp;কিন্তু, ভারতীয় পেঁয়াজ পাইকারি ৩৬-৩৭ টাকা ও খুচরা বিক্রি হচ্ছে ৪০ টাকায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি আরও জানান, ভারতীয় পেঁয়াজ বিক্রি হচ্ছে না। এগুলো কিনে আড়তে রেখে লোকসানে পড়েছি। ভারতীয় পেঁয়াজ প্রতি কেজি ৩৯ টাকা দরে কিনে আমি বিক্রি করছি ৩৫ টাকায়। তবুও মানুষ কিনছে না। আড়তে ২০০ বস্তা পেঁয়াজ নিয়ে এখন বিপদে পড়েছি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভোমরা সহকারী কমিশনারের কার্যালয়ের রাজস্ব কর্মকর্তা আকবার আলী জানান, গত ২ জানুয়ারি থেকে ৬ জানুয়ারি পর্যন্ত ভোমরা বন্দর দিয়ে ভারত থেকে পেঁয়াজ আমদানি হয়েছে ২০৪১ দশমিক ৮ মেট্রিক টন। এসব পেঁয়াজে কোনো শুল্ক নেয়া হয়নি। করোনা পরিস্থিতির মধ্যে ভারত সরকার পেঁয়াজ রফতানি বন্ধের ঘোষণা দিলে বাংলাদেশ সরকার আমদানিতে শুল্ক &lsquo;ফ্রি&rsquo; করে দেয়। সরকারি সেই সিদ্ধান্ত এখনও বহাল রয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভোমার বন্দরের ব্যবসায়ী বিপ্লব ট্রান্সপোর্টের স্বত্বাধিকারী রতন বলেন, &lsquo;এ পর্যন্ত পাঁচ ট্রাক ভারতীয় পেঁয়াজ আমদানি করেছি। তবে বাজারে দেশি পেঁয়াজের চাহিদা বেশি। ভারতীয় পেঁয়াজের চাহিদা নেই। ভারত থেকে কিনে এনে খরচ ধরে বিক্রি করতে গিয়ে দেখা যাচ্ছে, দেশি পেঁয়াজের থেকে কেজি প্রতি ৮-১০ টাকা বেশি দাম পড়ছে। এতে ক্রেতারা দেশি পেঁয়াজেই বেশি ঝুঁকছে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি আরও বলেন, এখন আমদানি কমিয়ে দিয়েছেন আমদানিকারকরা। বর্তমানে প্রতিদিন ১০-১২ ট্রাক পেঁয়াজ আমদানি হচ্ছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভোমরা সিএন্ডএফ এজেন্ট অ্যাসোসিয়েশনের কাস্টমস ও দফতর বিষয়ক সম্পাদক জিএম আমির হামজা জানান, &lsquo;চাহিদা না থাকায় আমদানি করে ব্যবসায়ীরা ক্ষতিগ্রস্ত হচ্ছেন।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সাতক্ষীরা জেলা মার্কেটিং কর্মকর্তা (বিপণন) সালেহ মো. আব্দুল্লাহ জানান, বর্তমানে দেশি পেঁয়াজ পাইকারি বিক্রি হচ্ছে ২৮-৩০ টাকা, হল্যান্ডের পেয়াজ ১৮-২০ টাকা ও ভারতীয় পেয়াজ প্রকারভেদে ৩৩-৩৭ টাকা। যখন দাম চড়া ছিল তখন আমদানিকারকরা লাভের আশায় হাজার হাজার টন পেঁয়াজ এলসি করে রেখেছে। এখন তারা পড়েছেন মহাবিপদে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সাতক্ষীরা জেলা কৃষি সম্প্রসারণ অধিদফতর থেকে জানা গেছে, জেলায় চলতি মৌসুমে পেঁয়াজের আবাদ হয়েছে ৬২০ হেক্টর জমিতে। গত বছর চাষাবাদ হয়েছিল ৫৫৫ হেক্টর জমিতে। চলতি মৌসুমে ৬৫ হেক্টর জমিতে চাষাবাদ বেশি হয়েছে। জেলায় চলতি মৌসুমে উৎপাদন হয়েছে ছয় হাজার মেট্রিকটন পেঁয়াজ। চাহিদা রয়েছে ২০-২২ হাজার মেট্রিকটন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'jatio', NULL, 'Published', '2021-01-08 19:38:45', 'Yes', 'No', 3, 22, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 02:38:45', '2021-01-13 03:18:33');
INSERT INTO `news` (`id`, `title`, `feature_photo`, `feature_medium`, `feature_small`, `photo_caption`, `meta_description`, `description`, `topic`, `video_url`, `published_status`, `published_date`, `is_cover_news`, `show_at_homepage`, `category_id`, `sub_cat_id`, `division_id`, `district_id`, `news_author_id`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(23, 'বাইডেনের শপথ অনুষ্ঠানে থাকছেন না ট্রাম্প', 'images/news/big//2021/01/08/biden-trump-2021010823081908-01-202119-41-11.jpg', 'images/news/medium/2021/01/08/biden-trump-2021010823081908-01-202119-41-11.jpg', 'images/news/small/2021/01/08/biden-trump-2021010823081908-01-202119-41-11.jpg', NULL, 'বিদায়ী মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্প তার উত্তরসূরি নবনির্বাচিত প্রেসিডেন্ট জো বাইডেনের শপথগ্রহণ আনুষ্ঠানে যাবেন না বলে জানিয়ে দিয়েছেন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বিদায়ী মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্প তার উত্তরসূরি নবনির্বাচিত প্রেসিডেন্ট জো বাইডেনের শপথগ্রহণ আনুষ্ঠানে যাবেন না বলে জানিয়ে দিয়েছেন। এক টুইট বার্তায় ট্রাম্প এ তথ্য জানান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাইডেনের শপথ গ্রহণ অনুষ্ঠানে যাওয়ার বিষয়ে করা প্রশ্নের জবাবে টুইটে ট্রাম্প বলেন, &lsquo;জানুয়ারির ২০ তারিখের শপথগ্রহণ আনুষ্ঠানে আমি যাচ্ছি না।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এর আগে, মার্কিন কংগ্রেস ভবন ক্যাপিটল হিলে নিজের সমর্থকদের হামলার সমালোচনা করে বৃহস্পতিবার (৭ ডিসেম্বর) সন্ধ্যায় একটি ভিডিও বার্তা প্রকাশ করেন ট্রাম্প।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সেখানে তিনি বলেন, কংগ্রেস একটি নতুন প্রশাসনের অনুমোদন দিয়েছে, যা আগামী ২০ জানুয়ারি অভিষিক্ত হবে। এখন আমার লক্ষ্য ক্ষমতার মসৃণ, সুশৃঙ্খল ও নির্বিঘ্ন হস্তান্তর নিশ্চিত করা। এখন ক্ষত নিরাময় এবং পুনর্মিলনের সময়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গত নভেম্বরের নির্বাচনের পর এটাই প্রথমবার প্রকাশ্যে ক্ষমতা ছাড়ার ঘোষণা দিলেন ট্রাম্প। অবশ্য ভক্তদের কিছুটা আশার বাণীও শুনিয়েছেন তিনি। বলেছেন, তার সঙ্গে এই যাত্রা সবে শুরু হয়েছে, এখনো অনেকটা পথ বাকি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'আন্তর্জাতিক,আমেরিকা,রাজনীতি', NULL, 'Published', '2021-01-08 19:41:11', 'Yes', 'No', 2, 1, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 02:41:11', '2021-01-13 03:17:37'),
(24, 'ফিফার সর্বশেষ নিয়মে হবে ঘরোয়া ফুটবল', 'images/news/big//2021/01/08/sa1-21-12-202017-53-28-08-01-202119-55-55.webp', 'images/news/medium/2021/01/08/sa1-21-12-202017-53-28-08-01-202119-55-55.webp', 'images/news/small/2021/01/08/sa1-21-12-202017-53-28-08-01-202119-55-55.webp', NULL, 'করোনাভাইরাসের কারণে ফুটবল ম্যাচের নিয়মে বেশ কিছু পরিবর্তন এনেছে ফিফা। এর মধ্যে উল্লেখযোগ্য হচ্ছে-খেলোয়াড় বদল।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">করোনাভাইরাসের কারণে ফুটবল ম্যাচের নিয়মে বেশ কিছু পরিবর্তন এনেছে ফিফা। এর মধ্যে উল্লেখযোগ্য হচ্ছে-খেলোয়াড় বদল। আগে ম্যাচে সর্বাধিক ৩ জন খেলোয়াড়</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;পরিবর্তন করা যেতো। এখন সেটা বাড়িয়ে করা হয়েছে ৫ জন। নাকআউট ম্যাচে খেলা অতিরিক্ত সময়ে গড়ালে আরও একজন অর্থাৎ ৬ জন খেলোয়াড় পরিবর্তন করা যাবে। ফেডারেশন কাপ দিয়ে এই নতুন নিয়ম শুরু হচ্ছে বাংলাদেশের ঘরোয়া ফুটবলে। একটি দল ৫ জন খেলোয়াড় পরিবর্তন করতে পারবে ৯০ মিনিটের ম্যাচে। তবে এর জন্য যাতে সময় নষ্ট না হয়, তাই ৫ খেলোয়াড় বদল করতে হবে ৩ বারে। ৫ জন ভিন্ন সময়ে বদল করা যাবে না। অতিরিক্ত সময়ে ষষ্ঠ খেলোয়াড় বদল করা যাবে। ছেলেদের খেলায় নিয়মটা চালু হচ্ছে ফেডারেশন কাপ দিয়ে। তবে এর আগে মেয়েদের লিগে ফিফার নতুন নিয়ম অনুসারে ৫ খেলোয়াড় বদলের সুযোগ ছিল।</p>', 'Sports', NULL, 'Published', '2021-01-08 19:55:55', 'No', 'Yes', 5, 5, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 02:55:55', '2021-01-13 03:17:09'),
(25, 'শাহরুখের দেখা না পেলে বাড়ির সামনে থেকে যাবেন না জয়ন্ত', 'images/news/big//2021/01/08/shashrukh-20210108165528-08-01-202120-03-18.webp', 'images/news/medium/2021/01/08/shashrukh-20210108165528-08-01-202120-03-19.webp', 'images/news/small/2021/01/08/shashrukh-20210108165528-08-01-202120-03-19.webp', NULL, 'বলিউড কিং খান শাহরুখ সিনেমায় সাইন না করলে বাড়ি না ফেরার মিশনে নেমেছেন বেঙ্গালুরু-ভিত্তিক ফ্রিল্যান্স চলচ্চিত্র নির্মাতা জয়ন্ত সেগে। শাহরুখকে তাঁর সিনেমার স্ক্রিপ্ট পড়ানোর...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বলিউড কিং খান শাহরুখ সিনেমায় সাইন না করলে বাড়ি না ফেরার মিশনে নেমেছেন বেঙ্গালুরু-ভিত্তিক ফ্রিল্যান্স চলচ্চিত্র নির্মাতা জয়ন্ত সেগে। শাহরুখকে তাঁর সিনেমার স্ক্রিপ্ট পড়ানোর জন্য গত বছরের ডিসেম্বরে বেঙ্গালুরু থেকে মুম্বাই আসেন জয়ন্ত। সুপারস্টার এর বাড়ির বাইরে সূর্যোদয় থেকে মধ্যরাত পর্যন্ত দাঁড়িয়ে থাকেন তিনি। সেই সুবাদে মান্নাতের আশেপাশের সুরক্ষারক্ষীদের সঙ্গেও বন্ধুত্ব সম্পর্ক গড়ে উঠেছে তাঁর।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শাহরুখের সঙ্গে এই প্রজেক্টের নাম জয়ন্ত দিয়েছেন \"প্রজেক্ট এক্স\"। গণমাধ্যমের সঙ্গে আলাপকালে জয়ন্ত বলেন \"গত বছরের আগস্টে শাহরুখের এক সাক্ষাৎকারে আমি ছিলাম। সেখানে তিনি বলেন সর্বশেষ \"জিরোর\" পর আর কোন সিনেমায় সাইন করেননি তিনি। কথাটি শুনেই বেশ খুশী হয়ে গিয়েছিলাম আমি। তাঁর সিনেমা দেখে বড় হয়েছি। আমি তাকে নিয়ে সিনেমা বানাতে চাই। আমি তাঁর সঙ্গে দেখা করতে চাই,তাকে আমার স্ক্রিপ্ট শোনাতে চাই। আর আমি সফল না হওয়া পর্যন্ত তাঁর বাসা থেকে সড়তে চাই না। \"</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রসঙ্গত,জয়ন্তকে নিয়ে সামাজিক যোগাযোগ মাধ্যমে আলোচনাও হচ্ছে বেশ। অনেকে ব্যাপারটি মজা হিসেবে উড়িয়ে দিলেও,অনেকে তাঁর জন্য জানিয়েছেন শুভ কামনা। অন্যদিকে প্রায় দুই বছর পর \"পাঠান\" সিনেমা দিয়ে আবারো শুটিং সেটে ফিরেছেন শাহরুখ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'বলিউড,ShahRukh', NULL, 'Published', '2021-01-08 20:03:18', 'No', 'No', 6, 7, 26, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:03:19', '2021-01-09 08:27:35'),
(26, 'মারা গেছেন নারী নির্মাতা জোয়ান মিকলিন সিলভার', 'images/news/big//2021/01/08/joakin-20210103143140-08-01-202120-05-53.webp', 'images/news/medium/2021/01/08/joakin-20210103143140-08-01-202120-05-53.webp', 'images/news/small/2021/01/08/joakin-20210103143140-08-01-202120-05-53.webp', NULL, 'হলিউডের নারী নির্মাতাদের অগ্রদূত জোয়ান মিকলিন সিলভার আর নেই। ৩১ ডিসেম্বর নিউ ইয়র্কের নিজ বাড়িতে মৃত্যু হয়েছে তার। এই নির্মাতার মৃত্যুর খবরটি নিশ্চিত করেছে নিউ ইয়র্ক টাইমস।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">হলিউডের নারী নির্মাতাদের অগ্রদূত জোয়ান মিকলিন সিলভার আর নেই। ৩১ ডিসেম্বর নিউ ইয়র্কের নিজ বাড়িতে মৃত্যু হয়েছে তার। এই নির্মাতার মৃত্যুর খবরটি নিশ্চিত করেছে নিউ ইয়র্ক টাইমস।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তারা জোয়ান মিকলিন সিলভারের মেয়ে ক্লাওডিয়ার বরাতে জানিয়েছে, ভাসকুলার ডাইমেনশিয়ার রোগে ভুগছিলেন জোয়ান। মৃত্যুকালে তার বয়স হয়েছিল ৮৫ বছর।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">১৯৭৫ সালে মুক্তি পাওয়া &lsquo;হেস্টার স্ট্রিট&rsquo; সিনেমা দিয়ে রাতারাতি আলোচনায় আসেন জোয়ান মিকলিন সিলভার। ২০০৫ সালে ডিরেক্টরস গিল্ড অব আমেরিকায় দেয়া এক সাক্ষাৎকারে জোয়ান মিকলিন সিলভার এ সিনেমা নির্মাণের গল্প জানিয়ে বলেন, এই সিনেমাটি ছিলো অল্প বাজেটের। নিজ উদ্যোগে ৩৪ দিন বিভিন্ন স্থানে শুটিং করে এটি নির্মাণ করেছিলেন তিনি। ছবিটি ফিরিয়ে দিয়েছিল একাধিক স্টুডিও।,কেউ মুক্তি দিতে চায়নি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এগিয়ে এসেছিলেন জোয়ান মিকলিন সিলভারের স্বামী রাফায়েল ডি সিলভার। তিনি পেশায় ছিলেন রিয়েল স্টেট ডেভেলপার। ছবির প্রযোজনা এবং পরিবেশনার দায়িত্ব নেন তিনি। কয়েকটি আন্তর্জাতিক বাজারে বিক্রিও করেন। কান উৎসবে অংশ নেয় ছবিটি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">১৯৭৫ এর অক্টোবরে প্লাজা থিয়েটারে মুক্তি পায় &lsquo;হেস্টার স্ট্রিট&rsquo;। রাতারাতি আয় করে ফেলে ৫ মিলিয়ন ডলার, ছবির বাজেটের ১৪ গুন বেশি। আর জোয়াকিন মিকলিন সিলভার হয়ে উঠেন আমেরিকায় নারী নির্মাতাদের অগ্রদূত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি তার &lsquo;হেস্টার স্ট্রিট&rsquo; সিনেমায় রাশিয়া থেকে ম্যানহ্যাটনে আসা ইহুদি অভিবাসী দম্পতির গল্প তুলে ধরেছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'হলিউড', NULL, 'Published', '2021-01-08 20:05:53', 'No', 'No', 6, 6, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:05:53', '2021-01-09 08:31:18'),
(27, 'চমক দেখাবে ধুম ফোর, ভিলেন এবার দীপিকা!', 'images/news/big//2021/01/08/deepika-2021010314354408-01-202120-08-42.jpg', 'images/news/medium/2021/01/08/deepika-2021010314354408-01-202120-08-42.jpg', 'images/news/small/2021/01/08/deepika-2021010314354408-01-202120-08-42.jpg', NULL, 'বলিউডে ফ্র্যাঞ্চাইজিভিত্তিক সিনেমাগুলোর মধ্যে অন্যতম বড় একটি নাম ‘ধুম’। এ সিরিজের প্রায় সবগুলো কিস্তিই তুমুল জনপ্রিয়তা পেয়েছে। কামিয়ে নিয়েছে কোটি কোটি টাকাও।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বলিউডে ফ্র্যাঞ্চাইজিভিত্তিক সিনেমাগুলোর মধ্যে অন্যতম বড় একটি নাম &lsquo;ধুম&rsquo;। এ সিরিজের প্রায় সবগুলো কিস্তিই তুমুল জনপ্রিয়তা পেয়েছে। কামিয়ে নিয়েছে কোটি কোটি টাকাও। তাই &lsquo;ধুম&rsquo; নিয়ে দর্শকের মনযোগ সবসময়ই অনেক বেশি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">নির্মিত হতে যাচ্ছে এবার &lsquo;ধুম ফোর&rsquo;। নতুন বছরের নতুন উপহার হিসেবে যশরাজ ফিল্মস উপহার দিতে যাচ্ছে সিনেমাটি। শুধু তাই নয় নতুন চমক হিসেবে নতুন এই কিস্তিতে থাকছেন দীপিকা পাডুকোন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সম্প্রতি ফিল্মফেয়ার তাদের এক প্রতিবেদন প্রকাশ করেছে, জন আব্রাহামকে দিয়ে শুরু হওয়া &lsquo;ধুম&rsquo; ফ্র্যাঞ্চাইজির সর্বশেষ কিস্তিতে কেন্দ্রীয় চরিত্রে অভিনয় করেন আমির খান। এবার কিছুটা হাওয়া বদল করে নতুন মেয়ে ভিলেনের সঙ্গে পরিচয় করিয়ে দিতে যাচ্ছে যশরাজ ফিল্মস।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সেই চরিত্র দেখা যেতে পারে বলিউডের জনপ্রিয় মুখ দীপিকা পাডুকোনকে। তবে সিনেমাটি নিয়ে অফিশিয়াল এখনো কোনো কিছু জানায়নি যশরাজ ফিল্মস।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রসঙ্গত, বলিউড কিং খান শাহরুখের বিপরীতে &lsquo;পাঠান&rsquo; সিনেমা শুটিং নিয়ে বেশ ব্যস্ত সময় পার করছেন দীপিকা। দিন কয়েক পর একটি বায়োপিকে দেখা মিলতে পারে এই বলিউড বিউটি কুইনের।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'বলিউড,Dheepika', NULL, 'Published', '2021-01-08 20:08:42', 'No', 'No', 6, 7, 26, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:08:42', '2021-01-09 08:29:38'),
(28, 'করোনা ভ্যাকসিনের ভুয়া অ্যাপ সম্পর্কে সতর্ক করল ভারত', 'images/news/big//2021/01/08/corona-add-20210108153514-08-01-202120-12-17.webp', 'images/news/medium/2021/01/08/corona-add-20210108153514-08-01-202120-12-17.webp', 'images/news/small/2021/01/08/corona-add-20210108153514-08-01-202120-12-17.webp', NULL, 'ভারতে করোনা ভ্যাকসিন পেতে সম্প্রতি একটি অ্যাপ তৈরি করা হয়েছে। তবে এ অ্যাপটি প্লে স্টোরে এখনও আসেনি। তবে একটি অ্যাপ পাওয়া যাচ্ছে, সেটি ভুয়া...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভারতে করোনা ভ্যাকসিন পেতে সম্প্রতি একটি অ্যাপ তৈরি করা হয়েছে। কিন্তু এ অ্যাপটি প্লে স্টোরে এখনও আসেনি। তবে একটি অ্যাপ পাওয়া যাচ্ছে, সেটি ভুয়া। ভারত সরকার এ অ্যাপ ডাউনলোড করতে নিষেধ করেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জানাগেছে, অ্যাপ স্টোরেই রয়েছে \'CoWIN\'-নামের একটি ভুয়া অ্যাপ। এরই মধ্যে অ্যাপটি নিয়ে হানা দিয়েছে জালিয়াতরা। ভুয়া অ্যাপ তৈরি করে বিভ্রান্তির সৃষ্টি করেছে তারা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এই জালিয়াত চক্রের উদ্দেশ্য আসলে কী তা এখনও স্পষ্ট নয়। তবে মনে করা হচ্ছে, ব্যক্তিগত তথ্য হাতিয়ে নিয়ে কোনো বড় চক্রান্ত করার পরিকল্পনা নিশ্চই রয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তাই বুধবার ভারতের স্বাস্থ্য মন্ত্রণালয়ের পক্ষ থেকে টুইট করে ঘোষণা করা হয়, &lsquo;সরকারের আসন্ন অফিসিয়াল প্ল্যাটফর্মের অনুরূপ বেআইনি অ্যাপ তৈরি হয়েছে। কেউ যেন এর ফাঁদে পা না দেয়। এই অ্যাপ্লিকেশন শুধুমাত্র অ্যাপ স্টোরে রয়েছে&rsquo;।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">স্বাস্থ্য মন্ত্রণালয়ের টুইটে উল্লেখ আছে, এই অ্যাপ ডাউনলোড করে ভুলেও নিজের ব্যক্তিগত তথ্য কেউ শেয়ার করবেন না। এতে আপনার জীবনে বিপদ ঘনিয়ে আসতে পারে। MoHFW অফিসিয়াল প্ল্যাটফর্ম থেকে এই অ্যাপের লঞ্চ সংক্রান্ত সমস্ত তথ্য দেয়া হবে। ভারতের মানুষ সেই অনুসারে অ্যাপ ডাউনলোড করে যেন তাদের ব্যক্তিগত তথ্য শেয়ার করে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'অ্যাপ', NULL, 'Published', '2021-01-08 20:12:17', 'No', 'No', 25, NULL, 26, NULL, 3, 1, 2, NULL, '2021-01-12 22:19:31', '2021-01-09 03:12:17', '2021-01-12 22:19:31'),
(29, 'ফেসবুকের সঙ্গে তথ্য শেয়ার করবে হোয়াটসঅ্যাপ', 'images/news/big//2021/01/08/whatsapp-20210107111647-08-01-202120-14-35.webp', 'images/news/medium/2021/01/08/whatsapp-20210107111647-08-01-202120-14-35.webp', 'images/news/small/2021/01/08/whatsapp-20210107111647-08-01-202120-14-35.webp', NULL, 'গ্রাহকদের কাছ থেকে নেয়া তথ্য মালিক সংস্থা ফেসবুক ইনকরপোরেশনের হাতে তুলে দেয়ার সিদ্ধান্ত নিয়েছে হোয়াটসঅ্যাপ। মঙ্গলবার (৫ জানুয়ারি) থেকে গ্রাহকরা এ সংক্রান্ত বিজ্ঞপ্তি পেতে শুরু করেছেন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গ্রাহকদের কাছ থেকে নেয়া তথ্য মালিক সংস্থা ফেসবুক ইনকরপোরেশনের হাতে তুলে দেয়ার সিদ্ধান্ত নিয়েছে হোয়াটসঅ্যাপ। মঙ্গলবার (৫ জানুয়ারি) থেকে গ্রাহকরা এ সংক্রান্ত বিজ্ঞপ্তি পেতে শুরু করেছেন। ভারতে অ্যান্ড্রয়েড বা আইওএস উভয় অপারেটিং সিস্টেমে চলা মোবাইলে হোয়াটসঅ্যাপ এই ধরনের বিজ্ঞপ্তি দিয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এতে বলা হয়েছে, হোয়াটসঅ্যাপ তার শর্ত ও গোপনীয়তার নীতি বদল করছে। এতে ৮ ফেব্রুয়ারির মধ্যে সম্মতি না দিলে এই অ্যাপের পরিষেবা বন্ধ হয়ে যাবে ওই গ্রাহকের জন্য। তারা এটাও বলেছে, চাইলে যে কেউ হেল্প সেন্টারে গিয়ে তার অ্যাকাউন্ট মুছেও ফেলতে পারেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বিজ্ঞপ্তিটিতে তিনটি ক্ষেত্রে আপডেটের কথা উল্লেখ রয়েছে। এক. হোয়াটসঅ্যাপ পরিষেবা ও আপনার (গ্রাহকের) তথ্য আমরা যেভাবে &lsquo;প্রসেস&rsquo; করি। দুই. ব্যবসা প্রতিষ্ঠানগুলো কিভাবে ফেসবুকের পরিষেবাগুলো ও হোয়াটসঅ্যাপ চ্যাট সংরক্ষণ ও ব্যবহার করতে পারবে। তিন. ফেসবুকের সঙ্গে আমাদের অংশীদারি কি ধরনের, কিভাবে ফেসবুকের অন্যান্য প্রোডাক্টকে আমরা তথ্য সরবরাহ করি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গত কয়েক বছর ধরে আর্থিক লেনদেন পরিষেবার দিকে এগুতে চাইছে ফেসবুক। সেই লেনদেন সংক্রান্ত বার্তা বিনিময় হয় হোয়াটসঅ্যাপে। সেই সব বার্তা নিজের মতো করে ব্যবহার করতে বা রাখতে হবে ব্যবসা প্রতিষ্ঠানকে। গোপনীয়তার শর্তাবলি সেই উপযোগী করতে হচ্ছে হোয়াটসঅ্যাপকে। ব্যবসায়িক সংস্থাগুলোর জন্য হোয়াটসঅ্যাপের এনক্রিপটেড মেসেজ ও ফেসবুকের খোলা খাতার মধ্যে একটা স্থায়ী যোগসূত্র গড়ে তোলার প্রচেষ্টা চালাচ্ছে মার্ক জাকারবার্গ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তৃতীয় পক্ষের কাছে ফেসবুকের তথ্য বিক্রির কারণে গত কয়েক বছরে নানা সমস্যার সম্মুখীন হতে হয়েছে জাকারবার্গকে। হোয়াটসঅ্যাপের জনপ্রিয়তা মূলত ভাল যোগাযোগ ব্যবস্থা ও এনক্রিপশনের কারণে। অথচ প্রতিদিন বা মাসে একবার হলেও কোনো ইমেইল অ্যাকাউন্টে যখন বার্তা ও মিডিয়া ফাইল &lsquo;ব্যাক আপ&rsquo; করা হয়, তখন গোপন সেসব বার্তার এনক্রিপশন নামের রক্ষাকবচটি আর থাকে না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">হোয়াটসঅ্যাপ এবার সরাসরি জানিয়ে দিয়েছে, গ্রাহকদের নাম, ফোন নম্বর, ফোনের তথ্য, আইপি অ্যাড্রেস, গ্রাহকের বার্তা বিনিময়ের ধরন, লেনদেন তথ্যসহ অন্যান্য কিছু তথ্য তারা এখন থেকে ফেসবুকের অন্য সংস্থাগুলোর সঙ্গে শেয়ার করবে। এটি তারা কখনো সরাসরি করবে আবার কখনো অনুমতি নিয়ে করবে বলে জানানো হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'ফেসবুক', NULL, 'Published', '2021-01-08 20:14:35', 'No', 'No', 25, NULL, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:14:35', '2021-01-09 08:54:22'),
(30, 'সোশ্যাল মিডিয়া মার্কেটিং কেন করবেন?', 'images/news/big//2021/01/08/media-marketing-2021010213250208-01-202120-17-46.jpg', 'images/news/medium/2021/01/08/media-marketing-2021010213250208-01-202120-17-46.jpg', 'images/news/small/2021/01/08/media-marketing-2021010213250208-01-202120-17-46.jpg', NULL, 'বর্তমান যুগে ডিজিটাল মার্কেটিং-এর কোনো বিকল্প নেই। ডিজিটাল মার্কেটিং-এর অনেক সেক্টরের মধ্যে অন্যতম হচ্ছে সোশ্যাল মিডিয়া মার্কেটিং। সোশ্যাল মিডিয়া মার্কেটিং-এর ব্যাপারে মৌলিক কিছু বিষয় জানা যাক।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বর্তমান যুগে ডিজিটাল মার্কেটিং-এর কোনো বিকল্প নেই। ডিজিটাল মার্কেটিং-এর অনেক সেক্টরের মধ্যে অন্যতম হচ্ছে সোশ্যাল মিডিয়া মার্কেটিং। সোশ্যাল মিডিয়া মার্কেটিং-এর ব্যাপারে মৌলিক কিছু বিষয় জানা যাক।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বর্তমানে প্রযুক্তির যুগে ডিজিটাল পদ্ধতি যারা অবলম্বন করবে না তারা একটা না একটা সময় পিছিয়ে যাবে নিজেদের কাজে কিংবা ব্যবসার কাজে। আর প্রযুক্তির যুগে যেখানে সবাই তাল মিলিয়ে এগিয়ে যাচ্ছে সেখানে আপনি কেনো পিছিয়ে যাবেন? আপনাকে ও এগিয়ে যেতে হবে প্রযুক্তির তালে তালে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সেক্ষেত্রে আমরা যেমন দোকান কিংবা বাজার থেকে কোনো কিছু কিনতাম সেটা আমরা অনলাইনে বাসায় বসেই অর্ডার কিংবা বিক্রি করতে পারবেন। সহজ ভাষায় বলতে গেলে আপনি এ কারণেই ডিজিটাল মার্কেটিং করবেন এবং করা উচিত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সোশ্যাল মিডিয়া মার্কেটিং: সোশ্যাল মিডিয়া মার্কেটিং করার আগে জানতে হবে সোশ্যাল মিডিয়া সম্পর্কে। বর্তমান বিশ্বের অধিকাংশ মানুষ সোশ্যাল মিডিয়া সম্পর্কে অবগত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সোশ্যাল মিডিয়া মার্কেটিং আপনি সাধারণত ফেসবুক, ইন্সটাগ্রাম, টুইটার, লিংকডইন, টিকটকের মাধ্যমে করতে পারবেন। তবে বাংলাদেশের প্রেক্ষাপটে ফেসবুক, ইন্সটাগ্রাম মাধ্যমে মার্কেটিং করতে পারলে অনেক ভালো করতে পারবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">কেন আপনি বাংলাদেশে সোশ্যাল মিডিয়া মার্কেটিং করবেন?</span></span><br style=\"box-sizing: border-box;\" />দারাজ, বিকাশ, ইভালি, ফুডপান্ডার মতো অনেক কোম্পানি ও কিন্তু এই সোশ্যাল মিডিয়া মার্কেটিং করছে সোশ্যাল মিডিয়ার মাধ্যমে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">দেশে এখন কোটি কোটি মানুষ ইন্টারনেট, ফেসবুক ব্যবহার করছে। সেখান থেকে যদি হাজার কিংবা লাখ খানেক কাস্টমার পেয়ে যান এই সোশ্যাল মিডিয়ার মাধ্যমে তাহলে কেন আপনি সোশ্যাল মিডিয়া মার্কেটিং করবেন না?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">কিভাবে করবেন সোশ্যাল মিডিয়া মার্কেটিং?</span></span><br style=\"box-sizing: border-box;\" />এটা অনেকটাই নির্ভর করে আপনার উপর। কারণ আপনার যদি একটা ভালোমানের টাকার বাজেট থাকে তাহলে আপনি সোশ্যাল মিডিয়ায় বুস্ট করতে পারবেন, প্রমোট করতে পারবেন যে কোনো লোকেশন, লিঙ্গ, বয়স অনুযায়ী ও আপনি চাইলে প্রমোট বা বুস্ট করতে পারবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আর প্রমোটের জন্য বাজেট না থাকলে আপনার উচিত হবে একটা ফেসবুক পেজ এবং একটা গ্রুপের মাধ্যমে নিজের বিজনেস বা সার্ভিস সম্পর্কে মানুষকে জানানো। আর নিজের বন্ধুদেরকে সেই সব পেজ এবং গ্রুপগুলোতে ইনভাইটেশন করা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; text-align: center; margin-top: 20px; margin-bottom: 20px; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">&nbsp;</div>', 'সোশ্যাল মিডিয়া,মার্কেটিং', NULL, 'Published', '2021-01-08 20:17:46', 'No', 'No', 25, NULL, 24, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:17:46', '2021-01-09 08:55:54'),
(31, 'বদলে যাচ্ছে ফেসবুক, ‘লাইক’ দেয়া যাবে না পাবলিক পেজে', 'images/news/big//2021/01/08/fb-lke-20210107134436-08-01-202120-19-42.webp', 'images/news/medium/2021/01/08/fb-lke-20210107134436-08-01-202120-19-42.webp', 'images/news/small/2021/01/08/fb-lke-20210107134436-08-01-202120-19-42.webp', NULL, 'নতুন করে সাজানো হচ্ছে জনপ্রিয় সামাজিক যোগাযোগ মাধ্যম ফেসবুক। এতে ফেসবুকের পাবলিক পেজে লাইক দেয়ার বাটন আর থাকবে না', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">নতুন করে সাজানো হচ্ছে জনপ্রিয় সামাজিক যোগাযোগ মাধ্যম ফেসবুক। এতে ফেসবুকের পাবলিক পেজে লাইক দেয়ার বাটন আর থাকবে না। বুধবার (৬ জানুয়ারি) এক ব্লগ পোস্টে এ তথ্য জানিয়েছে ফেসবুক কর্তৃপক্ষ। খবর রয়টার্স।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ফেসবুক কর্তৃপক্ষ জানিয়েছে, এখন যেমন বিভিন্ন শিল্পী, তারকা, অভিনেত্রী, ব্যবসায়িক পেজে লাইক দিয়ে পরবর্তী হালনাগাদ তথ্য পাওয়া যায়, নতুন করে সাজানোর পর আর সেই সুযোগ থাকবে না। তবে সেক্ষেত্রে যে ব্যক্তি যে পেজের ফলোয়ার, সেই পেজে লাইক দেয়া না থাকলেও তিনি সেই পেজের হালনাগাদ তথ্য পাবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এখন থেকে ফেসবুকের পাবলিক পেজে শুধু ফলোয়ার সংখ্যা দেখা যাবে। নিউজ ফিডে সবাই নিজের মতামত জানাতে পারবেন। ভক্তদের সঙ্গে সেখানেই যোগাযোগ রাখতে পারবেন তারকারা।<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />এ ধরনের পরিবর্তনের ব্যাপারে ফেসবুক বলছে, &lsquo;আমরা লাইক বাটন সরিয়ে দিচ্ছি। গুরুত্ব দেয়া হচ্ছে ফলোয়ারদের দিকে। লোকেরা যাতে তাদের প্রিয় পেজগুলোর সঙ্গে আরও সহজে যোগাযোগ রাখতে পারে সেদিকে লক্ষ্য গুরুত্ব দিয়েই এমন পরিবর্তন আনা হচ্ছে।&rsquo;</p>', 'Technology', NULL, 'Published', '2021-01-08 20:19:42', 'No', 'No', 25, NULL, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:19:42', '2021-01-09 03:19:42'),
(32, 'প্রবাসী কল্যাণ ব্যাংকে ২৭৯ জনের চাকরি', 'images/news/big//2021/01/08/pkb-cover-20210107113224-108-01-202120-23-08.jpg', 'images/news/medium/2021/01/08/pkb-cover-20210107113224-108-01-202120-23-08.jpg', 'images/news/small/2021/01/08/pkb-cover-20210107113224-108-01-202120-23-08.jpg', NULL, 'ব্যাংকার্স সিলেকশন কমিটির সদস্যভুক্ত প্রবাসী কল্যাণ ব্যাংকে ০৩টি পদে ২৭৯ জনকে নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ২১ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চাকরির ধরন: স্থায়ী<br style=\"box-sizing: border-box;\" />প্রার্থীর ধরন: নারী-পুরুষ<br style=\"box-sizing: border-box;\" />কর্মস্থল: যেকোনো স্থান<br style=\"box-sizing: border-box;\" />বয়স: ০১ মার্চ ২০২০ তারিখে ৩০ বছর। বিশেষ ক্ষেত্রে ৩২ বছর</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আবেদনের নিয়ম: আগ্রহীরা বাংলাদেশ ব্যাংকের ওয়েবসাইট&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent; border-bottom: 2px solid #b30f0f !important;\" title=\"www.erecruitment.bb.org.bd\" href=\"http://www.erecruitment.bb.org.bd/\" target=\"_blank\" rel=\"nofollow noopener\">www.erecruitment.bb.org.bd</a>&nbsp;এর মাধ্যমে আবেদন করতে পারবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আবেদন ফি: রকেটের মাধ্যমে ২০০ টাকা অফেরতযোগ্য হিসেবে পাঠাতে হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আবেদনের শেষ সময়: ২১ জানুয়ারি ২০২১ তারিখ রাত ১১.৫৯ মিনিট পর্যন্ত আবেদন করতে পারবেন।</p>', 'Jobs', NULL, 'Published', '2021-01-08 20:23:08', 'No', 'No', 26, 29, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:23:08', '2021-01-09 03:23:08'),
(33, 'স্কয়ার ফার্মাসিউটিক্যালসে একাধিক পদে চাকরি', 'images/news/big//2021/01/08/square-20210105113710-08-01-202120-25-24.webp', 'images/news/medium/2021/01/08/square-20210105113710-08-01-202120-25-24.webp', 'images/news/small/2021/01/08/square-20210105113710-08-01-202120-25-24.webp', NULL, 'স্কয়ার ফার্মাসিউটিক্যালস লিমিটেডে ০২টি পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা নির্ধারিত সময়ে সাক্ষাৎকারে অংশগ্রহণ করতে পারবেন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\"><span style=\"font-weight: 400;\">স্কয়ার ফার্মাসিউটিক্যালস লিমিটেডে ০২টি পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা নির্ধারিত সময়ে সাক্ষাৎকারে অংশগ্রহণ করতে পারবেন।</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">পদের নাম: সেলস প্রমোশন অফিসার (এগ্রোভেট)</span><br style=\"box-sizing: border-box;\" />শিক্ষাগত যোগ্যতা: স্নাতক<br style=\"box-sizing: border-box;\" />অভিজ্ঞতা: দরকার নেই<br style=\"box-sizing: border-box;\" />বেতন: আলোচনা সাপেক্ষে<br style=\"box-sizing: border-box;\" />সাক্ষাৎকার: ০৮ জানুয়ারি ২০২১</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">পদের নাম: সেলস ডেভেলপমেন্ট অফিসার (ক্রপ কেয়ার)</span><br style=\"box-sizing: border-box;\" />শিক্ষাগত যোগ্যতা: স্নাতক<br style=\"box-sizing: border-box;\" />অভিজ্ঞতা: দরকার নেই<br style=\"box-sizing: border-box;\" />বেতন: আলোচনা সাপেক্ষে<br style=\"box-sizing: border-box;\" />সাক্ষাৎকার: ০৯ জানুয়ারি ২০২১</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">চাকরির ধরন: ফুল টাইম</span><br style=\"box-sizing: border-box;\" />প্রার্থীর ধরন: নারী-পুরুষ<br style=\"box-sizing: border-box;\" />বয়স: ২৯ বছর<br style=\"box-sizing: border-box;\" />কর্মস্থল: যেকোনো স্থান</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">সাক্ষাৎকারের স্থান:</span>&nbsp;কর্পোরেট হেডকোয়ার্টার্স, স্কয়ার সেন্টার, ৪৮ মহাখালী সি/এ, ঢাকা-১২১২।<br style=\"box-sizing: border-box;\" />সময়: সকাল সাড়ে ৮টা থেকে দুপুর ১২টা পর্যন্ত।</p>', 'Jobs', NULL, 'Published', '2021-01-08 20:25:24', 'No', 'No', 26, 29, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:25:24', '2021-01-09 03:25:24'),
(34, '৬ ব্যাংকে ৭৬ জনের চাকরির সুযোগ', 'images/news/big//2021/01/08/6bank-20210103110021-08-01-202120-27-19.webp', 'images/news/medium/2021/01/08/6bank-20210103110021-08-01-202120-27-19.webp', 'images/news/small/2021/01/08/6bank-20210103110021-08-01-202120-27-19.webp', NULL, 'ব্যাংকার্স সিলেকশন কমিটির সদস্যভুক্ত ০৬ ব্যাংকে ৭৬ জনকে নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ১৪ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">ব্যাংকার্স সিলেকশন কমিটির সদস্যভুক্ত ০৬ ব্যাংকে ৭৬ জনকে নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ১৪ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">পদের নাম: সহকারী প্রোগ্রামার</span><br style=\"box-sizing: border-box;\" />পদসংখ্যা: ৭৬ জন<br style=\"box-sizing: border-box;\" />শিক্ষাগত যোগ্যতা: কম্পিউটার বিজ্ঞান/কম্পিউটার বিজ্ঞান ও প্রকৌশল/ইনফরমেশন টেকনোলজি/ ইনফরমেশন অ্যান্ড কমিউনিকেশন টেকনোলজি/ইনফরমেশন অ্যান্ড কমিউনিকেশন ইঞ্জিনিয়ারিং/সফটওয়্যার ইঞ্জিনিয়ারিং/কম্পিউটার সায়েন্স ও সফটওয়্যার ইঞ্জিনিয়ারিং/কম্পিউটার সায়েন্স ও টেলিকমিউনিকেশন ইঞ্জিনিয়ারিংয়ে স্নাতকোত্তর/স্নাতক/স্নাতক (সম্মান)<br style=\"box-sizing: border-box;\" />বেতন: ২২,০০০-৫৩,০৬০ টাকা</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চাকরির ধরন: ফুল টাইম<br style=\"box-sizing: border-box;\" />প্রার্থীর ধরন: নারী-পুরুষ<br style=\"box-sizing: border-box;\" />বয়স: ০১ মার্চ ২০২০ তারিখে ৩০ বছর। বিশেষ ক্ষেত্রে ৩২ বছর</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আবেদনের নিয়ম: বাংলাদেশ ব্যাংকের ওয়েবসাইট&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent; border-bottom: 2px solid #b30f0f !important;\" title=\"www.erecruitment.bb.org.bd\" href=\"http://www.erecruitment.bb.org.bd/\" target=\"_blank\" rel=\"nofollow noopener\">www.erecruitment.bb.org.bd</a>&nbsp;এর মাধ্যমে আবেদন করতে পারবেন।</p>', 'Jobs', NULL, 'Published', '2021-01-08 20:27:19', 'No', 'No', 26, 29, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:27:19', '2021-01-09 03:27:19'),
(35, 'নভোএয়ারে অভিজ্ঞতা ছাড়াই চাকরির সুযোগ', 'images/news/big//2021/01/08/novo-air-20210102142319-08-01-202120-29-06.webp', 'images/news/medium/2021/01/08/novo-air-20210102142319-08-01-202120-29-06.webp', 'images/news/small/2021/01/08/novo-air-20210102142319-08-01-202120-29-06.webp', NULL, 'বেসরকারি বিমান পরিবহন সংস্থা নভোএয়ারে ‘ট্রেইনি ইঞ্জিনিয়ার’ পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ১০ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">বেসরকারি বিমান পরিবহন সংস্থা নভোএয়ারে &lsquo;ট্রেইনি ইঞ্জিনিয়ার&rsquo; পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ১০ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।</span></p>', 'Rent', NULL, 'Published', '2021-01-08 20:29:06', 'No', 'No', 26, 30, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:29:06', '2021-01-09 03:29:06'),
(36, 'তথ্য ও যোগাযোগ প্রযুক্তি বিভাগে ৪৫ জনের চাকরি', 'images/news/big//2021/01/08/cover-20210102112337-08-01-202120-30-42.webp', 'images/news/medium/2021/01/08/cover-20210102112337-08-01-202120-30-42.webp', 'images/news/small/2021/01/08/cover-20210102112337-08-01-202120-30-42.webp', NULL, 'তথ্য ও যোগাযোগ প্রযুক্তি বিভাগের বাংলাদেশ ডাটা সেন্টার কোম্পানি লিমিটেডের ২৭টি পদে ৪৫ জনকে নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ২১ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।\r\n\r\nপ্রতিষ্ঠানের নাম: তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তথ্য ও যোগাযোগ প্রযুক্তি বিভাগের বাংলাদেশ ডাটা সেন্টার কোম্পানি লিমিটেডের ২৭টি পদে ৪৫ জনকে নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ২১ জানুয়ারি পর্যন্ত আবেদন করতে পারবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">প্রতিষ্ঠানের নাম: তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ</span></span></p>', 'Rent', NULL, 'Published', '2021-01-08 20:30:42', 'No', 'No', 26, 30, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 03:30:43', '2021-01-09 03:30:43'),
(37, 'আনারস পাতার ড্রোন বানালেন মালয়েশিয়ার গবেষকরা', 'images/news/big//2021/01/08/1-fream1-20210107110338-08-01-202121-12-53.webp', 'images/news/medium/2021/01/08/1-fream1-20210107110338-08-01-202121-12-53.webp', 'images/news/small/2021/01/08/1-fream1-20210107110338-08-01-202121-12-53.webp', NULL, 'বর্তমান বিশ্বে প্রযুক্তির ব্যবহার অপরিহার্য। নানা ধরনের প্রযুক্তি পণ্য বাজারে এসেছে। এর মধ্যে ভিডিও ধারণে অন্যতম গুরুত্বপূর্ণ অঙ্গ হয়ে উঠছে ড্রোন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বর্তমান বিশ্বে প্রযুক্তির ব্যবহার অপরিহার্য। নানা ধরনের প্রযুক্তি পণ্য বাজারে এসেছে। এর মধ্যে ভিডিও ধারণে অন্যতম গুরুত্বপূর্ণ অঙ্গ হয়ে উঠছে ড্রোন। বৈজ্ঞানিক গবেষণা থেকে শুরু করে যেকোনো এলাকার নজরদারিতে ড্রোন এখন অপরিহার্য। এছাড়া সিনেমার শুটিং, পণ্য সরবরাহ এমনকি মিটিং-মিছিলেও ড্রোনের ব্যবহার বেড়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ পরিস্থিতিতে ড্রোনকে আরও বেশি কার্যকর ও পরিবেশের সাথে মানিয়ে নিতে বিজ্ঞানীরা কাজ করছেন। সেই কাজের ধারাবাহিকতায় এবার ড্রোনের চিত্তাকর্ষক এক রূপ দিয়েছেন মালয়েশিয়ার একদল গবেষক। তারা অভিনব পদ্ধতির সাহায্যে পরিত্যক্ত আনারসের পাতা রূপান্তরের মাধ্যমে এক অসাধারণ উপাদান তৈরি করেছেন, যা দিয়ে ড্রোনের কাঠামো তৈরি করা যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বিশেষজ্ঞরা বলছেন, এটা সুদূরপ্রসারী ভাবনা। এই ধরনের ড্রোন তৈরি হলে তার দামও যেমন কম হবে, সেই সঙ্গে বস্তুটিও শক্তিশালী এবং পরিবেশবান্ধব হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রয়টার্সের এক প্রতিবেদনে বলা হয়েছে, এই প্রকল্পে মোহাম্মদ তারিক হামিদ সুলতান নামে এক গবেষক নেতৃত্ব দিচ্ছেন। তিনি মালয়েশিয়ার পুত্রা বিশ্ববিদ্যালয়ের অধ্যাপক। কয়েক বছর ধরেই এ নিয়ে গবেষণা করছেন তারিক হামিদ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শুধু ড্রোনই নয়, আরও নানাবিধ অ্যারোস্পেস অ্যাপ্লিকেশনেই আনারসের পাতা রূপান্তর করে একটি ফাইবারে রূপ দিয়ে এমন কাজ করার উদ্যোগ নিয়েছেন পুত্রা বিশ্ববিদ্যালয়ের এই গবেষক। সম্প্রতি তারিক হামিদ ও তার দল সেই আনারসের পাতা থেকে ফাইবারটি তৈরি করে ফেলেছেন, যা ড্রোনের বিভিন্ন অংশে কাজে লাগবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তারিক হামিদ জানান, জৈব কোনো উপাদান থেকে তৈরি করা ড্রোন অনেকাংশেই সিন্থেটিক ফাইবার দ্বারা নির্মিত ড্রোনের চেয়ে শক্তিশালী। শক্তি, ওজন সবদিক থেকেই জৈব উপায়ে নির্মিত ফাইবারের ড্রোন সেরা। পাশাপাশি সেগুলোর ওজনও বেশ কম, খরচও কম পড়বে এবং খুব সহজেই উড়তে পারে গন্তব্যে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি আরও বলেন, খুব সহজ ভাবে বলতে গেলে, এই ধরনের ফাইবারে তৈরি কোনো ড্রোন যদি নষ্টও হয়ে যায়, তাহলে তা মাটিতে পুঁতে দেয়ার পরই আদতে নষ্ট হবে। কারণ, এগুলো সম্পূর্ণভাবে পরিবেশবান্ধব।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রয়টার্স বলছে, এই ধরনের প্রোটোটাইপ ড্রোন যেগুলো গবেষক তারিক হামিদ ও তার দল তৈরি করেছেন, সেগুলো ১ হাজার মিটার পর্যন্ত উড়তে পারে। এছাড়াএটা বাতাসে কমপক্ষে ২০ মিনিট অবধি ভেসে থাকতে পারবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এই একই পদ্ধতিতে আরও একটু বড় মাপের ড্রোন তৈরি করা যায় কিনা তা নিয়ে ভাবছেন এই গবেষক দল, যাতে বাস্তব জীবনের প্রতিটি ক্ষেত্রেই এর ব্যবহার করা যায়।</p>', 'Technology,Drone', NULL, 'Published', '2021-01-08 21:12:53', 'No', 'No', 25, NULL, 27, NULL, 3, 1, 2, NULL, '2021-01-09 08:57:37', '2021-01-09 04:12:53', '2021-01-09 08:57:37'),
(38, 'জেফ বেজোসকে টপকে বিশ্বের শীর্ষ ধনী এলন মাস্ক', 'images/news/big//2021/01/08/mask-2021010800284108-01-202121-16-40.jpg', 'images/news/medium/2021/01/08/mask-2021010800284108-01-202121-16-40.jpg', 'images/news/small/2021/01/08/mask-2021010800284108-01-202121-16-40.jpg', NULL, 'জেফ বেজোসকে টপকে বিশ্বের শীর্ষ ধনীর তকমা জিতেছেন মার্কিন বৈদ্যুতিক গাড়ি নির্মাতা প্রতিষ্ঠান টেসলার প্রধান নির্বাহী এলন মাস্ক।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জেফ বেজোসকে টপকে বিশ্বের শীর্ষ ধনীর তকমা জিতেছেন মার্কিন বৈদ্যুতিক গাড়ি নির্মাতা প্রতিষ্ঠান টেসলার প্রধান নির্বাহী এলন মাস্ক। এখন তিনি ১৮৫ বিলিয়ন মার্কিন ডলারেরও বেশি সম্পদের মালিক।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">টেসলার শেয়ারের দাম ক্রমাগত বৃদ্ধির ফলে বৃহস্পতিবার (৭ জানুয়ারি) তিনি অ্যামাজনের প্রতিষ্ঠাতা জেফ বেজোসকে পেছনে ফেলে প্রথম স্থানে উঠে আসেন। খবর বিবিসির।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এই করোনা মহামারির মধ্যেও তড়তড় করে বেড়েছে তার টেসলার বাণিজ্য। গত বুধবার প্রমবারের মতো টেসলা কোম্পানির বাজার মূলধন ৭০০ বিলিয়ন ছাড়িয়ে যায়, আর তাতেই মাস্কের বাজিমাত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এই গাড়ি কোম্পানিটির সম্পদ এখন টয়োটা, ভক্সওয়াগন, হুন্দাই, জিএম এবং ফোর্ডের সম্মিলিত সম্পদকেও ছাড়িয়ে গেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">করোনাকালে জেফ বেজসের সম্পদের পরিমাণও বেড়েছে। তবে, তিনি তার কোম্পানি অ্যামাজনের ৪ শতাংশ সম্পদ তার সাবেক স্ত্রী ম্যাকেইঞ্জ স্কটকে লিখে দেন। আর এতেই এলন মাস্কের সম্পদের পরিমাণ বেজসের সম্পদের পরিমাণকে ছাড়িয়ে যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'প্রযুক্তি', NULL, 'Published', '2021-01-08 21:16:40', 'No', 'No', 25, NULL, 22, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 04:16:40', '2021-01-09 08:59:34'),
(39, 'ছুটির দিনে পাতে রাখুন সুগন্ধি পোলাও', 'images/news/big//2021/01/08/cover-20210108121207-08-01-202123-11-39.webp', 'images/news/medium/2021/01/08/cover-20210108121207-08-01-202123-11-39.webp', 'images/news/small/2021/01/08/cover-20210108121207-08-01-202123-11-39.webp', NULL, 'এবারের ছুটির দিন পরিবারসহ উপভোগ করতে পাতে রাখুন সুগন্ধি পোলাও। যেকোনো মাংসের সঙ্গে এ পোলাও দারুণ মানিয়ে যাবে। জেনে নিন রেসিপি-', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ছুটির দিন মানেই ভরপেট খাওয়া-দাওয়া। পোলাও, বিরিয়ানি, কোফতা, কারি, ডেজার্ট সব কিছুর আয়োজনই থাকে ছুটির দিনটি ঘিরে। এবারের ছুটির দিন পরিবারসহ উপভোগ করতে পাতে রাখুন সুগন্ধি পোলাও। যেকোনো মাংসের সঙ্গে এ পোলাও দারুণ মানিয়ে যাবে। জেনে নিন রেসিপি-</p>\r\n<p><img src=\"https://cdn.jagonews24.com/media/imgAllNew/BG/2019November/recipe1-20210108121055.jpg\" alt=\"Recipe\" /></p>\r\n<p><span style=\"box-sizing: border-box; font-family: SolaimanLipi; font-size: 20px; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">উপকরণ</span></span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">১. বাসমতি চাল ২ কাপ</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">২. ঘি ৫ টেবিল চামচ</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৩. মাঝারি ২টি পেঁয়াজ কুচি</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৪. গরম মশলা গুঁড়া ১ টেবিল চামচ</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৫. লবণ প্রয়োজনমতো</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৬. চিনি ৫০ গ্রাম</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৭. কাজুবাদাম কুচি ২০ গ্রাম</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৮. কিশমিশ ২০ গ্রাম</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">৯. গরম দুধে ভেজানো এক চিমটি জাফরান</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">১০. মটরশুটি এক মুঠো</span></p>\r\n<p><img src=\"https://cdn.jagonews24.com/media/imgAllNew/BG/2019November/recipe2-20210108121113.jpg\" alt=\"Recipe\" /></p>\r\n<p><span style=\"box-sizing: border-box; font-family: SolaimanLipi; font-size: 20px; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">পদ্ধতি:</span></span><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">&nbsp;প্রথমে ২০ মিনিট চাল ভিজিয়ে রাখুন। এরপর ভালো করে চাল ধুয়ে নিয়ে পানি ঝরিয়ে নিন। একটি বড় প্যানে ঘি গরম করে তাতে পেঁয়াজ কুচি ও গরম মশলার গুঁড়া দিয়ে ভেজে নিন। পেঁয়াজ বাদামি রং হলে চাল দিয়ে পাঁচ মিনিট ভাজুন।</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'লাইফস্টাইল', NULL, 'Published', '2021-01-08 23:11:39', 'No', 'No', 37, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 06:11:39', '2021-01-11 05:20:03'),
(40, 'শীতে ত্বকের উজ্জ্বলতা ফেরাবে চালের গুঁড়া', 'images/news/big//2021/01/08/news-frame-20210107133852-08-01-202123-14-23.webp', 'images/news/medium/2021/01/08/news-frame-20210107133852-08-01-202123-14-23.webp', 'images/news/small/2021/01/08/news-frame-20210107133852-08-01-202123-14-23.webp', NULL, 'প্রাচীনকাল থেকেই রূপচর্চায় চালের গুঁড়া ব্যবহৃত হয়ে আসছে। এটি ত্বকে স্ক্রাবার হিসেবে কাজ করে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রাচীনকাল থেকেই রূপচর্চায় চালের গুঁড়া ব্যবহৃত হয়ে আসছে। এটি ত্বকে স্ক্রাবার হিসেবে কাজ করে। ত্বকের গভীর থেকে ময়লা দূর করতে পারে চালের গুঁড়া। শীতে ত্বক হয়ে পড়ে রুক্ষ্ম-শুষ্ক। তাই এ সময় ত্বকের প্রায়োজন বাড়তি যত্ন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ত্বকের যত্নে ডিআইওয়াই ফেস প্যাকের বিকল্প নেই। শীতে ত্বককে হাইড্রেট রাখতে ব্যবহার করতে পারেন চালের গুঁড়া। জেনে নিন চালের গুঁড়া কীভাবে ফেসপ্যাক হিসেবে ব্যবহার করবেন-</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><img src=\"https://cdn.jagonews24.com/media/imgAllNew/BG/2019November/1-20210107133817.jpg\" alt=\"jagonews24\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চালের গুঁড়া ও হলুদ মিশিয়ে একটি ফ্যাসপ্যাক তৈরি করতে পারেন। এক চামচ চালের গুঁড়া, এক চামচ ফ্রেশ ক্রিম এবং এক চিমটি হলুদ গুঁড়া একসঙ্গে মিশিয়ে পেস্ট তৈরি করুন। এটি মুখ এবং গলায় ব্যবহার করুন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&gt;&gt; ১৫ মিনিট পর মুখ ধুয়ে ফেলুন। হলুদে রয়েছে অ্যান্টিসেপটিক উপাদান, যা ত্বকের ময়লা দূর করে। ক্রিম ত্বককে আর্দ্র রাখে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&gt;&gt; চালের গুঁড়া ও ডিম দিয়ে ফেসপ্যাক তৈরি করা যায়। এজন্য এক চামচ চালের গুঁড়া, একটি ডিমের সাদা অংশ এবং দুই থেকে তিন ফোঁটা গ্লিসারিন একসঙ্গে মিশিয়ে নিন।</p>', 'লাইফস্টাইল', NULL, 'Published', '2021-01-08 23:14:23', 'No', 'No', 37, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 06:14:23', '2021-01-11 05:36:06');
INSERT INTO `news` (`id`, `title`, `feature_photo`, `feature_medium`, `feature_small`, `photo_caption`, `meta_description`, `description`, `topic`, `video_url`, `published_status`, `published_date`, `is_cover_news`, `show_at_homepage`, `category_id`, `sub_cat_id`, `division_id`, `district_id`, `news_author_id`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(41, '১২৩ প্রজাতির পাখি দেখতে চলে যান হাজারিখিলে', 'images/news/big//2021/01/08/cover11-2021010617502308-01-202123-23-40.jpg', 'images/news/medium/2021/01/08/cover11-2021010617502308-01-202123-23-40.jpg', 'images/news/small/2021/01/08/cover11-2021010617502308-01-202123-23-40.jpg', NULL, 'প্রাকৃতিক সৌন্দর্যে ভরা এক স্থান হাজারিখিল। চট্টগ্রামের ফটিকছড়িতে অবস্থিত হাজারিখিলের সৌন্দর্য অত্যন্ত মনোমুগ্ধকর।', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">প্রাকৃতিক সৌন্দর্যে ভরা এক স্থান হাজারিখিল। চট্টগ্রামের ফটিকছড়িতে অবস্থিত হাজারিখিলের সৌন্দর্য অত্যন্ত মনোমুগ্ধকর। স্থানটিকে গিরিপথ, সুরঙ্গ, পাহাড়ি ঝরনা ও চা বাগান ঘিরে রেখেছে। যেখানে গেলে প্রকৃতির সবটুকু সৌন্দর্য উপভোগের সুযোগ রয়েছে।</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">হাজারিখিলের সবচেয়ে আকর্ষণীয় বিষয় হলো নানা প্রজাতির পাখির কোলাহল। আপনি যদি পাখির রাজত্বে হারিয়ে যেতে চান, তাহলে চাখ বন্ধ করে হাজারিখিল চলে যান। যেখানে দেখতে পাবেন হাজারো নাম না জানা পাখির আনাগোনা। হাজারিখিল অভয়ারণ্য আপনাকে পাখির কলকাকলিতে মুখরিত করে রাখবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">২৯০৮ হেক্টর জমি নিয়ে অভয়ারণ্যটি গঠিত। ১৮৯৩ সালে জায়গাটিকে &lsquo;রামগড়-সীতাকুণ্ডু সংরক্ষিত বন&rsquo; হিসেবে ঘোষণা করা হয়। বন্যপ্রাণিতে মুখর হাজারিখিলে দেখা মেলে নানা জীব-জন্তুর। এরমধ্যে উল্লেখযোগ্য হলো- ভাল্লুক, বনবিড়াল, মেছোবাঘ, শিয়াল, মায়া হরিণ, সাম্বার, বনকুকুর, বনছাগল, বানর ও হনুমান। কখনো দেখা মেলে চিতাবাঘেরও!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মোট ৮ প্রজাতির উভচর এবং ২৫ প্রজাতির সরীসৃপ রয়েছে এ বনে। তবে পাখির অভয়ারণ্য হিসেবে খ্যাত হাজারিখিলে রয়েছে প্রায় ১২৩ প্রজাতিরও বেশি পাখি! সে হিসেবে হাজারিখিল অভয়ারণ্যকে পাখিপ্রেমীদের স্বর্গ বললেও ভুল হবে না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বিশেষ করে বিপন্নপ্রায় কাঠময়ূর আর মথুরার দেখা পাওয়া যায় হাজারিখিলে। আছে কাউ ধনেশ ও হুতুম প্যাঁচাও। বিভিন্ন প্রজাতির উদ্ভিদের সমারোহ থাকায় চিরসবুজ এ বনে এমন কিছু প্রজাতির পাখির সন্ধান মিলেছে। যা অন্য কোনো বনে সচরাচর দেখা যায় না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এরমধ্যে রয়েছে- হুদহুদ, চোখ গেল, নীলকান্ত, বেঘবৌ ও আবাবিল। এসব পাখির আকার-আকৃতি, বর্ণ ও স্বভাব বৈচিত্র্যময়। সম্প্রতি বাংলাদেশ বন গবেষণা ইনস্টিটিউটের উদ্যোগের এক গবেষণায় পাখির এসব প্রজাতির সন্ধান পায় গবেষকদল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ অভয়ারণ্যে নানা প্রজাতির পাখির সঙ্গে শীতকালে যোগ দেয় অতিথি পাখির দল। হাজারিখিল অভয়ারণ্যে ঢুকতেই দেখবেন, হাতের বামপাশে বিশাল চা বাগান আর ডানপাশের সিঁড়ি বেয়ে উঠলেই দেখা মিলবে বন্যপ্রাণির। এখানে আপনি হারিয়ে যাবেন চা বাগানের দৃষ্টিনন্দন সৌন্দর্যে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ ছাড়া হাজারিখিলে নানা ধরনের বৃক্ষের সমাহারও উপভোগ করতে পারবেন। তবে চিরহরিৎ গাছই বেশি এখানে। আছে গর্জন, চাপালিশ, সেগুন, কড়ই, মেহগনি ও চুন্দুল। বিখ্যাত রাঙ্গাপানি চা বাগানটিও এ অভয়ারণ্যের পাশেই অবস্থিত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">যেভাবে যাবেন: ঢাকা থেকে চট্টগ্রাম যেতে পারেন বাসে বা ট্রেনে। এরপর ফটিকছড়ি হয়ে হাজারিখিল যেতে হবে। অক্সিজেন থেকে ফটিকছড়ির বাস পাবেন। ভাড়া জনপ্রতি ৪০ টাকা। বাসে মোটামুটি আধাঘণ্টার জার্নি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাসে আপনাকে নামতে হবে বিবিরহাট। সেখানে নেমেই রোডের বিপরীতে গিয়ে সিএনজি দেখতে পাবেন। যেগুলো হাজারিখিল বাজার পর্যন্ত জনপ্রতি ৩৫ টাকা ভাড়া নেয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাজারে নেমে হাজারিখিল অভয়ারণ্য ১০ মিনিটের পথ। সেখানে গিয়ে গাইড সঙ্গে করে প্রায় আড়াই ঘণ্টা পাহাড়ের গিরিপথ ট্র্যাকিং করার পর পাওয়া যাবে &lsquo;কালাপানির ঝরনা&rsquo;। সেখান থকে ফিরে এসে চা বাগান পেরিয়ে যেতে পারেন সুড়ঙ্গ দেখতে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">খাবেন কোথায়: হাজারিখিল অভয়ারণ্যে দুপুরে খাওয়ার জন্য একটি ভাতঘর আছে। যেখানে জনপ্রতি ১৩০ টাকা দিয়ে প্যাকেজ নিতে পারেন। এ ছাড়াও ফটিকছড়ি শহরে নানা ধরনের খাবারের হোটেল আছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">থাকবেন কোথায়: থাকার জন্য চট্টগ্রাম বা ফটিকছড়ি শহরে অনেক হোটেল আছে। অবশ্যই ভাড়া দরদাম করে রুম দেখে উঠবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'ভ্রমণ', NULL, 'Published', '2021-01-08 23:23:40', 'No', 'No', 7, 10, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 06:23:40', '2021-01-10 17:38:29'),
(42, 'শীতে পাহাড়ে ভ্রমণকালে যেসব বিষয় মানা জরুরি', 'images/news/big//2021/01/08/bogra-2021010216503008-01-202123-25-50.jpg', 'images/news/medium/2021/01/08/bogra-2021010216503008-01-202123-25-50.jpg', 'images/news/small/2021/01/08/bogra-2021010216503008-01-202123-25-50.jpg', NULL, 'শীতে রাঙ্গামাটি-বান্দরবান ভ্রমণে মেতেছেন সবাই। বিশেষ করে সাজেক যাওয়ার পরিকল্পনা এখন সবার মনেই। আর তাই তো সুযোগ পেলেই সবাই ঢুঁ মারতে যাচ্ছেন অনিন্দ্য সুন্দর এ স্থানে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শীতে রাঙ্গামাটি-বান্দরবান ভ্রমণে মেতেছেন সবাই। বিশেষ করে সাজেক যাওয়ার পরিকল্পনা এখন সবার মনেই। আর তাই তো সুযোগ পেলেই সবাই ঢুঁ মারতে যাচ্ছেন অনিন্দ্য সুন্দর এ স্থানে। এ ছাড়া নীলগিরি, নীলাচল, সীতাকুণ্ডুর চন্দ্রনাথ পাহাড় তো রয়েছেই। সব পাহাড়ি পর্যটনকেন্দ্রেই এখন ভ্রমণপ্রেমীদের ভিড়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">পাহাড়ি সৌন্দর্য ব্যাখ্যা করা খুবই কঠিন। পাহাড়ের চূড়ায় দাঁড়িয়ে মেঘ হাতে নেওয়ার সৌভাগ্য অনেকেরই হয় না। তাই এ অনুভূতি যে কতটা সুখকর, তা বলার অপেক্ষা রাখে না। অনেকেই শারীরিক বিভিন্ন সমস্যার কারণে বা উচ্চতাভীতি থাকায় পাহাড়ে উঠতে পারেন না। তবে তারা চাইলেই নীলগিরি-নীলাচলে গিয়ে ঘুরে আসতে পারেন।</p>', 'ভ্রমণ', NULL, 'Published', '2021-01-08 23:25:50', 'No', 'No', 7, 10, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 06:25:50', '2021-01-09 08:46:04'),
(43, 'এইচএসসির ফল মোবাইলে', 'images/news/big//2021/01/08/hsc-file-photo-20210108143934-08-01-202123-34-08.webp', 'images/news/medium/2021/01/08/hsc-file-photo-20210108143934-08-01-202123-34-08.webp', 'images/news/small/2021/01/08/hsc-file-photo-20210108143934-08-01-202123-34-08.webp', NULL, 'করোনাভাইরাস পরিস্থিতিতে ২০১৯ সালের এসএসসি ও সমমানের ফল শিক্ষার্থীর মোবাইলে এসএমএস করে জানিয়ে দেয়া হয়...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">করোনাভাইরাস পরিস্থিতিতে ২০১৯ সালের এসএসসি ও সমমানের ফল শিক্ষার্থীর মোবাইলে এসএমএস করে জানিয়ে দেয়া হয়। আসন্ন এইচএসসির ও সমমানের ফল একইভাবে প্রকাশ করার উদ্যোগ নিয়েছে আন্তঃশিক্ষা বোর্ড।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এজন্য ২০২০ সালের এইচএসসি পরীক্ষার ফলাফল পেতে শুরু হয়েছে প্রি-রেজিস্ট্রেশন প্রক্রিয়া শুরু করেছে বোর্ডগুলো। সরকারি মোবাইল অপারেটর টেলিটকের মাধ্যমে এ রেজিস্ট্রেশন করতে পারবেন শিক্ষার্থীরা। যারা রেজিস্ট্রেশন করবে তারা ফল প্রকাশের দিন ঘরে বসেই তা সংগ্রহ করতে পারবেন ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বৃহস্পতিবার (৭ জানুয়ারি) এক বিজ্ঞপ্তিতে প্রি-রেজিস্ট্রেশন করার আহ্বান জানিয়েছে টেলিটক।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">যেভাবে করবেন রেজিস্ট্রেশন:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">টেলিটকের বিজ্ঞপ্তিতে বলা হয়, ২০২০ সালের এইচএসসি পরীক্ষার ফলের প্রি-রেজিস্ট্রেশন শুরু হয়েছে। ঘরে বসে ফল পেতে রেজিস্ট্রেশন করতে হবে মোবাইলের ম্যাসেজ অপশনে গিয়ে প্রি-রেজিস্ট্রেশন করতে HSC লিখে স্পেস দিয়ে শিক্ষাবোর্ডের নাম দিয়ে স্পেস দিয়ে রোল লিখে স্পেস দিয়ে ২০২০ লিখে 16222 নম্বরে পাঠিয়ে দিতে হবে। উদাহরণ&mdash; HSC Bord Name Roll Year।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">করোনা মহামারির কারণে বাতিল করা হয় ২০২০ সালের এইচএসসি ও সমমানের পরীক্ষা। পরীক্ষা ছাড়াই জেএসসি ও এসএসসি পরীক্ষার ফলাফল গড় করে প্রকাশ করা হবে এইচএসসির ফল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">যেখানে জেএসসি-জেডিসির ফলাফলকে ২৫ এবং এসএসসির ফলকে ৭৫ শতাংশ বিবেচনায় নিয়ে ঘোষণা করা হবে ২০২০ সালের এইচএসসির ফল। অধ্যাদেশ জারির পর আনুষ্ঠানিকভাবে ফল প্রকাশের ঘোষণা দেয়া হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'শিক্ষা', NULL, 'Published', '2021-01-08 23:34:08', 'No', 'No', 8, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-09 06:34:08', '2021-01-09 09:03:21'),
(44, '২০২০ সালে বিয়ে করেছেন হলিউডের যেসব তারকা', 'images/news/big//2021/01/09/biye-hollywood-2020122213364809-01-202101-34-37.jpg', 'images/news/medium/2021/01/09/biye-hollywood-2020122213364809-01-202101-34-37.jpg', 'images/news/small/2021/01/09/biye-hollywood-2020122213364809-01-202101-34-37.jpg', NULL, 'চলতি বছরের শেষ অংশে আমরা। দিন কয়েক পরেই শুরু হবে নতুন বছর৷ ঘটনাবহুল এই বছরটি অনেকটা ঘরবন্দী হয়েই কেটে গেছে সবার।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চলতি বছরের শেষ অংশে আমরা। দিন কয়েক পরেই শুরু হবে নতুন বছর৷ ঘটনাবহুল এই বছরটি অনেকটা ঘরবন্দী হয়েই কেটে গেছে সবার। তবে করোনার কারণে লকডাউনের এই সময়েও তাই থেমে ছিলো না বিয়ে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">হলিউডের বেশ কয়েকজন জনপ্রিয় তারকা এবার সংসার পেতেছেন। দেখে নেয়া যাক সেই তালিকা-</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">নিক ক্রল-লিলে কোয়ানং</span><br style=\"box-sizing: border-box;\" />১১ নভেম্বর বিয়ে করেছেন \'বিগ মাউথ\' নির্মাতা নিক ক্রল এবং আর্কিটেক্ট কোওয়ং। আনুষ্ঠানিক বিয়ের পোশাকে সমুদ্রের তীরে এই দম্পতিকে ছবি দিতে দেখা যায়। ছবিটির ক্যাপশনে নিক সবার কাছে তাদের এই নতুন জীবনের যাত্রা শুরু করার জন্য প্রার্থনা কামনা করেন। নিক ডিসেম্বরে আরও একটি ছবি শেয়ার করে লিখেছিলেন, \'বিশ্বব্যাপী মহামারীতে বিয়ে করা সহজ নয়!\'</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">স্কারলেট জোহানসন-কলিন জোস্ট</span><br style=\"box-sizing: border-box;\" />অবশেষে বিবাহ করলেন অ্যাভেঞ্জারস : এন্ডগেমের তারকা তারকা স্কারলেট জোহানসন। তিনি \'স্যাটারডে নাইট লাইভ\'খ্যাত কৌতুক অভিনেতা জোস্টকে বিয়ে করেছেন। অক্টোবরের শেষদিকে নিজেদের একটি পারিবারিক অনুষ্ঠানে তারা বিবাহ বন্ধনে আবদ্ধ হন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">জন সিনা-শায় শারিয়াতজাদে</span><br style=\"box-sizing: border-box;\" />প্রায় ৮ বছর পর আবারও বিয়ে করলেন সময়ের জনপ্রিয় রেসলিং তারকা জন সিনা। ২৯ বছর বয়সী শায় শারিয়াতজাদের সঙ্গে এক বছরের বেশি সময় প্রেমের সম্পর্ক ছিল জন সিনার। অবশেষে তারা গত ১২ অক্টোবর একটি ব্যক্তিগত অনুষ্ঠানে ফ্লোরিডার ট্যাম্পায় গাঁটছড়া বাঁধেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">লরি ডেভিড-অ্যাশলি অ্যান্ডারউড</span><br style=\"box-sizing: border-box;\" />অবশেষে বিয়ে করলেন ৭৩ বছর বয়সী তারকা নির্মাতা ডেভিড। ৭ অক্টোবর অ্যাশলি অ্যান্ডারউডকে বিয়ে করেন তিনি। ২০১৭ সালে সাচা ব্যারন কোহেনের জন্মদিনের পার্টিতে তাদের দেখা হয়েছিল। এরপর চলতি বছরের এপ্রিলে নিউইয়র্ক টাইমসের কাছে ডেভিড অ্যান্ডারউডকে ভালোবাসার কথা জানান।</p>', 'হলিউড', NULL, 'Published', '2021-01-09 01:34:37', 'No', 'No', 6, 6, 22, NULL, 3, 1, 1, NULL, NULL, '2021-01-09 08:34:37', '2021-01-11 05:35:40'),
(45, 'সোমবার মন্ত্রিসভায় উঠছে এইচএসসির ফল প্রকাশের অধ্যাদেশ', 'images/news/big//2021/01/09/hsc-20210109201157-09-01-202122-53-13.webp', 'images/news/medium/2021/01/09/hsc-20210109201157-09-01-202122-53-13.webp', 'images/news/small/2021/01/09/hsc-20210109201157-09-01-202122-53-13.webp', NULL, 'এইচএসসি ও সমমান পরীক্ষার ফল প্রকাশের জন্য এ সংক্রান্ত একটি অধ্যাদেশের খসড়া সোমবার (১১ জানুয়ারি) মন্ত্রিসভার বৈঠকে উঠবে। \r\nজানা গেছে, রাষ্ট্রপতির কাছ থেকে আনুষ্ঠানিকভাবে অধ্যাদেশটি অনুমোদনের পর জারি করা হবে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এইচএসসি ও সমমান পরীক্ষার ফল প্রকাশের জন্য এ সংক্রান্ত একটি অধ্যাদেশের খসড়া সোমবার (১১ জানুয়ারি) মন্ত্রিসভার বৈঠকে উঠবে। এরপর সেটি যাচাইয়ের জন্য আইন মন্ত্রণালয়ে পাঠানো হবে। পরে খসড়াটি অনুমোদনের জন্য রাষ্ট্রপতির কাছে যাবে। শিক্ষা মন্ত্রণালয় সূত্রে এসব তথ্য জানা গেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জানা গেছে, রাষ্ট্রপতির কাছ থেকে আনুষ্ঠানিকভাবে অধ্যাদেশটি অনুমোদনের পর জারি করা হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ বিষয়ে শিক্ষা মন্ত্রণালয়ের এক কর্মকর্তা জানান, অধ্যাদেশটি জারির পর প্রধানমন্ত্রী শেখ হাসিনা নিজেই ফল ঘোষণা করবেন। শিক্ষা মন্ত্রণালয় আগামী সপ্তাহের মধ্যেই তার সম্মতি পাওয়ার চেষ্টা করছে। মন্ত্রণালয় পরের সপ্তাহে ফলাফল ঘোষণা করার প্রস্তুতি নিচ্ছে বলে জানান ওই কর্মকর্তা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ বিষয়ে ঢাকা শিক্ষাবোর্ডের চেয়ারম্যান এবং ফলাফল প্রস্তুতকরণ কমিটির সদস্য সচিব অধ্যাপক নেহাল আহমেদ বলেন, আমরা শিক্ষা মন্ত্রণালয়ের কাছে ফল জমা দেয়ার জন্য প্রস্তুত আছি। অধ্যাদেশ পাসের পর আমাদের শুধু টেকনিক্যাল কমিটির একটি বৈঠক করতে হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এর আগে বৃহস্পতিবার (৭ জানুয়ারি) শিক্ষা মন্ত্রণালয়ের মাধ্যমিক ও উচ্চশিক্ষা বিভাগের সচিব মাহবুব হোসেন বলেছিলেন, বিশেষ পরিস্থিতিতে ফল প্রকাশ করতে হলে অধ্যাদেশ জারি করতে হয়। চলতি সপ্তাহে মন্ত্রিপরিষদের বৈঠক না হওয়ায় অধ্যাদেশ জারি করা সম্ভব হয়নি। অধ্যাদেশ জারি হলে মধ্য জানুয়ারির মধ্যে ফল প্রকাশ করা হবে।</p>', 'শিক্ষা', NULL, 'Published', '2021-01-09 22:53:13', 'Yes', 'No', 8, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-10 05:53:13', '2021-01-13 03:16:43'),
(46, 'আগাম জাতের আলু চাষে লাভবান কৃষকরা', 'images/news/big//2021/01/09/potato-1-20210109131537-09-01-202123-07-10.webp', 'images/news/medium/2021/01/09/potato-1-20210109131537-09-01-202123-07-10.webp', 'images/news/small/2021/01/09/potato-1-20210109131537-09-01-202123-07-10.webp', NULL, 'মাগুরায় দিন দিন আলু চাষে ঝুঁকছেন কৃষকরা। অধিক লাভের আশায় এখন আগাম জাতের আলু চাষে ঝুঁকে পড়েছেন তারা...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মাগুরায় দিন দিন আলু চাষে ঝুঁকছেন কৃষকরা। অধিক লাভের আশায় এখন আগাম জাতের আলু চাষে ঝুঁকে পড়েছেন তারা। বাজারে আগাম জাতের আলুর ভালো দাম পেয়ে খুশি বলে জানিয়েছেন আলুচাষিরা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জেলার বিভিন্ন এলাকা ঘুরে জানা যায়, বর্তমান বাজারে ২ হাজার টাকা থেকে ২ হাজার ৪শ টাকা পর্যন্ত প্রতি মণ আলু পাইকারি বিক্রি হচ্ছে। ভালো দাম পাওয়ায় খুশি বলে জানান, সদর উপজেলার হাজীপুর গ্রামের আলুচাষি বেলাল হোসেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রথম দিকে একশ টাকা কেজি থেকে শুরু হলেও বর্তমানে খুচরা বাজারে ৩৫ থেকে ৪০ টাকা কেজি বিক্রি হচ্ছে নতুন আলু। আবহাওয়া আলু চাষের অনুকূলে থাকায় দাম কমলেও এবার ফলন বেশি হওয়ায় লাভ ভালো হচ্ছে বলে জানান কৃষকরা।রা এখন শীতের কুয়াশা উপক্ষো করে সকালে শিশির ভেজা মাঠে আগাম জাতের আলু তোলা নিয়ে ব্যস্ত সময় পার করছেন। আগাম জাতের ক্যারেজ আলু চাষ করে বিঘা প্রতি ২৫ থেকে ৩০ মণ ফলন পাওয়া যাচ্ছে বলে জানান সদর উপজেলার হাজরাপুর গ্রামের আলুচাষি বিকাশ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আগাম জাতের আলুতে ভালো লাভ পাওয়া যায়, এজন্য প্রতি বছরের ন্যায় এবারও দুই বিঘা জমিতে আগাম জাতের ক্যারেজ আলু চাষ করেছেন বলে জানান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বর্তমান বাজারে ২ হাজার টাকা থেকে ২ হাজার ৪শ টাকা পর্যন্ত প্রতি মণ আলু পাইকারি বিক্রি হচ্ছে। ভালো দাম পাওয়ায় খুশি বলে জানান, সদর উপজেলার হাজীপুর গ্রামের আলুচাষি বেলাল হোসেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রথম দিকে একশ টাকা কেজি থেকে শুরু হলেও বর্তমানে খুচরা বাজারে ৩৫ থেকে ৪০ টাকা কেজি বিক্রি হচ্ছে নতুন আলু। আবহাওয়া আলু চাষের অনুকূলে থাকায় দাম কমলেও এবার ফলন বেশি হওয়ায় লাভ ভালো হচ্ছে বলে জানান কৃষকরা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'কৃষি ও প্রকৃতি', NULL, 'Published', '2021-01-09 23:07:10', 'Yes', 'No', 7, 11, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-10 06:07:10', '2021-01-13 03:16:29'),
(47, 'বঙ্গবন্ধুর স্বদেশ প্রত্যাবর্তন দিবসে সোনার বাংলা গড়ার প্রত্যয়', 'images/news/big//2021/01/10/1-fream-20210110201432-10-01-202110-54-04.webp', 'images/news/medium/2021/01/10/1-fream-20210110201432-10-01-202110-54-04.webp', 'images/news/small/2021/01/10/1-fream-20210110201432-10-01-202110-54-04.webp', NULL, '১৯৭১ সালের ৭ মার্চ ও ’৭২ সালের ১০ জানুয়ারি বঙ্গবন্ধুর দেয়া দুটি ভাষণ বার বার শুনতে...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">১৯৭১ সালের ৭ মার্চ ও &rsquo;৭২ সালের ১০ জানুয়ারি বঙ্গবন্ধুর দেয়া দুটি ভাষণ বার বার শুনতে দলীয় নেতাকর্মী ও নতুন প্রজন্মের প্রতি আহ্বান জানিয়ে প্রধানমন্ত্রী শেখ হাসিনা বলেছেন, এ দুটি ভাষণ শুনলে রাজনীতি করার একটি প্রেরণা ও দিকনির্দেশনা সবাই পাবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি বলেন, &lsquo;মুক্তিযুদ্ধ চলাকালীন পাকিস্তান কারাগারে বন্দি থেকে মুক্ত হওয়ার পর লন্ডন হয়ে ১০ জানুয়ারি দেশে ফিরে তিনি পরিবারের কাছে যাননি। তিনি সরাসরি রেসকোর্স ময়দানে ছুটে গিয়েছিলেন। জনগণের উদ্দেশ্যে বক্তৃতা করার সময় বঙ্গবন্ধুর হাতে কোনো লিখিত বক্তব্য না থাকলেও তিনি স্বতঃস্ফূর্তভাবে দেয়া ভাষণে একটি স্বাধীন রাষ্ট্র পরিচালনার সব নির্দেশনা দিয়েছিলেন।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রোববার (১০ জানুয়ারি) জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমানের স্বদেশ প্রত্যাবর্তন দিবস উপলক্ষে বাংলাদেশ আওয়ামী লীগ আয়োজিত অনুষ্ঠানে গণভবন থেকে যুক্ত হয়ে সভাপতির বক্তৃতায় তিনি এসব কথা বলেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রধানমন্ত্রী বলেন, &lsquo;একটা মানুষ; জাতির প্রতি, মানুষের প্রতি কতটা নিবেদিত হলে, মানুষকে কতটা ভালোবাসলে এভাবে আত্মত্যাগ করতে পারে, এভাবে মানুষের কথা বলতে পারে তার প্রমাণ বঙ্গবন্ধু শেখ মুজিবুর রহমান। এদেশকে তিনি চিনতেন জানতেন ভালোবাসতেন এবং দেশের কল্যাণের জন্য তিনি জীবন উৎসর্গ করেছিলেন।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বঙ্গবন্ধুকন্যা বলেন, &lsquo;জঙ্গিবাদ ও সন্ত্রাসের হাত থেকে দেশকে মুক্ত রেখে ক্ষুধামুক্ত দারিদ্র্যমুক্ত অসাম্প্রদায়িক চেতনার উন্নত সমৃদ্ধ সোনার বাংলাদেশ গড়ে তুলবো জাতির পিতার প্রত্যাবর্তন দিবসে এটাই আমাদের প্রতিজ্ঞা।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাংলাদেশ বিশ্বে মাথা উঁচু করে চলবে মন্তব্য করে শেখ হাসিনা বলেন, &lsquo;স্বাধীনতাকে যারা ব্যর্থ করতে চেয়েছিল আজকে তারাই ব্যর্থ। আজকে বাংলাদেশ স্বাধীন দেশ হিসেবে সারাবিশ্বে যে মর্যাদা পেয়েছে, এ মর্যাদা ধরে রেখে বাংলাদেশকে সামনে এগিয়ে নিয়ে যাব; কারণ জাতির পিতার স্বপ্নের উন্নত-সমৃদ্ধ সোনার বাংলা আমরা গড়ে তুলবো।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'স্বদেশ প্রত্যাবর্তন,বঙ্গবন্ধু', NULL, 'Published', '2021-01-10 10:54:04', 'No', 'No', 10, NULL, 23, NULL, 4, 1, 2, NULL, NULL, '2021-01-10 17:54:04', '2021-01-11 04:32:45'),
(48, 'পাবলিক বিশ্ববিদ্যালয়ের ২৬ শতাংশ শিক্ষক ছুটিতে', 'images/news/big//2021/01/10/ugc-20210109115604-10-01-202121-23-43.webp', 'images/news/medium/2021/01/10/ugc-20210109115604-10-01-202121-23-43.webp', 'images/news/small/2021/01/10/ugc-20210109115604-10-01-202121-23-44.webp', NULL, 'শিক্ষা কার্যক্রম চলমান দেশের ৪৩ পাবলিক বিশ্ববিদ্যালয়ের ২৬ শতাংশের বেশি শিক্ষক অনুপস্থিত রয়েছেন।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শিক্ষা কার্যক্রম চলমান দেশের ৪৩ পাবলিক বিশ্ববিদ্যালয়ের ২৬ শতাংশের বেশি শিক্ষক অনুপস্থিত রয়েছেন। সে হিসেবে মোট ১৫ হাজার ২৯৩ জনের মধ্যে ৪ হাজার ২৭ জন শিক্ষক বিভিন্ন ধরনের ছুটিতে রয়েছেন। প্রতি বছর এই ছুটি নেয়ার হার বাড়ছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">অন্যদিকে বেসরকারি বিশ্ববিদ্যালয়ে খণ্ডকালীন ক্লাস নেয়ার প্রবণতা বেড়েছে ছুটিতে থাকা শিক্ষকদের মধ্যে। বিশ্ববিদ্যালয় মঞ্জুরি কমিশনের (ইউজিসি) সর্বশেষ বার্ষিক প্রতিবেদনে এসব তথ্য পাওয়া গেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সংশ্লিষ্টরা জানিয়েছেন, বড় কয়েকটি বাদে বেশিরভাগ বিশ্ববিদ্যালয়ে আছে শিক্ষক সঙ্কট। বিশেষ করে ঢাকার বাইরে অপেক্ষাকৃত নতুন বিশ্ববিদ্যালয়ে সিনিয়র শিক্ষকের সঙ্কট বেশি। বিজ্ঞপ্তি দিয়েও ওইসব বিশ্ববিদ্যালয়ে অধ্যাপক ও সহযোগী অধ্যাপক পাওয়া যাচ্ছে না। এমন পরিস্থিতিতে জুনিয়র শিক্ষক দিয়েই চলছে সেখানকার পড়াশুনা। এর মধ্যে শিক্ষকরা বিভিন্ন ধরনের ছুটিতে যাওয়ায় পড়াশুনা ও গবেষণার ওপর প্রভাব ফেলছে বলে অনেকে মনে করছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইউজিসির সর্বশেষ (২০১৯ সালের) বার্ষিক প্রতিবেদনে বলা হয়েছে, চলমান ৪৩টি বিশ্ববিদ্যালয়ে ৪ হাজার ২৭ শিক্ষক অন্তত ৫ ধরনের ছুটিতে ছিলেন। এসব শিক্ষকের মধ্যে ২ হাজার ২৬৪ জন আছেন শিক্ষা ছুটিতে। ২০১৮ সালে এই সংখ্যা ছিল ২ হাজার ১৩৩ জন। প্রেষণ বা লিয়েন নিয়ে অন্য প্রতিষ্ঠানে যুক্ত ছিলেন ৭৮ জন। আগের বছরের চেয়ে এটি বেড়েছে ৮ জন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এছাড়া বিনা বেতনে ছুটিতে আছেন ৬৫ জন আর ছুটি শেষ হওয়ার পরও অননুমোদিতভাবে বিদেশে অবস্থান করছেন ১৩ জন। এ সংখ্যা গত বছর ছিল যথাক্রমে ৭০ জন ও ২৫ জন। খণ্ডকালীন বা চুক্তিভিত্তিক নিয়োগে বিভিন্ন প্রতিষ্ঠানে চাকরি করছেন ১ হাজার ৬১৯ জন। চলতি বছর এ সংখ্যা বেড়েছে ৫২২ জন। গত বছর এই ছুটিতে ছিলেন ১ হাজার ৯৭ জন। ২০১৮ সালের প্রতিবেদন অনুযায়ী মোট শিক্ষকের ২৪ শতাংশই ছিলেন ছুটিতে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বিভিন্ন সূত্র জানিয়েছে, সরকারি বিশ্ববিদ্যালয়ের শিক্ষকদের মধ্যে এনজিও ব্যবসা, বিদেশি সংস্থায় পরামর্শকসহ বিভিন্ন বেসরকারি প্রতিষ্ঠানে খণ্ডকালীন কাজ করছেন আরও ৫ শতাধিক শিক্ষক। বিভিন্ন বেসরকারি বিশ্ববিদ্যালয়ে খণ্ডকালীন অধ্যাপনা করছেন ৪ হাজার ২০৯ জন। সাধারণত এসব শিক্ষকের বেশিরভাগই কোনো রকমে ক্লাস নিয়ে ক্যাম্পাসের বাইরে ছুটে যান। শিক্ষার্থীদের সঙ্গে আলাপে এ তথ্য জানা গেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইউজিসির উল্লিখিত প্রতিবেদন অনুযায়ী, ১০২টি বেসরকারি বিশ্ববিদ্যালয়ে ৪ হাজার ২০৯ শিক্ষক খণ্ডকালীন চাকরি করছেন। তাদের মধ্যে ১ হাজার ৩০৮ জনই অধ্যাপক। এছাড়া সহযোগী অধ্যাপক ৬০৩ জন, ৭৪৩ জন সহকারী অধ্যাপক এবং ১ হাজার ৩২৮ জন প্রভাষক। অন্যান্য ধরনের খণ্ডকালীন শিক্ষক আছেন ২২৭ জন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সংশ্লিষ্টরা জানান, খণ্ডকালীন শিক্ষকের বেশিরভাগই বিভিন্ন পাবলিক বিশ্ববিদ্যালয় থেকে ভাড়া করা। অথচ ইউজিসির প্রতিবেদনে এ সংখ্যা উল্লেখ করা হয়েছে ১ হাজার ৯৭ জন। গত বছর বা ২০১৮ সালে এসব বিশ্ববিদ্যালয়ের মোট ৪ হাজার ১৪৫ শিক্ষক ছিলেন খণ্ডকালীন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জানতে চাইলে ইউজিসি চেয়ারম্যান অধ্যাপক ড. কাজী শহীদুল্লাহ বলেন, বিশ্ববিদ্যালয়ের ছুটিটা হচ্ছে গবেষণা বা উচ্চশিক্ষার ছুটি। এতে শিক্ষকের জ্ঞানের পরিধি বাড়ে। কিন্তু আমাদের অনেকে সে কাজটি না করে আর্থিক আয়ের কাজে ব্যস্ত হয়ে পড়েন। এক্ষেত্রে শিক্ষার্থীরা ক্ষতিগ্রস্ত হচ্ছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি বলেন, উচ্চশিক্ষার জন্য বিদেশে যাওয়া কেউ কেউ সময়মতো ফিরতে না পারলে বিশ্ববিদ্যালয় আইন অনুযায়ী ব্যবস্থা নিতে পারে। এছাড়া শিক্ষকরা আরও কিছু ছুটি নিয়ে থাকেন। এর মধ্যে লিয়েন, প্রেষণ ইত্যাদি আছে। তবে জাতীয় প্রয়োজনে লিয়েনসহ অন্যান্য ছুটি নিয়ে শিক্ষকরা বিভিন্ন সরকারি ও স্বায়ত্তশাসিত প্রতিষ্ঠানে যুক্ত হন বলে জানান তিনি।</p>', 'শিক্ষা', NULL, 'Published', '2021-01-10 21:23:43', 'No', 'No', 8, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-11 04:23:44', '2021-01-11 04:23:44'),
(49, 'করোনায় ২৪ ঘণ্টায় ১৬ মৃত্যু, শনাক্ত ৭৮৫', 'images/news/big//2021/01/10/coro-2021010816235410-01-202121-26-55.jpg', 'images/news/medium/2021/01/10/coro-2021010816235410-01-202121-26-55.jpg', 'images/news/small/2021/01/10/coro-2021010816235410-01-202121-26-55.jpg', NULL, 'করোনাভাইরাসে আক্রান্ত হয়ে গত ২৪ ঘণ্টায় সারাদেশে আরও ১৬ জনের মৃত্যু হয়েছে......', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">করোনাভাইরাসে আক্রান্ত হয়ে গত ২৪ ঘণ্টায় সারাদেশে আরও ১৬ জনের মৃত্যু হয়েছে। তাদের মধ্যে পুরুষ ১৩ ও নারী ৩ জন। সবাই হাসপাতালে মারা গেছেন। এ নিয়ে মৃতের সংখ্যা বেড়ে দাঁড়াল ৭ হাজার ৭৩৪ জনে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শুক্রবার (৮ জানুয়ারি) বিকেলে স্বাস্থ্য অধিদফতরের অতিরিক্ত মহাপরিচালক অধ্যাপক ডা. নাসিমা সুলতানা স্বাক্ষরিত এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গত ২৪ ঘণ্টায় ১৮১টি ল্যাবরেটরিতে ১৪ হাজার ৬৮টি নমুনা সংগ্রহ ও ১৩হাজার ৬৮১টি নমুনা পরীক্ষা করা হয়। এ নিয়ে মোট নমুনা পরীক্ষার সংখ্যা দাঁড়াল ৩৩ লাখ ৩১ হাজার ৪৯১টি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ সময়ের মধ্যে করোনাভাইরাসে আক্রান্ত নতুন রোগী শনাক্ত হন আরও ৭৮৫ জন। দেশে মোট শনাক্ত রোগীর সংখ্যা ৫ লাখ ২০ হাজার ৬৯০ জন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রাজধানীসহ দেশের বিভিন্ন হাসপাতালে ও বাড়িতে উপসর্গবিহীন রোগীসহ গত ২৪ ঘণ্টায় মোট সুস্থ হন ৮৩৩ জন। এতে মোট সুস্থ হন ৪ লাখ ৬৫ হাজার ২৭৯ জন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ পর্যন্ত নমুনা পরীক্ষা বিবেচনায় শনাক্তের হার ১৫.৬৩ শতাংশ এবং শনাক্ত বিবেচনায় সুস্থতার হার ৮৯.০৩৬ শতাংশ এবং শনাক্ত বিবেচনায় মৃত্যুর হার ১.৪৯ শতাংশ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চলতি বছরের ৮ মার্চ দেশে প্রথম করোনাভাইরাসে আক্রান্ত রোগী শনাক্ত হয় ও ১৮ মার্চ প্রথম করোনা রোগীর মৃত্যু হয়। ৮ জানুয়ারি পর্যন্ত মোট মৃত্যু ৭ হাজার ৭৩৪ জন। এদের মধ্যে পুরুষ ৫ হাজার ৮৮০ (৭৬.০৩ শতাংশ) ও নারী ১ হাজার ৮৫৪ জন (২৩.০৯৭ শতাংশ)।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মৃতদের বয়স বিশ্লেষণে দেখা যায়, গত ২৪ ঘণ্টায় মৃত ১৬ জনের মধ্যে শূন্য থেকে দশোর্ধ্ব একজন, চল্লিশোর্ধ্ব একজন এবং ৬০ বছরের ঊর্ধ্বে ১৪ জন রয়েছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বিভাগীয় হিসেবে গত ২৪ ঘণ্টায় মৃত ১৬ জনের মধ্যে ঢাকায় ১২ জন, চট্টগ্রামে দুইজন, খুলনায় একজন এবং ময়মনসিংহ বিভাগের একজন রয়েছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'করোনা', NULL, 'Published', '2021-01-10 21:26:55', 'No', 'No', 10, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-11 04:26:55', '2021-01-11 04:30:51'),
(50, 'জরায়ুমুখ ক্যানসারে আক্রান্ত নারীদের ৬৪ ভাগই মারা যান', 'images/news/big//2021/01/10/blog-062220-ovarian-cancer-awareness-1200x67510-01-202121-59-29.png', 'images/news/medium/2021/01/10/blog-062220-ovarian-cancer-awareness-1200x67510-01-202121-59-29.png', 'images/news/small/2021/01/10/blog-062220-ovarian-cancer-awareness-1200x67510-01-202121-59-29.png', NULL, 'ইন্টারন্যাশনাল এজেন্সি ফর রিসার্চ অন ক্যানসারের (আইএআরসি) প্রতিবেদন অনুযায়ী .....', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইন্টারন্যাশনাল এজেন্সি ফর রিসার্চ অন ক্যানসারের (আইএআরসি) প্রতিবেদন অনুযায়ী বাংলাদেশে নারী ক্যানসার রোগীদের মধ্যে স্তন ক্যানসারের পরই জরায়ুমুখের ক্যানসারের অবস্থান। প্রতি বছর এই রোগে ৮,০৬৮ জন নারী নতুন করে আক্রান্ত হন যা নারী ক্যানসার রোগীর প্রায় ১২%। এর মাঝে মারা যান ৫,২১৪ জন। আক্রান্ত তুলনায় মৃত্যুর হার ৬৪ ভাগ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শনিবার (৯ জানুয়ারি) দেশে ৫ম বারের মতো পালিত হলো জরায়ুমুখের ক্যানসার সচেতনতা দিবস। প্রতি বছর জানুয়ারি মাসের দ্বিতীয় শনিবার &lsquo;মার্চ ফর মাদার&rsquo; নামের মোর্চার উদ্যোগে এই দিবসটি পালিত হয়। এ উপলক্ষ্যে শনিবার বিকেল ৩টায় জুম প্ল্যাটফর্মে মাসব্যাপী কর্মসূচির উদ্বোধন করা হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ বছরের প্রতিপাদ্য &lsquo;এইচপিভি নামের দুষ্ট ভাইরাসকে জানুন&rsquo;। দেশের খ্যাতনামা স্ত্রীরোগ, ক্যান্সার, জনস্বাস্থ্য বিশেষজ্ঞগণ এবং বিভিন্ন স্বেচ্ছাসেবী ও নারী সংগঠনের নেতৃবৃন্দ এই আলোচনায় অংশ নেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">স্ত্রীরোগ বিশেষজ্ঞ অধ্যাপক টি এ চৌধুরীর সভাপতিত্বে ও জননীর জন্য পদযাত্রার প্রধান সমন্বয়কারী ডা. হাবিবুল্লাহ তালুকদার রাসকিনের সঞ্চালনায় এ অনুষ্ঠানে এইচপিভি ভাইরাস ও এর সাথে জরায়ুমুখসহ অন্যান্য ক্যান্সার ও নন-ক্যান্সার স্বাস্থ্য সমস্যা নিয়ে তিনটি প্রবন্ধ উপস্থাপন করেন বিএসএমএমইউ এর গাইনি অনকোলজি বিভাগের চেয়ারম্যান অধ্যাপক ডা. আশরাফুন্নেসা, জাতীয় ক্যান্সার ইনস্টিটিউটের গাইনি অনকোলজি বিভাগের প্রধান ডা. রোকেয়া আনোয়ার ও ঢাকা মেডিকেল কলেজ হাসপাতালের গাইনি অনকোলজি ইউনিটের সহযোগী অধ্যাপক ডা. কাশেফা খাতুন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আলোচনা অনুষ্ঠানে বক্তারা বলেন, ক্যানসার স্ক্রিনিং কর্মসূচি বিভিন্ন পর্যায়ের ৪০০ সরকারি হাসপাতলের ভায়া সেন্টারে চালু আছে। কিন্তু এগুরো অসংগঠিত ও হাসপাতালকেন্দ্রিক। একে সমাজভিত্তিক সংগঠিত রূপ না দিলে ঝুঁকিপূর্ণ নারীদের এর আওতায় আনা কঠিন। এর বাইরে সরকারি-বেসরকারি কিছু উদ্যোগ দেখা যাচ্ছে, এটা আশার কথা। তবে সঠিক পরিকল্পনা, বাস্তবায়ন, মূল্যায়নের ওপর গুরুত্ব দিয়ে একটি জাতীয় ক্যান্সার নিয়ন্ত্রণ পরিকল্পনার আওতায় জাতীয় ক্যানসার স্ক্রিনিং প্রোগ্রাম এখন সময়ের দাবি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সভায় বক্তারা মত প্রকাশ করেন, কেবল সরকারের দায়িত্ব নয়, চিকিৎসকসমাজ, স্বাস্থ্য ব্যবস্থার অন্যান্য অংশীজন, সকল শ্রেণি-পেশার মানুষের অংশগ্রহণে সমন্বিত প্রচেষ্টায় ক্যানসার পরিস্থিতির সার্বিক উন্নতি সম্ভব। পুরো জানুয়ারি মাস জুড়ে ঢাকার বাইরে জরায়ুমুখের ক্যানসার প্রতিরোধে প্রচারাভিযান চালানোর কর্মসূচী ঘোষণা করা হয় এই অনুষ্ঠানে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'ক্যানসার', NULL, 'Published', '2021-01-10 21:29:15', 'No', 'No', 10, NULL, 23, NULL, 4, 1, 2, NULL, NULL, '2021-01-11 04:29:15', '2021-01-11 04:59:29'),
(51, 'যুক্তরাজ্যে ছিনতাইকারীদের হাতে বাংলাদেশি ব্যবসায়ী নিহত', 'images/news/big//2021/01/10/uk-2021011108300410-01-202121-39-37.jpg', 'images/news/medium/2021/01/10/uk-2021011108300410-01-202121-39-37.jpg', 'images/news/small/2021/01/10/uk-2021011108300410-01-202121-39-37.jpg', NULL, 'ছিনতাইকারীদের হাত থেকে নিজের গাড়ি বাঁচাতে গিয়ে প্রাণ হারিয়েছেন হাজী মোহাম্মদ হেদায়েতুল ইসলাম ওরফে নওয়াব মিয়া নামে এক যুক্তরাজ্য প্রবাসী বাংলাদেশি।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ছিনতাইকারীদের হাত থেকে নিজের গাড়ি বাঁচাতে গিয়ে প্রাণ হারিয়েছেন হাজী মোহাম্মদ হেদায়েতুল ইসলাম ওরফে নওয়াব মিয়া নামে এক যুক্তরাজ্য প্রবাসী বাংলাদেশি। প্রায় ৪০ ঘণ্টা লাইফ সাপোর্টে থাকার পর রোববার (১০ জানুয়ারি) স্থানীয় সময় বিকেল সাড়ে ৪টার দিকে মারা যান তিনি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জানা গেছে, গত শুক্রবার (৮ জানুয়ারি) স্থানীয় সময় রাত সাড়ে ৯টার দিকে খাবার ডেলিভারি দেয়ার সময় নওয়াব মিয়া দুর্বৃত্তদের কবলে পড়েন। তাকে মারাত্মক জখম করে রাস্তায় ফেলে রেখে তার গাড়িটি নিয়ে পালিয়ে যায় দুর্বৃত্তরা। পরে পুলিশ এবং অ্যাম্বুলেন্স এসে তাকে স্থানীয় সলফোর্ড হাসপাতালে নিয়ে যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">নিহতের স্বজনরা জানান, ঘটনার সময় নওয়াব মিয়া স্টকপোর্টের হেজেলে এভিনিউর একটি বাড়িতে খাবার ডেলিভারি দিতে গিয়েছিলেন। ডেলিভারির ঠিকানায় পৌঁছে তিনি গাড়ির ইঞ্জিন চালু রেখে খাবার দিতে যান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ সময় একদল ছিনতাইকারী তার গাড়িটি ছিনিয়ে নিতে চাইলে তিনি দ্রুত ছুটে এসে তাদের বাধা দেন। তখন ছিনতাইকারীদের ধাক্কায় রাস্তায় পড়ে গিয়ে তিনি মাথায় আঘাত পান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">যে ব্যক্তির বাড়িতে তিনি খাবার পৌঁছে দিতে গিয়েছিলেন সেই ডেভিড স্পিড ঘটনার একজন প্রত্যক্ষদর্শী। তিনি জানান, দরজায় বেল বাজার পর তিনি &lsquo;না, না&rsquo; আওয়াজ শোনেন এবং নওয়াবকে তার গাড়ির দিকে দৌড়াতে দেখেন। তিনি প্যাসেঞ্জার আসনের জানালা ধরে ছিনতাইকারীদের আটকানোর চেষ্টা করে ব্যর্থ হন। তাকে ফেলে দিয়ে ছিনতাইকারীরা গাড়িটি দ্রুত চালিয়ে চলে যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">পরে স্থানীয়রা তাকে উদ্ধার করে পুলিশ ও হাসপাতালে খবর দেয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইতোমধ্যে এ ঘটনায় জড়িত সন্দেহে ১৪ বছরের এক কিশোরকে আটক করেছে পুলিশ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">৫৩ বছর বয়সী নওয়াব মিয়া দীর্ঘদিন ধরে যুক্তরাজ্যের হাইড শহরের নিউটন এলাকায় বসবাস করে আসছিলেন। তিনি স্থানীয় মসজিদ কমিটির সাবেক সাধারণ সম্পাদক। তার দেশের বাড়ি সিলেটের ওসমানী নগর উপজেলার মাধবপুর গ্রামে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'যুক্তরাজ্য', NULL, 'Published', '2021-01-10 21:39:37', 'No', 'No', 39, NULL, 24, NULL, 4, 1, 2, NULL, NULL, '2021-01-11 04:39:37', '2021-01-11 05:32:27'),
(52, 'যুক্তরাষ্ট্রের শিকাগো শহরে বন্দুকধারীর হামলায় বিশ্ববিদ্যালয় শিক্ষার্থীসহ অন্তত তিনজন নিহত', 'images/news/big//2021/01/10/chicago-final-1-2021011105422110-01-202121-44-43.jpg', 'images/news/medium/2021/01/10/chicago-final-1-2021011105422110-01-202121-44-43.jpg', 'images/news/small/2021/01/10/chicago-final-1-2021011105422110-01-202121-44-43.jpg', NULL, 'যুক্তরাষ্ট্রের শিকাগো শহরে বন্দুকধারীর হামলায়................', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333; text-align: justify;\">যুক্তরাষ্ট্রের শিকাগো শহরে বন্দুকধারীর হামলায় বিশ্ববিদ্যালয় শিক্ষার্থীসহ অন্তত তিনজন নিহত হয়েছেন। এ ঘটনায় গুলিবিদ্ধ হয়ে আরও চারজন&nbsp;নারী ও শিশু গুরুতর আহত অবস্থায় চিকিৎসাধীন রয়েছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333; text-align: justify;\">স্থানীয় সময় শনিবার (১০ জানুয়ারি) দুপুর থেকে সন্ধ্যা পর্যন্ত চার ঘণ্টাব্যাপী শহরের বিভিন্ন স্থানে এ হামলার ঘটনা ঘটে। পরে শিকাগো সীমান্তে পার্কিং লটে পুলিশের সঙ্গে গুলিবিনিময়ে বন্দুকধারী জেসন নাইটেঙ্গল (৩২) নিহত হয়।</p>', 'শিকাগো', NULL, 'Published', '2021-01-10 21:44:43', 'No', 'No', 4, 38, 24, NULL, 3, 1, 2, NULL, NULL, '2021-01-11 04:44:43', '2021-01-11 04:44:43');
INSERT INTO `news` (`id`, `title`, `feature_photo`, `feature_medium`, `feature_small`, `photo_caption`, `meta_description`, `description`, `topic`, `video_url`, `published_status`, `published_date`, `is_cover_news`, `show_at_homepage`, `category_id`, `sub_cat_id`, `division_id`, `district_id`, `news_author_id`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(53, 'সন্ধ্যারাতে কাঁটাবন যাত্রা', 'images/news/big//2021/01/11/download11-01-202113-20-56.jpg', 'images/news/medium/2021/01/11/download11-01-202113-20-56.jpg', 'images/news/small/2021/01/11/download11-01-202113-20-56.jpg', NULL, 'সন্ধ্যারাতে কাঁটাবন যাত্রা...', '<p><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">লোকটা কাঁটাবন যাবে বলে সন্ধ্যারাতে বাসা থেকে বেরুল। রাস্তায় কোনো রিকশা নেই। অনেকক্ষণ পরে একটা পেল।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কাঁটাবন যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">পরপর তিনটি রিকশা চলে গেল। কেউ কাঁটাবন যেতে রাজি হল না। চতুর্থ রিকশাওয়ালা রাজি হল।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;ভাড়া কত?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৮০ টাকা।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৫০-এ যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">লোকটা হাঁটতে লাগল। বেশ কটা খালি রিকশা চলে গেল। সে ডাকল। কেউ শুনল না। একজন রাজি হলো।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;ভাড়া কত?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৮০ টাকা।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">লোকটা ভাবল ১০ টাকার রাস্তা তো সে হেঁটেই এসেছে, ভাড়া নিশ্চয়ই ১০ টাকা কম হবে।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৪০-এ যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">সে আবার হাঁটতে লাগল। কিছু দূর গিয়ে একটা রিকশা পেল। জিজ্ঞেস করল&mdash;কাঁটাবন যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;যামু।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;ভাড়া কত?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&nbsp;&mdash;৮০ টাকা।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৩০ দেব।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না, যামু না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">সে হাঁটতে হাঁটতে বড় রাস্তায় চলে এল। এ রাস্তায় বাস চলে। কিন্তু কোনো বাস কাঁটাবন যায় না। বড় রাস্তায় একটা খালি রিকশা পেল।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কাঁটাবন যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কেন?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;আমার ইচ্ছা। তয় মিরপুর গেলে লইয়া যাইতে পারি। লোকটা রেগে গিয়ে বলল, মিরপুর কি লোম ছিঁড়তে যাব?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">রিকশাওয়ালা কিছু না বলে প্যাডেল মেরে দ্রুত চলে গেল। লোকটা দেখল, একটা মেয়ে কাঁধে বড় একটা ভ্যানিটি ব্যাগ ঝুলিয়ে খট্ খট্ করে হেঁটে যাচ্ছে। সে তার পেছন দিকটা দেখতে পাচ্ছে।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">বেশ লম্বা। পরনে সবুজ জামদানি।&nbsp;লম্বা চুল। বেণি করা। বেণিটা একবার ডান দিকে একবার বাম দিকে যাচ্ছে, পুরনো&nbsp; দিনের ঘড়ির পেন্ডুলামের মতো। সবুজ জামদানি লোকটার পছন্দ। গেল রোজার ঈদে বউকে একটা কিনে দিয়েছিল গাউসিয়া থেকে। বউই পছন্দ করেছিল। তার সৌন্দর্যজ্ঞান&nbsp;ভালো হলেও দাম সম্পর্কে আইডিয়া নেই। দরদাম লোকটাই করেছিল।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">মেয়েটা রিকশা খোঁজার জন্য দাঁড়াল। তখন মুখ দেখতে পেল। ফরসা। ডিম্বাকৃতি। টানা টানা চোখ। একটুখানি ক্লান্তি নেমেছে চেহারায়।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">লোকটা দাঁড়িয়ে পড়ল। একটা রিকশা দেখে মেয়েটা ডাকল।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;গাউসিয়া যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;যামু।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কত নেবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৬০ টাকা।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৪০-এ যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">মেয়েটা হাঁটতে শুরু করল। লোকটা ভাবল, গাউসিয়া থেকে কী কিনব সে? শাড়ি, নাকি ব্লাউজ, ব্রেসিয়ার, প্যান্টি, চুলের ফিতে, ক্লিপ, ইমিটেশন গয়না নাকি কসমেটিক্স?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">মেয়েটা আবার হাঁটতে লাগল। লোকটাও। পান্থপথ মোড়ে সিগনাল পড়লে দুজন একসঙ্গে দাঁড়াল। লোকটা মেয়েটার শরীরের ঘ্রাণ পেল। অদ্ভুত সুন্দর একটা পারফিউম মেখেছে, কিংবা বডিলোশন। কোন ব্র্যান্ডের? ব্লু নেভি, ওয়াটার গার্ল, অসম, ভিক্টোরিয়াল সিক্রেট কিংবা ডেইজি ফ্রম মার্ক জ্যাকব? &mdash;নাকি এর কোনটাই নয়?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;তখন লোকটার এক বন্ধু তার পাশে এসে দাঁড়াল।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কোথায় যাস?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কাঁটাবন।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কাঁটাবন কোথায়?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কনকর্ড এম্পোরিয়াম।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কেন?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;আড্ডা মারতে।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;এই মেয়েটাকে মনে ধরেছে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">লোকটা কোনো কথা বলল না।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;ওর সঙ্গে প্রেম করতে ইচ্ছে করছে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">লোকটা নিরুত্তর।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">ওই মেয়েটার প্রেম আছে এক যুবকের সাথে। তোমার মতো লোকের প্রেমে পড়বে না। হা হা হা।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">সিগনাল ক্লিয়ার। লোকটার বন্ধু উধাও। দুজন একসঙ্গে রাস্তা পার হলো। একটা রিকশা খালি পেয়ে ডাকল মেয়েটি।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;গাউসিয়া মার্কেট?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;যামু।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;কত নেবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৬০-টাকা।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;৪০-এ যাবে?</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">&mdash;না আফা।</span></p>', 'সাহিত্যিক', NULL, 'Published', '2021-01-10 22:28:40', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-11 05:28:41', '2021-01-12 22:12:44'),
(54, 'স্নিগ্ধা বাউলের কবিতা', 'images/news/big//2021/01/10/singda-2021010610122710-01-202123-39-39.jpg', 'images/news/medium/2021/01/10/singda-2021010610122710-01-202123-39-39.jpg', 'images/news/small/2021/01/10/singda-2021010610122710-01-202123-39-39.jpg', NULL, 'সম্মোহনের এমন তাগাদা অবাধ রেখে চলে যায় ঘুণাক্ষরের মাত্রারা', '<p><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: SolaimanLipi; font-size: 20px;\">অবুঝ সন্ধ্যায়</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">সীমানা ছাড়িয়ে ক্রমাগত অপেক্ষায়</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">মান্দারী বৃক্ষ</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">অজস্র দূরে তেপান্তরের অবোধ্য বিবমিষা</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">জমিয়ে রাখি -</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">ডুবশালিক, খুঁটে খুঁটে আদারের বয়ান।</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">হেডলাইটে জ্বলে কুরুচির শহর<br style=\"box-sizing: border-box;\" />অসার পায়ে<br style=\"box-sizing: border-box;\" />নিওনে অপরিচিত ডাক আগলে রাখা অন্তর্বাস ;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">অন্তর্বাহ কলহে দেখি-<br style=\"box-sizing: border-box;\" />মানুষের মতো কাপড়ের পুতুল<br style=\"box-sizing: border-box;\" />খেলেছি শৈশবে যাদের জীবন ভেবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কিছুদিন বৃষ্টিরা সরে গেলে<br style=\"box-sizing: border-box;\" />সত্য স্পষ্ট হয়ে যায় - ভেজা বর্বরদশায় গিলে খায়<br style=\"box-sizing: border-box;\" />সুন্দরের পরিণতি ;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ছেড়ে গেছে যারা, তাকিয়ে দেখি চোখে<br style=\"box-sizing: border-box;\" />নিরপরাধ নিজেকে আবিষ্কার করি<br style=\"box-sizing: border-box;\" />ডুবে যাওয়া বিকেলের সূর্যের সাথে</p>', 'কবিতা', NULL, 'Published', '2021-01-10 23:39:39', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-11 06:39:39', '2021-01-11 06:39:39'),
(55, 'ফেব্রুয়ারির প্রথম সপ্তাহে দেশে করোনার টিকা প্রয়োগ শুরু', 'images/news/big//2021/01/11/d3af8f8b6fbd36861632444c74831e30-5ffc37682312b11-01-202109-58-40.jpg', 'images/news/medium/2021/01/11/d3af8f8b6fbd36861632444c74831e30-5ffc37682312b11-01-202109-58-40.jpg', 'images/news/small/2021/01/11/d3af8f8b6fbd36861632444c74831e30-5ffc37682312b11-01-202109-58-40.jpg', NULL, 'আগামী ২১ থেকে ২৫ জানুয়ারির মধ্যে ভারতের সেরাম ইনস্টিটিউটে তৈরি.....', '<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">আগামী ২১ থেকে ২৫ জানুয়ারির মধ্যে ভারতের সেরাম ইনস্টিটিউটে তৈরি অক্সফোর্ড-অ্যাস্ট্রেজেনেকার টিকা বাংলাদেশে আসবে। ২৬ জানুয়ারি থেকে রেজিস্ট্রেশন হবে। ফেব্রুয়ারির প্রথম সপ্তাহ থেকে জাতীয়ভাবে টিকা দেওয়া শুরু হবে। ২৫ লাখ নয়, প্রথম দফায় দেশে করোনার টিকা দেওয়া হবে ৫০ লাখ মানুষকে।</p>\r\n<div id=\"v-banglatribune-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 22px; width: 726.188px;\">\r\n<div id=\"unitDivWrapper-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; width: 726.188px;\">&nbsp;</div>\r\n<div id=\"vdo_companion_wrapper\" style=\"padding: 0px; margin: 10px 0px 0px; outline: 0px; overflow: hidden; text-align: center;\">&nbsp;</div>\r\n</div>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">সোমবার (১১ জানুয়ারি) স্বাস্থ্য অধিদফতরের এক সংবাদ সম্মেলনে এসব তথ্য জানান অধিদফতরের মহাপরিচালক অধ্যাপক ডা. আবুল বাসার মোহাম্মদ খুরশীদ আলম। এ সময় কর্মসূচির বিস্তারিত তথ্য উপস্থাপন করেন টিকা বিতরণ কমিটির সদস্য অধ্যাপক শামসুল হক।</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">সংবাদ সম্মেলনে জানানো হয়, ১৮ বছরের নিচে এবং গর্ভবতী নারীদের টিকা দেওয়া হবে না। প্রতিটি কেন্দ্রে দুজন নার্স থাকবেন, যারা টিকা দেবেন। থাকবেন ৪ জন স্বেচ্ছাসেবী। রেজিস্ট্রেশন করার পর এসএমএস করে টিকা নেওয়ার দিন ও সময় জানানো হবে।</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">খুরশীদ আলম বলেন, বেক্সিমকো ফার্মা আমাদের জানিয়েছে, আগামী ২১ থেকে ২৫ জানুয়ারির মধ্যে এই টিকা বাংলাদেশে আসবে। টিকা আসার পর দুই দিন বেক্সিমকোর ওয়্যারহাউজে থাকবে। সেখান থেকে স্বাস্থ্য অধিদফতরের তালিকা অনুযায়ী দেশের বিভিন্ন জেলায় পাঠিয়ে দেওয়া হবে।</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">আগে সিদ্ধান্ত ছিল প্রথম ডোজের পর দ্বিতীয় ডোজ দেওয়া হবে ২৮ দিন পর। এখন ওই সিদ্ধান্ত পরিবর্তন করা হয়েছে। দ্বিতীয় ডোজ দেওয়া হবে ৮ থেকে ১২ সপ্তাহ পর। এ বিষয়ে এবিএম খুরশীদ আলম বলেন, এর আগে আমাদের জানানো হয়েছিল প্রথম ডোজ দেওয়ার ২৮ দিন পর দ্বিতীয় ডোজ দিতে হবে। তবে অক্সফোর্ড-অ্যাস্ট্রেজেনেকার নতুন তথ্য অনুযায়ী, প্রথম ডোজ দেওয়ার দুই মাস পর দ্বিতীয় ডোজ দেওয়া যাবে। গতকাল নতুন নিয়ম জানার পর আমরা পরিকল্পনায় পরিবর্তন এনেছি। এ কারণে প্রথম মাসেই একসঙ্গে ৫০ লাখ মানুষকে টিকা দেওয়া হবে।&nbsp; প্রথম যে ৫০ লাখ টিকা আসবে তা দিয়ে দেওয়া হবে। দুই মাসের মধ্যে আরও টিকা চলে আসবে।</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">সংবাদ সম্মেলনে স্বাস্থ্য অধিদফতরের অতিরিক্ত মহাপরিচালক অধ্যাপক ডা. মীরজাদী সেব্রিনা ফ্লোরা ও অধ্যাপক ডা. নাসিমা সুলতানা বক্তব্য রাখেন।</p>', 'করোনা', NULL, 'Published', '2021-01-11 09:58:40', 'Yes', 'No', 10, NULL, 23, NULL, 4, 1, 2, NULL, NULL, '2021-01-11 16:58:40', '2021-01-13 03:16:06'),
(56, 'দুই পণ্য নিয়ে ‘বিপাকে’ বাণিজ্যমন্ত্রী', 'images/news/big//2021/01/11/8a6057ee45756b7f82170185a8315098-5d5397dd4f60511-01-202110-03-42.jpg', 'images/news/medium/2021/01/11/8a6057ee45756b7f82170185a8315098-5d5397dd4f60511-01-202110-03-42.jpg', 'images/news/small/2021/01/11/8a6057ee45756b7f82170185a8315098-5d5397dd4f60511-01-202110-03-42.jpg', NULL, 'কেজিতে দশ টাকা বেড়ে গত দুই দিনে কমেছে মাত্র দুই টাকা।', '<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">কেজিতে দশ টাকা বেড়ে গত দুই দিনে কমেছে মাত্র দুই টাকা। এখনও অসহনীয় পর্যায়ে রয়েছে চালের দাম। কবে নাগাদ আগের অবস্থানে আসবে বা আদৌ আসবে কিনা তা জানেন না কেউই। গত তিন-চার মাস ধরে ক্রমাগত বাজারে বেড়েছে চালের দাম। বাজারে চালের সরবরাহ বাড়াতে আমদানির অনুমতি দিয়েও উদ্দেশ্য সফল হয়নি। পরবর্তীতে আমদানি উৎসাহিত করতে শুল্ক কমিয়েও চালের বাজার সহনীয় করা যায়নি। সরকার ভারতের সঙ্গে জিটুজি পদ্ধতিতে চাল আমদানি করছে। সেই চাল বাজারে আসতেও শুরু করেছে। কিন্তু চালের বাজার দর এখনও তেমন নামছে না।</p>\r\n<div id=\"v-banglatribune-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 22px; width: 726.188px;\">\r\n<div id=\"unitDivWrapper-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; width: 726.188px;\">&nbsp;</div>\r\n<div id=\"vdo_companion_wrapper\" style=\"padding: 0px; margin: 10px 0px 0px; outline: 0px; overflow: hidden; text-align: center;\">&nbsp;</div>\r\n</div>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">অপরদিকে ভারত থেকে পেঁয়াজ বাংলাদেশে আসতে শুরু করায় বিপাকে পড়েছেন কৃষক ও ব্যবসায়ীরা। কারণ, মিসর ও তুরস্ক থেকে আমদানি করা পেঁয়াজ এখন আর কেউ কিনছেন না। আমদানি করা তাদের এই পণ্যটি পচে যাচ্ছে। এতে তারা লোকসানের কবলে পড়ছেন। আবার ভারতের পেঁয়াজ আসা অব্যাহত থাকলে দেশে উৎপাদিত পেঁয়াজের দর পড়ে যাবে, এতে দেশের কৃষক ক্ষতিগ্রস্ত হবেন। তাই পেঁয়াজের ওপর ১০ শতাংশ আমদানি শুল্ক আরোপ করেছে সরকার। তবে বাজারে এর প্রভাব কতটা পড়বে তা নিয়ে যথেষ্ট সন্দেহ রয়েছে। এমন পরিস্থিতিতে এ দুটি পণ্য নিয়ে বিপাকে পড়েছেন বাণিজ্যমন্ত্রী টিপু মুনশি। বাণিজ্য মন্ত্রণালয়ের সংশ্লিষ্টদের সঙ্গে কথা বলে এসব তথ্য জানা গেছে।</p>', 'পণ্য', NULL, 'Published', '2021-01-11 10:03:42', 'No', 'No', 38, NULL, 23, NULL, 4, 1, 2, NULL, NULL, '2021-01-11 17:03:42', '2021-01-11 17:03:42'),
(57, 'বাড়ি বাড়ি না গিয়েই চূড়ান্ত হচ্ছে ভোটার তালিকা!', 'images/news/big//2021/01/11/d5ff32235bbd9091753a6411b8bebfc8-5ffc78fd51d3d11-01-202111-41-06.jpg', 'images/news/medium/2021/01/11/d5ff32235bbd9091753a6411b8bebfc8-5ffc78fd51d3d11-01-202111-41-06.jpg', 'images/news/small/2021/01/11/d5ff32235bbd9091753a6411b8bebfc8-5ffc78fd51d3d11-01-202111-41-06.jpg', NULL, 'বাড়ি বাড়ি গিয়ে তথ্য সংগ্রহ ছাড়াই ভোটার তালিকা প্রকাশ করতে যাচ্ছে নির্বাচন কমিশন (ইসি)....', '<p><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px; text-align: justify;\">বাড়ি বাড়ি গিয়ে তথ্য সংগ্রহ ছাড়াই ভোটার তালিকা প্রকাশ করতে যাচ্ছে নির্বাচন কমিশন (ইসি)। আগামী ১৭ জানুয়ারি সারা দেশে খসড়া ভোটার তালিকা প্রকাশ করা হবে। ওই খসড়ার ওপর দাবি-আপত্তি নিষ্পত্তির পর চূড়ান্ত তালিকা প্রকাশ হবে আগামী ২ মার্চ। ২০১৯ সালে যেসব নাগরিকের তথ্য সংগ্রহ করা হয়েছিল, তাদের মধ্যে গত ১ জানুয়ারি যাদের ১৮ বছর পূর্ণ হয়েছে, তাদের নাম থাকছে এ ভোটার তালিকায়। ভোটার তালিকা আইন ও বিধিমালা অনুযায়ী, প্রতি বছর ভোটার তালিকা হালনাগাদ ও বাড়ি বাড়ি গিয়ে তথ্য সংগ্রহের বিধান রয়েছে।</span></p>\r\n<p><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px; text-align: justify;\">কয়েকজন জেলা নির্বাচন কর্মকর্তার সঙ্গে আলাপ করে জানা গেছে, ২০২০ সালে বাড়ি বাড়ি গিয়ে তথ্য সংগ্রহ না করায় নতুন ভোটারদের বড় একটি অংশ বাদ পড়ার আশঙ্কা রয়েছে। একইসঙ্গে অনেক মৃত ভোটারকে কর্তনও সম্ভব হবে না। তারা বলেন, ২০১৯ সালে বাড়ি বাড়ি গিয়ে ১৩ লাখ ৯২ হাজার ২৩৬ জন মৃত নাগরিকের তথ্য সংগ্রহ করা হয়েছিল। &nbsp;২০২০ সালে প্রকাশিত ভোটার তালিকা থেকে এসব নাগরিকের নাম বাদ দেওয়া হয়। ২০১৯ সালে ১৮ বছরের কম বয়সীদের আগাম তথ্য নেওয়া হয়। ওই তথ্যের ভিত্তিতে নতুন ভোটার অন্তর্ভুক্তির সুযোগ থাকলেও এ সময়ে যারা মারা গেছেন, তাদের নাম কর্তন করা সম্ভব হয়নি। ফলে ভোটার তালিকায় কিছু ত্রুটি-বিচ্যুতি থেকে যাবে, এটাই স্বাভাবিক।</span></p>', 'ভোটার,নির্বাচন', NULL, 'Published', '2021-01-11 11:41:06', 'Yes', 'No', 3, 22, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-11 18:41:06', '2021-01-13 03:14:42');
INSERT INTO `news` (`id`, `title`, `feature_photo`, `feature_medium`, `feature_small`, `photo_caption`, `meta_description`, `description`, `topic`, `video_url`, `published_status`, `published_date`, `is_cover_news`, `show_at_homepage`, `category_id`, `sub_cat_id`, `division_id`, `district_id`, `news_author_id`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(58, 'বুধবার ট্রাম্পকে অভিশংসনের প্রস্তাবে ভোটাভুটি হতে পারে: মার্কিন আইনপ্রণেতা', 'images/news/big//2021/01/11/73693a0e7969e1bd7b3838578f587b2e-5ffc615d6d9bf11-01-202111-48-28.jpg', 'images/news/medium/2021/01/11/73693a0e7969e1bd7b3838578f587b2e-5ffc615d6d9bf11-01-202111-48-28.jpg', 'images/news/small/2021/01/11/73693a0e7969e1bd7b3838578f587b2e-5ffc615d6d9bf11-01-202111-48-28.jpg', NULL, 'যুক্তরাষ্ট্রের প্রতিনিধি পরিষদের রুলস কমিটির চেয়ারপার্সন জিম ম্যাকগভের্ন বলেছেন.....', '<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">যুক্তরাষ্ট্রের কংগ্রেস ভবন ক্যাপিটল হিলে গত সপ্তাহেই ব্যাপক তাণ্ডব চালিয়েছে দেশটির প্রেসিডেন্ট ডোনাল্ড ট্রাম্পের সমর্থকরা। মার্কিন গণতন্ত্রের প্রতীক হিসেবে পরিচিত ক্যাপিটল হিলের ভেতরে যেভাবে এ সহিংসতা চালানো হয়েছে তাকে নজিরবিহীন বলে উল্লেখ করা হচ্ছে। আর এ সহিংসতায় উসকানি দেওয়ার অভিযোগে ট্রাম্পকে অভিশংসনের জোরালো দাবি উঠেছে। এরইমধ্যে অভিশংসন প্রস্তাব উত্থাপনের প্রস্তুতি নিয়েছে ডেমোক্র্যাটরা।</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">সোমবার ডেমোক্র্যাটিক রিপ্রেজেন্টেটিভ জিম ম্যাকগভের্ন বলেন, &lsquo;এ প্রেসিডেন্ট বিবেকবর্জিত কাজ করেছেন। এর জন্য তাকে দাযী করতে হবে।&rsquo;</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">অভিশংসন প্রস্তাব প্রশ্নে তিনি বলেন, &lsquo;আমরা ব্যবস্থা নিচ্ছি কিনা সেটা গুরুত্বপূর্ণ বিষয়। আমরা খুব গুরুত্ব সহকারে এবং সুচিন্তিত উপায়ে কাজ করছি কিনা তা জরুরি। আমরা আশা করছি বুধবার প্রতিনিধি পরিষেই এর সুরাহা করবে। আমার আশা প্রস্তাবটি পাস হবে।&rsquo;</p>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">অভিশংসন প্রস্তাবে &lsquo;ইচ্ছাকৃতভাবে যুক্তরাষ্ট্র সরকারের বিরুদ্ধে সহিংসতায় উসকানি দেওয়ার মধ্য দিয়ে উচ্চ অপরাধ ও অপকর্ম সংঘটনের অভিযোগ আনা হয়েছে ট্রাম্পের বিরুদ্ধে।&rsquo; আইনপ্রণেতারা যুক্তি দেখিয়েছেন, ট্রাম্প যেভাবে নির্বাচনকে খর্ব করেছেন এবং ৬ জানুয়ারি ক্যাপিটল হিলে হামলার দিনে সমর্থকদের যেভাবে নির্দেশনা দিয়েছেন তার মধ্য দিয়ে &lsquo;তিনি প্রেসিডেন্ট হিসেবে তার দায়িত্বের সঙ্গে বিশ্বাসঘাতকতা&rsquo; করেছেন।</p>\r\n<div class=\"aligncenter\" style=\"padding: 0px; margin: 0px; outline: 0px; text-align: center; overflow: hidden; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 22px;\">\r\n<div style=\"padding: 0px; margin: 0px auto; outline: 0px; overflow: hidden; max-width: 728px;\">\r\n<div id=\"div-gpt-ad-1529590373585-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden;\" data-google-query-id=\"CMnVgraplO4CFUIFcQodaE4B_w\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p class=\"alignfull\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; text-align: justify; font-size: 20px; line-height: 30px; overflow-wrap: break-word; color: #000000; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">৪৩৫ আসনবিশিষ্ট প্রতিনিধি পরিষদে ট্রাম্পের বিরুদ্ধে উত্থাপিত হতে যাওয়া আর্টিকেল অব ইমপিচমেন্টে রবিবার (১০ জানুয়ারি) নাগাদ কো স্পন্সর করেছেন ২০০ জন। নিম্ন কক্ষ প্রতিনিধি পরিষদে ডেমোক্র্যাটদের সংখ্যাগরিষ্ঠতা রয়েছে। সেখানে পাস হওয়ার পর তা উচ্চ কক্ষ সিনেটে পাঠাতে হবে। ট্রাম্পকে অভিশংসন করতে হলে আর্টিকেলটি প্রতিনিধি পরিষদে সংখ্যাগরিষ্ঠ ভোটে পাসের পর তা সিনেটেও দুই-তৃতীয়াংশ ভোটে পাস করাতে হবে।</p>', 'যুক্তরাষ্ট্র,ডোনাল্ড ট্রাম্প', NULL, 'Published', '2021-01-11 11:48:28', 'Yes', 'Yes', 2, 1, 22, NULL, 4, 1, 3, NULL, NULL, '2021-01-11 18:48:28', '2021-01-13 03:14:20'),
(59, '‘করোনা ট্রেসার’ অ্যাপ তৈরিকে চ্যালেঞ্জ হিসেবে নিয়েছিলাম: মালিহা কাদির', 'images/news/big//2021/01/11/3f6abcafb33b526e78ed7d7bc95b84b5-5edd03be6210d11-01-202112-08-36.jpg', 'images/news/medium/2021/01/11/3f6abcafb33b526e78ed7d7bc95b84b5-5edd03be6210d11-01-202112-08-36.jpg', 'images/news/small/2021/01/11/3f6abcafb33b526e78ed7d7bc95b84b5-5edd03be6210d11-01-202112-08-36.jpg', NULL, 'কোভিড-১৯ মহামারির বিস্তার রোধে সারাদেশের জন্য পরীক্ষামূলকভাবে ‘করোনা ট্রেসার বিডি’ অ্যাপ চালু হয়েছে।', '<p><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">কোভিড-১৯ মহামারির বিস্তার রোধে সারাদেশের জন্য পরীক্ষামূলকভাবে &lsquo;করোনা ট্রেসার বিডি&rsquo; অ্যাপ চালু হয়েছে। গত ৪ জুন উদ্বোধনের পর এখন পর্যন্ত ২ লাখেরও বেশি মানুষ এই অ্যাপে যুক্ত হয়েছে। আইসিটি বিভাগের উদ্যোগে অত্যাধুনিক প্রযুক্তি ব্যবহারের মাধ্যমে &lsquo;করোনা ট্রেসার বিডি&rsquo; বানিয়েছে দেশের শীর্ষস্থানীয় টেক স্টার্টআপ &lsquo;সহজ লিমিটেড&rsquo;। বাংলাদেশে এই প্রথম দ্রুত সময়ে এ ধরনের অ্যাপ নির্মাণ করা হলো। কম সময়ের সময়ের মধ্যে অ্যাপটি বানানো চ্যালেঞ্জ হিসেবে নিয়েছিলেন সহজ-এর প্রতিষ্ঠাতা ও ব্যবস্থাপনা পরিচালক মালিহা কাদির।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">মালিহা কাদির বাংলা ট্রিবিউনকে বলেন, &lsquo;অ্যাপের ইন্টারফেস দেখে বোঝা যাবে না এর পেছনে কত রকমের কাজ হচ্ছে। আমাদের মাথায় রাখতে হয়েছে যে, ১৬ কোটি মানুষ এই অ্যাপে যুক্ত হবে। তাদের সবার তথ্য বিশ্লেষণ করে দ্রুত সময়ে সহায়তা প্রদানের বিষয়টিকে গুরুত্ব দিয়েছি আমরা।&rsquo;</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\" /><span style=\"font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 20px;\">শুধু এই অ্যাপটিই নয়, মালিহা কাদির নানা উদ্যোগের কারণে খ্যাতি অর্জন করেছেন।&nbsp; ২০১৭ সালে ওয়ার্ল্ড ইকোনমিক ফোরামের (ডব্লিউইএফ) ঘোষিত ১০০ জন ইয়াং গ্লোবাল লিডারের (ওয়াইজিএল) তালিকায় স্থান করে নিয়েছিলেন মালিহা।</span></p>', 'করোনা,অ্যাপ,আইসিটি', NULL, 'Published', '2021-01-11 12:08:36', 'No', 'No', 25, NULL, 23, NULL, 4, 1, 3, NULL, NULL, '2021-01-11 19:08:36', '2021-01-11 19:08:36'),
(60, 'গল্প: নির্বাক মায়া', 'images/news/big//2021/01/11/e2d9c682b9c2d2e3499848a5ecb9500711-01-202113-12-50.jpg', 'images/news/medium/2021/01/11/e2d9c682b9c2d2e3499848a5ecb9500711-01-202113-12-50.jpg', 'images/news/small/2021/01/11/e2d9c682b9c2d2e3499848a5ecb9500711-01-202113-12-50.jpg', NULL, 'নিরব দোকানে বসে চা খাচ্ছিল। হঠাৎ মুষলধারে বৃষ্টি। অনেক্ষণ হলো বৃষ্টি থামছে না।', '<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">নিরব দোকানে বসে চা খাচ্ছিল। হঠাৎ মুষলধারে বৃষ্টি। অনেক্ষণ হলো বৃষ্টি থামছে না। একটা সিগারেট ধরাতে খেয়াল করলো (ধুমপান স্বাস্থ্যের জন্য ক্ষতিকর) তার কানে একটা আওয়াজ আসছে। কি মিষ্টি আওয়াজ! কেউ একজন মিষ্টি করে হাসছে। দোকান থেকে বেরিয়ে দেখে একটা মেয়ে হাতে কদম ফুল নিয়ে পথশিশুদের সঙ্গে বৃষ্টিতে ভিজছে আর হাসছে। কি সুন্দর সে হাসি! কি সুন্দর হাসির ভঙ্গিমা!</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">বৃষ্টি শেষ। মেয়েটিও চলে যেতে লাগলো। বাচ্চাদের মধ্যে একজন বলে উঠলো দিয়া আপু আবার আসবেন। দিয়া বাচ্চাটাকে কোলে নিয়ে আদর করে হাসি দিয়ে বলল আসবো।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">পথের বাচ্চাদের প্রতি দিয়ার ভালোবাসা দেখে নিরবের খুব ভালো লাগছিলো। বৃষ্টি হলেই দিয়া এই বাচ্চাদের মাঝে আসে বাচ্চাদের আনন্দ দিতে। আর নিরব আসে এইসব আনন্দ দেখতে। নিরব দেখে সুন্দর মনের মেয়েটিকে, দেখে তার হাসিও। প্রথম দিনের দেখা থেকেই নিরব দিয়ার পিছু নিতে থাকে। দিয়া অবশ্য বিষয়টা টের পায়।</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">ক্যাম্পাসে আসলেই দিয়া তার প্রিয় আড্ডার জায়গাতে চলে যায় বান্ধবীদের নিয়ে। আজও গেল। গিয়ে দেখে সেই ছেলেটা, যে তাকে কয়েকদিন থেকে ফলো করে।</p>', 'গল্প', NULL, 'Published', '2021-01-11 13:12:50', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 2, NULL, NULL, '2021-01-11 20:12:50', '2021-01-11 20:12:50'),
(61, 'দেশপ্রেম ও জাতীয়তাবাদ: প্রসঙ্গ রবীন্দ্রনাথ', 'images/news/big//2021/01/11/f8b55e37967904eddb6147c2fbe1d8aa11-01-202114-23-21.png', 'images/news/medium/2021/01/11/f8b55e37967904eddb6147c2fbe1d8aa11-01-202114-23-22.png', 'images/news/small/2021/01/11/f8b55e37967904eddb6147c2fbe1d8aa11-01-202114-23-22.png', NULL, 'দেশপ্রেম ও জাতীয়তাবাদ: প্রসঙ্গ রবীন্দ্রনাথ', '<p><span style=\"color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">আশীষ নন্দী তার Nationalism, Genuine and Spurious প্রবন্ধে সুস্পষ্টভাবে বলেছেন, জাতীয়তবাদ আর দেশপ্রেম সমার্থক নয়। জাতীয়তাবাদ অন্যান্য আদর্শের মতো মানুষের ব্যক্তিত্বের মাঝে সৃষ্ট একটি আদর্শ। জাতিরাষ্ট্রের ধারণার অনুবন্ধ হিসেবে তা ঔপনিবেশিক আমলে এশিয়া ও আফ্রিকার ঘাড়ে চড়ে ঘুরে বেড়িয়েছে। দেশপ্রেম একটি সংবেদনশীল অনুভূতি যা মূলত একটি ভূ-খণ্ড, কৃষ্টি, সংস্কৃতি ও তার অপরাপর বৈশিষ্ট্যকে কেন্দ্র করে গড়ে ওঠে।</span></p>\r\n<p><span style=\"color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">রবীন্দ্রনাথ স্বদেশপ্রেমকে মূল্যবান মনে করেছেন, কিন্তু জাতীয়তাবাদী চেতনাকে খারিজ করে দিয়েছেন। সাধারণ মতে রবীন্দ্রনাথ ঠাকুর ভারতের জাতীয় কবি যিনি ভারতের জাতীয় সংগীত রচনা করেছেন। বাংলাদেশের জাতীয় সংগীতের রচয়িতাও তিনি। যদিও মুসলিম ধর্মীয় উগ্রবাদীরা অসংখ্যবার এই সংগীত বদলে ফেলার দাবি করেছে যা মূলত সাম্প্রদায়িক ও উগ্র জাতীয়তাবাদী বিদ্বেষপ্রসূত একটি ভাবনা। কিন্তু এমন দৃষ্টান্ত একটি নয়। পাকিস্তানের জাতীয় কবি ইকবালের &lsquo;সারে জাহা সে আচ্ছা হিন্দুস্তা হামারা&hellip;&rsquo; ভারতীয় সেনাবাহিনীর রণসংগীত। এই গান গেয়ে তারা পাকিস্তান সেনাবাহিনীর বিরুদ্ধে যুদ্ধে অবতীর্ণ হয়। ফলে ভূ-খণ্ডের ধারণা ও জাতীয় সংস্কৃতিচেতনার মধ্যে অদ্ভুত কিছু বৈপরীত্য রয়েছে। ঔপনিবেশিক ভারতে উগ্র জাতীয়তাবাদের বিরুদ্ধে সর্বদা তাঁর অবস্থান ছিল। তাঁর এই নমনীয় অবস্থানকে ভারতীয়রা কখনো ভালো চোখে দেখেননি। &lsquo;গোরা&rsquo; &lsquo;ঘরে বাইরে&rsquo; ও &lsquo;চার অধ্যায়&rsquo;- এই তিনটি উপন্যাসেই তিনি উগ্র জাতীয়তাবাদী চেতনাকে আক্রমণ করেছেন। এই অনুভূতিকে তিনি দেশপ্রেম হিসেবে স্বীকার করেননি। যদিও তার স্বদেশ প্রেমের গান সেই সময় বহু সংগ্রামে প্রেরণাদায়ী সংগীত হিসেবে গীত হতো। এমনকি জেলখানাতেও অনেক বিপ্লবী তাঁর গান গেয়ে তাঁদের চেতনা উদ্দীপ্ত রাখতেন।</span></p>\r\n<p><span style=\"color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">আশিষ নন্দী আরো জানাচ্ছেন, স্বদেশ প্রেমকে প্রকাশ করতে তিনি দেশাভিমান, স্বদেশপ্রেম, দেশভক্তি, স্বদেশচেতনা ইত্যাদি শব্দ ব্যবহার করলেও কখনোই এই শব্দগুলোকে Nationalism- এর প্রতিশব্দ হিসেবে ব্যবহার করেননি। জাতীয়তাবাদ বোঝাতে তিনি সবসময়ই ইংরেজি Nationalism শব্দটি ব্যবহার করেছেন। রবীন্দ্রনাথ দেশপ্রেমিক ছিলেন কিন্তু জাতীয়তাবাদী নন। দেশ বলতে তিনি একটি ভূ-খণ্ড ও তাঁর নিজস্ব স্বদেশী নানা উপাদানকে বুঝতেন যার সঙ্গে জাতিরাষ্ট্রের ধারণা ও জাতীয়তার আদর্শভিত্তিক ভূ-খণ্ডের পার্থক্য রয়েছে। উল্লেখিত তিনটি উপন্যাসে তিনি ভিন্ন ভিন্ন রাজনৈতিক বক্তব্য প্রকাশ করেছেন যার মধ্য দিয়ে জাতীয়তাবাদ সম্পর্কে তার একটি নিজস্ব আদল ধরা পড়েছে। &lsquo;গোরা&rsquo;তে তিনি Nationalism- এর একটি মনস্তাত্ত্বিক ব্যাখ্যা দিয়েছেন। তিনি বলতে চেয়েছেন, জাতীয়তাবাদী চেতনা এক অর্থে অভারতীয়, প্রতি-ভারতীয় এবং ভারতীয় সভ্যতা, তার ধর্মীয় আদর্শ ও সাংস্কৃতিক বহুত্ববাদীতার বিরুদ্ধে এক ধরনের অপরাধ। &lsquo;ঘরে-বাইরে&rsquo;তে দেখাচ্ছেন কীভাবে জাতীয়তাবাদ সম্প্রদায়গত জীবনকাঠামোকে ভেঙে চুরমার করে দেয় এবং ধর্মীয় সহিংসতাকে উসকে দেয়। &lsquo;চার অধ্যায়&rsquo;-এ দেখা যায় শিল্পায়নের বীজ পোতা হচ্ছে সেখান থেকে শ্রমিক বিদ্রোহের সূচনা এবং পরবর্তী সময়ে সংগঠিত বিদ্রোহের সূত্রপাত ঘটছে যা জাতীয়তাবাদী আন্দোলনের সঙ্গে সম্পৃক্ত।</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'রবীন্দ্রনাথ,প্রবন্ধ', NULL, 'Published', '2021-01-11 14:23:21', 'No', 'No', 40, NULL, 23, NULL, 7, 1, 7, NULL, NULL, '2021-01-11 21:23:22', '2021-01-11 21:23:22'),
(62, 'বঙ্গবন্ধুকে নিয়ে দুটি কবিতা', 'images/news/big//2021/01/11/c9f4b21a3fec25d4b28c733b23d8096111-01-202114-26-10.jpg', 'images/news/medium/2021/01/11/c9f4b21a3fec25d4b28c733b23d8096111-01-202114-26-10.jpg', 'images/news/small/2021/01/11/c9f4b21a3fec25d4b28c733b23d8096111-01-202114-26-10.jpg', NULL, 'বঙ্গবন্ধুকে নিয়ে দুটি কবিতা', '<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">ভোরের আলো ফোটে স্নিগ্ধতার পরশ মেখে-<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />১৫ আগস্ট ১৯৭৫ এ কেমন ভোর!<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />বিষাদিত স্মৃতি, শুধুই তাড়া করে<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />জাতির কপালে কলঙ্কের তিলক এঁটে দেয়।<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />পিতাকে হত্যা করা হয়েছে সপরিবারে!<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />শুধু কি তাই? পৃথিবীর আলো দেখার<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />সুযোগ পেল না মায়ের জঠরে থাকা শিশু!<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />ঘাতকের হাত কাঁপেনি একটুও-<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />ছোট শিশু রাসেল, সুকান্ত বাবু<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />কী ছিল তাদের অপরাধ?<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />বেতারে ঘাতকের দাম্ভিক ঘোষণা,<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />সারা বাংলাকে এতিম করে দেয়ার ঘৃণ্য উল্লাস!<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />পুত-পবিত্র বেদনার লেশমাত্র চিহ্ন নেই<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />পিতার দেহখানা পড়ে আছে সিঁড়িতে।<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />সফেদ সাদা পাঞ্জাবি, বুকে বুলেটের ক্ষত<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />মমতায় ভরা মুখখানা পানে চেয়ে দেখো-<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />সৌম্য-শান্ত পিতা যেন ঘুমিয়ে আছে<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />আমাদের নতুন করে জাগাতে।</p>\r\n<div class=\"b2931fd8d51b61a90106ff2a50d8c36d\" style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px; float: none; text-align: center;\" data-index=\"1\"><ins class=\"adsbygoogle\" style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; display: block; height: 0px;\" data-ad-client=\"ca-pub-2783819449397342\" data-ad-slot=\"1192718088\" data-ad-format=\"auto\" data-full-width-responsive=\"true\" data-adsbygoogle-status=\"done\"><ins id=\"aswift_4_expand\" style=\"padding: 0px; margin: 0px; list-style: none; border: none; outline: none; box-sizing: border-box; display: inline-table; height: 0px; position: relative; visibility: visible; width: 720px; background-color: transparent;\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><ins id=\"aswift_4_anchor\" style=\"padding: 0px; margin: 0px; list-style: none; border: none; outline: none; box-sizing: border-box; display: block; height: 0px; position: relative; visibility: visible; width: 720px; background-color: transparent; overflow: hidden; opacity: 0;\"><iframe id=\"aswift_4\" style=\"padding: 0px; margin: 0px; list-style: none; border-width: 0px; border-style: initial; outline: none; box-sizing: border-box; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 720px; height: 280px;\" src=\"https://googleads.g.doubleclick.net/pagead/ads?guci=2.2.0.0.2.2.0.0&amp;client=ca-pub-2783819449397342&amp;output=html&amp;h=280&amp;slotname=1192718088&amp;adk=2527922870&amp;adf=4108934262&amp;pi=t.ma~as.1192718088&amp;w=720&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1610393093&amp;rafmt=1&amp;psa=1&amp;format=720x280&amp;url=https%3A%2F%2Fwww.deshebideshe.com%2F1830%2F%25e0%25a6%25ac%25e0%25a6%2599%25e0%25a7%258d%25e0%25a6%2597%25e0%25a6%25ac%25e0%25a6%25a8%25e0%25a7%258d%25e0%25a6%25a7%25e0%25a7%2581%25e0%25a6%2595%25e0%25a7%2587-%25e0%25a6%25a8%25e0%25a6%25bf%25e0%25a7%259f%25e0%25a7%2587-%25e0%25a6%25a6%25e0%25a7%2581%25e0%25a6%259f%25e0%25a6%25bf-%25e0%25a6%2595%25e0%25a6%25ac%2F&amp;flash=0&amp;fwr=0&amp;fwrattr=true&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;dt=1610393092821&amp;bpp=1&amp;bdt=345&amp;idt=194&amp;shv=r20201203&amp;cbv=r20190131&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc31be87852dd65fa-22de681a90c5000a%3AT%3D1610384015%3ART%3D1610384015%3AS%3DALNI_MZjvT_4KuMrDpzyvxYasHi4HZX20w&amp;prev_fmts=0x0%2C728x90%2C720x280%2C720x280&amp;nras=1&amp;correlator=3849700182718&amp;frm=20&amp;pv=1&amp;ga_vid=197403620.1610384017&amp;ga_sid=1610393093&amp;ga_hid=1250267110&amp;ga_fc=0&amp;u_tz=-300&amp;u_his=8&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=398&amp;ady=2038&amp;biw=1903&amp;bih=912&amp;scr_x=0&amp;scr_y=0&amp;eid=21066428%2C21067981%2C21068769&amp;oid=3&amp;pvsid=3640060577143292&amp;pem=785&amp;ref=https%3A%2F%2Fwww.deshebideshe.com%2Fcategory%2Fliterature%2Fpoetry%2F&amp;rx=0&amp;eae=0&amp;fc=1920&amp;brdim=-1920%2C0%2C-1920%2C0%2C1920%2C0%2C1920%2C1040%2C1920%2C912&amp;vis=1&amp;rsz=%7Co%7CoeEbr%7C&amp;abl=NS&amp;pfx=0&amp;fu=8320&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;btvi=2&amp;fsb=1&amp;xpc=45Zda02d36&amp;p=https%3A//www.deshebideshe.com&amp;dtd=205\" name=\"aswift_4\" width=\"720\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" allowfullscreen=\"true\" data-google-container-id=\"a!4\" data-google-query-id=\"CKTZouHNlO4CFZFmGwodUbIMFQ\" data-load-complete=\"true\"></iframe></ins></ins></ins></div>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">জাগো বাঙালি, জেগে ওঠো<br style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\" />নতুন করে সোনার বাংলা গড়ো।</p>', 'কবিতা', NULL, 'Published', '2021-01-11 14:26:10', 'No', 'No', 40, NULL, 23, NULL, 7, 1, 7, NULL, NULL, '2021-01-11 21:26:10', '2021-01-11 21:26:10'),
(63, 'আপন-পর', 'images/news/big//2021/01/11/writer-writing-ss-192011-01-202121-27-53.jpg', 'images/news/medium/2021/01/11/writer-writing-ss-192011-01-202121-27-53.jpg', 'images/news/small/2021/01/11/writer-writing-ss-192011-01-202121-27-53.jpg', NULL, 'আপন-পর...', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">কিসের কাউয়্যা ক্যাচাল বউ, ঐ যে&mdash;ওটি; দেকিস ন্যা, তামান মানুষ খালি জড়ো হতিচে! অ্যালা মাইঁ, বিয়ানা থাকি খালি মা-নু-ষ আর মানুষ। কথাগুলো বলতে বলতে হরিপদর মা জটলার দিকে চাতক পাখির মতো তাকিয়ে থাকে। সকাল থেকে কালীপ্রসন্নের উঠানে যে জটলাটি পেকেছে তার কারণ জানতে হরিপদর মায়ের চোখ যেন আর সরতে চায় না। একজোড়া চোখ সকাল থেকে চাতক পাখির মতো তাকিয়ে আছে জটলাটির দিকে। অথচ, দুবাড়ি পরেই জটলাটি, চাইলেই কয়েক কদম হেঁটে যাওয়া যায়। তবুও কাছে যেতে মন চায় না মধুবালার; ভয়ে। ঘর পোড়া গরু বলে কথা, সিঁদুরে মেঘ তো ভয়ের জন্ম দেবেই দেবে!</p>\r\n<div id=\"v-banglatribune-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi; font-size: 22px; width: 649.188px;\">\r\n<div id=\"unitDivWrapper-0\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; width: 649.188px;\">&nbsp;</div>\r\n<div id=\"vdo_companion_wrapper\" style=\"padding: 0px; margin: 10px 0px 0px; outline: 0px; overflow: hidden; text-align: center;\">&nbsp;</div>\r\n</div>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">গেল বছরের কথা।। মনে আছে তার। মনে আছে সবটুকু, এতটুকুও ভোলেনি মধুবালা। কই আর বেশি দিন! আজ আষাঢ়ের আঠারো দিন যায়, গেল আষাঢ় ঠিক না... ভাদরের মাঝামাঝিই হবে, সামাদ মোল্লা যেদিন মার্ডার হয়&mdash;ঐ দিন। সেদিনও এরকম একটি জটলা পেকেছিল সামাদ মোল্লার উঠানে। চারদিক থেকে সেকি মানুষের ঢল, মানুষ আর মানুষ! এর-ওর মুখ হয়ে চারদিকে যেন শোরগোল পড়ে যায় &lsquo;সামাদ মোল্লা মাডার হচে গো হায় হায় হায়।&rsquo;</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">জটলায় উপস্থিত ছেলে-বুড়ো, আবাল-বনিতারা কানা-ঘুষা করে! কেউ কেউ আবার বিস্তারিত জানার আশায় এর-ওর কাছে প্রশ্ন করেও চলে একের পর এক, ক্যাংকা করি হলো বাহে?... কেটা.. কেটা মাল্লো বাহে?... অ&rsquo;রে ছোটোটা! ...অ্যালা অ্যালা এটা ক্যাংকা কতা... হাতির নাকান এটা মাইনষোক্ বলে এক বাড়ি দিয়্যাই মারি ফ্যালাচে!&mdash;এরকম আরও অনেক কথা যখন আকাশে বাতাসে ধ্বনিত হতে থাকে ঠিক তখনই হরিপদ এসে উপস্থিত হয় সামাদ মোল্লার উঠানে। কারও সাথে কোনো কথা বলেনি হরিপদ। তার অতি উৎসাহী চোখদুটি মানুষের ভিড় ঠেলে যখন সোজা গিয়ে উপস্থিত হয়েছে বাড়ির ভিতর, তখন সামাদ মোল্লার সটান পড়ে থাকা রক্তমাখা শরীর দেখে হরিপদও শিউরে উঠেছে। শত শত মানুষের ভিড়ে বারবার আঁতকে উঠেছে হরিপদর শরীর-মন। ভয়ে শক্ত হয়েছে তার শরীরের সমস্ত মাংশপেশি; ক্রমাগত অসহায়ও হয়েছে হরিপদর বোধ। অথচ, সেই সময় নিজের ভয় কাটাতে কোনো ব্রহ্মা কিংবা ভোলানাথের কথা স্মরণ করেনি হরিপদ। শুধু নিকটে মায়ের অনুপস্থিতিটুকুই উপলব্ধি করেছে বারংবার। চৌদ্দ-পনেরো বছরের বালকের কাছেও যে ঈশ্বর অপেক্ষা মায়ের অনুপস্থিতি অধিক দুর্ভোগের জন্ম দেয়!</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\"><strong style=\"padding: 0px; margin: 0px; outline: 0px;\">২.</strong></p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">হরিপদ যখন শক্ত মাংশপেশি নিয়ে লাশের পাশে দাঁড়ানো, তখন মধুবালা ছিলো বাড়িতে। প্রতিদিনের মতো দুপুরের ধোয়া-মোছা আর রান্নার কাজে ব্যস্ত ছিলো মধুবালা; সেদিন তার মুড়ি ভাজা এবং মোয়া বানানোর মতো কাজ-বাজও তেমন ছিলো না। অন্য সবার মতো মধুবালাও শুনেছে সামাদ মোল্লা মার্ডার হওয়ার খবর। একলা সংসার, বাড়ির কাজের কথা ভেবে যেতে পারেনি মধুবালা। তবে ঠিক করে রেখেছে কাজ-বাজ শেষ করে একপাক ঘুরে আসবে সামাদ মোল্লার বাড়ি থেকে। গ্রামে এত বড় একটি লঙ্কাকাণ্ড ঘটে যাবে আর মধুবালা দেখতে যাবে না, তা তো হয় না! মধুবালা যাবেই যাবে। এমন লঙ্কাকাণ্ডে না গেলে, দু-চার কথার জাবর না কাটলে, মধুবালাদের তো বড়সড় অপরাধী মনে হয় নিজের কাছে!</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 20px; line-height: 30px; overflow-wrap: break-word; font-family: SolaimanLipi, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif, Vrinda, SolaimanLipi;\">সেদিন দ্রুত কাজ-বাজ শেষ করেছিলো মধুবালা। ঘরের দরজায় ছিটকানি আটকিয়ে সামাদ মোল্লাকে দেখতে যাওয়ার উদ্দেশ্যে যখন বাড়ির বাইরে আসছিলো মধুবালা, এমন সময়, কালীপ্রসন্নের ছোট ভাই নগেনের বউ মালতি, চিৎকার করে মধুবালাকে ডাকতে ডাকতে বাড়িতে এসে উপস্থিত হয়। কিছু বলবার আকুতি নিয়ে অনেকটা পথ দৌড়ে এসেছিলো মালতি, উত্তেজনার সাথে হাঁপিয়েও উঠেছিলো খুব। মধুবালা মালতিকে আঙিনায় পিঁড়ি পেতে দিয়ে স্থির হতে বলে। কল থেকে এক গ্লাস ঠান্ডা পানি এনে দিয়ে মনে আগ্রহ জমিয়ে মালতির পাশে বসে মধুবালা। গ্লাসের সবটুকু পানি এক নিশাসে খেয়েও মালতির শরীরের উত্তেজনা তবু কমেনি। শরীরের উত্তেজনার সাথে চোখে-মুখে চাপা আতঙ্ক জড়ো করে মালতি চিৎকার দিয়ে ওঠে, ও দিদি গো, তোর হরিক্ পুলিশ ধরি নিয়্যা গেচে গো-ও... ও দি-দি গো। মালতির চিৎকার শুনে মনে হয় তারা পাশাপাশি বসে নেই, তাদের মধ্যে অন্তত দের-দুই কিলোমিটারের ব্যবধান! মালতির চিৎকার শুনে মধুবালাও চিৎকার দিয়ে উঠেছিলো আহাজারির ঢঙে, ও হরি গো কী হলো গো-ও হায় হায় হায়! মধুবালার চিৎকারের আকুতিতে বাতাসে যেন ভারী ঢেউয়ের জন্ম হয়েছিলো সেদিন। বেলা গড়ানোর সাথে সাথে সেই ঢেউ আর্তনাদ হয়ে আছড়েও পড়েছিলো উঠানে উঠানে।।</p>', 'সাহিত্য', NULL, 'Published', '2021-01-11 21:27:53', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 04:27:53', '2021-01-12 22:10:48'),
(64, 'সোনার অঙ্গে সোনার ফুল', 'images/news/big//2021/01/12/138283567-396367978286843-2441693331020789205-n12-01-202100-14-47.jpg', 'images/news/medium/2021/01/12/138283567-396367978286843-2441693331020789205-n12-01-202100-14-47.jpg', 'images/news/small/2021/01/12/138283567-396367978286843-2441693331020789205-n12-01-202100-14-48.jpg', NULL, 'সোনার অঙ্গে সোনার ফুল...', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">সোনার অঙ্গে ফুটেছে কি সোনার ফুল</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">ফুলের সুবাস নেব, কিনে দেব নাকফুল,</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">যদি বিনিময় হয় দুটি অঙ্গের যৌবনফুল</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">ডুবে যেতে চাই, মরে যেতে চাই, না পেয়ে কূল।</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভাবতে চাই না একটিবারও হলো কি ভুল<br style=\"box-sizing: border-box;\" />ফুলের নদীতে সোনার ফুলে হয়ে যাবো মশগুল,<br style=\"box-sizing: border-box;\" />ও আমার প্রেমনদী ঢেউকন্যা প্রেমের ফুল<br style=\"box-sizing: border-box;\" />সবটুকু উজাড় করে দিতে একটুও করোনা ভুল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রেম বিনে কি সার্থক হয় মিলনের মূল<br style=\"box-sizing: border-box;\" />সোনার অঙ্গে সোনার ফুল মধু তুলতুল।<br style=\"box-sizing: border-box;\" />নিত্য নিবো নিত্য চাবো চুল-মূল<br style=\"box-sizing: border-box;\" />প্রেম নদীতে যৌবন ধ্বনি কুলকুল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রেম যৌবন সে-ই যে আসল<br style=\"box-sizing: border-box;\" />প্রেম বিনে বাকি সবই যে নকল।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #808080;\"><em style=\"box-sizing: border-box;\">এলএ/এসইউ/এমকেএইচ</em></span></p>', 'সাহিত্য', NULL, 'Published', '2021-01-11 21:32:16', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 04:32:16', '2021-01-12 22:02:51'),
(65, 'আমাদের শৈশব', 'images/news/big//2021/01/11/f1ccae9f-c233-4fee-b33d-ae430f43fe4c-ea840735-416f-4407-b4d7-1be67b7ac1a2-cmprsd-4011-01-202121-37-39.jpg', 'images/news/medium/2021/01/11/f1ccae9f-c233-4fee-b33d-ae430f43fe4c-ea840735-416f-4407-b4d7-1be67b7ac1a2-cmprsd-4011-01-202121-37-39.jpg', 'images/news/small/2021/01/11/f1ccae9f-c233-4fee-b33d-ae430f43fe4c-ea840735-416f-4407-b4d7-1be67b7ac1a2-cmprsd-4011-01-202121-37-39.jpg', NULL, 'আমাদের শৈশব...', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">হঠাৎ করেই ইটপাথরের শহরে বোবা অনুভূতিগুলোর কলরব শুরু হয়। মনের অজান্তেই শৈশবের স্মৃতিচারণ, বুকের ভেতর হুহু করে ওঠে কেমন একটা গভীর অনুভব। চোখের সামনেই একটা দৃশ্য দেখি ছবি ভেসে উঠে আমার শৈশবের। একটা চিরচেনা দৃশ্যপট আমার শৈশব-কৈশোর মিশে একাকার হয়ে আছে ছবিটায়। সৌভাগ্যক্রমে আমার শৈশব কেটেছে গ্রামে। গ্রামের বাচ্চারা শৈশবে যতটা সারল্য/আনন্দ নিয়ে বড় হয়। আমার মনে হয় শহরের বাচ্চারা তেমন কিছুই পায় না। তাদের শৈশব কাটে বইয়ের বোঝা আর চার দেয়ালের গণ্ডির মধ্যে।</span><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">গ্রামে থাকার বদৌলতে, গ্রামের আর সব বাচ্চাদের মতো আমিও ছোটবেলায় লোডশেডিং হলে বাড়ির উঠানে কত এভাবে বসে পড়েছি। আব্দুল কাকা বসে মাছ ধরার জাল বুনতেন সাথে বুনে যেতেন আমাদের আবেশিত করার কত গল্প। কত রাজা, কত সওদাগরের কাহিনি আমাদের ছোট্ট চোখগুলোতে সে সব কাহিনি ভেসে উঠতো আমরা যেন স্পষ্ট দেখতে পেতাম সেসব কাহিনি।</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আমার দাদি কত গল্প বলতেন নদীতে নাকি আগের যুগে হাত দিয়েই আমাদের মতো সাইজের মাছ পাওয়া যেত। বর্ষায় নদীর পানির স্রোতে ভেসে যেত মণিমুক্ত ভরা লোহার সিন্দুক। সেটা পাহারা দিত অজানা কোনো কিছু যাকে পছন্দ হতো তাকে স্বপ্নে দেখা দিত। সে নদীতে গেলে তার পিছনে পিছনে মণিমুক্তা ভরা সিন্দুক বাড়ি চলে আসত। তবে পছন্দের ব্যক্তি ছাড়া কেউ সেই সিন্দুক আসা দেখতে পেত না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তবে বাচ্চারা নদীতে গেলে সিন্দুক তার ঢাকনা খুলে বাচ্চাদের ভিতরে ভরে নিত। এভাবে আমার দাদি প্রতিটা কল্প কাহিনিতে আমাদের গোপনে মেসেজ দিতেন, যাতে আমরা ভুলেও নদী বা পুকুরের আশপাশে না যাই। খুব ভয় পেয়ে গুটিয়ে যেতাম দাদির কোলে।</p>', 'সাহিত্য,ছেলে বেলা', NULL, 'Published', '2021-01-11 21:37:39', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 04:37:39', '2021-01-12 22:02:12'),
(66, 'অজয় মৈত্র অপুর কবিতা', 'images/news/big//2021/01/11/poem-2021010914012111-01-202121-40-23.jpg', 'images/news/medium/2021/01/11/poem-2021010914012111-01-202121-40-23.jpg', 'images/news/small/2021/01/11/poem-2021010914012111-01-202121-40-23.jpg', NULL, 'অজয় মৈত্র অপুর কবিতা...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">আমি তোমার পাপ</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কী নির্দ্বিধায় বলে দিলে আমি তোমার পাপ,<br style=\"box-sizing: border-box;\" />আমি হারিয়ে যাবার পথেও তোমাকে খুঁজে বেড়াই<br style=\"box-sizing: border-box;\" />নিজের সব পূণ্যকে তোমায় উৎসর্গ করি<br style=\"box-sizing: border-box;\" />তারপরও আমি পাপ</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সূর্য ওঠার পর কুয়াশা কেটে যায়<br style=\"box-sizing: border-box;\" />তাহলে কি কুয়াশা শীতের পাপ।<br style=\"box-sizing: border-box;\" />আমিও তো তোমাকে আগলে রেখেছি কুয়াশারই মতো,<br style=\"box-sizing: border-box;\" />তারপরও আমি পাপ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভোরে শিশির সবুজের গা গড়িয়ে পড়ে পাপ রচনা করে<br style=\"box-sizing: border-box;\" />তাহলে তো আমিও পাপ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তোমার এলো চুলে স্পর্শ করা বাতাস সবচেয়ে বড় পাপী<br style=\"box-sizing: border-box;\" />তোলপাড় করে দেয় তো তোমাকে।<br style=\"box-sizing: border-box;\" />তাহলে তো আমিও পাপ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জোৎস্না রাতের চাঁদের আলোয় পাপ বেশি<br style=\"box-sizing: border-box;\" />কারণ ওটা তোমাতেই সিক্ত হয়।<br style=\"box-sizing: border-box;\" />তাহলে তো আমি পাপ।</p>', 'সাহিত্য,কবিতা', NULL, 'Published', '2021-01-11 21:40:23', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 04:40:23', '2021-01-12 22:09:39'),
(67, 'শেষ হলো ‘বইঘর’ নিবেদিত প্রথম সাহিত্য ও সংস্কৃতি উৎসব', 'images/news/big//2021/01/11/boighar-1-2020122716113611-01-202121-42-25.jpg', 'images/news/medium/2021/01/11/boighar-1-2020122716113611-01-202121-42-25.jpg', 'images/news/small/2021/01/11/boighar-1-2020122716113611-01-202121-42-25.jpg', NULL, 'শেষ হলো ‘বইঘর’ নিবেদিত প্রথম সাহিত্য ও সংস্কৃতি উৎসব...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শিক্ষার্থীদের নানা বিষয়ে দক্ষ করে তুলতে &lsquo;ইনটেলিজেন্ট মাইন্ডস&rsquo;এর আয়োজনে হয়ে গেল &lsquo;বইঘর&rsquo; নিবেদিত প্রথম সাহিত্য ও সংস্কৃতি উৎসব। ইভেন্টের মোট ১৫টি সেগমেন্টে ১১৯ জন শিক্ষার্থীকে বিজয়ী করা হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">গত ২২ ডিসেম্বর ইউনাইটেড কলেজ অব সায়েন্স অ্যান্ড এভিয়েশনে এক অনুষ্ঠানের মাধ্যমে বিজয়ীদের পুরস্কার দেয়া হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ সময় প্রধান অতিথি ছিলেন বইঘরের ফাউন্ডার হাসানুজ্জামান দিপু। বিশেষ অতিথি ছিলেন ইউনাইটেড কলেজ অব এভিয়েশনের সায়েন্স অ্যান্ড ম্যানেজমেন্টের ফাউন্ডার মোহাম্মদ আলি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইনটেলিজেন্ট মাইন্ডসের চিফ উপদেষ্টা মো. রাহাতুল ইসলামের সভাপতিত্বে অনুষ্ঠানে আরও উপস্থিত ছিলেন- ইউসিএএসএম&rsquo;র এক্সিকিউটিভ ব্রান্ড এনালিস্ট রাফি আফজাল, লেখক ও গ্রাফিক্স ডিজাইনার নুরুজ্জামান ফিরোজ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এর আগে, গত ২৭ নভেম্বর থেকে ৫ ডিসেম্বর পর্যন্ত অনলাইন প্ল্যাটফর্মে এই ইভেন্টের আয়োজন করা হয়। সারাদেশ থেকে প্রায় চার হাজারের বেশি শিক্ষার্থী এতে অংশ নেন। দেশের প্রায় ১৫০-এর অধিক শিক্ষাপ্রতিষ্ঠান থেকে প্রায় ২৫০ ক্যাম্পাস অ্যাম্বাসেডর এতে কাজ করেছেন।</p>', 'সংস্কৃতি উৎসব', NULL, 'Published', '2021-01-11 21:42:25', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 04:42:25', '2021-01-12 22:09:20'),
(68, '২০২০ সালে দেশ-বিদেশের সাহিত্য পুরস্কার', 'images/news/big//2021/01/11/award-2020123116284111-01-202122-32-03.jpg', 'images/news/medium/2021/01/11/award-2020123116284111-01-202122-32-03.jpg', 'images/news/small/2021/01/11/award-2020123116284111-01-202122-32-03.jpg', NULL, '২০২০ সালে দেশ-বিদেশের সাহিত্য পুরস্কার...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">দেশ-বিদেশে বরাবরই সাহিত্য পুরস্কার নিয়ে ব্যাপক আলোচনা হয়ে থাকে। প্রতিবছরই সাহিত্য জগতে বিশেষ অবদানের জন্য ঘোষণা করা হয় বিভিন্ন পুরস্কার। তারমধ্যে নোবেল, ম্যান বুকার, পুলিৎজার, বাংলা একাডেমি সাহিত্য পুরস্কার অন্যতম। ২০২০ সালে দেশে-বিদেশে বেশ কয়েকটি সাহিত্য পুরস্কারই ব্যাপক প্রশংসিত হয়েছে। সেসব নিয়েই আজকের আয়োজন-</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">নোবেল সাহিত্য পুরস্কার</span><br style=\"box-sizing: border-box;\" />২০২০ সালে সাহিত্যে নোবেল পুরস্কার লাভ করেছেন আমেরিকান কবি অধ্যাপক লুইস এলিজাবেথ গ্লুক। মার্কিন সাহিত্যে অসামান্য অবদানের জন্য তাকে এ স্বীকৃতি দেওয়া হয়েছে বলে জানায় সুইডিশ অ্যাকেডেমি। ইতিহাসে ১৬তম নারী হিসেবে নোবেল পেলেন লুইস। বর্তমানে তিনি যুক্তরাষ্ট্রের ইয়েল বিশ্ববিদ্যালয়ের অধ্যাপক (অ্যাডজাঙ্কট)। এ পর্যন্ত ১২টি কাব্যগ্রন্থ প্রকাশের পাশাপাশি প্রবন্ধও লিখেছেন তিনি।</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; text-align: center; margin-top: 20px; margin-bottom: 20px; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">\r\n<div id=\"div-gpt-ad-1509258458742-10\" style=\"box-sizing: border-box;\" data-google-query-id=\"CPqXg4S5le4CFVjocwEdtLEKrw\">\r\n<div id=\"google_ads_iframe_/21655469720/JagoNews_Desktop_Details_News_Inner_A_0__container__\" style=\"box-sizing: border-box; border: 0pt none;\"><iframe id=\"google_ads_iframe_/21655469720/JagoNews_Desktop_Details_News_Inner_A_0\" style=\"box-sizing: border-box; border-width: 0px; border-style: initial; vertical-align: bottom;\" title=\"3rd party ad content\" name=\"google_ads_iframe_/21655469720/JagoNews_Desktop_Details_News_Inner_A_0\" width=\"728\" height=\"90\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" data-google-container-id=\"7\" data-gtm-yt-inspected-1_25=\"true\" data-load-complete=\"true\"></iframe></div>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">ম্যান বুকার পুরস্কার</span><br style=\"box-sizing: border-box;\" />২০২০ সালে &lsquo;শুগি বেইন&rsquo; উপন্যাসের জন্য ম্যান বুকার পুরস্কার পেয়েছেন স্কটিশ-আমেরিকান লেখক ডগলাস স্টুয়ার্ট। ৪৪ বছর বয়সী লেখকের এটিই প্রথম উপন্যাস। &lsquo;শুগি বেইন&rsquo; মূলত কিশোর শুগিকে উপজীব্য করে লেখা একটি বই। বইটি নিজের মাকে উৎসর্গ করেছেন লেখক।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">পুলিৎজার পুরস্কার</span><br style=\"box-sizing: border-box;\" />দ্বিতীয়বারের মতো ফিকশনে পুলিৎজার পুরস্কার পেয়েছেন যুক্তরাষ্ট্রের কলসন হোয়াইটহেড। এরআগে ২০১৭ সালে &lsquo;আন্ডারগ্রাউন্ড রেলরোড&rsquo; উপন্যাসের জন্য একই পুরস্কার লাভ করেন তিনি। এবছর &lsquo;দ্য নিকেল বয়েস&rsquo; উপন্যাসের জন্য আফ্রিকান-আমেরিকান এ লেখক সম্মাননা জিতেছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">স্বাধীনতা পুরস্কার</span><br style=\"box-sizing: border-box;\" />২০২০ সালের স্বাধীনতা পুরস্কারের তালিকায় সাহিত্য ক্যাটাগরিতে এস. এম. রইজ উদ্দিন আহম্মদের নাম ঘোষণা করা হয়। পরে সমালোচনার মুখে তার নাম বাতিল করা হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">একুশে পদক</span><br style=\"box-sizing: border-box;\" />বিভিন্ন ক্ষেত্রে অবদানের স্বীকৃতিস্বরূপ একুশে পদক ২০২০ পেয়েছেন দেশের ২০ বিশিষ্ট ব্যক্তি ও একটি প্রতিষ্ঠান। তারমধ্যে ভাষা ও সাহিত্যে ড. নুরুন নবী, মরহুম সিকদার আমিনুল হক (মরণোত্তর) ও বেগম নাজমুন নেসা পিয়ারি এ পুরস্কার লাভ করেন। গত ২০ ফেব্রুয়ারি প্রধানমন্ত্রী শেখ হাসিনা ওসমানী স্মৃতি মিলনায়তনে আনুষ্ঠানিকভাবে তাঁদের হাতে একুশে পদক তুলে দেন।</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; text-align: center; margin-top: 20px; margin-bottom: 20px; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">\r\n<div id=\"div-gpt-ad-1509258458742-11\" style=\"box-sizing: border-box;\" data-google-query-id=\"CPuXg4S5le4CFVjocwEdtLEKrw\">&nbsp;</div>\r\n</div>', 'সাহিত্য পুরষ্কার', NULL, 'Published', '2021-01-11 22:32:03', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 05:32:03', '2021-01-12 22:08:41'),
(69, 'ময়না', 'images/news/big//2021/01/12/moyna-2021010417042612-01-202100-08-14.jpg', 'images/news/medium/2021/01/12/moyna-2021010417042612-01-202100-08-14.jpg', 'images/news/small/2021/01/12/moyna-2021010417042612-01-202100-08-14.jpg', NULL, 'ময়না...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">একসময়ের প্রতাপশালী শেখ বংশের শেষ ভিটাটুকু আঁকড়ে আছেন মাসুদ আলী শেখ। শেখ উপাধি ছাড়া আর বলার মতো কিছুই নেই। না আছে আভিজাত্যের বাহার, না সেই জৌলুস। বারোঘড়িয়া গ্রামে ঈশান কোণে একটা ছোট্ট মাটির ঘরে সপরিবারে তার বাস। হঠাৎ দেখলে অবশ্য ঘর খুঁজে পাওয়া বেশ কঠিন! জিন কলার গাছ, দেবদারু আর পূর্বপুরুষদের লাগিয়ে যাওয়া তিনটি সুপারি আর চারটি নারকেল গাছ যেন শেখ বংশের করুণ হাল যত্নে লুকিয়ে রেখেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মাসুদের স্ত্রীকে দেখলে মনে হবে তার নির্বাণ লাভ হয়েছে। জাগতিক সব চাওয়া-পাওয়ার ঊর্ধ্বে আরিফা। অন্যদিকে মাসুদের পেশাই স্বপ্নের চাষাবাদ করা। পাথরের মতো শক্ত মাটি চষে, নিজে হাতে বীজতলা পুঁতে অপেক্ষা করতে হয় কখন সোনালি ফসলে ভরে উঠবে মাঠ। স্বভাবতই মাসুদ একটা আশা কখনো বাদ দেয়নি।&nbsp; একটা ছেলে হলে ঠিক তার দিন ফিরে যাবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ঈশ্বরের ভাবনা হয়তো ভিন্ন কিছু ছিল। মাসুদের ঘরে পরপর চার মেয়ের জন্ম হয়। তিন মেয়েকে স্বামীর ঘরে পার করতে আরও বেশি দরিদ্র হয়ে পড়ে মাসুদ। আরিফার ভাবনা আরও সহজ হয়ে আসে। ছোট মেয়েকে কোনো রকম পাত্রস্থ করতে পারলে আর কী ভাবনা! আল্লাহর দিন ঠিকই এক হালে কেটে যাবে। না খাওয়ার স্বভাব তার অনেক আগেই হয়ে গেছে। আর যা কিছু শখ-আহ্লাদ ছিল, সেসব না পাওয়া আগেই সয়ে গেছে। যতদিন দৃষ্টি আছে, সেলাই করে দু&rsquo;বেলার ভাত ঠিক জুটে যাবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বছর দশেক আগেও বারোঘড়িয়া গ্রামের চেহারা ছিল সম্পূর্ণ ভিন্ন। এখন আর ঠিক গ্রাম বলা ঠিক হবে না। শহুরে বাতাস লেগেছে। ঘরে ঘরে প্রবাসী সন্তান। বিদেশি টাকায় উঠেছে দালান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">একসময় শেখ বাড়িতে ঝিয়ের কাজ করতেন সালামের মা। সালাম তখনো বসতে শেখেনি। মরিয়ম বেওয়া চটের বস্তার ওপরে সালামকে রেখে উঠান ঝাড়ু দেওয়া, কাপড় ধোয়া&mdash;আরও নানা কাজ করতেন। বাকি সময় চানাচুর বিক্রি করে বেড়াতেন পাড়ায় পাড়ায়। সেই সালাম এখন লক্ষাধিক টাকা দামের মোটরসাইকেল চড়ে। তার যোগাযোগেই অধিকাংশ মানুষ গেছে বিদেশে।</p>', 'সাহিত্য', NULL, 'Published', '2021-01-12 00:08:14', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 07:08:14', '2021-01-12 22:04:18');
INSERT INTO `news` (`id`, `title`, `feature_photo`, `feature_medium`, `feature_small`, `photo_caption`, `meta_description`, `description`, `topic`, `video_url`, `published_status`, `published_date`, `is_cover_news`, `show_at_homepage`, `category_id`, `sub_cat_id`, `division_id`, `district_id`, `news_author_id`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(70, '২০২০ সালে বাংলা সাহিত্য যাদের হারালো', 'images/news/big//2021/01/12/litareter-2020122918054812-01-202100-20-59.jpg', 'images/news/medium/2021/01/12/litareter-2020122918054812-01-202100-20-59.jpg', 'images/news/small/2021/01/12/litareter-2020122918054812-01-202100-20-59.jpg', NULL, '২০২০ সালে বাংলা সাহিত্য যাদের হারালো...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">২০২০ সাল আমাদের জন্য বেদনার। সেই বেদনার সারিতে যুক্ত হয়েছে বাংলা সাহিত্য আকাশের কয়েকটি উজ্জ্বল নক্ষত্র। আমরা হারিয়েছি বেশ কয়েকজন লেখক, কবি, সাংবাদিক ও প্রকাশককে। তাদের বেশিরভাগ করোনা আক্রান্ত হয়ে বিদায় নিয়েছেন। আসুন জেনে নেই তাদের সম্পর্কে-</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">মনজুরে মওলা</span><br style=\"box-sizing: border-box;\" />করোনাভাইরাসে আক্রান্ত হয়ে মারা যান বাংলা একাডেমির সাবেক মহাপরিচালক, কবি ও প্রাবন্ধিক মনজুরে মওলা। ২০ ডিসেম্বর সকাল ১১টায় রাজধানীর ইউনাইটেড হাসপাতালে চিকিৎসাধীন অবস্থায় তার মৃত্যু হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">কাজী নজরুল ইসলাম বাহার</span><br style=\"box-sizing: border-box;\" />শিখা প্রকাশনীর মালিক কাজী নজরুল ইসলাম বাহার করোনা আক্রান্ত হয়ে মারা যান। ২৫ নভেম্বর রাত ৯টা ৩৭ মিনিটে রাজধানীর আজগর আলী হাসপাতালে চিকিৎসাধীন অবস্থায় তার মৃত্যু হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">হিমেল বরকত</span><br style=\"box-sizing: border-box;\" />জাহাঙ্গীরনগর বিশ্ববিদ্যালয়ের বাংলা বিভাগের অধ্যাপক ও কবি হিমেল বরকত মারা যান। গত ২২ নভেম্বর ভোর সাড়ে ৪টার দিকে চিকিৎসাধীন অবস্থায় তার মৃত্যু হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">আবুল হাসনাত</span><br style=\"box-sizing: border-box;\" />কালি ও কলম সম্পাদক কবি আবুল হাসনাত ফুসফুসের সংক্রমণে গত ০১ নভেম্বর সকাল ৮টায় রাজধানীর একটি হাসপাতালে ইন্তেকাল করেছেন। তাকে মিরপুর শহীদ বুদ্ধিজীবী কবরস্থানে দাফন করা হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">আলম তালুকদার</span><br style=\"box-sizing: border-box;\" />করোনাভাইরাসে আক্রান্ত হয়ে মারা যান শিশুসাহিত্যিক ও মুক্তিযোদ্ধা আলম তালুকদার। তিনি গত ০৮ জুলাই বিকেল ৩টায় সম্মিলিত সামরিক হাসপাতালে চিকিৎসাধীন অবস্থায় শেষ নিশ্বাস ত্যাগ করেন।<span style=\"font-weight: bold;\">আহমদ আজিজ</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">দীর্ঘদিন ক্যান্সারের সঙ্গে যুদ্ধ করে চলে যান কবি আহমদ আজিজ। গত ০৯ জুন সকালে রাজধানীর একটি হাসপাতালে চিকিৎসাধীন অবস্থায় তিনি মৃত্যুবরণ করেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">আনিসুজ্জামান</span><br style=\"box-sizing: border-box;\" />জাতীয় অধ্যাপক আনিসুজ্জামান মারা যান। গত ১৪ মে বিকেল ৪টা ৫৫ মিনিটে রাজধানীর সম্মিলিত সামরিক হাসপাতালে চিকিৎসাধীন অবস্থায় তিনি শেষ নিশ্বাস ত্যাগ করেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">হুমায়ুন কবীর খোকন</span><br style=\"box-sizing: border-box;\" />করোনা আক্রান্ত হয়ে কবি ও সাংবাদিক হুমায়ুন কবীর খোকনের মৃত্যু হয়। গত ২৮ এপ্রিল রাত ৯টা ৪১ মিনিটে উত্তরা রিজেন্ট হাসপাতালে চিকিৎসাধীন অবস্থায় তার মৃত্যু হয়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">মাহমুদ টোকন</span></span><br style=\"box-sizing: border-box;\" />কবি মাহমুদ টোকন কোলন ক্যান্সারে আক্রান্ত হয়ে চিকিৎসাধীন অবস্থায় মারা যান। গত ০৪ ফেব্রুয়ারি বিকেল ৫টায় রাজধানীর বঙ্গবন্ধু শেখ মুজিব মেডিক্যাল বিশ্ববিদ্যালয় হাসপাতালে মারা যান তিনি।</p>', 'লেখক,সাংবাদিক,কবি', NULL, 'Published', '2021-01-12 00:20:59', 'No', 'No', 40, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 07:20:59', '2021-01-12 22:08:19'),
(71, 'কাদের মির্জার ‘সত্যকথন\' এবং আওয়ামী লীগের রাজনীতি', 'images/news/big//2021/01/12/812-01-202100-30-06.jpg', 'images/news/medium/2021/01/12/812-01-202100-30-06.jpg', 'images/news/small/2021/01/12/812-01-202100-30-06.jpg', NULL, 'কাদের মির্জার ‘সত্যকথন\' এবং আওয়ামী লীগের রাজনীতি...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">নোয়াখালীর বসুরহাট পৌরসভা নির্বাচনে নৌকা প্রতীক নিয়ে মেয়র পদে প্রতিদ্বন্দ্বিতা করছেন আব্দুল কাদের মির্জা। নির্বাচন অনুষ্ঠিত হবে আগামী ১৬ জানুয়ারি। নির্বাচনের ফলাফল কি হবে তা আগাম না বলাই ভালো। তবে কাদের মির্জা এখন একটি আলোচিত নাম। সংবাদপত্রে এবং সামাজিক যোগাযোগ মাধ্যমে তিনি জায়গা করে নিয়েছেন। তার প্রশংসা শোনা যাচ্ছে রাজনীতিতে আওয়ামী লীগের প্রধান প্রতিপক্ষ বিএনপি নেতাদের মুখেও। হঠাৎ করে একটি পৌরসভা নির্বাচনের মেয়র প্রার্থী এত গুরুত্বপূর্ণ হয়ে উঠলেন কেন?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বলা হচ্ছে, তিনি এমন কিছু সত্য কথা বলেছেন, যা সরকার , সরকারি দল এবং প্রশাসনের চরিত্র উদোম করে দিয়েছে। তার সত্য বচনগুলোও এখন আর রাজনীতি সচেতন কারো অজানা নেই। তিনি প্রথমে বলেছিলেন, সুষ্ঠু নির্বাচন হলে বৃহত্তর নোয়াখালীতে আওয়ামী লীগ ৩/৪ টি আসন পাবে। বাকি আসনগুলোতে হেরে যাবে এবং তারা পালানোর পথ খুঁজে পাবে না। তার বক্তব্য নানা কারণে অনেকের মনোযোগ আকর্ষণ করে এবং তিনি রাতারাতি &lsquo;হিরো\' বনে যান তার কথায় এটা স্পষ্ট যে, বর্তমানে দেশে সুষ্ঠু নির্বাচন হচ্ছে না বা হওয়ার সম্ভাবনা কম। সুষ্ঠু নির্বাচন হলে আওয়ামী লীগের অনেকেই পালানোর পথ খুঁজে পাবে না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ ধরনের কথা বহুদিন ধরেই বিএনপিসহ আওয়ামী লীগবিরোধী অনেকেই বলছেন। তাহলে কাদের মির্জার কথা এত বাজার পাওয়ার কারণ কি? কারণ সম্ভবত দুটি। এক. তিনি নিজে আওয়ামী লীগ করেন। দুই. তার ভাইয়ের পরিচয়। আব্দুল কাদের মির্জার বড় ভাই ওবায়দুল কাদের ক্ষমতাসীন দল আওয়ামী লীগের সাধারণ সম্পাদক এবং সড়ক ও সেতু মন্ত্রী। ওবায়দুল কাদেরের ভাইয়ের বক্তব্য দল এবং সরকারের বিরুদ্ধে গেলে তা অন্যদের লুফে নেওয়ারই কথা। বাস্তবে সেটাই হয়েছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কাদের মির্জা দলের শৃঙ্খলা ভঙ্গ করেছেন কি না, তার বিরুদ্ধে দল শাস্তিমূলক ব্যবস্থা নেবে কি না, তার বক্তব্যের জন্য ওবায়দুল কাদের বিব্রত বোধ করছেন কি না, সে সব প্রশ্ন সামনে আসছে। ওবায়দুল কাদের সরাসরি ভাইয়ের বিরুদ্ধে কিছু না বললেও এটা বলেছেন যে , প্রধানমন্ত্রী শেখ হাসিনা ছাড়া আওয়ামী লীগের জন্য কেউ অপরিহার্য নন। দলীয় শৃঙ্খলা ভঙ্গ করলে কেউ রেহাই পাবেন না।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কাদের মির্জা কিন্তু কথা বলা বন্ধ করেননি। নির্বাচনী প্রচারে অংশ নিয়ে তিনি প্রতিদিনই কথা বলছেন। সংবাদ মাধ্যমে তার বক্তব্য যা আসছে তাতে সরকারবিরোধীরাই উৎসাহিত হচ্ছে। যদিও কাদের মির্জা এটাও বলেছেন যে, পত্রপত্রিকা আসলগুলো লেখে না, এডিট করে আমার কথা বিকৃত করে, এগুলো প্রধানমন্ত্রী এবং আমাদের মন্ত্রীদের কাছে পাঠিয়ে আমার বিরুদ্ধে খেপিয়ে তুলেছে। এখানে প্রশ্ন আসে, আসল কথা কোনগুলো? তার কোন বক্তব্য এডিট করে বিকৃত করা হয়েছে? তাকে তার অবস্থান পরিষ্কার করতে হতো। মোবাইল ফোনে হুমকি দেওয়ার কথা বলে তিনি তো এমনও বলেছেন যে, চারদিকে বারুদের গন্ধ পাই, অস্ত্রের ঝনঝনানি শুনি। যেকোনো সময় আমার জীবন বিপন্ন হতে পারে। এটা কি তিনি বলেননি?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">প্রায় প্রতিদিন তিনি কথা বলছেন। একদিন বলেছেন, আমার সঙ্গে কেউ নেই। ওবায়দুল কাদের নেই। কেন্দ্রীয় আওয়ামী লীগ আমার সঙ্গে নেই। ডিসি, এসপি, নির্বাচন অফিসার কেউ-ই নেই। তাহলে তার সঙ্গে কে আছে? তার নির্বাচনী এলাকার জনগণ এবং স্থানীয় আওয়ামী লীগ? হয়তো তাই। জনগণ তার সঙ্গে আছেন কি না সেটা বোঝা যাবে ভোটের দিন। যদি তার বক্তব্য অনুযায়ী &lsquo;সুষ্ঠু\' ভোট না হয় তাহলে কি হবে? বড় ভাই ওবায়দুল কাদের সম্পর্কে তিনি বলেছেন, আগামীতে জিততে হলে তাকে আরো সতর্ক হতে হবে। নিজের বউকে সামলাতে হবে। সঙ্গে যারা চলে তাদের ওপর নজর রাখতে হবে। কে কোথা থেকে মাসোহারা নেয়, সে দিকে লক্ষ রাখতে হবে।</p>', 'সত্যকথন', NULL, 'Published', '2021-01-12 00:30:06', 'No', 'No', 38, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 07:30:06', '2021-01-12 22:07:06'),
(72, 'টি-টেনে ভবিষ্যত দেখছেন সাঙ্গাকারা', 'images/news/big//2021/01/12/8-copy12-01-202100-33-13.jpg', 'images/news/medium/2021/01/12/8-copy12-01-202100-33-13.jpg', 'images/news/small/2021/01/12/8-copy12-01-202100-33-13.jpg', NULL, 'টি-টেনে ভবিষ্যত দেখছেন সাঙ্গাকারা...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আন্তর্জাতিক ক্রিকেট এখনও খেলা হয় তিন ফরম্যাটে- সাদা পোশাকের টেস্ট ক্রিকেট এবং রঙিন পোশাকের ওয়ানডে ও টি-টোয়েন্টি ক্রিকেট। তবে এরই মধ্যে জনপ্রিয়তা পেতে শুরু করেছে দশ ওভারের টি-টেন ক্রিকেট। বিশ্বের নামীদামী তারকাদের অংশগ্রহণে গত কয়েক বছর ধরেই চলছে ফ্র্যাঞ্চাইজিভিত্তিক টি-টেন ক্রিকেট লিগ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">চলতি মাসে দুবাইয়ে বসতে চলেছে টি-টেন লিগের নতুন আসর। এই ফরম্যাটের জনপ্রিয়তাকে মাথায় রেখে, এমসিসি প্রেসিডেন্ট ও কিংবদন্তি ব্যাটসম্যান কুমার সাঙ্গাকারাও মনে করেন, ক্রিকেটের ভবিষ্যত আছে এই টি-টেনের মধ্যেই। বিশেষ করে অলিম্পিকে ক্রিকেট অন্তর্ভুক্তির ক্ষেত্রে বড় ভূমিকা রাখবে টি টেন- এমনটাই অভিমত সাঙ্গার।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আসন্ন টি-টেন লিগে টিম আবুধাবির মেন্টর হিসেবে দায়িত্ব পালন করবেন শ্রীলঙ্কান কিংবদন্তি। তিনি মনে করেন, কুড়ি ওভারের টি-টোয়েন্টি ক্রিকেট দিয়ে শুরু হয়েছিল অলিম্পিকে খেলাটির অন্তর্ভুক্তির জোর আলোচনা। এবার টি-টেন ক্রিকেট দিয়ে সেটি শিগগিরই বাস্তবায়িত হতে পারে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সাঙ্গাকারার ভাষ্য, &lsquo;অলিম্পিকে ক্রিকেট অন্তর্ভুক্তির ক্ষেত্রে অনেক বড় একটা ইতিবাচক ধাক্কা দিয়েছে টি-টোয়েন্টি ক্রিকেট। অলিম্পিকে কি টি-টোয়েন্টি ক্রিকেটই হবে? তারা কি এক্ষেত্রে টি-টেনের মতো আরও সংক্ষিপ্ত ফরম্যাটের কথা চিন্তা করবে? অলিম্পিকে ক্রিকেট অন্তর্ভুক্তির ক্ষেত্রে অনেক কাজ করতে হবে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কী সেগুলো? জানিয়েছেন সাঙ্গাকারা, &lsquo;প্রতিটি দেশের ক্রিকেট বোর্ডকে এগিয়ে আসতে হবে। আইসিসিতে জোর তাগাদা দিতে হবে। অলিম্পিকে এমন ফরম্যাট দিতে হবে, যেখানে সময়ের হিসেবটা গুরুত্বপূর্ণ ভূমিকা রাখবে, অলিম্পিকের দর্শকদের আটকে রাখতে হবে। কারণ তারা অন্যান্য ক্রিকেট দর্শকদের মতো নয়। সম্পূর্ণ নতুন একটা দর্শকগোষ্ঠী।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি আরও যোগ করেন, &lsquo;অনেক বছর ধরেই অলিম্পিকে ক্রিকেট ঢোকানোর চেষ্টা করা হচ্ছে। কমনওয়েলথ গেমসের কয়েক আসরে ক্রিকেট হয়েছে। আমি মনে করি এটি (টি-টেন ক্রিকেট) এমন একটি ফরম্যাট, যা নিয়ে ভাবা যেতে পারে যে টি-টেন নাকি টি-টোয়েন্টি? দুইয়ের মধ্যে যেটা ভালো হবে, সেটাই অলিম্পিকে অন্তর্ভুক্ত করা উচিত।&rsquo;</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; text-align: center; margin-top: 20px; margin-bottom: 20px; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.75; font-size: 20px; text-align: start; background-color: #ffffff;\">আসন্ন টি-টেন লিগে টিম আবুধাবির মেন্টর হিসেবে দায়িত্ব পালন করবেন শ্রীলঙ্কান কিংবদন্তি। তিনি মনে করেন, কুড়ি ওভারের টি-টোয়েন্টি ক্রিকেট দিয়ে শুরু হয়েছিল অলিম্পিকে খেলাটির অন্তর্ভুক্তির জোর আলোচনা। এবার টি-টেন ক্রিকেট দিয়ে সেটি শিগগিরই বাস্তবায়িত হতে পারে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.75; font-size: 20px; text-align: start; background-color: #ffffff;\">সাঙ্গাকারার ভাষ্য, &lsquo;অলিম্পিকে ক্রিকেট অন্তর্ভুক্তির ক্ষেত্রে অনেক বড় একটা ইতিবাচক ধাক্কা দিয়েছে টি-টোয়েন্টি ক্রিকেট। অলিম্পিকে কি টি-টোয়েন্টি ক্রিকেটই হবে? তারা কি এক্ষেত্রে টি-টেনের মতো আরও সংক্ষিপ্ত ফরম্যাটের কথা চিন্তা করবে? অলিম্পিকে ক্রিকেট অন্তর্ভুক্তির ক্ষেত্রে অনেক কাজ করতে হবে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.75; font-size: 20px; text-align: start; background-color: #ffffff;\">কী সেগুলো? জানিয়েছেন সাঙ্গাকারা, &lsquo;প্রতিটি দেশের ক্রিকেট বোর্ডকে এগিয়ে আসতে হবে। আইসিসিতে জোর তাগাদা দিতে হবে। অলিম্পিকে এমন ফরম্যাট দিতে হবে, যেখানে সময়ের হিসেবটা গুরুত্বপূর্ণ ভূমিকা রাখবে, অলিম্পিকের দর্শকদের আটকে রাখতে হবে। কারণ তারা অন্যান্য ক্রিকেট দর্শকদের মতো নয়। সম্পূর্ণ নতুন একটা দর্শকগোষ্ঠী।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.75; font-size: 20px; text-align: start; background-color: #ffffff;\">তিনি আরও যোগ করেন, &lsquo;অনেক বছর ধরেই অলিম্পিকে ক্রিকেট ঢোকানোর চেষ্টা করা হচ্ছে। কমনওয়েলথ গেমসের কয়েক আসরে ক্রিকেট হয়েছে। আমি মনে করি এটি (টি-টেন ক্রিকেট) এমন একটি ফরম্যাট, যা নিয়ে ভাবা যেতে পারে যে টি-টেন নাকি টি-টোয়েন্টি? দুইয়ের মধ্যে যেটা ভালো হবে, সেটাই অলিম্পিকে অন্তর্ভুক্ত করা উচিত।&rsquo;</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding: 39px 0px 24px; position: relative;\">\r\n<div id=\"div-gpt-ad-1509258458742-11\" style=\"box-sizing: border-box;\" data-google-query-id=\"CJHduZTVle4CFVQTKwod2u0OLQ\">&nbsp;</div>\r\n</div>\r\n<div id=\"div-gpt-ad-1509258458742-11\" style=\"box-sizing: border-box;\" data-google-query-id=\"CJHduZTVle4CFVQTKwod2u0OLQ\">&nbsp;</div>\r\n</div>', 'ক্রিকেট', NULL, 'Published', '2021-01-12 00:33:13', 'No', 'No', 5, 4, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 07:33:13', '2021-01-12 22:05:54'),
(73, 'তিন শিক্ষা প্রতিষ্ঠানের জায়গা দখল করে বিএনপি নেতার খামার', 'images/news/big//2021/01/12/812-01-202100-37-18.jpg', 'images/news/medium/2021/01/12/812-01-202100-37-18.jpg', 'images/news/small/2021/01/12/812-01-202100-37-19.jpg', NULL, 'তিন শিক্ষা প্রতিষ্ঠানের জায়গা দখল করে বিএনপি নেতার খামার...', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ঝালকাঠির কাঁঠালিয়া উপজেলার চিংড়াখালীর তিনটি শিক্ষা প্রতিষ্ঠানের মাঠ, পুকুর ও শ্রেণিকক্ষ দখল করে নিয়েছে স্থানীয় এক প্রভাবশালী বিএনপি নেতা। একই কমপ্লেক্সের মধ্যে রয়েছে চিংড়াখালি সরকারি প্রাথমিক বিদ্যালয়, চিংড়াখালি সিনিয়র মাদরাসা ও নূরানী কিন্ডারগার্টেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">অভিযোগ উঠেছে, কাঠালিয়া উপজেলা বিএনপির সাবেক সহ-সভাপতি আব্দুল জলিল মিয়াজি এসব জায়গা দখল করে গাছপালা লাগিয়েছেন এবং হাঁস, মুরগী ও গবাদি পশুর খামার গড়ে তুলেছেন। কেউ এসবের প্রতিবাদ করলে তাকে মামলা দিয়ে হয়রানি করা হচ্ছে। এতে ওই শিক্ষাপ্রতিষ্ঠানগুলোর একাডেমিক ও প্রশাসনিক কার্যক্রম ব্যাহত হচ্ছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কাঁঠালিয়া চিংড়াখালী সিনিয়র মাদরাসার অধ্যক্ষ মাওলানা মো. রুহুল আমীন হাওলাদার এ সমস্যার সুষ্ঠু সমাধানের জন্য প্রশাসনের হস্তক্ষেপ কামনা করছেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এ ব্যাপারে কাঠালিয়া উপজেলা নির্বাহী কর্মকর্তা সুফল চন্দ্র গোলদার জানান, বিষয়টি তিনি শুনেছেন এবং ইতোমধ্যে ভূমি কর্মকর্তাকে তদন্তের নির্দেশ দিয়েছেন। লিখিত অভিযোগ পেলে প্রয়োজনীয় ব্যবস্থা গ্রহণ করা হবে।</p>', 'বিএনপি নেতার খামার', NULL, 'Published', '2021-01-12 00:37:18', 'No', 'No', 38, NULL, 23, NULL, 3, 1, 3, NULL, NULL, '2021-01-12 07:37:19', '2021-01-12 22:04:48'),
(74, 'ভ্যাকসিনের জন্য নিবন্ধন ২৬ জানুয়ারি থেকে', 'images/news/big//2021/01/12/d3af8f8b6fbd36861632444c74831e30-5ffc37682312b12-01-202115-16-09.jpg', 'images/news/medium/2021/01/12/d3af8f8b6fbd36861632444c74831e30-5ffc37682312b12-01-202115-16-09.jpg', 'images/news/small/2021/01/12/d3af8f8b6fbd36861632444c74831e30-5ffc37682312b12-01-202115-16-09.jpg', NULL, 'ভ্যাকসিন পাওয়ার ক্ষেত্রে সরকারের অগ্রাধিকার তালিকার বাইরের....', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ভ্যাকসিন পাওয়ার ক্ষেত্রে সরকারের অগ্রাধিকার তালিকার বাইরের সাধারণ মানুষকে নিবন্ধন করতে হবে। ভ্যাকসিনের জন্য নিবন্ধন আগামী ২৬ জানুয়ারি থেকে শুরু হবে। এ নিবন্ধন করা যাবে অনলাইনেও। তবে অনলাইনটি এখনো সম্পন্ন হয়নি। জেলা-উপজেলায় ভ্যাকসিন সেন্টারেও এ নিবন্ধন করা যাবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সোমবার (১১ জানুয়ারি) রাজধানীর মহাখালীর স্বাস্থ্য অধিদফতরের সম্মেলন কক্ষে ব্রিফিংয়ে স্বাস্থ্য অধিদফতরের মহাপরিচালক অধ্যাপক ডা. আবুল বাশার মোহাম্মদ খুরশীদ আলম এ তথ্য জানান।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ব্রিফিংয়ে বলা হয়, নিবন্ধনের জন্য প্রয়োজন হবে জাতীয় পরিচয়পত্র। তাছাড়া নিবন্ধন প্রক্রিয়া সম্ভব নয়। কারণ জাতীয় পরিচয়পত্র ভ্যাকসিন গ্রহণকারীর বয়স যাচাই করা হবে। একইসঙ্গে ভাকসিন নেয়ার পর সনদ দেয়া হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">এতে আরও বলা হয়, ভারতের সিরাম ইনস্টিটিউট উৎপাদিত করোনাভাইরাসের&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent; border-bottom: 2px solid #b30f0f !important;\" title=\"ভ্যাকসিন আগামী ২১ থেকে ২৫ জানুয়ারির মধ্যে দেশে আসবে\" href=\"https://www.jagonews24.com/health/news/635402\" target=\"_blank\" rel=\"follow noopener\">ভ্যাকসিন আগামী ২১ থেকে ২৫ জানুয়ারির মধ্যে দেশে আসবে</a>। এর দুইদিন পর বেক্সিমকো ফার্মাসিউটিক্যালসের ওয়ার হাউস থেকে তা বিভিন্ন জেলায় পাঠানো হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">জেলা ও উপজেলা পর্যায়ের হাসপাতালগুলোতে ভ্যাকসিন দেয়ার জন্য আলাদা টিম গঠন করা হচ্ছে। এছাড়া কয়েকটি বিশেষায়িত হাসপাতালে ভ্যাকসিন পাওয়া যাবে।</p>', 'ভ্যাকসিন', NULL, 'Unpublished', '2021-01-12 15:16:09', 'No', 'Yes', 10, NULL, 23, NULL, 3, 1, 2, NULL, '2021-01-13 02:54:04', '2021-01-12 22:16:09', '2021-01-13 02:54:04'),
(75, 'শরীরের কোথাও কেটে গেলে দ্রুত যা করবেন', 'images/news/big//2021/01/12/injured-2021010918015712-01-202115-23-55.jpg', 'images/news/medium/2021/01/12/injured-2021010918015712-01-202115-23-55.jpg', 'images/news/small/2021/01/12/injured-2021010918015712-01-202115-23-55.jpg', NULL, 'রান্নাঘরে প্রায়ই ধারালো সরঞ্জামে লেগে হাত-পা কেটে যাওয়ার ঘটনা ঘটে।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">রান্নাঘরে প্রায়ই ধারালো সরঞ্জামে লেগে হাত-পা কেটে যাওয়ার ঘটনা ঘটে। ছোটখাটো এসব কাটা-ছেঁড়া যেন গৃহিণীদের নিত্যদিনের সমস্যা। শিশুদের ক্ষেত্রে এ ধরনের দুর্ঘটনার সম্ভাবনা আরও বেশি থাকে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ধারালো কোনো বস্তুতে কেটে গিয়ে ক্ষত সৃষ্টি হওয়াকে বলা হয় কাট ইনজুরি। আবার ভোঁতা কোনো জিনিস দিয়ে বা কোথাও পড়ে গিয়ে আঘাত পেলে সাধারণত ত্বক কেটে যায় না বরং থেঁতলে যায় বা ছিঁড়ে যায়- একে বলা হয় ল্যাসারেসন হওয়া।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">যেভাবেই ক্ষত তৈরি হোক না কেন, শরীরের কোথাও কেটে যাওয়ার পর প্রাথমিকভাবে করণীয় হলো- রক্তপাত বন্ধ করা এবং সংক্রমণ যাতে না হয়, সেদিকে লক্ষ্য রাখা।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; font-weight: bold;\">তবে রক্তপাত বন্ধ না হলে আক্রান্ত ব্যক্তিকে হাসপাতালে নেওয়ার প্রয়োজন হতে পারে। এজন্য কোথাও কেটে গেলে প্রাথমিকভাবে বেশকিছু বিষয় মাথায় রাখা জরুরি-</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">১. একটা পরিষ্কার কাপড় বা গজ দিয়ে কাটা স্থানটি চেপে ধরে রাখুন। কাপড় বা গজ না পেলে হাতের তালু কিংবা দুই আঙুল ব্যবহার করে চিমটির মতো ধরে রাখতে পারেন। টানা ২০-৩০ মিনিট চাপ দিয়ে ধরে রাখলে রক্ত জমাট বেঁধে রক্তপাত বন্ধ হয়ে যাবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">২. পাশাপাশি এক টুকরো বরফও পেঁচিয়ে ধরে রাখতে পারেন। কাটা স্থানটি একটু উঁচু করে রাখতে হবে। রক্ত বন্ধ হয়েছে কি-না তা বারবার খুলে না দেখাই ভালো।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">৩. রক্ত পড়া বন্ধ হয়ে গেলে টিউবওয়েল বা ট্যাপের বহমান পানিতে ভালো করে ধুয়ে নিতে হবে। কাটা স্থান জীবাণুমুক্ত এবং পরিষ্কার করার জন্য সাবান বা আয়োডিন ও আয়োডিনজাত অ্যান্টিসেপটিক কিংবা ক্লিনজারও ব্যবহার করা যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">৪. কাটা স্থান পরিষ্কার করার পর ওই জায়গায় পাতলা স্তরে অ্যান্টিবায়োটিক মলম দিয়ে ঢেকে দিন। মিউপিরোসিন, নিওমাইসিন বা এ জাতীয় মলম সব সময় বাড়িতে প্রাথমিক চিকিৎসার ওষুধ হিসেবে রাখা উচিত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">৫. এগুলো হাতের কাছে না পেলে হলুদের গুঁড়া কিংবা লবণ পানিও ব্যবহার করা যায়। সবশেষে একটি পাতলা গজ বা ব্যান্ডেজ দিয়ে সম্পূর্ণ স্থানটি হালকাভাবে আটকে দিতে হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">৬. ব্যবহৃত ব্যান্ডেজটি সাধারণ গজ ব্যান্ডেজ বা স্টিকারযুক্ত ব্যান্ডেজ যা-ই হোক না কেন, প্রতিদিন অন্তত একবার তা পরিবর্তন করতে হবে। যদি কাটা জায়গাটা ফুলে যায় কিংবা লাল দেখায়, ব্যথা বেড়ে যায় কিংবা ব্যান্ডেজ ভিজে যেতে থাকে অথবা জ্বর চলে আসে, তাহলে দেরি না করে চিকিৎসকের পরামর্শ নিন। এগুলো কাটা জায়গায় সংক্রমণ সংঘটনের লক্ষণ।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'ইনজুরি', NULL, 'Published', '2021-01-12 15:23:55', 'No', 'No', 37, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-12 22:23:55', '2021-01-12 22:23:55'),
(76, 'ব্যথা ছাড়াই মুখের লোম দূর করুন ৩ উপায়ে', 'images/news/big//2021/01/12/facial-hair3-2021010615474212-01-202115-27-02.jpg', 'images/news/medium/2021/01/12/facial-hair3-2021010615474212-01-202115-27-02.jpg', 'images/news/small/2021/01/12/facial-hair3-2021010615474212-01-202115-27-02.jpg', NULL, 'অনেক নারীই মুখের লোম নিয়ে বেশ বিব্রতবোধ করেন। এজন্য যদিও অনেকেই লেজার করে থাকেন।', '<p>অনেক নারীই মুখের লোম নিয়ে বেশ বিব্রতবোধ করেন। এজন্য যদিও অনেকেই লেজার করে থাকেন। তবে লোম দূর করার পদ্ধতিটি বেশ ব্যয়বহুল। ওয়াক্স, থ্রেডিংয়ের মাধ্যমেই বেশিরভাগ নারী ফেসিয়াল হেয়ার রিমুভ করেন। যদিও এগুলো করতে অনেক ব্যথা সহ্য করতে হয়।</p>\r\n<p>ব্যথা ছাড়া যদি আপনি দীর্ঘস্থায়ীভাবে মুখের লোম দূর করতে চান, তবে ভরসা রাখুন প্রাকৃতিক উপাদানের ওপর। তেমনই তিনটি উপাদানের কথা জানাবো, যেগুলো ব্যবহার করে আপনি ঘরে বসেই মুখের লোম দূর করতে পারবেন।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">হলুদ গুঁড়া:</span></span>&nbsp;যুগ যুগ ধরে রূপচর্চায় হলুদ ব্যবহৃত হয়ে আসছে। ত্বক উজ্জ্বল করার পাশাপাশি বিভিন্ন দাগ দূর করতেও হলুদ কার্যকরী। হলুদ অ্যান্টি-ব্যাকটেরিয়া বৈশিষ্ট্যসম্পন্ন। মুখের লোমগুলো যাতে না বাড়ে, এজন্যও হলুদে থাকা পুষ্টিগুণগুলো কাজ করে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">পদ্ধতি:</span></span>&nbsp;প্রয়োজনমতো হলুদের সঙ্গে সামান্য পানি মিশিয়ে ঘন পেস্ট তৈরি করুন। মুখের যেসব অংশে বেশি লোম সেখানে ব্যবহার করুন হলুদের পেস্ট। শুকিয়ে যাওয়া পর্যন্ত অপেক্ষা করে গরম পানিতে মুখ ধুয়ে ফেলুন। সপ্তাহখানেক এ পদ্ধতি অনুসরণ করলেই দেখবেন মুখের লোমের পরিমাণ কমতে শুরু করেছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; color: #008000;\"><span style=\"box-sizing: border-box; font-weight: bold;\">বেসন:</span></span>&nbsp;হলুদের মতোই প্রাচীনকাল থেকে রূপচর্চায় ব্যবহৃত হয়ে আসছে বেসন। উপাদানটি ত্বক গভীর থেকে পরিষ্কার করে। সব ধরনের ফেসপ্যাকের সঙ্গেই বেসন মেশানো থাকে। জানেন কি? বেসন প্রাকৃতিকভাবেই মুখের লোম সহজে দূর করতে পারে। নিয়মিত মুখে বেসন ব্যবহারের ফলে ত্বক হয় মসৃণ ও কোমল।</p>', 'পুষ্টিগুণ', NULL, 'Published', '2021-01-12 15:27:02', 'No', 'No', 37, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-12 22:27:02', '2021-01-12 22:27:02'),
(77, 'শীতে হাল ফ্যাশনের বাহারি উলের টুপি', 'images/news/big//2021/01/12/in-1-2021010911132512-01-202115-30-37.jpg', 'images/news/medium/2021/01/12/in-1-2021010911132512-01-202115-30-37.jpg', 'images/news/small/2021/01/12/in-1-2021010911132512-01-202115-30-37.jpg', NULL, 'শীত ঠেকাতে ছোট-বড় সবারই প্রয়োজন উলের টুপি। কান দুটি ঢাকা থাকলে শরীরের উত্তাপ যেন বেড়ে যায়!', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">শীত ঠেকাতে ছোট-বড় সবারই প্রয়োজন উলের টুপি। কান দুটি ঢাকা থাকলে শরীরের উত্তাপ যেন বেড়ে যায়! হাল ফ্যাশনে এখন জায়গা করে নিয়েছে উলের টুপি। নারী-পুরুষ সবাই বাহারি রং ও নকশার টুপির প্রতি এখন দুর্বল। শীতকালের ফ্যাশনে নতুন মাত্রা যোগ করেছে উলের টুপি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">কয়েক বছর আগেও উলের টুপি শোভা পেত শুধু শিশুদের মাথায়। তবে এখনকার চিত্র ভিন্ন। পোশাকের সঙ্গে ম্যাচিং করে টুপি পরছেন সব বয়সীই। যদিও টুপি পছন্দের ক্ষেত্রে কিছু বিষয় মাথায় রাখা জরুরি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">সঠিক মাপ, রং ও নকশা দেখে টুপি পরলে তা মুখের সৌন্দর্য আরও বাড়িয়ে দেয়। যদিও শীতে টুপি পরার ক্ষেত্রে কোনো নির্দিষ্ট নিয়মাবলী নেই। তবে কিছু বিষয় মেনে চললেই সবাইকে মানানসই লাগবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বাজারে এখন মাঙ্কি টুপি, মাফলার টুপি, ক্যাপের মতো টুপি ও ঝোলা টুপির দেখা মেলে। চলুন তবে জেনে নেওয়া যাক রং বুঝে টুপি বাছাইয়ের উপায়-</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&gt;&gt; চুল ছোট যাদের, তারা সম্পূর্ণ চুল টুপির মধ্যে রাখতে পারেন। অল্প বড় চুল হলে পাশ দিয়েও চুল বের করে রাখা যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<div class=\"adv-img text-center marginTopBottom20 hidden-print\" style=\"box-sizing: border-box; text-align: center; margin-top: 20px; margin-bottom: 20px; background: #f7f7f7; padding: 39px 0px 24px; position: relative; color: #333333; font-family: SolaimanLipi; font-size: 18px;\">&nbsp;</div>', 'শীত,ফ্যাশন', NULL, 'Published', '2021-01-12 15:30:37', 'No', 'No', 37, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-12 22:30:37', '2021-01-12 22:30:37'),
(78, 'ওজন কমাতে পারে স্বাস্থ্যকর ‘সাবুর খিচুড়ি’', 'images/news/big//2021/01/12/khechure-2021010913435612-01-202115-33-24.jpg', 'images/news/medium/2021/01/12/khechure-2021010913435612-01-202115-33-24.jpg', 'images/news/small/2021/01/12/khechure-2021010913435612-01-202115-33-24.jpg', NULL, 'ওজন কমাতে স্বাস্থ্যকর খাবারের বিকল্প নেই। বর্তমানে সবাই ওজন নিয়ন্ত্রণে রাখার কৌশল খুঁজতে ব্যস্ত।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ওজন কমাতে স্বাস্থ্যকর খাবারের বিকল্প নেই। বর্তমানে সবাই ওজন নিয়ন্ত্রণে রাখার কৌশল খুঁজতে ব্যস্ত। কেউ কেউ তো আবার মোটা হওয়ার ভয়ে ভাত খাওয়া ছেড়েই দিয়েছেন। তবে চাইলেই কিন্তু আপনি ওজন কমাতে ও নিয়ন্ত্রণে রাখতে খেতে পারেন সাবুর খিচুড়ি।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">স্বাস্থ্যকর খাবারটি আপনার পেট দীর্ঘসময় পর্যন্ত ভরিয়ে রাখবে, সঙ্গে ওজনও খুব সহজেই কমাবে। এতে বিশুদ্ধ কার্বোহাইড্রেট এবং খুব কম প্রোটিন, ভিটামিন ও খনিজ রয়েছে। এ ছাড়াও ফাইবার, ক্যালসিয়াম, আয়রন এবং ভালো চর্বি, ক্যারোটিন, থিয়ামিয়াম এবং অ্যাসকরবিক অ্যাসিড রয়েছে সাবুদানায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তো বুঝতেই পারছেন, হাজারো পুষ্টিগুণসম্পন্ন সাবুদানা দিয়ে তৈরি খিচুড়ি হতে পারে আপনার ওজন কমানোর সেরা দাওয়াই। চলুন তবে জেনে নেই রেসিপি-</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'খিচুড়ি,স্বাস্থ্যকর', NULL, 'Published', '2021-01-12 15:33:24', 'No', 'No', 37, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-12 22:33:24', '2021-01-12 22:33:24'),
(79, 'মন্ত্রীনারী ও শিশু নির্যাতন রোধে সরকার অত্যন্ত কঠোর : প্রতি', 'images/news/big//2021/01/12/woman-2020112516484212-01-202118-25-03.jpg', 'images/news/medium/2021/01/12/woman-2020112516484212-01-202118-25-03.jpg', 'images/news/small/2021/01/12/woman-2020112516484212-01-202118-25-03.jpg', NULL, 'নারী ও শিশুর প্রতি সহিংসতা প্রতিরোধে সরকারের অবস্থান অত্যন্ত কঠোর বলে জানিয়েছেন মহিলা ও শিশু বিষয়ক প্রতিমন্ত্রী ফজিলাতুন নেসা ইন্দিরা।', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">নারী ও শিশুর প্রতি সহিংসতা প্রতিরোধে সরকারের অবস্থান অত্যন্ত কঠোর বলে জানিয়েছেন মহিলা ও শিশু বিষয়ক প্রতিমন্ত্রী ফজিলাতুন নেসা ইন্দিরা। তিনি বলেন, নারী ও শিশুর প্রতি সহিংসতা প্রতিরোধে সরকার বদ্ধপরিকর। এক্ষেত্রে সরকারের অবস্থান অত্যন্ত কঠোর।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">বুধবার (২৫ নভেম্বর) রাজধানীতে বাংলাদেশ শিশু একাডেমির সভাকক্ষে মহিলা ও শিশু বিষয়ক মন্ত্রণালয় এবং ইউনাইটেড ন্যাশনস ইন বাংলাদেশ-এর যৌথ আয়োজনে ভার্চুয়াল প্লাটফর্মে জেন্ডার ভিত্তিক সহিংসতা প্রতিরোধে ১৬ দিনব্যাপী কর্মসূচির উদ্বোধনী অনুষ্ঠানে প্রধান অতিথির বক্তব্যে তিনি এসব কথা বলেনপ্রতিমন্ত্রী বলেন, &lsquo;আমাদের সরকার নারী নির্যাতন বন্ধ, নারী নিরাপত্তা নিশ্চিতকরণ, আইনি সহায়তা পাওয়ার সুযোগ সৃষ্টি করতে বিভিন্ন কার্যক্রম হাতে নিয়েছে। নারী ও শিশু নির্যাতন দমন (সংশোধন) আইন, ২০২০ প্রণয়ন করা হয়েছে। এ আইনে ধর্ষণের সর্বোচ্চ শাস্তি &ldquo;যাবজ্জীবন সশ্রম কারাদণ্ড&rsquo;-এর বদলে &ldquo;মৃত্যুদণ্ড বা যাবজ্জীবন সশ্রম কারাদণ্ডের&rdquo; বিধান রাখা হয়েছে। সংশোধিত আইনের মাধ্যমে অপরাধীদের শাস্তি নিশ্চিত হচ্ছে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">তিনি আরও বলেন, &lsquo;অভিযুক্ত ব্যক্তি এবং অপরাধের শিকার ব্যক্তির ডিএনএ পরীক্ষা বাধ্যতামূলক করা হয়েছে। ঢাকাসহ বিভাগীয় শহরের সরকারি হাসপাতালগুলোতে ডিএনএ প্রোফাইলিং ও স্ক্রিনিং ল্যাবরেটরি স্থাপন করা হয়েছে। নারী ও শিশু নির্যাতন প্রতিরোধে আন্তঃমন্ত্রণালয় এবং বিভাগীয় পর্যায়ে কমিটি গঠন করা হয়েছে। পাশাপাশি জেলা, উপজেলা ও ইউনিয়ন পর্যায়ে কমিটিগুলো পুনর্গঠন করা হয়েছে।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">নারীর প্রতি নির্যাতন ও সহিংসতা নারীর মানবাধিকারের বিরুদ্ধে সংঘটিত অপরাধ উল্লেখ করে প্রতিমন্ত্রী ইন্দিরা বলেন, &lsquo;এই নির্যাতন ও সহিংসতা বন্ধে সরকারের সঙ্গে সবাইকে একসঙ্গে কাজ করতে হবে। তবেই সবার সম্মিলিত উদ্যোগে আমরা নারী ও শিশুর প্রতি সব ধরনের নির্যাতন ও সহিংসতামুক্ত দেশ প্রতিষ্ঠা করতে পারব।&rsquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ইউএন উইমেন প্রকাশিত তথ্য তুলে ধরে প্রতিমন্ত্রী বলেন, বিশ্বে ৩৫ শতাংশ নারী বা প্রায় প্রতি তিনজনে একজন নারী তার জীবন পরিক্রমায় শারীরিক, মানসিক বা যৌন নির্যাতনের শিকার হয়। বেশিরভাগ ক্ষেত্রে তা ঘটে আপনজনের দ্বারা। সহিংসতার স্বীকার ৪০ শতাংশের কম নারী সহায়তা পেয়ে থাকে। বিশ্বে মোট মানব পাচারের ৭২ শতাংশ নারী ও শিশু। তাই নারীর প্রতি সংঘটিত সব ধরনের নির্যাতন ও অপরাধ নির্মূল করার জন্য বিশ্বব্যাপী সম্মিলিত উদ্যোগ নিতে হবে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">মহিলা ও শিশু বিষয়ক মন্ত্রণালয়ের সচিব কাজী রওশন আক্তারের সভাপতিত্বে বিশেষ অতিথির বক্তৃতা রাখেন বাংলাদেশে ইউএন রেসিডেন্ট কোর্ডিনেটর মিয়া সেপ্পো ও বাংলাদেশে নিযুক্ত কমনওয়েলথ উন্নয়ন পরিচালক জুডিথ হারবার্টসন। স্বাগত বক্তব্য রাখেন নারী নির্যাতন প্রতিরোধে মাল্টিসেক্টোরাল প্রোগ্রামের পরিচালক ড. আবুল হোসেন।</p>', 'নারী', NULL, 'Published', '2021-01-12 18:25:03', 'No', 'No', 38, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-13 01:25:03', '2021-01-13 01:25:03'),
(80, '২০২১ সালে প্রযুক্তি দুনিয়া কাঁপাবে যেসব উদ্ভাবন', 'images/news/big//2021/01/12/it-20210112183538-12-01-202118-31-30.webp', 'images/news/medium/2021/01/12/it-20210112183538-12-01-202118-31-30.webp', 'images/news/small/2021/01/12/it-20210112183538-12-01-202118-31-30.webp', NULL, 'নতুন বছরের শুরুতে নতুন করে সব কিছু পর্যালোচনা করে দেখার সুযোগ হয়। তেমনই এ বছর যে প্রযুক্তিগুলো আলোচিত হবে এবং ভূমিকা রাখবে; তারই একটি তালিকা তৈরি করার প্রয়াস করলাম।', '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">নতুন বছরের শুরুতে নতুন করে সব কিছু পর্যালোচনা করে দেখার সুযোগ হয়। তেমনই এ বছর যে প্রযুক্তিগুলো আলোচিত হবে এবং ভূমিকা রাখবে; তারই একটি তালিকা তৈরি করার প্রয়াস করলাম। কোভিডের কারণে বেশ কিছু প্রযুক্তি গত বছর ভূমিকা রেখেছিল। বরাবরের মতো নতুন বছরের শুরুতে সিট বেল্টটি শক্ত করে আটকে নিন। চলুন প্রযুক্তির জগতে একটু ড্রাইভ দিয়ে ঘুরে আসি-</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: SolaimanLipi; font-size: 20px;\">এডজ কম্পিউটিং</span><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">: ডিভাইসের উপরেই ব্যবহারকারীদের আরও কাছে কম্পিউটিং। তথ্যের প্রোসেস আরও দ্রুত করার অত্যাধুনিক একটি উপায়। গত কয়েক বছর ধরেই ইন্টারনেট অব থিংগের কারণে ডিভাইসের উপরেই আরও বেশি তথ্যকে প্রোসেস করার প্রয়োজন হয়ে পড়ছিল। এই এডজ কম্পিউটিং সেই কাজগুলো আরও সহজতর করে ফেলেছে।</span></p>\r\n<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">সনাতন পদ্ধতিতে যেখানে ডিভাইস থেকে সার্ভারে প্রতিনিয়ত যোগাযোগ করার প্রয়োজন হয়ে পড়ে; সেখানে এই এডজ কম্পিউটিং ব্যাপারটি আরও দ্রুত সম্পন্ন করে। যেখানে প্রতিনিয়ত সার্ভারের সাথে যোগাযোগের প্রয়োজন নেই। একটি কম্পিউটিং বা কোনো কাজ শেষ হয়ে যাওয়ার পর তথ্যকে পরিশেষে পাঠানো হয়। এ এডজ কম্পিউটিংয়ের ব্যবহার আমরা ২০২১ সালে আরও বেশি দেখতে পাবো।</span><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><br style=\"box-sizing: border-box; color: #333333; font-family: SolaimanLipi; font-size: 20px;\" /><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: SolaimanLipi; font-size: 20px;\">ফাইভ-জি মোবাইল নেটওয়ার্ক:</span><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">&nbsp;এটি ৫ম প্রজন্মের নতুন ধরনের একটি মোবাইল নেটওয়ার্ক। ২০২০ সাল থেকে অনেক দেশে এটি পরীক্ষামূলকভাবে শুরু হলেও আমরা এ বছরে এর বিস্তার দেখতে পাবো। এ সংযোগে ল্যাটেন্সি খুব কম এবং ডাটা ট্রান্সফার দ্রুত হয়। ফলে ৮কে রেজ্যুলেশনের ভিডিওগুলো বাফার ছাড়াই মোবাইলে উপভোগ করতে পারবেন। ৫জি নেটওয়ার্কের ডাউনলোড স্পিড ৪জি নেটওয়ার্কের থেকে ১০০ গুণ বেশি। ডাউনলোড স্পিড ১০০০ এমবিপিএস থেকে ১০ গিগাবাইট হতে পারে। যদি অনলাইন গেমার হন; তবে ৫জিতে দ্রুত গেম খেলতে পারবেন। সবচেয়ে গুরুত্বপূর্ণ হলো সংযোগ বিচ্ছিন্ন হয়ে যাওয়ার সম্ভাবনা কমে যাবে।</span></p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: SolaimanLipi; font-size: 20px;\">কৃত্রিম বুদ্ধিমত্তা:</span><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 20px;\">&nbsp;কৃত্রিম বুদ্ধিমত্তা বলতে কোনো যন্ত্রের নিজস্ব বুদ্ধি বা চিন্তাশক্তির ক্ষমতা। মানুষ ও পশু-পাখির মধ্যে যে চিন্তা করার ক্ষমতা দেখতে পাই, একটি যন্ত্রের সেই চিন্তা করার সক্ষমতা। ফলে যন্ত্রটি নিজেই নিজের মত চিন্তা করে সিদ্ধান্ত নিতে পারবে। যদিও অনেকই এ প্রযুক্তিকে মানবজাতির জন্য হুমকি হিসাবে মনে করে। তবে মনে রাখতে হবে, কৃত্রিম বুদ্ধিমত্তা শুধু তথ্যভিত্তিক রুটিন কাজগুলোর ক্ষেত্রে মানুষের কাজগুলোকে সহজ করে তুলতে পারে। মানুষের মত ডায়নামিকভাবে সব কিছু এ বুদ্ধিমত্তা দিয়ে করা সম্ভব নয়। সামনের বছরগুলোয় এর ব্যাপক প্রয়োগ দেখতে পাবো। বিশেষ করে স্বাস্থসেবা, ব্যাংকিং, খুচরা বিক্রি, মেনুফ্যাকচারিংয়ে আরও প্রয়োগ দেখতে পাবো।</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'প্রযুক্তি', NULL, 'Published', '2021-01-12 18:31:30', 'No', 'Yes', 38, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-13 01:31:30', '2021-01-13 04:18:24'),
(81, 'আপেল সাইডার ভিনেগার যাদের জন্য বিপজ্জনক', 'images/news/big//2021/01/12/cover-2021011116360812-01-202118-34-28.jpg', 'images/news/medium/2021/01/12/cover-2021011116360812-01-202118-34-28.jpg', 'images/news/small/2021/01/12/cover-2021011116360812-01-202118-34-28.jpg', NULL, 'দ্রুত ওজন কমাতে আপেল সাইডার ভিনেগার পানের বিকল্প নেই। ডায়াবেটিস, হৃদরোগ, উচ্চ রক্তচাপসহ দীর্ঘমেয়াদি নানা সমস্যার সমাধান রয়েছে ভিনেগারে। জানেন কি?', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">দ্রুত ওজন কমাতে আপেল সাইডার ভিনেগার পানের বিকল্প নেই। ডায়াবেটিস, হৃদরোগ, উচ্চ রক্তচাপসহ দীর্ঘমেয়াদি নানা সমস্যার সমাধান রয়েছে ভিনেগারে। জানেন কি? দীর্ঘদিন ধরে অতিরিক্ত আপেল সাইডার ভিনেগার পান করলে শারীরিক নানা সমস্যা হতে পারে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">ত্বকে পোড়াভাব, দাঁত ক্ষয়, পাকস্থলির সমস্যাসহ হাইপোগ্লাইসেমিয়ার ঝুঁকি বাড়ায় আপেল সাইডার ভিনেগার। এ ছাড়াও রয়েছে কিছু পার্শ্বপ্রতিক্রিয়া। চলুন তবে জেনে নেওয়া যাক-</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">আপেল সাইডার ভিনেগার অ্যাসিডযুক্ত পানীয়। অতিরিক্ত অ্যাসিডিক খাবার দাঁতের এনামেলকে দুর্বল করে, এতে দাঁত ক্ষয় হতে থাকে। ডেন্টাল অ্যান্ড ক্রানিয়োফেসিয়াল রিসার্চে জানানো হয়, নিয়মিত আপেল সাইডার ভিনেগার পান করলে দাঁতের এনামেল ক্ষতিগ্রস্ত হয়, পাশাপাশি মিষ্টি ও অধিক ঠান্ডা খাবার খাওয়ায় দাঁতের মাঝে গর্ত হয়ে যায়। পরবর্তীতে তা ফিলিং করার প্রয়োজন পড়ে। এ ছাড়াও অতিরিক্ত আপেল সাইডার ভিনেগার পান করলে জিহ্বায় ক্ষত হতে পারে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&gt;&gt; বোস্টনের হার্ভার্ড মেডিসিন স্কুলের সহযোগী অধ্যাপক ড. রবার্ট এইচ শর্মলিংয়ের মতে, আপেল সাইডার ভিনেগার শরীরের পটাশিয়ামের মাত্রা কমিয়ে ফেলে। শরীরের পটাসিয়াম লেভেল কমে গেলে হয় হাইকোক্লেমিয়া। দীর্ঘদিন এ সমস্যায় ভুগলে পেশী দুর্বল হয় এবং পক্ষাঘাত হতে পারে। যদি কোনো ব্যক্তি পেশীর সমস্যা বা শ্বাসকষ্ট অনুভব করেন তবে চিকিৎসকের পরামর্শ নেওয়া উচিত।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&gt;&gt; অপরিশোধিত আপেল সাইডার ভিনেগার পান করলে হজমজনিত সমস্যা হতে পারে। যার ফলে পরবর্তীতে আলসারের ঝুঁকি বাড়ে। অনেকেই খাবারের পর আপেল সাইডার ভিনেগার পান করতে গিয়ে বমি ও বদহজমের শিকার হয়েছেন বলে এক গবেষ</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: SolaimanLipi; line-height: 1.75; font-size: 20px; color: #333333;\">&nbsp;</p>', 'আপেল সাইডার', NULL, 'Published', '2021-01-12 18:34:28', 'No', 'No', 37, NULL, 23, NULL, 7, 1, 2, NULL, NULL, '2021-01-13 01:34:28', '2021-01-13 01:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `news_detail_photos`
--

CREATE TABLE `news_detail_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our_clients`
--

CREATE TABLE `our_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_num` tinyint(3) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_ban` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `serial_num` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `name_bn`, `title`, `title_bn`, `description`, `description_ban`, `link`, `file`, `status`, `serial_num`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Welcome to our Privacy Policy', NULL, '<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 17.1px;\">শেয়ার নিয়ে প্রতারণা করায় ঢাকা রিজেন্সি হোটেল অ্যান্ড রিসোর্ট লিমিটেডের চেয়ারম্যান মুসলেহ উদ্দিন <a title=\"ggg\" href=\"pages\">আহমেদসহ</a> সাতজনের বিরুদ্ধে গ্রেফতারি পরোয়ানা</span></p>\r\n<p><span style=\"color: #333333; font-family: SolaimanLipi; font-size: 17.1px;\">জারি করেছেন আদালত। ঢাকা মহানগর হাকিম আতিকুল ইসলামের আদালত...</span></p>', NULL, 'privacy-policy', NULL, 'Active', 1, 1, NULL, NULL, '2020-12-09 10:07:04', '2020-12-25 08:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `page_photos`
--

CREATE TABLE `page_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_photos`
--

INSERT INTO `page_photos` (`id`, `page_id`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/page//2020/12/09/download09-12-202016-07-04.png', NULL, '2020-12-09 10:07:04', '2020-12-09 10:07:04');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(2, 'role-create', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(3, 'role-edit', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(4, 'role-delete', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(5, 'user-list', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(6, 'user-create', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(7, 'user-edit', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(8, 'user-delete', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(9, 'menu', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(10, 'client', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(11, 'faq', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(12, 'testimonial', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(13, 'social-icon', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(14, 'slider', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(15, 'districts', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(16, 'divisions', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(17, 'categories', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(18, 'sub-categories', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(19, 'pages', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(20, 'setting', 'web', '2020-12-08 12:03:12', '2020-12-08 12:03:12'),
(21, 'news-list', 'web', '2020-12-10 12:40:45', '2020-12-10 12:40:45'),
(22, 'news-create', 'web', '2020-12-10 12:41:07', '2020-12-10 12:41:07'),
(23, 'news-edit', 'web', '2020-12-10 12:41:14', '2020-12-10 12:41:14'),
(24, 'news-delete', 'web', '2020-12-10 12:41:30', '2020-12-10 12:41:30'),
(25, 'ads-list', 'web', '2021-01-05 23:52:30', '2021-01-05 23:52:30'),
(26, 'ads-create', 'web', '2021-01-05 23:52:38', '2021-01-05 23:52:38'),
(27, 'ads-edit', 'web', '2021-01-05 23:52:46', '2021-01-05 23:52:46'),
(28, 'ads-delete', 'web', '2021-01-05 23:53:02', '2021-01-05 23:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'developer', 'web', '2020-12-02 17:47:19', '2020-12-01 17:47:27'),
(2, 'admin', 'web', '2020-12-08 12:03:13', '2020-12-08 12:03:13'),
(9, 'Editor', 'web', '2021-01-08 04:06:31', '2021-01-08 04:06:31'),
(19, 'News Author', 'web', '2021-01-08 05:08:29', '2021-01-08 05:08:29'),
(20, 'নিজস্ব প্রতিবেদক', 'web', '2021-01-08 05:22:28', '2021-01-08 05:22:28'),
(22, 'আন্তর্জাতিক ডেস্ক', 'web', '2021-01-08 05:52:11', '2021-01-08 05:52:11'),
(23, 'সাহিত্য ডেস্ক', 'web', '2021-01-11 21:13:19', '2021-01-11 21:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(21, 9),
(22, 9),
(23, 9),
(24, 9),
(25, 9),
(26, 9),
(27, 9),
(28, 9),
(21, 19),
(22, 19),
(23, 19),
(24, 19),
(21, 20),
(22, 20),
(23, 20),
(13, 22),
(14, 22),
(15, 22),
(16, 22),
(17, 22),
(18, 22),
(19, 22),
(20, 22),
(21, 22),
(22, 22),
(23, 22),
(24, 22),
(25, 22),
(26, 22),
(27, 22),
(28, 22),
(21, 23),
(22, 23),
(23, 23);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci,
  `address2` text COLLATE utf8mb4_unicode_ci,
  `mobile_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci COMMENT 'About company',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'About company',
  `why_us` text COLLATE utf8mb4_unicode_ci COMMENT 'About company',
  `meta_description` text COLLATE utf8mb4_unicode_ci COMMENT 'About company',
  `map_embed` text COLLATE utf8mb4_unicode_ci,
  `fb_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_lan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `company_name`, `company_title`, `company_slogan`, `logo`, `favicon`, `copyright`, `currency`, `currency_code`, `address1`, `address2`, `mobile_no1`, `mobile_no2`, `email1`, `email2`, `short_description`, `description`, `why_us`, `meta_description`, `map_embed`, `fb_client_id`, `fb_client_secret`, `fb_redirect`, `google_client_id`, `google_client_secret`, `google_redirect`, `default_lan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'সংবাদ 7', 'Company Title Here', 'বস্তুনিষ্ঠ সংবাদ, প্রবাসে প্রতিদিন', 'images/logo//2021/01/08/sangbad-7-logo-png08-01-202101-32-41.png', 'images/favicon//2021/01/05/songbad-7-logo-short05-01-202121-33-54.jpg', '2021 ©', '$', NULL, '123 My Street, My city, My state, NY', NULL, '123 345 6789', NULL, 'coming soon @ gmail.com', NULL, '<p>coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon coming soon&nbsp;</p>', '<p>Demoonews.com has provided real-time news updates, using the utmost modern technology since 2020. It also provides an archive of previous news and a printing facility of the specific news items. One can easily find the latest news and top breaking headlines from Bangladesh and around the world within a short span of time from the online news portal. Demoonews.com, Bangladesh&rsquo;s leading online news portal, is updating 24/7 with entertainment, lifestyle, special reports, politics, economics, culture, education, information technology, health, sports, columns, and features. The news-based site enriched with all the elements of the country&rsquo;s traditional newspapers. A group of young journalists is working for the online news portal. Demoonews.com is trying to build a bridge with Bengali language people around the world and want to create a new dimension to the country&rsquo;s online news portal.</p>', NULL, NULL, '<iframe class=\"embed-responsive-item\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.693751878496!2d-73.90413788473145!3d40.74676377932813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25f1cc31296bd%3A0x511771f5336b33ee!2s39-06%2062nd%20St%2C%20Flushing%2C%20NY%2011377!5e0!3m2!1sen!2sus!4v1592971036221!5m2!1sen!2sus\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\">  </iframe>', NULL, NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2021-01-13 04:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `show_at_home` tinyint(3) UNSIGNED DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `name`, `link`, `icon_photo`, `icon_class`, `serial_num`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/USTutorial-101524134907384', NULL, 'fa fa-facebook', 1, '2021-01-05 23:40:14', '2020-12-23 16:46:59', '2021-01-05 23:40:14'),
(2, 'Twitter', 'https://www.facebook.com/USTutorial-101524134907384', NULL, 'fa fa-twitter', 2, NULL, '2020-12-23 16:47:20', '2020-12-25 09:28:37'),
(3, 'Instarram', '#', NULL, 'fa fa-instagram', 3, NULL, '2020-12-25 09:06:03', '2020-12-25 09:28:41'),
(4, 'Youtuge', '#', NULL, 'fa fa-youtube', 4, NULL, '2020-12-25 09:06:32', '2020-12-25 09:28:46'),
(5, 'Facebook', 'https://www.facebook.com/groups/tristatebd', NULL, 'fa fa-facebook', 5, NULL, '2021-01-05 23:45:21', '2021-01-05 23:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_name_bn` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_num` tinyint(4) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `icon_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `sub_category_name_bn`, `link`, `serial_num`, `short_description`, `icon_photo`, `icon_class`, `status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'রাজনীতি', NULL, 'POL', 1, 'Political news', NULL, NULL, 'Active', 1, 1, NULL, '2020-12-10 22:05:10', '2021-01-06 09:41:44'),
(2, 2, 'Politics', NULL, 'politics', 2, NULL, NULL, NULL, 'Active', 1, NULL, '2020-12-30 11:09:23', '2020-12-10 22:09:36', '2020-12-30 11:09:23'),
(3, 2, 'Economics', NULL, 'economics', 3, NULL, NULL, NULL, 'Active', 1, 1, '2020-12-30 11:09:29', '2020-12-10 22:10:06', '2020-12-30 11:09:29'),
(4, 5, 'ক্রিকেট', NULL, 'cricket', 1, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:45:57', '2021-01-06 09:46:25'),
(5, 5, 'ফুটবল', NULL, 'football', 2, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:46:11', '2021-01-06 09:46:12'),
(6, 6, 'হলিউড', NULL, 'hollywood', 3, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:47:08', '2021-01-06 09:50:57'),
(7, 6, 'বলিউড', NULL, 'bollywood', 2, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:47:23', '2021-01-06 09:50:38'),
(8, 7, 'লাইফস্টাইল', NULL, 'lifestyle', 1, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-11 05:08:35', '2020-12-13 11:48:28', '2021-01-11 05:08:35'),
(9, 7, 'তথ্য প্রযুক্তি', NULL, 'technology', 2, NULL, NULL, NULL, 'Active', 1, 6, '2021-01-09 06:04:42', '2020-12-13 11:48:55', '2021-01-09 06:04:42'),
(10, 7, 'ভ্রমণ', NULL, 'travel', 3, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:49:09', '2021-01-07 11:51:16'),
(11, 7, 'কৃষি এবং প্রকৃতি', NULL, 'agriculture-and-nature', 4, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:49:27', '2021-01-07 11:50:56'),
(12, 7, 'বাংলা জোকস', NULL, 'bangla-jokes', 5, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2020-12-13 11:49:41', '2021-01-07 11:48:35'),
(13, 7, 'Ekushey-book-fair', NULL, 'ekushey-book-fair', 6, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-06 09:53:06', '2020-12-13 11:49:56', '2021-01-06 09:53:06'),
(14, 3, 'States News', NULL, 'states-news', 1, NULL, NULL, NULL, 'Active', 1, NULL, '2021-01-06 03:11:40', '2020-12-16 11:28:58', '2021-01-06 03:11:40'),
(15, 23, 'Kusti', NULL, 'kusti', 1, NULL, NULL, NULL, 'Active', 1, NULL, NULL, '2021-01-05 23:36:09', '2021-01-05 23:36:09'),
(16, 23, 'BANGLADESH', NULL, 'bangladesh', 2, 'BANGLADESH POLITICS', NULL, NULL, 'Active', 1, NULL, NULL, '2021-01-06 02:40:04', '2021-01-06 02:40:04'),
(17, 23, 'INTERNATIONAL', NULL, 'international', 3, 'INTERNATIONAL POLICITCS', NULL, NULL, 'Active', 1, NULL, NULL, '2021-01-06 02:40:33', '2021-01-06 02:40:33'),
(18, 2, 'অর্থনীতি', NULL, 'economy', 3, 'Economy-Business news', NULL, NULL, 'Active', 1, 2, NULL, '2021-01-06 03:14:57', '2021-01-11 05:52:50'),
(19, 2, 'প্রযুক্তি', NULL, 'projukti', 3, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-09 06:00:42', '2021-01-06 03:16:27', '2021-01-09 06:00:42'),
(20, 2, 'স্বাস্থ্য', NULL, 'shashtho', 4, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-09 06:01:23', '2021-01-06 03:17:13', '2021-01-09 06:01:23'),
(21, 2, 'শিক্ষা', NULL, 'shikhkha', 5, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-09 06:01:34', '2021-01-06 03:17:24', '2021-01-09 06:01:34'),
(22, 3, 'জাতীয়', NULL, 'national', 1, NULL, NULL, NULL, 'Active', 1, 2, NULL, '2021-01-06 03:19:16', '2021-01-09 08:13:33'),
(23, 3, 'রাজনীতি', NULL, 'rajniti', 2, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:19:41', '2021-01-06 09:43:31'),
(24, 3, 'অর্থনীতি', NULL, 'orthoniti', 3, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:19:50', '2021-01-06 09:43:18'),
(25, 3, 'প্রযুক্তি', NULL, 'toththo-projukti', 4, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-09 06:02:43', '2021-01-06 03:21:45', '2021-01-09 06:02:43'),
(26, 5, 'বেজবল', NULL, 'baseball', 3, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:27:26', '2021-01-06 09:45:58'),
(27, 5, 'বাস্কেটবল', NULL, 'basketball', 4, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:27:57', '2021-01-06 09:45:07'),
(28, 6, 'ঢালিউড', NULL, 'dhallywood', 1, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:29:06', '2021-01-06 09:50:21'),
(29, 26, 'চাকুরী', NULL, 'chakuri', 1, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:36:25', '2021-01-06 09:56:57'),
(30, 26, 'এ্যাপার্টমেন্ট/বাসা ভাড়া', NULL, 'bari-vara', 2, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:36:50', '2021-01-06 09:58:53'),
(31, 26, 'ট্যাক্সি/উবার ভাড়া', NULL, 'taxi-uber-rental', 3, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:37:19', '2021-01-06 09:58:34'),
(32, 26, 'বিক্রয়', NULL, 'bikroy', 4, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:38:09', '2021-01-06 09:58:09'),
(33, 26, 'পাত্র-পাত্রী', NULL, 'patro-patri', 5, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:38:37', '2021-01-06 09:57:49'),
(34, 26, 'ট্রেনিং', NULL, 'training', 6, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:39:51', '2021-01-06 09:57:35'),
(35, 26, 'সার্ভিসেস', NULL, 'services', 7, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:40:01', '2021-01-06 09:57:22'),
(36, 26, 'অনুষ্ঠান', NULL, 'events', 8, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:40:18', '2021-01-06 09:56:38'),
(37, 4, 'কানাডা', NULL, 'canada', 1, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:42:22', '2021-01-07 11:44:22'),
(38, 4, 'যুক্তরাজ্য', NULL, 'jukto-rajjo', 2, NULL, NULL, NULL, 'Active', 1, 1, NULL, '2021-01-06 03:42:39', '2021-01-07 11:46:20'),
(39, 4, 'India', NULL, 'moddoparachcho', 3, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-06 03:46:58', '2021-01-06 03:42:56', '2021-01-06 03:46:58'),
(40, 4, 'দক্ষিণ এশিয়া', NULL, 'india', 4, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-09 06:52:14', '2021-01-06 03:43:44', '2021-01-09 06:52:14'),
(41, 4, 'ইউরোপ', NULL, 'europe', 5, NULL, NULL, NULL, 'Active', 1, 2, NULL, '2021-01-06 03:44:44', '2021-01-11 05:42:58'),
(42, 4, 'মধ্যপ্রাচ্য', NULL, 'middle-east', 6, NULL, NULL, NULL, 'Active', 1, 1, '2021-01-09 06:52:19', '2021-01-06 03:50:20', '2021-01-09 06:52:19'),
(43, 7, 'একুশে বইমেলা', NULL, 'একুশে-বইমেলা', 6, 'একুশে বইমেলা', NULL, NULL, 'Active', 6, NULL, '2021-01-09 08:36:35', '2021-01-08 06:20:49', '2021-01-09 08:36:35'),
(44, 7, 'ফটো গ্যালারি', NULL, 'ফটো-গ্যালারি', 7, 'ফটো গ্যালারি', NULL, NULL, 'Active', 6, NULL, '2021-01-09 08:36:41', '2021-01-08 06:21:52', '2021-01-09 08:36:41'),
(45, 28, 'শিক্ষা', NULL, 'শিক্ষা', 1, 'শিক্ষা', NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:25:44', '2021-01-08 06:25:44'),
(46, 28, 'ক্যাম্পাস', NULL, 'ক্যাম্পাস', 2, 'ক্যাম্পাস', NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:25:59', '2021-01-08 06:25:59'),
(47, 28, 'স্বাস্থ্য', NULL, 'স্বাস্থ্য', 3, 'স্বাস্থ্য', NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:26:23', '2021-01-08 06:26:23'),
(48, 28, 'আইন-আদালত', NULL, 'আইন-আদালত', 4, 'আইন-আদালত', NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:26:44', '2021-01-08 06:26:44'),
(49, 28, 'ধর্ম', NULL, 'ধম', 5, NULL, NULL, NULL, 'Active', 6, 6, NULL, '2021-01-08 06:26:57', '2021-01-08 06:27:16'),
(50, 28, 'প্রবাস', NULL, 'প্রবাস', 6, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:27:26', '2021-01-08 06:27:26'),
(51, 28, 'গণমাধ্যম', NULL, 'গণমাধ্যম', 7, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:27:43', '2021-01-08 06:27:43'),
(52, 28, 'নারী ও শিশু', NULL, 'নারী-ও-শিশু', 8, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:27:58', '2021-01-08 06:27:58'),
(53, 28, 'বাণিজ্য মেলা', NULL, 'বাণিজ্য-মেলা', 9, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:28:20', '2021-01-08 06:28:20'),
(54, 28, 'সাহিত্য', NULL, 'সাহিত্য', 10, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:28:29', '2021-01-08 06:28:29'),
(55, 28, 'জাগো জবস', NULL, 'জাগো-জবস', 11, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:28:42', '2021-01-08 06:28:42'),
(56, 28, 'ঈদ সংখ্যা ২০২১', NULL, 'ঈদ-সংখ্যা-২০২১', 12, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:29:25', '2021-01-08 06:29:25'),
(57, 28, 'আজকের আয়োজন', NULL, 'আজকের-আয়োজন', 13, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:29:41', '2021-01-08 06:29:41'),
(58, 28, 'আর্কাইভ', NULL, 'আর্কাইভ', 14, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:29:52', '2021-01-08 06:29:52'),
(59, 28, 'সোশ্যাল মিডিয়া', NULL, 'সোশ্যাল-মিডিয়া', 15, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:30:05', '2021-01-08 06:30:05'),
(60, 28, 'ইউনিকোড কনভার্টার', NULL, 'ইউনিকোড-কনভার্টার', 16, NULL, NULL, NULL, 'Active', 6, NULL, NULL, '2021-01-08 06:30:24', '2021-01-08 06:30:24'),
(61, 2, 'জাতীয়', NULL, 'জাতীয়', 1, 'national', NULL, NULL, 'Active', 2, 2, '2021-01-11 05:54:03', '2021-01-11 05:51:50', '2021-01-11 05:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sub menu for admin',
  `open_new_tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Open New Tab',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `menu_id`, `name`, `name_bn`, `url`, `icon_class`, `icon`, `big_icon`, `serial_num`, `status`, `slug`, `menu_for`, `open_new_tab`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Role', NULL, 'admin/roles', 'fa fa-home', NULL, NULL, 1, 'Active', '[\"role-delete\",\"role-edit\",\"role-create\",\"role-list\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(2, 2, 'Menu', NULL, 'admin/menu', 'fa fa-home', NULL, NULL, 2, 'Active', '[\"menu\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(3, 2, 'Categories', NULL, 'admin/categories', 'fa fa-home', NULL, NULL, 3, 'Active', '[\"categories\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(4, 2, 'States', NULL, 'admin/divisions', 'fa fa-home', NULL, NULL, 4, 'Active', '[\"divisions\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, '2020-12-26 13:37:43'),
(5, 2, 'Slider', NULL, 'admin/slider', 'fa fa-home', NULL, NULL, 5, 'Active', '[\"slider\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(6, 2, 'Social-icon', NULL, 'admin/social-icon', 'fa fa-home', NULL, NULL, 6, 'Active', '[\"social-icon\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(7, 2, 'Testimonial', NULL, 'admin/testimonial', 'fa fa-home', NULL, NULL, 7, 'Active', '[\"testimonial\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(8, 2, 'Faq', NULL, 'admin/faq', 'fa fa-home', NULL, NULL, 8, 'Active', '[\"faq\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(9, 2, 'Client', NULL, 'admin/client', 'fa fa-home', NULL, NULL, 9, 'Active', '[\"client\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(10, 2, 'Pages', NULL, 'admin/pages', 'fa fa-home', NULL, NULL, 10, 'Active', '[\"pages\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL),
(11, 2, 'Site Setting', NULL, 'admin/setting', 'fa fa-home', NULL, NULL, 11, 'Active', '[\"setting\"]', 'Sub menu for admin', 'No Open New Tab', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_menus`
--

CREATE TABLE `sub_sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `sub_menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sub Sub Menu for admin',
  `open_new_tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Open New Tab',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_menus`
--

INSERT INTO `sub_sub_menus` (`id`, `menu_id`, `sub_menu_id`, `name`, `name_bn`, `url`, `icon_class`, `icon`, `big_icon`, `serial_num`, `status`, `slug`, `menu_for`, `open_new_tab`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 11, 'd', NULL, 'x', 'd', NULL, NULL, 1, 'Active', '[\"menu\"]', 'Sub Sub Menu for admin', 'No Open New Tab', '2020-12-08 12:45:39', '2020-12-08 12:39:46', '2020-12-08 12:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `related_with` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Given review about topic',
  `rating` tinyint(3) UNSIGNED DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_small` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_num` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `mobile`, `fb_client_id`, `mail_client_id`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md.Saiful Islam', 'developer', 'developer@developer.com', '01829655974', NULL, NULL, NULL, '$2y$10$QOuCw0ASG/EUcbMNYCuk9uN.bhbshCmQRjl4ZNT/lzJfhFpsk4HtO', NULL, NULL, '2020-12-08 12:03:12', '2021-01-07 13:41:43'),
(2, 'Sayed', 'admin', 'sangbad7@gmail.com', '12122039863', NULL, NULL, NULL, '$2y$10$h9FHiricxON55N5RM2orl.b.W.ioYKvzuUqQXw3zcerwBZgpVAWHq', NULL, NULL, '2020-12-08 12:03:13', '2021-01-09 09:16:50'),
(3, 'Munny Zannat', NULL, 'zannatul.ferdoss@gmail.com', '01929180288', NULL, NULL, NULL, '$2y$10$cr3wZha5PjnhSy9/vH99TeqMIK4YST90ii0Q4ttRbAjMKDQNW4u/a', NULL, NULL, '2020-12-10 12:31:15', '2021-01-11 19:35:05'),
(4, 'Amina Iqbal', NULL, 'aminaiqbal.2021@gmail.com', '01965500200', NULL, NULL, NULL, '$2y$10$k77D1CHPMfm4ORIE13hxou0tr3Jq5g35P/PoFmnUI7ezi31pIWBCq', NULL, NULL, '2020-12-13 11:55:10', '2021-01-12 06:52:48'),
(5, 'Sayed Sharif', NULL, 'sayed@sangbad7.com', '6464705717', NULL, NULL, NULL, '$2y$10$0NfaaV.BuafqgbbbINHERemRWYpXnU4rbs4BTIsGLnWSOIfCV69gq', NULL, NULL, '2020-12-31 04:05:11', '2021-01-09 09:14:54'),
(6, 'Sayed Sharif', NULL, NULL, '12125186065', NULL, NULL, NULL, '$2y$10$hsRaa9hQZ7BJOaGNyg0N.OxBmNr70aJ2ODDipqlTwiiDCtTSOcHVO', '2021-01-09 09:12:46', NULL, '2021-01-08 05:33:46', '2021-01-09 09:12:46'),
(7, 'Masud Rahman', NULL, NULL, '19293499473', NULL, NULL, NULL, '$2y$10$AnXzpaJSf6w8j.I1hoN0c..8pF6KcSySaExRFhVxHH6TCVd.zEGJy', NULL, NULL, '2021-01-11 21:08:09', '2021-01-11 21:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_feed_backs`
--

CREATE TABLE `user_feed_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_feed_backs`
--

INSERT INTO `user_feed_backs` (`id`, `name`, `mobile`, `email`, `image`, `message`, `created_at`, `updated_at`) VALUES
(9, 'Good', '5++224sdf', 'sdf@gmail.com', 'images/user-feedback/2021/01/11/199110121113417.webp', 'sdfsf', '2021-01-12 06:34:17', '2021-01-12 06:34:17'),
(10, 'Nms', '+65+5', 'sfsj@gmail.com', 'images/user-feedback/2021/01/11/146110121113702.gif', 'skkdfjlsf', '2021-01-12 06:37:02', '2021-01-12 06:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` timestamp NULL DEFAULT NULL,
  `salary` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `avatar`, `contact`, `address`, `designation`, `bio`, `dob`, `nid`, `nid_photo`, `joining_date`, `salary`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'user-images/2020/12/10/download10-12-202018-17-10.png', NULL, 'Long Island City, New York, USA', 'Admin', 'Bio', NULL, NULL, NULL, NULL, 0, NULL, '2020-12-10 12:17:10', '2021-01-09 09:12:13'),
(2, 3, 'user-images/2021/01/09/download-113-12-202017-55-1009-01-202102-30-18.png', NULL, 'Dhaka, Bangladesh', 'নিজস্ব প্রতিবেদক', 'Bio', NULL, NULL, NULL, NULL, 0, NULL, '2020-12-10 12:31:15', '2021-01-09 09:30:18'),
(3, 4, 'images/user-images/2020/12/13/download-113-12-202017-55-10.png', '6464705717', 'Long Island City, New York, USA', 'আন্তর্জাতিক ডেস্ক', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-13 11:55:10', '2021-01-08 05:50:47'),
(4, 5, NULL, '6464705717', 'Long Island City, New York, USA', 'Editor', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-31 04:05:11', '2021-01-09 09:14:54'),
(5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-01-09 09:12:46', '2021-01-08 05:33:46', '2021-01-09 09:12:46'),
(6, 7, NULL, NULL, NULL, 'সাহিত্য ডেস্ক', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-01-11 21:08:09', '2021-01-11 21:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_tracks`
--

CREATE TABLE `visitor_tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_visit` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `visit_date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_tracks`
--

INSERT INTO `visitor_tracks` (`id`, `visit_url`, `ip_address`, `total_visit`, `visit_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'http://sangbad7.com', '144.48.0.50', 29, '2021-01-07', 1, '2021-01-07 12:40:03', '2021-01-07 12:10:46'),
(2, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '144.48.0.50', 51, '2021-01-07', 1, '2021-01-07 12:43:33', '2021-01-07 16:27:51'),
(3, 'http://sangbad7.com/archive', '144.48.0.50', 22, '2021-01-07', 1, '2021-01-07 12:49:20', '2021-01-07 13:27:22'),
(4, 'http://sangbad7.com/classified/chakuri', '144.48.0.50', 1, '2021-01-07', 1, '2021-01-07 13:15:40', '2021-01-07 13:15:40'),
(5, 'http://sangbad7.com/author/4', '144.48.0.50', 2, '2021-01-07', 1, '2021-01-07 13:24:43', '2021-01-07 14:00:58'),
(6, 'http://sangbad7.com', '72.226.49.68', 64, '2021-01-07', 1, '2021-01-07 13:29:59', '2021-01-08 06:56:01'),
(7, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '72.226.49.68', 22, '2021-01-07', 1, '2021-01-07 13:34:20', '2021-01-08 03:53:43'),
(8, 'http://sangbad7.com', '202.134.9.154', 4, '2021-01-07', 1, '2021-01-07 22:39:03', '2021-01-07 22:52:39'),
(9, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '202.134.9.154', 2, '2021-01-07', NULL, '2021-01-07 22:52:33', '2021-01-07 22:52:34'),
(10, 'http://sangbad7.com', '100.21.218.158', 1, '2021-01-07', NULL, '2021-01-07 23:45:05', '2021-01-07 23:45:05'),
(11, 'https://www.sangbad7.ustutorial.com', '138.246.253.24', 1, '2021-01-07', NULL, '2021-01-08 00:35:35', '2021-01-08 00:35:35'),
(12, 'http://sangbad7.com/country/orthoniti/15/%E0%A6%AF', '72.226.49.68', 8, '2021-01-07', NULL, '2021-01-08 03:55:11', '2021-01-08 04:37:15'),
(13, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '58.145.186.253', 5, '2021-01-07', NULL, '2021-01-08 03:57:28', '2021-01-08 04:08:31'),
(14, 'http://sangbad7.com', '27.147.191.56', 20, '2021-01-07', NULL, '2021-01-08 05:16:41', '2021-01-08 06:37:57'),
(15, 'http://sangbad7.com/America/POL/17/%E0%A6%95%E0%A6', '72.226.49.68', 7, '2021-01-07', NULL, '2021-01-08 05:37:01', '2021-01-08 06:03:24'),
(16, 'http://sangbad7.com/America/POL/17/%E0%A6%95%E0%A6', '27.147.191.56', 2, '2021-01-07', NULL, '2021-01-08 05:56:43', '2021-01-08 06:02:28'),
(17, 'http://sangbad7.com/feature/travel/17/%E0%A6%AA%E0', '27.147.191.56', 2, '2021-01-07', NULL, '2021-01-08 06:03:22', '2021-01-08 06:09:23'),
(18, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '27.147.191.56', 4, '2021-01-07', NULL, '2021-01-08 06:40:03', '2021-01-08 06:58:07'),
(19, 'http://sangbad7.com', '72.226.49.68', 134, '2021-01-08', NULL, '2021-01-08 07:02:02', '2021-01-09 06:59:54'),
(20, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '27.147.191.56', 24, '2021-01-08', NULL, '2021-01-08 07:04:08', '2021-01-08 09:10:23'),
(21, 'http://sangbad7.com', '95.179.130.51', 1, '2021-01-08', NULL, '2021-01-08 07:11:51', '2021-01-08 07:11:51'),
(22, 'http://sangbad7.com', '35.231.15.179', 2, '2021-01-08', NULL, '2021-01-08 08:18:54', '2021-01-08 08:18:55'),
(23, 'https://sangbad7.com', '209.17.96.218', 1, '2021-01-08', NULL, '2021-01-08 08:27:46', '2021-01-08 08:27:46'),
(24, 'http://sangbad7.com/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0', '27.147.191.56', 1, '2021-01-08', NULL, '2021-01-08 09:02:42', '2021-01-08 09:02:42'),
(25, 'http://sangbad7.com', '27.147.191.56', 39, '2021-01-08', NULL, '2021-01-08 09:02:59', '2021-01-08 20:14:31'),
(26, 'http://sangbad7.com/search', '27.147.191.56', 1, '2021-01-08', NULL, '2021-01-08 09:11:05', '2021-01-08 09:11:05'),
(27, 'http://sangbad7.com/feature/lifestyle', '72.226.49.68', 5, '2021-01-08', NULL, '2021-01-08 09:26:19', '2021-01-09 06:30:06'),
(28, 'http://sangbad7.com/classified/bari-vara', '72.226.49.68', 1, '2021-01-08', NULL, '2021-01-08 09:29:32', '2021-01-08 09:29:32'),
(29, 'http://sangbad7.com/%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0', '72.226.49.68', 17, '2021-01-08', NULL, '2021-01-08 09:31:33', '2021-01-09 04:19:12'),
(30, 'http://sangbad7.com/jobs', '72.226.49.68', 1, '2021-01-08', NULL, '2021-01-08 09:38:29', '2021-01-08 09:38:29'),
(31, 'http://sangbad7.com', '34.233.170.90', 2, '2021-01-08', NULL, '2021-01-08 10:30:42', '2021-01-09 04:52:21'),
(32, 'http://sangbad7.com', '58.145.187.230', 1, '2021-01-08', NULL, '2021-01-08 10:35:54', '2021-01-08 10:35:54'),
(33, 'http://sangbad7.com', '42.0.4.249', 2, '2021-01-08', NULL, '2021-01-08 10:53:52', '2021-01-09 06:57:35'),
(34, 'https://www.sangbad7.com', '209.17.97.74', 1, '2021-01-08', NULL, '2021-01-08 12:39:48', '2021-01-08 12:39:48'),
(35, 'http://sangbad7.com/America/POL/16/%E0%A6%AF%E0%A7', '42.0.4.229', 5, '2021-01-08', NULL, '2021-01-08 12:55:10', '2021-01-09 04:40:20'),
(36, 'http://sangbad7.com/America', '72.226.49.68', 1, '2021-01-08', NULL, '2021-01-08 17:36:04', '2021-01-08 17:36:04'),
(37, 'http://sangbad7.com/law-courts/news/14/%E0%A6%89%E', '72.226.49.68', 5, '2021-01-08', NULL, '2021-01-08 18:15:28', '2021-01-08 18:37:08'),
(38, 'http://sangbad7.com/law-courts/news/14/%E0%A6%89%E', '27.147.191.56', 2, '2021-01-08', NULL, '2021-01-08 19:18:43', '2021-01-08 19:23:58'),
(39, 'http://sangbad7.com/sports/football', '27.147.191.56', 10, '2021-01-08', NULL, '2021-01-08 19:24:12', '2021-01-08 20:13:47'),
(40, 'http://sangbad7.com/sports/football/20/%E0%A6%B8%E', '27.147.191.56', 1, '2021-01-08', NULL, '2021-01-08 19:24:27', '2021-01-08 19:24:27'),
(41, 'http://sangbad7.com/sports/cricket', '27.147.191.56', 1, '2021-01-08', NULL, '2021-01-08 19:25:47', '2021-01-08 19:25:47'),
(42, 'http://www.sangbad7.com', '66.249.75.148', 1, '2021-01-08', NULL, '2021-01-08 19:47:31', '2021-01-08 19:47:31'),
(43, 'http://sangbad7.com', '172.58.230.129', 2, '2021-01-08', NULL, '2021-01-08 20:12:05', '2021-01-08 20:13:40'),
(44, 'http://sangbad7.com/sports/football/10/%E0%A6%AC%E', '172.58.230.129', 1, '2021-01-08', NULL, '2021-01-08 20:13:47', '2021-01-08 20:13:47'),
(45, 'http://sangbad7.com/sports/football', '172.58.230.129', 1, '2021-01-08', NULL, '2021-01-08 20:14:02', '2021-01-08 20:14:02'),
(46, 'http://sangbad7.com/sports/football/20/%E0%A6%B8%E', '172.58.230.129', 1, '2021-01-08', NULL, '2021-01-08 20:14:09', '2021-01-08 20:14:09'),
(47, 'http://sangbad7.com', '35.237.220.163', 2, '2021-01-08', NULL, '2021-01-08 20:46:49', '2021-01-08 20:46:49'),
(48, 'http://sangbad7.com', '81.22.44.102', 1, '2021-01-08', NULL, '2021-01-08 21:06:10', '2021-01-08 21:06:10'),
(49, 'http://www.sangbad7.com/%E0%A6%A7%E0%A6%B0%E0%A7%8', '66.249.75.148', 1, '2021-01-08', NULL, '2021-01-08 22:28:55', '2021-01-08 22:28:55'),
(50, 'http://sangbad7.com', '192.71.224.240', 1, '2021-01-08', NULL, '2021-01-08 22:48:13', '2021-01-08 22:48:13'),
(51, 'http://sangbad7.com', '192.71.3.26', 1, '2021-01-08', NULL, '2021-01-08 22:48:15', '2021-01-08 22:48:15'),
(52, 'http://sangbad7.com', '192.71.23.211', 1, '2021-01-08', NULL, '2021-01-08 22:48:16', '2021-01-08 22:48:16'),
(53, 'https://www.sangbad7.ustutorial.com', '51.158.127.119', 1, '2021-01-08', NULL, '2021-01-08 23:07:16', '2021-01-08 23:07:16'),
(54, 'http://sangbad7.com', '185.104.184.122', 1, '2021-01-08', NULL, '2021-01-08 23:07:46', '2021-01-08 23:07:46'),
(55, 'http://sangbad7.com', '46.17.106.61', 1, '2021-01-08', NULL, '2021-01-09 00:18:15', '2021-01-09 00:18:15'),
(56, 'http://sangbad7.com/America/POL', '72.226.49.68', 2, '2021-01-08', NULL, '2021-01-09 02:42:42', '2021-01-09 02:47:31'),
(57, 'http://sangbad7.com/International/middle-east', '72.226.49.68', 2, '2021-01-08', NULL, '2021-01-09 02:47:36', '2021-01-09 02:47:56'),
(58, 'http://sangbad7.com/sports/football', '72.226.49.68', 2, '2021-01-08', NULL, '2021-01-09 02:54:01', '2021-01-09 02:56:17'),
(59, 'http://sangbad7.com/sports/football/7/%E0%A6%AB%E0', '72.226.49.68', 2, '2021-01-08', NULL, '2021-01-09 02:54:29', '2021-01-09 02:56:00'),
(60, 'http://sangbad7.com/sports/football/10/%E0%A6%AC%E', '72.226.49.68', 1, '2021-01-08', NULL, '2021-01-09 02:56:27', '2021-01-09 02:56:27'),
(61, 'http://sangbad7.com/entertainment/dhallywood', '72.226.49.68', 4, '2021-01-08', NULL, '2021-01-09 02:56:35', '2021-01-09 03:09:25'),
(62, 'http://sangbad7.com/entertainment/bollywood', '72.226.49.68', 2, '2021-01-08', NULL, '2021-01-09 03:03:31', '2021-01-09 03:08:51'),
(63, 'http://sangbad7.com/entertainment/bollywood/25/%E0', '72.226.49.68', 2, '2021-01-08', NULL, '2021-01-09 03:03:46', '2021-01-09 03:05:59'),
(64, 'http://sangbad7.com/entertainment/hollywood', '72.226.49.68', 5, '2021-01-08', NULL, '2021-01-09 03:06:03', '2021-01-09 03:19:48'),
(65, 'http://sangbad7.com/archive', '72.226.49.68', 20, '2021-01-08', NULL, '2021-01-09 04:20:34', '2021-01-09 05:54:32'),
(66, 'http://sangbad7.com', '172.58.238.217', 1, '2021-01-08', NULL, '2021-01-09 04:49:26', '2021-01-09 04:49:26'),
(67, 'http://sangbad7.com', '213.166.69.250', 1, '2021-01-08', NULL, '2021-01-09 05:13:51', '2021-01-09 05:13:51'),
(68, 'http://sangbad7.com/feature/travel', '72.226.49.68', 1, '2021-01-08', NULL, '2021-01-09 06:28:22', '2021-01-09 06:28:22'),
(69, 'http://sangbad7.com/technology', '72.226.49.68', 3, '2021-01-08', NULL, '2021-01-09 06:43:25', '2021-01-09 06:47:08'),
(70, 'http://sangbad7.com', '72.226.49.68', 85, '2021-01-09', NULL, '2021-01-09 07:04:17', '2021-01-10 06:18:04'),
(71, 'http://sangbad7.com', '42.0.4.249', 6, '2021-01-09', NULL, '2021-01-09 07:09:07', '2021-01-09 07:36:48'),
(72, 'http://sangbad7.com/%E0%A6%86%E0%A6%AE%E0%A7%87%E0', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:10:00', '2021-01-09 07:10:00'),
(73, 'http://sangbad7.com/technology', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:10:55', '2021-01-09 07:10:55'),
(74, 'http://sangbad7.com/technology/news/28/%E0%A6%95%E', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:10:57', '2021-01-09 07:10:57'),
(75, 'http://sangbad7.com/entertainment/hollywood', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:11:05', '2021-01-09 07:11:05'),
(76, 'http://sangbad7.com/country/orthoniti', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:11:16', '2021-01-09 07:11:16'),
(77, 'http://sangbad7.com/%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:11:34', '2021-01-09 07:11:34'),
(78, 'http://sangbad7.com/country/rajniti', '42.0.4.249', 1, '2021-01-09', NULL, '2021-01-09 07:12:01', '2021-01-09 07:12:01'),
(79, 'https://sangbad7.ustutorial.com', '138.246.253.24', 1, '2021-01-09', NULL, '2021-01-09 07:25:09', '2021-01-09 07:25:09'),
(80, 'https://sangbad7.ustutorial.com', '51.15.195.246', 1, '2021-01-09', NULL, '2021-01-09 08:09:15', '2021-01-09 08:09:15'),
(81, 'http://sangbad7.com/entertainment/bollywood', '72.226.49.68', 1, '2021-01-09', NULL, '2021-01-09 08:28:28', '2021-01-09 08:28:28'),
(82, 'http://sangbad7.com/technology/news/28/%E0%A6%95%E', '72.226.49.68', 2, '2021-01-09', NULL, '2021-01-09 08:52:52', '2021-01-09 08:56:00'),
(83, 'http://sangbad7.com/education', '72.226.49.68', 12, '2021-01-09', NULL, '2021-01-09 09:10:48', '2021-01-10 06:02:59'),
(84, 'http://sangbad7.com', '34.73.134.70', 2, '2021-01-09', NULL, '2021-01-09 09:18:22', '2021-01-09 09:18:23'),
(85, 'http://www.sangbad7.com', '209.17.97.114', 1, '2021-01-09', NULL, '2021-01-09 09:21:25', '2021-01-09 09:21:25'),
(86, 'https://www.sangbad7.ustutorial.com', '209.17.96.114', 1, '2021-01-09', NULL, '2021-01-09 10:16:55', '2021-01-09 10:16:55'),
(87, 'http://www.sangbad7.ustutorial.com', '209.17.96.250', 1, '2021-01-09', NULL, '2021-01-09 12:59:20', '2021-01-09 12:59:20'),
(88, 'http://sangbad7.ustutorial.com', '209.17.97.34', 1, '2021-01-09', NULL, '2021-01-09 13:15:53', '2021-01-09 13:15:53'),
(89, 'http://sangbad7.com', '23.95.219.150', 1, '2021-01-09', NULL, '2021-01-09 15:52:26', '2021-01-09 15:52:26'),
(90, 'http://sangbad7.com/advertisement/bari-vara/36/%E0', '23.95.219.150', 1, '2021-01-09', NULL, '2021-01-09 15:52:42', '2021-01-09 15:52:42'),
(91, 'http://sangbad7.com', '66.249.65.65', 1, '2021-01-09', NULL, '2021-01-09 16:21:36', '2021-01-09 16:21:36'),
(92, 'http://sangbad7.com/advertisement', '66.249.65.67', 1, '2021-01-09', NULL, '2021-01-09 16:34:40', '2021-01-09 16:34:40'),
(93, 'http://sangbad7.com/advertisement/chakuri/34/%E0%A', '66.249.65.65', 1, '2021-01-09', NULL, '2021-01-09 16:44:08', '2021-01-09 16:44:08'),
(94, 'http://sangbad7.com', '209.17.97.10', 1, '2021-01-09', NULL, '2021-01-09 16:46:22', '2021-01-09 16:46:22'),
(95, 'http://sangbad7.com/America/POL/23/%E0%A6%AC%E0%A6', '72.226.49.68', 1, '2021-01-09', NULL, '2021-01-09 18:53:25', '2021-01-09 18:53:25'),
(96, 'http://sangbad7.com/entertainment/hollywood/44/%E0', '72.226.49.68', 2, '2021-01-09', NULL, '2021-01-09 18:53:46', '2021-01-09 18:54:04'),
(97, 'http://sangbad7.com/feature/lifestyle', '72.226.49.68', 1, '2021-01-09', NULL, '2021-01-09 18:54:57', '2021-01-09 18:54:57'),
(98, 'https://mail.sangbad7.com', '209.17.96.90', 1, '2021-01-09', NULL, '2021-01-09 19:08:46', '2021-01-09 19:08:46'),
(99, 'http://sangbad7.com', '35.196.43.3', 2, '2021-01-09', NULL, '2021-01-09 21:48:18', '2021-01-09 21:48:19'),
(100, 'http://sangbad7.com', '66.249.65.69', 1, '2021-01-09', NULL, '2021-01-10 01:14:54', '2021-01-10 01:14:54'),
(101, 'https://www.sangbad7.com', '138.246.253.24', 1, '2021-01-09', NULL, '2021-01-10 04:05:46', '2021-01-10 04:05:46'),
(102, 'http://sangbad7.com', '34.233.170.90', 1, '2021-01-09', NULL, '2021-01-10 05:19:30', '2021-01-10 05:19:30'),
(103, 'http://sangbad7.com', '77.88.5.250', 1, '2021-01-09', NULL, '2021-01-10 05:40:44', '2021-01-10 05:40:44'),
(104, 'http://sangbad7.com/advertisement/chakuri', '72.226.49.68', 2, '2021-01-09', NULL, '2021-01-10 06:12:08', '2021-01-10 06:18:02'),
(105, 'http://www.sangbad7.com', '66.249.73.86', 1, '2021-01-09', NULL, '2021-01-10 06:42:18', '2021-01-10 06:42:18'),
(106, 'http://sangbad7.com', '72.226.49.68', 75, '2021-01-10', NULL, '2021-01-10 07:22:08', '2021-01-11 06:56:27'),
(107, 'http://sangbad7.com', '27.147.204.43', 5, '2021-01-10', NULL, '2021-01-10 08:33:00', '2021-01-10 08:39:17'),
(108, 'http://sangbad7.com/America/POL', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:33:53', '2021-01-10 08:33:53'),
(109, 'http://sangbad7.com/America/economy', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:03', '2021-01-10 08:34:03'),
(110, 'http://sangbad7.com/Bangladesh/national', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:07', '2021-01-10 08:34:07'),
(111, 'http://sangbad7.com/Bangladesh/rajniti', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:09', '2021-01-10 08:34:09'),
(112, 'http://sangbad7.com/Bangladesh/orthoniti', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:14', '2021-01-10 08:34:14'),
(113, 'http://sangbad7.com/International/canada', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:20', '2021-01-10 08:34:20'),
(114, 'http://sangbad7.com/International/jukto-rajjo', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:24', '2021-01-10 08:34:24'),
(115, 'http://sangbad7.com/International/europe', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:27', '2021-01-10 08:34:27'),
(116, 'http://sangbad7.com/sports/cricket', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:29', '2021-01-10 08:34:29'),
(117, 'http://sangbad7.com/sports/football', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:34', '2021-01-10 08:34:34'),
(118, 'http://sangbad7.com/sports/baseball', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:38', '2021-01-10 08:34:38'),
(119, 'http://sangbad7.com/sports/basketball', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:40', '2021-01-10 08:34:40'),
(120, 'http://sangbad7.com/entertainment/dhallywood', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:43', '2021-01-10 08:34:43'),
(121, 'http://sangbad7.com/entertainment/bollywood', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:45', '2021-01-10 08:34:45'),
(122, 'http://sangbad7.com/entertainment/hollywood', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:48', '2021-01-10 08:34:48'),
(123, 'http://sangbad7.com/feature/lifestyle', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:51', '2021-01-10 08:34:51'),
(124, 'http://sangbad7.com/feature/travel', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:54', '2021-01-10 08:34:54'),
(125, 'http://sangbad7.com/feature/agriculture-and-nature', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:56', '2021-01-10 08:34:56'),
(126, 'http://sangbad7.com/feature/bangla-jokes', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:34:58', '2021-01-10 08:34:58'),
(127, 'http://sangbad7.com/technology', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:35:02', '2021-01-10 08:35:02'),
(128, 'http://sangbad7.com/archive', '27.147.204.43', 2, '2021-01-10', NULL, '2021-01-10 08:35:18', '2021-01-10 08:35:19'),
(129, 'http://sangbad7.com/entertainment/bollywood/27/%E0', '27.147.204.43', 1, '2021-01-10', NULL, '2021-01-10 08:35:39', '2021-01-10 08:35:39'),
(130, 'http://www.sangbad7.com/topic/%E0%A6%95%E0%A7%83%E', '66.249.73.88', 1, '2021-01-10', NULL, '2021-01-10 09:27:48', '2021-01-10 09:27:48'),
(131, 'http://sangbad7.com', '35.227.92.145', 2, '2021-01-10', NULL, '2021-01-10 11:15:07', '2021-01-10 11:15:07'),
(132, 'https://sangbad7.com', '138.246.253.24', 1, '2021-01-10', NULL, '2021-01-10 11:16:44', '2021-01-10 11:16:44'),
(133, 'http://mail.sangbad7.com', '209.17.96.18', 1, '2021-01-10', NULL, '2021-01-10 12:00:28', '2021-01-10 12:00:28'),
(134, 'https://sangbad7.ustutorial.com', '209.17.96.10', 1, '2021-01-10', NULL, '2021-01-10 12:07:58', '2021-01-10 12:07:58'),
(135, 'https://mail.sangbad7.com', '138.246.253.24', 1, '2021-01-10', NULL, '2021-01-10 12:09:20', '2021-01-10 12:09:20'),
(136, 'http://www.sangbad7.com', '66.249.73.90', 1, '2021-01-10', NULL, '2021-01-10 13:47:39', '2021-01-10 13:47:39'),
(137, 'http://sangbad7.com', '144.48.0.50', 41, '2021-01-10', NULL, '2021-01-10 17:09:55', '2021-01-11 06:31:38'),
(138, 'http://sangbad7.com/Bangladesh', '144.48.0.50', 1, '2021-01-10', NULL, '2021-01-10 17:26:31', '2021-01-10 17:26:31'),
(139, 'http://sangbad7.com', '58.145.187.228', 16, '2021-01-10', NULL, '2021-01-10 17:28:50', '2021-01-10 18:42:44'),
(140, 'http://sangbad7.com/education', '72.226.49.68', 2, '2021-01-10', NULL, '2021-01-10 17:33:11', '2021-01-11 04:31:24'),
(141, 'http://sangbad7.com/entertainment', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:34:44', '2021-01-10 17:34:44'),
(142, 'http://sangbad7.com/feature/lifestyle', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:35:00', '2021-01-10 17:35:00'),
(143, 'http://sangbad7.com/feature/travel', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:35:06', '2021-01-10 17:35:06'),
(144, 'http://sangbad7.com/feature/agriculture-and-nature', '72.226.49.68', 2, '2021-01-10', NULL, '2021-01-10 17:35:10', '2021-01-11 04:48:28'),
(145, 'http://sangbad7.com/advertisement/chakuri', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:35:18', '2021-01-10 17:35:18'),
(146, 'http://sangbad7.com/advertisement/patro-patri', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:35:24', '2021-01-10 17:35:24'),
(147, 'http://sangbad7.com/advertisement/bari-vara', '72.226.49.68', 2, '2021-01-10', NULL, '2021-01-10 17:35:27', '2021-01-10 17:35:39'),
(148, 'http://sangbad7.com/education/news/45/%E0%A6%B8%E0', '72.226.49.68', 2, '2021-01-10', NULL, '2021-01-10 17:39:49', '2021-01-10 18:01:11'),
(149, 'http://sangbad7.com/Bangladesh/national/22/%E0%A6%', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:40:14', '2021-01-10 17:40:14'),
(150, 'http://sangbad7.com/America/POL', '72.226.49.68', 3, '2021-01-10', NULL, '2021-01-10 17:58:55', '2021-01-11 04:44:50'),
(151, 'http://sangbad7.com/America/economy', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:00', '2021-01-10 17:59:00'),
(152, 'http://sangbad7.com/Bangladesh/national', '72.226.49.68', 7, '2021-01-10', NULL, '2021-01-10 17:59:04', '2021-01-11 05:54:06'),
(153, 'http://sangbad7.com/Bangladesh/rajniti', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:06', '2021-01-10 17:59:06'),
(154, 'http://sangbad7.com/Bangladesh/orthoniti', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:10', '2021-01-10 17:59:10'),
(155, 'http://sangbad7.com/International/canada', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:16', '2021-01-10 17:59:16'),
(156, 'http://sangbad7.com/International/jukto-rajjo', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:19', '2021-01-10 17:59:19'),
(157, 'http://sangbad7.com/International/europe', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:21', '2021-01-10 17:59:21'),
(158, 'http://sangbad7.com/International', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:22', '2021-01-10 17:59:22'),
(159, 'http://sangbad7.com/sports/cricket', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:29', '2021-01-10 17:59:29'),
(160, 'http://sangbad7.com/entertainment/dhallywood', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:35', '2021-01-10 17:59:35'),
(161, 'http://sangbad7.com/entertainment/bollywood', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:38', '2021-01-10 17:59:38'),
(162, 'http://sangbad7.com/entertainment/hollywood', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 17:59:46', '2021-01-10 17:59:46'),
(163, 'http://sangbad7.com/technology', '72.226.49.68', 3, '2021-01-10', NULL, '2021-01-10 17:59:59', '2021-01-10 18:00:33'),
(164, 'http://sangbad7.com/Bangladesh/national/47/%E0%A6%', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 18:00:53', '2021-01-10 18:00:53'),
(165, 'http://sangbad7.com/law-courts/news/14/%E0%A6%89%E', '72.226.49.68', 1, '2021-01-10', NULL, '2021-01-10 18:01:38', '2021-01-10 18:01:38'),
(166, 'http://sangbad7.com', '150.107.202.26', 1, '2021-01-10', NULL, '2021-01-10 18:02:06', '2021-01-10 18:02:06'),
(167, 'http://sangbad7.com/Bangladesh', '58.145.187.228', 1, '2021-01-10', NULL, '2021-01-10 18:05:20', '2021-01-10 18:05:20'),
(168, 'http://sangbad7.com/International', '58.145.187.228', 1, '2021-01-10', NULL, '2021-01-10 18:05:26', '2021-01-10 18:05:26'),
(169, 'http://sangbad7.com/feature/agriculture-and-nature', '58.145.187.228', 1, '2021-01-10', NULL, '2021-01-10 18:21:20', '2021-01-10 18:21:20'),
(170, 'http://sangbad7.com/health', '144.48.0.50', 1, '2021-01-10', NULL, '2021-01-10 18:46:11', '2021-01-10 18:46:11'),
(171, 'http://sangbad7.com', '172.58.238.149', 5, '2021-01-10', NULL, '2021-01-10 21:59:56', '2021-01-10 23:40:32'),
(172, 'http://sangbad7.com', '71.190.62.195', 1, '2021-01-10', NULL, '2021-01-10 22:00:32', '2021-01-10 22:00:32'),
(173, 'https://mail.sangbad7.com', '51.158.98.24', 1, '2021-01-10', NULL, '2021-01-10 22:03:21', '2021-01-10 22:03:21'),
(174, 'https://sangbad7.com', '163.172.180.25', 1, '2021-01-10', NULL, '2021-01-10 22:21:59', '2021-01-10 22:21:59'),
(175, 'https://www.sangbad7.com', '163.172.180.25', 1, '2021-01-10', NULL, '2021-01-11 01:56:10', '2021-01-11 01:56:10'),
(176, 'http://sangbad7.com', '209.17.96.202', 1, '2021-01-10', NULL, '2021-01-11 03:11:51', '2021-01-11 03:11:51'),
(177, 'http://sangbad7.com/health/news/47/%E0%A6%AC%E0%A6', '144.48.0.50', 9, '2021-01-10', NULL, '2021-01-11 04:00:42', '2021-01-11 04:43:18'),
(178, 'http://sangbad7.com/archive', '144.48.0.50', 23, '2021-01-10', NULL, '2021-01-11 04:07:19', '2021-01-11 04:49:05'),
(179, 'http://sangbad7.com/education/news/45/%E0%A6%B8%E0', '144.48.0.50', 1, '2021-01-10', NULL, '2021-01-11 04:18:26', '2021-01-11 04:18:26'),
(180, 'http://sangbad7.com/health', '72.226.49.68', 5, '2021-01-10', NULL, '2021-01-11 04:29:49', '2021-01-11 04:49:16'),
(181, 'http://sangbad7.com', '35.196.216.150', 2, '2021-01-10', NULL, '2021-01-11 04:35:15', '2021-01-11 04:35:16'),
(182, 'http://sangbad7.com', '35.229.97.182', 2, '2021-01-10', NULL, '2021-01-11 04:49:52', '2021-01-11 04:49:53'),
(183, 'http://sangbad7.com/%E0%A6%B2%E0%A6%BE%E0%A6%87%E0', '72.226.49.68', 6, '2021-01-10', NULL, '2021-01-11 05:11:49', '2021-01-11 05:20:57'),
(184, 'http://sangbad7.com', '34.233.170.90', 1, '2021-01-10', NULL, '2021-01-11 05:23:32', '2021-01-11 05:23:32'),
(185, 'http://sangbad7.com/America', '72.226.49.68', 6, '2021-01-10', NULL, '2021-01-11 05:54:09', '2021-01-11 06:01:22'),
(186, 'http://sangbad7.com/probash', '72.226.49.68', 3, '2021-01-10', NULL, '2021-01-11 06:01:59', '2021-01-11 06:05:58'),
(187, 'http://sangbad7.com/shahitto', '144.48.0.50', 1, '2021-01-10', NULL, '2021-01-11 06:30:38', '2021-01-11 06:30:38'),
(188, 'http://sangbad7.com', '27.147.204.43', 1, '2021-01-11', NULL, '2021-01-11 09:52:41', '2021-01-11 09:52:41'),
(189, 'http://sangbad7.com/interview/news/53/%E0%A6%AA%E0', '27.147.204.43', 1, '2021-01-11', NULL, '2021-01-11 09:54:04', '2021-01-11 09:54:04'),
(190, 'http://sangbad7.com/Bangladesh/national/5/%E0%A6%A', '27.147.204.43', 1, '2021-01-11', NULL, '2021-01-11 09:54:39', '2021-01-11 09:54:39'),
(191, 'http://sangbad7.com', '72.226.49.68', 93, '2021-01-11', NULL, '2021-01-11 16:18:40', '2021-01-11 22:38:24'),
(192, 'http://sangbad7.com', '144.48.0.50', 10, '2021-01-11', NULL, '2021-01-11 17:35:43', '2021-01-12 05:56:24'),
(193, 'http://sangbad7.com/health/news/55/%E0%A6%AB%E0%A7', '72.226.49.68', 3, '2021-01-11', NULL, '2021-01-11 18:02:42', '2021-01-11 21:47:13'),
(194, 'http://sangbad7.com/education', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 18:20:08', '2021-01-11 18:20:08'),
(195, 'http://sangbad7.com/advertisement/chakuri', '72.226.49.68', 11, '2021-01-11', NULL, '2021-01-11 18:20:41', '2021-01-11 22:03:40'),
(196, 'http://sangbad7.com/education/news/4/%E0%A6%A2%E0%', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 18:21:00', '2021-01-11 18:21:00'),
(197, 'http://sangbad7.com/search', '72.226.49.68', 3, '2021-01-11', NULL, '2021-01-11 18:21:55', '2021-01-11 18:23:40'),
(198, 'http://sangbad7.com/probash', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 18:51:58', '2021-01-11 18:51:58'),
(199, 'http://sangbad7.com/interview', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 19:12:31', '2021-01-11 19:12:31'),
(200, 'http://sangbad7.com', '27.147.191.56', 9, '2021-01-11', NULL, '2021-01-11 19:35:25', '2021-01-12 05:33:06'),
(201, 'http://sangbad7.com/technology', '27.147.191.56', 1, '2021-01-11', NULL, '2021-01-11 19:36:33', '2021-01-11 19:36:33'),
(202, 'http://sangbad7.com/shahitto', '27.147.191.56', 27, '2021-01-11', NULL, '2021-01-11 19:36:46', '2021-01-12 05:32:35'),
(203, 'http://sangbad7.com', '66.249.75.162', 1, '2021-01-11', NULL, '2021-01-11 19:38:44', '2021-01-11 19:38:44'),
(204, 'http://sangbad7.com/interview', '27.147.191.56', 1, '2021-01-11', NULL, '2021-01-11 20:02:09', '2021-01-11 20:02:09'),
(205, 'http://sangbad7.com/shahitto', '72.226.49.68', 4, '2021-01-11', NULL, '2021-01-11 20:07:55', '2021-01-11 21:14:20'),
(206, 'http://sangbad7.com/shahitto/news/53/%E0%A6%AB%E0%', '72.226.49.68', 14, '2021-01-11', NULL, '2021-01-11 20:18:13', '2021-01-11 21:33:17'),
(207, 'http://sangbad7.com/Bangladesh/national/57/%E0%A6%', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 21:04:08', '2021-01-11 21:04:08'),
(208, 'http://sangbad7.com/shahitto/news/60/%E0%A6%97%E0%', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 21:04:18', '2021-01-11 21:04:18'),
(209, 'http://sangbad7.com/shahitto/news/54/%E0%A6%B8%E0%', '72.226.49.68', 3, '2021-01-11', NULL, '2021-01-11 21:15:46', '2021-01-11 21:23:27'),
(210, 'http://sangbad7.com/lifestyle/news/40/%E0%A6%B6%E0', '72.226.49.68', 3, '2021-01-11', NULL, '2021-01-11 21:34:02', '2021-01-11 21:46:04'),
(211, 'http://sangbad7.com/entertainment/hollywood', '72.226.49.68', 1, '2021-01-11', NULL, '2021-01-11 21:55:00', '2021-01-11 21:55:00'),
(212, 'http://sangbad7.com/entertainment/hollywood/26/%E0', '72.226.49.68', 2, '2021-01-11', NULL, '2021-01-11 21:55:03', '2021-01-11 22:01:04'),
(213, 'http://sangbad7.com/advertisement', '72.226.49.68', 9, '2021-01-11', NULL, '2021-01-11 22:04:06', '2021-01-11 22:40:15'),
(214, 'http://sangbad7.com', '174.204.142.10', 1, '2021-01-11', NULL, '2021-01-12 01:01:45', '2021-01-12 01:01:45'),
(215, 'http://sangbad7.com/education/news/4/%E0%A6%A2%E0%', '174.204.142.10', 2, '2021-01-11', NULL, '2021-01-12 01:02:20', '2021-01-12 01:02:35'),
(216, 'http://sangbad7.com/Bangladesh/national/5/%E0%A6%A', '174.204.142.10', 1, '2021-01-11', NULL, '2021-01-12 01:03:09', '2021-01-12 01:03:09'),
(217, 'http://sangbad7.com', '18.134.242.179', 2, '2021-01-11', NULL, '2021-01-12 01:08:11', '2021-01-12 01:08:13'),
(218, 'http://sangbad7.com', '66.108.54.53', 49, '2021-01-11', NULL, '2021-01-12 02:08:46', '2021-01-12 06:57:44'),
(219, 'https://mail.sangbad7.com', '209.17.96.170', 1, '2021-01-11', NULL, '2021-01-12 02:32:27', '2021-01-12 02:32:27'),
(220, 'http://sangbad7.com', '18.234.16.132', 1, '2021-01-11', NULL, '2021-01-12 04:13:44', '2021-01-12 04:13:44'),
(221, 'http://sangbad7.com', '34.233.170.90', 1, '2021-01-11', NULL, '2021-01-12 04:35:47', '2021-01-12 04:35:47'),
(222, 'http://sangbad7.com', '66.249.84.41', 3, '2021-01-11', NULL, '2021-01-12 05:51:38', '2021-01-12 06:36:31'),
(223, 'http://sangbad7.com/Bangladesh/national/57/%E0%A6%', '144.48.0.50', 1, '2021-01-11', NULL, '2021-01-12 05:52:11', '2021-01-12 05:52:11'),
(224, 'http://sangbad7.com', '66.249.84.43', 3, '2021-01-11', NULL, '2021-01-12 06:33:41', '2021-01-12 06:34:27'),
(225, 'http://sangbad7.com', '66.249.84.39', 3, '2021-01-11', NULL, '2021-01-12 06:37:10', '2021-01-12 06:37:26'),
(226, 'http://sangbad7.com', '27.147.191.169', 1, '2021-01-11', NULL, '2021-01-12 06:59:44', '2021-01-12 06:59:44'),
(227, 'http://sangbad7.com/shahitto', '27.147.191.169', 1, '2021-01-11', NULL, '2021-01-12 06:59:58', '2021-01-12 06:59:58'),
(228, 'http://sangbad7.com/shahitto/news/60/%E0%A6%97%E0%', '27.147.191.169', 3, '2021-01-12', NULL, '2021-01-12 07:00:15', '2021-01-12 07:06:20'),
(229, 'http://sangbad7.com', '66.108.54.53', 226, '2021-01-12', NULL, '2021-01-12 07:03:45', '2021-01-13 05:38:59'),
(230, 'http://sangbad7.com', '193.176.84.191', 3, '2021-01-12', NULL, '2021-01-12 07:05:35', '2021-01-12 07:14:38'),
(231, 'http://sangbad7.com/lifestyle', '193.176.84.191', 3, '2021-01-12', NULL, '2021-01-12 07:06:10', '2021-01-12 07:12:26'),
(232, 'http://sangbad7.com/search', '193.176.84.191', 2, '2021-01-12', NULL, '2021-01-12 07:06:57', '2021-01-12 07:12:58'),
(233, 'http://sangbad7.com', '27.147.191.169', 3, '2021-01-12', NULL, '2021-01-12 07:08:23', '2021-01-12 07:37:53'),
(234, 'http://sangbad7.com/shahitto', '27.147.191.169', 6, '2021-01-12', NULL, '2021-01-12 07:08:34', '2021-01-12 10:06:06'),
(235, 'http://sangbad7.com/shahitto/news/64/%E0%A6%B8%E0%', '27.147.191.169', 4, '2021-01-12', NULL, '2021-01-12 07:09:23', '2021-01-12 07:15:02'),
(236, 'http://sangbad7.com/interview', '27.147.191.169', 30, '2021-01-12', NULL, '2021-01-12 07:22:02', '2021-01-12 10:06:19'),
(237, 'http://sangbad7.com', '209.17.96.138', 1, '2021-01-12', NULL, '2021-01-12 10:33:57', '2021-01-12 10:33:57'),
(238, 'https://sangbad7.com', '209.17.96.34', 1, '2021-01-12', NULL, '2021-01-12 12:35:23', '2021-01-12 12:35:23'),
(239, 'http://sangbad7.com', '77.88.5.250', 1, '2021-01-12', NULL, '2021-01-12 13:11:41', '2021-01-12 13:11:41'),
(240, 'http://sangbad7.com', '72.226.49.68', 129, '2021-01-12', NULL, '2021-01-12 15:04:40', '2021-01-13 05:26:08'),
(241, 'http://sangbad7.com/advertisement', '72.226.49.68', 14, '2021-01-12', NULL, '2021-01-12 15:04:49', '2021-01-12 21:56:13'),
(242, 'http://sangbad7.com', '172.58.227.163', 4, '2021-01-12', NULL, '2021-01-12 16:37:47', '2021-01-12 16:48:27'),
(243, 'http://sangbad7.com/advertisement', '172.58.227.163', 1, '2021-01-12', NULL, '2021-01-12 16:38:09', '2021-01-12 16:38:09'),
(244, 'http://sangbad7.com/search', '172.58.227.163', 3, '2021-01-12', NULL, '2021-01-12 16:41:54', '2021-01-12 16:42:34'),
(245, 'http://sangbad7.com/America', '172.58.227.163', 1, '2021-01-12', NULL, '2021-01-12 16:48:24', '2021-01-12 16:48:24'),
(246, 'http://sangbad7.com/health/news/55/%E0%A6%AB%E0%A7', '172.58.227.163', 1, '2021-01-12', NULL, '2021-01-12 16:48:30', '2021-01-12 16:48:30'),
(247, 'http://sangbad7.com', '144.48.0.50', 14, '2021-01-12', NULL, '2021-01-12 16:54:44', '2021-01-12 17:50:25'),
(248, 'http://www.sangbad7.com', '144.48.0.50', 2, '2021-01-12', NULL, '2021-01-12 17:52:15', '2021-01-12 17:53:55'),
(249, 'http://sangbad7.com', '199.187.211.99', 1, '2021-01-12', NULL, '2021-01-12 18:12:59', '2021-01-12 18:12:59'),
(250, 'http://sangbad7.com', '213.32.83.105', 1, '2021-01-12', NULL, '2021-01-12 18:53:02', '2021-01-12 18:53:02'),
(251, 'http://sangbad7.com', '62.210.152.248', 1, '2021-01-12', NULL, '2021-01-12 20:54:01', '2021-01-12 20:54:01'),
(252, 'http://sangbad7.com/shahitto/news/64/%E0%A6%B8%E0%', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-12 22:02:26', '2021-01-12 22:02:59'),
(253, 'http://sangbad7.com/interview/news/72/%E0%A6%9F%E0', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-12 22:05:08', '2021-01-12 22:05:58'),
(254, 'http://sangbad7.com/shahitto', '72.226.49.68', 3, '2021-01-12', NULL, '2021-01-12 22:11:16', '2021-01-13 04:18:49'),
(255, 'http://sangbad7.com', '66.249.75.165', 1, '2021-01-12', NULL, '2021-01-12 23:15:17', '2021-01-12 23:15:17'),
(256, 'http://sangbad7.com/technology/news/59/%E2%80%98%E', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-13 01:34:49', '2021-01-13 01:37:51'),
(257, 'http://sangbad7.com', '209.127.17.52', 1, '2021-01-12', NULL, '2021-01-13 02:33:42', '2021-01-13 02:33:42'),
(258, 'http://sangbad7.com', '188.166.44.72', 2, '2021-01-12', NULL, '2021-01-13 04:09:21', '2021-01-13 04:09:28'),
(259, 'http://sangbad7.com/search', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-13 04:10:15', '2021-01-13 04:16:16'),
(260, 'http://sangbad7.com/education', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-13 04:19:39', '2021-01-13 04:20:56'),
(261, 'http://sangbad7.com', '34.233.170.90', 1, '2021-01-12', NULL, '2021-01-13 04:36:37', '2021-01-13 04:36:37'),
(262, 'http://sangbad7.com/technology', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-13 04:42:25', '2021-01-13 04:42:31'),
(263, 'http://sangbad7.com/America/POL', '72.226.49.68', 2, '2021-01-12', NULL, '2021-01-13 04:43:03', '2021-01-13 04:43:07'),
(264, 'http://sangbad7.com', '18.234.16.132', 1, '2021-01-12', NULL, '2021-01-13 05:09:03', '2021-01-13 05:09:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biggapons`
--
ALTER TABLE `biggapons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biggapons_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_district_unique` (`district`),
  ADD UNIQUE KEY `districts_district_bn_unique` (`district_bn`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_division_unique` (`division`),
  ADD UNIQUE KEY `divisions_division_bn_unique` (`division_bn`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `most_read_news`
--
ALTER TABLE `most_read_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_created_by_foreign` (`created_by`),
  ADD KEY `news_updated_by_foreign` (`updated_by`),
  ADD KEY `news_division_id_foreign` (`division_id`),
  ADD KEY `news_district_id_foreign` (`district_id`),
  ADD KEY `news_category_id_foreign` (`category_id`),
  ADD KEY `news_sub_cat_id_foreign` (`sub_cat_id`),
  ADD KEY `news_news_author_id_foreign` (`news_author_id`);

--
-- Indexes for table `news_detail_photos`
--
ALTER TABLE `news_detail_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_clients`
--
ALTER TABLE `our_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_foreign` (`created_by`),
  ADD KEY `pages_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `page_photos`
--
ALTER TABLE `page_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_photos_page_id_foreign` (`page_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_foreign` (`created_by`),
  ADD KEY `sliders_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_created_by_foreign` (`created_by`),
  ADD KEY `sub_categories_updated_by_foreign` (`updated_by`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_menus_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `sub_sub_menus`
--
ALTER TABLE `sub_sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sub_menus_menu_id_foreign` (`menu_id`),
  ADD KEY `sub_sub_menus_sub_menu_id_foreign` (`sub_menu_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_created_by_foreign` (`created_by`),
  ADD KEY `testimonials_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_fb_client_id_unique` (`fb_client_id`),
  ADD UNIQUE KEY `users_mail_client_id_unique` (`mail_client_id`);

--
-- Indexes for table `user_feed_backs`
--
ALTER TABLE `user_feed_backs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_tracks`
--
ALTER TABLE `visitor_tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_tracks_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biggapons`
--
ALTER TABLE `biggapons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `most_read_news`
--
ALTER TABLE `most_read_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `news_detail_photos`
--
ALTER TABLE `news_detail_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our_clients`
--
ALTER TABLE `our_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_photos`
--
ALTER TABLE `page_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sub_sub_menus`
--
ALTER TABLE `sub_sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_feed_backs`
--
ALTER TABLE `user_feed_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitor_tracks`
--
ALTER TABLE `visitor_tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biggapons`
--
ALTER TABLE `biggapons`
  ADD CONSTRAINT `biggapons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `news_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `news_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `news_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `news_news_author_id_foreign` FOREIGN KEY (`news_author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `news_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_categories` (`id`),
  ADD CONSTRAINT `news_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `page_photos`
--
ALTER TABLE `page_photos`
  ADD CONSTRAINT `page_photos_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sliders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `sub_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sub_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD CONSTRAINT `sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `sub_sub_menus`
--
ALTER TABLE `sub_sub_menus`
  ADD CONSTRAINT `sub_sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `sub_sub_menus_sub_menu_id_foreign` FOREIGN KEY (`sub_menu_id`) REFERENCES `sub_menus` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `testimonials_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `visitor_tracks`
--
ALTER TABLE `visitor_tracks`
  ADD CONSTRAINT `visitor_tracks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
