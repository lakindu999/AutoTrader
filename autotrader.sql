-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 08:16 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autotrader`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(52, 2, 'Orange', 51, '2023-01-02 09:46:54', '2023-01-02 09:46:54'),
(53, 7, 'Black', 51, '2023-01-02 09:46:54', '2023-01-02 09:46:54'),
(54, 2, 'Ash', 52, '2023-01-02 09:51:04', '2023-01-02 09:51:04'),
(55, 7, 'Black', 52, '2023-01-02 09:51:04', '2023-01-02 09:51:04'),
(56, 2, 'Light Blue', 53, '2023-01-02 09:53:33', '2023-01-02 09:53:33'),
(57, 2, 'Black', 54, '2023-01-02 09:56:06', '2023-01-02 09:56:06'),
(58, 7, 'Black', 54, '2023-01-02 09:56:06', '2023-01-02 09:56:06'),
(59, 2, 'Ash', 55, '2023-01-02 10:00:03', '2023-01-02 10:00:03'),
(60, 6, 'Black', 55, '2023-01-02 10:00:03', '2023-01-02 10:00:03'),
(61, 2, 'Red', 56, '2023-01-02 10:02:40', '2023-01-02 10:02:40'),
(62, 6, 'White', 57, '2023-01-02 10:05:45', '2023-01-02 10:05:45'),
(63, 6, 'White', 58, '2023-01-02 10:07:49', '2023-01-02 10:07:49'),
(64, 2, 'Dark Maroon', 59, '2023-01-02 10:10:15', '2023-01-02 10:10:15'),
(65, 2, 'White', 60, '2023-01-02 10:13:33', '2023-01-02 10:13:33'),
(66, 2, 'Blue', 61, '2023-01-02 10:22:49', '2023-01-02 10:22:49'),
(67, 2, 'White', 62, '2023-01-02 21:16:33', '2023-01-02 21:16:33'),
(68, 2, 'White', 63, '2023-01-02 21:18:39', '2023-01-02 21:18:39'),
(69, 2, 'Red', 64, '2023-01-02 21:20:12', '2023-01-02 21:20:12'),
(70, 7, 'Black', 64, '2023-01-02 21:20:12', '2023-01-02 21:20:12'),
(71, 2, 'Black', 66, '2023-01-02 21:23:57', '2023-01-02 21:23:57'),
(72, 2, 'Maroon', 67, '2023-01-02 21:25:54', '2023-01-02 21:25:54'),
(73, 2, 'Black', 68, '2023-01-02 21:27:42', '2023-01-02 21:27:42'),
(74, 2, 'White', 69, '2023-01-02 21:34:25', '2023-01-02 21:34:25'),
(75, 2, 'Black', 70, '2023-01-02 21:35:55', '2023-01-02 21:35:55'),
(76, 2, 'Blue', 71, '2023-01-02 21:37:16', '2023-01-02 21:37:16'),
(77, 2, 'Dark Blue', 72, '2023-01-02 21:38:37', '2023-01-02 21:38:37'),
(78, 7, 'Brown', 73, '2023-01-02 21:41:37', '2023-01-02 21:41:37'),
(79, 2, 'White', 74, '2023-01-03 01:42:07', '2023-01-03 01:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(41, 'BMW', 'bmw', '2022-10-15 09:48:42', '2022-11-07 01:30:48'),
(42, 'BENZ', 'benz', '2022-10-15 09:49:12', '2022-11-07 01:31:09'),
(43, 'AUDI', 'audi', '2022-10-15 09:49:38', '2022-11-07 01:31:27'),
(47, 'LAND ROVER', 'land-rover', '2023-01-02 09:57:53', '2023-01-02 09:57:53'),
(49, 'TOYOTA', 'toyota', '2023-01-02 21:30:56', '2023-01-02 21:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Lakindu', 'laki@gmail.com', '728909115', 'asdasd', '2022-11-07 04:36:48', '2022-11-07 04:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(12,2) NOT NULL,
  `cart_value` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, '0001', 'fixed', '500000.00', '100000.00', '2022-10-15 09:50:55', '2022-11-07 01:27:59', '2022-12-10');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '41,42,43,47,49', 5, '2022-10-05 03:34:46', '2023-01-03 01:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Land Rover Range Rover ', 'Sports 2019', '49000000.00', 'http://127.0.0.1:8000/product/land-rover-range-rover-autobiography-2019', '1667796848.jpg', 1, '2022-10-15 09:46:53', '2023-01-02 22:07:02'),
(5, ' 520D 2013', 'BMW 520D 2013', '120,000,000', 'http://127.0.0.1:8000/product/bmw-520d-2013', '1667795886.jpg', 1, '2022-10-15 09:47:21', '2023-01-02 23:32:05'),
(6, 'Discovery 2015', 'Land Rover Discovery 4 HSE 2015', '249,000,000', 'http://127.0.0.1:8000/product/land-rover-discovery-4-hse-2015', '1667795658.jpg', 1, '2022-10-15 09:47:51', '2023-01-02 23:31:09');

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
(6, '2022_09_02_191338_create_sessions_table', 1),
(7, '2022_09_03_191847_create_categories_table', 2),
(8, '2022_09_03_191936_create_products_table', 2),
(9, '2022_10_04_165022_create_home_sliders_table', 3),
(10, '2022_10_06_033050_create_home_categories_table', 4),
(11, '2022_10_06_064442_create_sales_table', 5),
(12, '2022_10_06_194840_create_coupons_table', 6),
(13, '2022_10_10_095940_add_expiry_date_to_coupons_table', 7),
(14, '2022_10_10_131914_create_orders_table', 8),
(15, '2022_10_10_131941_create_order_items_table', 8),
(16, '2022_10_10_132014_create_shippings_table', 8),
(17, '2022_10_10_132204_create_transactions_table', 8),
(18, '2022_10_12_182314_add_delivered_canceled_date_to_orders_table', 9),
(19, '2022_10_12_194344_create_reviews_table', 10),
(20, '2022_10_12_194909_add_rstatus_to_order_items_table', 11),
(21, '2022_10_12_195424_add_rstatus_to_order_items_table', 11),
(22, '2022_10_13_063412_create_contacts_table', 11),
(23, '2022_10_13_125024_create_settings_table', 12),
(24, '2022_10_13_185225_create_shoppingcart_table', 13),
(25, '2022_10_13_192040_create_subcategories_table', 14),
(26, '2022_10_13_211559_add_subcatergory_id_to_products_table', 15),
(27, '2022_10_13_220623_create_profiles_table', 16),
(28, '2022_10_14_063749_create_product_attributes_table', 17),
(29, '2022_10_14_073412_create_attribute_values_table', 18),
(30, '2022_10_14_091236_add_options_to_order_items_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) NOT NULL DEFAULT 1.00,
  `tax` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(20, 14, '33500000.00', '500000.00', '7035000.00', '40535000.00', 'Lakindu', 'Dilshan', '0779868753', 'laki@gmail.com', '148/H', 'Ja Ela Road', 'Gampaha', 'Western', 'Sri Lanka', '11030', 'delivered', 0, '2022-11-07 03:49:42', '2022-11-07 03:51:22', '2022-11-07', NULL),
(21, 14, '67500000.00', '500000.00', '14175000.00', '81675000.00', 'test', 'test', '0779868752', 'laki@gmail.com', '148/H', 'Gampaha', 'Gampaha', 'Western', 'Sri Lanka', '11030', 'delivered', 0, '2022-11-07 04:33:32', '2022-11-07 04:34:41', '2022-11-07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(1, 2, 1, '442.00', 1, '2022-10-11 15:03:44', '2022-10-12 15:37:47', 2, NULL),
(2, 2, 2, '442.00', 1, '2022-10-11 16:46:17', '2022-10-11 16:46:17', 0, NULL),
(3, 2, 3, '442.00', 1, '2022-10-11 16:52:18', '2022-10-11 16:52:18', 0, NULL),
(4, 2, 4, '442.00', 1, '2022-10-11 17:24:28', '2022-10-11 17:24:28', 0, NULL),
(5, 3, 4, '445.00', 1, '2022-10-11 17:24:28', '2022-10-11 17:24:28', 0, NULL),
(6, 2, 5, '442.00', 1, '2022-10-12 02:53:04', '2022-10-12 02:53:04', 0, NULL),
(7, 2, 6, '442.00', 1, '2022-10-12 03:15:49', '2022-10-12 03:15:49', 0, NULL),
(8, 3, 7, '445.00', 1, '2022-10-12 03:16:28', '2022-10-12 03:16:28', 0, NULL),
(9, 2, 8, '442.00', 1, '2022-10-12 04:48:53', '2022-10-12 04:48:53', 0, NULL),
(10, 4, 9, '221.00', 1, '2022-10-12 07:47:40', '2022-10-12 07:47:40', 0, NULL),
(11, 2, 10, '442.00', 1, '2022-10-12 08:03:31', '2022-10-12 08:03:31', 0, NULL),
(12, 6, 11, '272.00', 1, '2022-10-12 08:09:19', '2022-10-12 08:09:19', 0, NULL),
(13, 4, 12, '221.00', 1, '2022-10-12 09:01:12', '2022-10-12 09:01:12', 0, NULL),
(14, 7, 13, '119.00', 1, '2022-10-12 09:13:53', '2022-10-12 09:13:53', 0, NULL),
(15, 13, 14, '14.00', 1, '2022-10-12 09:16:46', '2022-10-12 09:16:46', 0, NULL),
(16, 3, 15, '445.00', 1, '2022-10-12 13:57:33', '2022-10-12 13:57:33', 0, NULL),
(17, 2, 16, '442.00', 1, '2022-10-13 13:40:40', '2022-10-13 13:40:40', 0, NULL),
(18, 3, 16, '445.00', 1, '2022-10-13 13:40:40', '2022-10-13 13:40:40', 0, NULL),
(19, 12, 17, '249.00', 3, '2022-10-14 00:44:50', '2022-10-14 00:45:42', 1, NULL),
(20, 2, 17, '442.00', 1, '2022-10-14 00:44:50', '2022-10-14 00:44:50', 0, NULL),
(21, 29, 18, '10.00', 2, '2022-10-14 07:54:37', '2022-10-14 07:54:37', 0, NULL),
(22, 29, 18, '10.00', 1, '2022-10-14 07:54:37', '2022-10-14 07:54:37', 0, NULL),
(23, 29, 19, '10.00', 1, '2022-10-14 07:58:38', '2022-10-14 07:58:38', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colors\";s:4:\"Blue\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(24, 41, 20, '34000000.00', 1, '2022-11-07 03:49:42', '2022-11-07 03:54:42', 1, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colors\";s:5:\"White\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(25, 38, 21, '68000000.00', 1, '2022-11-07 04:33:32', '2022-11-07 04:36:01', 1, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

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
('infocosmo123@gmail.com', '$2y$10$aSvhcMPXeL02RVlcKBjaSOOVZm.TmZL3cDS3KFBo4S8LfuDgaQ/wK', '2022-10-13 11:13:08');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(12,2) NOT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(51, 'A3 S Line', 'a3-s-line', 'The A3 S Line has 1 Petrol Engine on offer. The Petrol engine is 2000 cc .', 'EngineDisplacement (cc)2000Max Power222bhp@5900rpmMax Torque380Nm@3700rpmNo. of cylinder3Valves Per Cylinder4Valve ConfigurationDOHCFuel Supply SystemMPFIBore X Stroke82 X 94.6 mmCompression Ratio9.5:1 TransmissionTypeAutomaticGear Box6 SpeedDrive Type4WD Fuel TypePetrolPetrol Mileage (ARAI)47.45Petrol Fuel Tank Capacity (Litres)42.0Emission Norm ComplianceEU 7Top Speed (Kmph)280', '9000000.00', '8800000.00', '0001', 'instock', 0, 3, '1672672614.jpg', ',16726726140.jpg,16726726141.jpg', 43, '2023-01-02 09:46:54', '2023-01-02 09:46:54', NULL),
(52, 'Audi A6 2016', 'audi-a6-2016', 'The A6 2016 has 1 Petrol Engine on offer. The Petrol engine is 2000 cc .', 'EngineDisplacement (cc)2000Max Power225bhp@5800rpmMax Torque390Nm@3700rpmNo. of cylinder3Valves Per Cylinder4Valve ConfigurationDOHCFuel Supply SystemMPFIBore X Stroke82 X 94.6 mmCompression Ratio9.5:1 TransmissionTypeAutomaticGear Box6 SpeedDrive Type4WD Fuel TypePetrolPetrol Mileage (ARAI)50.45Petrol Fuel Tank Capacity (Litres)32.0Emission Norm ComplianceEU 6Top Speed (Kmph)270', '10000000.00', '9000000.00', '0002', 'instock', 0, 6, '1672672864.jpg', ',16726728640.jpg,16726728641.jpg,16726728642.jpg', 43, '2023-01-02 09:51:04', '2023-01-02 09:51:04', NULL),
(53, 'Audi A6 2018', 'audi-a6-2018', 'The Audi A6 2018 has 1 Petrol Engine on offer. The Petrol engine is 2000 cc .', 'EngineDisplacement (cc)2000Max Power252bhp@5800rpmMax Torque320Nm@3900rpmNo. of cylinder3Valves Per Cylinder4Valve ConfigurationDOHCFuel Supply SystemMPFIBore X Stroke82 X 94.6 mmCompression Ratio9.5:1 TransmissionTypeAutomaticGear Box6 SpeedDrive Type4WD Fuel TypePetrolPetrol Mileage (ARAI)48.45Petrol Fuel Tank Capacity (Litres)42.0Emission Norm ComplianceEU 6Top Speed (Kmph)280', '8000000.00', '7800000.00', '0003', 'instock', 0, 3, '1672673013.jpg', ',16726730130.jpg,16726730131.jpg,16726730132.jpg', 43, '2023-01-02 09:53:33', '2023-01-02 09:53:33', NULL),
(54, 'Audi A5 S Line 2018', 'audi-a5-s-line-2018', 'The Audi A5 S Line 2018 has 1 Petrol Engine on offer. The Petrol engine is 2000 cc .', 'The A5 Sportback’s standard 252-hp turbocharged 2.0-liter inline-four, seven-speed dual-clutch automatic transmission, and Quattro all-wheel drive make for a winning formula in both efficiency and performance. Smooth and sonorous, the 2.0-liter engine provides effortless power while the transmission shifts gears quickly and seamlessly; it’s a polished and well-matched setup made all the more capable by standard all-wheel drive', '12000000.00', '11800000.00', '0004', 'instock', 1, 3, '1672673166.jpg', ',16726731660.jpg,16726731661.jpg,16726731662.jpg', 43, '2023-01-02 09:56:06', '2023-01-02 09:56:06', NULL),
(55, 'Land Rover Defender 2018', 'land-rover-defender-2018', 'The Land Rover Defender 2018 1 Diesel Engine on offer. The Diesel engine is 2200 cc .', 'Under the square-jawed bonnet, Classic’s team of brown-coated technicians have squashed in one of the brand’s 5.0-litre V8 petrol engines. Despite losing the Range Rover’s supercharger, the Works Defender is a far cry from the last 2.2-litre diesel models, which left the Solihull factory two years ago.To cope with the V8’s 400bhp and 515Nm of torque, the Defender has been heavily fettled under the familiar boxy bodywork. There’s an eight-speed ZF automatic gearbox with the ‘trigger’ gearlever from a Jaguar F-Type, beefier brakes and a handling kit comprising new springs, dampers and anti-roll bars.', '22500000.00', '22000000.00', '0005', 'instock', 0, 2, '1672673403.jpg', ',16726734030.jpg,16726734031.jpg', 47, '2023-01-02 10:00:03', '2023-01-02 10:00:03', NULL),
(56, 'Land Rover Discovery 4 HSE 2015', 'land-rover-discovery-4-hse-2015', 'The Land Rover Discovery 4 HSE 2015 1 Diesel Engine on offer. The Diesel engine is 3000 cc .', 'It offers a spacious seven seats, good fuel economy, lots of features, strong 3500kg tow rating plus awesome off-road ability. The eight-speed automatic helps the 183kW/600Nm 3-litre bi-turbo V6 diesel to move the bulky 2.5-tonne body.The engine is a clean-up version on the longstanding V6 that is also used in the Range Rover and Jaguar. Bonus bits include the five-mode terrain assist mode that alters engine, transmission and braking to suit driver-selected road conditions.', '26000000.00', '24900000.00', '0006', 'instock', 1, 3, '1672673560.jpg', ',16726735600.jpg,16726735601.jpg,16726735602.jpg', 47, '2023-01-02 10:02:40', '2023-01-02 10:02:40', NULL),
(57, 'Land Rover Freelander 2 SD4 GS 2011', 'land-rover-freelander-2-sd4-gs-2011', 'The Land Rover Freelander 2 SD4 GS 2011 1 Diesel Engine on offer. The Diesel engine is 2200 cc ', 'The 2011 Freelander 2 model range, on sale in the UK from the end of September 2010, benefits from a new 2.2-litre diesel engine available with either 150PS or 190PS outputs, a new look exterior plus interior alterations including new instrument dials and a new Premium Pack option.', '17000000.00', '16500000.00', '0007', 'instock', 0, 3, '1672673745.jpg', ',16726737450.jpg,16726737451.jpg,16726737452.jpg', 47, '2023-01-02 10:05:45', '2023-01-02 10:05:45', NULL),
(58, 'Land Rover Freelander 2 TD4 2013', 'land-rover-freelander-2-td4-2013', 'The Land Rover Freelander 2 TD4 2013 1 Diesel Engine on offer. The Diesel engine is 2200 cc .', 'Engines were refreshed in 2011 and remain unaltered, which means a 2.2-litre diesel with 148bhp or 188bhp is the only option. The lower-powered engine is available with two- or four-wheel drive badged eD4 and TD4 respectively and is fitted with a six-speed manual gearbox.', '19000000.00', '18800000.00', '0008', 'instock', 0, 3, '1672673869.jpg', ',16726738690.jpg,16726738691.jpg,16726738692.jpg', 47, '2023-01-02 10:07:49', '2023-01-02 10:07:49', NULL),
(59, 'Land Rover Range Rover Autobiography 2019', 'land-rover-range-rover-autobiography-2019', 'The Land Rover Range Rover Autobiography 2019 1 Diesel Engine on offer. The Diesel engine is 5000 cc .', 'Land Rover\'s flagship Range Rover SUV seats up to five and uses aluminum construction to save weight.  Buyers have a choice of a gas 340- or 380-horsepower, supercharged 3.0-liter V-6 engine; a 254-hp, turbo-diesel 3.0-liter V-6 or a 518- or 557-hp, supercharged 5.0-liter V-8. A plug-in hybrid model with an electric-only range of up to 31 miles, according to Land Rover, is new for 2019. All trim levels come with four-wheel drive and an eight-speed automatic transmission.', '49000000.00', '47000000.00', '0009', 'instock', 1, 3, '1672674015.jpg', ',16726740150.jpg', 47, '2023-01-02 10:10:15', '2023-01-02 10:10:15', NULL),
(60, 'Range Rover Autobiography 2016', 'range-rover-autobiography-2016', 'The Land Rover Range Rover Autobiography 2016 1 Diesel Engine on offer. The Diesel engine is 3000 cc .', 'Land Rover\'s flagship Range Rover SUV seats up to five and uses aluminum construction to save weight.  Buyers have a choice of a gas 340- or 380-horsepower, supercharged 3.0-liter V-6 engine; a 254-hp, turbo-diesel 3.0-liter V-6 or a 518- or 557-hp, supercharged 5.0-liter V-8. A plug-in hybrid model with an electric-only range of up to 31 miles, according to Land Rover, is new for 2016. All trim levels come with four-wheel drive and an eight-speed automatic transmission.', '38000000.00', '37800000.00', '0010', 'instock', 1, 3, '1672674213.jpg', ',16726742130.jpg,16726742131.jpg,16726742132.jpg', 47, '2023-01-02 10:13:33', '2023-01-02 10:13:33', NULL),
(61, 'Benz A180', 'benz-a180', 'The Benz A180 has 1 Petrol Engine on offer. The Petrol engine is 1600 cc .', 'Mercedes-Benz A-Class A 180 Sport is one of the two variants in this well-famed model series. The vehicle is revised with minor updates to improve the overall driving experience. Starting with the tech specs, it is powered by the same 1.6-litre turbocharged engine, which takes the vehicle to a top speed of 202kmph. Its prowess on the road is guarded with a range of important safety features', '9000000.00', '8800000.00', '0011', 'instock', 0, 3, '1672674769.jpg', ',16726747690.jpg,16726747691.jpg,16726747692.jpg', 42, '2023-01-02 10:22:49', '2023-01-02 10:22:49', NULL),
(62, 'Benz CLS350(4MATIC)', 'benz-cls3504matic', 'The BMW i8 has 1 Petrol Engine on offer. The Petrol engine is 2500 cc .', 'Specs datasheet with technical data and performance data plus an analysis of the direct market competition of Mercedes-Benz CLS 350 d 4MATIC (aut. 9) in 2020, the model with 4-door fastback sedan body and Line-6 2927 cm3 / 179 cui, 210 kW / 286 PS / 282 hp (ECE) of power, 600 Nm / 442 lb-ft of torque, 9-speed automatic powertrain offered up to June 2020 for Europe . According to the ProfessCars™ estimation this Mercedes-Benz would accelerate 0-60 mph in 5.5 sec, 0-100 km/h in 5.8 sec, 0-200 km/h in 26.1 sec and quarter mile time is 14 sec. This car is 4988 mm / 196.4 in long, 1890 mm / 74.4 in wide and 1435 mm / 56.5 in high. Check the tables below for detailed outside and inside dimensions, output, fuel economy and performance data. Specs review by Pawel Zal.', '12000000.00', '11900000.00', '0012', 'instock', 1, 2, '1672713993.jpg', ',16727139930.jpg,16727139931.jpg,16727139932.jpg', 42, '2023-01-02 21:16:33', '2023-01-02 21:16:33', NULL),
(63, 'Mercedes Benz C180 2017', 'mercedes-benz-c180-2017', 'The Mercedes Benz C180 2017 has 1 Petrol Engine on offer. The Petrol engine is 1600 cc .', 'Specs datasheet with technical data and performance data plus an analysis of the direct market competition of Mercedes-Benz C 180 (man. 6) in 2017, the model with 4-door sedan body and Line-4 1595 cm3 / 97.4 cui, 115 kW / 156 PS / 154 hp (ECE) of power, 250 Nm / 184 lb-ft of torque, 6-speed manual powertrain for Europe . According to the ProfessCars™ estimation this Mercedes-Benz would accelerate 0-60 mph in 7.7 sec, 0-100 km/h in 8.1 sec, 0-200 km/h in 44.8 sec and quarter mile time is 15.9 sec. This car is 4686 mm / 184.5 in long, 1810 mm / 71.3 in wide and 1442 mm / 56.8 in high. Check the tables below for detailed outside and inside dimensions, output, fuel economy and performance data.', '16000000.00', '15500000.00', '0013', 'instock', 1, 3, '1672714119.jpg', ',16727141190.jpg,16727141191.jpg,16727141192.jpg', 42, '2023-01-02 21:18:39', '2023-01-02 21:18:39', NULL),
(64, 'Mercedes Benz C180 2017 RED', 'mercedes-benz-c180-2017-red', 'The Mercedes Benz C180 2017 has 1 Petrol Engine on offer. The Petrol engine is 1600 cc .', 'Specs datasheet with technical data and performance data plus an analysis of the direct market competition of Mercedes-Benz C 180 (man. 6) in 2017, the model with 4-door sedan body and Line-4 1595 cm3 / 97.4 cui, 115 kW / 156 PS / 154 hp (ECE) of power, 250 Nm / 184 lb-ft of torque, 6-speed manual powertrain for Europe . According to the ProfessCars™ estimation this Mercedes-Benz would accelerate 0-60 mph in 7.7 sec, 0-100 km/h in 8.1 sec, 0-200 km/h in 44.8 sec and quarter mile time is 15.9 sec. This car is 4686 mm / 184.5 in long, 1810 mm / 71.3 in wide and 1442 mm / 56.8 in high. Check the tables below for detailed outside and inside dimensions, output, fuel economy and performance data.', '13000000.00', '12900000.00', '0014', 'instock', 1, 3, '1672714212.jpg', ',16727142120.jpg,16727142121.jpg,16727142122.jpg,16727142123.jpg', 42, '2023-01-02 21:20:12', '2023-01-02 21:20:12', NULL),
(65, 'Mercedes Benz C180 Kompressor 2011', 'mercedes-benz-c180-kompressor-2011', 'The Mercedes Benz C180 Kompressor 2011 has 1 Petrol Engine on offer. The Petrol engine is 1600 cc .', 'Mercedes-Benz C 180 Kompressor BlueEFFICIENCY is an automobile that has a 4 door saloon type body with a front mounted engine that delivers power to the rear wheels. It is part of Mercedes-Benz\'s W 204 model series. Its 4 cylinder, double overhead camshaft supercharged engine has 4 valves per cylinder and a volume of 1.6 litres. It provides power and torque figures of 154 bhp (156 PS/115 kW) at 5200 rpm and 230 Nm (170 lbft/23.5 kgm) at 2800-4600 rpm respectively. The engine delivers its power through to the wheels by means of a 6 speed manual transmission. The stated kerb weight is 1480 kg. Maximum speed claimed is 230 km/h or 143 mph, official fuel consumption is 9.5/5.1/6.7 l/100km urban/extra-urban/combined, and carbon dioxide emissions are 159.0 g/km.', '11000000.00', '10800000.00', '0015', 'instock', 0, 4, '1672714325.jpg', ',16727143250.jpg,16727143251.jpg,16727143252.jpg', 42, '2023-01-02 21:22:05', '2023-01-02 21:22:05', NULL),
(66, 'Mercedes Benz Coupe 2016', 'mercedes-benz-coupe-2016', 'The Mercedes Benz Coupe 2016 has 1 Petrol Engine on offer. The Petrol engine is 1600 cc .', 'The Mercedes-Benz Coupe is a rear wheel drive car, with its engine mounted in the front, and a 2 door coupé body. The Mercedes-Benz E 200 Coupé is one of the C 238 model family from Mercedes-Benz. Its engine is a turbocharged petrol, 2 litre, double overhead camshaft 4 cylinder with 4 valves per cylinder. In this application it develops 181.5 bhp (184 PS/135 kW) of power at 5500 rpm, and maximum torque of 300 N·m (221 lb·ft/30.6 kgm) at 1200-4000 rpm. The power is supplied to the wheels through a 9 speed automatic gearbox. Claimed weight at the kerb is 1655 kg. Top quoted speed is 240 km/h (149 mph), and carbon dioxide emissions are 136.0 g/km.', '14000000.00', '14500000.00', '0016', 'instock', 1, 3, '1672714437.jpg', ',16727144370.jpg,16727144371.jpg,16727144372.jpg', 42, '2023-01-02 21:23:57', '2023-01-02 21:23:57', NULL),
(67, 'Mercedes Benz E200 2010', 'mercedes-benz-e200-2010', 'The Mercedes Benz E200 2010 has 1 Petrol Engine on offer. The Petrol engine is 1800 cc .', '2010 Mercedes-Benz E 200 CGI BlueEfficiency automatic (aut. 5) (Base, Elegance, Avantgarde).\nSpecs datasheet with technical data and performance data plus an analysis of the direct market competition of Mercedes-Benz E 200 CGI BlueEfficiency automatic (aut. 5) (Base, Elegance, Avantgarde) in 2010, the model with 4-door sedan body and Line-4 1796 cm3 / 109.8 cui, 135 kW / 184 PS / 181 hp (ECE) of power, 270 Nm / 199 lb-ft of torque, 5-speed automatic powertrain for Europe . According to the ProfessCars™ estimation this Mercedes-Benz would accelerate 0-60 mph in 8.2 sec, 0-100 km/h in 8.8 sec, 0-200 km/h in 42.9 sec and quarter mile time is 16.1 sec. This car is 4868 mm / 191.7 in long, 1854 mm / 73 in wide and 1464 mm / 57.6 in high. Check the tables below for detailed outside and inside dimensions, output, fuel economy and performance data.', '17000000.00', '16800000.00', '0018', 'instock', 1, 1, '1672714554.jpg', ',16727145540.jpg', 42, '2023-01-02 21:25:54', '2023-01-02 21:25:54', NULL),
(68, 'Mercedes Benz E300 (Edition E) 2015', 'mercedes-benz-e300-edition-e-2015', 'The Mercedes Benz E300 (Edition E) 2015 has 1 Petrol Engine on offer. The Petrol engine is 3500 cc .', '2015 Mercedes-Benz E 300 BlueTEC (E 300 d) T-modell (aut. 9) .\nSpecs datasheet with technical data and performance data plus an analysis of the direct market competition of Mercedes-Benz E 300 BlueTEC (E 300 d) T-modell (aut. 9) in 2015, the model with 5-door station wagon body and V-6 2987 cm3 / 182.4 cui, 170 kW / 231 PS / 228 hp (ECE) of power, 540 Nm / 398 lb-ft of torque, 9-speed automatic powertrain for Europe . According to the ProfessCars™ estimation this Mercedes-Benz would accelerate 0-60 mph in 6.8 sec, 0-100 km/h in 7.2 sec, 0-200 km/h in 37.4 sec and quarter mile time is 15.2 sec. This car is 4905 mm / 193.1 in long, 1854 mm / 73 in wide and 1507 mm / 59.3 in high. Check the tables below for detailed outside and inside dimensions, output, fuel economy and performance data.', '20000000.00', '19800000.00', '0020', 'instock', 1, 2, '1672714662.jpg', ',16727146620.jpg,16727146621.jpg,16727146622.jpg', 42, '2023-01-02 21:27:42', '2023-01-02 21:27:42', NULL),
(69, 'BMW 318i Sport Line', 'bmw-318i-sport-line', 'The 318i Sport Line has 1 Petrol Engine on offer. The Petrol engine is 3000 cc .', 'F30 LCI Sport Line Sedan 4dr Man 6sp 1.5T The 3 Series is BMW\'s mainstay. Include spin-off models such as the 4 Series coupes and convertibles, and it stands above all other BMWs. It\'s complex though. In addition to regular 3 Series sedans, there\'s the Touring wagon and the Grand Turismo five-door hatch, then sedan-based, two-door 4 Series coupes and convertibles, and the four-door Gran Coupe. Factor in an array of engine options and \"3 Series BMW\" can mean many things. From the endearing 100kW/220Nm 1.5-litre three-cylinder, the next step is the 135kW/270Nm 2.0-litre turbo, then the 140kW/400Nm 2.0-litre diesel, then BMW\'s 185kW/350NM 3.0-litre petrol six. There\'s the 2.1L/100km 330e hybrid too .', '10000000.00', '9800000.00', '0021', 'instock', 1, 1, '1672715065.jpg', ',16727150650.jpg,16727150651.jpg,16727150652.jpg', 41, '2023-01-02 21:34:25', '2023-01-02 21:34:25', NULL),
(70, 'BMW 520d M Sport', 'bmw520d-m-sport', 'The 520d M Sport has 1 Petrol Engine on offer. The Petrol engine is 1995 cc .', 'BMW 5 Series 520d M Sport is the top model in the 5 Series lineup and the price of 5 Series top model is Lakh.It returns a certified mileage of 18.12 kmpl. This 520d M Sport variant comes with an engine putting out 190 bhp @ 4000 rpm and 400 Nm @ 1750 rpm of max power and max torque respectively. BMW 5 Series520d M Sport is available in Automatic transmission and offered in 3 colours: Mediterranean Blue Metallic, Carbon Black Metallic and Alpine White.', '10000000.00', '9700000.00', '0023', 'instock', 1, 1, '1672715155.jpg', ',16727151550.jpg,16727151551.jpg,16727151552.jpg', 41, '2023-01-02 21:35:55', '2023-01-02 21:35:55', NULL),
(71, 'BMW 318i M Sport 2018', 'bmw-318i-m-sport-2018', 'The BMW 318i M Sport 2018 has 1 Petrol Engine on offer. The Petrol engine is 1500 cc .', 'F30 LCI M Sport Sedan 4dr Spts Auto 8sp 1.5T The 3 Series is BMW\'s mainstay. Include spin-off models such as the 4 Series coupes and convertibles, and it stands above all other BMWs. It\'s complex though. In addition to regular 3 Series sedans, there\'s the Touring wagon and the Grand Turismo five-door hatch, then sedan-based, two-door 4 Series coupes and convertibles, and the four-door Gran Coupe. Factor in an array of engine options and \"3 Series BMW\" can mean many things. From the endearing 100kW/220Nm 1.5-litre three-cylinder, the next step is the 135kW/270Nm 2.0-litre turbo, then the 140kW/400Nm 2.0-litre diesel, then BMW\'s 185kW/350NM 3.0-litre petrol six. There\'s the 2.1L/100km 330e hybrid too . . .', '9000000.00', '8900000.00', '0024', 'instock', 0, 2, '1672715236.jpg', ',16727152360.jpg,16727152361.jpg,16727152362.jpg', 41, '2023-01-02 21:37:16', '2023-01-02 21:37:16', NULL),
(72, 'BMW 520D 2013', 'bmw-520d-2013', 'The BMW 520D 2013 has 1 Petrol Engine on offer. The Petrol engine is 2000 cc .', 'The 520d is a rear wheel drive saloon (sedan) car with a front mounted engine, sold by BMW. The 520d forms part of BMW\'s F10 series of cars. Its 2 litre engine is a turbocharged, double overhead camshaft, 4 cylinder unit that develops 181 bhp (184 PS/135 kW) of power at 4000 rpm, and maximum torque of 380 N·m (280 lb·ft/38.8 kgm) at 1750 rpm. The engine drives the wheels through a 6 speed manual \'box. The quoted weight at the kerb is 1695 kg. Top stated speed is 234 km/h, which equates to 145 mph, manufacturer claimed fuel consumption figures are 5.4/4.0/4.5 l/100km urban/extra-urban/combined, and carbon dioxide emissions are 119.0 g/km.', '12000000.00', '11000000.00', '0025', 'instock', 1, 1, '1672715317.jpg', ',16727153170.jpg,16727153171.jpg,16727153172.jpg', 41, '2023-01-02 21:38:37', '2023-01-02 21:38:37', NULL),
(73, 'BMW 523i 2011', 'bmw-523i-2011', 'The BMW 523i 2011 has 1 Petrol Engine on offer. The Petrol engine is 2000 cc .', 'specs datasheet with technical data and performance data plus an analysis of the direct market competition of BMW 523i Steptronic (aut. 8) in 2011, the model with 4-door sedan body and Line-6 2996 cm3 / 183 cui, 150 kW / 204 PS / 201 hp (ECE) of power, 270 Nm / 199 lb-ft of torque, 8-speed automatic with Steptronic manual shift mode powertrain offered up to August 2011 for Europe . According to the ProfessCars™ estimation this BMW would accelerate 0-60 mph in 7.5 sec, 0-100 km/h in 8 sec, 0-200 km/h in 41.1 sec and quarter mile time is 15.7 sec. This car is 4899 mm / 192.9 in long, 1860 mm / 73.2 in wide and 1464 mm / 57.6 in high. Check the tables below for detailed outside and inside dimensions, output, fuel economy and performance data', '13000000.00', '12700000.00', '0028', 'instock', 1, 1, '1672715497.jpg', ',16727154970.jpg,16727154971.jpg,16727154972.jpg', 41, '2023-01-02 21:41:37', '2023-01-02 21:41:37', NULL),
(74, 'Toyota Avensis', 'toyota-avensis', 'Toyota Avensis has 1 Diesel Engine on offer. The Diesel engine is 2200 cc .', 'The best all-round engine is the 2.0-litre diesel engine with 141bhp, which allows the Avensis to accelerate from 0-62mph in 9.5 seconds. There\'s also a new 1.6-litre D-4D diesel – 110bhp and 0-62mph taking 11.8 seconds – and a 145bhp 1.8-litre petrol that gets to 62mph 9.4 seconds.  ', '8000000.00', '7900000.00', '0029', 'instock', 0, 1, '1672729927.jpg', ',16727299270.jpg,16727299271.jpg,16727299272.jpg', 49, '2023-01-03 01:42:07', '2023-01-03 01:42:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Paint Colour', '2022-10-14 02:00:30', '2023-01-02 09:41:49'),
(6, 'Wheel Colour', '2023-01-02 09:42:02', '2023-01-02 09:42:02'),
(7, 'Seat Colour', '2023-01-02 09:44:03', '2023-01-02 09:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 14, '1667807639.jpg', '0779868753', '140/A, Ja Ela Road,', 'Gampaha', 'Gampaha', 'Western', 'Sri Lanka', '11030', '2022-11-07 02:23:04', '2022-11-07 02:23:59'),
(2, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 04:00:33', '2022-11-07 04:00:33'),
(3, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 01:43:52', '2023-01-03 01:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Good Vehicle', 24, '2022-11-07 03:54:42', '2022-11-07 03:54:42'),
(2, 5, 'Good Vehicle.', 25, '2022-11-07 04:36:01', '2022-11-07 04:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-12-10 03:43:39', 1, NULL, '2022-11-07 01:28:28');

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
('ssX48FgcmqFpG010dtwoKKixJR7h5RW8rZV7Bdn1', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMjY1b3RnQjFwUUhzM3JvRzEwVkFuQWlGSk5lbEpXcU03NFJ2aVVOcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWNhdGVnb3J5L2JtdyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO3M6NToidXR5cGUiO3M6MzoiQURNIjtzOjQ6ImNhcnQiO2E6Mjp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==', 1672730131);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instergram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instergram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'info@autotrader.com', '011 350 1095', '072 890 9115', '10/A, Galle Road, Colombo 04', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.6930342422124!2d79.84288541459279!3d6.927247694994918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25bcfdee7764d%3A0xdf97fbb66912b0c5!2sOne%20Galle%20Face%20Mall!5e0!3m2!1sen!2slk!4v1667807067532!5m2!1sen!2slk\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.pinterest.com/', 'https://www.instergram.com/', 'https://www.youtube.com/', NULL, '2022-11-07 02:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-15 09:36:14', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:27:\"asperiores qui facilis magn\";s:5:\"price\";d:442;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-15 06:20:05', NULL),
('dummy@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"2c5e6c817e56b80237c4230cbc284396\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"2c5e6c817e56b80237c4230cbc284396\";s:2:\"id\";i:29;s:3:\"qty\";i:1;s:4:\"name\";s:2:\"11\";s:5:\"price\";d:10;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colors\";s:4:\"Blue\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-14 07:58:24', NULL),
('dummy@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-14 07:58:18', NULL),
('laki@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"0f6c1798aa972a19d9ae90e50c3d9c99\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"0f6c1798aa972a19d9ae90e50c3d9c99\";s:2:\"id\";i:40;s:3:\"qty\";i:1;s:4:\"name\";s:23:\"Toyota Hilux Double Cab\";s:5:\"price\";d:25000000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"13ab6e098dcbd5b9cc23aaa806952b02\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"13ab6e098dcbd5b9cc23aaa806952b02\";s:2:\"id\";i:39;s:3:\"qty\";i:1;s:4:\"name\";s:19:\"Mercedes-Benz C200 \";s:5:\"price\";d:1500000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-02 06:16:23', NULL),
('laki@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-02 06:14:14', NULL),
('newadmin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-01-03 01:45:12', NULL),
('newadmin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-01-03 01:45:12', NULL),
('seller@bmw.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-01-02 21:28:23', NULL),
('seller@bmw.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-01-02 21:28:23', NULL),
('user02@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:27:\"asperiores qui facilis magn\";s:5:\"price\";d:442;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-15 06:30:24', NULL),
('user02@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:27:\"asperiores qui facilis magn\";s:5:\"price\";d:442;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:30:\"ullam necessitatibus sunt saep\";s:5:\"price\";d:445;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";s:2:\"id\";i:4;s:3:\"qty\";i:1;s:4:\"name\";s:32:\"veritatis ipsum eligendi aliquid\";s:5:\"price\";d:221;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-15 06:26:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(11, 'Seller', 'Seller@gmail.com', NULL, '$2y$10$9n82rvzerpDyU/I.HxS2RekTiM1lrUXl0TroVaWAv2IidGd9PbdsO', NULL, NULL, NULL, NULL, NULL, NULL, 'SEL', '2022-10-15 06:38:38', '2022-10-15 06:38:38'),
(13, 'New Admin', 'newadmin@gmail.com', NULL, '$2y$10$LQVIG7Xoj.097/9vraN15.zqgXsMsHUAOE3rc3LtrOW/3TVPihPg2', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-10-15 09:39:53', '2022-10-15 09:39:53'),
(14, 'Lakindu', 'laki@gmail.com', NULL, '$2y$10$YgWwomxMnLIFnN3l6UMxI.FR4NFfd.NC/B0JjCQkw1XHaT43hcDsq', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-05 04:48:56', '2022-11-07 02:24:25'),
(15, 'BMW', 'seller@bmw.com', NULL, '$2y$10$HucTTo66DcFtnXrLcLB5memu2g6omYqmaPCiEBHg.IFaqB1ZYO4ZW', NULL, NULL, NULL, NULL, NULL, NULL, 'SEL', '2022-11-07 03:57:11', '2022-11-07 03:57:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
