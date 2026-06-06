-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2026 at 01:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlythucung`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'admin 1', 'admin1@gmail.com', '$2y$10$IH.CzGgFmp1g8EdBgdEFEuBAZQd9uhuXqHTS9UnCC1eR10iUOA.2u', 'PfDm1dx5cAjF13ZKEACi7f2erh321sqZX89sP2b0zL35qV3qmTLWUqDiHwX9', NULL, '2024-04-05 04:23:29', 'admin_images/1/avatar.jpg'),
(2, 'admin 2', 'admin2@gmail.com', '$2y$10$JxnRNFeZXaaydJNc4iBOeu5htzju.Id2r7zhY7Nzca6n1tJyzAA76', NULL, NULL, '2026-06-02 15:56:25', 'admin_images/2/avatar.png'),
(3, 'admin 3', 'admin3@gmail.com', '$2y$10$zLPMmfvzxHFS2aSh8EMCBO53l.IvFu7wnD5uIsJ/w1freqbyz2J2K', NULL, NULL, '2026-06-02 15:56:38', 'admin_images/3/avatar.png'),
(5, 'admin', 'admin@gmail.com', '$2y$10$Bp4wOvYUiyBjnLe6fZeEu.0WCd59xDasEO3vlZd6oIagfBGfxIgii', NULL, '2024-04-03 14:35:00', '2026-06-02 15:09:01', 'admin_images/5/avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'ten thuoc tinh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'cai', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm cho thú cưng khác', '2024-04-03 14:05:48', '2026-06-02 15:16:19'),
(2, 'Sản phẩm cho mèo', '2024-04-04 07:31:40', '2026-06-02 15:16:03'),
(3, 'Sản phẩm cho chó', '2024-04-04 07:31:57', '2026-06-02 15:15:51'),
(8, 'Chén ăn, bình nước', '2026-06-02 15:16:30', '2026-06-02 15:16:30'),
(9, 'Vòng, yếm, dây dắt', '2026-06-02 15:16:48', '2026-06-02 15:16:48'),
(10, 'Balo, lồng vận chuyển', '2026-06-02 15:17:00', '2026-06-02 15:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shipping_fee` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `code`, `name`, `shipping_fee`, `created_at`, `updated_at`) VALUES
(1, '11', 'Tphcm', 40000, '0000-00-00 00:00:00', '2026-06-02 16:12:29'),
(2, '111', 'Cà Mau', 46000, '2000-01-22 17:00:00', '2026-06-02 16:05:11'),
(3, '444', 'Long An', 43000, '2000-01-22 17:00:00', '2026-06-02 16:05:25'),
(4, '40BEE6', 'Nghệ An', 35000, '2026-06-02 16:12:18', '2026-06-02 16:12:18'),
(5, 'B37467', 'Hà Nội', 12000, '2026-06-02 16:12:42', '2026-06-02 16:12:42'),
(6, '4EFA0B', 'Thanh Hóa', 23000, '2026-06-02 16:12:52', '2026-06-02 16:12:52'),
(7, '8AD3C7', 'Hà Tĩnh', 30000, '2026-06-02 16:13:02', '2026-06-02 16:13:02'),
(8, '2188D3', 'Hà Nam', 20000, '2026-06-02 16:13:15', '2026-06-02 16:13:15'),
(9, 'BC2367', 'Thái Nguyên', 25000, '2026-06-02 16:13:24', '2026-06-02 16:13:24'),
(10, '4559BC', 'Hải Phòng', 25000, '2026-06-02 16:13:36', '2026-06-02 16:13:36'),
(11, '0183CC', 'Quảng Ninh', 25000, '2026-06-02 16:13:46', '2026-06-02 16:13:46'),
(12, 'A1DBC3', 'Ninh Bình', 22000, '2026-06-02 16:13:56', '2026-06-02 16:13:56'),
(13, '8F9CCD', 'Quảng Bình', 30000, '2026-06-02 16:14:05', '2026-06-02 16:14:05'),
(14, '7194F4', 'Bắc Giang', 27000, '2026-06-02 16:14:18', '2026-06-02 16:14:18'),
(15, '39833F', 'Sơn La', 35000, '2026-06-02 16:14:35', '2026-06-02 16:14:35'),
(16, 'D7DE03', 'Khánh Hòa', 37000, '2026-06-02 16:14:46', '2026-06-02 16:14:46'),
(17, 'C06543', 'Huế', 35000, '2026-06-02 16:14:56', '2026-06-02 16:14:56'),
(18, 'E68061', 'Đà Nẵng', 35000, '2026-06-02 16:15:05', '2026-06-02 16:15:05'),
(19, '382200', 'Vũng Tàu', 45000, '2026-06-02 16:15:17', '2026-06-02 16:15:17'),
(20, '7EFCC3', 'Hòa Bình', 23000, '2026-06-02 16:15:31', '2026-06-02 16:15:31'),
(21, '7D6C2F', 'Vĩnh Phúc', 23000, '2026-06-02 16:15:42', '2026-06-02 16:15:42'),
(22, '388A64', 'Cao Bằng', 35000, '2026-06-02 16:16:22', '2026-06-02 16:16:22'),
(23, '4BF3B0', 'Đắk Lắk', 39000, '2026-06-02 16:16:39', '2026-06-02 16:16:39'),
(24, '48ECFC', 'Bình Dương', 40000, '2026-06-02 16:16:52', '2026-06-02 16:16:52'),
(25, '0886A0', 'Lâm Đồng', 42000, '2026-06-02 16:17:21', '2026-06-02 16:17:21'),
(26, '1CF234', 'Quảng Trị', 36000, '2026-06-02 16:17:35', '2026-06-02 16:17:35'),
(27, 'C60C80', 'Tây Nguyên', 40000, '2026-06-02 16:17:58', '2026-06-02 16:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `discount` double DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'price',
  `discount_max` double DEFAULT NULL,
  `number_use` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `discount`, `type`, `discount_max`, `number_use`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 'KM01', 15, 'percent', 50000, 99, '2026-05-04', '2026-06-01', '2024-04-04 14:33:15', '2026-06-02 16:08:03'),
(2, 'Khuyến mãi đầu tháng', 5000, 'price', 5000, 99, '2026-05-05', '2026-06-04', '2024-04-04 14:33:44', '2026-06-02 17:08:54'),
(4, 'Siêu sale tháng 6', 15000, 'price', 15000, 100, '2026-06-01', '2026-06-30', '2026-06-02 16:11:48', '2026-06-02 16:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL DEFAULT 'COD',
  `status` varchar(255) NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'UNPAID' COMMENT 'unpaid, paid, refund',
  `payment_response` text DEFAULT NULL,
  `success_at` date DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `ship_code` varchar(255) DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `note`, `user_id`, `address`, `phone`, `payment_type`, `status`, `created_at`, `updated_at`, `name`, `email`, `payment_status`, `payment_response`, `success_at`, `admin_note`, `ship_code`, `coupon_id`, `discount`, `city_id`, `shipping_fee`) VALUES
