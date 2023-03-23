-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2023 at 09:03 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstoneRevamp`
--
CREATE DATABASE IF NOT EXISTS `capstoneRevamp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `capstoneRevamp`;

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `shortDescription`, `fullDescription`, `header`, `thumbnailImage`, `fullImage`, `created_at`, `updated_at`) VALUES
(4, 'asdas', '', 'sadsa', NULL, '221489473_4012864035477828_357138612137997816_n.jpg', '221489473_4012864035477828_357138612137997816_n.jpg', '2022-12-08 11:49:58', '2022-12-08 11:49:58'),
(5, 'JUST IN: SEPNAS SOARS AGAIN!', 'The PHINMA-University of Pangasinan  conducted a ceremony, March 1, 2022,', 'The winners under junior high school and senior high school category for the #TaketheLead. We\'re Very Proud to say that Our School obtained a two Major Awards. Out of 14 participants in Junior High School Category KRIZTINE YAMBAO (JHS CATEGORY) really did ascend as she bagged the FIRST SPOT! SEPNAS Family is very Proud of you! Continue to bring light and inspiration to others by being good Leaders! #TatakSEPNAS #TatakSSG #KasamaMoAngPHINMAEd  #MakingLivesBetterThroughEducation  #TakeTheLead2022', 'https://www.youtube.com/', '274333233_1193458454517777_1033353473041095719_n.jpg', '274333233_1193458454517777_1033353473041095719_n.jpg', '2023-01-13 07:43:57', '2023-01-13 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `shortDescription`, `fullDescription`, `header`, `thumbnailImage`, `fullImage`, `created_at`, `updated_at`) VALUES
(5, 'Balik Eskwela 2k23', 'Kumusta, SEPNASians?  Handa na ba kayo? Tara Na!!!', 'Kumusta, SEPNASians?  Handa na ba kayo?  Tuloy na tuloy na bukas, January 4, 2023, ang ating pagbabalik sa ating minamahal na eskwelahan. Excited na kaming makita kayong muli!  Kitakits bukas, 7:15 AM!  #TatakSSGSEPNAS', 'Balik Eskwela 2k23', 'balik eskwela.jpg', 'balik eskwela.jpg', '2023-01-13 06:57:07', '2023-01-13 06:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulletin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulletin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `bulletin`, `bulletin_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'sample', 'achievements', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'sample', 'announcements', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 'sampleee', 'achievements', 9, '2022-12-02 08:21:34', '0000-00-00 00:00:00'),
(4, 2, 'hakdog', 'news', 9, '2022-12-02 08:21:34', '0000-00-00 00:00:00'),
(5, 3, 'sampleeulit', 'news', 9, '2022-12-02 08:21:34', '0000-00-00 00:00:00'),
(6, 1, 'hadoda', 'news', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 'asdasdas', 'news', 9, '2022-12-06 11:09:35', '2022-12-06 11:09:35'),
(9, 2, 'asdasdasdasda', 'news', 9, '2022-12-06 11:25:09', '2022-12-06 11:25:09'),
(10, 2, 'sample lang po', 'news', 9, '2022-12-06 11:26:10', '2022-12-06 11:26:10'),
(11, 2, 'sadasdsasada', 'news', 9, '2022-12-06 11:31:16', '2022-12-06 11:31:16'),
(12, 2, 'hakdog', 'news', 9, '2022-12-06 11:33:00', '2022-12-06 11:33:00'),
(13, 2, 'asdadas', 'news', 9, '2022-12-06 14:35:46', '2022-12-06 14:35:46'),
(14, 2, 'asdas', 'news', 9, '2022-12-06 14:37:28', '2022-12-06 14:37:28'),
(15, 2, 'asdas', 'news', 9, '2022-12-06 14:37:28', '2022-12-06 14:37:28'),
(16, 2, 'asdas', 'news', 9, '2022-12-06 14:37:28', '2022-12-06 14:37:28'),
(17, 2, 'sample lang', 'news', 9, '2022-12-06 14:37:43', '2022-12-06 14:37:43'),
(18, 3, 'samplee lang din ulit', 'news', 9, '2022-12-06 14:43:21', '2022-12-06 14:43:21'),
(19, 3, 'sample lang po', 'achievements', 3, '2022-12-06 14:51:38', '2022-12-06 14:51:38'),
(20, 3, 'Tara Pa enroll na tayo', 'announcements', 2, '2022-12-07 07:09:59', '2022-12-07 07:09:59'),
(21, 3, 'asdsadas', 'announcements', 2, '2022-12-07 17:01:27', '2022-12-07 17:01:27'),
(22, 3, 'ayaw ko pa pumasok ahhaha', 'announcements', 2, '2022-12-07 17:01:32', '2022-12-07 17:01:32'),
(23, 3, 'sampleee lang sadadsa', 'news', 9, '2022-12-08 06:32:40', '2022-12-08 06:32:40'),
(24, 3, 'edi wow', 'announcements', 2, '2022-12-08 06:50:50', '2022-12-08 06:50:50'),
(25, 7, 'asdasdsa', 'news', 9, '2022-12-09 02:36:27', '2022-12-09 02:36:27'),
(26, 7, 'sample', 'announcements', 2, '2022-12-10 04:23:06', '2022-12-10 04:23:06'),
(27, 7, 'asdsa', 'achievements', 4, '2022-12-10 04:34:36', '2022-12-10 04:34:36'),
(28, 7, 'sampleee', 'announcements', 2, '2022-12-14 03:04:36', '2022-12-14 03:04:36'),
(29, 7, 'adsas', 'announcements', 2, '2023-01-05 13:58:14', '2023-01-05 13:58:14'),
(30, 7, 'sample lit', 'announcements', 2, '2023-01-09 04:49:48', '2023-01-09 04:49:48'),
(31, 8, 'sampleee', 'announcements', 2, '2023-01-09 06:42:11', '2023-01-09 06:42:11'),
(32, 7, 'adadsa', 'announcements', 2, '2023-01-09 08:09:31', '2023-01-09 08:09:31'),
(33, 4, 'sample', 'announcements', 3, '2023-01-10 15:49:14', '2023-01-10 15:49:14'),
(34, 4, 'ZXzX', 'announcements', 5, '2023-01-13 08:07:11', '2023-01-13 08:07:11'),
(35, 9, 'astig', 'announcements', 5, '2023-01-18 02:18:51', '2023-01-18 02:18:51'),
(36, 10, 'amazing', 'announcements', 5, '2023-01-18 02:44:47', '2023-01-18 02:44:47'),
(37, 4, 'samplee', 'announcements', 5, '2023-01-18 05:08:16', '2023-01-18 05:08:16'),
(38, 4, 'sample', 'achievements', 5, '2023-01-19 02:28:56', '2023-01-19 02:28:56'),
(39, 11, 'hello', 'announcements', 5, '2023-01-20 04:55:55', '2023-01-20 04:55:55'),
(40, 12, 'samplee', 'announcements', 5, '2023-01-20 06:04:33', '2023-01-20 06:04:33'),
(41, 4, 'sampleedin', 'announcements', 5, '2023-01-23 15:47:35', '2023-01-23 15:47:35'),
(42, 4, 'gdgf', 'announcements', 5, '2023-01-23 15:58:36', '2023-01-23 15:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `subject`, `message`, `email`, `recipient`, `created_at`, `updated_at`) VALUES
(1, 'distinctio', 'dolores', 'Debitis quia.', 'lilla72@example.net', 'repellat adipisci sit quam veniam', '2022-12-02 08:21:34', '2022-12-02 08:21:34'),
(2, 'deleniti', 'voluptatem', 'Delectus quidem.', 'wcummerata@example.org', 'fuga deserunt optio omnis molestiae pariatur', '2022-12-02 08:21:34', '2022-12-02 08:21:34'),
(3, 'quis', 'totam', 'Dicta aut.', 'cortez40@example.com', 'vel accusamus odit nobis quibusdam id numquam quis eius amet', '2022-12-02 08:21:34', '2022-12-02 08:21:34'),
(4, 'quas', 'necessitatibus', 'Quam dolores.', 'ukling@example.net', 'dicta qui autem qui provident impedit hic repudiandae quod unde', '2022-12-02 08:21:34', '2022-12-02 08:21:34'),
(5, 'quis', 'omnis', 'Magnam non.', 'gfeil@example.org', 'dicta ut soluta aliquam qui ipsam quia est perferendis', '2022-12-02 08:21:34', '2022-12-02 08:21:34'),
(6, 'asdsa', 'asd', 'asdsa', 'emman@gmail.com', 'admin', '2022-12-08 12:20:39', '2022-12-08 12:20:39'),
(7, 'emman', 'sample', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-03 04:41:49', '2023-01-03 04:41:49'),
(8, 'emman', 'sample', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-03 04:42:08', '2023-01-03 04:42:08'),
(9, 'emman', 'sample', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-03 04:43:02', '2023-01-03 04:43:02'),
(10, 'sada', 'asdas', 'asdsa', 'asdsa', 'admin', '2023-01-03 04:43:12', '2023-01-03 04:43:12'),
(11, 'eqwe', 'qweq', 'qwewq', 'qweq', 'admin', '2023-01-03 04:43:56', '2023-01-03 04:43:56'),
(12, 'asdsa', 'asdas', 'sada', 'asdsa@gmail.com', 'admin', '2023-01-03 04:44:23', '2023-01-03 04:44:23'),
(13, 'asdsa', 'asdas', 'sada', 'asdsa@gmail.com', 'admin', '2023-01-03 04:44:24', '2023-01-03 04:44:24'),
(14, 'asdsa', 'asdas', 'sada', 'asdsa@gmail.com', 'admin', '2023-01-03 04:44:24', '2023-01-03 04:44:24'),
(15, 'asdsa', 'sadsa', 'sadas', 'sada@gmail.com', 'admin', '2023-01-03 04:45:01', '2023-01-03 04:45:01'),
(16, 'asdsa', 'asd', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-03 04:45:33', '2023-01-03 04:45:33'),
(17, 'asdsaa', 'asdas', 'asdsa', 'sada@gmail.com', 'admin', '2023-01-03 04:46:22', '2023-01-03 04:46:22'),
(18, 'adsa', 'ada', 'asdsa', 'adsa@gmail.com', 'admin', '2023-01-05 06:07:09', '2023-01-05 06:07:09'),
(19, 'asdsa', 'asdsa', 'asdas', 'asdas', 'admin', '2023-01-05 14:34:03', '2023-01-05 14:34:03'),
(20, 'asda', 'asda', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:34:22', '2023-01-05 14:34:22'),
(21, 'asd', 'asdas', 'dad', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:41:03', '2023-01-05 14:41:03'),
(22, 'emman', 'asdas', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:41:18', '2023-01-05 14:41:18'),
(23, 'asdsa', 'sample', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:41:46', '2023-01-05 14:41:46'),
(24, 'emman', 'asd', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:43:13', '2023-01-05 14:43:13'),
(25, 'asd', 'asdsa', 'asdsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:45:37', '2023-01-05 14:45:37'),
(26, 'asda', 'asdsa', 'asd', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:54:48', '2023-01-05 14:54:48'),
(27, 'asdas', 'asdas', 'asd', 'asda@gmail.com', 'admin', '2023-01-05 14:55:40', '2023-01-05 14:55:40'),
(28, 'asd', 'aasd', 'asdsa', 'Emman@outsoar.ph', 'admin', '2023-01-05 14:57:19', '2023-01-05 14:57:19'),
(29, 'asd', 'asdas', 'adsa', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 14:57:35', '2023-01-05 14:57:35'),
(30, 'asda', 'asdas', 'asdas', 'admin@gmail.com', 'admin', '2023-01-05 14:57:58', '2023-01-05 14:57:58'),
(31, 'asdasd', 'asdas', 'asd', 'asda@gmail.com', 'admin', '2023-01-05 15:00:03', '2023-01-05 15:00:03'),
(32, 'asdas', 'adsa', 'asda', 'emmanuellemon12@yahoo.com', 'registrar', '2023-01-05 15:20:56', '2023-01-05 15:20:56'),
(33, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:07', '2023-01-05 15:23:07'),
(34, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:13', '2023-01-05 15:23:13'),
(35, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:15', '2023-01-05 15:23:15'),
(36, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:15', '2023-01-05 15:23:15'),
(37, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:15', '2023-01-05 15:23:15'),
(38, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:16', '2023-01-05 15:23:16'),
(39, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:16', '2023-01-05 15:23:16'),
(40, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:16', '2023-01-05 15:23:16'),
(41, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:17', '2023-01-05 15:23:17'),
(42, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:17', '2023-01-05 15:23:17'),
(43, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:17', '2023-01-05 15:23:17'),
(44, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:18', '2023-01-05 15:23:18'),
(45, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:18', '2023-01-05 15:23:18'),
(46, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:18', '2023-01-05 15:23:18'),
(47, 'emman', 'sample', 'asdsa', 'asda@gmail.com', 'admin', '2023-01-05 15:23:52', '2023-01-05 15:23:52'),
(48, 'adas', 'asdsa', 'asdas', 'emmanuellemon12@yahoo.com', 'registrar', '2023-01-05 15:27:21', '2023-01-05 15:27:21'),
(49, 'asd', 'asd', 'asd', 'Emman@outsoar.ph', 'admin', '2023-01-05 15:33:11', '2023-01-05 15:33:11'),
(50, 'asd', 'asd', 'asd', 'Emman@outsoar.ph', 'admin', '2023-01-05 15:33:23', '2023-01-05 15:33:23'),
(51, 'asd', 'asd', 'asd', 'Emman@outsoar.ph', 'admin', '2023-01-05 15:33:27', '2023-01-05 15:33:27'),
(52, 'asd', 'asd', 'asd', 'Emman@outsoar.ph', 'admin', '2023-01-05 15:33:28', '2023-01-05 15:33:28'),
(53, 'asd', 'asd', 'asd', 'Emman@outsoar.ph', 'admin', '2023-01-05 15:33:28', '2023-01-05 15:33:28'),
(54, 'asdsa', 'asdas', 'asda', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 15:34:59', '2023-01-05 15:34:59'),
(55, 'asda', 'asda', 'asda', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 15:36:32', '2023-01-05 15:36:32'),
(56, 'asdsa', 'asda', 'asdas', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 15:37:15', '2023-01-05 15:37:15'),
(57, 'adsa', 'asdsa', 'asdas', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-05 15:38:37', '2023-01-05 15:38:37'),
(58, 'asd', 'sad', 'sda', 'dsa@gmail.com', 'registrar', '2023-01-09 04:51:57', '2023-01-09 04:51:57'),
(59, 'sample', 'sample', 'samplee', 'sample@gmail.com', 'admin', '2023-01-09 06:35:47', '2023-01-09 06:35:47'),
(60, 'Emmanuel Joshua A. Lemon', 'sample', 'ijikn', 'emmanuellemon12@yahoo.com', 'admin', '2023-01-10 15:46:11', '2023-01-10 15:46:11'),
(61, 'asaasd', 'sada', 'dsada', 'dsad@gmail.com', 'admin', '2023-01-13 01:39:44', '2023-01-13 01:39:44');

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
(100, '2022_12_02_101621_create_answers_table', 3),
(101, '2022_12_02_101621_create_entries_table', 3),
(102, '2022_12_02_101621_create_questions_table', 3),
(103, '2022_12_02_101621_create_sections_table', 3),
(104, '2022_12_02_101621_create_surveys_table', 3),
(105, '2014_10_12_000000_create_users_table', 4),
(106, '2014_10_12_100000_create_password_resets_table', 4),
(107, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(108, '2019_08_19_000000_create_failed_jobs_table', 4),
(109, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(110, '2022_10_29_032601_create_sessions_table', 4),
(111, '2022_11_01_141218_create_contacts_table', 4),
(112, '2022_11_02_134141_create_achievements_table', 4),
(113, '2022_11_08_024623_create_announcements_table', 4),
(114, '2022_11_09_033002_create_news_table', 4),
(115, '2022_12_01_024210_create_upcoming_events_table', 4),
(119, '2022_12_05_210240_create_comments_table', 5),
(122, '2022_12_08_191430_create_polls_table', 6),
(123, '2022_12_08_191557_create_options_table', 6),
(128, '2022_12_11_123609_create_responses_table', 7),
(135, '2023_01_08_161234_create_votes_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `shortDescription`, `fullDescription`, `header`, `thumbnailImage`, `fullImage`, `created_at`, `updated_at`) VALUES
(10, 'Happy Birthday Dr. Marites V. Cabatbat!', 'Happy Birthday Principal!!!', 'Your SEPNAS Family wishes you a dynamic impetus in watering and nurturing the seeds of the students who will later soar high as meaningful trees of excellence in the community. From the bottom of our hearts, we would like to exclaim that we love you sincerely!', 'Happy Birthday Dr. Marites V. Cabatbat!', '69604837_771558619925978_3974823831075291136_n.png', '69604837_771558619925978_3974823831075291136_n.png', '2023-01-13 07:02:54', '2023-01-13 07:02:54'),
(11, 'Concert With The Cause', 'Mamaya na, SEPNASians! Tara na at Maki-jamming!', 'Suportahan natin ang SSG SEPNAS sa Concert for a Cause, Live mamaya sa Deped Tayo San Carlos City - Pangasinan page.  Tara na at Maki-jamming! Kitakits! 💚💛', 'Concert With The Cause', '319800218_2643562575779112_6522971712061089021_n.jpg', '319800218_2643562575779112_6522971712061089021_n.jpg', '2023-01-13 07:04:07', '2023-01-13 07:04:07'),
(12, 'Flag Raising Sepnas', 'Sepnas ang aking pangalawang tahanan!!!', 'Flag Raising Ceremony Photo  #TatakSSG  #TatakSEPNAS', 'Flag Raising Sepnas', 'Flag Rising.jpg', 'Flag Rising.jpg', '2023-01-13 07:10:09', '2023-01-13 07:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `votes_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `poll_id`, `content`, `votes_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'PHP', 1, '2022-12-08 13:06:38', '2023-01-20 06:02:46'),
(2, 1, 'JavaScript', 2, '2022-12-08 13:06:38', '2023-01-20 04:56:28'),
(3, 1, 'C#', 0, '2022-12-08 13:07:36', '2023-01-10 02:25:11'),
(4, 1, 'Python', 0, '2022-12-08 13:07:36', '2023-01-10 14:23:41'),
(5, 1, 'Java', 2, '2022-12-08 13:07:55', '2023-01-18 02:43:08'),
(6, 3, 'asdsa', 0, '2022-12-08 13:07:55', '2022-12-08 13:07:55'),
(7, 3, 'asdas', 0, '2022-12-08 13:07:55', '2022-12-08 13:07:55'),
(8, 3, 'asdas', 0, '2022-12-08 13:07:55', '2022-12-08 13:07:55'),
(9, 3, 'asdas', 0, '2022-12-08 13:07:55', '2022-12-08 13:07:55'),
(10, 4, 'aaaaa', 0, '2022-12-08 13:58:31', '2022-12-08 13:58:31'),
(11, 4, 'aaaaa', 0, '2022-12-08 13:58:31', '2022-12-08 13:58:31'),
(12, 4, 'aaaa', 0, '2022-12-08 13:58:31', '2022-12-08 13:58:31'),
(13, 4, 'aaa', 0, '2022-12-08 13:58:31', '2022-12-08 13:58:31'),
(14, 5, 'asdsa', 0, '2022-12-08 13:58:48', '2022-12-08 13:58:48'),
(15, 5, 'aaa', 0, '2022-12-08 13:58:48', '2022-12-08 13:58:48'),
(16, 5, 'aaaa', 0, '2022-12-08 13:58:49', '2022-12-08 13:58:49'),
(17, 5, 'aaa', 0, '2022-12-08 13:58:49', '2022-12-08 13:58:49'),
(18, 6, 'blue', 0, '2022-12-09 02:46:03', '2022-12-09 02:46:03'),
(19, 6, 'red', 0, '2022-12-09 02:46:03', '2022-12-09 02:46:03'),
(20, 6, 'green', 0, '2022-12-09 02:46:03', '2022-12-09 02:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('emman@gmail.com', '$2y$10$Vvj1LHpS3Hod0jXXsfuJS.9ji2xXIpGJRYQZE5QF/M/dfnvaHgRzu', '2022-12-10 04:53:54'),
('ced@gmail.com', '$2y$10$bmDI06CjF2ThqNeVzc0Q9OqBBgO0SKVovpFB5YQEvVIP/QXPzAvaq', '2022-12-11 03:36:55'),
('emmanuellemon111200@gmail.com', '$2y$10$b7yXS8EvRKOXXihaR.xoDO9iotCsImxI74mLEbmp550t2vJkO7Q4a', '2022-12-19 04:15:12');

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
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `status` enum('PENDING','STARTED','FINISHED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `title`, `start_at`, `end_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is the best programming language now?', '2022-12-16 21:06:00', '2022-12-21 21:06:00', 'STARTED', '2022-12-08 13:06:37', '2022-12-08 13:06:37'),
(2, 'asdasdsaasdsadas', '2022-12-16 21:06:00', '2022-12-21 21:06:00', 'PENDING', '2022-12-08 13:07:36', '2022-12-08 13:07:36'),
(3, 'asdasdsaasdsadas', '2022-12-16 21:06:00', '2022-12-21 21:06:00', 'PENDING', '2022-12-08 13:07:55', '2022-12-08 13:07:55'),
(4, 'aaaaaa', '2022-12-02 21:48:00', '2022-12-09 21:48:00', 'PENDING', '2022-12-08 13:58:31', '2022-12-08 13:58:31'),
(5, 'sample', '2022-12-01 21:47:00', '2022-12-08 23:47:00', 'PENDING', '2022-12-08 13:58:48', '2022-12-08 13:58:48'),
(6, 'Sample Poll', '2022-12-09 00:45:00', '2022-12-09 00:45:00', 'PENDING', '2022-12-09 02:46:01', '2022-12-09 02:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6fcX0jyyR0vZ5DZHPwoT6hfRAJ00RuakJChHga26', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid1ZlTHZ2anNzZHZtejRjNjBZNzNqV0Vvek1UNkhYNEptdTIzS2dZbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1675948051),
('Jq6vdoJ2KxDXsgKIGukBz5H2WZDlEefMmmVtA913', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHlqRXh0cXNnbFZJREQ4SXNEQ2VWRmdNV1VJNTVQNmFSMlFLd2s0RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hY2FkZW1pYy9wcm9ncmFtT2ZmZXJpbmdzIjt9fQ==', 1676043200),
('yJsCbSVxAGIjPxr2agOGK4HLJE6elYsyPA5rF7Pl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1dNNVdBN3RaUUsxSVROd00xWW1xbFBCV2NqcHo4MkJKcWRqaDdPQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb2xsLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675948162);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_events`
--

CREATE TABLE `upcoming_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upcoming_events`
--

INSERT INTO `upcoming_events` (`id`, `title`, `shortDescription`, `fullDescription`, `header`, `date`, `thumbnailImage`, `fullImage`, `created_at`, `updated_at`) VALUES
(2, 'Soiree 2k23', 'Soiree 2k23', 'Sample', 'sasad', '2023-02-14', 'soiree.jpeg', 'oustoar.jpeg', '2022-12-03 01:59:51', '2022-12-03 01:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '1', '2022-12-02 08:21:32', '$2y$10$SuoxlFhCG36ZBvMFlFMg5OEi6r/TsGrhlq9ycNM9nFY7xlpKD8xom', 'eyJpdiI6ImlYQVJUZDdpZTdDV3JzdGZ6YUtvSkE9PSIsInZhbHVlIjoiMldub1RtRGN4VU9DS3FhdjdBK084bERwbm1ocllCYnVXR1NNaWJDeXNSdz0iLCJtYWMiOiJmZWI1ZTA5OTU4NTM5NGZiODZmZDBjYTQ5NmU4NTVmNzEzMjU0NmZhNmUwZDVmMTVjOWU4MmIzZGVkMmU4NDcwIiwidGFnIjoiIn0=', 'eyJpdiI6Ilo4T1FoaittazdDc3FpSVBsTmJrTkE9PSIsInZhbHVlIjoiQlRDbW5VelQwcU9FMm9ZaUdUQ0VZakVtbkxTZ2hNY0tISmt0SVBPMjBuZFIyNENMMENibXpvV3hDMGthN3NYWkpreFBvYjFjMFNNdlNqbkpHeDUyS3NIMmFsUVY5K3MxS0NqbVFkeVRxbnRNU1J3L2Z5RkJVbTlwckttb0VtYXBmaG5XcmIwaHZlNEhvMk9EOHFqYnNKMnd3K0x0amJVR2toSy81NFExQTMwSXZMNEhjS3JNdjdqdEtsK3EvMHRKWEppSUdqKytSTFJaZnkwcStBNVpqVlQ0TlBXU3V0Zm1tT0ZuaWsrV2tLM0ZkMlBmQTVZKy9mK1o0TG9WaGk1Q0trMjN6TUE1OTVFME1Oa1U1b1lVcFE9PSIsIm1hYyI6IjE2OTc5ZjM5MWU5N2UxN2Y5OTc5NjUwZjc4ZGQ4YTNmNDdmMjhjMzc1ZDQ2ZDdiMGZkNTlkMTNhODBlZjFlYjEiLCJ0YWciOiIifQ==', '2022-12-10 05:28:21', 'LIUIEgJi93oj7FrapgqptxorXRfHMpbQUzplYyOgXFdIdpPe2r19DI0yoNAp', NULL, 'profile-photos/XuoLfC7oDX7RVq7O0yOCnwb1Bxo44sKlJui0zt3O.png', '2022-12-02 08:21:32', '2022-12-11 03:51:26'),
(2, 'Emmanuel Joshua Lemon', 'emmanuellemon111200@gmail.com', '0', '2022-12-02 08:21:33', '$2y$10$18egt5XWOPSxr0FFmbg92umKdUVE/Z8YQJs5n./XCX9rqD0j8ZF6W', NULL, NULL, NULL, 'd6YlTxKeyy8OQve4KPHotUNkxDKK1rU0QS1rfcJ8qvv0iP7sFzd1T46ftkl8', NULL, 'profile-photos/atcaATeL05a8PxPMiHKt7rjss9X3k8egV6Xe4Eoq.jpg', '2022-12-02 08:21:33', '2022-12-10 05:39:35'),
(3, 'Emmanuel Joshua Lemon', 'ced@gmail.com', '0', '2022-12-02 08:21:33', '$2y$10$IKLQsCNFX0YXpESdg2ta7O2poeWn7venVC.Txbs4/vjNx4NIFf3yy', NULL, NULL, NULL, 'iMn38lqwuhP5MUyCCaxbDDDCYGjkwTxL2rT6eCqRAJnDE2kwgmKeG5QMsyY9', NULL, 'profile-photos/gjyqtg9Pzk0LUiOCaBCdx2cWSjuWZFSbHgR5s7MH.png', '2022-12-02 08:21:33', '2022-12-11 03:46:38'),
(4, 'Jessie Lacson', 'jes@gmail.com', '0', '2022-12-02 08:21:33', '$2y$10$7qbvySxjOeM9IRIxa0CTg.W..nU296JKm7P/63unHIzW9iYGqUJGa', 'eyJpdiI6Im5UdzdhcHVTRHUyS3BMTHkyWUlUbGc9PSIsInZhbHVlIjoiQnRFUFpabmY0WkhmcCsvVUtoRm5xUWZsUEVjU0hGWVI4eXVCWDE0SjVaND0iLCJtYWMiOiJjMDM5NWZjNmQ5Y2Y1MDEzNzcyNzM4ZjhmZTk0MjU2ZjExYjRhZTIyYzY3ZGZhYzFiN2Q4ZGM5OThiZDUwNDJlIiwidGFnIjoiIn0=', 'eyJpdiI6IkZScXV4ZjA4K3llbWxTYXY5alhSVVE9PSIsInZhbHVlIjoiSktYclMySTJUU01QSEg0a01oeHIwZFZnSnRpUVZuVy9ORzdLMWxxamh3SEVWSE94U2oxdFZHbjJGMTd0OURweWxCQ1RFRGpMYjFvUnRIQzBPNnJ3ZnZBci9jUWhFNU1BekFDS2E3dHdPMnd4L2FKL1NHbkJvNFRSczJhRjljVEordTZGQVc1d1VMMk1jWUdXdm1yWnBleFQ2NTh0YThpS1p2SEhUc2xnYjdXdktISHdBYjUwQTU2bkNLT0hvdmdXZ0NWRVBxd2xLZHNjNUdyOWl3QTA0VXlPeVhwQmtpU2tEZ2lLZFI1T0paNGxLVW0xbTFqL1NYaHlEZ2tFU1dhb1F6aXBGaVZnMGtsengyOWRoTG5iS0E9PSIsIm1hYyI6Ijk0Zjk2ZGNhNWFhMDY2OWJlNmJmZDMyNTJmZjFmMWMxMWEyYTI1NzNkYjZjOTlkNzFiN2I1OGI2ZTIwNjM1MWMiLCJ0YWciOiIifQ==', '2023-01-23 15:49:07', 'FeablfJVPZ3IhQGdj12rRkedSnOYVBwbPgOul9V5rRPttaqlYVU3rE0V1Eqr', NULL, 'profile-photos/CV4xRejyulkJES4MaazxozfOFVwnYZodlpJKd6qh.jpg', '2022-12-02 08:21:33', '2023-01-23 15:50:50'),
(5, 'Prof. Janice Torphy', 'bmosciski@example.net', '0', '2022-12-02 08:21:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'U9qVzw6o6i', NULL, NULL, '2022-12-02 08:21:33', '2022-12-02 08:21:33'),
(6, 'Gudrun Kub V', 'admin1@gmail.com', '1', '2022-12-02 08:21:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yD6HcglRKBqcbkJYZmwSbcPaETmpwFDV0kyUwot3AWXrqo6976zOT3w9qhb1', NULL, NULL, '2022-12-02 08:21:33', '2022-12-02 08:21:33'),
(7, 'sample', 'sample@gmail.com', '1', NULL, '$2y$10$O.BxxIJO.3VWg6zbatkE2OAW/NEpEKeF/l096UGZh3LmtgkY9XJZq', 'eyJpdiI6ImYySERZR2dIaDlvWm5vN1NPNVoxbEE9PSIsInZhbHVlIjoielkzYkJ3enhYMEhta0dLT3BTRk03NEVGcFZCNXluTWdHc2JzUHVHd1BQUT0iLCJtYWMiOiI1YzM3NzVmMjNjZjE5NTA4ZTQyMmMyNzI5OGZjNTdkMTAzNzdiNzM5ZjU0YmZkM2I1NGQxNjZiNTg0YjE2YWVhIiwidGFnIjoiIn0=', 'eyJpdiI6IkhRbkNpd0hXSlYwWkNaZENZS1ZKYkE9PSIsInZhbHVlIjoiMXhzNEI1OXlVc21WV1dGb0pDUlc2RHpIYUU4VG9CeFFUWUIwNlZHSStHNm5JbVJ5RTFKUHVpOHJBamVRQWhKYm5QbmszcGVqc0pYK1lMS2l4OVloNlRYbEZoSFJhMlByL3B3L3Q0aWpOeWg2SjEwUW83cGFpaDdhd2RxYlJFMFlLcm5zUFBBTHNCVzJweXZYQUl6S1d4N2MxN0FndWU2ZUpVcmp6LytQMDNBM2dTdE55em9xOHBsUHhoRE1WOXRiZ1E5bkpMSXNlV1JnNFRvUFM1OERyQmhoMlFJelV4ZHB4NHFPMnFxQnAwV1REaTlpTjc0SmM3bkhEbFVwS0tCNjRkWkNhb21KelU5S2xIdW5oNExUZlE9PSIsIm1hYyI6IjMxNDk2Yjg1MDE1ODZiNTNkZTZhYWZlM2M3MDcyNzUzZGRmNTY4Y2IyOGJiMmRkNWQ2ZTkzNDE1YTcyZjEwNGIiLCJ0YWciOiIifQ==', '2022-12-10 04:52:44', NULL, NULL, NULL, '2022-12-08 15:27:36', '2023-01-09 04:51:07'),
(8, 'emman', 'emmanuellemon123@yahoo.com', '0', NULL, '$2y$10$1h/cpUno1WUvCEiJs9LHf.v0SKswYCTnJXOl80HE0I/zOPgvCRM7K', 'eyJpdiI6IlhpZjhOdUF0R2Y1S0EvdVprU0paaGc9PSIsInZhbHVlIjoiNXUxT0RhakhLdGFhWWpMMnNhU2pEeExOa08xc3VVdm1HZFpTT2JMVm5Qcz0iLCJtYWMiOiI5MjVkMjU3NjA3ZmU3N2JmOTE1NWFiNDhlNzliYTJjZThiZjQyYzZjMjhiOGM2OTIwNjc5NmQ4NGY0OWNiOWM2IiwidGFnIjoiIn0=', 'eyJpdiI6ImM0YkpJRFNLeFlqYlhtTHRCM09MVlE9PSIsInZhbHVlIjoiQ0lZY0FVYmhFUEJYQUI4ejMvY0RSMDVXbStQamtIZ21DeG1GbG9kMjFSZTEwU1ozdlhDS2YxQmo5TVlnenBnVXpXWk5Hd01XWEdJK3J1UkFuYzZKOFJPbFlmZEJxSjlCaUc3cGFldXBVUUZqVU5ZZG1KYjZiUk9hMUVYd3dCYWlzU2YwYXp1Z016T3B1OXFiVlJsdTJXWFZoaGJqbVlqdjlLQU4zUmExSmZnbUJqcEozYVBoS0ZxSWZsZVNnZzJmRkpPcldUUXNzLzBPdUFJQkdoQ2h0WlF4aldiWFdoaWJmN3RjdURoRU1HMzI5STREY2FuR1dLa0o2OG90RCt3d2k2RFhwb2RwRm1FOWFQVkQ1L2VmVGc9PSIsIm1hYyI6Ijc1YjNhODUxMTcyMWJiYzJkNWVkZmEyOTM0M2VjZTA3MWZlMTM0ZGQ4NmEwYmUxMjA1NWFhMjExZmJiYmIyZGQiLCJ0YWciOiIifQ==', '2023-01-09 06:40:08', '6jdye0UYZrcy7dlnrvnv0dQEge2CkVrzUcCJUIi5oLVqKa2nqqRw3GRM70NZ', NULL, 'profile-photos/nXofH0ge1pn1WduV93LCZevPI9tTQSXHKp3ErZWR.jpg', '2023-01-09 06:38:24', '2023-01-09 06:46:13'),
(9, 'Cyrus Lethan Mendoza', 'cyrusmendoza64@gmail.com', '0', NULL, '$2y$10$nPh3X6R2YHpXNCN9cnhgwO/08fSxgC2OA17UneYGDsXKTVe0/Szgq', 'eyJpdiI6InZZQzVYSXBRWGhhL0FGYXArc1MxWFE9PSIsInZhbHVlIjoicmpZbC9yd0YyZjFtMnkvV1Z2aS95aS9vNEdRcEtaZEFlYzJiZjFxR3NSMD0iLCJtYWMiOiJhOWYwOGViNGE2NDc1MWJjNTJkZDk4ZTA0MjEyZDQ4ODY0OWIzNDIyNzVlMDg2NTYzYjg2MGZkMjc3YmQ0NjViIiwidGFnIjoiIn0=', 'eyJpdiI6IjErblM0WnpBRTliT2tmK0pDeU1qTGc9PSIsInZhbHVlIjoidDJYWGptRXFCQ3ZYc0VtWXkxS0ttbFZJdXFIdUI3dW5DL1BUeCtWdmVFbDBNSXB5TUNqMlhzcURXZEJlZUtKNDdmMUw0RFFVRzBTV1ZBbUZFSUR6ZjQrVEVZZGU4NmVMdDVPcU54c1FUWko4YjVCYlNvOTV5OWlLaWprd2lrcVhGRTliNEdONHJIa1gxRjlBZ09NWWpCT1NyeGtBOWFIZW5McG54UVhEdzgvOVpJZjRrNnVWUFZKc3VoZWx6SnNOaXJXRzErdVB1UmZoQW5TY0JTNDJnR1ZqZjdGdGk4aUJvajVTdUNaOGM0T1pDYzJxZ3pSNjBMdzBBRWdOKy9JSFU3eFJZZnVYdm1kT3p2V1d2bDQ4cGc9PSIsIm1hYyI6ImI1YzJiNDViZjNiZTQzNDIyMGNhYWQzMjAwMjUyYWFhMjNkOTYwNmY0Mzg1ODViNzM4NjljZmY4NDA0ZWE3NTEiLCJ0YWciOiIifQ==', '2023-01-18 02:17:43', NULL, NULL, 'profile-photos/cOQFS2vrnne0VHCcbgyQJFoO1b69vqCHhQWmR3FD.jpg', '2023-01-18 02:15:08', '2023-01-18 02:19:21'),
(10, 'Arwin Posadas Macaraeg', 'arwin@gmail.com', '0', NULL, '$2y$10$T/EF2oGXUUu/u9EV90nA8eb9Wm53OF70d.JMtCJJY6qYL38ZfMt6a', 'eyJpdiI6IkN1WUh3RkRXYWxJc2tSeVZQQVp3TXc9PSIsInZhbHVlIjoialN2aTkzOUNzZGNaNWIwckl4L3VURlVVa1lUTTZJeGt1S3p2V0ZDTUFxND0iLCJtYWMiOiJhZGZkNjdiM2Y0MjMxZjk3M2RiYTc0ZWIwZTE4YjgxZGE0MDFlZTkwNTkwZjIxZmU4ZjVkMTgyYzFjY2U2OTRmIiwidGFnIjoiIn0=', 'eyJpdiI6Imx4ZHpZc3VlRVBzaUdLM0hRQUxwVHc9PSIsInZhbHVlIjoiY1lOT3FZT0VlbkdEaEtncGV3a01TUS94ZVJPOE1lQ2RTY25QZDU1WWNSbU9EZ2Nla0dCLyt4RVZmRlJtMm83QnA1Y0NvekM1RnMxQms2UlltN0gva3BPc1h1SmlXQmduYW1Wcll1LzVoSUZtd3Nsc0ovZ0hwYmNxTFlLa1VhcmNWSEZ3cmpzNFdVUERZWjlZNCsvN2Jab0tvbUxqdVdQbnZQdGVDa2JESUZXZE5Rei9jU1FCMTF1YWZOemJuU2tYdTh6OU51ZTV1ME5na1AxcUswZGxqVExCVHNyWVlyd1EyOEpyVmhhSWVsMXNZVTB2WmpjTU8wVTVVU2FPdEU5NTdkYk96T1VORC9KVHRXTStRV1JEd3c9PSIsIm1hYyI6IjA3MTJjM2ZhNzQ5NTNlMzFiZDM5NzRmMTQzYjQ1YzZmN2Q2ZGRkNTAyZjFmNWFhYjVkMWE2OThlODMzY2Q1YWQiLCJ0YWciOiIifQ==', '2023-01-18 02:46:31', NULL, NULL, NULL, '2023-01-18 02:42:39', '2023-01-18 02:46:31'),
(11, 'jessie', 'jessie@gmail.com', '0', NULL, '$2y$10$0cHbVUnaJaAv5Ysw7NVO3uOljqpXdDiFoWVFfoiNFMBdKe4I2lUhG', 'eyJpdiI6IlRDNG9tM2JtS05zVHdOalZqWmRVK0E9PSIsInZhbHVlIjoiKy85aTYrQ3JLZDJkdFp0N3RaSVNua3lrcXlaMElaWHVhWFRkU1IyZXE0RT0iLCJtYWMiOiJmNGEwNDZmMWNjZDg3MjQxYTQyOTQ2ZTUwNTg2YTkyNWQzMjVmOWRmNWU4NTFiZjc4NjZhNDc5OTUxYTFjMDJlIiwidGFnIjoiIn0=', 'eyJpdiI6IkFWUHlYMzNwaGxNbjdCQnNHVnh4aXc9PSIsInZhbHVlIjoiMnZZOTVTWTBqYmRzUlNwL3p5QVkrdGFFbjROOEVVaSt4NnFob203QkRsL0Z2eUZ6a0FrN09kZVpNZjFoQk05ZEtoaTh2MHZWQU5YN1o0em5sWW9zdG1IdklIRkNncGltYzRXdmR0Y2xoYTZ2UWF6Y0ZKdWMyT2h0d3Iwbng5UzJOVVp2eUZmcU9EYnNGS3ordE5udjJDTzlZWnd3T3NGSWJET21YY1E1a1VkNldkQXg5azIrWURmZmtWR0lwdEgzVkpPRGNhNmVCOFBxRDE2NEhFNXRvcUpZK3JZZE1XM3NFUWI5OS9EVHhHZnZCRm56WDY2T3RicW5jczAvbnRobVVtNDlaeE5EWkRYRmREaVZOcmRVdWc9PSIsIm1hYyI6IjlkMGFiNjgzMTc4YTQwNjY1ODY4MTMxMTEyZmVjYjdlZmRjOTkzMTY0MGE1YzhmNWIyNWUxMGVkZDM0ZTY4ZGUiLCJ0YWciOiIifQ==', '2023-01-20 04:57:45', NULL, NULL, NULL, '2023-01-20 04:55:35', '2023-01-20 04:57:45'),
(12, 'cedrick', 'ced1@gmail.com', '0', NULL, '$2y$10$QZkn.DuP/yRi9KKnQnCETeNIA0Fh4VT04IEN.W8EeQLuMKuU../Z2', 'eyJpdiI6IllENmk5ZUZPYVRKeGNGVWtIVS9rcUE9PSIsInZhbHVlIjoiRUtPZEdSWTduOHRtYXRaQWhIbElLR2k5VnpTWVc3MTZ6MXJaTWdzb0lsND0iLCJtYWMiOiI2Y2IxMGQ0ODNjYjcyNDViMGFhMjQyNWIzMTU0ODhkYjYxMjBmOGViMTVkMWNmN2IwZmI3MTI5YjA1MGRmMGQxIiwidGFnIjoiIn0=', 'eyJpdiI6InRKSytYQVhkNFJUSjlhN01oSFEyRlE9PSIsInZhbHVlIjoienZwTGdjcndheHQzcFRDQ1lpd2ljZ1pTZmg2Vms3UmQxUEdrdDNjUWlmRDhFYVZDTXV1U05yejg0U1gzeXVUY3NHYnlXNTFlQ0g3YTJXYVdkNXhleVZSZnJ4VWxBSkZpL0ZrNzMydmRLK09TRm5pdWl3c1IweXRJdlFXMmFWRVNudlJqaWRsSU1OTFdUalFEbUpPaEt6Y3lFUHFiTEpkV1gxVFRORis0K3cwTk4zLzl0U0N2Z3pObVBINEZVam9RK1A2QTJ0TnFPUU15K2c5N0VraFRGZmVCUnh2M0FmL1psbDJDZUxpTG12c3U0RmZySGxkOEZMK1NWSU5FME1XM3hrNXNpQUZtdXNDNElvTVFHZm85NUE9PSIsIm1hYyI6Ijg0MTNiMGI0MGNkZTMwYjRiOWI1NGYxNzM5NjU3ODExZGIzOTQ4NzMwYzNhOTMzOTc3ODVmOGZhM2Y0MzNlZjgiLCJ0YWciOiIifQ==', '2023-01-20 06:04:20', NULL, NULL, NULL, '2023-01-20 06:02:25', '2023-01-20 06:04:20'),
(14, 'sample', 'sample1@gmail.com', '0', NULL, '$2y$10$di4NqnGW1ww4VfmE.YlJQ.FLlyPP5vs.VWBlReWvL/NboQwN03Mdu', 'eyJpdiI6Ikk0NUJJbzdQbGdsMHBLWC9lTGhaQmc9PSIsInZhbHVlIjoid3ZYSWdISU5MRTRwd3FSNlBkajljWEJRV2tpU2pZRzFWOFhCVHBjc1JQdz0iLCJtYWMiOiIzMGJiMzg5NmQ4OWIzNDI2Y2FkNjM1NDY0NTFmZDI1Yzk2YjJhMzc3ZjBlNmY4MTU0YjQxNzgzYWQwNzM0NzEzIiwidGFnIjoiIn0=', 'eyJpdiI6ImZqVGZQdEgyVkN5ekVjSlpwSVVZa0E9PSIsInZhbHVlIjoiVWJzQUhEOWkzM3UzWjFIVzY0d1UzSVJBS3JmTENOK0ZlK0grcnhGN3l4TFNkS1paZzZ2QkNPZXFSSnd4MkdXWjdJZmdXSmRWbkt1RkRXU09IUkFVMlkyR2RheHo0VnRhWmhkQ0NhaXVrR1l2bmlnWGZ0WEgvUHI2dithSUhhaFhIN3RoMEhYdU1wVkJNa1hRcEJ1S25hK1VKWENUaTRDOXY4UWxLMHFIZE42S1RHU3dCbi96Vk5wMEtSK1JBV3VJTm5mQUlOa0RJWUx6OEVUaHVhNVJFU01ta3h5NHJSRGZ4d0lFc1MyNUZvZjl5Y2Y1ckdFc0c4enRVQjR2TmtyZFUvZEF1U0JvUHNRMVhZc1lyUnNreGc9PSIsIm1hYyI6IjE5NTRlMDM1YTMxMDQyNGU2MGYzNzNjODQyNTA3NjVhNmUzMzI4M2M1MmZmN2Q1ZmFjYTMyN2FlN2RlMDA2MjIiLCJ0YWciOiIifQ==', '2023-02-06 07:34:19', NULL, NULL, NULL, '2023-02-06 07:33:13', '2023-02-06 07:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `voted` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `poll_id`, `option_id`, `user_id`, `voted`, `created_at`, `updated_at`) VALUES
(6, 1, 1, 7, 'sample', '2023-01-13 01:15:46', '2023-01-13 01:15:46'),
(7, 1, 5, 9, 'sample', '2023-01-18 02:18:29', '2023-01-18 02:18:29'),
(8, 1, 5, 10, 'sample', '2023-01-18 02:43:08', '2023-01-18 02:43:08'),
(9, 1, 2, 4, 'sample', '2023-01-18 05:07:54', '2023-01-18 05:07:54'),
(10, 1, 2, 11, 'sample', '2023-01-20 04:56:28', '2023-01-20 04:56:28'),
(11, 1, 1, 12, 'sample', '2023-01-20 06:02:46', '2023-01-20 06:02:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_poll_id_foreign` (`poll_id`);

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
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_poll_id_foreign` (`poll_id`),
  ADD KEY `votes_option_id_foreign` (`option_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`),
  ADD CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`),
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `db_jobportal`
--
CREATE DATABASE IF NOT EXISTS `db_jobportal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_jobportal`;

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` text NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `NATIONALID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `NATIONALID`) VALUES
(2022, '', '', '', 'ASDSA', 'Female', 'Single', '0000-00-00', 'ASDSA', 0, 'AASD', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'sample@gmail.com', 'ASDSA', '', '', ''),
(2022023, 'Butz', 'Sayson', 'Magalong', 'Manila', 'Female', 'Single', '1962-01-17', 'Manila', 60, 'bsayson', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'djbutz6@gmail.com', '09452445257', 'College Graduate', '', ''),
(2022024, 'Samuel Cj', 'Sanchez', 'Dela Cruz', 'Magtaking SCCP', 'Male', 'none', '2001-03-21', 'SCCP', 21, 'samcj', '8cb2237d0679ca88db6464eac60da96345513964', 'samcj@gmail.com', '09452445457', 'College', 'photos/287898769_532487298604244_1142189291341027231_n.jpg', ''),
(2022026, '', '', '', 'asdsa', 'Female', 'Single', '0000-00-00', 'asd', 0, 'asdsa', 'f24e84445c27fdd906c828ce26a69222329235c4', '', 'asdsa', '', '', ''),
(2022030, '', '', '', 'asdas', 'Female', 'none', '0000-00-00', 'asdsa', 0, '', '8e545e1c31f91f777c894b3bd2c2e7d7044cc9dd', 'asdsa@gmail.com', 'asd', 'asdas', '', ''),
(2022031, '', '', '', 'asda', 'Female', 'none', '0000-00-00', 'asdas', 0, 'asda', '8e545e1c31f91f777c894b3bd2c2e7d7044cc9dd', 'asdsa@gmail.com', 'asdas', 'asd', '', ''),
(2022032, '', '', '', 'asd', 'Female', 'none', '0000-00-00', 'asd', 0, 'asdas', 'f10e2821bbbea527ea02200352313bc059445190', 'asd@gmail.com', 'asda', '', '', ''),
(2022034, '', '', 'as', 'asda', 'Female', 'Single', '0000-00-00', 'asdsa', 0, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', 'asda', '', '', ''),
(2022035, '', '', '', 'asdsa', 'Female', 'Single', '0000-00-00', 'asdas', 0, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'sample@gmail.com', 'asda', '', '', ''),
(2022039, '', '', 'ASD', 'ASD', 'Female', 'none', '0000-00-00', 'ASDA', 0, 'ASDAS', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'sample@gmail.com', 'ASD', '', '', ''),
(2022041, '', '', '', 'SADAS', 'Female', 'none', '0000-00-00', 'ASD', 0, 'ASDSA', '5271593ca406362d7a2701e331408ab77d5b5b88', 'SDA@GMAIL.COM', 'ASDAS', 'ASDSA', '', ''),
(2022044, '', '', '', 'sad', 'Female', 'none', '0000-00-00', 'asdsa', 0, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'asdas@gmail.com', 'dsadas', '', '', ''),
(2022046, 'sample', 'sample', 'asda', 'asdas', 'Female', 'Single', '0000-00-00', 'asdsa', 0, 'asdas', '930a0029225aa4c28b8ef095b679285eaae27078', 'sample@gmail.com', 'asdsa', 'asdas', '', ''),
(2023054, 'asda', 'asda', 'asda', 'asdas', 'Female', 'Single', '0000-00-00', 'asda', 17, 'asd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'samplea@gmail.com', '123', 'dsada', '', ''),
(2023055, 'asda', 'sda', 'asda', 'sadsa', 'Female', 'none', '1995-02-15', '123', 27, 'asdsa', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'zzcx@gmail.com', 'as123', 'asda', '', ''),
(2023057, 'asdas', 'asdsa', 'asd', 'sadas', 'Female', 'Widow', '1992-10-14', 'asdsa', 30, 'asda', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'cxzcxzzcx@gmail.com', '1231', 'asdsa', '', ''),
(2023058, 'asdsa', 'asda', 'sada', 'dsa', 'Female', 'Single', '1992-11-16', 'asda', 30, 'adsa', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'cxzcxzzcxasdsa@gmail.com', '123', 'asda', '', ''),
(2023060, 'asdad', 'asdasdsa', 'dsa', 'asdas', 'Female', 'Married', '1994-02-15', 'asdas', 28, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'asdasdsa@gmail.com', 'sdad', 'asdasdas', '', ''),
(2023061, 'asdas', 'dsad', 'dsad', 'asda', 'Female', 'Married', '1996-02-18', 'asdsa', 26, 'asdasdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaaaa@gmail.com', '1231', 'asdasddsa', '', ''),
(2023062, 'adasdas', 'asdas', 'dsadasds', 'adas', 'Female', 'Single', '1997-10-16', 'asdsa', 25, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaaaaaaaaaaaa@gmail.com', '12312', 'asdas', '', ''),
(2023063, 'adasdas', 'asdas', 'dsadasds', 'adas', 'Female', 'Single', '1997-10-16', 'asdsa', 25, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaaaaaaaaaaaa@gmail.com', '12312', 'asdas', '', ''),
(2023064, 'adasdas', 'asdas', 'dsadasds', 'adas', 'Female', 'Single', '1997-10-16', 'asdsa', 25, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaaaaaaaaaaaa@gmail.com', '12312', 'asdas', '', ''),
(2023066, 'adas', 'adas', 'asdsa', 'dasda', 'Female', 'Married', '1994-01-14', 'asd', 29, 'asda', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'samplasde@gmail.com', '123', 'ada', '', ''),
(2023067, 'asdas', 'asda', 'asdsa', 'aasdsa', 'Female', 'Single', '1996-01-15', 'asdas', 27, 'sada', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaa@gmail.com', '123', 'adasd', '', ''),
(2023068, 'asdas', 'asda', 'asdsa', 'aasdsa', 'Female', 'Single', '1996-01-15', 'asdas', 27, 'sada', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaa@gmail.com', '123', 'adasd', '', ''),
(2023069, 'asda', 'dsad', 'asdsa', 'asda', 'Female', 'Single', '1995-01-15', 'adas', 28, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'asdasaa@gmail.com', '123', 'asdada', '', ''),
(2023070, 'asda', 'adas', 'asda', 'asdsa', 'Female', 'Single', '1998-01-15', 'asdas', 25, 'asd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaaaaaaaaaaaaaaaaaaa@gmail.com', '1231', 'asdsa', '', ''),
(2023071, 'asdsa', 'asdsad', 'sadsas', 'asdsadsa', 'Female', 'Single', '1995-01-15', 'asdsa', 28, 'adasdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleggjj@gmail.com', '1231', 'asdsada', '', ''),
(2023073, 'aasd', 'asdassda', 'dadasad', 'daadads', 'Female', 'Single', '1995-01-15', 'asdsa', 28, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sampleaaaaaaaaaaaaaaaaaaaaaaaaaaa@gmail.com', 'asd', 'asdsa', '', ''),
(2023074, 'asdas', 'asdsa', 'asdsa', 'asda', 'Female', 'Single', '1994-01-14', 'dasdas', 29, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'samplezzzz@gmail.com', '123', 'asdas', '', ''),
(2023075, 'adsasd', 'sadasdsa', 'dasdsa', 'dsadsa', 'Female', 'Single', '1994-01-15', 'asdsa', 29, 'asda', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'samplezzzzzzzzzzzzzzzzzzzz@gmail.com', '1231', 'asdas', '', ''),
(2023076, 'ASDASD', 'ASDSA', 'ASDA', 'SDAD', 'Female', 'Single', '1996-02-18', 'ASDA', 26, 'ASDAS', 'b0c7efa6f3eb8ed53ce2daf71679eab958609980', 'sample1@gmail.com', 'DSADSA', 'ADAS', '', ''),
(2023082, 'adsa', 'adsa', 'adsa', 'dasdsa', 'Female', 'Married', '1995-01-14', 'adsa', 28, 'sample', '8151325dcdbae9e0ff95f9f9658432dbedfdb209', 'sample02@gmail.com', '1231', 'sada', '', ''),
(2023083, 'asdsa', 'asdsa', 'asda', 'asda', 'Female', 'Single', '1995-01-15', 'asdsa', 28, 'password', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'password@gmail.com', 'asda', 'password', '', ''),
(2023085, 'adsa', 'asdsa', 'asdsa', 'asdas', 'Female', 'Single', '1992-01-13', 'asdas', 31, '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'samplezz@gmail.com', '123', '123', '', ''),
(2023088, 'asdsa', 'sadsa', 'adas', 'asda', 'Female', 'Single', '1995-01-31', 'zxcz', 27, 'asdas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'emmazzzzzzzzzn@gmail.com', '1231', 'asda', '', ''),
(2023089, 'dasda', 'asda', 'ddasd', 'asdsa', 'Female', 'Single', '1994-01-30', 'asda', 28, '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123@gmail.com', '121', 'sadsa', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `FILEID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_LOCATION` varchar(255) DEFAULT NULL,
  `USERATTACHMENTID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(1, 4, 'Resume', 'photos/', 2022037),
(2022, 4, 'Resume', 'photos/', 2022),
(2022030, 4, 'Resume', 'photos/', 2022030),
(2022031, 4, 'Resume', 'photos/', 2022031),
(2022032, 4, 'Resume', 'photos/', 2022032),
(2022033, 4, 'Resume', 'photos/', 2022033),
(2022034, 4, 'Resume', 'photos/', 2022034),
(2022035, 4, 'Resume', 'photos/', 2022035),
(2022040, 4, 'Resume', 'photos/', 2022040),
(2022041, 4, 'Resume', 'photos/', 2022041),
(2022042, 4, 'Resume', 'photos/', 2022042),
(2022043, 4, 'Resume', 'photos/', 2022043),
(2022044, 4, 'Resume', 'photos/', 2022044),
(2022045, 4, 'Resume', 'photos/', 2022045),
(2022048, 4, 'Resume', 'photos/', 2022048),
(2022049, 4, 'Resume', 'photos/', 2022049),
(2022050, 4, 'Resume', 'photos/', 2022050),
(2022051, 4, 'Resume', 'photos/', 2022051),
(2022052, 4, 'Resume', 'photos/', 2022052),
(2022053, 4, 'Resume', 'photos/', 2022053),
(2023053, 4, 'Resume', 'photos/', 2023053),
(2023054, 4, 'Resume', 'photos/', 2023054),
(2023055, 4, 'Resume', 'photos/', 2023055),
(2023057, 4, 'Resume', 'photos/07012023120236attendance-3B-1.doc', 2023057),
(2023058, 4, 'Resume', 'photos/07012023120328attendance-3B-1.doc', 2023058),
(2023059, 4, 'Resume', 'photos/09012023060803attendance-3B-1.doc', 2023059),
(2023060, 4, 'Resume', 'photos/16012023020032LEMON_EMMANUELJOSHUA_A..doc', 2023060),
(2023061, 4, 'Resume', 'photos/16012023020138LEMON_EMMANUELJOSHUA_A..doc', 2023061),
(2023062, 4, 'Resume', 'photos/16012023020313LEMON_EMMANUELJOSHUA_A..doc', 2023062),
(2023063, 4, 'Resume', 'photos/16012023020530LEMON_EMMANUELJOSHUA_A..doc', 2023063),
(2023064, 4, 'Resume', 'photos/16012023020612LEMON_EMMANUELJOSHUA_A..doc', 2023064),
(2023065, 4, 'Resume', 'photos/16012023020711LEMON_EMMANUELJOSHUA_A..doc', 2023065),
(2023066, 4, 'Resume', 'photos/16012023021105LEMON_EMMANUELJOSHUA_A..doc', 2023066),
(2023067, 4, 'Resume', 'photos/16012023021412LEMON_EMMANUELJOSHUA_A..doc', 2023067),
(2023068, 4, 'Resume', 'photos/16012023021436LEMON_EMMANUELJOSHUA_A..doc', 2023068),
(2023069, 4, 'Resume', 'photos/16012023021518LEMON_EMMANUELJOSHUA_A..doc', 2023069),
(2023070, 4, 'Resume', 'photos/16012023025006LEMON_EMMANUELJOSHUA_A..doc', 2023070),
(2023071, 4, 'Resume', 'photos/16012023025650LEMON_EMMANUELJOSHUA_A..doc', 2023071),
(2023072, 4, 'Resume', 'photos/16012023025957LEMON_EMMANUELJOSHUA_A..doc', 2023072),
(2023073, 4, 'Resume', 'photos/16012023030540LEMON_EMMANUELJOSHUA_A..doc', 2023073),
(2023074, 4, 'Resume', 'photos/16012023030845LEMON_EMMANUELJOSHUA_A..doc', 2023074),
(2023075, 4, 'Resume', 'photos/16012023032059LEMON_EMMANUELJOSHUA_A..doc', 2023075),
(2023076, 4, 'Resume', 'photos/16012023035821LEMON_EMMANUELJOSHUA_A..doc', 2023076),
(2023077, 6, 'Resume', 'photos/20012023103422attendance-3B-1.doc', 2023077),
(2023078, 6, 'Resume', 'photos/20012023103516attendance-3B-1.doc', 2023078),
(2023079, 4, 'Resume', 'photos/20012023103929attendance-3B-1.doc', 2023079),
(2023080, 4, 'Resume', 'photos/20012023104151attendance-3B-1.doc', 2023080),
(2023081, 4, 'Resume', 'photos/20012023110152attendance-3B-1.doc', 2023081),
(2023082, 4, 'Resume', 'photos/20012023111556attendance-3B-1.doc', 2023082),
(2023083, 4, 'Resume', 'photos/20012023114455attendance-3B-1.doc', 2023083),
(2023084, 4, 'Resume', 'photos/25012023034540attendance-3B-1.doc', 2023084),
(2023085, 4, 'Resume', 'photos/25012023034608attendance-3B-1.doc', 2023085),
(2023086, 4, 'Resume', 'photos/26012023071612attendance-3B-1.doc', 2023086),
(2023087, 4, 'Resume', 'photos/26012023071652attendance-3B-1.doc', 2023087),
(2023088, 4, 'Resume', 'photos/26012023071828attendance-3B-1.doc', 2023088),
(2023089, 4, 'Resume', 'photos/26012023072058attendance-3B-1.doc', 2023089),
(202200008, 4, 'Resume', 'photos/', 2022029),
(2022000013, 4, 'Resume', 'photos/', 2022036),
(2022000015, 4, 'Resume', 'photos/07122022054950mariel.docx', 2022046),
(2022000016, 4, 'Resume', 'photos/07122022055047mariel.docx', 2022047),
(2023000016, 4, 'Resume', 'photos/05012023061438attendance-3B-1.doc', 2023054),
(2023000017, 4, 'Resume', 'photos/', 2023055),
(2023000018, 4, 'Resume', 'photos/07012023115821attendance-3B-1.doc', 2023055),
(2023000019, 4, 'Resume', 'photos/07012023115910attendance-3B-1.doc', 2023056);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 9, 1, 'userid'),
(2, '000', 81, 1, 'employeeid'),
(3, '0', 90, 1, 'APPLICANT'),
(4, '0000', 40, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(10, 'Technology'),
(11, 'Managerial'),
(12, 'Engineer'),
(13, 'IT'),
(14, 'Civil Engineer'),
(15, 'HR'),
(23, 'Sales'),
(24, 'Banking'),
(25, 'Finance'),
(26, 'BPO'),
(27, 'Degital Marketing'),
(28, 'Shipping');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL,
  `COMPANYSTATUS` varchar(90) NOT NULL,
  `COMPANYMISSION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`, `COMPANYSTATUS`, `COMPANYMISSION`) VALUES
(3, 'Copreros', 'Mabinay\'s', '035656', '', ''),
(4, 'Quest', 'Kabankalan Citya', '23165', '', ''),
(6, 'Palacios Company', 'Kabankalan City', '0625656899', '', ''),
(7, 'IT Company', 'Kabankalan Citya', '', '', ''),
(8, 'Samsung', 'Manila Q.C', '639 456 567', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`INCID`, `EMPLOYEEID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `EMP_EMAILADDRESS`, `CELLNO`, `POSITION`, `WORKSTATS`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`, `COMPANYID`) VALUES
(78, '123', 'asda', 'dsad', 'dad', 'dasd', '1999-01-04', 'dsaa', 24, 'Female', 'Single', '123', 'dada@gmail.com', '', 'ad', '', '', '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2023-01-04', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(90) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` text NOT NULL,
  `JOBDESCRIPTION` text NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `SECTOR_VACANCY` text NOT NULL,
  `JOBSTATUS` varchar(90) NOT NULL,
  `DATEPOSTED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`) VALUES
(2, 8, 'Technology', 'Accounting', 100, 15000, 'may 20', 'Two years Experience', 'We are looking for bachelor of science in Acountancy', 'Female', 'yes', '', '2018-05-20 02:33:00'),
(4, 3, 'Managerial', 'asdsa', 100, 1231, 'asda', 'adad', 'asda', 'Male', 'Finance', '', '2023-01-23 05:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` int(11) NOT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`) VALUES
(8, 3, 2, 2022023, 'Butz Sayson', '2022-07-02', 'Pending', 202200004, 1, 1, '2022-07-02 08:00:00'),
(9, 3, 2, 2022024, 'Samuel Cj Sanchez', '2022-07-02', 'Ready for Interview', 202200005, 0, 0, '2022-07-02 19:36:24'),
(16, 3, 2, 2022, ' ', '2022-12-07', 'Pending', 2022, 1, 1, '2022-12-07 17:14:00'),
(17, 8, 4, 2022039, ' ', '2022-12-07', 'Pending', 2022000014, 1, 1, '2022-12-07 17:17:00'),
(18, 8, 4, 2022041, ' ', '2022-12-07', 'Pending', 2022000014, 1, 1, '2022-12-07 17:24:00'),
(19, 8, 4, 2022044, ' ', '2022-12-07', 'Pending', 2022000015, 1, 1, '2022-12-07 17:31:00'),
(20, 8, 4, 2022046, 'sample sample', '2022-12-07', 'Pending', 2022000015, 1, 1, '2022-12-07 17:49:00'),
(21, 8, 4, 2023054, 'asda asda', '2023-01-05', 'Pending', 2023000016, 1, 1, '2023-01-05 06:14:00'),
(22, 8, 4, 2023055, 'asda sda', '2023-01-07', 'Pending', 2023000018, 1, 1, '2023-01-07 11:58:00'),
(23, 8, 4, 2023057, 'asdas asdsa', '2023-01-07', 'Pending', 2023057, 1, 1, '2023-01-07 12:02:00'),
(24, 8, 4, 2023058, 'asdsa asda', '2023-01-07', 'Pending', 2023058, 1, 1, '2023-01-07 12:03:00'),
(25, 8, 4, 2023060, 'asdad asdasdsa', '2023-01-16', 'Pending', 2023060, 1, 1, '2023-01-16 14:00:00'),
(26, 8, 4, 2023061, 'asdas dsad', '2023-01-16', 'Pending', 2023061, 1, 1, '2023-01-16 14:01:00'),
(27, 8, 4, 2023062, 'adasdas asdas', '2023-01-16', 'Pending', 2023062, 1, 1, '2023-01-16 14:03:00'),
(28, 8, 4, 2023063, 'adasdas asdas', '2023-01-16', 'Pending', 2023063, 1, 1, '2023-01-16 14:05:00'),
(29, 8, 4, 2023064, 'adasdas asdas', '2023-01-16', 'Pending', 2023064, 1, 1, '2023-01-16 14:06:00'),
(30, 8, 4, 2023066, 'adas adas', '2023-01-16', 'Pending', 2023066, 1, 1, '2023-01-16 14:11:00'),
(31, 8, 4, 2023067, 'asdas asda', '2023-01-16', 'Pending', 2023067, 1, 1, '2023-01-16 14:14:00'),
(32, 8, 4, 2023068, 'asdas asda', '2023-01-16', 'Pending', 2023068, 1, 1, '2023-01-16 14:14:00'),
(33, 8, 4, 2023069, 'asda dsad', '2023-01-16', 'Pending', 2023069, 1, 1, '2023-01-16 14:15:00'),
(34, 8, 4, 2023071, 'asda adas', '2023-01-16', 'Pending', 2023071, 1, 1, '2023-01-16 14:56:00'),
(35, 8, 4, 2023072, 'asdsa asdsad', '2023-01-16', 'Pending', 2023072, 1, 1, '2023-01-16 14:59:00'),
(36, 8, 4, 2023073, 'aasd asdassda', '2023-01-16', 'Pending', 2023073, 1, 1, '2023-01-16 15:05:00'),
(37, 8, 4, 2023074, 'asdas asdsa', '2023-01-16', 'Pending', 2023074, 1, 1, '2023-01-16 15:08:00'),
(38, 8, 4, 2023075, 'adsasd sadasdsa', '2023-01-16', 'Pending', 2023075, 1, 1, '2023-01-16 15:21:00'),
(39, 8, 4, 2023076, 'ASDASD ASDSA', '2023-01-16', 'Pending', 2023076, 1, 1, '2023-01-16 15:58:00'),
(40, 8, 4, 2023082, 'adsa adsa', '2023-01-20', 'Pending', 2023082, 1, 1, '2023-01-20 11:15:00'),
(41, 8, 4, 2023083, 'asdsa asdsa', '2023-01-20', 'Pending', 2023083, 1, 1, '2023-01-20 11:44:00'),
(42, 3, 4, 2023085, 'adsa asdsa', '2023-01-25', 'Pending', 2023085, 1, 1, '2023-01-25 15:46:00'),
(43, 3, 4, 2023088, 'asdsa sadsa', '2023-01-26', 'Pending', 2023088, 1, 1, '2023-01-26 07:18:00'),
(44, 3, 4, 2023089, 'dasda asda', '2023-01-26', 'Pending', 2023089, 1, 1, '2023-01-26 07:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00018', 'Peso Admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/077db70b-ab84-46c4-bbaa-a5dd6b7332a4_200x200.png'),
('029838', 'PESO Officer', 'peso', 'b0c7efa6f3eb8ed53ce2daf71679eab958609980', 'Staff', ''),
('122353465686786', 'Butz Sayson', 'Sayson', '30361dbd9c5afdf37237f35a5093ef83c56cbc59', 'Employee', ''),
('123', 'asda dsad', 'dsad', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Employee', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Indexes for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`FILEID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Indexes for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023090;

--
-- AUTO_INCREMENT for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `FILEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023000020;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Database: `elearningRevamp`
--
CREATE DATABASE IF NOT EXISTS `elearningRevamp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `elearningRevamp`;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `thumbnailImage`, `link`, `created_at`, `updated_at`) VALUES
(2, 'sample', 'adssa', 'E:\\xampp\\tmp\\php1EAA.tmp', 'https://www.youtube.com/', '2023-02-01 22:07:39', '2023-02-01 22:07:39');

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
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `faculty_id`, `title`, `path`, `thumbnailImage`, `file`, `link`, `shortDescription`, `description`, `created_at`, `updated_at`) VALUES
(2, 2, 'gg', 'videos/Installing Linux in VM.mp4', 'images/teacher/thumbnailImage/Capture.JPG', 'files/Cyberion (4).docx', 'https://www.youtube.com/', 'sada', 'hfcvhvcnv', '2023-01-31 09:53:56', '2023-01-31 09:53:56'),
(6, 6, 'asdsa', 'videos/Installing Linux in VM.mp4', 'images/teacher/thumbnailImage/Capture.JPG', 'files/PIMSAT-Employee-Information-System-Revise (2).docx', 'https://www.youtube.com/', 'asdad', 'sada', '2023-02-06 01:38:33', '2023-02-06 01:38:33'),
(11, 6, 'asdasdsadsadsa', 'videos/Installing Linux in VM.mp4', 'images/teacher/thumbnailImage/organizationalChart.jpg', 'files/PIMSAT-Employee-Information-System-Revise (2) (1).docx', 'asdsadsa', 'dsad', 'sadsa', '2023-02-07 06:30:39', '2023-02-07 06:30:39'),
(12, 6, 'kkkkkkkk', 'videos/Installing Linux in VM.mp4', 'images/teacher/thumbnailImage/organizationalChart.jpg', 'files/PIMSAT-Employee-Information-System-Revise (2) (1).docx', 'asdsada', 'dsad', 'asdsadsa', '2023-02-07 06:42:29', '2023-02-07 06:42:29'),
(13, 5, 'asdsadsa', 'videos/Installing Linux in VM.mp4', 'images/teacher/thumbnailImage/organizationalChart.jpg', 'files/PIMSAT-Employee-Information-System-Revise (2) (4).docx', 'asdsa', 'dsad', 'asda', '2023-02-10 07:16:39', '2023-02-10 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnailImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `faculty_id`, `title`, `description`, `thumbnailImage`, `file`, `link`, `created_at`, `updated_at`) VALUES
(4, 5, 'asddsa', 'asdsadaa', 'images/teacher/thumbnailImage/Capture.JPG', 'files/Cyberion (9).docx', 'https://www.youtube.com/', '2023-02-10 07:15:56', '2023-02-10 07:15:56');

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
(5, '2023_01_24_114716_create_teachers_table', 1),
(6, '2023_01_24_114718_create_students_table', 1),
(7, '2023_01_28_160713_create_lectures_table', 1),
(8, '2023_01_29_134547_create_lessons_table', 1),
(9, '2023_01_31_135852_create_questions_table', 2),
(10, '2023_02_02_044951_create_announcements_table', 3);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `lecture_id` bigint(20) UNSIGNED NOT NULL,
  `question1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `student_id`, `lecture_id`, `question1`, `question2`, `question3`, `question4`, `question5`, `created_at`, `updated_at`) VALUES
(4, 4, 2, '1', '2', '1', '1', '1', '2023-01-31 09:55:45', '2023-01-31 09:55:45'),
(8, 16, 6, '1', '2', '2', '1', '1', '2023-02-07 06:32:02', '2023-02-07 06:32:02'),
(9, 15, 13, '1', '2', '1', '1', '1', '2023-02-10 07:18:58', '2023-02-10 07:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `faculty_id`, `student_id`, `firstname`, `middlename`, `lastname`, `age`, `email`, `contact`, `gender`, `address`, `password`, `created_at`, `updated_at`) VALUES
(4, 2, '222', 'Mc', 'ddd', 'Camacho', '123', 'sample@gmail.com', '123', 'male', '314 Rizal Avenue San Carlos City Pangasinan', 'password', '2023-01-31 09:54:36', '2023-01-31 09:54:36'),
(9, 2, '131', 'asdas', 'dad', 'dadas', '1231', 'adsad@gmail.com', '2312', 'male', 'asdsad', 'password', '2023-02-05 03:15:50', '2023-02-05 03:15:50'),
(11, 2, '131', 'asdas', 'dad', 'dadas', '1231', 'adsadaaaa@gmail.com', '2312', 'male', 'asdsad', 'password', '2023-02-05 03:16:16', '2023-02-05 03:16:16'),
(13, 2, '131333', 'asdas', 'dad', 'dadas', '1231', 'adsadaaaaaaaa@gmail.com', '2312', 'male', 'asdsad', 'password', '2023-02-05 03:19:46', '2023-02-05 03:19:46'),
(15, 5, 'adasd', 'dadas', 'dada', 'dada', '1231', '1231@gmail.com', '1231', 'male', '1321', '$2y$10$s1Dha4VXxice74LkI/7Xb.kl1V8rdBuqXLrEyxKKHLfjOWMMhZila', '2023-02-05 03:28:33', '2023-02-05 03:28:33'),
(16, 6, '0001', 'Mariel', 'sdad', 'dasda', '121', 'asdsadasd@gmail.com', '123131', 'female', 'dsadsaddas', '$2y$10$IbdM8rDyUAOdgQ2vQg2KB.mWi.xMlU3PxLIoE2w5zsL/UW6/9P.Ba', '2023-02-06 01:37:53', '2023-02-06 01:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `faculty_id`, `firstname`, `middlename`, `lastname`, `email`, `contact`, `gender`, `address`, `password`, `grade`, `subject`, `created_at`, `updated_at`) VALUES
(2, '013', 'Ella', 'asd', 'Cardinoza', 'sample@gmail.com', '1230', 'male', '314 Rizal Avenue San Carlos City Pangasinan', 'password', '2', 'Mother Tongue', '2023-01-31 09:52:25', '2023-01-31 09:52:25'),
(5, '231', 'dadsa', 'dasd', 'dad', 'dasdsdaa@gmail.com', '231', 'male', 'adas', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', 'Mother Tongue', '2023-02-02 00:06:55', '2023-02-02 00:06:55'),
(6, 'asdadsa', 'adsa', 'asda', 'asda', 'sad@gmail.com', '123', 'female', 'Roxas Avenue San Carlos City', '$2y$10$5BA7Y5l4P8TQm4ZE4s7pyegGKulU1TVfT.FDyeo16mn5yS9oshkQ2', '1', 'Mother Tongue', '2023-02-05 03:42:27', '2023-02-05 03:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miller Brakus I', 'Pearline Weber', 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Humberto Bauch', 'zEwkFus6Cw', '2023-01-31 04:10:52', '2023-01-31 04:10:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectures_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_faculty_id_foreign` (`faculty_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_student_id_foreign` (`student_id`),
  ADD KEY `questions_lecture_id_foreign` (`lecture_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD KEY `students_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
--
-- Database: `employeeigniter`
--
CREATE DATABASE IF NOT EXISTS `employeeigniter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employeeigniter`;

-- --------------------------------------------------------

--
-- Table structure for table `country_tbl`
--

CREATE TABLE `country_tbl` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_tbl`
--

INSERT INTO `country_tbl` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `department_tbl`
--

CREATE TABLE `department_tbl` (
  `id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_tbl`
--

INSERT INTO `department_tbl` (`id`, `department_name`, `added_on`) VALUES
(1, 'Human Resources', '2021-05-27 15:34:10'),
(2, 'Back-End Development', '2021-05-27 15:22:55'),
(3, 'Designing', '2019-10-04 05:25:15'),
(4, 'Front-End Development', '2021-05-27 13:53:48'),
(5, 'Marketing', '2021-05-27 16:48:45'),
(6, 'Finance', '2021-05-27 17:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `leave_tbl`
--

CREATE TABLE `leave_tbl` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_reason` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `updated_on` date NOT NULL,
  `applied_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_tbl`
--

INSERT INTO `leave_tbl` (`id`, `staff_id`, `leave_reason`, `description`, `status`, `leave_from`, `leave_to`, `updated_on`, `applied_on`) VALUES
(1, 2, 'Sick', 'Not feeling well enough to join', 1, '2021-01-15', '2021-01-17', '0000-00-00', '2021-01-15'),
(2, 5, 'Casual Leave', 'been working for full hours since last month, got to free my mind for few days', 1, '2021-05-28', '2021-05-29', '0000-00-00', '2021-05-27'),
(3, 6, 'Day Off', 'Requesting for a day off as I need to join my pal\'s wedding!', 1, '2021-05-28', '2021-05-29', '0000-00-00', '2021-05-27'),
(4, 3, 'Casual Leave', 'for vacation, rest, and family events', 2, '2021-05-30', '2021-06-06', '0000-00-00', '2021-05-27'),
(5, 9, 'Quarantine', 'i need to quarantine myself for few weeks as i got some symptoms of covid-19', 1, '2021-05-28', '2021-06-11', '0000-00-00', '2021-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `usertype` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`id`, `username`, `password`, `usertype`, `status`) VALUES
(1, 'admin', 'password0101', 1, 1),
(2, 'steven@gmail.com', '7444440001', 2, 1),
(3, 'tatiana@gmail.com', '7402222220', 2, 1),
(4, 'christine@gmail.com', '8888877777', 2, 1),
(5, 'liam@gmail.com', '7410233333', 2, 1),
(6, 'barnes@gmail.com', '1010101010', 2, 1),
(7, 'samuel@gmail.com', '7410000010', 2, 1),
(8, 'markh@gmail.com', '7070707069', 2, 1),
(9, 'angela@gmail.com', '7417417417', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_tbl`
--

CREATE TABLE `salary_tbl` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic_salary` bigint(20) NOT NULL,
  `allowance` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_on` date NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_tbl`
--

INSERT INTO `salary_tbl` (`id`, `staff_id`, `basic_salary`, `allowance`, `total`, `added_by`, `updated_on`, `added_on`) VALUES
(1, 2, 14000, 0, 14000, 1, '0000-00-00', '2021-05-02 08:23:30'),
(2, 3, 9100, 300, 9400, 1, '0000-00-00', '2021-04-28 02:39:23'),
(3, 4, 4950, 0, 4950, 1, '0000-00-00', '2021-04-30 07:38:02'),
(4, 5, 6100, 250, 6350, 1, '0000-00-00', '2021-04-30 13:57:02'),
(5, 9, 4750, 190, 4940, 1, '0000-00-00', '2021-05-27 17:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `staff_tbl`
--

CREATE TABLE `staff_tbl` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `pic` varchar(150) NOT NULL DEFAULT 'default-pic.jpg',
  `added_by` int(11) NOT NULL,
  `updated_on` date NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_tbl`
--

INSERT INTO `staff_tbl` (`id`, `staff_name`, `gender`, `email`, `mobile`, `dob`, `doj`, `address`, `city`, `state`, `country`, `department_id`, `pic`, `added_by`, `updated_on`, `added_on`) VALUES
(2, 'Steven Askew', 'Male', 'steven@gmail.com', 7444440001, '1990-02-18', '2020-11-27', '3721  Hill Croft Farm Road', 'BURLINGTON', 'MI', 'United States', 1, 'smportrait.jpg', 0, '0000-00-00', '2021-05-27 15:37:03'),
(3, 'Tatiana Breit', 'Female', 'tatiana@gmail.com', 7402222220, '1994-10-14', '2021-02-21', '3397  Happy Hollow Road', 'Jacksonville', 'NC', 'United States', 2, 'prtwm.jpg', 0, '0000-00-00', '2021-05-27 15:37:16'),
(4, 'Christine Moore', 'Female', 'christine@gmail.com', 8888877777, '1994-08-01', '2020-01-15', '4047  Timbercrest Road', 'Anchorage', 'AK', 'United States', 3, 'christen-freeimg.jpg', 0, '0000-00-00', '2021-05-27 15:31:20'),
(5, 'Liam Moore', 'Male', 'liam@gmail.com', 7410233333, '1994-12-02', '2021-04-04', '3474  Viking Drive', 'Worthington', 'OH', 'United States', 4, '7002489_preview.jpg', 1, '0000-00-00', '2021-05-27 13:55:22'),
(6, 'George J Barnes', 'Male', 'barnes@gmail.com', 1010101010, '1988-02-03', '2021-01-13', '3079  Chardonnay Drive', 'Ocala', 'FL', 'United States', 2, 'skport.jpg', 1, '0000-00-00', '2021-05-27 15:28:48'),
(7, 'Samuel Huntsman', 'Male', 'samuel@gmail.com', 7410000010, '1991-12-28', '2021-04-25', '2315  Cherry Tree Drive', 'Jacksonville', 'FL', 'United States', 5, 'dportrait.jpg', 1, '0000-00-00', '2021-05-27 16:52:18'),
(8, 'Mark Heiden', 'Male', 'markh@gmail.com', 7070707069, '1990-02-12', '2021-02-04', '2190  Laurel Lane', 'Midland', 'TX', 'United States', 2, 'pauptr.jpg', 1, '0000-00-00', '2021-05-27 16:53:57'),
(9, 'Angela Bridges', 'Female', 'angela@gmail.com', 7417417417, '1992-02-11', '2021-03-05', '3538 Melville Street', 'Jackson', 'TN', 'United States', 6, 'sm-freeimg.jpg', 1, '0000-00-00', '2021-05-27 17:29:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_tbl`
--
ALTER TABLE `country_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_tbl`
--
ALTER TABLE `department_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_tbl`
--
ALTER TABLE `salary_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_tbl`
--
ALTER TABLE `staff_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_tbl`
--
ALTER TABLE `country_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `department_tbl`
--
ALTER TABLE `department_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salary_tbl`
--
ALTER TABLE `salary_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_tbl`
--
ALTER TABLE `staff_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `employeemanagement`
--
CREATE DATABASE IF NOT EXISTS `employeemanagement` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employeemanagement`;
--
-- Database: `healthintervention`
--
CREATE DATABASE IF NOT EXISTS `healthintervention` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthintervention`;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_08_074921_create_sessions_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5q26c58WQ5Rxd8PGZkWTZnsz046ewSN8XkcBnu1P', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUzhMQk1CUkVKa0FUbmpiNUFTNmRDS2loQmRnVkR6ZTJROUlCZmRHcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2ZpbGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJG9nTnUzRkM3NHpiODBQdGx6UmZLMmV4Y05IVW80Q1lSTDZIRnEuaEZIcWJSMlBqdVNCMmJxIjt9', 1675843200),
('CdSwrnMi561G08Cm1PRnepOIuW15HNWkLb27W2di', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFR0bERPWWF2STV1bFI2b2JmUndLOU9PYUVxVkEwbm1Db05lQUlSTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1675842961);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ogNu3FC74zb80PtlzRfK2excNHUo4CYRL6HFq.hFHqbR2PjuSB2bq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 23:56:01', '2023-02-07 23:59:59');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pimsatinformationsystem\",\"table\":\"employees\"},{\"db\":\"elearningRevamp\",\"table\":\"teachers\"},{\"db\":\"elearningRevamp\",\"table\":\"users\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"leaves\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"education\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"documents\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"attendances\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"voluntaries\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"trainings\"},{\"db\":\"pimsatinformationsystem\",\"table\":\"eligibilities\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-11 08:02:54', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pimsatinformationsystem`
--
CREATE DATABASE IF NOT EXISTS `pimsatinformationsystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pimsatinformationsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `age`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12', 'admin', 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `date`, `time_in`, `time_out`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-07', '19:23', '19:23', '2023-02-06 03:22:50', '2023-02-06 03:22:50'),
(2, 1, '2023-02-09', '23:37', '12:09', '2023-02-06 03:37:09', '2023-02-06 03:37:09'),
(3, 1, '2023-02-05', '21:22', '20:23', '2023-02-07 04:22:29', '2023-02-07 04:22:29'),
(5, 6, '2023-02-10', '21:05', '21:05', '2023-02-09 05:04:41', '2023-02-09 05:04:41'),
(6, 7, '2023-02-10', '22:27', '22:30', '2023-02-10 06:27:18', '2023-02-10 06:27:18'),
(7, 8, '2023-02-11', '15:49', '15:53', '2023-02-10 23:49:18', '2023-02-10 23:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `award_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `employee_id`, `award_type`, `created_at`, `updated_at`) VALUES
(4, 5, 'Matulog', '2023-02-09 01:39:13', '2023-02-09 01:39:13'),
(5, 7, 'fcfjch', '2023-02-10 06:28:49', '2023-02-10 06:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `docu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `employee_id`, `docu_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'tang ina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'putek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 6, 'files/PIMSAT-Employee-Information-System-Revise (2) (4).docx', '2023-02-10 05:36:11', '2023-02-10 05:36:11'),
(9, 7, 'files/Cyberion (9).docx', '2023-02-10 06:28:40', '2023-02-10 06:28:40'),
(10, 8, 'files/Cyberion (9) (1).docx', '2023-02-10 23:50:06', '2023-02-10 23:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `elementary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vocational` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `college` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grad_studies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `employee_id`, `elementary`, `secondary`, `vocational`, `college`, `grad_studies`, `created_at`, `updated_at`) VALUES
(1, 1, 'sample', NULL, '[value-5]', '[value-6]', '[value-7]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 6, '1', 'asda', '1', 'ada', 'asda', '2023-02-10 05:08:54', '2023-02-10 05:25:35'),
(5, 7, 'fh', 'fjhf', 'gjh', 'ghg', 'fccgc', '2023-02-10 06:28:19', '2023-02-10 06:28:19'),
(6, 8, '1', 'sdad', 'dasda', 'sada', 'dsad', '2023-02-10 23:52:53', '2023-02-10 23:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `eligibilities`
--

CREATE TABLE `eligibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `eligibility_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_exam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_exam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eligibilities`
--

INSERT INTO `eligibilities` (`id`, `employee_id`, `eligibility_type`, `rating`, `date_of_exam`, `place_of_exam`, `date_of_validity`, `created_at`, `updated_at`) VALUES
(4, 7, 'vghcfQ', '24', '2023-02-02', 'v v bc', '2023-02-03', '2023-02-10 06:29:38', '2023-02-10 06:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employeeid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civilstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloodtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizenship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employeeid`, `firstname`, `middlename`, `lastname`, `dateofbirth`, `sex`, `civilstatus`, `height`, `weight`, `bloodtype`, `citizenship`, `address`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(1, '005', 'Emmanuel', 'Joshua', 'Lemon', '2023-02-15', 'Male', 'Single', '50', '1000', 'O', 'Filipino', 'Rizal Avenue San Carlos City', '09092897172', 'emmanuellemon12@yahoo.com', '0000-00-00 00:00:00', '2023-02-10 23:46:48'),
(5, '01', 'Emmanuel', 'Joshua', 'Lemon', '2023-02-15', 'Male', 'Single', '50', '50', 'O', 'Filipino', 'Rizal Avenue San Carlos City', '09092897172', 'emmanuellemon12@yahoo.com', '2023-02-09 01:33:04', '2023-02-09 01:33:04'),
(6, '11', 'sadas', 'asdsa', 'dsada', '2023-02-03', 'Male', 'asdsa', '21', '21', 'sadas', 'dad', 'asda', '01021', 'adsda@gmail.com', '2023-02-09 05:03:37', '2023-02-09 05:03:37'),
(7, '008', 'adsad', 'sadas', 'dsad', '2023-02-15', 'Male', 'asda', '131', '1231', 'asda', 'dad', 'dsadsa', '1231', 'sadaa@gmail.com', '2023-02-10 06:26:10', '2023-02-10 06:31:23'),
(8, '001', 'Mcccc', 'asda', 'dads', '2023-02-23', 'Male', 'asdas', '12321', '1231', 'adsa', 'dsadsa', 'dsad', '1321', 'dadsa@gmail.com', '2023-02-10 23:48:22', '2023-02-10 23:54:06');

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
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `absence_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `absence_reason`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tinamad ako boss bawi nalang ako next life!', '2023-02-06', '2023-02-09', 'APPROVED', '2023-02-06 03:04:59', '2023-02-10 06:35:49'),
(3, 6, 'sadads', '2023-02-17', '2023-02-08', 'APPROVED', '2023-02-09 05:04:07', '2023-02-10 07:07:11'),
(4, 7, 'Ayaw kong pumasok bukas', '2023-02-11', '2023-02-16', 'PENDING', '2023-02-10 06:27:47', '2023-02-10 23:47:47'),
(5, 8, 'Ayaw kong pumasok lagi', '2023-02-11', '2023-02-16', 'APPROVED', '2023-02-10 23:49:45', '2023-02-10 23:53:31');

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
(5, '2023_02_04_043030_create_admins_table', 2),
(6, '2023_02_04_043801_create_employees_table', 2),
(7, '2023_02_06_102533_create_leaves_table', 3),
(8, '2023_02_06_110835_create_attendances_table', 4),
(9, '2023_02_07_033837_create_education_table', 5),
(10, '2023_02_07_043600_create_documents_table', 6),
(14, '2023_02_07_063800_create_awards_table', 7),
(15, '2023_02_07_065932_create_trainings_table', 7),
(16, '2023_02_07_071105_create_voluntaries_table', 8),
(17, '2023_02_07_072319_create_eligibilities_table', 9),
(18, '2023_02_07_072516_create_works_table', 10);

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
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `type_of_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `employee_id`, `type_of_id`, `attendance_date`, `created_at`, `updated_at`) VALUES
(3, 5, '1231', '2023-02-15', '2023-02-09 01:45:30', '2023-02-09 01:45:30'),
(4, 7, 'esetye', '2023-02-03', '2023-02-10 06:29:55', '2023-02-10 06:29:55'),
(5, 8, 'sdasa', '2023-01-30', '2023-02-10 23:52:20', '2023-02-10 23:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voluntaries`
--

CREATE TABLE `voluntaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `addr_organization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inclusive_dates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voluntaries`
--

INSERT INTO `voluntaries` (`id`, `employee_id`, `addr_organization`, `inclusive_dates`, `position`, `created_at`, `updated_at`) VALUES
(3, 5, 'asda', '2023-02-04', 'aadsada', '2023-02-09 01:45:48', '2023-02-09 01:45:48'),
(4, 7, 'cch', '2023-02-15', 'FGGC', '2023-02-10 06:30:12', '2023-02-10 06:30:12'),
(5, 8, 'sada', '2023-02-23', 'sadas', '2023-02-10 23:52:31', '2023-02-10 23:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `inclusive_dates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `govt_service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `employee_id`, `inclusive_dates`, `position_title`, `company`, `month_salary`, `govt_service`, `created_at`, `updated_at`) VALUES
(4, 7, '2023-02-10', 'cfgxg', 'fghg', '446354', 'hfgh', '2023-02-10 06:29:12', '2023-02-10 06:29:12'),
(6, 8, '2023-02-14', 'sadas', 'dsads', '121', 'dasda', '2023-02-10 23:51:44', '2023-02-10 23:51:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `eligibilities`
--
ALTER TABLE `eligibilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eligibilities_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainings_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voluntaries`
--
ALTER TABLE `voluntaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voluntaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `works_employee_id_foreign` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eligibilities`
--
ALTER TABLE `eligibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voluntaries`
--
ALTER TABLE `voluntaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `eligibilities`
--
ALTER TABLE `eligibilities`
  ADD CONSTRAINT `eligibilities_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trainings`
--
ALTER TABLE `trainings`
  ADD CONSTRAINT `trainings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voluntaries`
--
ALTER TABLE `voluntaries`
  ADD CONSTRAINT `voluntaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
