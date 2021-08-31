-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 31, 2021 at 03:06 PM
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
-- Database: `laravel_admin`
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
(1, 0, 3, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2021-08-26 10:11:11'),
(2, 0, 4, 'Admin', 'fa-tasks', '', NULL, NULL, '2021-08-26 10:11:11'),
(3, 2, 5, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2021-08-26 10:11:11'),
(4, 2, 6, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2021-08-26 10:11:11'),
(5, 2, 7, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2021-08-26 10:11:11'),
(6, 2, 8, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2021-08-26 10:11:11'),
(7, 2, 9, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2021-08-26 10:11:11'),
(8, 0, 2, 'Clients', 'fa-users', 'clients', NULL, '2021-08-24 14:42:28', '2021-08-25 12:07:23'),
(9, 0, 1, 'Produits', 'fa-tags', 'products', NULL, '2021-08-26 10:10:29', '2021-08-26 10:11:11');

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
(110, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\",\"_pjax\":\"#pjax-container\"}', '2021-08-24 14:56:20', '2021-08-24 14:56:20'),
(111, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:10:17', '2021-08-24 15:10:17'),
(112, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:10:38', '2021-08-24 15:10:38'),
(113, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:10:42', '2021-08-24 15:10:42'),
(114, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2021-08-24 15:10:58', '2021-08-24 15:10:58'),
(115, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:14:50', '2021-08-24 15:14:50'),
(116, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:14:51', '2021-08-24 15:14:51'),
(117, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:14:53', '2021-08-24 15:14:53'),
(118, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:14:57', '2021-08-24 15:14:57'),
(119, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:14:57', '2021-08-24 15:14:57'),
(120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:04', '2021-08-24 15:15:04'),
(121, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ggbJAo8AHHdIqPgI56x3N4FtsoxaStN9m2vkxImg\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-08-24 15:15:14', '2021-08-24 15:15:14'),
(122, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:14', '2021-08-24 15:15:14'),
(123, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:15', '2021-08-24 15:15:15'),
(124, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-24 15:15:17', '2021-08-24 15:15:17'),
(125, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:19', '2021-08-24 15:15:19'),
(126, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:21', '2021-08-24 15:15:21'),
(127, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 15:15:23', '2021-08-24 15:15:23'),
(128, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:25', '2021-08-24 15:15:25'),
(129, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:15:27', '2021-08-24 15:15:27'),
(130, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-24 15:18:45', '2021-08-24 15:18:45'),
(131, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:18:46', '2021-08-24 15:18:46'),
(132, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:21:51', '2021-08-24 15:21:51'),
(133, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:21:54', '2021-08-24 15:21:54'),
(134, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:21:57', '2021-08-24 15:21:57'),
(135, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-24 15:23:40', '2021-08-24 15:23:40'),
(136, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2021-08-24 15:23:42', '2021-08-24 15:23:42'),
(137, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:23:50', '2021-08-24 15:23:50'),
(138, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-24 15:28:26', '2021-08-24 15:28:26'),
(139, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 07:12:06', '2021-08-25 07:12:06'),
(140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:12:11', '2021-08-25 07:12:11'),
(141, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:12:15', '2021-08-25 07:12:15'),
(142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 07:12:18', '2021-08-25 07:12:18'),
(143, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:12:21', '2021-08-25 07:12:21'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 07:12:34', '2021-08-25 07:12:34'),
(145, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:12:46', '2021-08-25 07:12:46'),
(146, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:14:51', '2021-08-25 07:14:51'),
(147, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:14:55', '2021-08-25 07:14:55'),
(148, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"N7eYhJOb88c5oQmxTeQqQJ6zerSTI9ntBg4U5Igl\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 07:15:13', '2021-08-25 07:15:13'),
(149, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:15:13', '2021-08-25 07:15:13'),
(150, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:15:44', '2021-08-25 07:15:44'),
(151, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:15:45', '2021-08-25 07:15:45'),
(152, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:15:46', '2021-08-25 07:15:46'),
(153, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:15:48', '2021-08-25 07:15:48'),
(154, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"N7eYhJOb88c5oQmxTeQqQJ6zerSTI9ntBg4U5Igl\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 07:15:53', '2021-08-25 07:15:53'),
(155, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:15:53', '2021-08-25 07:15:53'),
(156, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:16:22', '2021-08-25 07:16:22'),
(157, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:16:24', '2021-08-25 07:16:24'),
(158, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"N7eYhJOb88c5oQmxTeQqQJ6zerSTI9ntBg4U5Igl\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 07:16:29', '2021-08-25 07:16:29'),
(159, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:16:29', '2021-08-25 07:16:29'),
(160, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:18:54', '2021-08-25 07:18:54'),
(161, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"fhrytr\",\"address\":\"rtyrtyrt\",\"_token\":\"N7eYhJOb88c5oQmxTeQqQJ6zerSTI9ntBg4U5Igl\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 07:19:05', '2021-08-25 07:19:05'),
(162, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:19:06', '2021-08-25 07:19:06'),
(163, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:19:12', '2021-08-25 07:19:12'),
(164, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:20:59', '2021-08-25 07:20:59'),
(165, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:21:02', '2021-08-25 07:21:02'),
(166, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:21:05', '2021-08-25 07:21:05'),
(167, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"John doe\",\"address\":\"Bachkou taddart\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 07:21:26', '2021-08-25 07:21:26'),
(168, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 07:21:26', '2021-08-25 07:21:26'),
(169, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\",\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:21:33', '2021-08-25 07:21:33'),
(170, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\"}', '2021-08-25 07:44:47', '2021-08-25 07:44:47'),
(171, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 07:44:48', '2021-08-25 07:44:48'),
(172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 08:06:36', '2021-08-25 08:06:36'),
(173, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:06:38', '2021-08-25 08:06:38'),
(174, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:07:27', '2021-08-25 08:07:27'),
(175, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"address\",\"type\":\"asc\"}}', '2021-08-25 08:07:29', '2021-08-25 08:07:29'),
(176, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:07:29', '2021-08-25 08:07:29'),
(177, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:07:44', '2021-08-25 08:07:44'),
(178, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:08:15', '2021-08-25 08:08:15'),
(179, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:08:50', '2021-08-25 08:08:50'),
(180, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:09:23', '2021-08-25 08:09:23'),
(181, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:09:30', '2021-08-25 08:09:30'),
(182, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:09:37', '2021-08-25 08:09:37'),
(183, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:10:16', '2021-08-25 08:10:16'),
(184, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:11:16', '2021-08-25 08:11:16'),
(185, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:11:32', '2021-08-25 08:11:32'),
(186, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:11:34', '2021-08-25 08:11:34'),
(187, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:11:42', '2021-08-25 08:11:42'),
(188, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:11:57', '2021-08-25 08:11:57'),
(189, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:12:06', '2021-08-25 08:12:06'),
(190, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:12:13', '2021-08-25 08:12:13'),
(191, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:12:14', '2021-08-25 08:12:14'),
(192, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:12:16', '2021-08-25 08:12:16'),
(193, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:12:24', '2021-08-25 08:12:24'),
(194, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:12:38', '2021-08-25 08:12:38'),
(195, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:15:53', '2021-08-25 08:15:53'),
(196, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:17:29', '2021-08-25 08:17:29'),
(197, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:18:24', '2021-08-25 08:18:24'),
(198, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"John doe\",\"address\":\"Testind adress\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients?&_sort%5Bcolumn%5D=address&_sort%5Btype%5D=desc\"}', '2021-08-25 08:18:34', '2021-08-25 08:18:34'),
(199, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:18:34', '2021-08-25 08:18:34'),
(200, 1, 'admin/clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:18:37', '2021-08-25 08:18:37'),
(201, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"name\":\"John doe\",\"address\":\"Testing adress\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients?&_sort%5Bcolumn%5D=address&_sort%5Btype%5D=desc\"}', '2021-08-25 08:18:41', '2021-08-25 08:18:41'),
(202, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:18:41', '2021-08-25 08:18:41'),
(203, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:19:50', '2021-08-25 08:19:50'),
(204, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:20:00', '2021-08-25 08:20:00'),
(205, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:30:59', '2021-08-25 08:30:59'),
(206, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"updated_at\":\"2021-08-26\"}', '2021-08-25 08:31:06', '2021-08-25 08:31:06'),
(207, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:31:11', '2021-08-25 08:31:11'),
(208, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:31:24', '2021-08-25 08:31:24'),
(209, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:31:27', '2021-08-25 08:31:27'),
(210, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"updated_at\":\"2021-08-25\"}', '2021-08-25 08:31:31', '2021-08-25 08:31:31'),
(211, 1, 'admin/clients/1', 'PUT', '127.0.0.1', '{\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"updated_at\":\"2021-08-19\"}', '2021-08-25 08:31:38', '2021-08-25 08:31:38'),
(212, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:31:39', '2021-08-25 08:31:39'),
(213, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:31:52', '2021-08-25 08:31:52'),
(214, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:32:05', '2021-08-25 08:32:05'),
(215, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_export_\":\"all\"}', '2021-08-25 08:39:13', '2021-08-25 08:39:13'),
(216, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:41:46', '2021-08-25 08:41:46'),
(217, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"New name\",\"address\":\"New adress\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients?&_sort%5Bcolumn%5D=address&_sort%5Btype%5D=desc\"}', '2021-08-25 08:42:01', '2021-08-25 08:42:01'),
(218, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:42:02', '2021-08-25 08:42:02'),
(219, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_export_\":\"all\"}', '2021-08-25 08:42:05', '2021-08-25 08:42:05'),
(220, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:04', '2021-08-25 08:43:04'),
(221, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:05', '2021-08-25 08:43:05'),
(222, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:06', '2021-08-25 08:43:06'),
(223, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:07', '2021-08-25 08:43:07'),
(224, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:08', '2021-08-25 08:43:08'),
(225, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:09', '2021-08-25 08:43:09'),
(226, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-25 08:43:14', '2021-08-25 08:43:14'),
(227, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"address\":\"new adress\",\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:28', '2021-08-25 08:43:28'),
(228, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"address\":\"new\",\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:33', '2021-08-25 08:43:33'),
(229, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"address\":\"e\",\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:36', '2021-08-25 08:43:36'),
(230, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:43:39', '2021-08-25 08:43:39'),
(231, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":\"1\"}', '2021-08-25 08:43:49', '2021-08-25 08:43:49'),
(232, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":\"2\"}', '2021-08-25 08:43:52', '2021-08-25 08:43:52'),
(233, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:44:00', '2021-08-25 08:44:00'),
(234, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"id\":\"1\"}', '2021-08-25 08:44:04', '2021-08-25 08:44:04'),
(235, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:44:08', '2021-08-25 08:44:08'),
(236, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:44:16', '2021-08-25 08:44:16'),
(237, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:44:24', '2021-08-25 08:44:24'),
(238, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:44:26', '2021-08-25 08:44:26'),
(239, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:50:29', '2021-08-25 08:50:29'),
(240, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:50:40', '2021-08-25 08:50:40'),
(241, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:50:52', '2021-08-25 08:50:52'),
(242, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:51:03', '2021-08-25 08:51:03'),
(243, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"56654654\",\"address\":null,\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\"}', '2021-08-25 08:53:36', '2021-08-25 08:53:36'),
(244, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 08:53:36', '2021-08-25 08:53:36'),
(245, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 08:54:10', '2021-08-25 08:54:10'),
(246, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:54:12', '2021-08-25 08:54:12'),
(247, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:54:53', '2021-08-25 08:54:53'),
(248, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:55:06', '2021-08-25 08:55:06'),
(249, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:55:52', '2021-08-25 08:55:52'),
(250, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:56:01', '2021-08-25 08:56:01'),
(251, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:56:06', '2021-08-25 08:56:06'),
(252, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:56:18', '2021-08-25 08:56:18'),
(253, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:56:37', '2021-08-25 08:56:37'),
(254, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"06 5464-4951\",\"address\":\"Testing input mask as in a phone number entry\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\"}', '2021-08-25 08:57:02', '2021-08-25 08:57:02'),
(255, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 08:57:02', '2021-08-25 08:57:02'),
(256, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 08:57:08', '2021-08-25 08:57:08'),
(257, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:57:17', '2021-08-25 08:57:17'),
(258, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 08:57:31', '2021-08-25 08:57:31'),
(259, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"+2126 5464-4951\",\"address\":\"new format exploiting\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\"}', '2021-08-25 08:57:48', '2021-08-25 08:57:48'),
(260, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 08:57:48', '2021-08-25 08:57:48'),
(261, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:03:22', '2021-08-25 09:03:22'),
(262, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:03:24', '2021-08-25 09:03:24'),
(263, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:03:24', '2021-08-25 09:03:24'),
(264, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:03:31', '2021-08-25 09:03:31'),
(265, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:03:32', '2021-08-25 09:03:32'),
(266, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:03:32', '2021-08-25 09:03:32'),
(267, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:03:43', '2021-08-25 09:03:43'),
(268, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:03:45', '2021-08-25 09:03:45'),
(269, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 09:03:53', '2021-08-25 09:03:53'),
(270, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 09:04:20', '2021-08-25 09:04:20'),
(271, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:04:37', '2021-08-25 09:04:37'),
(272, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:05:33', '2021-08-25 09:05:33'),
(273, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:05:34', '2021-08-25 09:05:34'),
(274, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:05:34', '2021-08-25 09:05:34'),
(275, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:05:45', '2021-08-25 09:05:45'),
(276, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:05:46', '2021-08-25 09:05:46'),
(277, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 09:09:58', '2021-08-25 09:09:58'),
(278, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"+2125 4654-6545\",\"address\":\"adress\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 09:10:10', '2021-08-25 09:10:10'),
(279, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:10:10', '2021-08-25 09:10:10'),
(280, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Client\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2021-08-25 09:10:23', '2021-08-25 09:10:23'),
(281, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:10:23', '2021-08-25 09:10:23'),
(282, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:17:22', '2021-08-25 09:17:22'),
(283, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:17:24', '2021-08-25 09:17:24'),
(284, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 09:17:58', '2021-08-25 09:17:58'),
(285, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:19:00', '2021-08-25 09:19:00'),
(286, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:19:28', '2021-08-25 09:19:28'),
(287, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:19:30', '2021-08-25 09:19:30'),
(288, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:19:39', '2021-08-25 09:19:39'),
(289, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"address\":\"adress\",\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:23:02', '2021-08-25 09:23:02'),
(290, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:23:06', '2021-08-25 09:23:06'),
(291, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:23:09', '2021-08-25 09:23:09'),
(292, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:23:12', '2021-08-25 09:23:12'),
(293, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:23:14', '2021-08-25 09:23:14'),
(294, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:24:07', '2021-08-25 09:24:07'),
(295, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"lol\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 09:24:18', '2021-08-25 09:24:18'),
(296, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:24:18', '2021-08-25 09:24:18'),
(297, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:26:46', '2021-08-25 09:26:46'),
(298, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:26:56', '2021-08-25 09:26:56'),
(299, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 09:27:06', '2021-08-25 09:27:06'),
(300, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:27:21', '2021-08-25 09:27:21'),
(301, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Ciggy\",\"password\":\"$2y$10$CCayVkUmdz9iFhAMGir1xeC\\/WVPFjGzo14YOKhnxo47BBD5LhfhuS\",\"password_confirmation\":\"$2y$10$CCayVkUmdz9iFhAMGir1xeC\\/WVPFjGzo14YOKhnxo47BBD5LhfhuS\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 09:27:27', '2021-08-25 09:27:27'),
(302, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-25 09:27:27', '2021-08-25 09:27:27'),
(303, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"password\":\"asmin\",\"password_confirmation\":\"admin\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\"}', '2021-08-25 09:27:50', '2021-08-25 09:27:50'),
(304, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-25 09:27:50', '2021-08-25 09:27:50'),
(305, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"jIRnLYwVOpKUEMzMm2DvIJ4DRQfUsuc4Ualg8H1a\",\"_method\":\"PUT\"}', '2021-08-25 09:28:02', '2021-08-25 09:28:02'),
(306, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-25 09:28:02', '2021-08-25 09:28:02'),
(307, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:28:07', '2021-08-25 09:28:07'),
(308, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 09:28:15', '2021-08-25 09:28:15'),
(309, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:28:19', '2021-08-25 09:28:19'),
(310, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 09:28:26', '2021-08-25 09:28:26'),
(311, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:41:53', '2021-08-25 09:41:53'),
(312, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 09:41:54', '2021-08-25 09:41:54'),
(313, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:07:58', '2021-08-25 11:07:58'),
(314, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:08:23', '2021-08-25 11:08:23'),
(315, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:08:42', '2021-08-25 11:08:42'),
(316, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:08:56', '2021-08-25 11:08:56'),
(317, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:09:06', '2021-08-25 11:09:06'),
(318, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:09:12', '2021-08-25 11:09:12'),
(319, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:09:19', '2021-08-25 11:09:19'),
(320, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:09:23', '2021-08-25 11:09:23'),
(321, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/auth\\/roles\"}', '2021-08-25 11:09:40', '2021-08-25 11:09:40'),
(322, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2021-08-25 11:09:40', '2021-08-25 11:09:40'),
(323, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:09:45', '2021-08-25 11:09:45'),
(324, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:10:03', '2021-08-25 11:10:03'),
(325, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:14:45', '2021-08-25 11:14:45'),
(326, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:14:58', '2021-08-25 11:14:58'),
(327, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"A\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:15:02', '2021-08-25 11:15:02'),
(328, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:15:02', '2021-08-25 11:15:02'),
(329, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:15:08', '2021-08-25 11:15:08'),
(330, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"lorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsumlorem ipsum lorem ipsum\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:15:26', '2021-08-25 11:15:26'),
(331, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:15:26', '2021-08-25 11:15:26'),
(332, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:16:06', '2021-08-25 11:16:06'),
(333, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"ciggyciggyciggyciggyciggyciggyciggyciggyciggy\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:16:23', '2021-08-25 11:16:23'),
(334, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:16:23', '2021-08-25 11:16:23'),
(335, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:16:31', '2021-08-25 11:16:31'),
(336, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"ciggy ciggy ciggy ciggy ciggy ciggy ciggy ciggy\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:16:43', '2021-08-25 11:16:43'),
(337, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:16:43', '2021-08-25 11:16:43'),
(338, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:17:27', '2021-08-25 11:17:27'),
(339, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"https:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:17:31', '2021-08-25 11:17:31'),
(340, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:17:31', '2021-08-25 11:17:31'),
(341, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:22:27', '2021-08-25 11:22:27'),
(342, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:22:48', '2021-08-25 11:22:48'),
(343, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:23:27', '2021-08-25 11:23:27'),
(344, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:23:32', '2021-08-25 11:23:32'),
(345, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:23:41', '2021-08-25 11:23:41'),
(346, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:23:48', '2021-08-25 11:23:48'),
(347, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:23:53', '2021-08-25 11:23:53'),
(348, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:24:01', '2021-08-25 11:24:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(349, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:24:17', '2021-08-25 11:24:17'),
(350, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"https:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\\r\\ntest break line\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:24:24', '2021-08-25 11:24:24'),
(351, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:24:24', '2021-08-25 11:24:24'),
(352, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:24:29', '2021-08-25 11:24:29'),
(353, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"lorem ipsum\\r\\ntest break linelorem ipsum\\r\\ntest break linelorem ipsum\\r\\ntest break linelorem ipsum\\r\\ntest break linelorem ipsum\\r\\ntest break line\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:24:45', '2021-08-25 11:24:45'),
(354, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:24:45', '2021-08-25 11:24:45'),
(355, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:24:49', '2021-08-25 11:24:49'),
(356, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"test adresse\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:24:58', '2021-08-25 11:24:58'),
(357, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:24:58', '2021-08-25 11:24:58'),
(358, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:25:02', '2021-08-25 11:25:02'),
(359, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"test adresse\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:25:05', '2021-08-25 11:25:05'),
(360, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '[]', '2021-08-25 11:25:05', '2021-08-25 11:25:05'),
(361, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"+2125 6654-6549\",\"address\":\"test adresse\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"after-save\":\"2\",\"_method\":\"PUT\"}', '2021-08-25 11:25:08', '2021-08-25 11:25:08'),
(362, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 11:25:08', '2021-08-25 11:25:08'),
(363, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-25 11:25:26', '2021-08-25 11:25:26'),
(364, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"Test name\",\"address\":\"test adress\\r\\neverything is alright\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"after-save\":\"3\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:26:04', '2021-08-25 11:26:04'),
(365, 1, 'admin/clients/7', 'GET', '127.0.0.1', '[]', '2021-08-25 11:26:04', '2021-08-25 11:26:04'),
(366, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:26:09', '2021-08-25 11:26:09'),
(367, 1, 'admin/clients/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:26:17', '2021-08-25 11:26:17'),
(368, 1, 'admin/clients/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:26:41', '2021-08-25 11:26:41'),
(369, 1, 'admin/clients/7', 'PUT', '127.0.0.1', '{\"name\":\"Test name\",\"address\":\"test adress\\r\\neverything is alright\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\\/7\"}', '2021-08-25 11:26:45', '2021-08-25 11:26:45'),
(370, 1, 'admin/clients/7', 'GET', '127.0.0.1', '[]', '2021-08-25 11:26:45', '2021-08-25 11:26:45'),
(371, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:26:49', '2021-08-25 11:26:49'),
(372, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:26:56', '2021-08-25 11:26:56'),
(373, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:27:11', '2021-08-25 11:27:11'),
(374, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:27:16', '2021-08-25 11:27:16'),
(375, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:27:22', '2021-08-25 11:27:22'),
(376, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"name change\",\"address\":\"test adresse\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:27:28', '2021-08-25 11:27:28'),
(377, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:27:28', '2021-08-25 11:27:28'),
(378, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:27:56', '2021-08-25 11:27:56'),
(379, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:27:57', '2021-08-25 11:27:57'),
(380, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:00', '2021-08-25 11:28:00'),
(381, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:01', '2021-08-25 11:28:01'),
(382, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:02', '2021-08-25 11:28:02'),
(383, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:03', '2021-08-25 11:28:03'),
(384, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:08', '2021-08-25 11:28:08'),
(385, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:14', '2021-08-25 11:28:14'),
(386, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"password\":\"$2y$10$1Gl6McE8wTBUJ7AKBt2NTu7q68doh\\/ueqpq1ji6wP4FUBnjsNXax.\",\"password_confirmation\":\"$2y$10$1Gl6McE8wTBUJ7AKBt2NTu7q68doh\\/ueqpq1ji6wP4FUBnjsNXax.\",\"_token\":\"f5BgbHQBqUtDaiyrvTNYmdQgPVlMDvvrLgEglenw\",\"after-save\":\"3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-25 11:28:20', '2021-08-25 11:28:20'),
(387, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2021-08-25 11:28:20', '2021-08-25 11:28:20'),
(388, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:28:31', '2021-08-25 11:28:31'),
(389, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:29:17', '2021-08-25 11:29:17'),
(390, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:30:51', '2021-08-25 11:30:51'),
(391, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:30:56', '2021-08-25 11:30:56'),
(392, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:31:27', '2021-08-25 11:31:27'),
(393, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:31:30', '2021-08-25 11:31:30'),
(394, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:31:48', '2021-08-25 11:31:48'),
(395, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:31:59', '2021-08-25 11:31:59'),
(396, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:32:12', '2021-08-25 11:32:12'),
(397, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:32:26', '2021-08-25 11:32:26'),
(398, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 11:32:48', '2021-08-25 11:32:48'),
(399, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:42:58', '2021-08-25 11:42:58'),
(400, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:43:01', '2021-08-25 11:43:01'),
(401, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:44:20', '2021-08-25 11:44:20'),
(402, 1, 'admin/auth/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:44:23', '2021-08-25 11:44:23'),
(403, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2021-08-25 11:44:24', '2021-08-25 11:44:24'),
(404, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:44:26', '2021-08-25 11:44:26'),
(405, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:44:28', '2021-08-25 11:44:28'),
(406, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:50:07', '2021-08-25 11:50:07'),
(407, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:50:10', '2021-08-25 11:50:10'),
(408, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:50:13', '2021-08-25 11:50:13'),
(409, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:50:15', '2021-08-25 11:50:15'),
(410, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:50:16', '2021-08-25 11:50:16'),
(411, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:50:22', '2021-08-25 11:50:22'),
(412, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:53:04', '2021-08-25 11:53:04'),
(413, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:53:07', '2021-08-25 11:53:07'),
(414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:53:42', '2021-08-25 11:53:42'),
(415, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:53:46', '2021-08-25 11:53:46'),
(416, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-25 11:53:47', '2021-08-25 11:53:47'),
(417, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"U0jLsB5YwEyFHANoCpnB0DJpKSWUauhjKThf3Ghp\"}', '2021-08-25 11:53:50', '2021-08-25 11:53:50'),
(418, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:53:50', '2021-08-25 11:53:50'),
(419, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:53:52', '2021-08-25 11:53:52'),
(420, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-25 11:53:52', '2021-08-25 11:53:52'),
(421, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2021-08-25 11:54:04', '2021-08-25 11:54:04'),
(422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:54:06', '2021-08-25 11:54:06'),
(423, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:56:06', '2021-08-25 11:56:06'),
(424, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-25 11:56:07', '2021-08-25 11:56:07'),
(425, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2021-08-25 11:56:30', '2021-08-25 11:56:30'),
(426, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:57:09', '2021-08-25 11:57:09'),
(427, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:57:14', '2021-08-25 11:57:14'),
(428, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-25 11:57:14', '2021-08-25 11:57:14'),
(429, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"xTiztM3nlBTiirLoOgTi4Hz1vNLP3kVjArmJthxH\"}', '2021-08-25 11:57:16', '2021-08-25 11:57:16'),
(430, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-25 11:57:16', '2021-08-25 11:57:16'),
(431, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 11:58:48', '2021-08-25 11:58:48'),
(432, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:06:39', '2021-08-25 12:06:39'),
(433, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 12:06:55', '2021-08-25 12:06:55'),
(434, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 12:06:56', '2021-08-25 12:06:56'),
(435, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:06:58', '2021-08-25 12:06:58'),
(436, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:07:04', '2021-08-25 12:07:04'),
(437, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:07:13', '2021-08-25 12:07:13'),
(438, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:07:15', '2021-08-25 12:07:15'),
(439, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 12:07:16', '2021-08-25 12:07:16'),
(440, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:07:19', '2021-08-25 12:07:19'),
(441, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"xTiztM3nlBTiirLoOgTi4Hz1vNLP3kVjArmJthxH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-08-25 12:07:23', '2021-08-25 12:07:23'),
(442, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:07:23', '2021-08-25 12:07:23'),
(443, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-25 12:07:25', '2021-08-25 12:07:25'),
(444, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:08:45', '2021-08-25 12:08:45'),
(445, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-25 12:15:51', '2021-08-25 12:15:51'),
(446, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-25 12:16:11', '2021-08-25 12:16:11'),
(447, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2021-08-26 08:32:49', '2021-08-26 08:32:49'),
(448, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:32:50', '2021-08-26 08:32:50'),
(449, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:33:01', '2021-08-26 08:33:01'),
(450, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:33:05', '2021-08-26 08:33:05'),
(451, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:33:18', '2021-08-26 08:33:18'),
(452, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:33:27', '2021-08-26 08:33:27'),
(453, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:33:36', '2021-08-26 08:33:36'),
(454, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:33:54', '2021-08-26 08:33:54'),
(455, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:33:55', '2021-08-26 08:33:55'),
(456, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:07', '2021-08-26 08:34:07'),
(457, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:34:12', '2021-08-26 08:34:12'),
(458, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:34:13', '2021-08-26 08:34:13'),
(459, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:34:21', '2021-08-26 08:34:21'),
(460, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:21', '2021-08-26 08:34:21'),
(461, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"GbHjTMjY63aSIVYNTzx1x3UNsYjpuMpevQN3VQmy\"}', '2021-08-26 08:34:30', '2021-08-26 08:34:30'),
(462, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:30', '2021-08-26 08:34:30'),
(463, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:50', '2021-08-26 08:34:50'),
(464, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:52', '2021-08-26 08:34:52'),
(465, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:34:53', '2021-08-26 08:34:53'),
(466, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:53', '2021-08-26 08:34:53'),
(467, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:34:58', '2021-08-26 08:34:58'),
(468, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:11', '2021-08-26 08:35:11'),
(469, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:11', '2021-08-26 08:35:11'),
(470, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"GbHjTMjY63aSIVYNTzx1x3UNsYjpuMpevQN3VQmy\"}', '2021-08-26 08:35:13', '2021-08-26 08:35:13'),
(471, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:13', '2021-08-26 08:35:13'),
(472, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:35:17', '2021-08-26 08:35:17'),
(473, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:17', '2021-08-26 08:35:17'),
(474, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"GbHjTMjY63aSIVYNTzx1x3UNsYjpuMpevQN3VQmy\"}', '2021-08-26 08:35:19', '2021-08-26 08:35:19'),
(475, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:19', '2021-08-26 08:35:19'),
(476, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:35:27', '2021-08-26 08:35:27'),
(477, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:28', '2021-08-26 08:35:28'),
(478, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"GbHjTMjY63aSIVYNTzx1x3UNsYjpuMpevQN3VQmy\"}', '2021-08-26 08:35:31', '2021-08-26 08:35:31'),
(479, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:35:32', '2021-08-26 08:35:32'),
(480, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:36:14', '2021-08-26 08:36:14'),
(481, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 08:36:18', '2021-08-26 08:36:18'),
(482, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:19', '2021-08-26 08:36:19'),
(483, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:20', '2021-08-26 08:36:20'),
(484, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 08:36:26', '2021-08-26 08:36:26'),
(485, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:27', '2021-08-26 08:36:27'),
(486, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:29', '2021-08-26 08:36:29'),
(487, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:31', '2021-08-26 08:36:31'),
(488, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:33', '2021-08-26 08:36:33'),
(489, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2021-08-26 08:36:58', '2021-08-26 08:36:58'),
(490, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:36:59', '2021-08-26 08:36:59'),
(491, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:37:00', '2021-08-26 08:37:00'),
(492, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 08:37:11', '2021-08-26 08:37:11'),
(493, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 08:37:20', '2021-08-26 08:37:20'),
(494, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 08:37:31', '2021-08-26 08:37:31'),
(495, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:37:33', '2021-08-26 08:37:33'),
(496, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:37:34', '2021-08-26 08:37:34'),
(497, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:37:35', '2021-08-26 08:37:35'),
(498, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:42:43', '2021-08-26 08:42:43'),
(499, 1, 'admin/clients', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:42:55', '2021-08-26 08:42:55'),
(500, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:43:22', '2021-08-26 08:43:22'),
(501, 1, 'admin/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:43:41', '2021-08-26 08:43:41'),
(502, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:43:54', '2021-08-26 08:43:54'),
(503, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:43:57', '2021-08-26 08:43:57'),
(504, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:45:00', '2021-08-26 08:45:00'),
(505, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:45:03', '2021-08-26 08:45:03'),
(506, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:45:16', '2021-08-26 08:45:16'),
(507, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:45:26', '2021-08-26 08:45:26'),
(508, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:45:29', '2021-08-26 08:45:29'),
(509, 1, 'admin/clients', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:45:30', '2021-08-26 08:45:30'),
(510, 1, 'admin/auth/lock', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:49:06', '2021-08-26 08:49:06'),
(511, 1, 'admin/auth/lock', 'GET', '::1', '[]', '2021-08-26 08:49:06', '2021-08-26 08:49:06'),
(512, 1, 'admin/auth/unlock', 'POST', '::1', '{\"password\":\"admin\",\"_token\":\"WyxBYa4BO1qYfCFHdtDHWJX9UQHcYGlVPvny7dJD\"}', '2021-08-26 08:49:12', '2021-08-26 08:49:12'),
(513, 1, 'admin/clients', 'GET', '::1', '[]', '2021-08-26 08:49:12', '2021-08-26 08:49:12'),
(514, 1, 'admin/auth/lock', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:49:14', '2021-08-26 08:49:14'),
(515, 1, 'admin/auth/lock', 'GET', '::1', '[]', '2021-08-26 08:49:15', '2021-08-26 08:49:15'),
(516, 1, 'admin/auth/unlock', 'POST', '::1', '{\"password\":\"admin\",\"_token\":\"WyxBYa4BO1qYfCFHdtDHWJX9UQHcYGlVPvny7dJD\"}', '2021-08-26 08:49:47', '2021-08-26 08:49:47'),
(517, 1, 'admin/clients', 'GET', '::1', '[]', '2021-08-26 08:49:47', '2021-08-26 08:49:47'),
(518, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:55:57', '2021-08-26 08:55:57'),
(519, 1, 'admin/clients', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:56:32', '2021-08-26 08:56:32'),
(520, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 08:57:49', '2021-08-26 08:57:49'),
(521, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:58:00', '2021-08-26 08:58:00'),
(522, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:58:38', '2021-08-26 08:58:38'),
(523, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:59:05', '2021-08-26 08:59:05'),
(524, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:59:07', '2021-08-26 08:59:07'),
(525, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:59:21', '2021-08-26 08:59:21'),
(526, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 08:59:36', '2021-08-26 08:59:36'),
(527, 1, 'admin', 'GET', '::1', '[]', '2021-08-26 09:08:26', '2021-08-26 09:08:26'),
(528, 1, 'admin/clients', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 09:08:30', '2021-08-26 09:08:30'),
(529, 1, 'admin/clients', 'GET', '::1', '[]', '2021-08-26 09:08:46', '2021-08-26 09:08:46'),
(530, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 09:09:11', '2021-08-26 09:09:11'),
(531, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 09:09:15', '2021-08-26 09:09:15'),
(532, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 09:09:17', '2021-08-26 09:09:17'),
(533, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 09:09:20', '2021-08-26 09:09:20'),
(534, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-26 09:09:20', '2021-08-26 09:09:20'),
(535, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\"}', '2021-08-26 09:09:22', '2021-08-26 09:09:22'),
(536, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-26 09:09:22', '2021-08-26 09:09:22'),
(537, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 09:09:25', '2021-08-26 09:09:25'),
(538, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:11:46', '2021-08-26 09:11:46'),
(539, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:12:26', '2021-08-26 09:12:26'),
(540, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:12:28', '2021-08-26 09:12:28'),
(541, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:12:29', '2021-08-26 09:12:29'),
(542, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:12:49', '2021-08-26 09:12:49'),
(543, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:13:04', '2021-08-26 09:13:04'),
(544, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:13:11', '2021-08-26 09:13:11'),
(545, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:13:16', '2021-08-26 09:13:16'),
(546, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:13:32', '2021-08-26 09:13:32'),
(547, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:13:41', '2021-08-26 09:13:41'),
(548, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:14:00', '2021-08-26 09:14:00'),
(549, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:14:16', '2021-08-26 09:14:16'),
(550, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:14:24', '2021-08-26 09:14:24'),
(551, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:14:31', '2021-08-26 09:14:31'),
(552, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:14:33', '2021-08-26 09:14:33'),
(553, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 09:14:46', '2021-08-26 09:14:46'),
(554, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 09:14:56', '2021-08-26 09:14:56'),
(555, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 09:17:37', '2021-08-26 09:17:37'),
(556, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 10:06:20', '2021-08-26 10:06:20'),
(557, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:06:23', '2021-08-26 10:06:23'),
(558, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-26 10:07:15', '2021-08-26 10:07:15'),
(559, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Produits\",\"icon\":\"fa-tags\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\"}', '2021-08-26 10:10:29', '2021-08-26 10:10:29'),
(560, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-26 10:10:29', '2021-08-26 10:10:29'),
(561, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-26 10:10:36', '2021-08-26 10:10:36'),
(562, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:10:37', '2021-08-26 10:10:37'),
(563, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:10:43', '2021-08-26 10:10:43'),
(564, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:10:50', '2021-08-26 10:10:50'),
(565, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"address\",\"type\":\"desc\"}}', '2021-08-26 10:10:53', '2021-08-26 10:10:53'),
(566, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,updated_at\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"address\",\"type\":\"asc\"}}', '2021-08-26 10:10:56', '2021-08-26 10:10:56'),
(567, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:10:59', '2021-08-26 10:10:59'),
(568, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:03', '2021-08-26 10:11:03'),
(569, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:05', '2021-08-26 10:11:05'),
(570, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:07', '2021-08-26 10:11:07'),
(571, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_order\":\"[{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-08-26 10:11:11', '2021-08-26 10:11:11'),
(572, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:11', '2021-08-26 10:11:11'),
(573, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-26 10:11:13', '2021-08-26 10:11:13'),
(574, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:14', '2021-08-26 10:11:14'),
(575, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:16', '2021-08-26 10:11:16'),
(576, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:17', '2021-08-26 10:11:17'),
(577, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:18', '2021-08-26 10:11:18'),
(578, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:19', '2021-08-26 10:11:19'),
(579, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:11:21', '2021-08-26 10:11:21'),
(580, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:12:53', '2021-08-26 10:12:53'),
(581, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:12:54', '2021-08-26 10:12:54'),
(582, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:12:58', '2021-08-26 10:12:58'),
(583, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_order\":\"[{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-08-26 10:13:03', '2021-08-26 10:13:03'),
(584, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:13:03', '2021-08-26 10:13:03'),
(585, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 10:13:13', '2021-08-26 10:13:13'),
(586, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 10:30:20', '2021-08-26 10:30:20'),
(587, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 10:30:35', '2021-08-26 10:30:35'),
(588, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 10:31:12', '2021-08-26 10:31:12'),
(589, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 10:32:09', '2021-08-26 10:32:09'),
(590, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 10:32:19', '2021-08-26 10:32:19'),
(591, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 10:32:43', '2021-08-26 10:32:43'),
(592, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:18:47', '2021-08-26 11:18:47'),
(593, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:20:27', '2021-08-26 11:20:27'),
(594, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-26 11:35:55', '2021-08-26 11:35:55'),
(595, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:35:57', '2021-08-26 11:35:57'),
(596, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:37:09', '2021-08-26 11:37:09'),
(597, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:37:19', '2021-08-26 11:37:19'),
(598, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:37:21', '2021-08-26 11:37:21'),
(599, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:37:26', '2021-08-26 11:37:26'),
(600, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:37:36', '2021-08-26 11:37:36'),
(601, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:37:48', '2021-08-26 11:37:48'),
(602, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:38:04', '2021-08-26 11:38:04'),
(603, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:38:05', '2021-08-26 11:38:05'),
(604, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:38:06', '2021-08-26 11:38:06'),
(605, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:38:13', '2021-08-26 11:38:13'),
(606, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:38:43', '2021-08-26 11:38:43'),
(607, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:38:52', '2021-08-26 11:38:52'),
(608, 1, 'admin/products', 'POST', '127.0.0.1', '{\"productName\":\"Test\",\"client_id\":\"1\",\"productDescription\":\"test\",\"productPrice\":\"0\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:39:36', '2021-08-26 11:39:36'),
(609, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-26 11:39:36', '2021-08-26 11:39:36'),
(610, 1, 'admin/products', 'POST', '127.0.0.1', '{\"productName\":\"Test\",\"client_id\":\"2\",\"productDescription\":\"test\",\"productPrice\":\"0\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\"}', '2021-08-26 11:40:06', '2021-08-26 11:40:06'),
(611, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:40:07', '2021-08-26 11:40:07'),
(612, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:40:35', '2021-08-26 11:40:35'),
(613, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:46:36', '2021-08-26 11:46:36'),
(614, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:46:47', '2021-08-26 11:46:47'),
(615, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:46:55', '2021-08-26 11:46:55'),
(616, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:46:57', '2021-08-26 11:46:57'),
(617, 1, 'admin/products', 'POST', '127.0.0.1', '{\"productName\":\"Test2\",\"client_id\":\"5\",\"productDescription\":\"product description\",\"productPrice\":\"200\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:47:16', '2021-08-26 11:47:16'),
(618, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:47:16', '2021-08-26 11:47:16'),
(619, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:47:19', '2021-08-26 11:47:19'),
(620, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"address\":\"adress\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:47:26', '2021-08-26 11:47:26'),
(621, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:47:31', '2021-08-26 11:47:31'),
(622, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:47:58', '2021-08-26 11:47:58'),
(623, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:48:09', '2021-08-26 11:48:09'),
(624, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:48:20', '2021-08-26 11:48:20'),
(625, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:48:28', '2021-08-26 11:48:28'),
(626, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:48:36', '2021-08-26 11:48:36'),
(627, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"productName\":\"Test2\",\"client_id\":\"4\",\"productDescription\":\"product description\",\"productPrice\":\"200\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:48:40', '2021-08-26 11:48:40'),
(628, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:48:40', '2021-08-26 11:48:40'),
(629, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:48:44', '2021-08-26 11:48:44'),
(630, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"productName\":\"Test2\",\"client_id\":\"2\",\"productDescription\":\"product description\",\"productPrice\":\"200\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:48:46', '2021-08-26 11:48:46'),
(631, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:48:46', '2021-08-26 11:48:46'),
(632, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:48:50', '2021-08-26 11:48:50'),
(633, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"productName\":\"Test2\",\"client_id\":\"3\",\"productDescription\":\"product description\",\"productPrice\":\"200\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:48:52', '2021-08-26 11:48:52'),
(634, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:48:52', '2021-08-26 11:48:52'),
(635, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:49:26', '2021-08-26 11:49:26'),
(636, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:49:29', '2021-08-26 11:49:29'),
(637, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:49:30', '2021-08-26 11:49:30'),
(638, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:49:32', '2021-08-26 11:49:32'),
(639, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:49:55', '2021-08-26 11:49:55'),
(640, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:50:02', '2021-08-26 11:50:02'),
(641, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:50:04', '2021-08-26 11:50:04'),
(642, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:50:16', '2021-08-26 11:50:16'),
(643, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:50:20', '2021-08-26 11:50:20'),
(644, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"productName\":\"Produit 3\",\"client_id\":\"2\",\"productDescription\":\"test\",\"productPrice\":\"0\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:50:29', '2021-08-26 11:50:29'),
(645, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:50:29', '2021-08-26 11:50:29'),
(646, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:51:12', '2021-08-26 11:51:12'),
(647, 1, 'admin/clients/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:51:19', '2021-08-26 11:51:19'),
(648, 1, 'admin/clients/7', 'PUT', '127.0.0.1', '{\"name\":\"Name id 7\",\"address\":\"test adress\\r\\neverything is alright\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:51:29', '2021-08-26 11:51:29'),
(649, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:51:29', '2021-08-26 11:51:29'),
(650, 1, 'admin/clients/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:51:44', '2021-08-26 11:51:44'),
(651, 1, 'admin/clients/6', 'PUT', '127.0.0.1', '{\"name\":\"name id 6\",\"address\":\"adress\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:51:57', '2021-08-26 11:51:57'),
(652, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:51:57', '2021-08-26 11:51:57'),
(653, 1, 'admin/clients/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:00', '2021-08-26 11:52:00'),
(654, 1, 'admin/clients/5', 'PUT', '127.0.0.1', '{\"name\":\"name id 5\",\"address\":\"new format exploiting\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:52:09', '2021-08-26 11:52:09'),
(655, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:52:09', '2021-08-26 11:52:09'),
(656, 1, 'admin/clients/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:13', '2021-08-26 11:52:13'),
(657, 1, 'admin/clients/4', 'PUT', '127.0.0.1', '{\"name\":\"name id 4\",\"address\":\"Testing input mask as in a phone number entry\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:52:16', '2021-08-26 11:52:16'),
(658, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:52:17', '2021-08-26 11:52:17'),
(659, 1, 'admin/clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:20', '2021-08-26 11:52:20'),
(660, 1, 'admin/clients/3', 'PUT', '127.0.0.1', '{\"name\":\"name id 3\",\"address\":\"test adresse\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:52:28', '2021-08-26 11:52:28'),
(661, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:52:28', '2021-08-26 11:52:28'),
(662, 1, 'admin/clients/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:32', '2021-08-26 11:52:32'),
(663, 1, 'admin/clients/7', 'PUT', '127.0.0.1', '{\"name\":\"name id 7\",\"address\":\"test adress\\r\\neverything is alright\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:52:35', '2021-08-26 11:52:35'),
(664, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:52:35', '2021-08-26 11:52:35'),
(665, 1, 'admin/clients/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:39', '2021-08-26 11:52:39'),
(666, 1, 'admin/clients/2', 'PUT', '127.0.0.1', '{\"name\":\"name id 2\",\"address\":\"New adress\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-26 11:52:45', '2021-08-26 11:52:45'),
(667, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-26 11:52:45', '2021-08-26 11:52:45'),
(668, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:47', '2021-08-26 11:52:47'),
(669, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:53', '2021-08-26 11:52:53'),
(670, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"productName\":\"Produit 2\",\"client_id\":\"2\",\"productDescription\":\"test\",\"productPrice\":\"0\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:52:55', '2021-08-26 11:52:55'),
(671, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:52:55', '2021-08-26 11:52:55'),
(672, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:52:58', '2021-08-26 11:52:58'),
(673, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"productName\":\"Produit 3\",\"client_id\":\"3\",\"productDescription\":\"product description\",\"productPrice\":\"200\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:53:05', '2021-08-26 11:53:05'),
(674, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:53:05', '2021-08-26 11:53:05'),
(675, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:53:10', '2021-08-26 11:53:10'),
(676, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"productName\":\"Produit 2\",\"client_id\":\"2\",\"productDescription\":\"test\",\"productPrice\":\"250\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-26 11:53:21', '2021-08-26 11:53:21'),
(677, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:53:21', '2021-08-26 11:53:21'),
(678, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:53:30', '2021-08-26 11:53:30'),
(679, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:53:31', '2021-08-26 11:53:31'),
(680, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:54:18', '2021-08-26 11:54:18'),
(681, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productName\":\"pro\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:21', '2021-08-26 11:54:21'),
(682, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productName\":\"2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:24', '2021-08-26 11:54:24'),
(683, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productName\":\"3\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:27', '2021-08-26 11:54:27'),
(684, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productName\":\"0\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:30', '2021-08-26 11:54:30'),
(685, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:33', '2021-08-26 11:54:33'),
(686, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productName\":\"5\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:35', '2021-08-26 11:54:35'),
(687, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:37', '2021-08-26 11:54:37'),
(688, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 11:54:48', '2021-08-26 11:54:48'),
(689, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:51', '2021-08-26 11:54:51'),
(690, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:54', '2021-08-26 11:54:54'),
(691, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"2\"}', '2021-08-26 11:54:56', '2021-08-26 11:54:56'),
(692, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"1\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:54:59', '2021-08-26 11:54:59'),
(693, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"1\"}', '2021-08-26 11:55:09', '2021-08-26 11:55:09'),
(694, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:55:12', '2021-08-26 11:55:12'),
(695, 1, 'admin/products', 'POST', '127.0.0.1', '{\"productName\":\"Produit 4\",\"client_id\":\"4\",\"productDescription\":\"product description 4\",\"productPrice\":\"300\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products?client_name=2&client.name=1\"}', '2021-08-26 11:55:25', '2021-08-26 11:55:25'),
(696, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"1\"}', '2021-08-26 11:55:25', '2021-08-26 11:55:25'),
(697, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:55:29', '2021-08-26 11:55:29'),
(698, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"productName\":\"Produit 2\",\"client_id\":\"2\",\"productDescription\":\"product description 2\",\"productPrice\":\"250\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products?client_name=2&client.name=1\"}', '2021-08-26 11:55:40', '2021-08-26 11:55:40'),
(699, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"1\"}', '2021-08-26 11:55:40', '2021-08-26 11:55:40'),
(700, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:55:42', '2021-08-26 11:55:42'),
(701, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"productName\":\"Produit 3\",\"client_id\":\"3\",\"productDescription\":\"product description 3\",\"productPrice\":\"200\",\"_token\":\"uGqCBmjco7nUtZrR9KH00mrmbuLSwbpqooOw7DJZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products?client_name=2&client.name=1\"}', '2021-08-26 11:55:44', '2021-08-26 11:55:44'),
(702, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"1\"}', '2021-08-26 11:55:44', '2021-08-26 11:55:44'),
(703, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:55:48', '2021-08-26 11:55:48'),
(704, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"productName\":\"3\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:55:54', '2021-08-26 11:55:54'),
(705, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"productName\":\"3\"}', '2021-08-26 11:56:00', '2021-08-26 11:56:00'),
(706, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"productName\":\"3\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:56:02', '2021-08-26 11:56:02'),
(707, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:56:04', '2021-08-26 11:56:04'),
(708, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\"}', '2021-08-26 11:56:15', '2021-08-26 11:56:15'),
(709, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"id\":\"name id 2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:56:23', '2021-08-26 11:56:23'),
(710, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"_pjax\":\"#pjax-container\",\"id\":\"2\"}', '2021-08-26 11:56:27', '2021-08-26 11:56:27'),
(711, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"id\":\"2\"}', '2021-08-26 11:56:49', '2021-08-26 11:56:49'),
(712, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"id\":\"2\"}', '2021-08-26 11:56:54', '2021-08-26 11:56:54'),
(713, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"id\":\"2\"}', '2021-08-26 11:56:57', '2021-08-26 11:56:57'),
(714, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:56:59', '2021-08-26 11:56:59'),
(715, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\"}', '2021-08-26 11:57:01', '2021-08-26 11:57:01'),
(716, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"4\"}', '2021-08-26 11:57:02', '2021-08-26 11:57:02');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(717, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":null,\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:57:05', '2021-08-26 11:57:05'),
(718, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:57:08', '2021-08-26 11:57:08'),
(719, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:57:34', '2021-08-26 11:57:34'),
(720, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:57:37', '2021-08-26 11:57:37'),
(721, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:58:45', '2021-08-26 11:58:45'),
(722, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:58:56', '2021-08-26 11:58:56'),
(723, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:59:04', '2021-08-26 11:59:04'),
(724, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:59:06', '2021-08-26 11:59:06'),
(725, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:59:13', '2021-08-26 11:59:13'),
(726, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:59:18', '2021-08-26 11:59:18'),
(727, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:59:18', '2021-08-26 11:59:18'),
(728, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 11:59:23', '2021-08-26 11:59:23'),
(729, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 11:59:26', '2021-08-26 11:59:26'),
(730, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 12:00:39', '2021-08-26 12:00:39'),
(731, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"productPrice\":{\"start\":\"100\",\"end\":\"300\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:00:46', '2021-08-26 12:00:46'),
(732, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"productPrice\":{\"start\":\"250\",\"end\":\"300\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:00:51', '2021-08-26 12:00:51'),
(733, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:05:11', '2021-08-26 12:05:11'),
(734, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 12:14:24', '2021-08-26 12:14:24'),
(735, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:15:03', '2021-08-26 12:15:03'),
(736, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\"}', '2021-08-26 12:15:21', '2021-08-26 12:15:21'),
(737, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name id 2\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:15:23', '2021-08-26 12:15:23'),
(738, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:15:34', '2021-08-26 12:15:34'),
(739, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:15:56', '2021-08-26 12:15:56'),
(740, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:16:57', '2021-08-26 12:16:57'),
(741, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:16:58', '2021-08-26 12:16:58'),
(742, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:17:22', '2021-08-26 12:17:22'),
(743, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:17:24', '2021-08-26 12:17:24'),
(744, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:26:42', '2021-08-26 12:26:42'),
(745, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:26:45', '2021-08-26 12:26:45'),
(746, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:26:46', '2021-08-26 12:26:46'),
(747, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:28:50', '2021-08-26 12:28:50'),
(748, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:38:13', '2021-08-26 12:38:13'),
(749, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:39:13', '2021-08-26 12:39:13'),
(750, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:39:22', '2021-08-26 12:39:22'),
(751, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:39:23', '2021-08-26 12:39:23'),
(752, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:39:25', '2021-08-26 12:39:25'),
(753, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:40:28', '2021-08-26 12:40:28'),
(754, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:40:35', '2021-08-26 12:40:35'),
(755, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:40:44', '2021-08-26 12:40:44'),
(756, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:40:46', '2021-08-26 12:40:46'),
(757, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:40:50', '2021-08-26 12:40:50'),
(758, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:40:59', '2021-08-26 12:40:59'),
(759, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:41:06', '2021-08-26 12:41:06'),
(760, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:42:02', '2021-08-26 12:42:02'),
(761, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 12:45:20', '2021-08-26 12:45:20'),
(762, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:45:22', '2021-08-26 12:45:22'),
(763, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:45:23', '2021-08-26 12:45:23'),
(764, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:46:00', '2021-08-26 12:46:00'),
(765, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:46:13', '2021-08-26 12:46:13'),
(766, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 12:46:28', '2021-08-26 12:46:28'),
(767, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:30', '2021-08-26 12:46:30'),
(768, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:31', '2021-08-26 12:46:31'),
(769, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:32', '2021-08-26 12:46:32'),
(770, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:33', '2021-08-26 12:46:33'),
(771, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:33', '2021-08-26 12:46:33'),
(772, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:34', '2021-08-26 12:46:34'),
(773, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:35', '2021-08-26 12:46:35'),
(774, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:38', '2021-08-26 12:46:38'),
(775, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:38', '2021-08-26 12:46:38'),
(776, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:41', '2021-08-26 12:46:41'),
(777, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:41', '2021-08-26 12:46:41'),
(778, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:43', '2021-08-26 12:46:43'),
(779, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:46:44', '2021-08-26 12:46:44'),
(780, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:47:13', '2021-08-26 12:47:13'),
(781, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:47:18', '2021-08-26 12:47:18'),
(782, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:50:10', '2021-08-26 12:50:10'),
(783, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:50:12', '2021-08-26 12:50:12'),
(784, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:53:03', '2021-08-26 12:53:03'),
(785, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:05', '2021-08-26 12:53:05'),
(786, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:06', '2021-08-26 12:53:06'),
(787, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:06', '2021-08-26 12:53:06'),
(788, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:07', '2021-08-26 12:53:07'),
(789, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:08', '2021-08-26 12:53:08'),
(790, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:08', '2021-08-26 12:53:08'),
(791, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:09', '2021-08-26 12:53:09'),
(792, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:53:20', '2021-08-26 12:53:20'),
(793, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:54:46', '2021-08-26 12:54:46'),
(794, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:54:49', '2021-08-26 12:54:49'),
(795, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:54:49', '2021-08-26 12:54:49'),
(796, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:55:32', '2021-08-26 12:55:32'),
(797, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:57:48', '2021-08-26 12:57:48'),
(798, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:57:55', '2021-08-26 12:57:55'),
(799, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:57:55', '2021-08-26 12:57:55'),
(800, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:57:56', '2021-08-26 12:57:56'),
(801, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:57:57', '2021-08-26 12:57:57'),
(802, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:58:06', '2021-08-26 12:58:06'),
(803, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:58:07', '2021-08-26 12:58:07'),
(804, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 12:58:15', '2021-08-26 12:58:15'),
(805, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:17', '2021-08-26 12:58:17'),
(806, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:17', '2021-08-26 12:58:17'),
(807, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:18', '2021-08-26 12:58:18'),
(808, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:19', '2021-08-26 12:58:19'),
(809, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:20', '2021-08-26 12:58:20'),
(810, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:21', '2021-08-26 12:58:21'),
(811, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:21', '2021-08-26 12:58:21'),
(812, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:22', '2021-08-26 12:58:22'),
(813, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 12:58:22', '2021-08-26 12:58:22'),
(814, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 12:58:44', '2021-08-26 12:58:44'),
(815, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 12:59:48', '2021-08-26 12:59:48'),
(816, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:00:03', '2021-08-26 13:00:03'),
(817, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:00:04', '2021-08-26 13:00:04'),
(818, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:00:26', '2021-08-26 13:00:26'),
(819, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:03:50', '2021-08-26 13:03:50'),
(820, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:04:04', '2021-08-26 13:04:04'),
(821, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:05:29', '2021-08-26 13:05:29'),
(822, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:08:10', '2021-08-26 13:08:10'),
(823, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:24', '2021-08-26 13:08:24'),
(824, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:26', '2021-08-26 13:08:26'),
(825, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:34', '2021-08-26 13:08:34'),
(826, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:35', '2021-08-26 13:08:35'),
(827, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:36', '2021-08-26 13:08:36'),
(828, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:37', '2021-08-26 13:08:37'),
(829, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:38', '2021-08-26 13:08:38'),
(830, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:39', '2021-08-26 13:08:39'),
(831, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:40', '2021-08-26 13:08:40'),
(832, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:41', '2021-08-26 13:08:41'),
(833, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:42', '2021-08-26 13:08:42'),
(834, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:44', '2021-08-26 13:08:44'),
(835, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:45', '2021-08-26 13:08:45'),
(836, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:46', '2021-08-26 13:08:46'),
(837, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:08:47', '2021-08-26 13:08:47'),
(838, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 13:09:17', '2021-08-26 13:09:17'),
(839, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"client_name\":\"name\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:09:25', '2021-08-26 13:09:25'),
(840, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"client_name\":\"2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:09:30', '2021-08-26 13:09:30'),
(841, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"client_name\":\"2\"}', '2021-08-26 13:10:50', '2021-08-26 13:10:50'),
(842, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"client_name\":\"2\",\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:10:53', '2021-08-26 13:10:53'),
(843, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"client_name\":\"2\"}', '2021-08-26 13:14:37', '2021-08-26 13:14:37'),
(844, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"client_name\":\"2\"}', '2021-08-26 13:14:40', '2021-08-26 13:14:40'),
(845, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"client_name\":\"2\"}', '2021-08-26 13:14:46', '2021-08-26 13:14:46'),
(846, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"client_name\":\"2\"}', '2021-08-26 13:14:47', '2021-08-26 13:14:47'),
(847, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:14:51', '2021-08-26 13:14:51'),
(848, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:14:52', '2021-08-26 13:14:52'),
(849, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 13:14:54', '2021-08-26 13:14:54'),
(850, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 13:14:56', '2021-08-26 13:14:56'),
(851, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:14:57', '2021-08-26 13:14:57'),
(852, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:14:58', '2021-08-26 13:14:58'),
(853, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:14:59', '2021-08-26 13:14:59'),
(854, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:15:01', '2021-08-26 13:15:01'),
(855, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:15:03', '2021-08-26 13:15:03'),
(856, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:15:09', '2021-08-26 13:15:09'),
(857, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:15:10', '2021-08-26 13:15:10'),
(858, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:15:12', '2021-08-26 13:15:12'),
(859, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:15:19', '2021-08-26 13:15:19'),
(860, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:15:21', '2021-08-26 13:15:21'),
(861, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:15:22', '2021-08-26 13:15:22'),
(862, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:15:23', '2021-08-26 13:15:23'),
(863, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:25:05', '2021-08-26 13:25:05'),
(864, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:25:06', '2021-08-26 13:25:06'),
(865, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:25:07', '2021-08-26 13:25:07'),
(866, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:25:08', '2021-08-26 13:25:08'),
(867, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:25:21', '2021-08-26 13:25:21'),
(868, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:25:23', '2021-08-26 13:25:23'),
(869, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:25:27', '2021-08-26 13:25:27'),
(870, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:25:29', '2021-08-26 13:25:29'),
(871, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"clientname\",\"type\":\"desc\"}}', '2021-08-26 13:26:15', '2021-08-26 13:26:15'),
(872, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 13:26:24', '2021-08-26 13:26:24'),
(873, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:27:31', '2021-08-26 13:27:31'),
(874, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:27:33', '2021-08-26 13:27:33'),
(875, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:27:57', '2021-08-26 13:27:57'),
(876, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 13:28:56', '2021-08-26 13:28:56'),
(877, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:29:03', '2021-08-26 13:29:03'),
(878, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 13:34:18', '2021-08-26 13:34:18'),
(879, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 13:34:34', '2021-08-26 13:34:34'),
(880, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:34:36', '2021-08-26 13:34:36'),
(881, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:35:18', '2021-08-26 13:35:18'),
(882, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 13:35:18', '2021-08-26 13:35:18'),
(883, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 13:35:25', '2021-08-26 13:35:25'),
(884, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 13:35:27', '2021-08-26 13:35:27'),
(885, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 13:35:48', '2021-08-26 13:35:48'),
(886, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:05:37', '2021-08-26 14:05:37'),
(887, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 14:06:02', '2021-08-26 14:06:02'),
(888, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:06:04', '2021-08-26 14:06:04'),
(889, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:06:05', '2021-08-26 14:06:05'),
(890, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:06:07', '2021-08-26 14:06:07'),
(891, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:06:11', '2021-08-26 14:06:11'),
(892, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:06:24', '2021-08-26 14:06:24'),
(893, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:06:25', '2021-08-26 14:06:25'),
(894, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:08:04', '2021-08-26 14:08:04'),
(895, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:08:07', '2021-08-26 14:08:07'),
(896, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:08:08', '2021-08-26 14:08:08'),
(897, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:11:14', '2021-08-26 14:11:14'),
(898, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:11:28', '2021-08-26 14:11:28'),
(899, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:11:37', '2021-08-26 14:11:37'),
(900, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:11:38', '2021-08-26 14:11:38'),
(901, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:11:39', '2021-08-26 14:11:39'),
(902, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:11:56', '2021-08-26 14:11:56'),
(903, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:12:04', '2021-08-26 14:12:04'),
(904, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:12:20', '2021-08-26 14:12:20'),
(905, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:13:04', '2021-08-26 14:13:04'),
(906, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:13:24', '2021-08-26 14:13:24'),
(907, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:25', '2021-08-26 14:13:25'),
(908, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:26', '2021-08-26 14:13:26'),
(909, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:27', '2021-08-26 14:13:27'),
(910, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:28', '2021-08-26 14:13:28'),
(911, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:29', '2021-08-26 14:13:29'),
(912, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:30', '2021-08-26 14:13:30'),
(913, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:13:30', '2021-08-26 14:13:30'),
(914, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:17:17', '2021-08-26 14:17:17'),
(915, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:17:19', '2021-08-26 14:17:19'),
(916, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:17:27', '2021-08-26 14:17:27'),
(917, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:18:32', '2021-08-26 14:18:32'),
(918, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:21:59', '2021-08-26 14:21:59'),
(919, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:22:18', '2021-08-26 14:22:18'),
(920, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:22:21', '2021-08-26 14:22:21'),
(921, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:22:21', '2021-08-26 14:22:21'),
(922, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:22:22', '2021-08-26 14:22:22'),
(923, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:22:23', '2021-08-26 14:22:23'),
(924, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:22:24', '2021-08-26 14:22:24'),
(925, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:24:28', '2021-08-26 14:24:28'),
(926, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:24:30', '2021-08-26 14:24:30'),
(927, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:24:33', '2021-08-26 14:24:33'),
(928, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:24:36', '2021-08-26 14:24:36'),
(929, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:28:28', '2021-08-26 14:28:28'),
(930, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:30:12', '2021-08-26 14:30:12'),
(931, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:30:14', '2021-08-26 14:30:14'),
(932, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:30:15', '2021-08-26 14:30:15'),
(933, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:33:34', '2021-08-26 14:33:34'),
(934, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-26 14:36:29', '2021-08-26 14:36:29'),
(935, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:36:32', '2021-08-26 14:36:32'),
(936, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:36:37', '2021-08-26 14:36:37'),
(937, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:36:38', '2021-08-26 14:36:38'),
(938, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:38:34', '2021-08-26 14:38:34'),
(939, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:40:07', '2021-08-26 14:40:07'),
(940, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:40:50', '2021-08-26 14:40:50'),
(941, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:41:07', '2021-08-26 14:41:07'),
(942, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:41:22', '2021-08-26 14:41:22'),
(943, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:41:23', '2021-08-26 14:41:23'),
(944, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:41:31', '2021-08-26 14:41:31'),
(945, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:43:17', '2021-08-26 14:43:17'),
(946, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:43:27', '2021-08-26 14:43:27'),
(947, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:44:02', '2021-08-26 14:44:02'),
(948, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:44:28', '2021-08-26 14:44:28'),
(949, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:44:47', '2021-08-26 14:44:47'),
(950, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:46:19', '2021-08-26 14:46:19'),
(951, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:55:25', '2021-08-26 14:55:25'),
(952, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-26 14:55:27', '2021-08-26 14:55:27'),
(953, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 14:55:29', '2021-08-26 14:55:29'),
(954, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:03:44', '2021-08-26 15:03:44'),
(955, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:45', '2021-08-26 15:03:45'),
(956, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:45', '2021-08-26 15:03:45'),
(957, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:45', '2021-08-26 15:03:45'),
(958, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:45', '2021-08-26 15:03:45'),
(959, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:45', '2021-08-26 15:03:45'),
(960, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:45', '2021-08-26 15:03:45'),
(961, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:46', '2021-08-26 15:03:46'),
(962, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:46', '2021-08-26 15:03:46'),
(963, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:46', '2021-08-26 15:03:46'),
(964, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:46', '2021-08-26 15:03:46'),
(965, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:46', '2021-08-26 15:03:46'),
(966, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(967, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(968, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(969, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(970, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(971, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(972, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:47', '2021-08-26 15:03:47'),
(973, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:48', '2021-08-26 15:03:48'),
(974, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:48', '2021-08-26 15:03:48'),
(975, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:48', '2021-08-26 15:03:48'),
(976, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:48', '2021-08-26 15:03:48'),
(977, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:48', '2021-08-26 15:03:48'),
(978, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:03:54', '2021-08-26 15:03:54'),
(979, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:04:02', '2021-08-26 15:04:02'),
(980, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:04:08', '2021-08-26 15:04:08'),
(981, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"a\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:04:10', '2021-08-26 15:04:10'),
(982, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"a\"}}', '2021-08-26 15:04:28', '2021-08-26 15:04:28'),
(983, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"a\"}}', '2021-08-26 15:04:30', '2021-08-26 15:04:30'),
(984, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:04:32', '2021-08-26 15:04:32'),
(985, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"name\"}}', '2021-08-26 15:04:33', '2021-08-26 15:04:33'),
(986, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"name\"}}', '2021-08-26 15:36:34', '2021-08-26 15:36:34'),
(987, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"name\"}}', '2021-08-26 15:38:57', '2021-08-26 15:38:57'),
(988, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"name\"}}', '2021-08-26 15:39:12', '2021-08-26 15:39:12'),
(989, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:13', '2021-08-26 15:39:13'),
(990, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-26 15:39:23', '2021-08-26 15:39:23'),
(991, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:25', '2021-08-26 15:39:25'),
(992, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:26', '2021-08-26 15:39:26'),
(993, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:26', '2021-08-26 15:39:26'),
(994, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:27', '2021-08-26 15:39:27'),
(995, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:28', '2021-08-26 15:39:28'),
(996, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:29', '2021-08-26 15:39:29'),
(997, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-26 15:39:30', '2021-08-26 15:39:30'),
(998, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 07:45:50', '2021-08-27 07:45:50'),
(999, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:50:25', '2021-08-27 07:50:25'),
(1000, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:50:51', '2021-08-27 07:50:51'),
(1001, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:54:38', '2021-08-27 07:54:38'),
(1002, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productPrice\":{\"start\":\"250\",\"end\":null},\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:54:54', '2021-08-27 07:54:54'),
(1003, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:54:56', '2021-08-27 07:54:56'),
(1004, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productPrice\":{\"start\":\"245\",\"end\":null},\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:55:03', '2021-08-27 07:55:03'),
(1005, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:55:05', '2021-08-27 07:55:05'),
(1006, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 07:57:09', '2021-08-27 07:57:09'),
(1007, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"clientname\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:57:11', '2021-08-27 07:57:11'),
(1008, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:57:17', '2021-08-27 07:57:17'),
(1009, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 07:58:41', '2021-08-27 07:58:41'),
(1010, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 07:58:58', '2021-08-27 07:58:58'),
(1011, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 07:59:06', '2021-08-27 07:59:06'),
(1012, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 07:59:15', '2021-08-27 07:59:15'),
(1013, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:59:17', '2021-08-27 07:59:17'),
(1014, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 07:59:33', '2021-08-27 07:59:33'),
(1015, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 07:59:35', '2021-08-27 07:59:35'),
(1016, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 07:59:36', '2021-08-27 07:59:36'),
(1017, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:00:16', '2021-08-27 08:00:16'),
(1018, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:00:26', '2021-08-27 08:00:26'),
(1019, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:02:19', '2021-08-27 08:02:19'),
(1020, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:02:27', '2021-08-27 08:02:27'),
(1021, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:02:59', '2021-08-27 08:02:59'),
(1022, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:08', '2021-08-27 08:03:08'),
(1023, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productPrice\":{\"start\":\"245\",\"end\":null}}', '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(1024, 1, 'admin/products', 'GET', '127.0.0.1', '{\"productPrice\":{\"start\":\"245\",\"end\":null}}', '2021-08-27 08:03:27', '2021-08-27 08:03:27'),
(1025, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:31', '2021-08-27 08:03:31'),
(1026, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:42', '2021-08-27 08:03:42'),
(1027, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:03:43', '2021-08-27 08:03:43'),
(1028, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:44', '2021-08-27 08:03:44'),
(1029, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:03:47', '2021-08-27 08:03:47'),
(1030, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:48', '2021-08-27 08:03:48'),
(1031, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:03:48', '2021-08-27 08:03:48'),
(1032, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:03:50', '2021-08-27 08:03:50'),
(1033, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:50', '2021-08-27 08:03:50'),
(1034, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:03:54', '2021-08-27 08:03:54'),
(1035, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 08:03:54', '2021-08-27 08:03:54'),
(1036, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 08:04:01', '2021-08-27 08:04:01'),
(1037, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:04:05', '2021-08-27 08:04:05'),
(1038, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:06:07', '2021-08-27 08:06:07'),
(1039, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:06:41', '2021-08-27 08:06:41'),
(1040, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:07:28', '2021-08-27 08:07:28'),
(1041, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:09:18', '2021-08-27 08:09:18'),
(1042, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:09:27', '2021-08-27 08:09:27'),
(1043, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:09:35', '2021-08-27 08:09:35'),
(1044, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:10:42', '2021-08-27 08:10:42');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1045, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:11:09', '2021-08-27 08:11:09'),
(1046, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:11:21', '2021-08-27 08:11:21'),
(1047, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:12:21', '2021-08-27 08:12:21'),
(1048, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:12:33', '2021-08-27 08:12:33'),
(1049, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:12:40', '2021-08-27 08:12:40'),
(1050, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:12:55', '2021-08-27 08:12:55'),
(1051, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:13:01', '2021-08-27 08:13:01'),
(1052, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:13:14', '2021-08-27 08:13:14'),
(1053, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:14:13', '2021-08-27 08:14:13'),
(1054, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:14:25', '2021-08-27 08:14:25'),
(1055, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:27:13', '2021-08-27 08:27:13'),
(1056, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:27:20', '2021-08-27 08:27:20'),
(1057, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:27:24', '2021-08-27 08:27:24'),
(1058, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:27:25', '2021-08-27 08:27:25'),
(1059, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:27:40', '2021-08-27 08:27:40'),
(1060, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:28:24', '2021-08-27 08:28:24'),
(1061, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:28:26', '2021-08-27 08:28:26'),
(1062, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:28:59', '2021-08-27 08:28:59'),
(1063, 1, 'admin/products', 'POST', '127.0.0.1', '{\"productName\":\"Produit 4\",\"client_id\":\"7\",\"productDescription\":\"product description 4\",\"productPrice\":\"500\",\"_token\":\"WlEutRN8BZY5mX6617GsY632umywwW7zmBKalRTG\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-27 08:29:26', '2021-08-27 08:29:26'),
(1064, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:29:26', '2021-08-27 08:29:26'),
(1065, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:29:33', '2021-08-27 08:29:33'),
(1066, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 08:45:18', '2021-08-27 08:45:18'),
(1067, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:45:32', '2021-08-27 08:45:32'),
(1068, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:47:04', '2021-08-27 08:47:04'),
(1069, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:47:14', '2021-08-27 08:47:14'),
(1070, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:47:37', '2021-08-27 08:47:37'),
(1071, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:47:43', '2021-08-27 08:47:43'),
(1072, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:49:48', '2021-08-27 08:49:48'),
(1073, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:50:19', '2021-08-27 08:50:19'),
(1074, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:50:40', '2021-08-27 08:50:40'),
(1075, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:51:09', '2021-08-27 08:51:09'),
(1076, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 08:51:59', '2021-08-27 08:51:59'),
(1077, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:05:35', '2021-08-27 09:05:35'),
(1078, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:05:43', '2021-08-27 09:05:43'),
(1079, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:05:48', '2021-08-27 09:05:48'),
(1080, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:06:25', '2021-08-27 09:06:25'),
(1081, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:06:34', '2021-08-27 09:06:34'),
(1082, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:08:42', '2021-08-27 09:08:42'),
(1083, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:12:06', '2021-08-27 09:12:06'),
(1084, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:12:08', '2021-08-27 09:12:08'),
(1085, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:12:10', '2021-08-27 09:12:10'),
(1086, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:12:11', '2021-08-27 09:12:11'),
(1087, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:12:26', '2021-08-27 09:12:26'),
(1088, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:13:13', '2021-08-27 09:13:13'),
(1089, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:13:25', '2021-08-27 09:13:25'),
(1090, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:13:39', '2021-08-27 09:13:39'),
(1091, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:14:03', '2021-08-27 09:14:03'),
(1092, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:14:22', '2021-08-27 09:14:22'),
(1093, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:14:45', '2021-08-27 09:14:45'),
(1094, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:15:04', '2021-08-27 09:15:04'),
(1095, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:15:25', '2021-08-27 09:15:25'),
(1096, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:16:17', '2021-08-27 09:16:17'),
(1097, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:16:23', '2021-08-27 09:16:23'),
(1098, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:16:59', '2021-08-27 09:16:59'),
(1099, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:17:10', '2021-08-27 09:17:10'),
(1100, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:17:27', '2021-08-27 09:17:27'),
(1101, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:17:38', '2021-08-27 09:17:38'),
(1102, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:18:19', '2021-08-27 09:18:19'),
(1103, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:19:04', '2021-08-27 09:19:04'),
(1104, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:19:07', '2021-08-27 09:19:07'),
(1105, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 09:21:30', '2021-08-27 09:21:30'),
(1106, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 09:24:46', '2021-08-27 09:24:46'),
(1107, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 09:24:48', '2021-08-27 09:24:48'),
(1108, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:24:50', '2021-08-27 09:24:50'),
(1109, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:27:52', '2021-08-27 09:27:52'),
(1110, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:32:32', '2021-08-27 09:32:32'),
(1111, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:32:36', '2021-08-27 09:32:36'),
(1112, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:33:04', '2021-08-27 09:33:04'),
(1113, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:40:08', '2021-08-27 09:40:08'),
(1114, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 09:40:37', '2021-08-27 09:40:37'),
(1115, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:40:39', '2021-08-27 09:40:39'),
(1116, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:43:09', '2021-08-27 09:43:09'),
(1117, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:43:11', '2021-08-27 09:43:11'),
(1118, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:49:29', '2021-08-27 09:49:29'),
(1119, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:49:31', '2021-08-27 09:49:31'),
(1120, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:50:46', '2021-08-27 09:50:46'),
(1121, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:50:47', '2021-08-27 09:50:47'),
(1122, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:51:15', '2021-08-27 09:51:15'),
(1123, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:51:45', '2021-08-27 09:51:45'),
(1124, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:52:15', '2021-08-27 09:52:15'),
(1125, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:52:34', '2021-08-27 09:52:34'),
(1126, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:53:20', '2021-08-27 09:53:20'),
(1127, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:54:50', '2021-08-27 09:54:50'),
(1128, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:55:11', '2021-08-27 09:55:11'),
(1129, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:55:37', '2021-08-27 09:55:37'),
(1130, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:55:41', '2021-08-27 09:55:41'),
(1131, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 09:55:43', '2021-08-27 09:55:43'),
(1132, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:56:09', '2021-08-27 09:56:09'),
(1133, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:56:26', '2021-08-27 09:56:26'),
(1134, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:56:51', '2021-08-27 09:56:51'),
(1135, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:57:19', '2021-08-27 09:57:19'),
(1136, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:57:24', '2021-08-27 09:57:24'),
(1137, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:58:20', '2021-08-27 09:58:20'),
(1138, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 09:58:56', '2021-08-27 09:58:56'),
(1139, 1, 'admin/products/client.name', 'GET', '127.0.0.1', '[]', '2021-08-27 09:58:57', '2021-08-27 09:58:57'),
(1140, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:01:49', '2021-08-27 10:01:49'),
(1141, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:02:12', '2021-08-27 10:02:12'),
(1142, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:03:50', '2021-08-27 10:03:50'),
(1143, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:04:35', '2021-08-27 10:04:35'),
(1144, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:04:43', '2021-08-27 10:04:43'),
(1145, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:05:18', '2021-08-27 10:05:18'),
(1146, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:05:29', '2021-08-27 10:05:29'),
(1147, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:06:33', '2021-08-27 10:06:33'),
(1148, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:08:27', '2021-08-27 10:08:27'),
(1149, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 10:08:50', '2021-08-27 10:08:50'),
(1150, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:19:36', '2021-08-27 11:19:36'),
(1151, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:20:16', '2021-08-27 11:20:16'),
(1152, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:20:30', '2021-08-27 11:20:30'),
(1153, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:21:01', '2021-08-27 11:21:01'),
(1154, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:21:09', '2021-08-27 11:21:09'),
(1155, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:21:24', '2021-08-27 11:21:24'),
(1156, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:21:40', '2021-08-27 11:21:40'),
(1157, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:22:44', '2021-08-27 11:22:44'),
(1158, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:22:57', '2021-08-27 11:22:57'),
(1159, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:23:20', '2021-08-27 11:23:20'),
(1160, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:25:04', '2021-08-27 11:25:04'),
(1161, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:25:06', '2021-08-27 11:25:06'),
(1162, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:25:18', '2021-08-27 11:25:18'),
(1163, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:34:33', '2021-08-27 11:34:33'),
(1164, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 11:42:56', '2021-08-27 11:42:56'),
(1165, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:02:37', '2021-08-27 12:02:37'),
(1166, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:02:54', '2021-08-27 12:02:54'),
(1167, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:10:36', '2021-08-27 12:10:36'),
(1168, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:11:09', '2021-08-27 12:11:09'),
(1169, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:11:22', '2021-08-27 12:11:22'),
(1170, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:11:24', '2021-08-27 12:11:24'),
(1171, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 12:11:27', '2021-08-27 12:11:27'),
(1172, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:11:28', '2021-08-27 12:11:28'),
(1173, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 12:12:38', '2021-08-27 12:12:38'),
(1174, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 12:13:16', '2021-08-27 12:13:16'),
(1175, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:13:18', '2021-08-27 12:13:18'),
(1176, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 12:13:44', '2021-08-27 12:13:44'),
(1177, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:13:45', '2021-08-27 12:13:45'),
(1178, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"lol\"}}', '2021-08-27 12:13:46', '2021-08-27 12:13:46'),
(1179, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\",\"cast\":\"lol\"}}', '2021-08-27 12:14:03', '2021-08-27 12:14:03'),
(1180, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:14:06', '2021-08-27 12:14:06'),
(1181, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-27 12:14:07', '2021-08-27 12:14:07'),
(1182, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:14:41', '2021-08-27 12:14:41'),
(1183, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 12:14:55', '2021-08-27 12:14:55'),
(1184, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:15:04', '2021-08-27 12:15:04'),
(1185, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:15:07', '2021-08-27 12:15:07'),
(1186, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:15:10', '2021-08-27 12:15:10'),
(1187, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:15:19', '2021-08-27 12:15:19'),
(1188, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:15:38', '2021-08-27 12:15:38'),
(1189, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:15:45', '2021-08-27 12:15:45'),
(1190, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:16:34', '2021-08-27 12:16:34'),
(1191, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:16:38', '2021-08-27 12:16:38'),
(1192, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:20:39', '2021-08-27 12:20:39'),
(1193, 1, 'admin/products', 'POST', '127.0.0.1', '{\"client_id\":\"4\",\"productName\":\"Produit 5\",\"productDescription\":\"produit description 5\",\"productPrice\":\"50.05\",\"_token\":\"WlEutRN8BZY5mX6617GsY632umywwW7zmBKalRTG\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-27 12:22:17', '2021-08-27 12:22:17'),
(1194, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 12:22:17', '2021-08-27 12:22:17'),
(1195, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:29:04', '2021-08-27 12:29:04'),
(1196, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:29:26', '2021-08-27 12:29:26'),
(1197, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:29:28', '2021-08-27 12:29:28'),
(1198, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:29:35', '2021-08-27 12:29:35'),
(1199, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:29:37', '2021-08-27 12:29:37'),
(1200, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:29:39', '2021-08-27 12:29:39'),
(1201, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:30:51', '2021-08-27 12:30:51'),
(1202, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:30:59', '2021-08-27 12:30:59'),
(1203, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:31:00', '2021-08-27 12:31:00'),
(1204, 1, 'admin/clients', 'POST', '127.0.0.1', '{\"name\":\"Moncef\",\"address\":\"Moncef adress\",\"_token\":\"WlEutRN8BZY5mX6617GsY632umywwW7zmBKalRTG\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/clients\"}', '2021-08-27 12:31:12', '2021-08-27 12:31:12'),
(1205, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 12:31:12', '2021-08-27 12:31:12'),
(1206, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:31:14', '2021-08-27 12:31:14'),
(1207, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:31:15', '2021-08-27 12:31:15'),
(1208, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:31:23', '2021-08-27 12:31:23'),
(1209, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:31:58', '2021-08-27 12:31:58'),
(1210, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:32:16', '2021-08-27 12:32:16'),
(1211, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:32:17', '2021-08-27 12:32:17'),
(1212, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:32:18', '2021-08-27 12:32:18'),
(1213, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:32:20', '2021-08-27 12:32:20'),
(1214, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:35:46', '2021-08-27 12:35:46'),
(1215, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:35:47', '2021-08-27 12:35:47'),
(1216, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:35:48', '2021-08-27 12:35:48'),
(1217, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 12:36:54', '2021-08-27 12:36:54'),
(1218, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:37:35', '2021-08-27 12:37:35'),
(1219, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-27 12:37:35', '2021-08-27 12:37:35'),
(1220, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2021-08-27 12:37:43', '2021-08-27 12:37:43'),
(1221, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 12:46:35', '2021-08-27 12:46:35'),
(1222, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 12:47:09', '2021-08-27 12:47:09'),
(1223, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:47:10', '2021-08-27 12:47:10'),
(1224, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 12:47:26', '2021-08-27 12:47:26'),
(1225, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 12:47:28', '2021-08-27 12:47:28'),
(1226, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 13:16:11', '2021-08-27 13:16:11'),
(1227, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:16:13', '2021-08-27 13:16:13'),
(1228, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"}}', '2021-08-27 13:16:15', '2021-08-27 13:16:15'),
(1229, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-27 13:16:15', '2021-08-27 13:16:15'),
(1230, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:16:17', '2021-08-27 13:16:17'),
(1231, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:16:22', '2021-08-27 13:16:22'),
(1232, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 13:22:43', '2021-08-27 13:22:43'),
(1233, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:22:46', '2021-08-27 13:22:46'),
(1234, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:22:47', '2021-08-27 13:22:47'),
(1235, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-27 13:22:47', '2021-08-27 13:22:47'),
(1236, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"BGmjaiWCDWxpv2pkewROjDKEsLxXbwnHYdDZ939Y\"}', '2021-08-27 13:22:53', '2021-08-27 13:22:53'),
(1237, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:22:53', '2021-08-27 13:22:53'),
(1238, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:24:25', '2021-08-27 13:24:25'),
(1239, 1, 'admin/clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:24:26', '2021-08-27 13:24:26'),
(1240, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:24:54', '2021-08-27 13:24:54'),
(1241, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:10', '2021-08-27 13:25:10'),
(1242, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:16', '2021-08-27 13:25:16'),
(1243, 1, 'admin/clients/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:17', '2021-08-27 13:25:17'),
(1244, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:25:19', '2021-08-27 13:25:19'),
(1245, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:25:20', '2021-08-27 13:25:20'),
(1246, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:26', '2021-08-27 13:25:26'),
(1247, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:32', '2021-08-27 13:25:32'),
(1248, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:39', '2021-08-27 13:25:39'),
(1249, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-08-27 13:25:43', '2021-08-27 13:25:43'),
(1250, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:34:31', '2021-08-27 13:34:31'),
(1251, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:35:31', '2021-08-27 13:35:31'),
(1252, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:45:06', '2021-08-27 13:45:06'),
(1253, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:46:38', '2021-08-27 13:46:38'),
(1254, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"address\":\"format\",\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:46:43', '2021-08-27 13:46:43'),
(1255, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:46:46', '2021-08-27 13:46:46'),
(1256, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:47:03', '2021-08-27 13:47:03'),
(1257, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"products\",\"type\":\"desc\"}}', '2021-08-27 13:47:20', '2021-08-27 13:47:20'),
(1258, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"products\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:47:23', '2021-08-27 13:47:23'),
(1259, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:47:42', '2021-08-27 13:47:42'),
(1260, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:47:44', '2021-08-27 13:47:44'),
(1261, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:47:44', '2021-08-27 13:47:44'),
(1262, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"products\",\"type\":\"desc\"}}', '2021-08-27 13:47:45', '2021-08-27 13:47:45'),
(1263, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"products\",\"type\":\"desc\"}}', '2021-08-27 13:48:29', '2021-08-27 13:48:29'),
(1264, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:48:32', '2021-08-27 13:48:32'),
(1265, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:48:47', '2021-08-27 13:48:47'),
(1266, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:48:48', '2021-08-27 13:48:48'),
(1267, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:48:54', '2021-08-27 13:48:54'),
(1268, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:48:55', '2021-08-27 13:48:55'),
(1269, 1, 'admin/products', 'POST', '127.0.0.1', '{\"client_id\":\"2\",\"productName\":\"Produit 10\",\"productDescription\":\"Produit description 10\",\"productPrice\":\"1000.00\",\"_token\":\"BGmjaiWCDWxpv2pkewROjDKEsLxXbwnHYdDZ939Y\",\"_previous_\":\"https:\\/\\/laraveladmin.ciggy\\/admin\\/products\"}', '2021-08-27 13:49:16', '2021-08-27 13:49:16'),
(1270, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-27 13:49:16', '2021-08-27 13:49:16'),
(1271, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:49:20', '2021-08-27 13:49:20'),
(1272, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:49:30', '2021-08-27 13:49:30'),
(1273, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:49:32', '2021-08-27 13:49:32'),
(1274, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:49:35', '2021-08-27 13:49:35'),
(1275, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:49:56', '2021-08-27 13:49:56'),
(1276, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:50:19', '2021-08-27 13:50:19'),
(1277, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"products\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:50:21', '2021-08-27 13:50:21'),
(1278, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:51:38', '2021-08-27 13:51:38'),
(1279, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:51:38', '2021-08-27 13:51:38'),
(1280, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:52:25', '2021-08-27 13:52:25'),
(1281, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:56:25', '2021-08-27 13:56:25'),
(1282, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:56:45', '2021-08-27 13:56:45'),
(1283, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:56:56', '2021-08-27 13:56:56'),
(1284, 1, 'admin/clients', 'GET', '127.0.0.1', '[]', '2021-08-27 13:58:13', '2021-08-27 13:58:13'),
(1285, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_columns_\":\"address,created_at,id,name,photo,products,updated_at\",\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:58:21', '2021-08-27 13:58:21'),
(1286, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-27 13:58:24', '2021-08-27 13:58:24'),
(1287, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-27 14:02:49', '2021-08-27 14:02:49'),
(1288, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-30 08:43:41', '2021-08-30 08:43:41'),
(1289, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:43:45', '2021-08-30 08:43:45'),
(1290, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-30 08:43:47', '2021-08-30 08:43:47'),
(1291, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:43:50', '2021-08-30 08:43:50'),
(1292, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-30 08:53:59', '2021-08-30 08:53:59'),
(1293, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:00', '2021-08-30 08:54:00'),
(1294, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:11', '2021-08-30 08:54:11'),
(1295, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:16', '2021-08-30 08:54:16'),
(1296, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-30 08:54:24', '2021-08-30 08:54:24'),
(1297, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:26', '2021-08-30 08:54:26'),
(1298, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:28', '2021-08-30 08:54:28'),
(1299, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:52', '2021-08-30 08:54:52'),
(1300, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:54', '2021-08-30 08:54:54'),
(1301, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:55', '2021-08-30 08:54:55'),
(1302, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:56', '2021-08-30 08:54:56'),
(1303, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:57', '2021-08-30 08:54:57'),
(1304, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:54:59', '2021-08-30 08:54:59'),
(1305, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:55:11', '2021-08-30 08:55:11'),
(1306, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-30 08:55:26', '2021-08-30 08:55:26'),
(1307, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name\",\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:55:31', '2021-08-30 08:55:31'),
(1308, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name\"}', '2021-08-30 08:55:48', '2021-08-30 08:55:48'),
(1309, 1, 'admin/products', 'GET', '127.0.0.1', '{\"client_name\":\"name\"}', '2021-08-30 08:56:10', '2021-08-30 08:56:10'),
(1310, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-30 08:56:13', '2021-08-30 08:56:13'),
(1311, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:56:15', '2021-08-30 08:56:15'),
(1312, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"clientname\",\"type\":\"desc\"}}', '2021-08-30 08:56:23', '2021-08-30 08:56:23'),
(1313, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-30 08:56:59', '2021-08-30 08:56:59'),
(1314, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client name\",\"type\":\"desc\"}}', '2021-08-30 08:57:09', '2021-08-30 08:57:09'),
(1315, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_name\",\"type\":\"desc\"}}', '2021-08-30 08:57:17', '2021-08-30 08:57:17'),
(1316, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-30 08:57:22', '2021-08-30 08:57:22'),
(1317, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 08:57:55', '2021-08-30 08:57:55'),
(1318, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-30 08:58:11', '2021-08-30 08:58:11'),
(1319, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-30 09:57:42', '2021-08-30 09:57:42'),
(1320, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 09:57:44', '2021-08-30 09:57:44'),
(1321, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-30 12:34:13', '2021-08-30 12:34:13'),
(1322, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-30 12:34:17', '2021-08-30 12:34:17'),
(1323, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-31 11:54:56', '2021-08-31 11:54:56'),
(1324, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 11:55:02', '2021-08-31 11:55:02'),
(1325, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"address\":\"format\",\"_pjax\":\"#pjax-container\"}', '2021-08-31 11:55:10', '2021-08-31 11:55:10'),
(1326, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 11:55:13', '2021-08-31 11:55:13'),
(1327, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 11:55:19', '2021-08-31 11:55:19'),
(1328, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 11:55:25', '2021-08-31 11:55:25'),
(1329, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 11:55:39', '2021-08-31 11:55:39'),
(1330, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 12:54:07', '2021-08-31 12:54:07'),
(1331, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-31 13:08:22', '2021-08-31 13:08:22'),
(1332, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:08:25', '2021-08-31 13:08:25'),
(1333, 1, 'admin/clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:08:27', '2021-08-31 13:08:27'),
(1334, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:27:13', '2021-08-31 13:27:13'),
(1335, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"}}', '2021-08-31 13:27:15', '2021-08-31 13:27:15'),
(1336, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:33:08', '2021-08-31 13:33:08'),
(1337, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-08-31 13:33:10', '2021-08-31 13:33:10'),
(1338, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:33:11', '2021-08-31 13:33:11'),
(1339, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:33:12', '2021-08-31 13:33:12'),
(1340, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:33:20', '2021-08-31 13:33:20'),
(1341, 1, 'admin/auth/lock', 'GET', '127.0.0.1', '[]', '2021-08-31 13:33:21', '2021-08-31 13:33:21'),
(1342, 1, 'admin/auth/unlock', 'POST', '127.0.0.1', '{\"password\":\"admin\",\"_token\":\"CGKLv5AC6omOzOFDDlnHr8r5QUG6lQ4kI144mCEe\"}', '2021-08-31 13:33:23', '2021-08-31 13:33:23'),
(1343, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 13:33:23', '2021-08-31 13:33:23'),
(1344, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 13:55:53', '2021-08-31 13:55:53'),
(1345, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 13:56:15', '2021-08-31 13:56:15'),
(1346, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client.name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-31 13:56:17', '2021-08-31 13:56:17'),
(1347, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-08-31 14:00:09', '2021-08-31 14:00:09'),
(1348, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 14:00:17', '2021-08-31 14:00:17'),
(1349, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 14:00:35', '2021-08-31 14:00:35'),
(1350, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 14:00:36', '2021-08-31 14:00:36'),
(1351, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 14:00:37', '2021-08-31 14:00:37'),
(1352, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 14:02:17', '2021-08-31 14:02:17'),
(1353, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"client_id\",\"type\":\"asc\"}}', '2021-08-31 14:02:19', '2021-08-31 14:02:19');

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
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(1, 5, NULL, NULL);

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
(1, 'admin', '$2y$10$1Gl6McE8wTBUJ7AKBt2NTu7q68doh/ueqpq1ji6wP4FUBnjsNXax.', 'admin', 'images/576f9b875853f317c7fd327d77b4e226.png', 'RVHsHRujFvMOyWkhc3fAGKfb0hluMN7BynvQ4ni9VdHtHYyg9eZfIJ9ZF7qt', '2021-08-24 13:10:37', '2021-08-25 09:28:02');

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
(2, 'name id 2', 'New adress', 'images/image.jpg', '2021-08-25 08:42:01', '2021-08-26 11:52:45'),
(3, 'name id 3', 'test adresse', 'images/avatar.png', '2021-08-25 08:53:36', '2021-08-26 11:52:28'),
(4, 'name id 4', 'Testing input mask as in a phone number entry', NULL, '2021-08-25 08:57:02', '2021-08-26 11:52:16'),
(5, 'name id 5', 'new format exploiting', NULL, '2021-08-25 08:57:48', '2021-08-26 11:52:09'),
(6, 'name id 6', 'adress', 'images/image.jpg', '2021-08-25 09:10:10', '2021-08-26 11:51:57'),
(7, 'name id 7', 'test adress\r\neverything is alright', NULL, '2021-08-25 11:26:04', '2021-08-26 11:52:35'),
(8, 'Moncef', 'Moncef adress', NULL, '2021-08-27 12:31:12', '2021-08-27 12:31:12');

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
(6, '2021_08_24_152824_create_clients_table', 2),
(8, '2021_08_26_105459_create_products_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `productDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productPrice` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `client_id`, `productDescription`, `productPrice`, `created_at`, `updated_at`) VALUES
(2, 'Produit 2', 2, 'product description 2', 250, '2021-08-26 11:40:06', '2021-08-26 11:55:40'),
(3, 'Produit 3', 3, 'product description 3', 200, '2021-08-26 11:47:16', '2021-08-26 11:55:44'),
(4, 'Produit 4', 4, 'product description 4', 300, '2021-08-26 11:55:25', '2021-08-26 11:55:25'),
(5, 'Produit 4', 7, 'product description 4', 500, '2021-08-27 08:29:26', '2021-08-27 08:29:26'),
(6, 'Produit 5', 4, 'produit description 5', 50, '2021-08-27 12:22:17', '2021-08-27 12:22:17'),
(7, 'Produit 10', 2, 'Produit description 10', 1000, '2021-08-27 13:49:16', '2021-08-27 13:49:16');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_client_id_foreign` (`client_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1354;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