(18809987755651290, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-01 09:19:42', '2026-06-02 15:11:05', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20000),
(25209098972763575, 'qưe', 1, 'nnnnnn', '0987654322', 'MOMO', 'CANCEL', '2024-04-05 03:12:37', '2026-06-02 15:12:23', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 1, 6166.5, 1, 20000),
(25221203430442300, 'fhghgf', 2, 'tphcm q12', '0987654321', 'COD', 'CANCEL', '2024-04-05 04:18:50', '2024-04-05 04:22:33', 'muoi hoa', 'hoahuongduong05124@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 1, 500000, 1, 20000),
(27798535972097712, NULL, 2, 'tphcm q12', '0987654321', 'MOMO', 'REFUND', '2024-04-05 04:21:43', '2024-04-05 05:39:25', 'muoi hoa', 'hoahuongduong05124@gmail.com', 'PAID', '{\"partnerCode\":\"MOMOBKUN20180529\",\"orderId\":\"27798535972097712\",\"requestId\":\"1712290903\",\"amount\":\"20555\",\"orderInfo\":\"Thanh to\\u00e1n qua MoMo cho shop  \\u0111\\u01a1n h\\u00e0ng [27798535972097712]\",\"orderType\":\"momo_wallet\",\"transId\":\"4015902177\",\"resultCode\":\"0\",\"message\":\"Th\\u00e0nh c\\u00f4ng.\",\"payType\":\"qr\",\"responseTime\":\"1712290921920\",\"extraData\":null,\"signature\":\"2faf1b91f9230a643e03f3bb13a6275f6287576bfc1c7b6ca70bd4ded374ca68\",\"paymentOption\":\"momo\"}', '2024-04-05', NULL, '54544545', NULL, NULL, 1, 20000),
(30238449159401763, NULL, 5, '167 Chùa Bộc', '0865443886', 'COD', 'CONFIRMED', '2026-06-02 16:46:19', '2026-06-02 16:47:44', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 4, 35000),
(31736676856514820, 'uigy', 1, 'nnnnnn', '0987654322', 'MOMO', 'SUCCESS', '2024-04-03 14:11:00', '2024-04-04 14:45:12', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'PAID', NULL, '2024-04-04', NULL, NULL, NULL, NULL, 1, 123),
(48144348771642192, 'abcdef', 1, 'nnnnnn', '0987654322', 'MOMO', 'CANCEL', '2024-04-05 03:09:04', '2026-06-02 15:11:47', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 1, 40799.7, 2, 46000),
(51565059438946956, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-05-30 09:34:44', '2026-05-30 09:36:35', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 2, 46000),
(56805392814356484, 'hbhbu', 2, 'tphcm q12', '0987654321', 'MOMO', 'CANCEL', '2024-04-05 04:20:51', '2024-04-05 04:21:12', 'muoi hoa', 'hoahuongduong05124@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 1, 6166.5, 1, 20000),
(62778431417524715, 'abcdef', 1, 'nnnnnn', '0987654322', 'COD', 'SUCCESS', '2024-04-04 14:44:11', '2024-04-04 14:45:58', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'PAID', NULL, '2024-04-04', NULL, NULL, 2, 900000, 2, 46000),
(66918926872524466, 'sdaasd', 1, 'nnnnnn', '0987654322', 'MOMO', 'CANCEL', '2024-04-05 03:13:26', '2026-06-02 15:12:11', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'PAID', '{\"partnerCode\":\"MOMOBKUN20180529\",\"orderId\":\"66918926872524466\",\"requestId\":\"1712286806\",\"amount\":\"46555\",\"orderInfo\":\"Thanh to\\u00e1n qua MoMo cho shop  \\u0111\\u01a1n h\\u00e0ng [66918926872524466]\",\"orderType\":\"momo_wallet\",\"transId\":\"4015746793\",\"resultCode\":\"0\",\"message\":\"Th\\u00e0nh c\\u00f4ng.\",\"payType\":\"qr\",\"responseTime\":\"1712286859041\",\"extraData\":null,\"signature\":\"182e1a1d04380afbac5522a2c981634a2fb9a32777126a8bf3c21723f0fa3b56\",\"paymentOption\":\"momo\"}', NULL, NULL, NULL, NULL, NULL, 2, 46000),
(67081593988485600, 'hgffhgf', 2, 'ca mau', '0987655555', 'MOMO', 'CANCEL', '2024-04-05 04:19:40', '2026-06-02 15:11:57', 'muoi hoa', 'hoahuongduong05124@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 1, 13966.5, 2, 46000),
(67222734082163703, 'tỳ', 1, 'nnnnnn', '0987654322', 'MOMO', 'CANCEL', '2024-04-05 03:10:21', '2026-06-02 15:12:35', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 2, 900000, 2, 46000),
(70147171234185280, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-01 09:17:20', '2026-06-02 11:15:18', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 3, 100000),
(72102737856394140, NULL, 6, 'Hoàng Mai,', '0488837253', 'COD', 'DELIVERY', '2026-06-02 16:53:50', '2026-06-02 16:56:49', 'Phạm Anh Thư', 'anhthu0207xt@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 4, 15000, 13, 30000),
(83063265847631095, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-01 09:20:31', '2026-06-02 15:10:15', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', '{\"partnerCode\":\"MOMOBKUN20180529\",\"orderId\":\"83063265847631095\",\"requestId\":\"1780305631\",\"amount\":\"23020000\",\"orderInfo\":\"Thanh to\\u00e1n qua MoMo cho shop KimHoangMobile \\u0111\\u01a1n h\\u00e0ng [83063265847631095]\",\"orderType\":\"momo_wallet\",\"transId\":\"1780305639978\",\"resultCode\":\"1006\",\"message\":\"Giao d\\u1ecbch b\\u1ecb t\\u1eeb ch\\u1ed1i b\\u1edfi ng\\u01b0\\u1eddi d\\u00f9ng.\",\"payType\":null,\"responseTime\":\"1780305640070\",\"extraData\":null,\"signature\":\"00a679401996b57c2591270e1e5a49e2198e0538e42417d410b442545e1baed7\"}', NULL, NULL, NULL, NULL, NULL, 1, 20000),
(96148351357980416, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-01 09:19:46', '2026-06-02 15:10:54', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20000),
(97895115104590263, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-02 08:29:03', '2026-06-02 15:09:45', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 3, 100000),
(102861945114141928, NULL, NULL, '23 Nguyễn Trãi', '0474738333', 'COD', 'PENDING', '2026-06-04 16:25:28', '2026-06-04 16:25:28', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 4, 15000, 8, 20000),
(113018898304951300, 'ghfj', 1, 'nnnnnn', '0987654322', 'COD', 'SUCCESS', '2024-04-03 14:10:25', '2024-04-03 14:12:31', 'nnnnnn nnnnnn', 'nnnnnn@gmail.com', 'PAID', NULL, '2024-04-03', 'gh', '87867876', NULL, NULL, 1, 123),
(113240447384362452, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-02 08:28:31', '2026-06-02 15:09:59', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 3, 100000),
(118191957299803724, NULL, 2, 'tphcm q12', '0987654321', 'MOMO', 'CANCEL', '2024-04-05 05:49:32', '2026-06-02 15:11:30', 'muoi hoa', 'hoahuongduong05124@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 1, 500000, 1, 20000),
(120928497004119000, NULL, 5, '23 Nguyễn Trãi', '0865443886', 'MOMO', 'PENDING', '2026-06-06 09:05:48', '2026-06-06 09:05:48', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', '{\"partnerCode\":\"MOMOBKUN20180529\",\"orderId\":\"120928497004119000\",\"requestId\":\"1780736748\",\"amount\":\"22000\",\"orderInfo\":\"Thanh to\\u00e1n qua MoMo cho shop JinJin Pet Food \\u0111\\u01a1n h\\u00e0ng [120928497004119000]\",\"orderType\":\"momo_wallet\",\"transId\":\"1780736817698\",\"resultCode\":\"1006\",\"message\":\"Giao d\\u1ecbch b\\u1ecb t\\u1eeb ch\\u1ed1i b\\u1edfi ng\\u01b0\\u1eddi d\\u00f9ng.\",\"payType\":null,\"responseTime\":\"1780736817739\",\"extraData\":null,\"signature\":\"8aad8afda7acc128e2b6776fda9ced801bad6ef43c0aafdca44cc65036a7f1fd\"}', NULL, NULL, NULL, 4, 15000, 5, 12000),
(126557272833216440, NULL, 7, '23 Nguyễn Trãi', '0384882244', 'COD', 'PENDING', '2026-06-02 16:55:52', '2026-06-02 16:55:52', 'Phạm Thanh Lân', 'phamthanhlan22071973@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 4, 15000, 11, 25000),
(136653583505059698, NULL, NULL, '23 Nguyễn Trãi', '0865443886', 'COD', 'CONFIRMED', '2026-06-04 16:24:33', '2026-06-05 17:41:13', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 8, 20000),
(156917464414594236, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-01 09:19:48', '2026-06-02 15:10:45', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20000),
(162175202220213756, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-01 09:17:56', '2026-06-02 15:11:15', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 3, 100000),
(172126001539585236, NULL, NULL, '23 Nguyễn Trãi', '0384882244', 'COD', 'PENDING', '2026-06-04 16:23:27', '2026-06-04 16:23:27', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, 2, 5000, 8, 20000),
(173456946007460580, NULL, 5, 'xxxx', '0942011546', 'MOMO', 'PENDING', '2026-06-02 16:38:50', '2026-06-02 16:38:50', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'PAID', '{\"orderId\":\"173456946007460580\",\"payType\":\"MOMO\"}', NULL, NULL, NULL, 4, 10000, 5, 12000),
(174081425668155945, NULL, 5, 'None', '0942011546', 'MOMO', 'CANCEL', '2026-06-02 08:27:45', '2026-06-02 15:10:07', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20000),
(176738942715465400, NULL, 5, '23 Nguyễn Trãi', '0473735284', 'COD', 'PENDING', '2026-06-06 09:03:20', NULL, 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, 5, 12000),
(176920308092103788, NULL, 5, '167 Chùa Bộc, P.Trung Liệt, Q.Đống Đa, Hà Nội', '0865443886', 'COD', 'SUCCESS', '2026-06-02 16:44:46', '2026-06-02 16:47:23', 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', 'PAID', NULL, '2026-06-02', NULL, NULL, 4, 10000, 5, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`product_id`, `order_id`, `quantity`, `price`) VALUES
(1, 25209098972763575, 1, 555),
(1, 27798535972097712, 1, 555),
(1, 31736676856514820, 1, 555),
(1, 56805392814356484, 1, 555),
(1, 66918926872524466, 1, 555),
(1, 67081593988485600, 1, 555),
(1, 113018898304951300, 1, 555),
(2, 30238449159401763, 1, 72000),
(2, 62778431417524715, 3, 23000000),
(2, 70147171234185280, 1, 23000000),
(2, 72102737856394140, 1, 72000),
(2, 83063265847631095, 1, 23000000),
(2, 118191957299803724, 1, 23000000),
(2, 126557272833216440, 1, 72000),
(2, 162175202220213756, 1, 23000000),
(2, 172126001539585236, 1, 72000),
(2, 173456946007460580, 1, 72000),
(2, 174081425668155945, 5, 23000000),
(3, 48144348771642192, 1, 89999),
(3, 136653583505059698, 1, 45000),
(4, 25221203430442300, 1, 12000000),
(5, 25221203430442300, 1, 23000000),
(6, 18809987755651290, 1, 7000000),
(6, 51565059438946956, 4, 7000000),
(6, 67222734082163703, 1, 7000000),
(6, 70147171234185280, 5, 7000000),
(6, 96148351357980416, 1, 7000000),
(6, 113240447384362452, 1, 7000000),
(6, 126557272833216440, 1, 46000),
(6, 156917464414594236, 1, 7000000),
(6, 162175202220213756, 5, 7000000),
(6, 176920308092103788, 1, 46000),
(7, 30238449159401763, 1, 50000),
(7, 62778431417524715, 3, 9000000),
(7, 102861945114141928, 1, 50000),
(7, 176738942715465400, 1, 50000),
(9, 97895115104590263, 4, 59000),
(14, 72102737856394140, 1, 25000),
(17, 72102737856394140, 1, 25000),
(17, 120928497004119000, 1, 25000),
(20, 176920308092103788, 1, 258000),
(24, 126557272833216440, 1, 171000),
(33, 30238449159401763, 1, 498000),
(33, 176920308092103788, 1, 498000),
(37, 176920308092103788, 1, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'hoahuongduong05124@gmail.com', 'Xb1pX6iSDZp30w2l7p1IGVKYWWZrbLR6B9ooNb30xdUmgInAsXoNuWWHEFAuappv', '2024-04-05 05:46:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL COMMENT 'ten san pham',
  `price` double DEFAULT 0 COMMENT 'gia goc cua san pham',
  `quantity` int(11) DEFAULT 0 COMMENT 'so luong',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'simple',
  `is_same_price` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `parent_id`, `created_at`, `updated_at`, `image`, `status`, `description`, `category_id`, `type`, `is_same_price`) VALUES
(1, 'Pate Chó Morando Gà và Gà Tây - 400g', 50000, 12, NULL, '2024-04-03 14:06:13', '2026-06-02 15:27:56', 'product_images/1/avatar.webp', 1, 'Pate Chó Morando Gà và Gà tây được sản xuất dưới quy trình sấy lạnh, bổ sung lên tới 75% protein và các vi chất khác cho dòng chó Morando \r\nSản phẩm đạt chuẩn chất lượng và an toàn vệ sinh thực phẩm', 3, 'simple', 0),
(2, 'Dr. Holi - Sữa cho chó và mèo vị nhân sâm đỏ', 72000, 37, NULL, '2024-04-04 11:44:56', '2026-06-02 15:25:46', 'product_images/2/avatar.webp', 1, 'Mô tả\r\n\r\nSữa tươi cho chó mèo ít béo DR HOLI  Pet Milk Mango vị Hồng sâm nổi tiếng Hàn Quốc chuyên dùng cho tất cả các giống chó và mèo mọi lứa tuổi. Sản phẩm với sữa nguyên chất ít béo “phân hủy lactose” chứa 10mg vi khuẩn Axit lactic đã qua xử lý nhiệt. Giúp tốt cho hệ miễn dịch và sức khỏe đường ruột, cân bằng Vitamin và khoáng chất, giúp chắc xương và cung cấp các dưỡng chất cho da. Tốt cho mắt, giảm mùi hôi của phân chó mèo.\r\n\r\nLợi ích chính\r\nCung cấp lượng sữa non cần thiết cho chó con, giúp tăng cường hệ miễn dịch.\r\nSữa ít béo ngăn ngừa bệnh béo phì, giúp hệ tiêu hóa hấp thu đường Lactose từ sữa.\r\nNâng cao đề kháng bởi các khoáng chất và Vitamin có nguồn gốc tự nhiên.\r\nChứa Canxi từ rong biển giúp bảo vệ xương và khớp, chứa Polyphenol giúp cung cấp dưỡng chất cho da.\r\nChứa Beta-carotene rất tốt cho mắt.\r\nGiảm mùi hôi của phân nhờ Fructooligosaccharede.\r\nLiều lượng\r\nChó mèo dưới 5kg: 10~100ml mỗi bữa\r\nChó mèo từ 5 đến 11kg: 100~200ml mỗi bữa\r\nChó mèo từ 11 đến 23kg: 200~350ml mỗi bữa\r\nChó mèo từ 23 đến 40kg: 350~500ml mỗi bữa\r\nChó mèo sơ sinh (sau cai sữa): 10~50ml mỗi bữa\r\nChó mèo trưởng thành trên 6 tháng: 50~100ml mỗi bữa\r\nLưu ý sử dụng\r\nSữa tươi cho chó mèo ít béo DR HOLI Pet Milk Mango là sản phẩm cao cấp 100% chuyên dùng cho thú cưng nhưng không dùng cho người.\r\nKhi cho ăn xong còn thừa nên đậy kín bảo quản lạnh và bảo quản được trong vòng 3 ngày kể từ khi sử dụng. Sau khi bảo quản lạnh không cho thú cưng ăn ngay, mà nên hâm nóng trước\r\nSản phẩm đôi khi cũng có thể bị vón cục do quá trình sản xuất, song không có vấn đề gì. Hãy yên tâm cho thú cưng thưởng thức.\r\nKhi lần đầu cho thú cưng ăn nên hâm nóng một lượng nhỏ khoảng 30ml rồi cho ăn, sau đó tăng dần khẩu phần ăn lên.\r\nHạn sử dụng: in trên bao bì.', 3, 'simple', 0),
(3, 'Pate chó King\'s Pet - Pate Heo rau củ - 380g', 45000, 210, NULL, '2024-04-04 11:48:41', '2026-06-02 15:25:01', 'product_images/3/avatar.webp', 1, 'Pate chó King\'s Pet - Pate Heo rau củ - 380g: Chìa khóa sức khỏe cho thú cưng\r\n\r\nSau quá trình nghiên cứu và khảo sát về tập tính và các thói quen ăn uống của chó, King’s Pet và ca sĩ Bảo Anh cho ra mắt dòng sản phẩm Pate King’s Pet by Bao Anh heo rau củ.\r\nThành phần có trong 1 lon 380gr gồm có Heo (40%), Gan gà (10%), Cà rốt (5%), Chất làm đông: tinh bột biến tính (E1422), độ ẩm tối đa lên đến 75%, năng lượng trao đổi (880Kcal/kg), đạm thô 12% và chất béo thô 2%.\r\nVới heo được tuyển chọn từ các loại theo đảm bảo vệ sinh và giấy tờ ATTP, mang đến sự vượt trội về hàm lượng dinh dưỡng chủ yếu với tỷ lệ thành phần thịt cao, cung cấp đầy đủ năng lượng cho chó sự phát triển toàn diện. Với sự lành tính và nguồn dinh dưỡng cao, pate King’s pet by Bao Anh Heo rau củ cũng là lựa chọn lý tưởng cho chó kén ăn hoặc trong giai đoạn bình phục sau bệnh. \r\nSản phẩm King’s Pet by Bao Anh Heo rau củ cũng được thừa hưởng quy trình sản xuất với công nghệ thanh khử trùng ở nhiệt độ cao bằng thiết bị hiện đại trong ngành sản xuất thức ăn cho thú nuôi từ các dòng sản phẩm trước đó. Chế độ tiệt trùng 120 độ C trong 90 phút các nguyên liệu sẽ được vô hoạt bất thuận nghịch enzyme và ức chế hệ vi sinh trong thực phẩm, nhờ đó kéo dài thời gian bảo quản sản phẩm. \r\nPate King’s pet by Bao Anh Bò rau củ dành cho chó từ 1 tháng tuổi không những mang hương vị thơm ngon, phù hợp với khẩu vị của cún cưng mà còn an toàn cho sức khỏe. King’s Pet cam kết không sử dụng phế phẩm công nghiệp, nguồn thịt bò đạt chuẩn vệ sinh an toàn thực phẩm.\r\nHướng dẫn sử dụng và cách bảo quản \r\n\r\nBảo quản: Ở nhiệt độ thường, nơi khô ráo thoáng mát. Đóng nắp & bảo quản lạnh sau khi khui hộp (tối đa 05 ngày).\r\nHướng dẫn sử dụng: Cho ăn trực tiếp không phối trộn.Trong 03 ngày đầu vui lòng không cho chó mèo  ăn quá nhiều. Không sử dụng sản phẩm có dấu hiệu rò rỉ, biến dạng hoặc hết hạn sử dụng. Không dùng cho chó mèo  dị ứng với các thành phần có trong sản phẩm\r\nHạn sử dụng: Xem trên lon', 3, 'simple', 0),
(4, 'Pate chó King\'s Pet - Pate Bò rau củ - 380g', 45000, 120, NULL, '2024-04-04 14:21:52', '2026-06-02 15:24:13', 'product_images/4/avatar.webp', 1, 'Pate Bò rau củ King’s Pet By Bao Anh dành cho chó từ 1 tháng tuổi: Bản nâng cấp toàn diện cho bữa ăn của chó \r\n\r\nKing’s Pet cam kết không sử dụng phế phẩm công nghiệp, nguồn thịt bò đạt chuẩn vệ sinh an toàn thực phẩm. \r\n\r\nNăng lượng mức độ vừa phải: Dễ tiêu hóa và hấp thụ dinh dưỡng tốt hơn.\r\nDinh dưỡng hoàn chỉnh: Sản phẩm được thiết kế với mục tiêu giúp hệ tiêu hóa của chó mèo hấp thụ tối đa các chất dinh dưỡng, tạo điều kiện khôi phục hoạt động của các tế bào trong cơ thể nhanh chóng. \r\nBổ sung chất xơ và vitamin từ cà rốt.\r\nNguyên liệu thật, không sử dụng phế phẩm công nghiệp.\r\nTiêu chuẩn thức ăn cho người.\r\nThành phần: Thịt bò (40%), Gan gà (10%), Cà rốt (5%), Chất làm đông: Tinh bột biến tính (E142), Agar.\r\n\r\nBảo quản: Ở nhiệt độ thường, nơi khô ráo thoáng mát. Đóng nắp & bảo quản lạnh (0-4 độ C) sau khi khui hộp (tối đa 05 ngày).\r\n\r\nHướng dẫn sử dụng: Cho ăn trực tiếp không phối trộn. Trong 03 ngày đầu vui lòng không cho thú cưng ăn quá nhiều. Không sử dụng sản phẩm có dấu hiệu rò rỉ, biến dạng hoặc hết hạn sử dụng.', 3, 'simple', 0),
(5, 'Wanpy - Sandwich gà sấy và cá tuyết cho chó 100g', 46000, 35, NULL, '2024-04-04 14:23:15', '2026-06-02 15:23:15', 'product_images/5/avatar.webp', 1, 'Wanpy - Sandwich gà sấy và cá tuyết cho chó 100g\r\nQue thưởng Wanpy cho chó hương vị thơm ngon từ gà sấy và cá tuyết với gói 100g.\r\n\r\n \r\n\r\nQue thưởng sandwich gà sấy và cá tuyết Wanpy dành cho chó CHICKEN JERKY & CODFISH SANDWICHES là sản phẩm với thành phần 100% tự nhiên cùng các khoáng chất có trong thức ăn hỗ trợ tăng cường khả năng miễn dịch, phát triển đường ruột, xương khớp và giúp chăm sóc răng miệng cho chó.\r\n\r\nCho chó sử dụng trực tiếp. Sản phẩm không có chức năng thay thế thức ăn chính của chó.\r\n\r\n\r\nSản phẩm không hương liệu nhân tạo.', 3, 'simple', 0),
(6, 'Wanpy - Bánh quy cuộn khô gà cho chó 100g', 46000, 15, NULL, '2024-04-04 14:26:45', '2026-06-02 15:22:29', 'product_images/6/avatar.webp', 1, 'Wanpy - Bánh quy cuộn khô gà cho chó 100g\r\n \r\n\r\nBánh thưởng Wanpy cho chó hương vị thơm ngon từ thịt gà với gói 100g.\r\n\r\n \r\n\r\nBánh quy cuộn khô gà Wanpy cho chó CHICKEN JERKY & BISCUIT TWISTS là sản phẩm với thành phần 100% tự nhiên cùng các khoáng chất có trong thức ăn hỗ trợ tăng cường khả năng miễn dịch, phát triển đường ruột, xương khớp và giúp chăm sóc răng miệng cho chó.\r\n\r\nCho chó sử dụng trực tiếp. Phù hợp cho lứa chó lớn tuổi và chó con. Sản phẩm không có chức năng thay thế thức ăn chính của chó.\r\n\r\n\r\nSản phẩm không hương liệu nhân tạo.', 3, 'simple', 0),
(7, 'Wanpy - Que nhai sạch răng vị gà cho chó 100g', 50000, 23, NULL, '2024-04-04 14:27:47', '2026-06-02 15:21:42', 'product_images/7/avatar.webp', 1, 'Wanpy - Que nhai sạch răng vị gà cho chó 100g\r\nQue gặm Wanpy cho chó giúp sạch răng hương vị thịt gà với gói 100g.\r\n\r\n \r\n\r\nQue nhai sạch răng vị gà Wanpy dành cho chó TOOTHBRUSH CHEWS (CHICKEN FLAVOR) là sản phẩm với thành phần 100% tự nhiên cùng các khoáng chất có trong thức ăn hỗ trợ tăng cường khả năng miễn dịch, phát triển đường ruột, hàm nhai của chó và làm sạch răng miệng.\r\n\r\nCho chó sử dụng trực tiếp. Sản phẩm không có chức năng thay thế thức ăn chính của chó.\r\n\r\n\r\nSản phẩm không hương liệu nhân tạo.', 3, 'simple', 0),
(8, 'Wanpy - Bánh cá hồi và da cá cho chó 100g', 81000, 44, NULL, '2024-04-04 14:29:03', '2026-06-02 15:20:43', 'product_images/8/avatar.webp', 1, 'Wanpy - Bánh cá hồi và da cá cho chó 100g\r\nBánh thưởng Wanpy cho chó hương vị thơm ngon từ cá hồi với gói 100g.\r\n\r\nBánh cá hồi và da cá mềm Wanpy dành cho chó SOFT SALMON & FISH SKIN BITES là sản phẩm giàu dinh dưỡng với Omega 3 & 6 tốt cho tim mạch và lông. Với thành phần 100% tự nhiên cùng các khoáng chất có trong thức ăn hỗ trợ tăng cường khả năng miễn dịch, phát triển đường ruột và cân bằng dưỡng chất tốt cho trí não thú cưng.\r\nCho chó sử dụng trực tiếp. Sản phẩm phù hợp lứa chó lớn tuổi và chó con. Sản phẩm không có chức năng thay thế thức ăn chính của chó.\r\n\r\nSản phẩm không hương liệu nhân tạo.', 3, 'simple', 0),
(9, 'Wanpy - Thịt vịt sấy dạng quả tạ cho chó 100g', 59000, 77, NULL, '2024-04-04 14:31:56', '2026-06-02 15:19:59', 'product_images/9/avatar.webp', 1, 'Que gặm Wanpy cho chó hương vị thơm ngon từ thịt vịt sấy và da bò .\r\n\r\nQue gặm thịt vịt sấy Wanpy dạng quả tạ dành cho chó DUCK JERKY DUMBBELLS là sản phẩm với thành phần 100% tự nhiên cùng các khoáng chất có trong thức ăn hỗ trợ tăng cường khả năng miễn dịch, phát triển xương khớp và giúp chăm sóc răng miệng cho chó.\r\n\r\nCho chó sử dụng trực tiếp. Sản phẩm phù hợp cho chó lớn tuổi và chó con. Sản phẩm không có chức năng thay thế thức ăn chính của chó.\r\n\r\nTrọng luợng: 100g\r\n\r\nSản phẩm không hương liệu nhân tạo.', 3, 'simple', 0),
(10, 'Wanpy - Thịt gà sấy dạng quả tạ cho chó 100g', 46000, 88, NULL, '2024-04-05 04:24:14', '2026-06-02 15:17:24', 'product_images/10/avatar.webp', 1, 'Snack Wanpy với thịt gà dạng quả tạ thu hút, bắt vị và giàu dinh dưỡng\r\n\r\nThức ăn cho chó Wanpy gà sấy quả tạ có chứa các thành phần như sau: Thịt gà, da bò, bột gạo nếp, protein thực vật, glycerin, tinh bột, muối, chất tạo màu,... hầu hết các thành phần này đều an toàn cho thú cưng sau mỗi lần sử dụng\r\n\r\nLợi ích:\r\n\r\nGiảm cao răng cho hàm răng của cún luôn chắc chắn', 3, 'simple', 0),
(11, 'Pate mèo Migliorgatto thịt cừu và gan', 50000, 25, NULL, '2026-06-02 15:30:57', '2026-06-02 15:30:57', 'product_images/11/avatar.webp', 1, 'Pate Miglior Gatto Pate Lamb And Liver\r\n Hoàn chỉnh cho chú mèo của bạn, cung cấp đầy đủ chất dinh dưỡng. Làm cho chú mèo thích thú với món ăn hơn, và chúng thấy ngon miệng hơn. Giúp bộ lông bóng mượt hơn, giúp hệ tiêu hóa của chúng tốt hơn.\r\n\r\nThành phần dinh dưỡng\r\nPate cho mèo Morando Miglior Gatto Pate Lamb And Liver bao gồm Thịt và động vật dẫn xuất 50% (thịt cừu 5%, gan 5%) – ngũ cốc – các chất dẫn xuất từ ​​cá và cá – Khoáng sản.\r\n\r\nHướng dẫn cho ăn\r\nSản phẩm đã sẵn sàng để sử dụng. Thức ăn chó mèo đề xuất có thể khác nhau tùy theo độ tuổi hoặc nhu cầu cụ thể của mỗi con mèo. Không cần thiết làm nóng thức ăn. Lưu trữ ở nơi khô ráo, thoáng mát từ ánh sáng mặt trời trực tiếp. Sau khi mở, bạn có thể bảo tồn nó 2-3 ngày trong tủ lạnh', 2, 'simple', 0),
(12, 'Pate mèo Migliorgatto thị bê và cà rốt', 50000, 35, NULL, '2026-06-02 15:31:55', '2026-06-02 15:31:55', 'product_images/12/avatar.webp', 1, 'Pate Miglior Gatto Pate Veal And Carrots\r\nHoàn chỉnh cho chú mèo của bạn, cung cấp đầy đủ chất dinh dưỡng. Làm cho chú mèo thích thú với món ăn hơn, và chúng thấy ngon miệng hơn. Giúp bộ lông bóng mượt hơn, giúp hệ tiêu hóa của chúng tốt hơn.\r\n\r\nThành phần dinh dưỡng\r\nPate cho mèo Morando Miglior Gatto Pate Veal And Carrots bao gồm Thịt và động vật dẫn xuất 50% (bê 5%) – cà rốt mất nước 4% – ngũ cốc – cá và các dẫn xuất từ ​​cá – Khoáng sản.\r\n\r\nHướng dẫn cho ăn\r\nSản phẩm đã sẵn sàng để sử dụng. Thức ăn chó mèo đề xuất có thể khác nhau tùy theo độ tuổi hoặc nhu cầu cụ thể của mỗi con mèo. Không cần thiết làm nóng thức ăn. Lưu trữ ở nơi khô ráo, thoáng mát từ ánh sáng mặt trời trực tiếp. Sau khi mở, bạn có thể bảo tồn nó 2-3 ngày trong tủ lạnh', 2, 'simple', 0),
(13, 'Pate mèo Morando Cá và Tôm', 50000, 44, NULL, '2026-06-02 15:32:54', '2026-06-02 15:32:54', 'product_images/13/avatar.webp', 1, 'Pate mèo Morando Cá và Tôm\r\nHương vị thịt cá và tôm thơm ngon khiến chú mèo của bạn không thể cưỡng lại, kích thích vị giác, giúp mèo ăn ngon miệng hơn.\r\n\r\nDòng Morando Professional cho mèo trưởng thành được chế biến theo công thức đột phá, có hàm lượng dinh dưỡng cho sức khỏe mèo. Giàu Vitamin C, E (chất chống oxy hoá), B (tốt cho hệ thần kinh), canxi và phốt pho (cho xương và răng chắc khỏe), omega 3 và 6 (cho da khỏe mạnh, lớp lông bóng mượt).\r\n\r\nThành phần nguyên liệu 100% tự nhiên, với tiêu chuẩn 3 không:\r\n. Không chất bảo quản\r\n. Không chất biến đổi gen\r\n. Không thực hiện thí nghiệm trên động vật\r\n\r\nTrọng lượng: 400g.\r\nNhà Sản Xuất: Morando, Ý.', 2, 'simple', 0),
(14, 'Pate Meowow Cá ngừ và thị gà 80gr', 25000, 54, NULL, '2026-06-02 15:35:34', '2026-06-02 15:35:42', 'product_images/14/avatar.webp', 1, 'Đặc điểm nổi bật\r\nCá ngừ trắng & Thịt gà đóng hộp Tuna White Meat là món ăn nhẹ giàu dinh dưỡng, hỗ trợ cho sự phát triển toàn diện của mèo: \r\n\r\nSử dụng thịt cá ngừ trắng và thịt gà tươi, miếng cá mềm, kích thước nhỏ vừa ăn. \r\nDành cho mọi lứa tuổi, kể cả mèo con, mèo lớn tuổi và mèo có hệ tiêu hóa nhạy cảm. \r\nGiàu DHA, omega-3, giúp mèo sáng mắt, mượt lông. \r\nBổ sung taurin, tốt cho tim mạch và trí não.\r\nCấp nước cho chế độ ăn hằng ngày, đặc biệt phù hợp với những chú mèo ít uống nước.\r\nHộp nhôm hút chân không hiện đại, giữ sản phẩm tươi ngon. \r\nTrong cá ngừ, thịt trắng là phần tinh túy, giàu dinh dưỡng và có nhiều lợi ích đặc biệt đối với sức khỏe và làm đẹp. Thịt trắng có nhiều lợi ích: giàu chất béo bão hòa không no - chất béo có lợi cho sức khỏe, dễ tiêu hóa và hấp thu, giúp cơ thể đào thải lượng cholesterol xấu, tốt cho tim mạch. \r\n\r\nCá ngừ trắng & Thịt gà đóng hộp Tuna White Meat bổ sung những vitamin và khoáng chất thiết yếu mà bữa ăn hằng ngày có thể bị thiếu hụt. Sản phẩm hỗ trợ chăm sóc lông bóng mượt, giúp sáng mắt, giảm đổ ghèn, tăng cường trí não.', 2, 'simple', 0),
(15, 'Pate Meowow Cá ngừ và tôm 80gr', 25000, 50, NULL, '2026-06-02 15:37:15', '2026-06-02 15:37:57', 'product_images/15/avatar.webp', 1, 'Đặc điểm nổi bật\r\nCá ngừ trắng & Tôm đóng hộp Tuna White Meat là món ăn nhẹ giàu dinh dưỡng, hỗ trợ cho sự phát triển toàn diện của mèo: \r\n\r\nSử dụng thịt cá ngừ trắng và tôm, miếng cá mềm, kích thước nhỏ vừa ăn. \r\nDành cho mọi lứa tuổi, kể cả mèo con, mèo lớn tuổi và mèo có hệ tiêu hóa nhạy cảm. \r\nGiàu DHA, omega-3, giúp mèo sáng mắt, mượt lông. \r\nBổ sung taurin, tốt cho tim mạch và trí não.\r\nCấp nước cho chế độ ăn hằng ngày, đặc biệt phù hợp với những chú mèo ít uống nước.\r\nHộp nhôm hút chân không hiện đại, giữ sản phẩm tươi ngon. \r\nTrong cá ngừ, thịt trắng là phần tinh túy, giàu dinh dưỡng và có nhiều lợi ích đặc biệt đối với sức khỏe và làm đẹp. Thịt trắng có nhiều lợi ích: giàu chất béo bão hòa không no - chất béo có lợi cho sức khỏe, dễ tiêu hóa và hấp thu, giúp cơ thể đào thải lượng cholesterol xấu, tốt cho tim mạch. \r\n\r\nCá ngừ trắng & Tôm đóng hộp Tuna White Meat bổ sung những vitamin và khoáng chất thiết yếu mà bữa ăn hằng ngày có thể bị thiếu hụt. Sản phẩm hỗ trợ chăm sóc lông bóng mượt, giúp sáng mắt, giảm đổ ghèn, tăng cường trí não.', 2, 'simple', 0),
(16, 'Pate Meowow Cá ngừ và cá hồi 80gr', 25000, 15, NULL, '2026-06-02 15:38:39', '2026-06-02 15:38:39', 'product_images/16/avatar.webp', 1, 'Đặc điểm nổi bật\r\nCá ngừ trắng & Tôm đóng hộp Tuna White Meat là món ăn nhẹ giàu dinh dưỡng, hỗ trợ cho sự phát triển toàn diện của mèo: \r\n\r\nSử dụng thịt cá ngừ trắng và tôm, miếng cá mềm, kích thước nhỏ vừa ăn. \r\nDành cho mọi lứa tuổi, kể cả mèo con, mèo lớn tuổi và mèo có hệ tiêu hóa nhạy cảm. \r\nGiàu DHA, omega-3, giúp mèo sáng mắt, mượt lông. \r\nBổ sung taurin, tốt cho tim mạch và trí não.\r\nCấp nước cho chế độ ăn hằng ngày, đặc biệt phù hợp với những chú mèo ít uống nước.\r\nHộp nhôm hút chân không hiện đại, giữ sản phẩm tươi ngon. \r\nTrong cá ngừ, thịt trắng là phần tinh túy, giàu dinh dưỡng và có nhiều lợi ích đặc biệt đối với sức khỏe và làm đẹp. Thịt trắng có nhiều lợi ích: giàu chất béo bão hòa không no - chất béo có lợi cho sức khỏe, dễ tiêu hóa và hấp thu, giúp cơ thể đào thải lượng cholesterol xấu, tốt cho tim mạch. \r\n\r\nCá ngừ trắng & Tôm đóng hộp Tuna White Meat bổ sung những vitamin và khoáng chất thiết yếu mà bữa ăn hằng ngày có thể bị thiếu hụt. Sản phẩm hỗ trợ chăm sóc lông bóng mượt, giúp sáng mắt, giảm đổ ghèn, tăng cường trí não.', 2, 'simple', 0),
(17, 'Pate Meowow Cá ngừ và thịt cua 80gr', 25000, 34, NULL, '2026-06-02 15:39:14', '2026-06-02 15:39:14', 'product_images/17/avatar.webp', 1, 'Đặc điểm nổi bật\r\nCá ngừ trắng & Thịt cua đóng hộp Tuna White Meat là món ăn nhẹ giàu dinh dưỡng, hỗ trợ cho sự phát triển toàn diện của mèo: \r\n\r\nSử dụng thịt cá ngừ trắng và thịt cua tươi, miếng cá mềm, kích thước nhỏ vừa ăn. \r\nDành cho mọi lứa tuổi, kể cả mèo con, mèo lớn tuổi và mèo có hệ tiêu hóa nhạy cảm. \r\nGiàu DHA, omega-3, giúp mèo sáng mắt, mượt lông. \r\nBổ sung taurin, tốt cho tim mạch và trí não.\r\nCấp nước cho chế độ ăn hằng ngày, đặc biệt phù hợp với những chú mèo ít uống nước.\r\nHộp nhôm hút chân không hiện đại, giữ sản phẩm tươi ngon. \r\nTrong cá ngừ, thịt trắng là phần tinh túy, giàu dinh dưỡng và có nhiều lợi ích đặc biệt đối với sức khỏe và làm đẹp. Thịt trắng có nhiều lợi ích: giàu chất béo bão hòa không no - chất béo có lợi cho sức khỏe, dễ tiêu hóa và hấp thu, giúp cơ thể đào thải lượng cholesterol xấu, tốt cho tim mạch. \r\n\r\nCá ngừ trắng & Thịt cua đóng hộp Tuna White Meat bổ sung những vitamin và khoáng chất thiết yếu mà bữa ăn hằng ngày có thể bị thiếu hụt. Sản phẩm hỗ trợ chăm sóc lông bóng mượt, giúp sáng mắt, giảm đổ ghèn, tăng cường trí não.', 2, 'simple', 0),
(18, 'Matisse mèo con 400gr', 89000, 43, NULL, '2026-06-02 15:40:14', '2026-06-02 15:40:14', 'product_images/18/avatar.webp', 1, 'MATISSE KITTEN TỪ 1-12 THÁNG TUỔI\r\n\r\nThức ăn hoàn chỉnh và cân bằng dành cho mèo con và mèo đang mang thai hoặc cho con bú.  \r\n\r\nThành phần: \r\n\r\nThịt gà sấy (36%), gạo (20%), mỡ gà, ngô, cá sấy(6%), gluten ngô, trứng khử nước (4%), protein động vật thủy phân, bột củ cải khô, dầu cá, dầu thực vật , natri clorua, kali clorua, canxi sunfat dihydrat, nấm men bia khô, mono-dicalcium phosphate, canxi cacbonat.  \r\n\r\nThành phần phân tích:\r\n\r\nProtein thô 36,00%; chất béo thô và dầu 14,00%; chất xơ thô 0.90%; tro thô 7,30%; canxi 1,25%; phốt pho 1.00%; Magiê 0,09%; Taurine 2900mg/kg', 2, 'simple', 0),
(19, 'Matisse Chicken & Rice 400gr', 89000, 67, NULL, '2026-06-02 15:41:16', '2026-06-02 15:41:16', 'product_images/19/avatar.webp', 1, 'Matisse Chicken & Rice 400g\r\nThức ăn cân bằng và toàn diện cho mèo trường thành\r\n\r\nThành phần\r\n\r\nThịt gà sấy (32%), gạo (25%), ngô, cá sấy, mỡ gà, protein động vật thủy phân, bột củ dền khô, dầu cá, dầu thực vật, gluten ngô, toàn bộ trứng khử nước, natri clorua, kali clorua, dihydrat canxi sunfat, men bia khô.\r\n\r\nThành phần phân tích\r\n\r\nProtein thô 32,00%; dầu mỡ thô 11,00%; xơ thô 1,20%; tro thô 6,60%; Canxi 1,00%; Phốt pho 0,90%; Magie 0,08%; Taurine 1800mg / kg.', 2, 'simple', 0),
(20, 'Bình cấp nước/thức ăn AZIMUT - 1.5L', 258000, 15, NULL, '2026-06-02 15:41:57', '2026-06-02 17:01:06', 'product_images/20/avatar.webp', 1, NULL, 8, 'simple', 0),
(21, 'Khay & chén ăn uống', 263000, 24, NULL, '2026-06-02 15:42:41', '2026-06-02 16:59:21', 'product_images/21/avatar.webp', 1, NULL, 8, 'simple', 0),
(22, 'Chén chống kiến - Size L', 175000, 16, NULL, '2026-06-02 15:43:25', '2026-06-02 15:43:25', 'product_images/22/avatar.webp', 1, NULL, 9, 'simple', 0),
(23, 'Chén nhựa Magnus - Size M', 171000, 4, NULL, '2026-06-02 15:44:07', '2026-06-02 16:59:32', 'product_images/23/avatar.webp', 1, NULL, 8, 'simple', 0),
(24, 'Chén nhựa Magnus - Size L', 171000, 30, NULL, '2026-06-02 15:45:05', '2026-06-02 16:59:45', 'product_images/24/avatar.webp', 1, NULL, 8, 'simple', 0),
(25, 'Chén Inox Feedy - 1.8L', 131000, 48, NULL, '2026-06-02 15:45:43', '2026-06-02 16:59:56', 'product_images/25/avatar.webp', 1, NULL, 8, 'simple', 0),
(26, 'Nữ trang hình xương', 30000, 32, NULL, '2026-06-02 15:46:18', '2026-06-02 17:00:06', 'product_images/26/avatar.webp', 1, NULL, 9, 'simple', 0),
(27, 'Nữ trang hình trái tim', 36000, 14, NULL, '2026-06-02 15:46:49', '2026-06-02 17:00:17', 'product_images/27/avatar.webp', 1, NULL, 9, 'simple', 0),
(28, 'Yếm cho chó size L', 435000, 2, NULL, '2026-06-02 15:47:24', '2026-06-02 17:00:53', 'product_images/28/avatar.webp', 1, NULL, 9, 'simple', 0),
(29, 'Vòng cổ CLUB 45-70cm (xanh lá)', 176000, 43, NULL, '2026-06-02 15:47:55', '2026-06-02 16:58:51', 'product_images/29/avatar.webp', 1, NULL, 9, 'simple', 0),
(30, 'Dây dắt CLUB 2cm/120cm', 190000, 143, NULL, '2026-06-02 15:48:33', '2026-06-02 16:58:35', 'product_images/30/avatar.webp', 1, NULL, 9, 'simple', 0),
(31, 'Bộ dây dắt kèm vòng cổ - Size L (13mm)', 259000, 114, NULL, '2026-06-02 15:49:10', '2026-06-02 16:58:21', 'product_images/31/avatar.webp', 1, NULL, 9, 'simple', 0),
(32, 'Nệm dù mùa hè', 220000, 125, NULL, '2026-06-02 15:49:44', '2026-06-02 15:49:44', 'product_images/32/avatar.webp', 1, NULL, 1, 'simple', 0),
(33, 'Khay nằm cho thú cưng Red - Size L (81*54*24)', 498000, 6, NULL, '2026-06-02 15:50:30', '2026-06-02 16:58:06', 'product_images/33/avatar.webp', 1, NULL, 1, 'simple', 0),
(34, 'Võng treo kiếng cho mèo', 240000, 25, NULL, '2026-06-02 15:51:02', '2026-06-02 16:57:53', 'product_images/34/avatar.webp', 1, NULL, 1, 'simple', 0),
(35, 'Nệm vuông vải lạnh chim cánh cụt - size M', 230000, 45, NULL, '2026-06-02 15:51:35', '2026-06-02 16:57:41', 'product_images/35/avatar.webp', 1, NULL, 1, 'simple', 0),
(36, 'Nệm Hoa Hồng xuất USA - Size S', 230000, 12, NULL, '2026-06-02 15:52:10', '2026-06-02 16:41:11', 'product_images/36/avatar.webp', 1, NULL, 1, 'simple', 0),
(37, 'Balo bọ dừa', 500000, 32, NULL, '2026-06-02 15:52:39', '2026-06-02 15:52:39', 'product_images/37/avatar.webp', 1, NULL, 10, 'simple', 0),
(38, 'Balo Phi Hành Gia Vận Chuyển Chó Mèo', 550000, 36, NULL, '2026-06-02 15:53:18', '2026-06-02 15:53:18', 'product_images/38/avatar.webp', 1, NULL, 10, 'simple', 0),
(39, 'Lồng Vận Chuyển Chó Mèo - Chocolate', 630000, 25, NULL, '2026-06-02 15:53:50', '2026-06-02 16:57:28', 'product_images/39/avatar.webp', 1, NULL, 10, 'simple', 0),
(40, 'Balo Vận Chuyển Chó Mèo', 650000, 39, NULL, '2026-06-02 15:55:04', '2026-06-02 15:55:16', 'product_images/40/avatar.webp', 1, 'Chọn màu ngẫu nhiên', 10, 'simple', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attr_config`
--

CREATE TABLE `product_attr_config` (
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'id product trong table product',
  `attribute_id` bigint(20) UNSIGNED NOT NULL COMMENT 'id attribute trong table attribute',
  `is_private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(20, 'product_images/14/10903258606216.webp', 14, '2026-06-02 15:35:34', NULL),
(21, 'product_images/18/2268248473036.png', 18, '2026-06-02 15:40:14', NULL),
(22, 'product_images/19/12808304617944.png', 19, '2026-06-02 15:41:16', NULL),
(23, 'product_images/40/9979230020920.webp', 40, '2026-06-02 15:55:04', NULL),
(24, 'product_images/40/9897330965244.webp', 40, '2026-06-02 15:55:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(2, '101935641887094069462', 'google', '2024-04-05 04:06:04', '2024-04-05 04:06:04'),
(5, '105061645621011252230', 'google', '2026-06-01 09:16:26', '2026-06-01 09:16:26'),
(6, '108669548465837062551', 'google', '2026-06-02 16:51:46', '2026-06-02 16:51:46'),
(7, '105912460752613872884', 'google', '2026-06-02 16:54:50', '2026-06-02 16:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'democode', 'democode@gmail.com', '$2y$10$7IzXHVrwoMKmHTG1oSn6SefRHfUFPLReCJhB1rF/57zuyJBiC7W9C', NULL, NULL, 0, NULL, '2024-04-03 14:04:54', '2024-04-05 04:27:01'),
(2, 'muoi hoa', 'hoahuongduong05124@gmail.com', '$2y$10$FES778pFdRWe6zzotgsLGeS5rGKSu5sxgSoT/Er0SMHULGj8r5OnC', NULL, NULL, 1, 'FF7kgbDJnWeK6VwGyyNDzjJdgpiLp3N6LKLEYUEdTkmavESVaI10bIrzOnfC', '2024-04-05 04:06:04', '2024-04-05 04:22:50'),
(3, 'abcdef', 'abcdef@gmail.com', '$2y$10$IH.CzGgFmp1g8EdBgdEFEuBAZQd9uhuXqHTS9UnCC1eR10iUOA.2u', NULL, NULL, 1, NULL, '2026-01-23 09:58:54', '2026-01-23 09:58:54'),
(4, 'BuiThaiHoc', 'BuiThaiHoc@gmail.com', '$2y$10$mjXot5jSPr6NlrZtBFVRF.kxPoI8q.S5GOpwdu5yOQgNvviSU949y', NULL, NULL, 0, NULL, '2026-05-27 06:02:11', '2026-06-06 03:43:42'),
(5, 'Nguyễn Thị Mỹ Hạnh', 'myhanhchelly@gmail.com', '$2y$10$prc63abNAel0aTC7bttMte3POeJkDWkFKKQpfPxAS9iuNbHMJBZoy', NULL, NULL, 1, '330wLqyprW0qph9ak5FXgvDBJMzpF58VfnaxVvAHMaw4AEZ4sT8Oyeg1e8fG', '2026-05-30 09:32:23', '2026-06-01 09:22:19'),
(6, 'Phạm Anh Thư', 'anhthu0207xt@gmail.com', '', NULL, NULL, 0, '9NrFBxwByWXvr52kBOszduFzYVtVLN1H46clL1khMDF4gsvuxc0ksCoaYcU7', '2026-06-02 16:51:46', '2026-06-06 09:12:03'),
(7, 'Phạm Thanh Lân', 'phamthanhlan22071973@gmail.com', '', NULL, NULL, 1, 'EyqH25hjtVxnGEiJsIQLLu1HSq3RONs530v4LBgYLHzl6ZdlzFOgXoy1ECAp', '2026-06-02 16:54:50', '2026-06-02 16:54:50'),
(8, 'Học', 'hocbui27@gmail.com', '$2y$10$56UupAiaTvb6LkD46ueqlef20TuHl6UZ8qAo9J8aKKj9eoE3q8pN.', NULL, NULL, 1, NULL, '2026-06-06 09:46:46', '2026-06-06 09:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'id product trong table product',
  `attribute_id` bigint(20) UNSIGNED NOT NULL COMMENT 'id attribute trong table attribute',
  `text_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`product_id`,`user_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `orders_city_id_foreign` (`city_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`product_id`,`order_id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
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
  ADD KEY `products_parent_id_foreign` (`parent_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_attr_config`
--
ALTER TABLE `product_attr_config`
  ADD KEY `product_attr_config_product_id_foreign` (`product_id`),
  ADD KEY `product_attr_config_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`product_id`,`attribute_id`),
  ADD KEY `values_attribute_id_foreign` (`attribute_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176920308092103789;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_attr_config`
--
ALTER TABLE `product_attr_config`
  ADD CONSTRAINT `product_attr_config_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_attr_config_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `values`
--
ALTER TABLE `values`
  ADD CONSTRAINT `values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
