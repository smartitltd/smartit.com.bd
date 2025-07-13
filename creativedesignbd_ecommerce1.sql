-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2025 at 10:29 AM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creativedesignbd_ecommerce1`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(29, 8, 'public/uploads/banner/173643113867575302_2472100143020289_2326622559207948288_n.jpg', '#', 1, '2025-01-10 03:58:58', '2025-01-10 03:58:58'),
(31, 5, 'public/uploads/banner/17402518141684578381.jpg', '#', 1, '2025-01-10 06:20:54', '2025-02-23 09:16:54'),
(33, 7, 'public/uploads/banner/1736441091ads.png', '#', 1, '2025-01-10 06:38:05', '2025-01-10 06:44:52'),
(35, 6, 'public/uploads/banner/1740250618QCY-watch-banner-1024x302.webp', '#', 1, '2025-01-10 06:51:57', '2025-02-23 08:56:58'),
(36, 6, 'public/uploads/banner/174025063801_PB_LP_Banner.webp', '#', 1, '2025-02-23 08:57:18', '2025-02-23 08:57:18'),
(37, 5, 'public/uploads/banner/1740251636gb.jpg', '#', 1, '2025-02-23 09:07:12', '2025-02-23 09:13:56'),
(38, 5, 'public/uploads/banner/1740251424images.jpeg', '#', 1, '2025-02-23 09:10:24', '2025-02-23 09:10:24'),
(40, 9, 'public/uploads/banner/1740253498baner.png', '#', 1, '2025-02-23 09:35:34', '2025-02-23 09:44:58'),
(41, 10, 'public/uploads/banner/1740253803aSsQbiCEfTO54DI4whMLqeBXc1BTiX7waEYuU4v3.png', '#', 1, '2025-02-23 09:49:34', '2025-02-23 09:50:03'),
(42, 11, 'public/uploads/banner/1740476760174025063801_PB_LP_Banner.webp', '#', 1, '2025-02-23 09:54:24', '2025-02-25 09:46:00'),
(45, 1, 'public/uploads/banner/1740308501aHR0cHM6Ly9hdWRpb25pYy5jby9jZG4vc2hvcC9maWxlcy9BaXJidWQtNTUwLUJhbm5lcnNfMDJfMGViNzQ5ZGQtM2FmZi00YjY5LWFmMjgtN2JiNmRmNmYxNDRmLmpwZz92PTE2Nzg1MjMwMTg=_960x960q80.png_.webp', '#', 1, '2025-02-24 01:01:41', '2025-02-24 01:01:41'),
(46, 1, 'public/uploads/banner/1740308512Keyboard-Common-Page-Main-Banner.png', '#', 1, '2025-02-24 01:01:52', '2025-04-11 08:56:04'),
(47, 1, 'public/uploads/banner/1740308743508715_cwnzgmlximpsrlv6njlgg9jpo.jpg', '#', 1, '2025-02-24 01:05:43', '2025-04-11 08:55:53'),
(48, 11, 'public/uploads/banner/17404769351740250618QCY-watch-banner-1024x302.webp', 'https://ecommerce1.creativedesign.com.bd/', 1, '2025-02-25 09:48:55', '2025-02-25 09:48:55'),
(49, 11, 'public/uploads/banner/1740476956174025063801_PB_LP_Banner.webp', 'https://ecommerce1.creativedesign.com.bd/', 1, '2025-02-25 09:49:16', '2025-02-25 09:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2023-10-01 04:15:55'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2023-11-19 05:25:34'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2023-11-19 05:25:46'),
(7, 'Campaign', 1, '2024-07-06 15:42:31', '2024-08-17 05:24:42'),
(8, 'Customer Review', 1, '2024-11-07 10:19:17', '2024-11-07 10:24:47'),
(9, 'Hotdeals Baner', 1, '2025-02-23 09:34:40', '2025-02-23 09:34:40'),
(10, 'Home Ads', 1, '2025-02-23 09:47:22', '2025-02-23 09:47:22'),
(11, 'Home Ads 2', 1, '2025-02-23 09:51:07', '2025-05-07 09:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner_title` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime DEFAULT current_timestamp(),
  `top_title_1` varchar(255) DEFAULT 'হোম ডেলিভারি ফ্রি',
  `top_title_2` varchar(255) DEFAULT '৩ দিনের জন্য প্রযোজ্য',
  `heading_1` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `feature_1` varchar(255) DEFAULT '১০০% কালার গ্যারান্টি',
  `feature_2` varchar(255) DEFAULT '১০০% কোয়ালিটিফুল',
  `heading_2` varchar(255) DEFAULT 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা',
  `heading_3` varchar(255) DEFAULT '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”',
  `heading_4` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `note` varchar(255) DEFAULT 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।',
  `billing_details` varchar(255) DEFAULT 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `banner_title`, `video`, `banner`, `slug`, `short_description`, `description`, `review`, `product_id`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`, `deadline`, `top_title_1`, `top_title_2`, `heading_1`, `feature_1`, `feature_2`, `heading_2`, `heading_3`, `heading_4`, `note`, `billing_details`) VALUES
(13, 'প্রাকৃতিক উপায়ে মেদভুঁড়ি সমস্যার সমাধান', 'প্রাকৃতিক উপায়ে মেদভুঁড়ি সমস্যার সমাধান', 'yJg-Y5byMMw', 'public/uploads/campaign/1736442223-1732186626-51ssibigyqs._ac_uf894,1000_ql80_.jpg', 'prakrritik-upaze-medvunndi-smszar-smadhan', '<p><br></p>', '<p>এই জুস টি সেবন করলে ১৫ দিন থেকে এক মাসের ভিতর 10 থেকে 12 কেজি ওজন কমানো সম্ভব , এসিডিটি বা গ্যাস্ট্রিক থেকে মুক্তি পেতে সাহাজ্য করবে। কোষ্ঠকাঠিন্য এবং পেটের যাবতীয় সমস্যা সমাধান করবে আপনার পেট থাকবে ক্লিয়ার মনে রাখবেন পেট ক্লিয়ার থাকলে অনেক কঠিন রোগ থেকে সহজে মুক্তি পাওয়া যায়</p><div><br></div>', '50+ review', 179, 'public/uploads/campaign/1736442270-2024-07-16-6696757bd2081.webp', 'public/uploads/campaign/1736442272-2024-07-16-6696757bd2081.webp', 'public/uploads/campaign/1736442273-2024-07-16-6696757bd2081.webp', '1', '2024-11-21 15:57:07', '2025-02-24 16:59:38', '2026-05-14 11:57:00', 'হোম ডেলিভারি ফ্রি', '৩ দিনের জন্য প্রযোজ্য', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', '১০০% কালার গ্যারান্টি', '১০০% কোয়ালিটিফুল', 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা', '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'),
(16, 'Testy Burger', 'Teasty Burger', NULL, 'public/uploads/campaign/1741676521-tv-pic-2.jpg', 'testy-burger', '<p>Buy now</p>', '<p>Call me</p>', 'Very Testy', 191, 'public/uploads/campaign/1741676521-tv-pic-13.webp', 'public/uploads/campaign/1741676523-tv-pic-18.webp', 'public/uploads/campaign/1741676525-tv-pic-2.webp', '1', '2025-03-11 07:02:07', '2025-03-11 07:02:07', '2025-03-11 13:02:07', 'হোম ডেলিভারি ফ্রি', '৩ দিনের জন্য প্রযোজ্য', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', '১০০% কালার গ্যারান্টি', '১০০% কোয়ালিটিফুল', 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা', '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'),
(17, 'Md Abu Sayed', 'অরিজিনাল দেশি খাটি খুলনার চুইঝাল', '1zLPXmTEF1w', 'public/uploads/campaign/1745586789-656e1fa2d8cfe.jpg', 'md-abu-sayed', '<p>gvbcbvcbvc</p>', '<p>cvbbcvcbv</p>', '5', 179, 'public/uploads/campaign/1745586789-656e1fa2d8cfe.webp', 'public/uploads/campaign/1745586790-656e1fa2d8cfe.webp', 'public/uploads/campaign/1745586791-656e1fa2d8cfe.webp', '1', '2025-04-25 13:13:11', '2025-04-25 13:13:11', '2025-04-25 19:13:11', 'হোম ডেলিভারি ফ্রি', '৩ দিনের জন্য প্রযোজ্য', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', '১০০% কালার গ্যারান্টি', '১০০% কোয়ালিটিফুল', 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা', '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'),
(19, 'এক্সচভক্সচ', 'ব্যানার তিতলে', NULL, 'public/uploads/campaign/1746512689-whatsapp-image-2025-05-01-at-2.59.48-pm-(2).jpeg', 'ekscvksc', '<p>ওেদক্বদক্বদকদকদ দে</p>', '<p>ডেস্ক্র</p>', 'সদচসদচসদচসদচ রিভিউ', 179, 'public/uploads/campaign/1746512689-whatsapp-image-2025-05-05-at-11.45.05-am.webp', 'public/uploads/campaign/1746512689-whatsapp-image-2025-05-05-at-11.45.06-am.webp', 'public/uploads/campaign/1746512689-whatsapp-image-2025-05-05-at-11.45.05-am-(1).webp', '1', '2025-05-06 06:24:49', '2025-05-06 06:24:49', '2025-05-06 12:24:49', 'হোম ডেলিভারি ফ্রি', '৩ দিনের জন্য প্রযোজ্য', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', '১০০% কালার গ্যারান্টি', '১০০% কোয়ালিটিফুল', 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা', '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'),
(20, 'Test', 'Test', NULL, 'public/uploads/campaign/1746628137-inbound3562224971019149504.png', 'test', '<p>Short Description&nbsp;</p>', '<p>Description&nbsp;</p>', 'Review', 179, 'public/uploads/campaign/1746628137-inbound2462178553727759227.webp', 'public/uploads/campaign/1746628137-inbound3079446515130039824.webp', 'public/uploads/campaign/1746628137-inbound55431228793825511.webp', '1', '2025-05-07 14:28:58', '2025-05-08 09:34:14', '2025-05-17 20:28:58', 'দ্রুত অর্ডার করুন', 'স্টক সীমিত', 'ইয়ামাহা এফ জেড এস ভার্শন ৩', '১৫০ সিসি এয়ার কুলড ইঞ্জিন', 'সিঙ্গেল চ্যানেল এবিএস', NULL, '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”', 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।', 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_product`
--

