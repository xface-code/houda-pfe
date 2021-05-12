-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 07:06 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_o_jouet`
--

-- --------------------------------------------------------

--
-- Table structure for table `ages`
--

CREATE TABLE `ages` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ages`
--

INSERT INTO `ages` (`id`, `nom`, `slug`, `descrition`, `created_at`, `updated_at`) VALUES
(1, '19-20', '19-20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat.', '2021-04-26 15:15:54', '2021-04-26 15:15:54'),
(2, '22-40', '22-40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', '2021-04-26 15:16:08', '2021-04-26 15:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `age_product`
--

CREATE TABLE `age_product` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `age_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `age_product`
--

INSERT INTO `age_product` (`product_id`, `age_id`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `nom`, `slug`, `imgs`, `description`, `color`, `created_at`, `updated_at`) VALUES
(1, NULL, 'categories 1', 'categories-1', NULL, NULL, NULL, '2021-04-27 16:55:19', '2021-04-27 16:55:19'),
(2, 1, 'categories 1-1', 'categories-1-1', NULL, NULL, NULL, '2021-04-27 16:55:35', '2021-04-27 16:55:35'),
(3, 2, 'categories 1-1-1', 'categories-1-1-1', NULL, NULL, NULL, '2021-04-27 16:56:12', '2021-04-27 16:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `ref` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `tot_ht` float DEFAULT NULL,
  `tva` float DEFAULT NULL,
  `tot_ttc` float DEFAULT NULL,
  `etat` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commandes`
--

INSERT INTO `commandes` (`id`, `member_id`, `ref`, `date`, `tot_ht`, `tva`, `tot_ttc`, `etat`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, '0', NULL, 344, 20, 412.8, '0', 0, '2021-04-30 14:52:25', '2021-04-30 14:52:25'),
(2, 1, '0', NULL, 344, 20, 412.8, '0', 0, '2021-04-30 14:55:48', '2021-04-30 14:55:48'),
(3, 1, '0', NULL, 344, 20, 412.8, '0', 0, '2021-04-30 14:56:27', '2021-04-30 14:56:27'),
(4, 1, '0', NULL, 344, 20, 412.8, '0', 0, '2021-04-30 14:56:39', '2021-04-30 14:56:39'),
(5, 1, '0', NULL, 284, 20, 340.8, '0', 0, '2021-04-30 16:58:39', '2021-04-30 16:58:39'),
(6, 2, 'o-0006', NULL, 260, 20, 312, '0', 0, '2021-04-30 17:05:24', '2021-04-30 17:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `commande_dets`
--

CREATE TABLE `commande_dets` (
  `id` int(10) UNSIGNED NOT NULL,
  `commande_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_unit` float DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `prix_total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commande_dets`
--

INSERT INTO `commande_dets` (`id`, `commande_id`, `product_id`, `nom`, `prix_unit`, `qte`, `prix_total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:52:25', '2021-04-30 14:52:25'),
(2, 1, 1, 'Mounir Misbah', 24, 1, 24, '2021-04-30 14:52:25', '2021-04-30 14:52:25'),
(3, 1, 3, 'dell latitude', 250, 1, 250, '2021-04-30 14:52:25', '2021-04-30 14:52:25'),
(4, 1, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:52:25', '2021-04-30 14:52:25'),
(5, 1, 2, 'produit 2', 10, 5, 50, '2021-04-30 14:52:25', '2021-04-30 14:52:25'),
(6, 2, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:55:48', '2021-04-30 14:55:48'),
(7, 2, 1, 'Mounir Misbah', 24, 1, 24, '2021-04-30 14:55:48', '2021-04-30 14:55:48'),
(8, 2, 3, 'dell latitude', 250, 1, 250, '2021-04-30 14:55:48', '2021-04-30 14:55:48'),
(9, 2, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:55:48', '2021-04-30 14:55:48'),
(10, 2, 2, 'produit 2', 10, 5, 50, '2021-04-30 14:55:48', '2021-04-30 14:55:48'),
(11, 3, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:56:27', '2021-04-30 14:56:27'),
(12, 3, 1, 'Mounir Misbah', 24, 1, 24, '2021-04-30 14:56:27', '2021-04-30 14:56:27'),
(13, 3, 3, 'dell latitude', 250, 1, 250, '2021-04-30 14:56:27', '2021-04-30 14:56:27'),
(14, 3, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:56:27', '2021-04-30 14:56:27'),
(15, 3, 2, 'produit 2', 10, 5, 50, '2021-04-30 14:56:27', '2021-04-30 14:56:27'),
(16, 4, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:56:39', '2021-04-30 14:56:39'),
(17, 4, 1, 'Mounir Misbah', 24, 1, 24, '2021-04-30 14:56:39', '2021-04-30 14:56:39'),
(18, 4, 3, 'dell latitude', 250, 1, 250, '2021-04-30 14:56:39', '2021-04-30 14:56:39'),
(19, 4, 2, 'produit 2', 10, 1, 10, '2021-04-30 14:56:39', '2021-04-30 14:56:39'),
(20, 4, 2, 'produit 2', 10, 5, 50, '2021-04-30 14:56:39', '2021-04-30 14:56:39'),
(21, 5, 3, 'dell latitude', 250, 1, 250, '2021-04-30 16:58:39', '2021-04-30 16:58:39'),
(22, 5, 1, 'Mounir Misbah', 24, 1, 24, '2021-04-30 16:58:39', '2021-04-30 16:58:39'),
(23, 5, 2, 'produit 2', 10, 1, 10, '2021-04-30 16:58:39', '2021-04-30 16:58:39'),
(24, 6, 2, 'produit 2', 10, 1, 10, '2021-04-30 17:05:24', '2021-04-30 17:05:24'),
(25, 6, 3, 'dell latitude', 250, 1, 250, '2021-04-30 17:05:24', '2021-04-30 17:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:ages,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 3),
(25, 4, 'descrition', 'text_area', 'Descrition', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(29, 5, 'category_id', 'select_dropdown', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(30, 5, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 4),
(31, 5, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:products,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 5),
(32, 5, 'imgs', 'multiple_images', 'Imgs', 0, 1, 1, 1, 1, 1, '{}', 6),
(33, 5, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(34, 5, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 8),
(35, 5, 'min_price', 'number', 'Min Price', 0, 1, 1, 1, 1, 1, '{}', 9),
(36, 5, 'promo_price', 'number', 'Promo Price', 0, 1, 1, 1, 1, 1, '{}', 10),
(37, 5, 'stock', 'number', 'Stock', 0, 1, 1, 1, 1, 1, '{}', 11),
(38, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(39, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(40, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 6, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(42, 6, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:super_heroes,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 3),
(43, 6, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(44, 6, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(45, 6, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 6),
(46, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(47, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(48, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 7, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(50, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:sexes,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 3),
(51, 7, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(52, 7, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(53, 7, 'color', 'color', 'Color', 0, 1, 1, 1, 1, 1, '{}', 6),
(54, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(55, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:marques,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 3),
(59, 8, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 8, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 5, 'product_belongstomany_age_relationship', 'relationship', 'ages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Age\",\"table\":\"ages\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"age_product\",\"pivot\":\"1\",\"taggable\":\"on\"}', 14),
(65, 5, 'product_belongstomany_marque_relationship', 'relationship', 'marques', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Marque\",\"table\":\"marques\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"marque_product\",\"pivot\":\"1\",\"taggable\":\"on\"}', 15),
(66, 5, 'product_belongstomany_sex_relationship', 'relationship', 'sexes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sex\",\"table\":\"sexes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"product_sex\",\"pivot\":\"1\",\"taggable\":\"on\"}', 16),
(67, 5, 'product_belongstomany_super_hero_relationship', 'relationship', 'super_heroes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SuperHero\",\"table\":\"super_heroes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"product_super_hero\",\"pivot\":\"1\",\"taggable\":\"on\"}', 17),
(68, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 9, 'category_id', 'select_dropdown', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 9, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:categories,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 5),
(72, 9, 'imgs', 'text', 'Imgs', 0, 0, 0, 0, 0, 0, '{}', 6),
(73, 9, 'description', 'text', 'Description', 0, 0, 0, 0, 0, 0, '{}', 7),
(74, 9, 'color', 'text', 'Color', 0, 0, 0, 0, 0, 0, '{}', 8),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(77, 9, 'category_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"age_product\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(78, 5, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"age_product\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(79, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 10, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(81, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(82, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(83, 10, 'btn', 'text', 'Btn', 0, 1, 1, 1, 1, 1, '{}', 5),
(84, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 11, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(86, 11, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:prices,slug\",\"messages\":{\"required\":\"Champ Obligatoire.\",\"unique\":\"Url Existe d\\u00e9j\\u00e0 dana\\u00ecs la base.\"}}}', 3),
(87, 11, 'descrition', 'text', 'Descrition', 0, 1, 1, 1, 1, 1, '{}', 4),
(88, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(89, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(90, 5, 'product_belongstomany_price_relationship', 'relationship', 'prices', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Price\",\"table\":\"prices\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"price_product\",\"pivot\":\"1\",\"taggable\":\"on\"}', 18);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(4, 'ages', 'ages', 'Age', 'Ages', NULL, 'App\\Age', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-26 11:34:26', '2021-04-26 15:12:21'),
(5, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-26 11:35:51', '2021-04-28 10:14:19'),
(6, 'super_heroes', 'super-heroes', 'Super Hero', 'Super Heroes', NULL, 'App\\SuperHero', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-26 11:36:42', '2021-04-26 15:15:35'),
(7, 'sexes', 'sexes', 'Sex', 'Sexes', NULL, 'App\\Sex', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-26 11:39:53', '2021-04-26 15:14:14'),
(8, 'marques', 'marques', 'Marque', 'Marques', NULL, 'App\\Marque', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-26 11:44:54', '2021-04-26 15:13:04'),
(9, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-27 16:53:17', '2021-04-27 16:54:56'),
(10, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-30 15:06:07', '2021-04-30 15:06:07'),
(11, 'prices', 'prices', 'Price', 'Prices', NULL, 'App\\Price', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-30 15:41:16', '2021-04-30 15:41:16');

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
-- Table structure for table `marques`
--

CREATE TABLE `marques` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marques`
--

INSERT INTO `marques` (`id`, `nom`, `slug`, `img`, `description`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Marque 1', 'marque-1', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et.', NULL, '2021-04-26 15:53:01', '2021-04-26 15:53:01'),
(2, 'Marque 2', 'marque-2', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum.', NULL, '2021-04-26 15:53:20', '2021-04-26 15:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `marque_product`
--

CREATE TABLE `marque_product` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `marque_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marque_product`
--

INSERT INTO `marque_product` (`product_id`, `marque_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-04-26 09:31:00', '2021-04-26 09:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-04-26 09:31:00', '2021-04-26 09:31:00', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-04-26 09:31:00', '2021-04-26 09:31:00', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-04-26 09:31:00', '2021-04-26 09:31:00', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2021-04-26 09:31:00', '2021-04-26 13:14:11', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-04-26 09:31:00', '2021-04-26 13:14:11', 'voyager.hooks', NULL),
(12, 1, 'Ages', '', '_self', NULL, NULL, 17, 1, '2021-04-26 11:34:26', '2021-04-26 13:14:37', 'voyager.ages.index', NULL),
(13, 1, 'Products', '', '_self', 'voyager-shop', '#000000', NULL, 8, '2021-04-26 11:35:51', '2021-04-26 13:15:12', 'voyager.products.index', 'null'),
(14, 1, 'Super Heroes', '', '_self', NULL, NULL, 17, 2, '2021-04-26 11:36:42', '2021-04-26 13:14:44', 'voyager.super-heroes.index', NULL),
(15, 1, 'Sexes', '', '_self', NULL, NULL, 17, 3, '2021-04-26 11:39:53', '2021-04-26 13:14:48', 'voyager.sexes.index', NULL),
(16, 1, 'Marques', '', '_self', NULL, NULL, 17, 4, '2021-04-26 11:44:54', '2021-04-26 13:14:51', 'voyager.marques.index', NULL),
(17, 1, 'filters', '#', '_self', 'voyager-documentation', '#000000', NULL, 7, '2021-04-26 13:14:31', '2021-04-26 13:14:36', NULL, ''),
(18, 1, 'Categories', '', '_self', NULL, NULL, NULL, 9, '2021-04-27 16:53:18', '2021-04-27 16:53:18', 'voyager.categories.index', NULL),
(19, 1, 'Sliders', '', '_self', NULL, NULL, NULL, 10, '2021-04-30 15:06:07', '2021-04-30 15:06:07', 'voyager.sliders.index', NULL),
(20, 1, 'Prices', '', '_self', NULL, NULL, 17, 5, '2021-04-30 15:41:16', '2021-04-30 15:41:27', 'voyager.prices.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(2, 'browse_bread', NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(3, 'browse_database', NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(4, 'browse_media', NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(5, 'browse_compass', NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(6, 'browse_menus', 'menus', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(7, 'read_menus', 'menus', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(8, 'edit_menus', 'menus', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(9, 'add_menus', 'menus', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(10, 'delete_menus', 'menus', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(11, 'browse_roles', 'roles', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(12, 'read_roles', 'roles', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(13, 'edit_roles', 'roles', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(14, 'add_roles', 'roles', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(15, 'delete_roles', 'roles', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(16, 'browse_users', 'users', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(17, 'read_users', 'users', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(18, 'edit_users', 'users', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(19, 'add_users', 'users', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(20, 'delete_users', 'users', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(21, 'browse_settings', 'settings', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(22, 'read_settings', 'settings', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(23, 'edit_settings', 'settings', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(24, 'add_settings', 'settings', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(25, 'delete_settings', 'settings', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(26, 'browse_hooks', NULL, '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(27, 'browse_ages', 'ages', '2021-04-26 11:34:26', '2021-04-26 11:34:26'),
(28, 'read_ages', 'ages', '2021-04-26 11:34:26', '2021-04-26 11:34:26'),
(29, 'edit_ages', 'ages', '2021-04-26 11:34:26', '2021-04-26 11:34:26'),
(30, 'add_ages', 'ages', '2021-04-26 11:34:26', '2021-04-26 11:34:26'),
(31, 'delete_ages', 'ages', '2021-04-26 11:34:26', '2021-04-26 11:34:26'),
(32, 'browse_products', 'products', '2021-04-26 11:35:51', '2021-04-26 11:35:51'),
(33, 'read_products', 'products', '2021-04-26 11:35:51', '2021-04-26 11:35:51'),
(34, 'edit_products', 'products', '2021-04-26 11:35:51', '2021-04-26 11:35:51'),
(35, 'add_products', 'products', '2021-04-26 11:35:51', '2021-04-26 11:35:51'),
(36, 'delete_products', 'products', '2021-04-26 11:35:51', '2021-04-26 11:35:51'),
(37, 'browse_super_heroes', 'super_heroes', '2021-04-26 11:36:42', '2021-04-26 11:36:42'),
(38, 'read_super_heroes', 'super_heroes', '2021-04-26 11:36:42', '2021-04-26 11:36:42'),
(39, 'edit_super_heroes', 'super_heroes', '2021-04-26 11:36:42', '2021-04-26 11:36:42'),
(40, 'add_super_heroes', 'super_heroes', '2021-04-26 11:36:42', '2021-04-26 11:36:42'),
(41, 'delete_super_heroes', 'super_heroes', '2021-04-26 11:36:42', '2021-04-26 11:36:42'),
(42, 'browse_sexes', 'sexes', '2021-04-26 11:39:53', '2021-04-26 11:39:53'),
(43, 'read_sexes', 'sexes', '2021-04-26 11:39:53', '2021-04-26 11:39:53'),
(44, 'edit_sexes', 'sexes', '2021-04-26 11:39:53', '2021-04-26 11:39:53'),
(45, 'add_sexes', 'sexes', '2021-04-26 11:39:53', '2021-04-26 11:39:53'),
(46, 'delete_sexes', 'sexes', '2021-04-26 11:39:53', '2021-04-26 11:39:53'),
(47, 'browse_marques', 'marques', '2021-04-26 11:44:54', '2021-04-26 11:44:54'),
(48, 'read_marques', 'marques', '2021-04-26 11:44:54', '2021-04-26 11:44:54'),
(49, 'edit_marques', 'marques', '2021-04-26 11:44:54', '2021-04-26 11:44:54'),
(50, 'add_marques', 'marques', '2021-04-26 11:44:54', '2021-04-26 11:44:54'),
(51, 'delete_marques', 'marques', '2021-04-26 11:44:54', '2021-04-26 11:44:54'),
(52, 'browse_categories', 'categories', '2021-04-27 16:53:18', '2021-04-27 16:53:18'),
(53, 'read_categories', 'categories', '2021-04-27 16:53:18', '2021-04-27 16:53:18'),
(54, 'edit_categories', 'categories', '2021-04-27 16:53:18', '2021-04-27 16:53:18'),
(55, 'add_categories', 'categories', '2021-04-27 16:53:18', '2021-04-27 16:53:18'),
(56, 'delete_categories', 'categories', '2021-04-27 16:53:18', '2021-04-27 16:53:18'),
(57, 'browse_sliders', 'sliders', '2021-04-30 15:06:07', '2021-04-30 15:06:07'),
(58, 'read_sliders', 'sliders', '2021-04-30 15:06:07', '2021-04-30 15:06:07'),
(59, 'edit_sliders', 'sliders', '2021-04-30 15:06:07', '2021-04-30 15:06:07'),
(60, 'add_sliders', 'sliders', '2021-04-30 15:06:07', '2021-04-30 15:06:07'),
(61, 'delete_sliders', 'sliders', '2021-04-30 15:06:07', '2021-04-30 15:06:07'),
(62, 'browse_prices', 'prices', '2021-04-30 15:41:16', '2021-04-30 15:41:16'),
(63, 'read_prices', 'prices', '2021-04-30 15:41:16', '2021-04-30 15:41:16'),
(64, 'edit_prices', 'prices', '2021-04-30 15:41:16', '2021-04-30 15:41:16'),
(65, 'add_prices', 'prices', '2021-04-30 15:41:16', '2021-04-30 15:41:16'),
(66, 'delete_prices', 'prices', '2021-04-30 15:41:16', '2021-04-30 15:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `nom`, `slug`, `descrition`, `created_at`, `updated_at`) VALUES
(1, '0 - 100dh', '0-100dh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat sed non enim. Pellentesque eget justo porttitor urna dictum fermentum sit amet sed mauris. Praesent molestie vestibulum erat ac rhoncus. Aenean nunc risus, accumsan nec ipsum et, convallis sollicitudin dui. Proin dictum quam a semper malesuada. Etiam porta sit amet risus quis porta. Nulla facilisi. Cras at interdum ante. Ut gravida pharetra ligula vitae malesuada.', '2021-04-30 15:42:11', '2021-04-30 15:42:11'),
(2, '100 - 1000 dh', '100-1000-dh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat sed non enim. Pellentesque eget justo porttitor urna dictum fermentum sit amet sed mauris. Praesent molestie vestibulum erat ac rhoncus. Aenean nunc risus, accumsan nec ipsum et, convallis sollicitudin dui. Proin dictum quam a semper malesuada. Etiam porta sit amet risus quis porta. Nulla facilisi. Cras at interdum ante. Ut gravida pharetra ligula vitae malesuada.', '2021-04-30 15:43:18', '2021-04-30 15:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `price_product`
--

CREATE TABLE `price_product` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `price_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_product`
--

INSERT INTO `price_product` (`product_id`, `price_id`) VALUES
(2, 1),
(3, 2),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `min_price` float DEFAULT NULL,
  `promo_price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `nom`, `slug`, `imgs`, `description`, `price`, `min_price`, `promo_price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mounir Misbah', 'amine-misbah', '[\"products\\\\April2021\\\\YOQDsDROAhGC0q95VhKr.png\"]', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat sed non enim. Pellentesque eget justo porttitor urna dictum fermentum sit amet sed mauris. Praesent molestie vestibulum erat ac rhoncus. Aenean nunc risus, accumsan nec.', 24, 14.2, 10, 100, '2021-04-26 16:16:47', '2021-04-27 17:43:04'),
(2, 2, 'produit 2', 'produit-2', '[\"products\\\\April2021\\\\D75QrLo2wzzV6NHSJS53.png\"]', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat.', 10, 5, 30, 0, '2021-04-28 10:17:04', '2021-04-28 10:17:04'),
(3, 3, 'dell latitude', 'dell-latitude', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 250, 5412, 21312, 20, '2021-04-28 11:17:35', '2021-04-28 11:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_sex`
--

CREATE TABLE `product_sex` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `sex_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sex`
--

INSERT INTO `product_sex` (`product_id`, `sex_id`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_super_hero`
--

CREATE TABLE `product_super_hero` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `super_hero_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_super_hero`
--

INSERT INTO `product_super_hero` (`product_id`, `super_hero_id`) VALUES
(1, 1),
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-04-26 09:31:00', '2021-04-26 09:31:00'),
(2, 'user', 'Normal User', '2021-04-26 09:31:00', '2021-04-26 09:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sexes`
--

CREATE TABLE `sexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sexes`
--

INSERT INTO `sexes` (`id`, `nom`, `slug`, `img`, `description`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Homme', 'homme', 'sexes\\April2021\\pBuGCKenJdMShF6ziXUA.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat sed non enim. Pellentesque eget justo porttitor urna dictum fermentum sit amet sed mauris. Praesent molestie vestibulum erat ac rhoncus. Aenean nunc risus, accumsan nec.', '#453b3b', '2021-04-26 15:51:57', '2021-04-26 15:51:57'),
(2, 'Femme', 'femme', 'sexes\\April2021\\sQvzxCS8G0VADYLIOeBJ.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat sed non enim. Pellentesque eget justo porttitor urna dictum fermentum sit amet sed mauris. Praesent molestie vestibulum erat ac rhoncus. Aenean nunc risus, accumsan nec.', '#cc2828', '2021-04-26 15:52:21', '2021-04-26 15:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `img`, `title`, `description`, `btn`, `created_at`, `updated_at`) VALUES
(1, 'sliders\\April2021\\SrsXYTlqc2cigSs0c4Ci.jpg', 'Lorem ipsum dolor sit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat.', 'http://localhost/o-jouet-laravel/public/categories-1', '2021-04-30 15:07:22', '2021-04-30 15:07:22'),
(2, 'sliders\\April2021\\DfEgyjgqeKJH4mrF3ifJ.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat.', 'http://localhost/o-jouet-laravel/public/categories-1-1', '2021-04-30 15:08:39', '2021-04-30 15:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `super_heroes`
--

CREATE TABLE `super_heroes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_heroes`
--

INSERT INTO `super_heroes` (`id`, `nom`, `slug`, `img`, `description`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'super hero 1', 'super-hero-1', 'super-heroes\\April2021\\iXZhZSRO8rPHnFtu6zZJ.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat.', 'super-heroes\\April2021\\855LIE4JZzPYi7bZGwtz.png', '2021-04-26 15:16:43', '2021-04-26 15:16:43'),
(2, 'Super Hero 2', 'super-hero-2', 'super-heroes\\April2021\\ySpazEgLatU7dkR0FG9U.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in tellus interdum eros vulputate placerat sed non enim. Pellentesque eget.', 'super-heroes\\April2021\\0NDv9Ifk74Vx0T4cuowD.png', '2021-04-26 15:51:16', '2021-04-26 15:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Almisbah Informatique', 'almisbah@almisbah.ma', 'users/default.png', NULL, '$2y$10$bNJaI42Zf1ZiHRZ1J7Vsbu0IV7iDvrY9I5hO9m79FeCSNEE.1ZSti', NULL, NULL, '2021-04-26 09:48:28', '2021-04-26 09:48:28'),
(2, NULL, NULL, 'xamine.misbahx@gmail.com', 'users/default.png', NULL, '$2y$10$JSDCzOkaWSkM2HhUwprYhOO2qOMqb6ry..eiaitARjZ97.CCzzdBu', NULL, NULL, '2021-04-28 23:17:28', '2021-04-28 23:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ages`
--
ALTER TABLE `ages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `age_product`
--
ALTER TABLE `age_product`
  ADD KEY `age_product_product_id_index` (`product_id`),
  ADD KEY `age_product_age_id_index` (`age_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commande_dets`
--
ALTER TABLE `commande_dets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marque_product`
--
ALTER TABLE `marque_product`
  ADD KEY `marque_product_product_id_index` (`product_id`),
  ADD KEY `marque_product_marque_id_index` (`marque_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_product`
--
ALTER TABLE `price_product`
  ADD KEY `price_product_product_id_index` (`product_id`),
  ADD KEY `price_product_price_id_index` (`price_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sex`
--
ALTER TABLE `product_sex`
  ADD KEY `product_sex_product_id_index` (`product_id`),
  ADD KEY `product_sex_sex_id_index` (`sex_id`);

--
-- Indexes for table `product_super_hero`
--
ALTER TABLE `product_super_hero`
  ADD KEY `product_super_hero_product_id_index` (`product_id`),
  ADD KEY `product_super_hero_super_hero_id_index` (`super_hero_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sexes`
--
ALTER TABLE `sexes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_heroes`
--
ALTER TABLE `super_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ages`
--
ALTER TABLE `ages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commande_dets`
--
ALTER TABLE `commande_dets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marques`
--
ALTER TABLE `marques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sexes`
--
ALTER TABLE `sexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `super_heroes`
--
ALTER TABLE `super_heroes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
