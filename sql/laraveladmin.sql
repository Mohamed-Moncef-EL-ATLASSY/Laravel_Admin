-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2021 at 04:02 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveladmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2021-08-24 14:42:32'),
(3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2021-08-24 14:42:32'),
(4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2021-08-24 14:42:32'),
(5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2021-08-24 14:42:32'),
(6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2021-08-24 14:42:32'),
(7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2021-08-24 14:42:32'),
(8, 0, 2, 'Clients', 'fa-users', 'clients', NULL, '2021-08-24 14:42:28', '2021-08-24 14:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 13:12:59', '2021-08-24 13:12:59'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:13:08', '2021-08-24 13:13:08'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 13:20:38', '2021-08-24 13:20:38'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:20:41', '2021-08-24 13:20:41'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2021-08-24 13:20:45', '2021-08-24 13:20:45'),
(6, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:20:48', '2021-08-24 13:20:48'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:21:11', '2021-08-24 13:21:11'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:21:14', '2021-08-24 13:21:14'),
(9, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-24 13:22:16', '2021-08-24 13:22:16'),
(10, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Ciggy\",\"password\":\"$2y$10$7cqXl\\/4NzDpQi2iMzYp2Uu9JNESQOT1zTAGxWcRtdb6No5nZlOuYa\",\"password_confirmation\":\"$2y$10$7cqXl\\/4NzDpQi2iMzYp2Uu9JNESQOT1zTAGxWcRtdb6No5nZlOuYa\",\"_token\":\"tkInY2TsJG3Lrsa4obMOHrLqnkVYLQOtVPFrx9ZI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2021-08-24 13:22:56', '2021-08-24 13:22:56'),
(11, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-24 13:22:56', '2021-08-24 13:22:56'),
(12, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Ciggy\",\"password\":\"passwordtest\",\"password_confirmation\":\"LaravelAdmin\",\"_token\":\"tkInY2TsJG3Lrsa4obMOHrLqnkVYLQOtVPFrx9ZI\",\"_method\":\"PUT\"}', '2021-08-24 13:23:22', '2021-08-24 13:23:22'),
(13, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-24 13:23:22', '2021-08-24 13:23:22'),
(14, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Ciggy\",\"password\":\"password\",\"password_confirmation\":\"password\",\"_token\":\"tkInY2TsJG3Lrsa4obMOHrLqnkVYLQOtVPFrx9ZI\",\"_method\":\"PUT\"}', '2021-08-24 13:24:03', '2021-08-24 13:24:03'),
(15, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-24 13:24:03', '2021-08-24 13:24:03'),
(16, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:24:21', '2021-08-24 13:24:21'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:24:58', '2021-08-24 13:24:58'),
(18, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:25:07', '2021-08-24 13:25:07'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:25:09', '2021-08-24 13:25:09'),
(20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:25:13', '2021-08-24 13:25:13'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:25:13', '2021-08-24 13:25:13'),
(22, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-500px\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"tkInY2TsJG3Lrsa4obMOHrLqnkVYLQOtVPFrx9ZI\"}', '2021-08-24 13:25:31', '2021-08-24 13:25:31'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 13:25:31', '2021-08-24 13:25:31'),
(24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:25:36', '2021-08-24 13:25:36'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 13:25:43', '2021-08-24 13:25:43'),
(26, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 13:26:11', '2021-08-24 13:26:11'),
(27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 13:29:34', '2021-08-24 13:29:34'),
(28, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:15:26', '2021-08-24 14:15:26'),
(29, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:15:40', '2021-08-24 14:15:40'),
(30, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:17:50', '2021-08-24 14:17:50'),
(31, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 14:18:23', '2021-08-24 14:18:23'),
(32, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:18:29', '2021-08-24 14:18:29'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 14:18:34', '2021-08-24 14:18:34'),
(34, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:18:37', '2021-08-24 14:18:37'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:10', '2021-08-24 14:19:10'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:13', '2021-08-24 14:19:13'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 14:19:16', '2021-08-24 14:19:16'),
(38, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:21', '2021-08-24 14:19:21'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:28', '2021-08-24 14:19:28'),
(40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:29', '2021-08-24 14:19:29'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:31', '2021-08-24 14:19:31'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 14:19:35', '2021-08-24 14:19:35'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 14:19:36', '2021-08-24 14:19:36'),
(44, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:39', '2021-08-24 14:19:39'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:40', '2021-08-24 14:19:40'),
(46, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:41', '2021-08-24 14:19:41'),
(47, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:41', '2021-08-24 14:19:41'),
(48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:42', '2021-08-24 14:19:42'),
(49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:19:44', '2021-08-24 14:19:44'),
(50, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:20:15', '2021-08-24 14:20:15'),
(51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 14:41:07', '2021-08-24 14:41:07'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:41:12', '2021-08-24 14:41:12'),
(53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 14:41:54', '2021-08-24 14:41:54'),
(54, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Clients\",\"icon\":\"fa-users\",\"uri\":\"clients\",\"roles\":[null],\"permission\":null,\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\"}', '2021-08-24 14:42:28', '2021-08-24 14:42:28'),
(55, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 14:42:28', '2021-08-24 14:42:28'),
(56, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-08-24 14:42:32', '2021-08-24 14:42:32'),
(57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:42:32', '2021-08-24 14:42:32'),
(58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 14:42:33', '2021-08-24 14:42:33'),
(59, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:42:35', '2021-08-24 14:42:35'),
(60, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:42:39', '2021-08-24 14:42:39'),
(61, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:42:42', '2021-08-24 14:42:42'),
(62, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:42:50', '2021-08-24 14:42:50'),
(63, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-24 14:44:30', '2021-08-24 14:44:30'),
(64, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:44:33', '2021-08-24 14:44:33'),
(65, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:44:37', '2021-08-24 14:44:37'),
(66, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-24 14:44:53', '2021-08-24 14:44:53'),
(67, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-24 14:45:25', '2021-08-24 14:45:25'),
(68, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-24 14:45:27', '2021-08-24 14:45:27'),
(69, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":null,\"address\":null,\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\"}', '2021-08-24 14:45:45', '2021-08-24 14:45:45'),
(70, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-24 14:45:45', '2021-08-24 14:45:45'),
(71, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-24 14:46:04', '2021-08-24 14:46:04'),
(72, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\"}', '2021-08-24 14:46:11', '2021-08-24 14:46:11'),
(73, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:46:11', '2021-08-24 14:46:11'),
(74, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:47:29', '2021-08-24 14:47:29'),
(75, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:48:12', '2021-08-24 14:48:12'),
(76, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,photo,updated_at\",\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:48:16', '2021-08-24 14:48:16'),
(77, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,photo,updated_at\"}', '2021-08-24 14:48:18', '2021-08-24 14:48:18'),
(78, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:48:20', '2021-08-24 14:48:20'),
(79, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:48:21', '2021-08-24 14:48:21'),
(80, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:49:00', '2021-08-24 14:49:00'),
(81, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-24 14:49:07', '2021-08-24 14:49:07'),
(82, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:49:07', '2021-08-24 14:49:07'),
(83, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:50:27', '2021-08-24 14:50:27'),
(84, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:50:31', '2021-08-24 14:50:31'),
(85, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-24 14:50:36', '2021-08-24 14:50:36'),
(86, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:50:36', '2021-08-24 14:50:36'),
(87, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:51:08', '2021-08-24 14:51:08'),
(88, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-24 14:51:13', '2021-08-24 14:51:13'),
(89, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:51:13', '2021-08-24 14:51:13'),
(90, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:51:43', '2021-08-24 14:51:43'),
(91, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:51:45', '2021-08-24 14:51:45'),
(92, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-24 14:51:49', '2021-08-24 14:51:49'),
(93, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:51:49', '2021-08-24 14:51:49'),
(94, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:52:30', '2021-08-24 14:52:30'),
(95, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:52:35', '2021-08-24 14:52:35'),
(96, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-24 14:52:39', '2021-08-24 14:52:39'),
(97, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:52:39', '2021-08-24 14:52:39'),
(98, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-24 14:54:41', '2021-08-24 14:54:41'),
(99, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:54:43', '2021-08-24 14:54:43'),
(100, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:54:43', '2021-08-24 14:54:43'),
(101, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"address\":\"ryt\",\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:54:45', '2021-08-24 14:54:45'),
(102, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:54:53', '2021-08-24 14:54:53'),
(103, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:55:46', '2021-08-24 14:55:46'),
(104, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:55:49', '2021-08-24 14:55:49'),
(105, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:55:50', '2021-08-24 14:55:50'),
(106, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:55:51', '2021-08-24 14:55:51'),
(107, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:55:53', '2021-08-24 14:55:53'),
(108, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"id,name,photo\",\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:56:12', '2021-08-24 14:56:12'),
(109, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"id\",\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:56:16', '2021-08-24 14:56:16'),
(110, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\",\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:56:20', '2021-08-24 14:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-08-24 13:10:37', '2021-08-24 13:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$CCayVkUmdz9iFhAMGir1xeC/WVPFjGzo14YOKhnxo47BBD5LhfhuS', 'Ciggy', NULL, 'iQ4ratO79yYGVrtzLyuQoMfHpbwYVQP4fg2q9gW8zSGDN1Qk6OtuhYsbDzfR', '2021-08-24 13:10:37', '2021-08-24 13:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'fhrytr', 'rtyrtyrt', 'images/de7fbca34593d5f706c7efd6f531addd.jpg', '2021-08-24 14:46:11', '2021-08-24 14:52:39');

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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_24_152824_create_clients_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