INSERT INTO `campaign_product` (`id`, `campaign_id`, `product_id`, `created_at`, `updated_at`) VALUES
(16, 17, 181, NULL, NULL),
(17, 17, 182, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(23, 'public/uploads/campaign/1736442274-2024-07-16-6696757bd2081.jpg', 13, '2025-01-10 07:04:34', '2025-01-10 07:04:34'),
(24, 'public/uploads/campaign/1741676527-tv-pic-2.jpg', 16, '2025-03-11 07:02:07', '2025-03-11 07:02:07'),
(25, 'public/uploads/campaign/1745586791-656e1fa2d8cfe.jpg', 17, '2025-04-25 13:13:11', '2025-04-25 13:13:11'),
(26, 'public/uploads/campaign/1746103556-1736442270-2024-07-16-6696757bd2081.webp', 18, '2025-05-01 12:45:56', '2025-05-01 12:45:56'),
(27, 'public/uploads/campaign/1746512689-whatsapp-image-2025-05-05-at-10.17.42-am.jpeg', 19, '2025-05-06 06:24:49', '2025-05-06 06:24:49'),
(28, 'public/uploads/campaign/1746628138-inbound2631779633337575459.png', 20, '2025-05-07 14:28:58', '2025-05-07 14:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`, `meta_keyword`) VALUES
(19, 0, 'Premium Gadgetz', 'premium-gadgetz', 'public/uploads/category/1740306733-gadget-png-pic.webp', 'Premium Gadgetz', NULL, 1, 1, '2025-02-24 00:32:15', '2025-02-24 01:23:15', NULL),
(20, 0, 'Car Accessories', 'car-accessories', 'public/uploads/category/1740306792-automobile-car-accessories-transparent-images.webp', NULL, NULL, 1, 1, '2025-02-24 00:33:12', '2025-02-24 01:26:14', NULL),
(21, 0, 'Music Accessories', 'music-accessories', 'public/uploads/category/1740306909-pngimg.com---headphones_png101980.webp', NULL, NULL, 0, 1, '2025-02-24 00:35:09', '2025-02-24 00:39:11', NULL),
(22, 0, 'Mobile Accessories', 'mobile-accessories', 'public/uploads/category/1740307041-download.webp', NULL, NULL, 0, 1, '2025-02-24 00:37:21', '2025-02-24 00:37:21', NULL),
(23, 0, 'Multifunctional Hub', 'multifunctional-hub', 'public/uploads/category/1740307131-pngtree-usb-docking-station-widely-compatible-png-image_13280168.webp', NULL, NULL, 0, 1, '2025-02-24 00:38:51', '2025-02-24 00:38:51', NULL),
(24, 0, 'Power Bank', 'power-bank', 'public/uploads/category/1740307192-pngtree-metal-portable-power-bank-png-image_13261164.webp', NULL, NULL, 0, 1, '2025-02-24 00:39:52', '2025-02-24 00:40:16', NULL),
(25, 0, 'Smart Watch', 'smart-watch', 'public/uploads/category/1740307265-pngtree-the-smartwatch-banner-png-image_14878614.webp', NULL, NULL, 0, 1, '2025-02-24 00:41:08', '2025-02-24 00:41:08', NULL),
(26, 0, 'PC Accessories', 'pc-accessories', 'public/uploads/category/1740307343-computer-mouse-152249_640.webp', NULL, NULL, 1, 1, '2025-02-24 00:42:23', '2025-02-24 01:47:15', NULL),
(27, 0, 'Laptop & Computer', 'laptop-&-computer', 'public/uploads/category/1740307427-gaming-computer-png-image.webp', NULL, NULL, 0, 1, '2025-02-24 00:43:47', '2025-02-24 00:43:47', NULL),
(28, 0, 'Bike & Car', 'bike-&-car', 'public/uploads/category/1740307578-car.webp', NULL, NULL, 0, 1, '2025-02-24 00:46:18', '2025-02-24 00:46:18', NULL),
(30, 0, 'Solor & Eelectric', 'solor-&-eelectric', 'public/uploads/category/1740308847-solar-panel-cell-lxnrgb6-600.webp', NULL, NULL, 0, 1, '2025-02-24 01:07:27', '2025-02-24 01:07:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2023-11-03 09:53:12'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2023-11-03 09:10:20'),
(74, 'Off White', '#f5f5f5', '1', '2024-11-10 04:46:40', '2024-11-10 04:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `whatsapp` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `whatsapp`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '+8801849832178', 'info@creativedesign.com.bd', '+8801849832178', '+8801849832178', 'info@creativedesign.com.bd', 'House: Munshi Bari,Beside Nayar Hat High School,Borobari,Lalmonir Hat', '#', 1, '2023-01-22 10:35:29', '2025-01-20 13:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `url`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', 'https://api-hermes.pathao.com/aladdin', 'https://api-hermes.pathao.com/aladdin', 'https://portal.packzy.com/api/v1/create_order', 'asdfdsfdsafdsf', '1', '2024-02-06 11:29:46', '2025-04-30 17:49:12'),
(2, 'pathao', '9wdLZvwajP', 'NiIaADgwyBc1PBr8242JMH3QC7qhIgpIY0umQSUs', 'https://api-hermes.pathao.com/aladdin', 'W7zvvVNdVbU9vAlmrFk83EnbogvT7jplcfRaBnoC', '1', '2024-02-06 11:29:46', '2025-03-06 13:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Elite Design', 1, '2023-10-04 07:02:30', '2025-01-10 02:57:35'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p>Elite Design</p>', 1, '2023-10-04 07:03:00', '2025-01-10 02:57:30'),
(5, 'Return Policy', 'return-policy', 'Return Policy', 'Elite Design', 1, '2023-10-04 07:03:42', '2025-01-10 02:57:26'),
(6, 'Terms & Conditions', 'terms-&-conditions', 'Terms & Conditions', '<p>Elite Design</p>', 1, '2023-10-04 07:04:05', '2025-01-10 02:57:22'),
(7, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'Elite Design', 1, '2023-10-04 07:04:19', '2025-01-10 02:57:18'),
(8, 'Test', 'test', 'aaaaa', '<p>aaaaa</p>', 1, '2025-03-01 14:10:21', '2025-03-01 14:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(106, 'MD Mamun Hassan', 'MD Mamun Hassan', '01954578010', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iW1nEwmWzqmUFLGEae/PKOzQpVKIc392zJRAM2uhzqDXa1.WCydaK', NULL, 'active', '2025-01-10 07:41:34', '2025-01-10 07:41:34'),
(107, 'elitedes Hello', 'elitedes Hello', '01775457008', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HUqNPduN8J6Qq7h4DKL6SuLS9tDZDF/wjHEOvA5q/5YFcpq83VOcK', NULL, 'active', '2025-01-10 07:48:57', '2025-01-10 07:48:57'),
(108, 'Mobarok Hussain', 'Mobarok Hussain', '01715712941', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cd3kTI.dN/FjDxiGVS.s/ePDZkuPr4QZ6SUHknxyN79K4tAffyYs2', NULL, 'active', '2025-02-03 08:42:51', '2025-02-03 08:42:51'),
(109, 'NU Admission', 'NU Admission', '01403134343', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$eXamdjEFOYsJGea6c9Jg0.p21BsvdSNhKJwvA9zkVSQVTT.k8fARu', NULL, 'active', '2025-02-06 09:46:59', '2025-02-06 09:46:59'),
(110, 'Md Monjurul Islam', 'Md Monjurul Islam', '01783004753', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/1TBtCbXPQYs9R9E2f5/8OQrOuORF/kwgy5BCUFguPvGHR73bc.zq', NULL, 'active', '2025-02-24 16:57:32', '2025-02-24 16:57:32'),
(111, 'Md Nazrul Islam', 'Md Nazrul Islam', '01870829343', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pKu8akLp62Pru8cRX12.AeVHZU/N4sZSQkHzcZy2NNOBRB/BSShvG', NULL, 'active', '2025-02-24 17:22:23', '2025-02-24 17:22:23'),
(112, 'robin mdrobin', 'robin mdrobin', '01854162055', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vG.ow6368JvAhI9JUGPh0eJUwi1LtsCSqCD5mV7UCquNUvXy18RPq', NULL, 'active', '2025-02-25 10:27:45', '2025-02-25 10:27:45'),
(113, 'Mohammad Salim', 'Mohammad Salim', '01675277859', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TYV1r08ReVpdIv2YLxpdiee9/HXWLt7xSJA/7G53mP/RqTb6I0D6W', NULL, 'active', '2025-02-25 11:55:30', '2025-02-25 11:55:30'),
(114, 'আসিক piyas', 'আসিক piyas', '01636984304', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$U9UpKr2obM4oMwqXM86JlOyIjYD4DaLPnyHRCrKaKhhyvkPixd8Vq', NULL, 'active', '2025-02-26 16:00:06', '2025-02-26 16:00:06'),
(115, 'mahedi', 'mahedi', '01723990666', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$k8SISNjbEKNeDb8iEgELIury8F2mwUQ6NqslAc7F58usQ.VQrgaji', NULL, 'active', '2025-02-28 13:10:20', '2025-02-28 13:10:20'),
(116, 'Shohag', 'Shohag', '01981493354', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/AjGc3zlYS13NeZlO/1wkOdbiHfFnltD8nmOO//CriEhH4aG9v1Ae', NULL, 'active', '2025-03-04 06:39:41', '2025-03-04 06:39:41'),
(117, 'Mahmudul Hasan Arman', 'Mahmudul Hasan Arman', '01629891233', NULL, NULL, NULL, NULL, 1, '3537', 'public/uploads/default/user.png', '$2y$10$jVrpFethlLNxslMnfyFWNum.kkT1KNIzRhefj.cz71AyDwRETwHiS', NULL, 'active', '2025-03-06 06:54:50', '2025-03-06 06:56:00'),
(118, 'Abu', 'Abu', '01916011377', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7kcr.W0OL5vsTVZlqkprJujNXbrGULZEPbMUtPvhbGS0uX5c3fzbW', NULL, 'active', '2025-03-10 08:28:05', '2025-03-10 08:28:05'),
(119, 'Shohan', 'Shohan', '01575432476', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z3l4j2OpWS8iJRkgQp.5feY2QjYZhfCa4/GRfEP.7IR121r7A09VK', NULL, 'active', '2025-03-10 14:59:36', '2025-03-10 14:59:36'),
(120, 'ABU SAYEM', 'abu-sayem-120', '01715275071', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GH/XV4TUxvAPYpFB5GpRBe0yqF8dgs0MPm5yGoRh6MQEAJM4i.2JS', NULL, 'active', '2025-03-10 22:50:00', '2025-03-10 22:50:00'),
(121, 'MD HOSSAIN ISLAM.', 'md-hossain-islam-121', '01626548095', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hxaQ/FaOsDFax2lGztGEdeHAEptShifZfdlWEqw2lLjAXS7wcMOuy', NULL, 'active', '2025-03-14 08:22:01', '2025-03-14 08:22:01'),
(122, 'Demo', 'Demo', '01700000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iIxUpA/Cz5pRw0l0gU.g9OZaVApQ1fO2GU6xenZn6ZpfptEcz8XFm', NULL, 'active', '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(123, 'Jkshhj', 'Jkshhj', '01764645646', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2ovUKQgnW2DxAGMx3ZTcS.fOMTyRtS6VDEgVjVez0N2eeAWUSAwBy', NULL, 'active', '2025-03-17 14:30:15', '2025-03-17 14:30:15'),
(124, 'Kh', 'Kh', '01876069917', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3cdG6srQr4KEGhclzI6n3OONlnAjlqF128UtODKVguH5ZcVynKclm', NULL, 'active', '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(125, 'Nirob Hossain', 'Nirob Hossain', '01927776618', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fKkklmush7jjS4H8LMs07evJEKUqvtzkA6Fv.8TOHiqSOvhFuP2q.', NULL, 'active', '2025-03-21 09:56:55', '2025-03-21 09:56:55'),
(126, 'SHIHAB UDDIN', 'SHIHAB UDDIN', '01798774674', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HmstQ9/ywqLDJFWvhTAoo.zd.NGi7d42nqoNgbcU5LVivNouKfNpW', NULL, 'active', '2025-03-21 13:36:29', '2025-03-21 13:36:29'),
(127, 'SHIHAB UDDIN', 'SHIHAB UDDIN', '01777777777', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uZacODSl1cDDZWXLMYBdNOajGAHmsCiwN4/QzauRrEhMKZ8zqHtcK', NULL, 'active', '2025-03-21 13:37:39', '2025-03-21 13:37:39'),
(128, 'SHIHAB UDDIN', 'SHIHAB UDDIN', '01798774633', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Vhgjyl5hijdvWiOjAZVj0u75/0avZMO.sLSTcJv9n6HK5KmOsrWGG', NULL, 'active', '2025-03-21 13:47:02', '2025-03-21 13:47:02'),
(129, 'test', 'test', '01234567891', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$guEsXTsFME3ey887r.ob8OuY.9ccI1mFSrQbfUgk2befUKXK6T1ZO', NULL, 'active', '2025-04-04 06:06:21', '2025-04-04 06:06:21'),
(130, 'Md Abdul Rashid', 'Md Abdul Rashid', '01796825863', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HUvB0cIm2olPqXfMnglBZui7IQpQNAOd7QRwREXtAPCKkZL7q4kUK', NULL, 'active', '2025-04-05 07:04:10', '2025-04-05 07:04:10'),
(131, 'Nahidul Islam Sayel', 'Nahidul Islam Sayel', '01780782261', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iBOmlqal0i.Nb0UBCxNNgufprpl0tw.CB7wv/DINfgm2C1bfS8Ctm', NULL, 'active', '2025-04-05 17:21:25', '2025-04-05 17:21:25'),
(132, 'I\'m', 'I\'m', '01856954325', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$69flp5YwhIm8mVTdbD1xxecavVXskDH2.AXqiCuIjKQ3yYwe9aRmW', NULL, 'active', '2025-04-10 10:45:21', '2025-04-10 10:45:21'),
(133, 'fgfg', 'fgfg', '01946717236', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2EDi0QCmaEC6kCoA4vrI.us0SIB4HXihlRaMGiuDNDDPNnw5/wcr2', NULL, 'active', '2025-04-10 15:37:26', '2025-04-10 15:37:26'),
(134, 'SH Masum', 'SH Masum', '01407892308', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sOGdeCx.98eO1tQn1w0oS.uQl2e4uA55YVhTxKe2yezSAF7KevZsa', NULL, 'active', '2025-04-10 16:15:21', '2025-04-10 16:15:21'),
(135, 'naim', 'naim', '01983347499', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZsFBmhfWeDu.3NuNk3B9zeF9ye0PthOwHWuzi.WWP66c1t6e7rBai', NULL, 'active', '2025-04-12 13:08:28', '2025-04-12 13:08:28'),
(136, 'Demo', 'Demo', '01703061878', NULL, NULL, NULL, NULL, 1, '9556', 'public/uploads/default/user.png', '$2y$10$TzjNq3Vf93W65dhBCr5AIuDYA1Plit5vQDUpwtd5tqhdnsaoIvckS', NULL, 'active', '2025-04-14 05:46:23', '2025-04-15 16:29:55'),
(137, 'rtfr', 'rtfr', '01966721815', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zliS5aexacigZPsECK5Q.uG.MsO5j629faAU7ktMqOKI5vbUV4Uey', NULL, 'active', '2025-04-15 13:07:19', '2025-04-15 13:07:19'),
(138, 'Md Mosaidul Islam', 'Md Mosaidul Islam', '01989589675', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GpDs6mfrcxUQZDkl.ZdmbOj//Jt.RD1tCRcpt5WQLG1E43a.bj/Iy', NULL, 'active', '2025-04-16 05:41:43', '2025-04-16 05:41:43'),
(139, 'Bishal', 'Bishal', '01711576329', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RPmv7yQSG6YcBv9dE9uE1eXbI1Hgb5QjpBSONtjeKzHVqxTYfGSFq', NULL, 'active', '2025-04-16 19:00:23', '2025-04-16 19:00:23'),
(140, 'Md Abdur Rahman', 'Md Abdur Rahman', '01750784641', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$q6ovSR5./nKoOXLAoHJXkuMvwS/9OzrGaoHMDzF.CdACHMyLmIO0G', NULL, 'active', '2025-04-17 10:49:18', '2025-04-17 10:49:18'),
(141, 'GYJ', 'GYJ', '01478541223', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.GagAhIkqQx/.G5zRU3x/.J8j/4CTgI4utuTGSqLJQJd7QABE.dxu', NULL, 'active', '2025-04-18 19:02:33', '2025-04-18 19:02:33'),
(142, 'Jononi Madical Hall', 'Jononi Madical Hall', '01915711407', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vmej3YKd6fRUufv0GWonTeEOfU5P2j2Re5j3PFWFCrXlQf7vOiMYK', NULL, 'active', '2025-04-20 14:30:16', '2025-04-20 14:30:16'),
(143, 'Hedro', 'hedro-143', '01759685213', 'test@m.com', 'Narayanganj', 576, 't', 1, NULL, 'public/uploads/default/user.png', '$2y$10$7hNoKN52b7A0OPS3.Wp5LOSpW1cD9y47g7y8sURt8dO94/Sg7imr2', NULL, 'active', '2025-04-23 08:30:14', '2025-04-23 08:30:41'),
(144, 'Elius Ahmed', 'elius-ahmed-144', '01913760992', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EG6vLkyp/cUBSmiOJuzSF.4I6HqkZfcQPheFm6nGDdso3M29YSXKi', NULL, 'active', '2025-04-24 10:26:20', '2025-04-24 10:26:20'),
(145, 'dxdbgx', 'dxdbgx', '01912364597', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2AqJt2WRrOzGYbscsFL5huPZX.r2S0S0QDQRYSXPZ2oZOzCCMi0dy', NULL, 'active', '2025-04-24 13:01:11', '2025-04-24 13:01:11'),
(146, 'Lumen SoftTech Limited', 'Lumen SoftTech Limited', '01829317005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$A.zmPcOk6ZcRQoCVuvyJJO8cEyUCm2fZaYBhGfElR6Ohw5Fr151Xq', NULL, 'active', '2025-04-24 18:29:09', '2025-04-24 18:29:09'),
(147, 'Md Rakibul Islam', 'Md Rakibul Islam', '01614628005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gNXLC.HpXVKxopenBqFcJ.ZNuJZQj9Dt2IXfQJoe1SgTL4Lm4jiWK', NULL, 'active', '2025-04-25 13:10:55', '2025-04-25 13:10:55'),
(148, 'Redwan Ahmed', 'Redwan Ahmed', '01327949940', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MDFcu3H0du5KJyY8/yzyHuMybGLuuGDqhq/43vWidjIwLl1GJWfT2', NULL, 'active', '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(149, 'nobi', 'nobi', '01927548062', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XqbGJUvHu46wjYAUmHx2mO3Ir9sT.w1I7u9smFpmP.IZ6x./GO0Ku', NULL, 'active', '2025-04-28 19:51:42', '2025-04-28 19:51:42'),
(150, 'Bn', 'Bn', '01515698075', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$eWqco6xx9zEOk7EKOb3u7uzIZxsadrS4L.B01cAomIkU0fXXjPvem', NULL, 'active', '2025-04-30 17:28:00', '2025-04-30 17:28:00'),
(151, 'fhgfhgfhgfhg', 'fhgfhgfhgfhg', '01911212121', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.OnuA4ZYXgiRJOddJAcRsuOSwUUwIzveMm47U6frDIfwcaB8k0rOW', NULL, 'active', '2025-05-01 09:42:37', '2025-05-01 09:42:37'),
(152, 'vfdsv', 'vfdsv', '01312032403', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gBd0nPPAERGANlWRcLjoWOMCnUO7iUq9GyKHdOwE8K1yF5TWE7dmy', NULL, 'active', '2025-05-01 11:19:42', '2025-05-01 11:19:42'),
(153, 'Gg', 'Gg', '01999999999', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GmZqV3Mf9D5GiGODLYgBherecAuIXYgQVe7WXslYS6w3bVHtQUNQ2', NULL, 'active', '2025-05-03 11:56:22', '2025-05-03 11:56:22'),
(154, 'Gg', 'Gg', '011111111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$E7imJ9rHjL4DsDs8EPyB4.oRlUFEsykNN0zn.kEc5Tpe8DQOwwvPi', NULL, 'active', '2025-05-03 12:00:37', '2025-05-03 12:00:37'),
(155, 'rdf', 'rdf', '01234567895', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QLg/HAyLn5LVellsSkeczeecAlPvFsHkXwJlcS48tvlXYhDjVeWJq', NULL, 'active', '2025-05-03 13:17:27', '2025-05-03 13:17:27'),
(156, 'Moshiur Rahman Atik', 'Moshiur Rahman Atik', '01319483527', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$YFEiOVDt24EyIv1IRli6T.ATmcBoDPZ6S/uwKy3KT2leHePtIkROi', NULL, 'active', '2025-05-03 19:21:21', '2025-05-03 19:21:21'),
(157, 'Mamun', 'Mamun', '01967521023', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$R.rD5TFA5ecCAk.rBxBwgeXTQRmO47F2n7BDsZjxVldPX4jHO0TNq', NULL, 'active', '2025-05-04 10:24:45', '2025-05-04 10:24:45'),
(158, 'khjlh', 'khjlh', '01967521000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vcOl5aWEmdmTrgA1IiBfSOh6CtHVQhGRqM6auV/ZMdFdFYhTGhszu', NULL, 'active', '2025-05-07 09:59:11', '2025-05-07 09:59:11'),
(159, 'Hello', 'Hello', '01789088976', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vKcpds7wl1kSBLs8sEX2Luoq/Ytce5F3TFjZ.jsVLhUZ4Nmxo8lRK', NULL, 'active', '2025-05-07 15:56:33', '2025-05-07 15:56:33'),
(160, 'A', 'A', '01601021702', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$csKdv3l/KGL7YzK6L46cL.IW5Uxyv.1fokarMzTuqnZRcY9qZiJoO', NULL, 'active', '2025-05-07 16:01:25', '2025-05-07 16:01:25'),
(161, 'Hh', 'Hh', '01789089089', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bNLRETH0zyYs9MRenzax7O0DaK3CsBbdKvmvoblnTzcW5SpEhdN6O', NULL, 'active', '2025-05-08 03:19:02', '2025-05-08 03:19:02'),
(162, 'গজহ', 'গজহ', '01731058978', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yTtNcmYTd2xs4lbQNzq5juHVpY5AZUnYj8Sjq0j2s18sr9I/SPE2y', NULL, 'active', '2025-05-08 13:28:05', '2025-05-08 13:28:05'),
(163, 'Shahajalal Islam', 'Shahajalal Islam', '01774078179', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cA3mRzk7DuXo9IXwcOepkO.nF1RSHF5HGxeEvQS3DHTdz2GUYtJ42', NULL, 'active', '2025-05-08 13:53:33', '2025-05-08 13:53:33'),
(164, 'ফ্লঝলডড্র্রঝধ্বধ্ব', 'ফ্লঝলডড্র্রঝধ্বধ্ব', '02288798654', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LouUPJIiwU09R0uUeChY8eRSxr3ZlBq3U1H2myctnogmnO1e.AKYC', NULL, 'active', '2025-05-11 11:21:35', '2025-05-11 11:21:35'),
(165, 'SBSB', 'SBSB', '01798774675', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jntktgb4jyNuAr3uFVZc.ObfPEEEA3mMI5zq5BqU1CBhtoQjRO5N.', NULL, 'active', '2025-05-12 09:05:46', '2025-05-12 09:05:46'),
(166, 'Test', 'test-166', '01785643219', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tyejQe92B.jUkz5aM7SBEeBnENC55vPcptauPLJniZU.BnXze74ji', NULL, 'active', '2025-05-13 06:38:25', '2025-05-13 06:38:25'),
(167, 'Testvew', 'testvew-167', '01711223344', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bbGwp5MwMRMg8jRn6LZ5lO5BVX.8E5fRH.kubNXMuW/voRAMEe/xe', NULL, 'active', '2025-05-13 06:38:59', '2025-05-13 06:38:59'),
(168, 'test', 'test', '01672495122', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pLnCZ1vF/wdT.0Vdnsiqb.JvQrcK.ljtZYAfVdf9ENSDzzb3D07ba', NULL, 'active', '2025-05-13 19:25:03', '2025-05-13 19:25:03'),
(169, 'H', 'H', '01851848455', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NSDPu5D172fVZ1qDH7e7sebmSMm0h2AKMhjIjt.FstRCR1YQdqk5y', NULL, 'active', '2025-05-14 03:07:27', '2025-05-14 03:07:27'),
(170, 'MD SHAWAN', 'MD SHAWAN', '01511904438', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B6o.cPfKh3j0h.iYyfIAZeENMlul5uM18Fodn7h1TSPtcmuSPsrmC', NULL, 'active', '2025-05-15 12:57:04', '2025-05-15 12:57:04'),
(171, 'Ff', 'Ff', '01902380115', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$P87jvCyWYnirAYcF3fmJtuuDJbCyO3JzuPJzCtDx.4GzU8R0yirUO', NULL, 'active', '2025-05-16 12:14:41', '2025-05-16 12:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, '558876', 1, '2024-11-19 19:00:59', '2025-04-17 05:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hot_deal_end_date` date DEFAULT NULL,
  `flash_sale_end_date` date DEFAULT NULL,
  `top_headline` text DEFAULT NULL,
  `checkout_note` text DEFAULT NULL,
  `order_policy` text DEFAULT NULL,
  `show_all_products` int(11) NOT NULL DEFAULT 1,
  `show_category_wise_products` int(11) NOT NULL DEFAULT 1,
  `header_code` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_verification` longtext DEFAULT NULL,
  `google_verification` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `og_baner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `hot_deal_end_date`, `flash_sale_end_date`, `top_headline`, `checkout_note`, `order_policy`, `show_all_products`, `show_category_wise_products`, `header_code`, `status`, `created_at`, `updated_at`, `facebook_verification`, `google_verification`, `meta_description`, `meta_keyword`, `og_baner`) VALUES
(2, 'Gadget BD', 'public/uploads/settings/1740249454-footer.webp', 'public/uploads/settings/1740249787-logo.webp', 'public/uploads/settings/1740250724-fav.webp', NULL, '<b>sadf</b>', '2024-11-10', '2024-11-09', 'Gadget BD অনলাইন শপে আপনাকে স্বাগতম ||\r\nঅনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি\r\nঅর্ডার করতে অগ্রিম টাকা দিতে হবে না\r\nএ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট\r\n৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয়\r\nক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে\r\nধন্যবাদ', '<p class=\"text-danger\">                                বিঃদ্রঃ-  দয়া করে ১০০% নিশ্চিত হয়ে অর্ডার করবেন। ছবি এবং বর্ণনার সাথে পণ্যের মিল থাকা সত্যেও আপনি পণ্য গ্রহন করতে না চাইলে, কুরিয়ার চার্জ ১২০ টাকা কুরিয়ার ডেলিভারি ম্যানকে প্রদান করে পণ্য সাথে সাথে রিটার্ন করবেন। অযথা অর্ডার করা থেকে বিরত থাকুন, কারন আপনার মোবাইল নাম্বার, এড্রেস এবং ডিভাইস আইপি নাম্বার দেখা যায় ।\r\n</p><p class=\"text-danger\"><b>একই ডেলিভারি চার্জে আরো প্রোডাক্ট নিতে <a href=\"/shop\" style=\"color: blue\">ক্লিক করুন</a>\r\n                            </b></p>', '<div><b style=\"background-color: rgb(255, 255, 0);\">বিক্রিত পণ্য ফেরত নেয়া হয় না তবে নিন্ম লিখিত ক্ষেত্রে পণ্য সার্ভিসিং পন্য পরিবর্তন বা মুল্য ফেরত প্রযোজ্য।</b></div><ul><li>আপনার যত প্রশ্ন আছে তা বর্ননার সাথে মিলিয়ে অথবা আমাদের কাছ থেকে জেনে পন্য অর্ডার করুন।</li><li>ছবি এবং বর্ণনার সাথে পন্যের মিল থাকলে পণ্য ফেরত নেয়া হবে না ।</li><li>তবে আপনি চাইলে আপনার গ্রহন করা পন্যের সম মুল্যের বা বেশি মুল্যের পণ্য নিতে পারবেন (যে টাকা বেশি হবে তা প্রদান করতে হবে ) । কম মুল্যের পণ্য নেয়া যাবে না ।</li><li>পণ্য আনা নেয়ার খরচ আপনাকে দিতে হবে।</li><li>যে সকল পন্যে ওয়ারেন্টি আছে তার ওয়ারেন্টি সার্ভিস আমরা প্রদান করবো। তবে কিছু কিছু ক্ষেত্রে পন্যের ব্রান্ড আপনাকে সার্ভিস প্রদান করবে তবে সে ক্ষেত্রে আপনার নিকটস্থ সার্ভিস পয়েন্ট থেকে সার্ভিস নিতে পারবেন।</li><li>পণ্য সার্ভিস করতে যাওয়া আসা বা পাঠানো এবং রিটার্ন করার খরজ আপনাকে বহন করতে হবে।</li><li>১০০% নিশ্চিত হয়ে অর্ডার করুন, কোন কিছু জানার থাকলে কল করুন। Hotline :&nbsp;&nbsp;+8801849832178</li></ul>', 1, 1, NULL, 1, '2023-01-21 12:01:07', '2025-02-24 02:21:22', 'https://www.creativedesign.com.bd', 'https://www.creativedesign.com.bd', 'creativedesign', 'creativedesign', 'public/uploads/settings/1736426658-10ab4f104344643.5f662d7a20a4d.webp');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, 'W77DNQ3S', 1, '2024-11-09 09:19:36', '2024-11-10 14:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `amount`, `discount`, `shipping_charge`, `customer_id`, `admin_note`, `order_status`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(221, '66544', 1470, 0, 70, 106, NULL, 5, NULL, NULL, '2025-02-24 16:47:36', '2025-02-24 16:48:09'),
(222, '23671', 520, 0, 70, 106, NULL, 5, NULL, NULL, '2025-02-24 16:51:12', '2025-02-24 16:53:06'),
(223, '17270', 1100, 0, 0, 110, NULL, 5, NULL, NULL, '2025-02-24 16:57:32', '2025-02-24 16:58:41'),
(224, '67993', 1020, 0, 70, 106, NULL, 5, NULL, NULL, '2025-02-24 16:59:48', '2025-02-24 16:59:59'),
(225, '80780', 1470, 0, 70, 110, NULL, 5, NULL, NULL, '2025-02-24 17:19:54', '2025-02-25 15:44:37'),
(226, '59044', 950, 0, 0, 111, NULL, 9, NULL, NULL, '2025-02-24 17:22:23', '2025-03-11 07:18:00'),
(227, '68436', 1170, 0, 70, 112, NULL, 5, NULL, NULL, '2025-02-25 10:27:45', '2025-02-25 15:38:02'),
(230, '21948', 1970, 0, 70, 114, NULL, 1, NULL, NULL, '2025-02-26 16:00:06', '2025-02-26 16:00:06'),
(231, '76661', 2400, 0, 50, 114, NULL, 5, NULL, NULL, '2025-02-26 16:10:31', '2025-03-11 07:17:03'),
(232, '99201', 1620, 0, 120, 115, NULL, 5, NULL, NULL, '2025-02-28 13:10:20', '2025-03-11 07:13:28'),
(233, '95439', 1020, 0, 70, 116, NULL, 1, NULL, NULL, '2025-03-04 06:39:41', '2025-03-04 06:39:41'),
(234, '49608', 1620, 0, 120, 117, NULL, 1, NULL, NULL, '2025-03-06 06:54:50', '2025-03-06 06:54:50'),
(235, '84713', 1350, 0, 50, 117, NULL, 3, NULL, NULL, '2025-03-06 06:56:53', '2025-03-06 13:17:53'),
(236, '61794', 1170, 0, 70, 118, NULL, 1, NULL, NULL, '2025-03-10 08:28:05', '2025-03-10 08:28:05'),
(237, '74538', 1170, 0, 70, 119, NULL, 1, NULL, NULL, '2025-03-10 14:59:36', '2025-03-10 14:59:36'),
(238, '87378', 1150, 0, 50, 118, NULL, 1, NULL, NULL, '2025-03-10 22:42:24', '2025-03-10 22:42:24'),
(239, '17803', 1350, 0, 0, 118, NULL, 5, 1, NULL, '2025-03-10 22:46:09', '2025-03-13 04:40:19'),
(240, '59283', 2920, 0, 70, 122, NULL, 1, NULL, NULL, '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(241, '70985', 570, 0, 120, 122, NULL, 1, NULL, NULL, '2025-03-16 20:37:37', '2025-03-16 20:37:37'),
(242, '88108', 1470, 0, 70, 123, NULL, 1, NULL, NULL, '2025-03-17 14:30:15', '2025-03-17 14:30:15'),
(243, '77224', 6770, 0, 70, 124, NULL, 1, NULL, NULL, '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(244, '96114', 1300, 0, 0, 125, NULL, 1, NULL, NULL, '2025-03-21 09:56:55', '2025-03-21 09:56:55'),
(245, '29271', 1170, 0, 70, 126, NULL, 5, NULL, NULL, '2025-03-21 13:36:29', '2025-04-05 06:43:26'),
(246, '88259', 1470, 0, 70, 127, NULL, 5, NULL, NULL, '2025-03-21 13:37:39', '2025-03-23 07:15:38'),
(247, '34640', 1020, 0, 70, 128, NULL, 5, NULL, NULL, '2025-03-21 13:47:02', '2025-03-23 07:15:37'),
(248, '13074', 1470, 0, 70, 129, NULL, 5, NULL, NULL, '2025-04-04 06:06:21', '2025-04-04 09:21:00'),
(249, '11326', 1500, 0, 0, 129, NULL, 5, NULL, NULL, '2025-04-04 06:31:11', '2025-04-05 06:39:08'),
(250, '74587', 950, 0, 0, 129, NULL, 3, NULL, NULL, '2025-04-04 06:33:04', '2025-04-05 07:01:46'),
(251, '67437', 1100, 0, 0, 130, NULL, 2, NULL, NULL, '2025-04-05 07:04:10', '2025-04-05 07:04:44'),
(252, '95192', 1570, 0, 70, 131, NULL, 1, NULL, NULL, '2025-04-05 17:21:25', '2025-04-05 17:21:25'),
(253, '66423', 1520, 0, 120, 132, NULL, 1, NULL, NULL, '2025-04-10 10:45:21', '2025-04-10 10:45:21'),
(254, '25390', 4020, 0, 120, 133, NULL, 5, NULL, NULL, '2025-04-10 15:37:26', '2025-04-11 17:46:35'),
(255, '61083', 2120, 0, 70, 134, NULL, 5, NULL, NULL, '2025-04-10 16:15:21', '2025-04-11 17:46:35'),
(256, '75075', 1220, 0, 120, 135, NULL, 1, NULL, NULL, '2025-04-12 13:08:28', '2025-04-12 13:08:28'),
(257, '54833', 2670, 0, 70, 127, NULL, 1, NULL, NULL, '2025-04-12 23:19:36', '2025-04-12 23:19:36'),
(258, '84534', 1520, 0, 120, 136, NULL, 1, NULL, NULL, '2025-04-14 05:46:23', '2025-04-14 05:46:23'),
(259, '26934', 1170, 0, 70, 137, NULL, 1, NULL, NULL, '2025-04-15 13:07:19', '2025-04-15 13:07:19'),
(260, '33811', 1020, 0, 70, 137, NULL, 1, NULL, NULL, '2025-04-15 13:16:50', '2025-04-15 13:16:50'),
(261, '53803', 1570, 0, 70, 138, NULL, 5, NULL, NULL, '2025-04-16 05:41:43', '2025-04-17 05:48:05'),
(262, '56148', 1170, 0, 70, 139, NULL, 5, NULL, NULL, '2025-04-16 19:00:23', '2025-04-17 05:47:26'),
(263, '69116', 2270, 0, 70, 140, NULL, 1, NULL, NULL, '2025-04-17 10:49:18', '2025-04-17 10:49:18'),
(264, '78745', 2120, 0, 70, 141, NULL, 5, NULL, NULL, '2025-04-18 19:02:33', '2025-04-30 17:13:01'),
(265, '61554', 1170, 0, 70, 142, NULL, 5, NULL, NULL, '2025-04-20 14:30:19', '2025-04-30 16:52:16'),
(266, '18825', 2570, 0, 70, 137, NULL, 5, NULL, NULL, '2025-04-21 04:56:34', '2025-04-30 17:08:22'),
(267, '12543', 1170, 0, 70, 146, NULL, 5, NULL, NULL, '2025-04-24 18:29:09', '2025-04-30 17:07:37'),
(268, '93762', 1220, 0, 120, 147, NULL, 5, NULL, NULL, '2025-04-25 13:10:55', '2025-04-30 05:10:14'),
(269, '55150', 1020, 0, 70, 148, NULL, 5, NULL, NULL, '2025-04-25 13:11:13', '2025-04-30 16:46:41'),
(270, '56633', 1020, 0, 70, 148, NULL, 5, NULL, NULL, '2025-04-25 13:11:13', '2025-04-30 16:51:17'),
(271, '92315', 570, 0, 120, 149, NULL, 5, NULL, NULL, '2025-04-28 19:51:42', '2025-04-30 15:28:36'),
(272, '71359', 2120, 0, 70, 150, NULL, 1, NULL, NULL, '2025-04-30 17:28:00', '2025-04-30 17:28:00'),
(273, '61867', 1020, 0, 70, 151, NULL, 1, NULL, NULL, '2025-05-01 09:42:37', '2025-05-01 09:42:37'),
(274, '85937', 1170, 0, 70, 152, NULL, 1, NULL, NULL, '2025-05-01 11:19:42', '2025-05-01 11:19:42'),
(275, '17958', 1150, 20, 70, 149, NULL, 1, NULL, NULL, '2025-05-01 16:59:56', '2025-05-03 05:03:29'),
(276, '26211', 2120, 0, 70, 153, NULL, 1, NULL, NULL, '2025-05-03 11:56:22', '2025-05-03 11:56:22'),
(277, '45636', 1020, 0, 70, 154, NULL, 1, NULL, NULL, '2025-05-03 12:00:37', '2025-05-03 12:00:37'),
(278, '44672', 1170, 0, 70, 155, NULL, 1, NULL, NULL, '2025-05-03 13:17:27', '2025-05-03 13:17:27'),
(279, '13072', 1170, 0, 70, 156, NULL, 1, NULL, NULL, '2025-05-03 19:21:21', '2025-05-03 19:21:21'),
(280, '76409', 2120, 0, 70, 157, NULL, 1, NULL, NULL, '2025-05-04 10:24:45', '2025-05-04 10:24:45'),
(281, '42942', 1020, 0, 70, 158, NULL, 1, NULL, NULL, '2025-05-07 09:59:11', '2025-05-07 09:59:11'),
(282, '45488', 1420, 0, 120, 159, NULL, 1, NULL, NULL, '2025-05-07 15:56:33', '2025-05-07 15:56:33'),
(283, '67787', 2520, 0, 70, 160, NULL, 1, NULL, NULL, '2025-05-07 16:01:25', '2025-05-07 16:01:25'),
(284, '92906', 3020, 0, 120, 160, NULL, 1, NULL, NULL, '2025-05-07 17:06:23', '2025-05-07 17:06:23'),
(285, '20742', 1170, 0, 70, 161, NULL, 1, NULL, NULL, '2025-05-08 03:19:02', '2025-05-08 03:19:02'),
(286, '15290', 1370, 0, 70, 162, NULL, 1, NULL, NULL, '2025-05-08 13:28:05', '2025-05-08 13:28:05'),
(287, '14716', 1170, 0, 70, 163, NULL, 1, NULL, NULL, '2025-05-08 13:53:33', '2025-05-08 13:53:33'),
(288, '65821', 1570, 0, 70, 163, NULL, 1, NULL, NULL, '2025-05-08 15:07:31', '2025-05-08 15:07:31'),
(289, '76374', 1170, 0, 70, 164, NULL, 1, NULL, NULL, '2025-05-11 11:21:35', '2025-05-11 11:21:35'),
(290, '26170', 520, 0, 70, 165, NULL, 1, NULL, NULL, '2025-05-12 09:05:46', '2025-05-12 09:05:46'),
(291, '42904', 1020, 0, 70, 167, NULL, 1, NULL, NULL, '2025-05-13 06:39:38', '2025-05-13 06:39:38'),
(292, '29818', 1520, 0, 120, 122, NULL, 1, NULL, NULL, '2025-05-13 15:17:17', '2025-05-13 15:17:17'),
(293, '65361', 2320, 0, 120, 168, NULL, 1, NULL, NULL, '2025-05-13 19:25:03', '2025-05-13 19:25:03'),
(294, '25524', 1370, 0, 70, 169, NULL, 1, NULL, NULL, '2025-05-14 03:07:27', '2025-05-14 03:07:27'),
(295, '11304', 1570, 0, 70, 170, NULL, 1, NULL, NULL, '2025-05-15 12:57:04', '2025-05-15 12:57:04'),
(296, '50588', 1420, 0, 120, 171, NULL, 2, NULL, NULL, '2025-05-16 12:14:41', '2025-05-20 11:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `purchase_price`, `sale_price`, `product_discount`, `product_size`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(250, 221, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-02-24 16:47:36', '2025-02-24 16:47:36'),
(251, 222, 182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 250, 450, 0, NULL, NULL, 1, '2025-02-24 16:51:12', '2025-02-24 16:51:12'),
(252, 223, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-02-24 16:57:32', '2025-02-24 16:57:32'),
(253, 224, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-02-24 16:59:48', '2025-02-24 16:59:48'),
(254, 225, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-02-24 17:19:54', '2025-02-24 17:19:54'),
(255, 226, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-02-24 17:22:23', '2025-02-24 17:22:23'),
(256, 227, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-02-25 10:27:45', '2025-02-25 10:27:45'),
(261, 230, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-02-26 16:00:06', '2025-02-26 16:00:06'),
(262, 230, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-02-26 16:00:06', '2025-02-26 16:00:06'),
(263, 231, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-02-26 16:10:31', '2025-02-26 16:10:31'),
(264, 231, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-02-26 16:10:31', '2025-02-26 16:10:31'),
(265, 232, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-02-28 13:10:20', '2025-02-28 13:10:20'),
(266, 233, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-03-04 06:39:41', '2025-03-04 06:39:41'),
(267, 234, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-03-06 06:54:50', '2025-03-06 06:54:50'),
(268, 235, 183, 'Ugreen Tire Inflator Portable Air Compressor 150PSI Air Pump', 1000, 1300, 0, NULL, NULL, 1, '2025-03-06 06:56:53', '2025-03-06 06:56:53'),
(269, 236, 181, 'WiWU iTag WT-03 Easy to Find Card Tracker (Support Apple Find My Anti-lost)', 1000, 1100, 0, NULL, NULL, 1, '2025-03-10 08:28:05', '2025-03-10 08:28:05'),
(270, 237, 185, 'Joyroom JR-CL05 78W Multi 5 Ports Fast charging', 1000, 1100, 0, NULL, NULL, 1, '2025-03-10 14:59:36', '2025-03-10 14:59:36'),
(271, 238, 186, 'WiWU PC500 72W 2 Ports Black Car Charger (USB-C & USB-A)', 1000, 1100, 0, NULL, NULL, 1, '2025-03-10 22:42:24', '2025-03-10 22:42:24'),
(272, 239, 182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 250, 450, 0, NULL, NULL, 3, '2025-03-10 22:46:09', '2025-03-10 22:46:09'),
(273, 240, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(274, 240, 182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 250, 450, 0, NULL, NULL, 1, '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(275, 240, 184, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 1000, 1300, 0, NULL, NULL, 1, '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(276, 241, 182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 250, 450, 0, NULL, NULL, 1, '2025-03-16 20:37:37', '2025-03-16 20:37:37'),
(277, 242, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-03-17 14:30:15', '2025-03-17 14:30:15'),
(278, 243, 186, 'WiWU PC500 72W 2 Ports Black Car Charger (USB-C & USB-A)', 1000, 1100, 0, NULL, NULL, 1, '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(279, 243, 187, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 1000, 1500, 0, NULL, NULL, 1, '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(280, 243, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(281, 243, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(282, 243, 180, 'ARTIART Grace 470ml Stainless Steel Spill Proof Suction Mug with Flip Top Lid', 1000, 1500, 0, NULL, NULL, 1, '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(283, 244, 184, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 1000, 1300, 0, NULL, NULL, 1, '2025-03-21 09:56:55', '2025-03-21 09:56:55'),
(284, 245, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-03-21 13:36:29', '2025-03-21 13:36:29'),
(285, 246, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-03-21 13:37:39', '2025-03-21 13:37:39'),
(286, 247, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-03-21 13:47:02', '2025-03-21 13:47:02'),
(287, 248, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-04-04 06:06:21', '2025-04-04 06:06:21'),
(288, 249, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-04-04 06:31:11', '2025-04-04 06:31:11'),
(289, 250, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-04 06:33:04', '2025-04-04 06:33:04'),
(290, 251, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-05 07:04:10', '2025-04-05 07:04:10'),
(291, 252, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-04-05 17:21:25', '2025-04-05 17:21:25'),
(292, 253, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-04-10 10:45:21', '2025-04-10 10:45:21'),
(293, 254, 188, 'Joyroom Mount Jr-Zs288 Bike Phone Mount Quick Release Bicycle Handlebar Phone Holder for 4.7-7 inch Cell Phones – Black', 1000, 1300, 0, NULL, NULL, 3, '2025-04-10 15:37:26', '2025-04-10 15:37:26'),
(294, 255, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-10 16:15:21', '2025-04-10 16:15:21'),
(295, 255, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-10 16:15:21', '2025-04-10 16:15:21'),
(296, 256, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-12 13:08:28', '2025-04-12 13:08:28'),
(297, 257, 188, 'Joyroom Mount Jr-Zs288 Bike Phone Mount Quick Release Bicycle Handlebar Phone Holder for 4.7-7 inch Cell Phones – Black', 1000, 1300, 0, NULL, NULL, 2, '2025-04-12 23:19:36', '2025-04-12 23:19:36'),
(298, 258, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-04-14 05:46:23', '2025-04-14 05:46:23'),
(299, 259, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-15 13:07:19', '2025-04-15 13:07:19'),
(300, 260, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-15 13:16:50', '2025-04-15 13:16:50'),
(301, 261, 180, 'ARTIART Grace 470ml Stainless Steel Spill Proof Suction Mug with Flip Top Lid', 1000, 1500, 0, NULL, NULL, 1, '2025-04-16 05:41:43', '2025-04-16 05:41:43'),
(302, 262, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-16 19:00:23', '2025-04-16 19:00:23'),
(303, 263, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-04-17 10:49:18', '2025-04-17 10:49:18'),
(304, 263, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-17 10:49:18', '2025-04-17 10:49:18'),
(305, 264, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-18 19:02:33', '2025-04-18 19:02:33'),
(306, 264, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-04-18 19:02:33', '2025-04-18 19:02:33'),
(307, 265, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-20 14:30:20', '2025-04-20 14:30:20'),
(308, 266, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-21 04:56:34', '2025-04-21 04:56:34'),
(309, 266, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-04-21 04:56:34', '2025-04-21 04:56:34'),
(310, 267, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-24 18:29:09', '2025-04-24 18:29:09'),
(311, 268, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-04-25 13:10:55', '2025-04-25 13:10:55'),
(312, 269, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(313, 270, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(314, 271, 182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 250, 450, 0, NULL, NULL, 1, '2025-04-28 19:51:42', '2025-04-28 19:51:42'),
(315, 272, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-04-30 17:28:00', '2025-04-30 17:28:00'),
(316, 272, 186, 'WiWU PC500 72W 2 Ports Black Car Charger (USB-C & USB-A)', 1000, 1100, 0, NULL, NULL, 1, '2025-04-30 17:28:00', '2025-04-30 17:28:00'),
(317, 273, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-01 09:42:37', '2025-05-01 09:42:37'),
(318, 274, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-05-01 11:19:42', '2025-05-01 11:19:42'),
(319, 275, 181, 'WiWU iTag WT-03 Easy to Find Card Tracker (Support Apple Find My Anti-lost)', 1000, 1100, 0, NULL, NULL, 1, '2025-05-01 16:59:56', '2025-05-01 16:59:56'),
(320, 275, 181, 'WiWU iTag WT-03 Easy to Find Card Tracker (Support Apple Find My Anti-lost)', 1000, 1100, 20, NULL, NULL, 1, '2025-05-03 05:03:11', '2025-05-03 05:03:11'),
(321, 276, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-03 11:56:22', '2025-05-03 11:56:22'),
(322, 276, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-05-03 11:56:22', '2025-05-03 11:56:22'),
(323, 277, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-03 12:00:37', '2025-05-03 12:00:37'),
(324, 278, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-05-03 13:17:27', '2025-05-03 13:17:27'),
(325, 279, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-05-03 19:21:21', '2025-05-03 19:21:21'),
(326, 280, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-04 10:24:45', '2025-05-04 10:24:45'),
(327, 280, 185, 'Joyroom JR-CL05 78W Multi 5 Ports Fast charging', 1000, 1100, 0, NULL, NULL, 1, '2025-05-04 10:24:45', '2025-05-04 10:24:45'),
(328, 281, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-07 09:59:11', '2025-05-07 09:59:11'),
(329, 282, 188, 'Joyroom Mount Jr-Zs288 Bike Phone Mount Quick Release Bicycle Handlebar Phone Holder for 4.7-7 inch Cell Phones – Black', 1000, 1300, 0, NULL, NULL, 1, '2025-05-07 15:56:33', '2025-05-07 15:56:33'),
(330, 283, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-07 16:01:25', '2025-05-07 16:01:25'),
(331, 283, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-05-07 16:01:25', '2025-05-07 16:01:25'),
(332, 284, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-05-07 17:06:23', '2025-05-07 17:06:23'),
(333, 284, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-05-07 17:06:23', '2025-05-07 17:06:23'),
(334, 285, 190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 1000, 1100, 0, NULL, NULL, 1, '2025-05-08 03:19:02', '2025-05-08 03:19:02'),
(335, 286, 183, 'Ugreen Tire Inflator Portable Air Compressor 150PSI Air Pump', 1000, 1300, 0, NULL, NULL, 1, '2025-05-08 13:28:05', '2025-05-08 13:28:05'),
(336, 287, 186, 'WiWU PC500 72W 2 Ports Black Car Charger (USB-C & USB-A)', 1000, 1100, 0, NULL, NULL, 1, '2025-05-08 13:53:33', '2025-05-08 13:53:33'),
(337, 288, 193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 1000, 1500, 0, NULL, NULL, 1, '2025-05-08 15:07:31', '2025-05-08 15:07:31'),
(338, 289, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 1, '2025-05-11 11:21:35', '2025-05-11 11:21:35'),
(339, 290, 182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 250, 450, 0, NULL, NULL, 1, '2025-05-12 09:05:46', '2025-05-12 09:05:46'),
(340, 291, 179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 1000, 950, 0, NULL, NULL, 1, '2025-05-13 06:39:38', '2025-05-13 06:39:38'),
(341, 292, 192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', 1000, 1400, 0, NULL, NULL, 1, '2025-05-13 15:17:17', '2025-05-13 15:17:17'),
(342, 293, 191, 'HP M10 Wired Mouse - Mouse', 1000, 1100, 0, NULL, NULL, 2, '2025-05-13 19:25:03', '2025-05-13 19:25:03'),
(343, 294, 188, 'Joyroom Mount Jr-Zs288 Bike Phone Mount Quick Release Bicycle Handlebar Phone Holder for 4.7-7 inch Cell Phones – Black', 1000, 1300, 0, NULL, NULL, 1, '2025-05-14 03:07:27', '2025-05-14 03:07:27'),
(344, 295, 187, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 1000, 1500, 0, NULL, NULL, 1, '2025-05-15 12:57:04', '2025-05-15 12:57:04'),
(345, 296, 184, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 1000, 1300, 0, NULL, NULL, 1, '2025-05-16 12:14:41', '2025-05-16 12:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(5, 'In Courier', 'in-courier', '1', '2023-08-15 11:31:56', '2023-08-21 05:45:54'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(8, 'Unpaid', 'unpaid', '1', '2024-07-06 17:47:36', '2024-07-06 17:47:36'),
(9, 'comfrom', 'comfrom', '1', '2024-11-30 19:29:59', '2024-11-30 19:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(76, 76, 23, 1070, NULL, NULL, 'Cash On Delivery', 'pending', '2024-11-09 06:15:34', '2024-11-09 06:15:34'),
(221, 221, 106, 1470, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-24 16:47:36', '2025-02-24 16:47:36'),
(222, 222, 106, 520, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-24 16:51:12', '2025-02-24 16:51:12'),
(223, 223, 110, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-24 16:57:32', '2025-02-24 16:57:32'),
(224, 224, 106, 1020, NULL, NULL, NULL, 'pending', '2025-02-24 16:59:48', '2025-02-24 16:59:48'),
(225, 225, 110, 1470, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-24 17:19:54', '2025-02-24 17:19:54'),
(226, 226, 111, 1020, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-24 17:22:23', '2025-02-24 17:22:23'),
(227, 227, 112, 1170, NULL, NULL, 'bkash', 'pending', '2025-02-25 10:27:45', '2025-02-25 10:27:45'),
(230, 230, 114, 1970, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-26 16:00:06', '2025-02-26 16:00:06'),
(231, 231, 114, 2400, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-26 16:10:31', '2025-02-26 16:10:31'),
(232, 232, 115, 1620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-02-28 13:10:20', '2025-02-28 13:10:20'),
(233, 233, 116, 1020, NULL, NULL, 'bkash', 'pending', '2025-03-04 06:39:41', '2025-03-04 06:39:41'),
(234, 234, 117, 1620, NULL, NULL, 'bkash', 'pending', '2025-03-06 06:54:50', '2025-03-06 06:54:50'),
(235, 235, 117, 1370, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-06 06:56:53', '2025-03-06 06:56:53'),
(236, 236, 118, 1170, NULL, NULL, 'bkash', 'pending', '2025-03-10 08:28:05', '2025-03-10 08:28:05'),
(237, 237, 119, 1170, NULL, NULL, 'bkash', 'pending', '2025-03-10 14:59:36', '2025-03-10 14:59:36'),
(238, 238, 118, 1150, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-10 22:42:24', '2025-03-10 22:42:24'),
(239, 239, 118, 1350, NULL, NULL, 'bkash', 'pending', '2025-03-10 22:46:09', '2025-03-10 22:46:09'),
(240, 240, 122, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(241, 241, 122, 570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-16 20:37:37', '2025-03-16 20:37:37'),
(242, 242, 123, 1470, NULL, NULL, 'bkash', 'pending', '2025-03-17 14:30:15', '2025-03-17 14:30:15'),
(243, 243, 124, 6770, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(244, 244, 125, 1300, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-21 09:56:55', '2025-03-21 09:56:55'),
(245, 245, 126, 1170, NULL, NULL, 'bkash', 'pending', '2025-03-21 13:36:29', '2025-03-21 13:36:29'),
(246, 246, 127, 1470, NULL, NULL, 'Cash On Delivery', 'pending', '2025-03-21 13:37:39', '2025-03-21 13:37:39'),
(247, 247, 128, 1020, NULL, NULL, NULL, 'pending', '2025-03-21 13:47:02', '2025-03-21 13:47:02'),
(248, 248, 129, 1470, NULL, NULL, 'bkash', 'pending', '2025-04-04 06:06:21', '2025-04-04 06:06:21'),
(249, 249, 129, 1620, NULL, NULL, 'bkash', 'pending', '2025-04-04 06:31:11', '2025-04-04 06:31:11'),
(250, 250, 129, 1070, NULL, NULL, 'bkash', 'pending', '2025-04-04 06:33:04', '2025-04-04 06:33:04'),
(251, 251, 130, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-05 07:04:10', '2025-04-05 07:04:10'),
(252, 252, 131, 1570, NULL, NULL, 'bkash', 'pending', '2025-04-05 17:21:25', '2025-04-05 17:21:25'),
(253, 253, 132, 1520, NULL, NULL, 'bkash', 'pending', '2025-04-10 10:45:21', '2025-04-10 10:45:21'),
(254, 254, 133, 4020, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-10 15:37:26', '2025-04-10 15:37:26'),
(255, 255, 134, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-10 16:15:21', '2025-04-10 16:15:21'),
(256, 256, 135, 1220, NULL, NULL, 'bkash', 'pending', '2025-04-12 13:08:28', '2025-04-12 13:08:28'),
(257, 257, 127, 2670, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-12 23:19:36', '2025-04-12 23:19:36'),
(258, 258, 136, 1520, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-14 05:46:23', '2025-04-14 05:46:23'),
(259, 259, 137, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-15 13:07:19', '2025-04-15 13:07:19'),
(260, 260, 137, 1020, NULL, NULL, NULL, 'pending', '2025-04-15 13:16:50', '2025-04-15 13:16:50'),
(261, 261, 138, 1570, NULL, NULL, 'bkash', 'pending', '2025-04-16 05:41:43', '2025-04-16 05:41:43'),
(262, 262, 139, 1170, NULL, NULL, 'bkash', 'pending', '2025-04-16 19:00:23', '2025-04-16 19:00:23'),
(263, 263, 140, 2270, NULL, NULL, 'bkash', 'pending', '2025-04-17 10:49:18', '2025-04-17 10:49:18'),
(264, 264, 141, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-18 19:02:33', '2025-04-18 19:02:33'),
(265, 265, 142, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-20 14:30:19', '2025-04-20 14:30:19'),
(266, 266, 137, 2570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-21 04:56:34', '2025-04-21 04:56:34'),
(267, 267, 146, 1170, NULL, NULL, 'bkash', 'pending', '2025-04-24 18:29:09', '2025-04-24 18:29:09'),
(268, 268, 147, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-25 13:10:55', '2025-04-25 13:10:55'),
(269, 269, 148, 1020, NULL, NULL, NULL, 'pending', '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(270, 270, 148, 1020, NULL, NULL, NULL, 'pending', '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(271, 271, 149, 570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-28 19:51:42', '2025-04-30 05:09:32'),
(272, 272, 150, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-30 17:28:00', '2025-04-30 17:28:00'),
(273, 273, 151, 1020, NULL, NULL, NULL, 'pending', '2025-05-01 09:42:37', '2025-05-01 09:42:37'),
(274, 274, 152, 1170, NULL, NULL, 'bkash', 'pending', '2025-05-01 11:19:42', '2025-05-01 11:19:42'),
(275, 275, 149, 1150, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-01 16:59:56', '2025-05-03 05:03:29'),
(276, 276, 153, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-03 11:56:22', '2025-05-03 11:56:22'),
(277, 277, 154, 1020, NULL, NULL, NULL, 'pending', '2025-05-03 12:00:37', '2025-05-03 12:00:37'),
(278, 278, 155, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-03 13:17:27', '2025-05-03 13:17:27'),
(279, 279, 156, 1170, NULL, NULL, 'bkash', 'pending', '2025-05-03 19:21:21', '2025-05-03 19:21:21'),
(280, 280, 157, 2120, NULL, NULL, 'bkash', 'pending', '2025-05-04 10:24:45', '2025-05-04 10:24:45'),
(281, 281, 158, 1020, NULL, NULL, NULL, 'pending', '2025-05-07 09:59:11', '2025-05-07 09:59:11'),
(282, 282, 159, 1420, NULL, NULL, 'bkash', 'pending', '2025-05-07 15:56:33', '2025-05-07 15:56:33'),
(283, 283, 160, 2520, NULL, NULL, 'bkash', 'pending', '2025-05-07 16:01:25', '2025-05-07 16:01:25'),
(284, 284, 160, 3020, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-07 17:06:23', '2025-05-07 17:06:23'),
(285, 285, 161, 1170, NULL, NULL, 'bkash', 'pending', '2025-05-08 03:19:02', '2025-05-08 03:19:02'),
(286, 286, 162, 1370, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-08 13:28:05', '2025-05-08 13:28:05'),
(287, 287, 163, 1170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-08 13:53:33', '2025-05-08 13:53:33'),
(288, 288, 163, 1570, NULL, NULL, 'bkash', 'pending', '2025-05-08 15:07:31', '2025-05-08 15:07:31'),
(289, 289, 164, 1170, NULL, NULL, 'bkash', 'pending', '2025-05-11 11:21:35', '2025-05-11 11:21:35'),
(290, 290, 165, 520, NULL, NULL, 'bkash', 'pending', '2025-05-12 09:05:46', '2025-05-12 09:05:46'),
(291, 291, 167, 1020, NULL, NULL, 'bkash', 'pending', '2025-05-13 06:39:38', '2025-05-13 06:39:38'),
(292, 292, 122, 1520, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-13 15:17:17', '2025-05-13 15:17:17'),
(293, 293, 168, 2320, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-13 19:25:03', '2025-05-13 19:25:03'),
(294, 294, 169, 1370, NULL, NULL, 'bkash', 'pending', '2025-05-14 03:07:27', '2025-05-14 03:07:27'),
(295, 295, 170, 1570, NULL, NULL, 'bkash', 'pending', '2025-05-15 12:57:04', '2025-05-15 12:57:04'),
(296, 296, 171, 1370, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-16 12:14:41', '2025-05-16 12:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', '4f6o0cjiki2rfm34kfdadl1eqq', '2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b', 'sandboxTokenizedUser02', 'sandboxTokenizedUser02@12345', 'https://tokenized.sandbox.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 1, '2024-02-06 11:29:46', '2024-02-08 09:24:22'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://ecom.websolutionit.com/payment-success', 'https://ecom1.joss.com.bd/', 'NOK', 0, '2024-02-06 11:29:46', '2025-02-23 07:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'web', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'web', NULL, NULL),
(10, 'permission-create', 'web', NULL, NULL),
(11, 'setting-delete', 'web', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'web', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'web', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'web', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'web', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'web', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'web', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'web', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'web', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'web', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'web', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'web', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'web', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'web', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'web', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'web', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'web', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'web', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'web', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'web', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'web', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'web', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'web', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'web', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'web', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'web', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'web', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'web', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'web', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'web', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'web', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'web', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'web', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'web', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'web', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'web', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'web', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'web', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'web', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'web', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'web', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'web', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'web', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'web', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'web', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'web', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'web', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'web', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'web', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'web', '2024-01-31 10:52:00', '2024-01-31 10:52:00');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 117, 32, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(11, 117, 35, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(12, 117, 39, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(13, 1, 36, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(14, 132, 32, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(15, 132, 36, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(16, 133, 36, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(17, 133, 49, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(18, 130, 35, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(19, 130, 36, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(20, 130, 39, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(21, 130, 48, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(22, 135, 35, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(23, 135, 36, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(24, 135, 39, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(25, 137, 35, '2024-11-08 14:54:47', '2024-11-08 14:54:47'),
(26, 139, 62, '2024-11-08 15:09:17', '2024-11-08 15:09:17'),
(27, 150, 62, '2024-11-08 16:59:22', '2024-11-08 16:59:22'),
(28, 156, 35, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(29, 156, 39, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(30, 155, 35, '2024-12-02 15:11:23', '2024-12-02 15:11:23'),
(31, 157, 40, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(32, 157, 44, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(33, 157, 51, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(34, 157, 62, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(35, 158, 36, '2024-12-05 15:43:20', '2024-12-05 15:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(224, 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 159, '2025-01-10 04:06:35', '2025-01-10 04:06:35'),
(225, 'public/uploads/product/1736431699-2024-07-16-6696741839d29.jpg', 160, '2025-01-10 04:08:19', '2025-01-10 04:08:19'),
(226, 'public/uploads/product/1736431804-2024-07-16-66966f64be627.jpg', 161, '2025-01-10 04:10:04', '2025-01-10 04:10:04'),
(227, 'public/uploads/product/1736431896-2024-07-16-66966ee025159.jpg', 162, '2025-01-10 04:11:36', '2025-01-10 04:11:36'),
(228, 'public/uploads/product/1736432082-2024-07-15-6695b4dbdaf63.webp', 163, '2025-01-10 04:14:42', '2025-01-10 04:14:42'),
(229, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 164, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(230, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 165, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(232, 'public/uploads/product/1736437796-malai-400.webp', 167, '2025-01-10 05:49:56', '2025-01-10 05:49:56'),
(233, 'public/uploads/product/1736438047-ghee-175gm.webp', 168, '2025-01-10 05:54:07', '2025-01-10 05:54:07'),
(234, 'public/uploads/product/1736438310-peanut-butter-1.webp', 169, '2025-01-10 05:58:30', '2025-01-10 05:58:30'),
(235, 'public/uploads/product/1736438385-signatute-ghee.webp', 170, '2025-01-10 05:59:45', '2025-01-10 05:59:45'),
(236, 'public/uploads/product/1736438461-signatute-lacsa-semai.webp', 171, '2025-01-10 06:01:01', '2025-01-10 06:01:01'),
(237, 'public/uploads/product/1736438635-almond.webp', 172, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(238, 'public/uploads/product/1736438635-almond.webp', 173, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(239, 'public/uploads/product/1736438717-mariyamdates.webp', 174, '2025-01-10 06:05:17', '2025-01-10 06:05:17'),
(242, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 177, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(243, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 178, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(244, 'public/uploads/product/1737380440-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp', 176, '2025-01-20 13:40:40', '2025-01-20 13:40:40'),
(245, 'public/uploads/product/1737380453-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp', 175, '2025-01-20 13:40:53', '2025-01-20 13:40:53'),
(246, 'public/uploads/product/1737380495-ghee-500gm.webp', 166, '2025-01-20 13:41:35', '2025-01-20 13:41:35'),
(247, 'public/uploads/product/1740309363-smiling-shark-sd1023-led-multifunctional-flashlight-1.webp', 179, '2025-02-24 01:16:03', '2025-02-24 01:16:03'),
(248, 'public/uploads/product/1740309363-smiling-shark-sd1023-led-multifunctional-flashlight-1.webp', 179, '2025-02-24 01:16:03', '2025-02-24 01:16:03'),
(249, 'public/uploads/product/1740309363-smiling-shark-sd1023-led-multifunctional-flashlight-1.webp', 179, '2025-02-24 01:16:03', '2025-02-24 01:16:03'),
(250, 'public/uploads/product/1740309468-t.webp', 180, '2025-02-24 01:17:48', '2025-02-24 01:17:48'),
(251, 'public/uploads/product/1740309468-t.webp', 180, '2025-02-24 01:17:48', '2025-02-24 01:17:48'),
(252, 'public/uploads/product/1740309468-t.webp', 180, '2025-02-24 01:17:48', '2025-02-24 01:17:48'),
(253, 'public/uploads/product/1740309566-wiwu-itag-wt-03-easy-to-find-card-tracker-support-apple-find-my-anti-lost-1.webp', 181, '2025-02-24 01:19:26', '2025-02-24 01:19:26'),
(254, 'public/uploads/product/1740309566-wiwu-itag-wt-03-easy-to-find-card-tracker-support-apple-find-my-anti-lost-1.webp', 181, '2025-02-24 01:19:26', '2025-02-24 01:19:26'),
(255, 'public/uploads/product/1740309566-wiwu-itag-wt-03-easy-to-find-card-tracker-support-apple-find-my-anti-lost-1.webp', 181, '2025-02-24 01:19:26', '2025-02-24 01:19:26'),
(256, 'public/uploads/product/1740309687-proove-mr-cleaner-20-in-1-multifunctional-cleaning-kit-1.webp', 182, '2025-02-24 01:21:27', '2025-02-24 01:21:27'),
(257, 'public/uploads/product/1740309687-proove-mr-cleaner-20-in-1-multifunctional-cleaning-kit-1.webp', 182, '2025-02-24 01:21:27', '2025-02-24 01:21:27'),
(258, 'public/uploads/product/1740309687-proove-mr-cleaner-20-in-1-multifunctional-cleaning-kit-1.webp', 182, '2025-02-24 01:21:27', '2025-02-24 01:21:27'),
(259, 'public/uploads/product/1740309765-ugreen-tire-inflator-portable-ai.webp', 183, '2025-02-24 01:22:45', '2025-02-24 01:22:45'),
(260, 'public/uploads/product/1740309765-ugreen-tire-inflator-portable-ai.webp', 183, '2025-02-24 01:22:45', '2025-02-24 01:22:45'),
(261, 'public/uploads/product/1740309765-ugreen-tire-inflator-portable-ai.webp', 183, '2025-02-24 01:22:45', '2025-02-24 01:22:45'),
(262, 'public/uploads/product/1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 184, '2025-02-24 01:26:00', '2025-02-24 01:26:00'),
(263, 'public/uploads/product/1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 184, '2025-02-24 01:26:00', '2025-02-24 01:26:00'),
(264, 'public/uploads/product/1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 184, '2025-02-24 01:26:00', '2025-02-24 01:26:00'),
(265, 'public/uploads/product/1740310058-cl05.webp', 185, '2025-02-24 01:27:38', '2025-02-24 01:27:38'),
(266, 'public/uploads/product/1740310058-cl05.webp', 185, '2025-02-24 01:27:38', '2025-02-24 01:27:38'),
(267, 'public/uploads/product/1740310058-cl05.webp', 185, '2025-02-24 01:27:38', '2025-02-24 01:27:38'),
(268, 'public/uploads/product/1740310156-ad96268653bbd73a6b2f81a187332488.jpg_750x750.jpg_.webp', 186, '2025-02-24 01:29:16', '2025-02-24 01:29:16'),
(269, 'public/uploads/product/1740310156-ad96268653bbd73a6b2f81a187332488.jpg_750x750.jpg_.webp', 186, '2025-02-24 01:29:16', '2025-02-24 01:29:16'),
(270, 'public/uploads/product/1740310156-ad96268653bbd73a6b2f81a187332488.jpg_750x750.jpg_.webp', 186, '2025-02-24 01:29:16', '2025-02-24 01:29:16'),
(271, 'public/uploads/product/1740310249-80910-ugreen-ge.webp', 187, '2025-02-24 01:30:49', '2025-02-24 01:30:49'),
(272, 'public/uploads/product/1740310249-80910-ugreen-ge.webp', 187, '2025-02-24 01:30:49', '2025-02-24 01:30:49'),
(273, 'public/uploads/product/1740310249-80910-ugreen-ge.webp', 187, '2025-02-24 01:30:49', '2025-02-24 01:30:49'),
(274, 'public/uploads/product/1740310474-jr-zs288.jpg', 188, '2025-02-24 01:34:34', '2025-02-24 01:34:34'),
(275, 'public/uploads/product/1740311616-giant_257916.jpg', 189, '2025-02-24 01:53:36', '2025-02-24 01:53:36'),
(276, 'public/uploads/product/1740311616-images-(1).jpeg', 189, '2025-02-24 01:53:36', '2025-02-24 01:53:36'),
(277, 'public/uploads/product/1740311616-images.jpeg', 189, '2025-02-24 01:53:36', '2025-02-24 01:53:36'),
(278, 'public/uploads/product/1740311711-44b94e1a2d66e772134b5dcf93e370d2.jpg', 190, '2025-02-24 01:55:11', '2025-02-24 01:55:11'),
(279, 'public/uploads/product/1740311711-44b94e1a2d66e772134b5dcf93e370d2.jpg', 190, '2025-02-24 01:55:11', '2025-02-24 01:55:11'),
(280, 'public/uploads/product/1740311711-44b94e1a2d66e772134b5dcf93e370d2.jpg', 190, '2025-02-24 01:55:11', '2025-02-24 01:55:11'),
(281, 'public/uploads/product/1740311795-hp_m10_wired_mouse_black-hp-38572-375089.png', 191, '2025-02-24 01:56:35', '2025-02-24 01:56:35'),
(282, 'public/uploads/product/1740311795-hp_m10_wired_mouse_black-hp-38572-375089.png', 191, '2025-02-24 01:56:35', '2025-02-24 01:56:35'),
(283, 'public/uploads/product/1740311795-hp_m10_wired_mouse_black-hp-38572-375089.png', 191, '2025-02-24 01:56:35', '2025-02-24 01:56:35'),
(284, 'public/uploads/product/1740311935-dc97e4b11648ae3ff15a247f59dc9694.jpg', 192, '2025-02-24 01:58:55', '2025-02-24 01:58:55'),
(285, 'public/uploads/product/1740311935-images-(1).jpeg', 192, '2025-02-24 01:58:55', '2025-02-24 01:58:55'),
(286, 'public/uploads/product/1740311935-giant_257916.jpg', 192, '2025-02-24 01:58:55', '2025-02-24 01:58:55'),
(287, 'public/uploads/product/1740311935-hp_m10_wired_mouse_black-hp-38572-375089.png', 192, '2025-02-24 01:58:55', '2025-02-24 01:58:55'),
(288, 'public/uploads/product/1740312057-b5a9b2b56e61cee18211068aeec6e4af.jpg_720x720q80.jpg', 193, '2025-02-24 02:00:57', '2025-02-24 02:00:57'),
(289, 'public/uploads/product/1740312057-44b94e1a2d66e772134b5dcf93e370d2.jpg', 193, '2025-02-24 02:00:57', '2025-02-24 02:00:57'),
(290, 'public/uploads/product/1740312057-images-(1).jpeg', 193, '2025-02-24 02:00:57', '2025-02-24 02:00:57'),
(291, 'public/uploads/product/1740312057-hp_m10_wired_mouse_black-hp-38572-375089.png', 193, '2025-02-24 02:00:57', '2025-02-24 02:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `flashsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `sold` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(179, 'Smiling Shark Light SD1023 LED Multifunctional Flashlight with Hook', 'smiling-shark-light-sd1023-led-multifunctional-flashlight-with-hook-1', 19, 60, 0, NULL, 'P0001', 1000, 1200, 950, 10000, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Designed with versatility in mind, the SD1023 flashlight also doubles as a lantern, making it perfect for a wide range of activities. The built-in hook allows for easy hanging, enabling you to use it hands-free while you work or relax. Its compact and lightweight design ensures portability, making it a must-have companion for camping trips, hiking adventures, and everyday carry.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The Smiling Shark Light SD1023 is equipped with a rechargeable lithium-ion battery, offering long runtimes to keep you illuminated when you need it most. Charging is convenient with the included USB charging cable, and the flashlight is designed with durability in mind, featuring water-resistant construction to withstand splashes and light rain.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Whether you’re navigating through dark trails, working on home repairs, or preparing for unexpected power outages, the SD1023 flashlight is engineered to provide reliable performance and peace of mind. Its modern design and practical features make it suitable for both outdoor enthusiasts and everyday users alike. Illuminate your world with the Smiling Shark Light SD1023 LED Multifunctional Flashlight—your go-to tool for all lighting requirements in Bangladesh. Experience the perfect blend of functionality, durability, and convenience with this essential flashlight.</p>', NULL, 1, 1, 0, NULL, 1, NULL, 'Designed with versatility in mind, the SD1023 flashlight also doubles as a lantern, making it perfect for a wide range of activities. The built-in hook allows for easy hanging, enabling you to use it hands-free while you work or relax. Its compact and lightweight design ensures portability, making it a must-have companion for camping trips, hiking adventures, and everyday carry.', '2025-02-24 01:16:03', '2025-05-16 17:39:09'),
(180, 'ARTIART Grace 470ml Stainless Steel Spill Proof Suction Mug with Flip Top Lid', 'artiart-grace-470ml-stainless-steel-spill-proof-suction-mug-with-flip-top-lid-180', 19, 62, 0, NULL, 'P0180', 1000, 2000, 1500, 100000, NULL, NULL, '<h1 class=\"product_title entry-title wd-entities-title\" style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb, 20px); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: var(--wd-entities-title-font-weight); font-stretch: inherit; line-height: 1.2; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 34px; display: var(--page-title-display); overflow-wrap: break-word; --page-title-display: block; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">ARTIART Grace 470ml Stainless Steel Spill Proof Suction Mug with Flip Top Lid</h1><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb, 20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">The&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ARTIART Grace 470ml Stainless Steel Spill-Proof Suction Mug</span>&nbsp;is designed to provide ultimate convenience and durability for those on the go. Whether you’re commuting, working, or enjoying outdoor activities, this mug ensures your beverages stay secure, hot, or cold for hours. With its&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">double-wall insulation</span>, the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Grace Mug</span>&nbsp;retains your drink’s temperature, keeping it warm for up to several hours or cold for longer periods.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb, 20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">One of the standout features of this mug is its&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">spill-proof suction technology</span>. The patented design prevents any accidental tipping, making it perfect for travel, office desks, or car use. The&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">flip-top lid</span>&nbsp;allows easy access to your drink, while the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">anti-slip base</span>&nbsp;ensures the mug remains firmly in place, even on uneven surfaces.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb, 20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Features:</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Capacity: 470ml</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material: Stainless steel body with BPA-free plastic lid</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Spill-Proof Design: Patented suction technology prevents tipping</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Lid Type: Flip-top lid for easy access</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Insulation: Double-wall insulation keeps beverages hot or cold for hours</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Grip: Anti-slip base for stability</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Portability: Lightweight and travel-friendly</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Durability: Scratch-resistant and sturdy construction</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning: Easy to clean with a detachable lid</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Usage: Suitable for home, office, travel, and outdoor activities</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Compatibility: Fits most car cup holders</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb, 20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specifications:</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Model: ARTIART Grace 470ml Suction Mug</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Capacity: 470ml</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material: High-quality stainless steel body, BPA-free plastic lid</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Lid Type: Flip-top lid with spill-proof suction technology</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Insulation: Double-wall insulation for temperature retention</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Base: Anti-slip base for added stability</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Dimensions: Standard mug size, fits most car cup holders</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Weight: Lightweight and portable</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning: Dishwasher-safe lid, easy-to-clean interior</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Durability: Scratch-resistant, high-strength construction</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Color: Available in various colors (depending on the model)</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Usage: Ideal for coffee, tea, water, and other beverages</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Compatibility: Suitable for home, office, and outdoor use</li></ul>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:17:48', '2025-05-16 17:39:09'),
(181, 'WiWU iTag WT-03 Easy to Find Card Tracker (Support Apple Find My Anti-lost)', 'wiwu-itag-wt-03-easy-to-find-card-tracker-(support-apple-find-my-anti-lost)-181', 19, 63, 0, NULL, 'P0181', 1000, 1250, 1100, 100000, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">With its durable and water-resistant design, the iTag can withstand everyday wear and tear, making it ideal for use in various environments. Plus, the tracker emits an audible sound to help you locate your item quickly when it’s nearby. The setup is simple and fast, requiring only a few steps to pair it with your Apple device.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Ideal for those looking for a simple and effective way to prevent losing valuable items, the WiWU iTag WT-03 is the perfect accessory. Its seamless integration with Apple’s Find My network, portability, and reliable performance make it a must-have for anyone who wants to keep their belongings safe and easily trackable.</p>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:19:26', '2025-05-16 17:39:09'),
(182, 'Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit', 'proove-mr-cleaner-20-in-1-multifunctional-cleaning-kit-182', 19, 62, 0, NULL, 'P0182', 250, 550, 450, 100000, NULL, NULL, '<h1 class=\"product_title entry-title wd-entities-title\" style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb,20px); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: var(--wd-entities-title-font-weight); font-stretch: inherit; line-height: 1.2; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 34px; display: var(--page-title-display); overflow-wrap: break-word; --page-title-display: block; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit</h1><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">The Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit is the ultimate solution for keeping your electronics and accessories spotless. Designed to clean a variety of devices, this comprehensive kit includes 20 essential cleaning tools, making it the perfect companion for maintaining your laptop, smartphone, camera, keyboard, and more. With tools like a soft microfiber cloth, dusting brush, and precision tweezers, this kit ensures that you can tackle even the most delicate cleaning tasks with ease.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">The Proove Mr Cleaner Kit also includes a keycap puller for keyboard cleaning, antibacterial and screen wipes, cleaning gel for hard-to-reach places, and a specialized cleaning pen for electronics.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Features:</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">20 cleaning tools in one kit</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Suitable for multiple devices (laptops, smartphones, cameras, etc.)</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Soft microfiber cleaning cloth</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Dusting brush</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Keycap puller</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Screen cleaning spray</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning gel</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning wipes</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Small cleaning brushes</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Antibacterial wipes</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Anti-static brush</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Precision tweezers</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning pen for electronics</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Compact and portable storage case</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ergonomic design for ease of use</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Gentle on surfaces</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Reusable and eco-friendly components</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Perfect for home and office use</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ideal for maintaining electronics and accessories</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Multi-surface cleaning capability</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specifications:</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Model: Proove Mr Cleaner 20 in 1 Multifunctional Cleaning Kit</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning Tools: 20 different tools included</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Compatibility: Laptops, smartphones, cameras, keyboards, monitors, and other electronics</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Microfiber Cloth: Soft and reusable</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Brushes: Small cleaning brushes, dusting brush, and anti-static brush</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Keycap Puller: For easy keyboard cleaning</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning Gel: For removing dirt from hard-to-reach places</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Screen Cleaning Spray: Suitable for sensitive screens</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Wipes: Antibacterial and screen cleaning wipes</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Tweezers: Precision tweezers for fine cleaning</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Cleaning Pen: Specialized pen for delicate electronics</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Storage Case: Compact, portable, and durable storage case</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material: Eco-friendly and reusable components</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Dimensions: Compact and portable for easy storage</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Weight: Lightweight for easy handling</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Usage: Ideal for home, office, and travel cleaning needs</li></ul>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:21:27', '2025-05-16 17:39:09');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(183, 'Ugreen Tire Inflator Portable Air Compressor 150PSI Air Pump', 'ugreen-tire-inflator-portable-air-compressor-150psi-air-pump-183', 19, 64, 0, NULL, 'P0183', 1000, 1200, 1300, 100000, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Designed for durability, the UGREEN Tire Inflator features high-quality ABS plastic and metal construction. Its quiet operation, with noise levels under 75 dB, ensures a more comfortable user experience. Additionally, the compact size allows for easy storage in your car, backpack, or garage.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Whether you’re inflating vehicle tires, sports equipment, or inflatable toys, this portable air compressor provides a dependable and user-friendly solution. With its advanced features and robust performance, the UGREEN Tire Inflator Portable Air Compressor is a must-have tool for drivers and outdoor enthusiasts in Bangladesh and beyond.</p>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:22:45', '2025-05-16 17:39:09'),
(184, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 'jr-cl06-154w-car-cigarette-lighter-adapter-with-three-sockets-+-6-ports-184', 20, 66, 0, NULL, 'P0184', 1000, 1500, 1300, 100000, NULL, NULL, '<h1 class=\"product-meta__title heading h3\" style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb,20px); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 28px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><a href=\"https://www.joyroom.com/products/154w-car-adapter\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; text-decoration: none; transition: 0.25s; box-shadow: none; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">JR-CL06</a>&nbsp;154W Car cigarette lighter adapter with three sockets + 6 ports</h1><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">The JR-CL06 154W Car Cigarette Lighter Adapter is a high-power, versatile charging solution designed to meet all your in-car power needs. Featuring three cigarette lighter sockets and six USB ports, this adapter ensures you can power multiple devices simultaneously with ease. With a total power output of 154W, it provides fast and efficient charging for a wide range of devices, from smartphones and tablets to GPS units and dash cams.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">The three cigarette lighter sockets offer ample space for powering additional car accessories such as air purifiers, vacuum cleaners, or car refrigerators. Meanwhile, the six USB ports, including both standard and fast-charging options, ensure that all your passengers can keep their devices fully charged during long journeys.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Designed with convenience and safety in mind, the JR-CL06 is compact and portable, making it an ideal addition to any vehicle. Its easy installation process means you can quickly set it up and start using it without any hassle. The adapter also features built-in protection against overcurrent and short circuits, ensuring your devices remain safe while charging.</p>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:25:59', '2025-05-16 17:39:09'),
(185, 'Joyroom JR-CL05 78W Multi 5 Ports Fast charging', 'joyroom-jr-cl05-78w-multi-5-ports-fast-charging-185', 20, 67, 0, NULL, 'P0185', 1000, 2000, 1100, 100, NULL, NULL, '<p><span style=\"color: rgb(42, 42, 42); font-family: Poppins, sans-serif; font-size: 15px;\">The Joyroom JR-CL05 78W Multi 5 Ports charger offers versatile charging with its five ports including USB-C and USB-A, delivering up to 65W and 18W respectively. Compact and efficient, it ensures rapid charging for smartphones, tablets, and laptops. Built-in safety features protect against overcurrent and short-circuiting, making it ideal for home, office, or travel use. Upgrade your charging setup with this reliable and powerful solution, designed to keep your devices powered wherever you go.</span></p>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:27:38', '2025-05-16 17:39:09'),
(186, 'WiWU PC500 72W 2 Ports Black Car Charger (USB-C & USB-A)', 'wiwu-pc500-72w-2-ports-black-car-charger-(usb-c-&-usb-a)-186', 20, 69, 0, NULL, 'P0186', 1000, 1200, 1100, 100000, NULL, NULL, '<p><span style=\"color: rgb(42, 42, 42); font-family: Poppins, sans-serif; font-size: 15px;\">The WiWU PC500 72W Car Charger offers dual USB-C and USB-A ports for efficient simultaneous charging in a compact, stylish design, perfect for mobile device power on the move. It supports fast charging and ensures reliable power distribution, making it an essential accessory for travelers and commuters alike.</span></p>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:29:16', '2025-05-16 17:39:09'),
(187, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 'ugreen-car-charger-with-fm-modulator-pd-2x-usb-1x-type-c-bluetooth-qc-3.0-car-charger-80910-cd229-187', 20, 67, 0, NULL, 'P0187', 1000, 2000, 1500, 100000, NULL, NULL, '<h4 style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb,20px); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 18px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth Car Charger 80910 CD229</span></h4><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ugreen Car Charger 80910 CD229&nbsp; Features :&nbsp;</span></p><ul><li style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Car charger with Bluetooth 5.0 FM transmitter. Your own radio station. The FM transmitter and Bluetooth 5.0 technology allow you to listen to music stored on your smartphone via the radio. It is enough to pair the phone with the gadget, and then search for the appropriate frequency on the car receiver.</li><ul><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Convenient conversations :</span>The built-in microphone allows you to make calls without having to hold the phone in your hand. And you only need one button to answer / reject calls or redial a number!</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Up to 3 devices simultaneously :</span>3 USB ports (2x USB + 1 x USB Type C) allow you to renew the energy of up to 3 devices at the same time.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Music from a flash drive or memory card :</span>The gadget also easily plays audio files (in MP3 / WMA / WAV / FLAC formats) from a USB flash drive or TF / micro SD card connected to it.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">When navigation is too quiet&nbsp;</span>The accessory will also be useful as a navigation voice amplifier. Thanks to the use of car speakers, all commands will be perfectly audible.</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Digital display&nbsp;</span>Practical display informs about the current voltage and transmission frequency.</li></ul><li style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specification Ugreen Car Charger 80910 CD229 :&nbsp;</span></li><ul><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB ports: USB Type C, USB Type A.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB 1 output: 5V / 3A; 9V / 2A; 12V / 1.5A</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB 2 output: 5V / 1.5A</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB-C output: 5V / 3A; 9V / 2.22A; 12V / 1.67A</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Total output power: 5V = 4.8A; 31.5 W max</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bluetooth version: Bluetooth 5.0</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Transmission distance:</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Working temperature: 0 ℃ -60 ℃</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">FM frequency range: 87.5-108MHz (100KHz step)</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bit rate: 64-320 kbps</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Supports file types: MP3 / WMA / WAV</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Power supply: DC 12V-24V.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Supports TF card / flash memory capacity: ≦ 128 GB</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Screen: LED</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Weight: 50g</li></ul></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ugreen Car Charger&nbsp; Fm modulator 80910 CD229 Warranty : 3 Months Warranty&nbsp;</span></p>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:30:49', '2025-05-16 17:39:09');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(188, 'Joyroom Mount Jr-Zs288 Bike Phone Mount Quick Release Bicycle Handlebar Phone Holder for 4.7-7 inch Cell Phones – Black', 'joyroom-mount-jr-zs288-bike-phone-mount-quick-release-bicycle-handlebar-phone-holder-for-4.7-7-inch-cell-phones-–-black-188', 20, 0, NULL, NULL, 'P0188', 1000, 1500, 1300, 100000, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Joyroom Mount Jr-Zs288 Bike Phone Mount Quick Release Bicycle Handlebar Phone Holder for 4.7-7 inch Cell Phones – Black</span></p><div class=\"system-description\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">The bike phone mount is easy to install without a wrench. You can put in or take off the phone with one hand in a few seconds. It is very convenient, and never worry about missing the perfect photo opportunity while riding</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">With the sturdy clamp, it can grip your phone tight and stable on the bike handlebar phone holder. You don’t have to worry about your phone being damaged or falling while riding even on the bumpy road</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Widely compatibility</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">It can rotate within 360°. You can easily adjust the phone bike mount according to your perfect viewing angle, obtain more comfortable cycling experience</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Suit well with various types of bicycles, motorcycles, strollers, shopping carts, electric scooters, indoor treadmills, and indoor bikes</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specification:</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Suitable Handlebar diameter: 15mm-31mm</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material: ABS+PC</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Compatible Cell Phone Size: 4.7-7 inch</li></ul></div><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb,20px); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Package included:</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 x Bike Phone Mount</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Other things not included</li></ul><h3 class=\"content-title\" style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb,20px); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Specifications</h3><table class=\"table\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; width: 806px; border-spacing: 0px; margin-block: 0 var(--wd-block-spacing); font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Brand</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Joyroom</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Mount Type</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bicycle Mounts</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Retail Packaging</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Colored Box</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Gross Weight</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">0.208kg</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Volume Weight</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">0.251kg</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Package Length</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">14.800cm</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Package Width</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">11.600cm</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">Package Height</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">7.300cm</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">One Package Weight</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">0.208kg</td></tr><tr class=\"property\" style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th class=\"key\" style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: start;\">EAN</th><td class=\"value formatNumber\" style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">6941237179555</td></tr></tbody></table>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:34:34', '2025-05-16 17:39:09'),
(189, 'Intel 10th Gen Core i5 Desktop Computer', 'intel-10th-gen-core-i5-desktop-computer-189', 26, 0, NULL, NULL, 'P0189', 1000, 8500, 10500, 100000, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.122b66baetfuIe\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Intel 10th Gen Core i5 Desktop Computer</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gigabyte 10th and 11th Gen Micro ATX Motherboard</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Internal 1TB SATA HDD</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gaming RGB 8GB 3200MHz DDR4 RAM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GeForce GTX 1660 Super NB 4GB-V2 Graphics Card</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">SSD Sata 240GB SSD</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Revenger RGB ATX Gaming Case</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dimondfiled 550W 550 Watt Power Supply</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">03 years limited warranty</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">Gigabyte 10th and 11th Gen Micro ATX Motherboard</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">Internal 1TB SATA HDD</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">Gaming RGB 8GB 3200MHz DDR4 RAM</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">GeForce GTX 1660 Super NB 4GB-V2 Graphics Card</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">SSD Sata 240GB SSD</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">Revenger RGB ATX Gaming Case</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">Dimondfiled 550W 550 Watt Power Supply</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; font-size: 10.5pt;\">03 years limited warranty</span></div></li></ul></article></div></div></div>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:53:36', '2025-05-16 17:39:09'),
(190, 'USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black', 'usb-bluetooth-5.0-adapter-wireless-dongle-stereo-receiver-audio-for-tv-pc-laptop---black-190', 26, 0, NULL, NULL, 'P0190', 1000, 1200, 1100, 100000, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.58702efar9dZ7a\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of USB Bluetooth 5.0 Adapter Wireless Dongle Stereo Receiver Audio for Tv Pc Laptop - Black</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Pr transmit power + 10DBM (Class II)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sensitivity -90dBm 0.1%</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Speed 3Mbps</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Protocol standard V 5.0 protocol</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Support system Windows XP / Vista / Win7 / Win8 / Win8.1 / Win10</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">USB expansion port USB2.0</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product features Dual mode transmission V5.0 technology</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"></div></div></div>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:55:11', '2025-05-16 17:39:09'),
(191, 'HP M10 Wired Mouse - Mouse', 'hp-m10-wired-mouse---mouse-191', 26, 0, NULL, NULL, 'P0191', 1000, 1200, 1100, 100000, NULL, NULL, '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i3.188616074X1anY\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of HP M10 Wired Mouse - Mouse</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model - M10</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Type - Wired Mouse</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color - Black</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Click Sound - Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Number of Button - 2</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Wheel - Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Wireless Distance - N/A</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Wireless Technology - N/A</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Supported Operating System - Windows 7, 8, 8.1, 10</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#mouse</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap;\">Specifications of HP M10 Wired Mouse - Mouse</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">282354155_BD-1271239424</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Model</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">M10</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; display: table-cell; word-break: break-word;\">HP M10 Wired Mouse - Mouse</div></div></div></div></div>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:56:35', '2025-05-16 17:39:09'),
(192, '2025 Full New Desktop Computer Intel Core i5 RAM 8GB SSD 120GB HDD 500GB Graphics 2GB Built in Gaming PC Win 11 64 Bit And 17/ 19/ 22 inch Monitor', '2025-full-new-desktop-computer-intel-core-i5-ram-8gb-ssd-120gb-hdd-500gb-graphics-2gb-built-in-gaming-pc-win-11-64-bit-and-17-19-22-inch-monitor-192', 26, 0, NULL, NULL, 'P0192', 1000, 2500, 1400, 100000, NULL, NULL, '<ul class=\"\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.290e1de70HhPPg\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i2.290e1de70HhPPg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Monitor : 17/19/22 inch (Any China Brand) (Monitor can be different from the given pictures)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Processor : Intel Core i5 GHz 3.20 - 3.33GHz 4MB Cache</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">RAM : 8GB DDR3 Any Brands</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">SSD : 120GB</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Hard Disk : 500GB WD/Seagate/Toshiba/Hitachi/Samsung (or Others Brands)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Motherboard Chipset Brand : Intel Chipset</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Keyboard : Standard USB Keyboard (FREE)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Mouse : Standard Optical Mouse (FREE)</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i3.290e1de70HhPPg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Casing : GIGASONIC / OVO / EROCK / CIRCLE / STAR SONIC / DBM (Casing can be different from the given pictures)</li></ul>', NULL, 1, 1, 0, NULL, 1, NULL, NULL, '2025-02-24 01:58:55', '2025-05-16 17:39:09'),
(193, 'Intel Core i7 8th Gen RAM 16GB SSD 256GB HDD 500GB Graphics 8GB Gaming PC', 'intel-core-i7-8th-gen-ram-16gb-ssd-256gb-hdd-500gb-graphics-8gb-gaming-pc-193', 26, 0, NULL, NULL, 'P0193', 1000, 2500, 1500, 100000, NULL, 'XOEcvKqzxK8', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.2c797c20hWTdtQ\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Processor : Intel® Core™ i7 8th Gen Processor</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">RAM : 16GB DDR4 Desktop RAM 2Kit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">SSD: 256GB NVMe M.2 TwinMOS/Acer/Samsung (or Others Brands)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">HDD : 500GB</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.2c797c20hWTdtQ\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Graphics : 4Gb Dadicated DDR5 Graphics Card / 4GB Built in Graphic Total 8GB Graphic Memory</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Motherboard Chipset Brand : Intel Chipset</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cooling System : 1x RGB Cooling Fan Pre Instilled</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Keyboard &amp; Mouse : Combo G21 Gaming RGB Keyboard And Mouse FREE</li></ul>', NULL, 1, 1, 0, NULL, 1, NULL, 'tttttttttttttttttttt', '2025-02-24 02:00:57', '2025-05-20 14:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 117, 6, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(21, 117, 7, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(22, 117, 8, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(23, 117, 9, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(24, 1, 10, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(25, 132, 7, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(26, 132, 8, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(27, 133, 6, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(28, 133, 8, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(29, 130, 6, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(30, 130, 8, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(31, 130, 9, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(32, 135, 6, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(33, 135, 7, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(34, 135, 8, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(35, 135, 9, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(36, 135, 10, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(39, 157, 7, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(40, 157, 8, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(41, 157, 9, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(42, 157, 10, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(43, 158, 7, '2024-12-05 15:43:20', '2024-12-05 15:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Md Sisir 01715473190', 'N / A', '5', 'অনকে সুন্দরে', 158, 103, 'active', '2024-12-05 15:50:06', '2024-12-05 15:50:06'),
(9, 'MD Mamun Hassan', 'N / A', '5', 'h', 179, 106, 'active', '2025-04-30 17:50:46', '2025-04-30 17:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Editor', 'web', '2023-01-19 06:41:33', '2023-01-19 06:41:33'),
(4, 'Salesman', 'web', '2023-01-19 06:42:28', '2023-01-19 06:42:28');

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
(5, 4),
(6, 1),
(6, 4),
(7, 1),
(7, 3),
(7, 4),
(8, 1),
(8, 4),
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
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(221, 221, 106, 'MD Mamun Hassan', '01954578010', 'Holding: 13/2033-02,Lotifpur Moddhopara,Bogura', 'ঢাকার ভিতরে ৭০ টাকা', '2025-02-24 16:47:36', '2025-02-24 16:47:36'),
(222, 222, 106, 'MD Rashid', '01954578010', 'Holding: 13/2033-02,Lotifpur Moddhopara,Bogura', 'ঢাকার ভিতরে ৭০ টাকা', '2025-02-24 16:51:12', '2025-02-24 16:51:12'),
(223, 223, 110, 'Md Monjurul Islam', '01783004753', 'নাগেরহাট বদরগঞ্জ', 'ফ্রি ডেলিভারি', '2025-02-24 16:57:32', '2025-02-24 16:58:01'),
(224, 224, 106, 'Md Abu Sayed', '01954578010', 'Holding: 13/2033-02,Lotifpur Moddhopara,Bogura', 'ঢাকার ভিতরে ৭০ টাকা', '2025-02-24 16:59:48', '2025-02-24 16:59:48'),
(225, 225, 110, 'Md Monjurul Islam', '01783004753', 'নাগেরহাট বদরগঞ্জ', 'ঢাকার ভিতরে ৭০ টাকা', '2025-02-24 17:19:54', '2025-02-24 17:19:54'),
(226, 226, 111, 'Md Nazrul Islam', '01870829343', 'House: Munshi Bari,Beside Nayar Hat High School,Borobari,Lalmonir Hat', 'ফ্রি ডেলিভারি', '2025-02-24 17:22:23', '2025-02-24 17:23:38'),
(227, 227, 112, 'robin mdrobin', '01854162055', 'dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-02-25 10:27:45', '2025-02-25 10:27:45'),
(230, 230, 114, 'আসিক piyas', '01636984304', 'magura. arpara', 'ঢাকার ভিতরে ৭০ টাকা', '2025-02-26 16:00:06', '2025-02-26 16:00:06'),
(231, 231, 114, 'আসিক piyas', '01636984304', 'magura. arpara', 'ফ্রি ডেলিভারি', '2025-02-26 16:10:31', '2025-02-26 16:10:31'),
(232, 232, 115, 'mahedi', '01723990666', 'Satkhira', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-02-28 13:10:20', '2025-02-28 13:10:20'),
(233, 233, 116, 'Shohag', '01981493354', 'Cumilla,Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-04 06:39:41', '2025-03-04 06:39:41'),
(234, 234, 117, 'Mahmudul Hasan Arman', '01629891233', 'Ffg', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-03-06 06:54:50', '2025-03-06 06:54:50'),
(235, 235, 117, 'Mahmudul Hasan Arman', '01629891233', 'Arambag (Pirbari)', 'ফ্রি ডেলিভারি', '2025-03-06 06:56:53', '2025-03-06 13:17:53'),
(236, 236, 118, 'Abu', '01916011377', 'Dewanpara', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-10 08:28:05', '2025-03-10 08:28:05'),
(237, 237, 119, 'Shohan', '01575432476', 'West', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-10 14:59:36', '2025-03-10 14:59:36'),
(238, 238, 118, 'ABU SAYEM', '01916011377', 'jamal', 'ফ্রি ডেলিভারি', '2025-03-10 22:42:24', '2025-03-10 22:42:24'),
(239, 239, 118, 'abu', '01916011377', 'dfsf', 'Dhaka 0', '2025-03-10 22:46:09', '2025-03-10 22:46:09'),
(240, 240, 122, 'Demo', '01700000000', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-16 20:36:48', '2025-03-16 20:36:48'),
(241, 241, 122, 'Demo', '01700000000', 'Dhaka', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-03-16 20:37:37', '2025-03-16 20:37:37'),
(242, 242, 123, 'Jkshhj', '01764645646', 'Bsigdudh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-17 14:30:15', '2025-03-17 14:30:15'),
(243, 243, 124, 'Kh', '01876069917', 'Yctcyc', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-20 17:59:40', '2025-03-20 17:59:40'),
(244, 244, 125, 'Nirob Hossain', '01927776618', 'Uttara ,Dhaka', 'Dhaka 0', '2025-03-21 09:56:55', '2025-03-21 09:56:55'),
(245, 245, 126, 'SHIHAB UDDIN', '01798774674', 'KASHIMPUR,GODAGARI,RAJSHAHI', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-21 13:36:29', '2025-03-21 13:36:29'),
(246, 246, 127, 'SHIHAB UDDIN', '01777777777', 'Bavet Municipality, Sangkat Bavet', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-21 13:37:39', '2025-03-21 13:37:39'),
(247, 247, 128, 'SHIHAB UDDIN', '01798774633', 'KASHIMPUR,GODAGARI,RAJSHAHI', 'ঢাকার ভিতরে ৭০ টাকা', '2025-03-21 13:47:02', '2025-03-21 13:47:02'),
(248, 248, 129, 'test', '01234567891', 'ইটাখলা রোড Select Box', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-04 06:06:21', '2025-04-04 06:06:21'),
(249, 249, 129, 'test', '01234567891', 'ইটাখলা রোড Select Box', 'Dhaka 0', '2025-04-04 06:31:11', '2025-04-05 06:38:53'),
(250, 250, 129, 'test', '01234567891', 'ইটাখলা রোড Select Box', 'Dhaka 0', '2025-04-04 06:33:04', '2025-04-05 06:20:51'),
(251, 251, 130, 'Md Abdul Rashid', '01796825863', 'Dhaka, Bangladesh', 'Dhaka 0', '2025-04-05 07:04:10', '2025-04-05 07:04:44'),
(252, 252, 131, 'Nahidul Islam Sayel', '01780782261', 'Howapara, 3100 Sylhet, Sylhet Division, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-05 17:21:25', '2025-04-05 17:21:25'),
(253, 253, 132, 'I\'m', '01856954325', 'How to the Profile', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-10 10:45:21', '2025-04-10 10:45:21'),
(254, 254, 133, 'fgfg', '01946717236', 'অফিস - উত্তরা ঢাকা এবং তিয়ানজিন ,চায়না', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-10 15:37:26', '2025-04-10 15:37:26'),
(255, 255, 134, 'SH Masum', '01407892308', 'Konapara, Demra', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-10 16:15:21', '2025-04-10 16:15:21'),
(256, 256, 135, 'naim', '01983347499', 'jjddj', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-12 13:08:28', '2025-04-12 13:08:28'),
(257, 257, 127, 'Tfheyiff', '01777777777', 'Gjvcdh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-12 23:19:36', '2025-04-12 23:19:36'),
(258, 258, 136, 'Demo', '01703061878', 'Try55', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-14 05:46:23', '2025-04-14 05:46:23'),
(259, 259, 137, 'rtfr', '01966721815', 'rajibpur', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-15 13:07:19', '2025-04-15 13:07:19'),
(260, 260, 137, 'Jewel', '01966721815', 'Jurigrm', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-15 13:16:50', '2025-04-15 13:16:50'),
(261, 261, 138, 'Md Mosaidul Islam', '01989589675', 'Sreerampur, Grugram', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-16 05:41:43', '2025-04-16 05:41:43'),
(262, 262, 139, 'Bishal', '01711576329', 'Dhaka Mirpur 6 Ta Block 38no road', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-16 19:00:23', '2025-04-16 19:00:23'),
(263, 263, 140, 'Md Abdur Rahman', '01750784641', 'Menajer Pul, Haragach', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-17 10:49:18', '2025-04-17 10:49:18'),
(264, 264, 141, 'GYJ', '01478541223', 'CF', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-18 19:02:33', '2025-04-18 19:02:33'),
(265, 265, 142, 'Jononi Madical Hall', '01915711407', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-20 14:30:19', '2025-04-20 14:30:19'),
(266, 266, 137, 'Jewel', '01966721815', 'Rajibpur', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-21 04:56:34', '2025-04-21 04:56:34'),
(267, 267, 146, 'Lumen SoftTech Limited', '01829317005', 'GP CHA, 196/1 dhaka, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-24 18:29:09', '2025-04-24 18:29:09'),
(268, 268, 147, 'Md Rakibul Islam', '01614628005', 'AL TAZER RAHMAN ROAD, CHARNOABAD, BHOLA SADAR, BHOLA, BANGLADESH', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-25 13:10:55', '2025-04-30 05:10:14'),
(269, 269, 148, 'Redwan Ahmed', '01327949940', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(270, 270, 148, 'Redwan Ahmed', '01327949940', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-25 13:11:13', '2025-04-25 13:11:13'),
(271, 271, 149, 'nobi', '01927548062', 'Sherpur,nalitabri,post office', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-04-28 19:51:42', '2025-04-28 19:51:42'),
(272, 272, 150, 'Bn', '01515698075', 'gjkk', 'ঢাকার ভিতরে ৭০ টাকা', '2025-04-30 17:28:00', '2025-04-30 17:28:00'),
(273, 273, 151, 'fhgfhgfhgfhg', '01911212121', 'fhgfhgfhgfhghfgfhg', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-01 09:42:37', '2025-05-01 09:42:37'),
(274, 274, 152, 'vfdsv', '01312032403', 'gvdfbv', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-01 11:19:42', '2025-05-01 11:19:42'),
(275, 275, 149, 'nobi', '01927548062', 'Sherpur,nalitabri,post office', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-01 16:59:56', '2025-05-01 16:59:56'),
(276, 276, 153, 'Gg', '01999999999', 'R', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-05-03 11:56:22', '2025-05-03 11:56:22'),
(277, 277, 154, 'Gg', '011111111111', 'R', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-03 12:00:37', '2025-05-03 12:00:37'),
(278, 278, 155, 'rdf', '01234567895', 'gfgf', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-03 13:17:27', '2025-05-03 13:17:27'),
(279, 279, 156, 'Moshiur Rahman Atik', '01319483527', 'Bajitpur,Kishoregonj', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-03 19:21:21', '2025-05-03 19:21:21'),
(280, 280, 157, 'Mamun', '01967521023', 'belkuchi Thana', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-04 10:24:45', '2025-05-04 10:24:45'),
(281, 281, 158, 'khjlh', '01967521000', 'belkuchi Thana', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-07 09:59:11', '2025-05-07 09:59:11'),
(282, 282, 159, 'Hello', '01789088976', 'Test,fkgjj', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-05-07 15:56:33', '2025-05-07 15:56:33'),
(283, 283, 160, 'A', '01601021702', 'Vhhh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-07 16:01:25', '2025-05-07 16:01:25'),
(284, 284, 160, 'A', '01601021702', 'Sa', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-05-07 17:06:23', '2025-05-07 17:06:23'),
(285, 285, 161, 'Hh', '01789089089', 'Tes', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-08 03:19:02', '2025-05-08 03:19:02'),
(286, 286, 162, 'গজহ', '01731058978', 'Tyyyy', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-08 13:28:05', '2025-05-08 13:28:05'),
(287, 287, 163, 'Shahajalal Islam', '01774078179', 'Shariatpur', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-08 13:53:33', '2025-05-08 13:53:33'),
(288, 288, 163, 'Shahajalal Islam', '01774078179', 'Shariatpur', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-08 15:07:31', '2025-05-08 15:07:31'),
(289, 289, 164, 'ফ্লঝলডড্র্রঝধ্বধ্ব', '02288798654', 'ৃএডপজঝনথ্রছ', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-11 11:21:35', '2025-05-11 11:21:35'),
(290, 290, 165, 'SBSB', '01798774675', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-12 09:05:46', '2025-05-12 09:05:46'),
(291, 291, 167, 'Testvew', '01711223344', 'Dhaka dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-13 06:39:38', '2025-05-13 06:39:38'),
(292, 292, 122, 'Al Mamun', '01700000000', 'সিরাজগঞ্জ', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-05-13 15:17:17', '2025-05-13 15:17:17'),
(293, 293, 168, 'test', '01672495122', 'test', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-05-13 19:25:03', '2025-05-13 19:25:03'),
(294, 294, 169, 'H', '01851848455', 'Hah', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-14 03:07:27', '2025-05-14 03:07:27'),
(295, 295, 170, 'MD SHAWAN', '01511904438', 'HASNABAAD, KERANIGANJ , DHAKA', 'ঢাকার ভিতরে ৭০ টাকা', '2025-05-15 12:57:04', '2025-05-15 12:57:04'),
(296, 296, 171, 'Ff', '01902380115', 'Tg', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-05-16 12:14:41', '2025-05-20 11:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে ৭০ টাকা', 70, '1', '2023-08-04 10:34:54', '2023-08-18 19:51:03'),
(2, 'ঢাকার বাহিরে  ১২০ টাকা ', 120, '1', '2023-08-04 10:35:57', '2023-10-27 10:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '12 Inchi', '1', '2024-02-05 09:39:19', '2024-11-10 04:43:12'),
(12, '10 Inchi', '1', '2024-02-05 09:39:25', '2024-11-10 04:42:40'),
(13, '8.5 Inch', '1', '2024-02-05 09:39:30', '2024-11-10 04:42:17'),
(14, '20 mm', '1', '2024-02-05 09:39:34', '2024-11-10 04:41:48'),
(15, '22 mm', '1', '2024-02-05 09:39:39', '2024-11-10 04:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`) VALUES
(1, 'http://bulksmsbd.net/api/smsapi', '#', '#', '1', '1', '1', '1', '2024-02-06 11:29:46', '2025-01-08 06:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/official.elitedesign', '#0b0f89', 1, '2023-02-12 11:32:20', '2025-01-10 02:51:01'),
(3, 'Official Mail', 'fab fa-twitter', 'https://www.facebook.com/official.elitedesign', '#c53302', 1, '2023-02-14 03:29:41', '2025-01-10 02:51:34'),
(4, 'Whatsapp', 'fab fa-whatsapp', '01775457008', '#5ca314', 1, '2024-11-10 06:36:32', '2025-01-10 02:51:46'),
(5, 'youtube.com', 'fab fa-youtube', 'https://www.youtube.com/@eHatBazarLive/videos', '#f70808', 1, '2024-11-10 06:37:34', '2024-11-10 06:37:34'),
(6, 'Instagram', 'fab fa-instagram', 'https://www.facebook.com/official.elitedesign', '#000000', 1, '2024-11-10 14:52:24', '2025-01-10 02:51:53'),
(7, 'Linkedin', 'fab fa-linkedin', 'https://www.facebook.com/official.elitedesign', '#000000', 1, '2024-11-10 14:52:59', '2025-01-10 02:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(60, 'Smart Lamp & Lights', 'smart-lamp-&-lights', 19, NULL, NULL, NULL, 1, '2025-02-24 01:08:20', '2025-02-24 01:08:20'),
(61, 'Premium Backpack & bag', 'premium-backpack-&-bag', 19, NULL, NULL, NULL, 1, '2025-02-24 01:08:31', '2025-02-24 01:08:31'),
(62, 'Trendy & Smart Gadget', 'trendy-&-smart-gadget', 19, NULL, NULL, NULL, 1, '2025-02-24 01:08:41', '2025-02-24 01:08:41'),
(63, 'Fashion & Life Style', 'fashion-&-life-style', 19, NULL, NULL, NULL, 1, '2025-02-24 01:08:50', '2025-02-24 01:08:50'),
(64, 'Health Care Gadgetz', 'health-care-gadgetz', 19, NULL, NULL, NULL, 1, '2025-02-24 01:08:59', '2025-02-24 01:08:59'),
(65, 'Toys', 'toys', 19, NULL, NULL, NULL, 1, '2025-02-24 01:09:08', '2025-02-24 01:09:08'),
(66, 'Car Dash Camera', 'car-dash-camera', 20, NULL, NULL, NULL, 1, '2025-02-24 01:09:39', '2025-02-24 01:09:39'),
(67, 'Car Jump Starter', 'car-jump-starter', 20, NULL, NULL, NULL, 1, '2025-02-24 01:09:50', '2025-02-24 01:09:50'),
(68, 'Car Tire Inflator', 'car-tire-inflator', 20, NULL, NULL, NULL, 1, '2025-02-24 01:10:04', '2025-02-24 01:10:04'),
(69, 'Car Vacuum Cleaner', 'car-vacuum-cleaner', 20, NULL, NULL, NULL, 1, '2025-02-24 01:10:25', '2025-02-24 01:10:25'),
(70, 'TWS', 'tws', 21, NULL, NULL, NULL, 1, '2025-02-24 01:12:12', '2025-02-24 01:12:12'),
(71, 'Bluetooth Neckband Earphone', 'bluetooth-neckband-earphone', 21, NULL, NULL, NULL, 1, '2025-02-24 01:12:29', '2025-02-24 01:12:29'),
(72, 'Bluetooth Speaker', 'bluetooth-speaker', 21, NULL, NULL, NULL, 1, '2025-02-24 01:12:51', '2025-02-24 01:12:51'),
(73, 'Charging Cable', 'charging-cable', 22, NULL, NULL, NULL, 1, '2025-02-24 01:13:09', '2025-02-24 01:13:09'),
(74, 'Charger Adapter', 'charger-adapter', 22, NULL, NULL, NULL, 1, '2025-02-24 01:13:26', '2025-02-24 01:13:26'),
(75, 'Screen Protector', 'screen-protector', 22, NULL, NULL, NULL, 1, '2025-02-24 01:13:39', '2025-02-24 01:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'info@creativedesign.com.bd', '2024-11-21 15:43:10', '$2y$10$I7HjWzyAPJozo/NOHz58nuMi4U1qWoehyj12sbvK64xvMMUI4wQkW', 'IUxsnd7vTR5888DhhEdDeQ5JAA8kCyBpKZyCttwJQxVqXi6ZcsvjiUFshz1z', 'public/uploads/users/1736271519-defualt.webp', 1, NULL, '2025-01-08 07:38:40'),
(9, 'Salesman', 'rajkhan@gmail.com', NULL, '$2y$10$jsurQLBJBIe/Xy9Nf44ysO5t.oGRKEG.Q/E75F3SPIF4/HWnthnvW', 'CCdFnYEKzGaiKjHHXnhMQVpmpp5dlq41oVXQ464dqrhWpa8EK5RT2hkDmrLC', 'public/uploads/users/1741267190-img_20250306_175858_923.webp', 1, '2025-03-06 13:19:50', '2025-03-06 13:19:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
