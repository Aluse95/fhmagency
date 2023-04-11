-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 11, 2023 lúc 11:14 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `advertisement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_information`)),
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Thắng Nguyễn', 'huuthangb2k50@gmail.com', '$2y$10$1IT8.iwpx.s9JyY.7RZdFOwPHQt4gyMWLgIp0obcdvu/kveTJGFwi', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2022-12-08 03:56:38'),
(2, 'Test', 'test@gmail.com', '$2y$10$HUngJN3oO9HtaWjkH7StheWYC3TrhFMd9hTWewtWf5jwNvJ6R5FOK', 1, NULL, 0, 'active', NULL, NULL, NULL, '2022-07-08 11:13:53', '2023-03-18 03:41:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tuonglee1001@gmail.com', 'dArb8WKTeCBJskw6aKtdvxtRM9saGkhU1AteBIO454bpcXNj5yUDouyhN3s7R9ie', '2023-03-20 03:24:04'),
('tuonglee1001@gmail.com', 'c1u1cjiW91qzmTkC46hygHnS41zWAqzXij6yL1Msi7bc1LSZRiXBIHLQ6Gj5pYzG', '2023-03-20 03:29:00'),
('tuonglee1001@gmail.com', '8Upx7cgnGLHDICG172SIK8tgLE4vSl0Buj9tg1NwuhGfI6wjW87lnql3wFV7Owp1', '2023-03-20 03:29:32'),
('tuonglee1995@gmail.com', 'D2NTcpxuNTH8WXYxIIN3QxBvcKD1TvciO0v7a2HAota92aawFAVzDMjn7lPT05aa', '2023-03-20 04:51:01'),
('tuonglee1995@gmail.com', 'UAha9G7iFWrndV7H793EDsV1bP1F6zU11u6mf9Em6EanFIkj8OgsOUtQcYlVWyFJ', '2023-03-22 07:24:06'),
('tuonglee1995@gmail.com', 'vQ21s5NqZAwm43u4Fo99p8FRfWzB5PCEVrtoTFoEHyrPluirAJntJkFin57yLjKZ', '2023-03-22 07:25:30'),
('tuonglee1995@gmail.com', 'JZZvvsJxmeX9gFNBLJXWbrzqq7odpPnnUYPeXrQ7NMcS86u2QgquuefTpcMXoCAM', '2023-03-22 07:31:55'),
('tuonglee1995@gmail.com', 'QcafE2Ls8v31CJ74beqvB5XOgBOCoDMMU6vjcYEjUMg7ho8YPTsy80lyp7WAVsGc', '2023-03-22 07:38:58'),
('tuonglee1001@gmail.com', 'phERJoG07QTpZ9JeGzvvUmLrt4tKmmJfz3XyN9IgHfpbfGLA3rx72zKLIbnCwoZn', '2023-03-22 08:20:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `toolbar` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 4, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-12-31 04:36:46'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 3, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-12-31 04:36:36'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 999, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2022-08-06 08:30:21'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục - thể loại', NULL, 'cms_taxonomys', 1, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2022-05-30 08:46:51'),
(53, 51, 'Quản lý bài viết', NULL, 'cms_posts', 2, 'active', NULL, 1, 1, '2022-05-30 09:56:47', '2022-05-30 09:56:47'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(62, 72, 'Quản lý Đăng ký bản tin', NULL, 'call_request', 2, 'active', NULL, 1, 1, '2022-06-10 03:01:44', '2022-12-07 02:40:22'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(73, 51, 'Quản lý dịch vụ', NULL, 'cms_services', 3, 'active', NULL, 1, 1, '2022-10-08 03:23:29', '2023-04-06 15:23:43'),
(76, NULL, 'Khai báo Module Functions', NULL, 'module_functions', 5, 'active', NULL, 1, 1, '2022-12-31 01:44:58', '2022-12-31 04:36:52'),
(77, 76, 'Khai báo Modules', NULL, 'modules', 1, 'active', NULL, 1, 1, '2022-12-31 01:45:41', '2022-12-31 01:45:41'),
(78, 76, 'Khai báo Blocks', NULL, 'blocks', 2, 'active', NULL, 1, 1, '2022-12-31 01:46:03', '2022-12-31 01:46:03'),
(79, 76, 'Khai báo tham số', NULL, 'options', 3, 'active', NULL, 1, 1, '2022-12-31 01:46:24', '2022-12-31 01:46:24'),
(80, 72, 'Quản lý đơn hàng', NULL, 'order_products', 1, 'active', NULL, 1, 1, '2023-01-03 09:59:54', '2023-01-03 10:04:21'),
(82, 51, 'Quản lý dự án', NULL, 'cms_resources', 4, 'active', NULL, 1, 1, '2023-04-07 02:32:02', '2023-04-07 02:58:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_percent` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"static\",\r\n                \"logo_partner\"\r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2022-12-31 01:47:03'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n		\"problems\",\r\n		\"service\",\r\n		\"benefit\",\r\n		\"case_study\",\r\n		\"price\",\r\n                \"testimonial\"\r\n	]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2023-04-06 03:11:40'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2022-12-05 09:11:16'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2022-12-05 09:11:25'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'active', 1, 1, '2022-05-31 07:25:43', '2022-12-31 03:36:17'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 1, 7, 'active', 1, 1, '2022-05-31 09:53:32', '2023-01-03 15:54:48'),
(24, 'Khối danh sách dự án nổi bật', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 6, 'active', 1, 1, '2022-06-01 08:38:54', '2023-04-07 02:36:34'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"user.password\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\",\r\n		\"order.detail\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2023-03-31 07:21:43'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\"\r\n	]\r\n}', 1, 8, 'active', 1, 1, '2022-09-13 09:23:28', '2023-03-13 10:00:56'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-10-08 03:22:14', '2022-12-31 03:36:05'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, NULL, 'deactive', 1, 1, '2022-10-17 04:36:18', '2022-11-30 07:21:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `url_link_title` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 'Các vấn đề marketing của doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":\"problems\",\"style\":null}', '/data/cms-image/1/vision.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2021-10-12 10:29:41', '2023-04-10 03:50:13'),
(74, NULL, 'Khối hình ảnh banner đầu trang', 'Digital Marketing đa nền tảng cùng với FHM Agency', 'FHM là đơn vị tiên phong trong lĩnh vực quảng cáo đa nền tảng tại Việt Nam. Chuyên cung cấp hệ thống giải pháp và dịch vụ Marketing đa dạng, giúp doanh nghiệp phát triển và tăng trưởng toàn diện trên khắp các trang mạng xã hội.', 'banner', '{\"layout\":\"static\",\"style\":null}', '/data/cms-image/1/Banner/hero.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-03-18 17:50:28', '2023-04-06 09:59:40'),
(79, NULL, 'FHM sẽ tối ưu và giải quyết triệt để bài toán Marketing cho doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":\"benefit\",\"style\":null}', '/data/cms-image/1/web.png', '/data/cms-image/1/background/bg2.jpg', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-31 07:26:33', '2023-04-07 07:02:47'),
(94, NULL, 'Khối hiển thị nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-06-02 11:24:21', '2022-06-03 03:49:47'),
(96, 241, '#2', 'COO - FHM Agency', NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:35:29'),
(97, 241, '#1', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:36:29'),
(103, 241, '#4', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:36:51'),
(104, 241, '#3', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:35:32'),
(299, NULL, 'Liên hệ với chúng tôi', 'Đăng kí ngay để nhận khuyến mãi', NULL, 'form', '{\"layout\":\"booking\",\"style\":null}', '/data/cms-image/1/vision.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 11, 'active', 1, 1, '2022-11-15 10:36:53', '2023-04-06 04:35:26'),
(304, 19, 'Tự chạy quảng cáo nhưng không hiệu quả', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-12-31 03:14:37', '2023-04-06 10:25:48'),
(342, 19, 'Không có chiến lược quảng cáo đúng đắn', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, 'icon-shield-alt', NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-03-13 09:22:02', '2023-04-06 10:26:05'),
(343, 19, 'Chi phí đầu tư cho marketing thấp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, 'icon-users1', NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-03-13 09:22:40', '2023-04-06 10:26:21'),
(344, 19, 'Chưa tìm được đơn vị Agency phù hợp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, 'icon-truck', NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-03-13 09:23:12', '2023-04-06 10:26:32'),
(345, NULL, 'Khách hàng của chúng tôi', NULL, NULL, 'banner', '{\"layout\":\"logo_partner\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'active', 1, 1, '2023-03-13 10:23:13', '2023-04-06 03:15:56'),
(346, 345, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/nhatv.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:28:19'),
(347, 345, '#2', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/cri.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:29:08'),
(348, 345, '#3', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/bigwater.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:29:24'),
(349, 345, '#4', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/coollogo_com-11342522.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:29:31'),
(350, 345, '#5', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/delux-home.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:29:44'),
(351, 345, '#6', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/eco.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:29:52'),
(352, 345, '#7', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/hyfg.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:30:19'),
(353, 345, '#8', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/logo_light.png', NULL, NULL, NULL, NULL, NULL, NULL, 8, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:30:26'),
(354, 345, '#9', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/nhathuoc.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 9, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:30:34'),
(355, 345, '#10', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/phan.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 10, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:30:44'),
(356, 345, '#11', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/qlady.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 11, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:30:53'),
(357, 345, '#12', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/t&g.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 12, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:31:00'),
(358, 345, '#13', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/thaiever.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 13, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:31:34'),
(359, 345, '#14', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/ththt.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 14, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:31:42'),
(360, 345, '#15', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/tmc.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 15, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:31:54'),
(361, 345, '#16', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/partner/vfd.JPG', NULL, NULL, NULL, NULL, NULL, NULL, 16, 'active', 1, 1, '2023-03-13 10:28:30', '2023-04-06 04:32:07'),
(362, 19, 'Gặp khó khăn trong việc xây dựng ý tưởng mới', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-04-05 10:00:06', '2023-04-06 10:26:43'),
(363, 79, 'Nâng cao hiệu quả quảng cáo, thúc đẩy doanh số bán hàng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-04-05 10:50:16', '2023-04-06 10:30:54'),
(364, 79, 'Xây dựng các kế hoạch Digital Marketing phù hợp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-04-05 10:50:16', '2023-04-06 10:31:02'),
(365, 79, 'Đặt ngân sách phù hợp với khả năng chi trả', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-04-05 10:50:16', '2023-04-06 10:31:10'),
(366, 79, 'Đối tác cao cấp của Google - Meta Business Partners', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-04-05 10:50:16', '2023-04-06 10:31:25'),
(367, 79, 'Tư vấn thương hiệu và lên chiến lược quảng cáo dài hạn', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-04-05 10:50:16', '2023-04-06 10:31:55'),
(368, 79, 'Cập nhật những xu hướng công nghệ mới nhất', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-04-05 10:50:16', '2023-04-06 10:32:06'),
(379, NULL, 'FHM Agency cung cấp tất cả các dịch vụ', 'Quảng cáo Facebook, Quảng cáo Google, Quảng cáo Tiktok', NULL, 'cms_service', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-04-06 02:28:28', '2023-04-06 16:50:03'),
(383, NULL, 'Các dự án đã triển khai', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', NULL, '/data/cms-image/1/background/bg4.webp', NULL, NULL, NULL, NULL, NULL, 8, 'active', 1, 1, '2023-04-06 02:43:18', '2023-04-07 07:04:29'),
(390, NULL, 'Gia tăng doanh số cùng FHM Việt Nam', 'Bắt đầu bằng ngân sách phù hợp với khả năng của doanh nghiệp', NULL, 'custom', '{\"layout\":\"price\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'delete', 1, 1, '2023-04-06 03:12:34', '2023-04-06 16:52:59'),
(391, 390, '#1', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/price/price.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-04-06 03:14:30', '2023-04-06 16:52:45'),
(392, 390, '#2', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/price/price.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-04-06 03:14:52', '2023-04-06 16:52:49'),
(393, 390, '#3', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/price/price.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-04-06 03:15:12', '2023-04-06 16:52:54'),
(394, NULL, 'Khách hàng nói về chúng tôi', NULL, NULL, 'custom', '{\"layout\":\"testimonial\",\"style\":null}', NULL, '/data/cms-image/1/background/bg5.jpg', NULL, NULL, NULL, NULL, NULL, 10, 'active', 1, 1, '2023-04-06 04:34:38', '2023-04-07 07:14:47'),
(395, 394, 'Nguyễn Hải Đăng', 'Giám đốc công ty TNHH TMC Việt Nam', 'Xây dựng chiến lược Google Ads và Facebook ADS vô cùng hiệu quả. Giúp cho thương hiệu của tôi tiếp cận được tới nhiều khách hàng tiềm năng. Tỷ lệ để lại thông tin liên hệ cũng rất nhiều. Doanh thu từ mảng bán hàng online tăng trưởng vượt bậc. Đội ngũ kỹ thuật hỗ trợ nhanh chóng.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/clients/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-04-06 04:40:47', '2023-04-07 03:11:44'),
(396, 394, 'Trần Trung Kiên', 'Giám đốc công ty DluxHome Việt Nam', 'Đội ngũ chuyên gia của FHM Agency xỷ lý thông tin, điều chỉnh quảng cáo rất kịp thời và hiệu quả. Có chuyên môn cao, luôn đưa ra những giải pháp đẩy mạnh kinh doanh phù hợp với ngành hàng. Triển khai viết content quảng cáo chuyên nghiệp, thu hút được nhiều người dùng quan tâm tới.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/clients/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-04-06 04:41:57', '2023-04-07 03:11:57'),
(397, 394, 'Lê Huy Hoàng', 'Giám đốc công ty ThaiEver Việt Nam', 'Bảng giá của cả 3 dịch vụ cung cấp phất phù hợp với mô hình kinh doanh nhỏ của tôi, hơn nữa hiệu quả cũng rất ok. Cảm ơn anh em FHM Agency rất nhiều, hy vọng chúng ta sẽ tiếp tục hợp tác lâu dài.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/clients/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-04-06 04:40:47', '2023-04-07 03:12:09'),
(398, 394, 'Nguyễn Văn Mạnh', 'Giám đốc công ty MaxDoor', 'Bảng giá của cả 3 dịch vụ cung cấp phất phù hợp với mô hình kinh doanh nhỏ của tôi, hơn nữa hiệu quả cũng rất ok. Cảm ơn anh em FHM Agency rất nhiều, hy vọng chúng ta sẽ tiếp tục hợp tác lâu dài.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/clients/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-04-06 04:41:57', '2023-04-07 04:34:21'),
(399, 19, 'Hiểu biết về thị trường còn hạn chế', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/icon/icon.png', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-04-06 10:27:29', '2023-04-06 10:27:29'),
(400, NULL, 'FHM Agency luôn đồng hành và phát triển cùng doanh nghiệp', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vnWPVSuPH0g\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'banner', '{\"layout\":\"slide\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', 1, 1, '2023-04-07 02:19:32', '2023-04-07 02:24:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'FHM Agency', '5', '825', 'Số 16 Trần Quốc Vượng, Cầu Giấy, Hà nội', '098 226 9600', '098 226 9611', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29792.14029028318!2d105.7910779951155!3d21.03198432079961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab398a2a3667%3A0x24328ecb439376f!2sFHM%20Agency!5e0!3m2!1svi!2sus!4v1670225754820!5m2!1svi!2sus\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:47:15', '2022-12-05 09:41:38'),
(2, NULL, 'Công ty cổ phần FHM Agency Hà Nội', '5', '825', '2/25 Thọ Tháp, Cầu Giấy, Hà Nội', '0393004567', '0393004567', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29792.155949030785!2d105.791078!3d21.031906!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1670225430705!5m2!1svi!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:49:39', '2022-12-05 07:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_type` varchar(255) DEFAULT 'post',
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_thumb` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `count_visited` int(11) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(128, 48, 'service', 'Quảng cáo Facebook', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":\"<i class=\\\"icon-line-arrow-right\\\"><\\/i> T\\u01b0 v\\u1ea5n h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o hi\\u1ec7u qu\\u1ea3, ph\\u00f9 h\\u1ee3p v\\u1edbi l\\u0129nh v\\u1ef1c kinh doanh\\r\\n<i class=\\\"icon-line-arrow-right\\\"><\\/i> H\\u1ed7 tr\\u1ee3 x\\u00e2y d\\u1ef1ng content chu\\u1ea9n cho c\\u00e1c b\\u00e0i qu\\u1ea3ng c\\u00e1o\\r\\n<i class=\\\"icon-line-arrow-right\\\"><\\/i> \\u0110o l\\u01b0\\u1eddng, ph\\u00e2n lo\\u1ea1i t\\u1ec7p kh\\u00e1ch h\\u00e0ng theo t\\u1eebng nh\\u00f3m m\\u1ee5c ti\\u00eau\"},\"content\":{\"vi\":\"<div class=\\\"ddict_btn\\\" style=\\\"top: 34px; left: 439.462px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/service/Phat-trien-website.jpg', NULL, 1, 3, 1, 'active', 1, 1, '2023-04-06 16:45:03', '2023-04-10 06:53:20', 'quang-cao-facebook'),
(129, 48, 'service', 'Quảng cáo Google', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":\"<i class=\\\"icon-line-arrow-right\\\"><\\/i> Cung c\\u1ea5p b\\u1ed9 t\\u1eeb kh\\u00f3a mang t\\u1edbi hi\\u1ec7u qu\\u1ea3 chuy\\u1ec3n \\u0111\\u1ed5i cao\\r\\n<i class=\\\"icon-line-arrow-right\\\"><\\/i> Ti\\u1ebfp c\\u1eadn \\u0111\\u00fang v\\u1edbi t\\u1ec7p \\u0111\\u1ed1i t\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng\\r\\n<i class=\\\"icon-line-arrow-right\\\"><\\/i> Ph\\u00e2n t\\u00edch s\\u1ed1 li\\u1ec7u, tri\\u1ec3n khai b\\u00e1o c\\u00e1o chi ti\\u1ebft\"},\"content\":{\"vi\":\"<div class=\\\"ddict_btn\\\" style=\\\"top: 34px; left: 348.725px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/service/Phat-trien-website.jpg', NULL, 1, 3, 2, 'active', 1, 1, '2023-04-06 16:47:40', '2023-04-11 09:08:36', 'quang-cao-google'),
(130, 48, 'service', 'Quảng cáo Tiktok', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":\"<i class=\\\"icon-line-arrow-right\\\"><\\/i> Cung c\\u1ea5p b\\u1ed9 t\\u1eeb kh\\u00f3a mang t\\u1edbi hi\\u1ec7u qu\\u1ea3 chuy\\u1ec3n \\u0111\\u1ed5i cao\\r\\n<i class=\\\"icon-line-arrow-right\\\"><\\/i> Ti\\u1ebfp c\\u1eadn \\u0111\\u00fang v\\u1edbi t\\u1ec7p \\u0111\\u1ed1i t\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng\\r\\n<i class=\\\"icon-line-arrow-right\\\"><\\/i> Ph\\u00e2n t\\u00edch s\\u1ed1 li\\u1ec7u, tri\\u1ec3n khai b\\u00e1o c\\u00e1o chi ti\\u1ebft\"},\"content\":{\"vi\":\"<div class=\\\"ddict_btn\\\" style=\\\"top: 26px; left: 386.3px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/service/Phat-trien-website.jpg', NULL, 1, 0, 3, 'active', 1, 1, '2023-04-06 16:47:59', '2023-04-11 09:08:44', 'quang-cao-tiktok'),
(131, 1, 'post', 'CÁCH XÂY DỰNG CHIẾN LƯỢC MARKETING CHO NGÀNH BẤT ĐỘNG SẢN', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"Vi\\u1ec7c c\\u00f3 th\\u1ec3 ch\\u1ee7 \\u0111\\u1ed9ng trong vi\\u1ec7c ph\\u00e1t tri\\u1ec3n v\\u00e0 \\u0111\\u1ea9y m\\u1ea1nh kinh doanh \\u0111\\u01b0\\u1ee3c hay kh\\u00f4ng c\\u00f2n ph\\u1ea3i ph\\u1ee5 thu\\u1ed9c v\\u00e0o r\\u1ea5t nhi\\u1ec1u chi\\u1ebfn l\\u01b0\\u1ee3c marketing. N\\u1ebfu doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng \\u0111\\u01b0\\u1ee3c cho m\\u00ecnh m\\u1ed9t chi\\u1ebfn l\\u01b0\\u1ee3c \\u0111\\u00fang \\u0111\\u1eafn th\\u00ec s\\u1ebd kh\\u00f4ng kh\\u00f3 \\u0111\\u1ec3 l\\u00e0m ch\\u1ee7 th\\u1ecb tr\\u01b0\\u1eddng. Trong b\\u00e0i vi\\u1ebft d\\u01b0\\u1edbi \\u0111\\u00e2y, dichvuthietkewebsite.vn s\\u1ebd \\u0111\\u01b0a ra nh\\u1eefng c\\u00e1ch x\\u00e2y d\\u1ef1ng chi\\u1ebfn l\\u01b0\\u1ee3c marketing cho ng\\u00e0nh b\\u1ea5t \\u0111\\u1ed9ng s\\u1ea3n hi\\u1ec7u qu\\u1ea3, \\u0111\\u1ea3m b\\u1ea3o ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u1ecdi lo\\u1ea1i h\\u00ecnh doanh nghi\\u1ec7p.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/bds.jpg', NULL, 0, 2, NULL, 'active', 1, 1, '2023-04-07 02:47:18', '2023-04-10 04:48:39', 'cach-xay-dung-chien-luoc-marketing-cho-nganh-bat-dong-san'),
(132, 49, 'resource', 'Dự án quảng cáo fb 01', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"Thu h\\u00fat h\\u00e0ng ng\\u00e0n l\\u01b0\\u1ee3t kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng t\\u1eeb c\\u00e1c k\\u00eanh qu\\u1ea3ng c\\u1ea3o: FB, Google, Tiktok,.... Gi\\u1ea3i ph\\u00e1p t\\u0103ng doanh thu, l\\u1ee3i nhu\\u1eadn b\\u00e1n h\\u00e0ng hi\\u1ec7u qu\\u1ea3 v\\u1edbi m\\u1ee9c chi ph\\u00ed h\\u1ee3p l\\u00fd. K\\u00edch ho\\u1ea1t qu\\u1ea3ng c\\u00e1o ngay sau khi \\u0111\\u0103ng k\\u00fd d\\u1ecbch v\\u1ee5, website hi\\u1ec3n th\\u1ecb li\\u00ean t\\u1ee5c 24\\/24.\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 14px; left: 439.462px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/noi-that.jpg', NULL, 1, 4, 1, 'active', 1, 1, '2023-04-06 16:45:03', '2023-04-07 07:53:31', 'du-an-quang-cao-fb-01'),
(133, 49, 'resource', 'Dự án quảng cáo fb 02', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"Thu h\\u00fat h\\u00e0ng ng\\u00e0n l\\u01b0\\u1ee3t kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng t\\u1eeb c\\u00e1c k\\u00eanh qu\\u1ea3ng c\\u1ea3o: FB, Google, Tiktok,.... Gi\\u1ea3i ph\\u00e1p t\\u0103ng doanh thu, l\\u1ee3i nhu\\u1eadn b\\u00e1n h\\u00e0ng hi\\u1ec7u qu\\u1ea3 v\\u1edbi m\\u1ee9c chi ph\\u00ed h\\u1ee3p l\\u00fd. K\\u00edch ho\\u1ea1t qu\\u1ea3ng c\\u00e1o ngay sau khi \\u0111\\u0103ng k\\u00fd d\\u1ecbch v\\u1ee5, website hi\\u1ec3n th\\u1ecb li\\u00ean t\\u1ee5c 24\\/24.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/noi-that.jpg', NULL, 1, 2, 2, 'active', 1, 1, '2023-04-07 03:23:55', '2023-04-07 07:52:38', 'du-an-quang-cao-fb-02'),
(134, 49, 'resource', 'Dự án quảng cáo fb 03', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"Thu h\\u00fat h\\u00e0ng ng\\u00e0n l\\u01b0\\u1ee3t kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng t\\u1eeb c\\u00e1c k\\u00eanh qu\\u1ea3ng c\\u1ea3o: FB, Google, Tiktok,.... Gi\\u1ea3i ph\\u00e1p t\\u0103ng doanh thu, l\\u1ee3i nhu\\u1eadn b\\u00e1n h\\u00e0ng hi\\u1ec7u qu\\u1ea3 v\\u1edbi m\\u1ee9c chi ph\\u00ed h\\u1ee3p l\\u00fd. K\\u00edch ho\\u1ea1t qu\\u1ea3ng c\\u00e1o ngay sau khi \\u0111\\u0103ng k\\u00fd d\\u1ecbch v\\u1ee5, website hi\\u1ec3n th\\u1ecb li\\u00ean t\\u1ee5c 24\\/24.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/noi-that.jpg', NULL, 1, 0, 3, 'active', 1, 1, '2023-04-07 03:28:02', '2023-04-07 07:08:52', 'du-an-quang-cao-fb-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'post', NULL, 'Tin tức', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'active', 1, 1, '2021-10-15 03:19:10', '2023-04-07 02:41:38', 'tin-tuc'),
(48, 'service', NULL, 'Dịch vụ', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'active', 1, 1, '2023-04-06 16:44:37', '2023-04-07 02:42:12', 'dich-vu'),
(49, 'resource', NULL, 'Dự án', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 3, 'active', 1, 1, '2023-04-07 02:41:28', '2023-04-07 02:42:38', 'du-an');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `component_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT 'contact',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'newsletter', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-02 08:02:36', '2022-06-02 08:02:36'),
(16, 'newsletter', NULL, 'thangnh.edu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-09-13 09:54:38', '2022-09-13 09:54:38'),
(42, 'contact', 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', '0388830059', NULL, 'hrrh', NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-14 04:18:57', '2023-03-14 04:18:57'),
(47, 'call_request', NULL, 'fdgdfgfdgd', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-04-06 04:03:50', '2023-04-06 04:03:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, NULL, 1, 'active', 1, 1, '2022-05-10 10:29:01', '2022-08-10 06:52:06'),
(30, 24, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-05-18 16:49:38', '2023-04-07 08:04:11'),
(31, 24, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2022-05-18 16:52:41', '2023-04-06 06:49:10'),
(33, NULL, 'LIÊN KẾT NHANH', 'Hiển thị liên kết cuối chân trang', NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-05-18 18:47:23', '2022-12-31 04:10:56'),
(34, 33, 'Điều khoản dịch vụ', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2022-08-18 04:34:19'),
(35, 33, 'Chính sách bảo mật', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2022-08-18 04:34:32'),
(36, NULL, 'Menu cuối trang #2', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-06-02 07:25:15', '2022-08-05 10:14:07'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(46, 33, 'Câu hỏi thường gặp', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-08-05 10:15:12', '2022-08-18 04:34:42'),
(58, 24, 'Trang chủ', NULL, '/', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-08-17 09:34:50', '2023-04-06 06:49:10'),
(64, NULL, 'GIỚI THIỆU', NULL, NULL, 'footer', NULL, NULL, 2, 'delete', 1, 1, '2022-10-17 07:19:46', '2022-12-31 04:10:53'),
(65, 64, 'Câu chuyện Thaiever', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-10-17 07:19:58', '2022-11-30 07:30:20'),
(66, 64, 'Tầm nhìn sứ mệnh', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-10-17 07:20:09', '2022-11-30 07:30:29'),
(67, 64, 'Giá trị cốt lõi', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-10-17 07:20:16', '2022-11-30 07:30:42'),
(68, NULL, 'SẢN PHẨM', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-11-30 07:30:01', '2022-11-30 07:41:17'),
(69, 64, 'Chiến lược phát triển', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-11-30 07:30:51', '2022-11-30 07:30:51'),
(70, 64, 'Danh hiệu giải thưởng', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2022-11-30 07:30:59', '2022-11-30 07:30:59'),
(81, NULL, 'Liên kết', NULL, NULL, 'footer', NULL, NULL, 2, 'delete', 1, 1, '2022-12-31 04:08:52', '2023-03-15 02:02:23'),
(82, 81, 'Facebook', NULL, '/facebook.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 1, 'active', 1, 1, '2022-12-31 04:09:15', '2023-03-14 04:29:22'),
(83, 81, 'Instagram', NULL, '/instagram.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:09:27', '2023-03-14 04:29:35'),
(84, 81, 'Twitter', NULL, '/twitter.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 3, 'active', 1, 1, '2022-12-31 04:09:46', '2023-03-14 04:30:01'),
(85, 81, 'Youtube', NULL, '/youtube.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 4, 'active', 1, 1, '2022-12-31 04:09:53', '2023-03-14 04:30:18'),
(86, NULL, 'Liên kết', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-12-31 04:10:13', '2023-04-05 02:12:14'),
(87, 86, 'Chính sách', NULL, '/chinh-sach', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 04:10:23', '2023-04-04 16:48:13'),
(88, 86, 'Dịch vụ', NULL, '/dich-vu', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 04:10:34', '2023-04-04 16:49:13'),
(89, 86, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 3, 'active', 1, 1, '2022-12-31 04:10:44', '2023-03-14 04:28:52'),
(90, NULL, 'Xu hướng', NULL, NULL, 'footer', NULL, NULL, 4, 'delete', 1, 1, '2022-12-31 04:11:11', '2023-03-15 02:10:55'),
(92, 90, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:11:39', '2023-03-14 04:28:07'),
(93, 90, 'Về chúng tôi', NULL, '/gioi-thieu', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 3, 'active', 1, 1, '2022-12-31 04:11:49', '2023-03-14 04:27:52'),
(94, NULL, 'Chính sách', NULL, NULL, 'footer', NULL, NULL, 5, 'delete', 1, 1, '2022-12-31 04:12:09', '2023-03-15 02:21:42'),
(95, 94, 'Điều khoản dịch vụ', NULL, '/dieu-khoan-dich-vu', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 1, 'active', 1, 1, '2022-12-31 04:12:25', '2023-03-14 04:26:46'),
(96, 94, 'Chính sách hỗ trợ', NULL, '/chinh-sach-ho-tro', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:12:35', '2023-03-14 04:27:14'),
(100, 24, 'Dịch vụ', NULL, '/dich-vu', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-03-13 04:45:33', '2023-04-06 06:49:10'),
(101, 24, 'Về chúng tôi', NULL, '/gioi-thieu', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 3, 'active', 1, 1, '2023-03-13 04:46:30', '2023-04-06 06:49:10'),
(111, NULL, 'Hệ thống dịch vụ', NULL, NULL, 'footer', NULL, NULL, 3, 'active', 1, 1, '2023-04-05 01:56:23', '2023-04-05 01:59:04'),
(112, 111, 'Quảng cáo Facebook Ads', NULL, '/facebook-ads', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2023-04-05 01:56:55', '2023-04-06 06:55:08'),
(113, 111, 'Quảng cáo Google Ads', NULL, '/google-ads', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-04-05 01:57:15', '2023-04-06 06:55:19'),
(116, 111, 'Quảng cáo Tiktok Ads', NULL, '/tiktok-ads', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2023-04-05 02:12:40', '2023-04-06 06:55:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(12, 'cms_services', 'Quản lý dịch vụ', NULL, 5, 'active', 1, 1, '2022-03-04 05:22:40', '2023-04-06 15:22:24'),
(13, 'cms_products', 'Quản lý sản phẩm', NULL, 6, 'deactive', 1, 1, '2022-03-04 05:22:52', '2023-04-06 15:22:33'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý đăng ký tư vấn', NULL, 2, 'active', 1, 1, '2022-08-08 06:42:19', '2023-03-15 03:29:09'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16'),
(22, 'order_services', 'Quản lý đăng ký dịch vụ', NULL, NULL, 'deactive', 1, 1, '2022-08-08 06:50:09', '2023-01-03 09:59:04'),
(23, 'cms_resource', 'Quản lý dự án', NULL, 5, 'active', 1, 1, '2023-03-15 03:28:57', '2023-04-07 02:31:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `description` text DEFAULT NULL,
  `is_system_param` tinyint(1) DEFAULT 1,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"C\\u00f4ng ty C\\u1ed5 ph\\u1ea7n Th\\u01b0\\u01a1ng m\\u1ea1i v\\u00e0 D\\u1ecbch v\\u1ee5 FHM Vi\\u1ec7t Nam\",\"phone\":\"034.8888.186\",\"email\":\"fhmvietnam.vn@gmail.com\",\"address\":\"S\\u1ed1 2 Ng\\u00f5 25 P. Th\\u1ecd Th\\u00e1p, D\\u1ecbch V\\u1ecdng, C\\u1ea7u Gi\\u1ea5y, H\\u00e0 N\\u1ed9i\",\"seo_title\":\"D\\u1ecbch v\\u1ee5 qu\\u1ea3ng c\\u00e1o facebook ads, google  ads\",\"seo_keyword\":\"C\\u00f4ng ty C\\u1ed5 ph\\u1ea7n Th\\u01b0\\u01a1ng m\\u1ea1i v\\u00e0 D\\u1ecbch v\\u1ee5 FHM Vi\\u1ec7t Nam\",\"seo_description\":null}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2023-04-04 16:51:22'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/1\\/FHM2.png\",\"logo_footer\":\"\\/data\\/cms-image\\/logo\\/logo_new_light.png\",\"favicon\":\"\\/data\\/cms-image\\/logo\\/icon.png\",\"background_breadcrumbs\":\"\\/data\\/cms-image\\/1\\/Banner\\/area-background-img.jpg\",\"seo_og_image\":\"\\/data\\/cms-image\\/logo\\/logo_new_dark.png\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2023-03-15 04:33:14'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"call_now\":\"034.8888.186\",\"zalo\":\"https:\\/\\/zalo.me\\/0348888186\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2023-04-04 16:52:13'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.0282182037986!2d105.7887925506414!3d21.031556892989663!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab48d8ca69cd%3A0xd31a952513f5e5a0!2zU-G7kSAyIE5nLiAyNSBQLiBUaOG7jSBUaMOhcCwgROG7i2NoIFbhu41uZywgQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWkgMTAwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1680660347681!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2023-04-05 02:06:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37'),
(36, 'product', 11, 'Lê Nhật Minh', 'tuonglee1995@gmail.com', '0388830059', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-31 02:58:45', '2023-03-31 02:58:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `color`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(21, 17, 53, 2, 600000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 17, 54, 1, 50000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 18, 57, 1, 10000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 19, 101, 1, 20000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 19, 107, 1, 20000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 19, 100, 1, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 19, 94, 1, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 20, 112, 1, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 21, 112, 3, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 21, 109, 1, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 21, 111, 1, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 34, 112, 4, 10000.00, 'Vàng trắng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 35, 112, 2, 10000.00, 'Vàng trắng', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-03-16 09:16:01'),
(34, 36, 112, 5, 50000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'trang-chu', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[74,19,79,379,400,383,345,394,299]}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2023-04-07 02:24:31', 1),
(3, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[\"94\"]}', 2, 'active', 1, 1, '2022-06-02 11:20:50', '2022-12-07 02:02:15', 0),
(4, 'Chi tiết nội dung', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet-bai-viet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[\"112\",\"94\",\"93\"]}', 3, 'active', 1, 1, '2022-06-03 02:52:10', '2022-11-06 09:18:33', 0),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[\"94\"]}', 6, 'active', 1, 1, '2022-06-07 07:35:49', '2023-01-03 16:04:34', 1),
(19, 'Tìm kiếm', NULL, NULL, NULL, NULL, 'frontend.search', 'tim-kiem', '{\"og_image\":null,\"template\":\"search.default\",\"block_content\":[\"94\"]}', 7, 'active', 1, 1, '2022-07-18 08:36:34', '2023-01-03 16:04:46', 1),
(30, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-05 09:09:28', '2022-12-31 04:26:58', 1),
(31, 'Giỏ hàng', 'Giỏ hàng', NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[\"94\"]}', 4, 'active', 1, 1, '2022-12-31 04:26:34', '2022-12-31 04:26:46', 1),
(32, 'Giới thiệu', 'Giới thiệu', NULL, NULL, '<p>Nội Thất Lam Kinh là một doanh nghiệp lâu năm trong lĩnh vực nội thất, chuyên cung cấp nội thất văn phòng, trường học…</P>\r\n<p>Với trên 5 năm kinh nghiệm hợp tác sản xuất cùng các doanh nghiệp vừa &amp; nhỏ, Lam Kinh là đơn vị chuyên cung cấp nội thất văn phòng hàng đầu miền Bắc, thương hiệu uy tín được hàng ngàn công ty, cá nhân tin tưởng và lựa chọn.</p>\r\n\r\n<p>– Các lĩnh vực hoạt động chính: Sản xuất và cung cấp nội thất văn phòng với các mặt hàng như:</p>\r\n\r\n<p>+ Nội thất văn phòng: bàn giám đốc, bàn ghế nhân viên, bàn họp, bàn lễ tân, hộc tủ tài liệu.<br />\r\n+ Nội thất trường học: Bàn ghế tiểu học, bàn ghế học sinh, bàn ghế sinh viên.<br />\r\n+ Nội thất gia đình: Tư vấn thiết kế , thi công lắp đặt hoàn thiện trọn gói căn hộ chung cư, phòng ngủ , phòng khách , phòng bếp<br />\r\nĐồ gia đình có một số mặt hàng như: Tủ giày, tủ quần áo, bàn ăn, sofa gia đình …</p>\r\n\r\n<p>II. Sứ mệnh hoạt động</p>\r\n\r\n<p>Nội Thất Lam Kinh mang tới cho các doanh nghiệp vừa và nhỏ những sản phẩm nội thất chất lượng, với mức giá tiết kiệm nhất nhằm mang tới cho bạn một không gian văn phòng mới với đầy đủ tiện nghi để làm việc.<br />\r\nVới mức giá phải chăng phù hợp với nhu cầu của nhiều khách hàng nên được nhiều khách hàng tin cậy lựa chọn.<br />\r\nIII. Nguyên tắc</p>\r\n\r\n<p>Để phục vụ quý khách ngày một tốt hơn chúng tối luôn có những quy tắc hoạt động chặt chẽ để mang tới cho khách hàng sự hài lòng tốt nhất:</p>\r\n\r\n<p>– Luôn tôn trọng ý kiến góp ý của khách hàng, vì chúng tôi luôn hiểu rằng, những ý kiến đó là động lực, là chìa khóa vươn lên những tầm cao mới.</p>\r\n\r\n<p>– Sản phẩm luôn phải đảm bảo về chất lượng</p>\r\n\r\n<p>– Dịch vụ chuyên nghiệp, linh hoạt và tối đa khâu vận chuyển để tiết kiệm thời gian</p>\r\n\r\n<p>– Hỗ trợ khách hàng hết mình trước cũng như sau quá trình mua hàng.</p>\r\n\r\n<p>IV. Tầm nhìn chiến lược</p>\r\n\r\n<p>Trong tương lai, nội thất Lam Kinh luôn cố gắng và phấn đấu trở thành thương hiệu uy tín, và là đơn vị dẫn đầu trong cung cấp nội thất giá rẻ cho các doanh nghiệp vừa và nhỏ.</p>\r\n\r\n<p>Một khi khách hàng đã chọn nội thất Lam Kinh đảm bảo bạn sẽ hài lòng với chất lượng nội thất tại đây.</p>', 'frontend.page', 'gioi-thieu', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[\"94\"]}', 5, 'active', 1, 1, '2023-01-03 15:37:40', '2023-01-03 16:18:34', 1),
(33, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', 9, 'active', 1, 1, '2023-03-15 03:57:43', '2023-03-17 06:55:23', 1),
(34, 'Người dùng', 'Người dùng', NULL, NULL, NULL, 'frontend.page', 'user', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2023-03-17 06:41:39', '2023-03-17 06:52:15', 1),
(35, 'Tài khoản', 'Quản lý tài khoản', NULL, NULL, NULL, 'frontend.user', 'nguoi-dung', '{\"og_image\":null,\"template\":\"user.default\",\"block_content\":[\"94\"]}', 8, 'active', 1, 1, '2023-03-17 06:54:53', '2023-03-17 14:40:28', 1),
(36, 'Mật khẩu', 'Quản lý mật khẩu', NULL, NULL, NULL, 'frontend.user.password', 'userpassword', '{\"og_image\":null,\"template\":\"user.password\",\"block_content\":[\"94\"]}', 10, 'active', 1, 1, '2023-03-17 10:29:56', '2023-03-17 10:33:59', 1),
(37, 'Chính sách', 'CHÍNH SÁCH VÀ ĐIỀU KHOẢN KHI SỬ DỤNG DỊCH VỤ', 'Chính sách', NULL, '<h1>Chính sách và điều khoản tại Dichvuthietkewebsite.vn</h1>\r\n\r\n<p>Dichvuthietkewebsite.vn&nbsp; cam kết cung cấp đến khách hàng những giải pháp marketing vượt trội, uy tín và đáng tin cậy nhằm giúp cho các quyết định quan trọng của khách hàng trở nên dễ dàng hơn. Trong đó bao gồm cả việc đảm bảo các chính sách về quyền lợi, trách nhiệm và tính bảo mật theo các điều mục dưới đây:</p>\r\n\r\n<p><em>Lưu ý: Bên B tức </em>Dichvuthietkewebsite.vn<em>, bên A tức khách hàng đối tác sử dụng dịch vụ tại </em>Dichvuthietkewebsite.vn</p>\r\n\r\n<h2>1. Chính sách bảo hành</h2>\r\n\r\n<p>Khi sử dụng dịch vụ thiết kế website Dichvuthietkewebsite.vn&nbsp;, quý khách sẽ được:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bảo hành toàn bộ hệ thống trong 12 tháng&nbsp;</li>\r\n	<li aria-level=\"1\">Bảo hành trọn đời khi sử dụng dịch vụ gia hạn duy trì tại Dichvuthietkewebsite.vn</li>\r\n	<li aria-level=\"1\">Hỗ trợ: Chuyên viên kỹ thuật tại Dichvuthietkewebsite.vn&nbsp;sẽ hỗ trợ trong giờ hành chính, 6 ngày làm việc trong tuần và khắc phục sự cố trong vòng 24 giờ kể từ khi nhận được thông báo.</li>\r\n</ul>\r\n\r\n<h2>2. Chính sách thanh toán&nbsp;</h2>\r\n\r\n<p>Bảng giá từng gói dịch vụ thiết kế website tại Dichvuthietkewebsite.vn<strong>&nbsp;</strong>được niêm yết giá chuẩn theo mục Bảng giá, quý khách lựa chọn thiết kế theo yêu cầu vui lòng để lại phương thức liên hệ để được chuyên viên tư vấn cụ thể và báo giá chính xác nhất.</p>\r\n\r\n<p>Nội dung chính sách thanh toán:&nbsp;</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Hình thức thanh toán: Tiền mặt hoặc chuyển khoản&nbsp;</li>\r\n	<li>Cung cấp hóa đơn GTGT bằng 100% hợp đồng cho khách hàng&nbsp;</li>\r\n	<li aria-level=\"1\">Bảng báo giá có giá trị trong vòng 04 tuần kể từ ngày báo giá</li>\r\n</ul>\r\n\r\n<h2>3. Chính sách bảo mật</h2>\r\n\r\n<p>Trong quá trình khách hàng sử dụng dịch vụ thiết kế website tại Dichvuthietkewebsite.vn&nbsp;, Công ty luôn tuân thủ theo các nguyên tắc bảo mật sau đây:&nbsp;&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Dichvuthietkewebsite.vn&nbsp;cam kết chỉ thu thập những thông tin cần thiết và được sự cho phép của khách hàng</li>\r\n	<li aria-level=\"1\">Chúng tôi bảo đảm thông tin của khách hàng được bảo mật bằng mọi cách thức để tránh truy lục và sử dụng không đúng mục đích</li>\r\n	<li aria-level=\"1\">Lưu trữ thông tin của khách hàng:&nbsp;</li>\r\n	<li aria-level=\"1\">Những thông tin của quý khách sẽ được Dichvuthietkewebsite.vn&nbsp;lưu trữ vô thời hạn, bất cứ khi nào quý khách hàng cũng có thể chỉnh sửa thông tin của mình.&nbsp;</li>\r\n	<li aria-level=\"1\">Địa chỉ lưu trữ thông tin: Dichvuthietkewebsite.vn&nbsp;VIỆT NAM, Số 02, Ngõ 25 Thọ Tháp - Dịch Vọng - Cầu Giấy - Hà Nội&nbsp;</li>\r\n</ul>\r\n\r\n<h2>4. Quy trình bàn giao&nbsp;</h2>\r\n\r\n<p>Bên B có nghĩa vụ xây dựng, hoàn thiện, cài đặt và chuyển giao Phần mềm cho Bên A trong thời hạn 7 - 15 ngày làm việc (Bao gồm thời gian đào tạo hướng dẫn quản trị website). Thời gian bắt đầu thực hiện được tính kể từ ngày ký kết Hợp đồng sử dụng dịch vụ thiết kế website.</p>\r\n\r\n<h3>Nghiệm thu và duy trì website:</h3>\r\n\r\n<ul>\r\n	<li>Trên cơ sở website của Bên A đã được Bên B hoàn tất xây dựng, hai bên cùng ký kết biên bản nghiệm thu hợp đồng, và Bên B đưa website vận hành trên môi trường Internet. (Trong vòng 15 ngày kể từ ngày Bên B gửi biên bản nghiệm thu nếu như Bên A không có phản hồi nào thì xem như đã đồng ý nghiệm thu website).</li>\r\n	<li>Website được bảo hành trọn đời khi sử dụng dịch vụ gia hạn duy trì tại Dichvuthietkewebsite.vn</li>\r\n	<li>Trong trường hợp Bên A muốn mở rộng tăng thêm một số tính năng hay chương trình mới cho website (như thêm ngôn ngữ, thêm module,…) hợp đồng hoặc thỏa thuận sẽ được lập dựa theo các yêu cầu phát sinh của Bên A.</li>\r\n</ul>\r\n\r\n<h2>5. Các điều khoản dịch vụ cần lưu ý</h2>\r\n\r\n<p>TRÁCH NHIỆM của Dichvuthietkewebsite.vn:</p>\r\n\r\n<ul>\r\n	<li>Trên cơ sở yêu cầu thiết kế của Bên A, Bên B hoàn thành việc thiết kế và đưa website lên hệ thống Internet đúng theo thời gian được thỏa thuận, (kể từ ngày nhận được đầy đủ nội dung thông tin do Bên A cung cấp không kể thời gian chỉnh sửa giao diện).</li>\r\n	<li>Đảm bảo thiết kế đạt yêu cầu về kỹ thuật và mỹ thuật, đảm bảo sự hoạt động thông suốt và liên tục của Website, tuân thủ các thỏa thuận trong hợp đồng.</li>\r\n	<li>Nhanh chóng giải quyết các khiếu nại của Bên A về chất lượng dịch vụ trong phạm vi trách nhiệm của Bên B, bảo đảm chất lượng dịch vụ, bảo trì hệ thống định kỳ.</li>\r\n	<li>Hỗ trợ kỹ thuật và hướng dẫn Bên A thực hiện thao tác xử lý thông tin trên website.</li>\r\n	<li>Bên B cam kết không để lộ bất cứ thông tin, tài liệu, hình ảnh nào của bên B khi không được sự cho phép của bên A.</li>\r\n	<li>Nếu như có sự cố xảy ra trong thời gian bảo hành, bên B phải khắc phục cho bên A trong thời gian sớm nhất (từ 8 đến 24h).</li>\r\n	<li>Kể từ ngày ký biên bản nghiệm thu và bàn giao Bên B không được phép truy cập vào trang Quản trị của Website này dưới bất kỳ hình thức nào khi chưa được sự cho phép của Bên A</li>\r\n</ul>\r\n\r\n<h2>6. Cam kết bảo mật thông tin khách hàng:</h2>\r\n\r\n<ul>\r\n	<li>Để đảm bảo an toàn cho các thông tin cá nhân của bạn, chúng tôi khuyên quý khách rằng quý khách không nên đưa thông tin chi tiết về việc thanh toán với bất kỳ ai bằng Email, chúng tôi không chịu trách nhiệm về những mất mát quý khách có thể gánh chịu trong việc trao đổi thông tin của quý khách qua internet hoặc email.</li>\r\n	<li>Quý khách tuyệt đối không sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào hệ thống hay làm thay đổi cấu trúc dữ liệu. Nghiêm cấm việc phát tán, truyền bá hay cổ vũ cho bất kỳ hoạt động nào nhằm can thiệp, phá hoại hay xâm nhập vào dữ liệu của hệ thống website. Mọi vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước pháp luật nếu cần thiết.</li>\r\n	<li>Mọi thông tin giao dịch sẽ được bảo mật trừ trường hợp cơ quan pháp luật yêu cầu, chúng tôi sẽ buộc phải cung cấp những thông tin này.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Các điều kiện, điều khoản và nội dung của trang web này được điều chỉnh bởi luật pháp Việt Nam và tòa án Việt Nam có thẩm quyền xem xét.</p>', 'frontend.page', 'chinh-sach', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[\"94\"]}', 11, 'active', 1, 1, '2023-03-23 06:41:44', '2023-03-29 01:51:30', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_review`
--

CREATE TABLE `tb_review` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `vote` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_review`
--

INSERT INTO `tb_review` (`id`, `name`, `email`, `vote`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'haha', 'tuonglee1001@gmail.com', 3, 112, 'hehe', '2023-03-21 14:11:19', '2023-03-21 14:11:19'),
(2, 'huhu', 'tuonglee1001@gmail.com', 4, 112, 'hyhy', '2023-03-21 14:11:36', '2023-03-21 14:11:36'),
(3, 'koko', 'tuonglee1001@gmail.com', 4, 112, 'hehe', '2023-03-21 15:27:33', '2023-03-21 15:27:33'),
(4, 'koko', 'tuonglee1001@gmail.com', 4, 112, 'hehe', '2023-03-21 15:34:49', '2023-03-21 15:34:49'),
(5, 'huhu', 'tuonglee1001@gmail.com', 5, 109, 'kiki', '2023-03-21 16:34:37', '2023-03-21 16:34:37'),
(6, 'ahaha', 'tuonglee1001@gmail.com', 3, 109, 'htht', '2023-03-21 16:34:59', '2023-03-21 16:34:59'),
(10, 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', 3, 106, 'hyyhy', '2023-03-21 16:41:13', '2023-03-21 16:41:13'),
(11, 'haha', 'tuonglee1001@gmail.com', 2, 106, 'yjyjyj', '2023-03-21 16:41:31', '2023-03-21 16:41:31'),
(13, 'haha', 'tuonglee1001@gmail.com', 3, 109, 'hyhy', '2023-03-22 02:19:38', '2023-03-22 02:19:38'),
(14, 'haha', 'tuonglee1001@gmail.com', 4, 93, 'hththt', '2023-03-22 09:39:32', '2023-03-22 09:39:32'),
(15, 'huhu', 'tuonglee1001@gmail.com', 4, 93, 'gbgb', '2023-03-22 10:24:18', '2023-03-22 10:24:18'),
(16, 'haha', 'tuonglee1001@gmail.com', 3, 93, 'nhnn', '2023-03-22 10:24:59', '2023-03-22 10:24:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_access`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"74\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2022-12-07 02:42:01'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"74\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\",\"10\",\"3\",\"5\",\"6\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"admins.destroy\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"roles.destroy\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\",\"admin_menus.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2022-12-07 02:43:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `widget_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT 0,
  `total_money` double NOT NULL DEFAULT 0,
  `total_payment` double NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_profiles`)),
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai', NULL, '$2y$10$GpNMSXWwC4fHsRciLRCabOIZFakxt1KUh.HkD/mAAaBQYw.C03nd.', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(10, NULL, 'ukSRd10', 0, 0, 0, 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', NULL, '$2y$10$D6qJMUA4aTYKy6aMX/RanuLSkhN/l6RYtwUbrR4UDqZJDlFG2MtIi', NULL, '2023-03-14 09:15:38', '2023-03-18 03:47:05', 'admin', 0, NULL, 'active', 0, '', NULL, 'male', '0388866666', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'UKlBr11', 0, 0, 0, 'Lê Nhật Minh', 'tuonglee1995@gmail.com', NULL, '$2y$10$mrt/3qEQVkkvYM31myL.4uJZVlYRUsluKI82A5mr4ogIn.2xS8JwG', NULL, '2023-03-14 09:47:30', '2023-03-20 04:22:44', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0388830059', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'Ezxcy12', 0, 0, 0, 'Lê Lan Anh', 'huyentrang941999@gmail.com', NULL, '$2y$10$9opRxMA49mlLSDmYTHYwqOT2itLNrQaI41WcldFCYo.CdXLmK7//C', NULL, '2023-03-20 03:49:28', '2023-03-20 04:11:19', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0123456789', 0, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_review`
--
ALTER TABLE `tb_review`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_review`
--
ALTER TABLE `tb_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
