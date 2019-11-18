-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 03:21 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gorg_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gorg_commentmeta`
--

CREATE TABLE `gorg_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_comments`
--

CREATE TABLE `gorg_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_comments`
--

INSERT INTO `gorg_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-07 02:00:15', '2019-11-07 02:00:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 105, 'ActionScheduler', '', '', '', '2019-11-17 14:45:58', '2019-11-17 14:45:58', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 105, 'ActionScheduler', '', '', '', '2019-11-17 14:46:32', '2019-11-17 14:46:32', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 105, 'ActionScheduler', '', '', '', '2019-11-17 14:46:33', '2019-11-17 14:46:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gorg_links`
--

CREATE TABLE `gorg_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_options`
--

CREATE TABLE `gorg_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_options`
--

INSERT INTO `gorg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/GrandOrientalRugGalleryWordpress', 'yes'),
(2, 'home', 'http://localhost/GrandOrientalRugGalleryWordpress', 'yes'),
(3, 'blogname', 'Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'roshanb54@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:209:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"home_slider/?$\";s:31:\"index.php?post_type=home_slider\";s:44:\"home_slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_slider&feed=$matches[1]\";s:39:\"home_slider/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_slider&feed=$matches[1]\";s:31:\"home_slider/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=home_slider&paged=$matches[1]\";s:19:\"gorg_testimonial/?$\";s:36:\"index.php?post_type=gorg_testimonial\";s:49:\"gorg_testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=gorg_testimonial&feed=$matches[1]\";s:44:\"gorg_testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=gorg_testimonial&feed=$matches[1]\";s:36:\"gorg_testimonial/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=gorg_testimonial&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"home_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_slider/([^/]+)/embed/?$\";s:44:\"index.php?home_slider=$matches[1]&embed=true\";s:32:\"home_slider/([^/]+)/trackback/?$\";s:38:\"index.php?home_slider=$matches[1]&tb=1\";s:52:\"home_slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_slider=$matches[1]&feed=$matches[2]\";s:47:\"home_slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_slider=$matches[1]&feed=$matches[2]\";s:40:\"home_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&paged=$matches[2]\";s:47:\"home_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&cpage=$matches[2]\";s:37:\"home_slider/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?home_slider=$matches[1]&wc-api=$matches[3]\";s:43:\"home_slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"home_slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"home_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home_slider=$matches[1]&page=$matches[2]\";s:28:\"home_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"gorg_testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"gorg_testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"gorg_testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"gorg_testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"gorg_testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"gorg_testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"gorg_testimonial/([^/]+)/embed/?$\";s:49:\"index.php?gorg_testimonial=$matches[1]&embed=true\";s:37:\"gorg_testimonial/([^/]+)/trackback/?$\";s:43:\"index.php?gorg_testimonial=$matches[1]&tb=1\";s:57:\"gorg_testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?gorg_testimonial=$matches[1]&feed=$matches[2]\";s:52:\"gorg_testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?gorg_testimonial=$matches[1]&feed=$matches[2]\";s:45:\"gorg_testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?gorg_testimonial=$matches[1]&paged=$matches[2]\";s:52:\"gorg_testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?gorg_testimonial=$matches[1]&cpage=$matches[2]\";s:42:\"gorg_testimonial/([^/]+)/wc-api(/(.*))?/?$\";s:57:\"index.php?gorg_testimonial=$matches[1]&wc-api=$matches[3]\";s:48:\"gorg_testimonial/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"gorg_testimonial/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"gorg_testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?gorg_testimonial=$matches[1]&page=$matches[2]\";s:33:\"gorg_testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"gorg_testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"gorg_testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gorg_testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gorg_testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"gorg_testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:44:\"facebook-pagelike-widget/facebook_widget.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gorg', 'yes'),
(41, 'stylesheet', 'gorg', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'gorg_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-2\";a:1:{i:0;s:8:\"fbw_id-2\";}s:8:\"footer-3\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:14:{i:1574043684;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1574046018;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574046435;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1574066720;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574085619;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574088320;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574088330;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574099120;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574121600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574128817;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574128828;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574128832;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575331200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:\"title\";s:12:\"Useful Links\";s:8:\"nav_menu\";i:3;}i:3;a:1:{s:8:\"nav_menu\";i:4;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573179771;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'current_theme', 'GORG', 'yes'),
(153, 'theme_mods_gorg', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'category_children', 'a:0:{}', 'yes'),
(193, 'acf_version', '5.8.7', 'yes'),
(194, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1573649782;s:7:\"version\";s:5:\"5.1.5\";s:11:\"count_valid\";i:0;s:13:\"count_invalid\";i:1;}}', 'yes'),
(195, 'recovery_mode_email_last_sent', '1573746964', 'yes'),
(203, 'gorg_theme_options', 'a:33:{s:20:\"gorg_social_facebook\";s:8:\"http://1\";s:19:\"gorg_social_twitter\";s:8:\"http://2\";s:22:\"gorg_social_googleplus\";s:8:\"http://4\";s:11:\"white_image\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:15:\"contact_address\";s:84:\"Grand Oriental Rug Gallery,<br />\n383 Aragon Ave <br />\nCoral Gables Miami, FL 33134\";s:14:\"contact_fphone\";s:12:\"305 442 4500\";s:10:\"white_logo\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:21:\"gorg_social_instagram\";s:8:\"http://5\";s:20:\"gorg_social_linkedin\";s:0:\"\";s:19:\"gorg_social_youtube\";s:0:\"\";s:19:\"show_static_content\";b:0;s:12:\"slider_posts\";s:1:\"4\";s:17:\"show_slider_arrow\";b:1;s:19:\"slider_static_title\";s:15:\"Welcome to GORG\";s:21:\"slider_static_content\";s:29:\"This is the Short Description\";s:13:\"welcome_title\";s:15:\"Welcome to GROG\";s:17:\"select_about_page\";i:20;s:18:\"welcome_text_limit\";s:3:\"600\";s:16:\"footer_copyright\";s:40:\"&copy; 2019 All Rights Reserved by GORG.\";s:21:\"show_developer_footer\";b:1;s:11:\"footer_logo\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:11:\"footer_text\";s:100:\"Phasellus blandit massa enim. elit id varius nunc. Lorem ipsum dolor sit amet, consectetur industry.\";s:13:\"contact_email\";s:33:\" info@grandorientalruggallery.com\";s:11:\"contact_fax\";s:12:\"305 442 4502\";s:14:\"contact_sphone\";s:12:\"305 490 1936\";s:12:\"contact_work\";s:57:\"Mon to Fri - 10:00AM- 6:00PM<br />\nSat - 11:00AM - 6:00PM\";s:18:\"contact_map_iframe\";s:335:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193229.77301255226!2d-74.05531241936525!3d40.823236500441624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f613438663b5%3A0xce20073c8862af08!2sW+123rd+St%2C+New+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1533565007513\" allowfullscreen=\"\" frameborder=\"0\"></iframe>\";s:12:\"contact_form\";s:44:\"[contact-form-7 id=\"6\" title=\"Contact form\"]\";s:13:\"contact_title\";s:12:\"Get In Touch\";s:17:\"testimonial_title\";s:20:\"Clients Testimonials\";s:17:\"testimonial_limit\";s:2:\"10\";s:15:\"catalogue_title\";s:17:\"PRODUCT CATALOGUE\";s:15:\"catalogue_count\";s:1:\"6\";}', 'yes'),
(221, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(258, 'admin_email_lifespan', '1589298593', 'yes'),
(259, 'db_upgraded', '', 'yes'),
(263, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1574042454;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(264, 'can_compress_scripts', '1', 'no'),
(265, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574042458;s:7:\"checked\";a:2:{s:4:\"gorg\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(279, '_site_transient_timeout_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', '1574351395', 'no'),
(280, '_site_transient_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');
INSERT INTO `gorg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(302, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1574042458;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"2.1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:3:\"5.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:44:\"facebook-pagelike-widget/facebook_widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-pagelike-widget\";s:4:\"slug\";s:24:\"facebook-pagelike-widget\";s:6:\"plugin\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-pagelike-widget/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/facebook-pagelike-widget.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/facebook-pagelike-widget/assets/icon-128x128.png?rev=2079670\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/facebook-pagelike-widget/assets/banner-772x250.png?rev=2143108\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(303, 'widget_fbw_id', 'a:2:{i:2;a:13:{s:17:\"data_small_header\";s:2:\"on\";s:26:\"data_adapt_container_width\";s:0:\"\";s:15:\"data_hide_cover\";s:0:\"\";s:18:\"data_show_facepile\";s:2:\"on\";s:15:\"data_show_posts\";s:2:\"on\";s:9:\"data_tabs\";s:8:\"timeline\";s:5:\"title\";s:0:\"\";s:6:\"app_id\";s:15:\"503595753002055\";s:6:\"fb_url\";s:32:\"https://www.facebook.com/GORG383\";s:5:\"width\";s:3:\"340\";s:6:\"height\";s:3:\"250\";s:10:\"custom_css\";s:0:\"\";s:10:\"select_lng\";s:5:\"en_US\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1574082376', 'no'),
(313, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Pokhara, Nepal\";s:3:\"url\";s:34:\"https://2019.pokhara.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-12-07 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Pokhara, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:28.1874169;s:9:\"longitude\";d:83.9717805;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Butwal\";s:3:\"url\";s:32:\"https://2020.butwal.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-01-25 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Butwal, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:27.6675391;s:9:\"longitude\";d:83.4635304;}}}}', 'no'),
(318, '_site_transient_timeout_browser_f9f7120ce5a4a9cf082c424b40cf59f5', '1574604915', 'no'),
(319, '_site_transient_browser_f9f7120ce5a4a9cf082c424b40cf59f5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"78.0.3904.97\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(320, '_transient_timeout_plugin_slugs', '1574088292', 'no'),
(321, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:29:\"acf-repeater/acf-repeater.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:9:\"hello.php\";i:5;s:44:\"facebook-pagelike-widget/facebook_widget.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}', 'no'),
(324, 'woocommerce_store_address', '', 'yes'),
(325, 'woocommerce_store_address_2', '', 'yes'),
(326, 'woocommerce_store_city', '', 'yes'),
(327, 'woocommerce_default_country', 'GB', 'yes'),
(328, 'woocommerce_store_postcode', '', 'yes'),
(329, 'woocommerce_allowed_countries', 'all', 'yes'),
(330, 'woocommerce_all_except_countries', '', 'yes'),
(331, 'woocommerce_specific_allowed_countries', '', 'yes'),
(332, 'woocommerce_ship_to_countries', '', 'yes'),
(333, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(334, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(335, 'woocommerce_calc_taxes', 'no', 'yes'),
(336, 'woocommerce_enable_coupons', 'yes', 'yes'),
(337, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(338, 'woocommerce_currency', 'GBP', 'yes'),
(339, 'woocommerce_currency_pos', 'left', 'yes'),
(340, 'woocommerce_price_thousand_sep', ',', 'yes'),
(341, 'woocommerce_price_decimal_sep', '.', 'yes'),
(342, 'woocommerce_price_num_decimals', '2', 'yes'),
(343, 'woocommerce_shop_page_id', '', 'yes'),
(344, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(345, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(346, 'woocommerce_placeholder_image', '104', 'yes'),
(347, 'woocommerce_weight_unit', 'kg', 'yes'),
(348, 'woocommerce_dimension_unit', 'cm', 'yes'),
(349, 'woocommerce_enable_reviews', 'yes', 'yes'),
(350, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(351, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(352, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(353, 'woocommerce_review_rating_required', 'yes', 'no'),
(354, 'woocommerce_manage_stock', 'yes', 'yes'),
(355, 'woocommerce_hold_stock_minutes', '60', 'no'),
(356, 'woocommerce_notify_low_stock', 'yes', 'no'),
(357, 'woocommerce_notify_no_stock', 'yes', 'no'),
(358, 'woocommerce_stock_email_recipient', 'roshanb54@gmail.com', 'no'),
(359, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(360, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(361, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(362, 'woocommerce_stock_format', '', 'yes'),
(363, 'woocommerce_file_download_method', 'force', 'no'),
(364, 'woocommerce_downloads_require_login', 'no', 'no'),
(365, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(366, 'woocommerce_prices_include_tax', 'no', 'yes'),
(367, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(368, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(369, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(370, 'woocommerce_tax_classes', '', 'yes'),
(371, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(372, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(373, 'woocommerce_price_display_suffix', '', 'yes'),
(374, 'woocommerce_tax_total_display', 'itemized', 'no'),
(375, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(376, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(377, 'woocommerce_ship_to_destination', 'billing', 'no'),
(378, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(379, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(380, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(381, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(382, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(383, 'woocommerce_registration_generate_username', 'yes', 'no'),
(384, 'woocommerce_registration_generate_password', 'yes', 'no'),
(385, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(386, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(387, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(388, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(389, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(390, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(391, 'woocommerce_trash_pending_orders', '', 'no'),
(392, 'woocommerce_trash_failed_orders', '', 'no'),
(393, 'woocommerce_trash_cancelled_orders', '', 'no'),
(394, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(395, 'woocommerce_email_from_name', 'Oriental Rug Cleaning Miami, Florida &#8211; Coral Gables Carpet Cleaning', 'no'),
(396, 'woocommerce_email_from_address', 'roshanb54@gmail.com', 'no'),
(397, 'woocommerce_email_header_image', '', 'no'),
(398, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(399, 'woocommerce_email_base_color', '#96588a', 'no'),
(400, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(401, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(402, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(403, 'woocommerce_cart_page_id', '', 'no'),
(404, 'woocommerce_checkout_page_id', '', 'no'),
(405, 'woocommerce_myaccount_page_id', '', 'no'),
(406, 'woocommerce_terms_page_id', '', 'no'),
(407, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(408, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(409, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(410, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(411, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(412, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(413, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(414, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(415, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(416, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(417, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(418, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(419, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(420, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(421, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(422, 'woocommerce_api_enabled', 'no', 'yes'),
(423, 'woocommerce_allow_tracking', 'no', 'no'),
(424, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(425, 'woocommerce_single_image_width', '600', 'yes'),
(426, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(427, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(428, 'woocommerce_demo_store', 'no', 'no'),
(429, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(430, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(431, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(432, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(434, 'default_product_cat', '18', 'yes'),
(437, 'woocommerce_version', '3.8.0', 'yes'),
(438, 'woocommerce_db_version', '3.8.0', 'yes'),
(439, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(440, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(441, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(442, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(443, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(444, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(445, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(446, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(447, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(448, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(449, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(450, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(451, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(452, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(457, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(458, '_transient_timeout_external_ip_address_::1', '1574606727', 'no'),
(459, '_transient_external_ip_address_::1', '27.34.25.206', 'no'),
(463, '_transient_timeout_wc_low_stock_count', '1576593940', 'no'),
(464, '_transient_wc_low_stock_count', '0', 'no'),
(465, '_transient_timeout_wc_outofstock_count', '1576593940', 'no'),
(466, '_transient_wc_outofstock_count', '0', 'no'),
(467, '_transient_timeout_wc_report_sales_by_date', '1574125572', 'no'),
(468, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"77e8cb4df1d2c1ae9fd461236c613717\";a:0:{}s:32:\"4fd60049a24195a98f9089d43b51e535\";a:0:{}s:32:\"d114d85835b2a84770fd364f213a2ebc\";a:0:{}s:32:\"87622ae87a1a72eeba927b51365b320b\";N;s:32:\"15adc25f76d5b66f13323b30f3b2c4d6\";a:0:{}s:32:\"5db0b27c77ddfd03906f07dbae2962e7\";a:0:{}s:32:\"946e56598cb36aa084bcec32c890b0f6\";a:0:{}s:32:\"78ecb8319a953d730fbf14edeb5b2de6\";a:0:{}s:32:\"4bcb3951dcfc41d3e66acfe48b076df4\";a:0:{}s:32:\"ee6dabbda0d767ec56b5ffc52a6f6e87\";a:0:{}s:32:\"f08d62eec438e176c16f25d44a600085\";a:0:{}s:32:\"fba49e651fd8ad873c2ea5333777f716\";N;s:32:\"9ded8f3d8619ea7f66b72de1189de8a3\";a:0:{}s:32:\"6a9773e947ae30ee811c2a7aaa5b21d1\";a:0:{}s:32:\"17498bdd9574330021654c5033bd55fb\";a:0:{}s:32:\"ac3e5a0d55d2e43baf80f2fca63b8fe8\";a:0:{}}', 'no'),
(469, '_transient_timeout_wc_admin_report', '1574125572', 'no'),
(470, '_transient_wc_admin_report', 'a:1:{s:32:\"eca77a2d09052da090f75477eb192e2b\";a:0:{}}', 'no'),
(471, '_transient_product_query-transient-version', '1574001958', 'yes'),
(477, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1574001993;}', 'no'),
(484, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(485, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(489, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(530, '_transient_timeout_wc_term_counts', '1576632527', 'no'),
(531, '_transient_wc_term_counts', 'a:6:{i:21;s:0:\"\";i:18;s:0:\"\";i:22;s:0:\"\";i:23;s:0:\"\";i:20;s:0:\"\";i:19;s:0:\"\";}', 'no'),
(563, '_site_transient_timeout_theme_roots', '1574044255', 'no'),
(564, '_site_transient_theme_roots', 'a:2:{s:4:\"gorg\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(565, '_transient_timeout__woocommerce_helper_updates', '1574085655', 'no'),
(566, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1574042455;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(583, 'product_cat_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `gorg_postmeta`
--

CREATE TABLE `gorg_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_postmeta`
--

INSERT INTO `gorg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1573181020:1'),
(4, 6, '_form', '<div class=\"row\">\n<div class=\"form-group col-lg-6\">\n[text* contact-name class:form-control placeholder \"Enter Name\"]\n</div>\n<div class=\"form-group col-lg-6\">\n<input required=\"required\" placeholder=\"Enter Email *\" id=\"email\" class=\"form-control\" name=\"email\" type=\"email\">\n</div>\n<div class=\"form-group col-lg-12\">\n<input placeholder=\"Enter Subject\" id=\"subject\" class=\"form-control\" name=\"subject\" type=\"subject\">\n</div>\n<div class=\"form-group col-lg-12\">\n<textarea required=\"required\" placeholder=\"Message *\" id=\"description\" class=\"form-control\" name=\"message\" rows=\"4\"></textarea>\n</div>\n<div class=\"col-lg-12\">\n<button type=\"submit\" title=\"Submit Your Message!\" class=\"btn btn-outline-white btn-radius\" id=\"submitButton\" name=\"submit\" value=\"Submit\">Submit</button>\n</div>\n<div class=\"col-lg-12\">\n<div id=\"alert-msg\" class=\"alert-msg text-center\"></div>\n</div>\n</div>'),
(5, 6, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:84:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\";s:6:\"sender\";s:83:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <info@gorg.com>\";s:9:\"recipient\";s:19:\"roshanb54@gmail.com\";s:4:\"body\";s:255:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:84:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\";s:6:\"sender\";s:89:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:197:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\";s:18:\"additional_headers\";s:29:\"Reply-To: roshanb54@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(7, 6, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(8, 6, '_additional_settings', ''),
(9, 6, '_locale', 'en_US'),
(12, 8, '_wp_trash_meta_status', 'publish'),
(13, 8, '_wp_trash_meta_time', '1573395992'),
(14, 9, '_wp_attached_file', '2019/11/logo_dark.png'),
(15, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:147;s:4:\"file\";s:21:\"2019/11/logo_dark.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"logo_dark-300x147.png\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_dark-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"logo_dark-600x130.png\";s:5:\"width\";i:600;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_dark-150x147.png\";s:5:\"width\";i:150;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo_dark-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 10, '_edit_lock', '1573482903:1'),
(17, 11, '_wp_attached_file', '2019/11/logo_white.png'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:147;s:4:\"file\";s:22:\"2019/11/logo_white.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"logo_white-300x147.png\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"logo_white-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"logo_white-600x130.png\";s:5:\"width\";i:600;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo_white-150x147.png\";s:5:\"width\";i:150;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"logo_white-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 10, '_wp_trash_meta_status', 'publish'),
(20, 10, '_wp_trash_meta_time', '1573482916'),
(21, 12, '_wp_trash_meta_status', 'publish'),
(22, 12, '_wp_trash_meta_time', '1573483603'),
(23, 13, '_wp_trash_meta_status', 'publish'),
(24, 13, '_wp_trash_meta_time', '1573483681'),
(25, 14, '_edit_lock', '1573484423:1'),
(26, 14, '_customize_restore_dismissed', '1'),
(27, 15, '_wp_trash_meta_status', 'publish'),
(28, 15, '_wp_trash_meta_time', '1573484452'),
(29, 16, '_wp_trash_meta_status', 'publish'),
(30, 16, '_wp_trash_meta_time', '1573484755'),
(31, 17, '_wp_trash_meta_status', 'publish'),
(32, 17, '_wp_trash_meta_time', '1573484972'),
(33, 18, '_wp_trash_meta_status', 'publish'),
(34, 18, '_wp_trash_meta_time', '1573485003'),
(35, 19, '_edit_lock', '1573485266:1'),
(36, 19, '_wp_trash_meta_status', 'publish'),
(37, 19, '_wp_trash_meta_time', '1573485271'),
(38, 20, '_edit_lock', '1573652770:1'),
(39, 22, '_edit_lock', '1573485393:1'),
(40, 24, '_edit_lock', '1573485407:1'),
(41, 26, '_edit_lock', '1573485418:1'),
(42, 28, '_edit_lock', '1573485433:1'),
(43, 30, '_menu_item_type', 'post_type'),
(44, 30, '_menu_item_menu_item_parent', '0'),
(45, 30, '_menu_item_object_id', '2'),
(46, 30, '_menu_item_object', 'page'),
(47, 30, '_menu_item_target', ''),
(48, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 30, '_menu_item_xfn', ''),
(50, 30, '_menu_item_url', ''),
(52, 31, '_menu_item_type', 'post_type'),
(53, 31, '_menu_item_menu_item_parent', '0'),
(54, 31, '_menu_item_object_id', '20'),
(55, 31, '_menu_item_object', 'page'),
(56, 31, '_menu_item_target', ''),
(57, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 31, '_menu_item_xfn', ''),
(59, 31, '_menu_item_url', ''),
(61, 32, '_menu_item_type', 'post_type'),
(62, 32, '_menu_item_menu_item_parent', '0'),
(63, 32, '_menu_item_object_id', '28'),
(64, 32, '_menu_item_object', 'page'),
(65, 32, '_menu_item_target', ''),
(66, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 32, '_menu_item_xfn', ''),
(68, 32, '_menu_item_url', ''),
(70, 33, '_menu_item_type', 'post_type'),
(71, 33, '_menu_item_menu_item_parent', '0'),
(72, 33, '_menu_item_object_id', '26'),
(73, 33, '_menu_item_object', 'page'),
(74, 33, '_menu_item_target', ''),
(75, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 33, '_menu_item_xfn', ''),
(77, 33, '_menu_item_url', ''),
(79, 34, '_menu_item_type', 'post_type'),
(80, 34, '_menu_item_menu_item_parent', '0'),
(81, 34, '_menu_item_object_id', '2'),
(82, 34, '_menu_item_object', 'page'),
(83, 34, '_menu_item_target', ''),
(84, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 34, '_menu_item_xfn', ''),
(86, 34, '_menu_item_url', ''),
(87, 34, '_menu_item_orphaned', '1573485582'),
(88, 35, '_menu_item_type', 'post_type'),
(89, 35, '_menu_item_menu_item_parent', '0'),
(90, 35, '_menu_item_object_id', '24'),
(91, 35, '_menu_item_object', 'page'),
(92, 35, '_menu_item_target', ''),
(93, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 35, '_menu_item_xfn', ''),
(95, 35, '_menu_item_url', ''),
(97, 36, '_menu_item_type', 'post_type'),
(98, 36, '_menu_item_menu_item_parent', '0'),
(99, 36, '_menu_item_object_id', '22'),
(100, 36, '_menu_item_object', 'page'),
(101, 36, '_menu_item_target', ''),
(102, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 36, '_menu_item_xfn', ''),
(104, 36, '_menu_item_url', ''),
(105, 37, '_edit_lock', '1573649725:1'),
(106, 38, '_wp_attached_file', '2019/11/banner1.jpg'),
(107, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/11/banner1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"banner1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(108, 39, '_wp_attached_file', '2019/11/banner2.jpg'),
(109, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/11/banner2.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"banner2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(110, 40, '_wp_attached_file', '2019/11/banner3.jpg'),
(111, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/11/banner3.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"banner3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(112, 37, '_thumbnail_id', '38'),
(113, 41, '_edit_lock', '1573527137:1'),
(114, 41, '_wp_trash_meta_status', 'publish'),
(115, 41, '_wp_trash_meta_time', '1573527172'),
(116, 42, '_wp_trash_meta_status', 'publish'),
(117, 42, '_wp_trash_meta_time', '1573527254'),
(118, 43, '_wp_trash_meta_status', 'publish'),
(119, 43, '_wp_trash_meta_time', '1573527683'),
(120, 44, '_edit_lock', '1573649708:1'),
(121, 44, '_thumbnail_id', '39'),
(122, 45, '_edit_last', '1'),
(123, 45, '_edit_lock', '1573528206:1'),
(124, 44, '_edit_last', '1'),
(125, 44, 'slider_text', 'Slider 2 Content Here'),
(126, 44, '_slider_text', 'field_5dca21f2de074'),
(127, 44, 'read_more_link', 'http://localhost/GrandOrientalRugGalleryWordpress/'),
(128, 44, '_read_more_link', 'field_5dca21fede075'),
(129, 37, '_edit_last', '1'),
(130, 37, 'slider_text', 'Lorem is simply text of the printing and typesetting industry.'),
(131, 37, '_slider_text', 'field_5dca21f2de074'),
(132, 37, 'read_more_link', 'http://localhost/GrandOrientalRugGalleryWordpress/'),
(133, 37, '_read_more_link', 'field_5dca21fede075'),
(134, 48, '_wp_trash_meta_status', 'publish'),
(135, 48, '_wp_trash_meta_time', '1573528368'),
(136, 49, '_wp_trash_meta_status', 'publish'),
(137, 49, '_wp_trash_meta_time', '1573528420'),
(138, 50, '_wp_trash_meta_status', 'publish'),
(139, 50, '_wp_trash_meta_time', '1573528432'),
(140, 51, '_wp_trash_meta_status', 'publish'),
(141, 51, '_wp_trash_meta_time', '1573529049'),
(143, 1, '_edit_lock', '1573649776:1'),
(144, 52, '_wp_trash_meta_status', 'publish'),
(145, 52, '_wp_trash_meta_time', '1573650457'),
(146, 53, '_wp_trash_meta_status', 'publish'),
(147, 53, '_wp_trash_meta_time', '1573651036'),
(148, 54, '_wp_trash_meta_status', 'publish'),
(149, 54, '_wp_trash_meta_time', '1573651402'),
(150, 57, '_wp_attached_file', '2019/11/about.jpg'),
(151, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:778;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2019/11/about.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"about-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"about-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"about-600x494.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:494;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x632.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:632;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 20, '_thumbnail_id', '57'),
(154, 58, '_edit_lock', '1573652158:1'),
(155, 58, '_wp_trash_meta_status', 'publish'),
(156, 58, '_wp_trash_meta_time', '1573652188'),
(157, 59, '_edit_lock', '1573652467:1'),
(158, 59, '_customize_restore_dismissed', '1'),
(159, 60, '_wp_trash_meta_status', 'publish'),
(160, 60, '_wp_trash_meta_time', '1573652494'),
(161, 61, '_edit_lock', '1573652598:1'),
(162, 61, '_wp_trash_meta_status', 'publish'),
(163, 61, '_wp_trash_meta_time', '1573652601'),
(164, 62, '_wp_trash_meta_status', 'publish'),
(165, 62, '_wp_trash_meta_time', '1573652859'),
(166, 63, '_wp_trash_meta_status', 'publish'),
(167, 63, '_wp_trash_meta_time', '1573652876'),
(168, 64, '_wp_trash_meta_status', 'publish'),
(169, 64, '_wp_trash_meta_time', '1573652903'),
(170, 66, '_wp_trash_meta_status', 'publish'),
(171, 66, '_wp_trash_meta_time', '1573747074'),
(172, 67, '_edit_lock', '1573747109:1'),
(173, 67, '_wp_trash_meta_status', 'publish'),
(174, 67, '_wp_trash_meta_time', '1573747117'),
(175, 68, '_edit_lock', '1573747696:1'),
(176, 68, '_wp_trash_meta_status', 'publish'),
(177, 68, '_wp_trash_meta_time', '1573747704'),
(178, 69, '_wp_trash_meta_status', 'publish'),
(179, 69, '_wp_trash_meta_time', '1573747730'),
(180, 70, '_edit_lock', '1573747958:1'),
(181, 70, '_wp_trash_meta_status', 'publish'),
(182, 70, '_wp_trash_meta_time', '1573747966'),
(183, 71, '_wp_trash_meta_status', 'publish'),
(184, 71, '_wp_trash_meta_time', '1573748377'),
(185, 72, '_wp_trash_meta_status', 'publish'),
(186, 72, '_wp_trash_meta_time', '1573748421'),
(187, 73, '_wp_trash_meta_status', 'publish'),
(188, 73, '_wp_trash_meta_time', '1573748490'),
(189, 74, '_menu_item_type', 'post_type'),
(190, 74, '_menu_item_menu_item_parent', '0'),
(191, 74, '_menu_item_object_id', '2'),
(192, 74, '_menu_item_object', 'page'),
(193, 74, '_menu_item_target', ''),
(194, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 74, '_menu_item_xfn', ''),
(196, 74, '_menu_item_url', ''),
(198, 75, '_menu_item_type', 'post_type'),
(199, 75, '_menu_item_menu_item_parent', '0'),
(200, 75, '_menu_item_object_id', '20'),
(201, 75, '_menu_item_object', 'page'),
(202, 75, '_menu_item_target', ''),
(203, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 75, '_menu_item_xfn', ''),
(205, 75, '_menu_item_url', ''),
(207, 76, '_menu_item_type', 'post_type'),
(208, 76, '_menu_item_menu_item_parent', '0'),
(209, 76, '_menu_item_object_id', '28'),
(210, 76, '_menu_item_object', 'page'),
(211, 76, '_menu_item_target', ''),
(212, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 76, '_menu_item_xfn', ''),
(214, 76, '_menu_item_url', ''),
(216, 77, '_menu_item_type', 'post_type'),
(217, 77, '_menu_item_menu_item_parent', '0'),
(218, 77, '_menu_item_object_id', '26'),
(219, 77, '_menu_item_object', 'page'),
(220, 77, '_menu_item_target', ''),
(221, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 77, '_menu_item_xfn', ''),
(223, 77, '_menu_item_url', ''),
(225, 78, '_menu_item_type', 'post_type'),
(226, 78, '_menu_item_menu_item_parent', '0'),
(227, 78, '_menu_item_object_id', '22'),
(228, 78, '_menu_item_object', 'page'),
(229, 78, '_menu_item_target', ''),
(230, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 78, '_menu_item_xfn', ''),
(232, 78, '_menu_item_url', ''),
(234, 79, '_menu_item_type', 'post_type'),
(235, 79, '_menu_item_menu_item_parent', '0'),
(236, 79, '_menu_item_object_id', '28'),
(237, 79, '_menu_item_object', 'page'),
(238, 79, '_menu_item_target', ''),
(239, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 79, '_menu_item_xfn', ''),
(241, 79, '_menu_item_url', ''),
(243, 80, '_menu_item_type', 'post_type'),
(244, 80, '_menu_item_menu_item_parent', '0'),
(245, 80, '_menu_item_object_id', '24'),
(246, 80, '_menu_item_object', 'page'),
(247, 80, '_menu_item_target', ''),
(248, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 80, '_menu_item_xfn', ''),
(250, 80, '_menu_item_url', ''),
(252, 81, '_menu_item_type', 'post_type'),
(253, 81, '_menu_item_menu_item_parent', '0'),
(254, 81, '_menu_item_object_id', '20'),
(255, 81, '_menu_item_object', 'page'),
(256, 81, '_menu_item_target', ''),
(257, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 81, '_menu_item_xfn', ''),
(259, 81, '_menu_item_url', ''),
(260, 82, '_wp_trash_meta_status', 'publish'),
(261, 82, '_wp_trash_meta_time', '1573957374'),
(262, 83, '_wp_trash_meta_status', 'publish'),
(263, 83, '_wp_trash_meta_time', '1573957408'),
(266, 6, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(267, 84, '_wp_trash_meta_status', 'publish'),
(268, 84, '_wp_trash_meta_time', '1573957843'),
(269, 85, '_wp_trash_meta_status', 'publish'),
(270, 85, '_wp_trash_meta_time', '1573958074'),
(271, 86, '_wp_trash_meta_status', 'publish'),
(272, 86, '_wp_trash_meta_time', '1573958083'),
(273, 87, '_wp_trash_meta_status', 'publish'),
(274, 87, '_wp_trash_meta_time', '1573958118'),
(275, 88, '_edit_last', '1'),
(276, 88, '_edit_lock', '1574000782:1'),
(277, 92, '_edit_last', '1'),
(278, 92, '_edit_lock', '1574001748:1'),
(279, 93, '_wp_attached_file', '2019/11/user1.jpg'),
(280, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:17:\"2019/11/user1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 94, '_wp_attached_file', '2019/11/user2.jpg'),
(282, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:17:\"2019/11/user2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 95, '_wp_attached_file', '2019/11/user3.jpg'),
(284, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:17:\"2019/11/user3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 96, '_wp_attached_file', '2019/11/user4.jpg'),
(286, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:17:\"2019/11/user4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 92, 'testimonial_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla a lorem posuere, porttitor justo ac, porttitor sapien. Pellentesque nisi justo, finibus eu vestibulum sit amet, venenatis et purus. Nulla magna diam, consectetur nec fringilla sit amet, pharetra eget velit.'),
(289, 92, '_testimonial_content', 'field_5dd0b4de7079e'),
(290, 92, 'designation', 'Creative Director'),
(291, 92, '_designation', 'field_5dd0b4d37079d'),
(292, 97, '_edit_last', '1'),
(293, 97, '_edit_lock', '1573958902:1'),
(294, 97, '_thumbnail_id', '93'),
(295, 97, 'testimonial_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla a lorem posuere, porttitor justo ac, porttitor sapien. Pellentesque nisi justo, finibus eu vestibulum sit amet, venenatis et purus. Nulla magna diam, consectetur nec fringilla sit amet, pharetra eget velit.'),
(296, 97, '_testimonial_content', 'field_5dd0b4de7079e'),
(297, 97, 'designation', 'Designation Here'),
(298, 97, '_designation', 'field_5dd0b4d37079d'),
(299, 98, '_edit_last', '1'),
(300, 98, '_edit_lock', '1573958921:1'),
(301, 98, '_thumbnail_id', '94'),
(302, 98, 'testimonial_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla a lorem posuere, porttitor justo ac, porttitor sapien. Pellentesque nisi justo, finibus eu vestibulum sit amet, venenatis et purus. Nulla magna diam, consectetur nec fringilla sit amet, pharetra eget velit.'),
(303, 98, '_testimonial_content', 'field_5dd0b4de7079e'),
(304, 98, 'designation', 'Designation Here'),
(305, 98, '_designation', 'field_5dd0b4d37079d'),
(306, 99, '_edit_last', '1'),
(307, 99, '_edit_lock', '1574000530:1'),
(308, 99, '_thumbnail_id', '95'),
(309, 99, 'testimonial_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla a lorem posuere, porttitor justo ac, porttitor sapien. Pellentesque nisi justo, finibus eu vestibulum sit amet, venenatis et purus. Nulla magna diam, consectetur nec fringilla sit amet, pharetra eget velit.'),
(310, 99, '_testimonial_content', 'field_5dd0b4de7079e'),
(311, 99, 'designation', 'Designation Here'),
(312, 99, '_designation', 'field_5dd0b4d37079d'),
(313, 101, '_wp_trash_meta_status', 'publish'),
(314, 101, '_wp_trash_meta_time', '1574000144'),
(315, 102, '_wp_trash_meta_status', 'publish'),
(316, 102, '_wp_trash_meta_time', '1574000261'),
(317, 103, '_wp_trash_meta_status', 'publish'),
(318, 103, '_wp_trash_meta_time', '1574000447'),
(319, 92, '_thumbnail_id', '96'),
(320, 104, '_wp_attached_file', 'woocommerce-placeholder.png'),
(321, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 105, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1574001957;}'),
(323, 107, '_wp_attached_file', '2019/11/product1.jpg'),
(324, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/11/product1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"product1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS-1Ds Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1167200293\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"32\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(325, 108, '_wp_attached_file', '2019/11/product2.jpg'),
(326, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/11/product2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"product2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:32:\"1996-98 AccuSoft Inc., All right\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(327, 109, '_wp_attached_file', '2019/11/product3.jpg'),
(328, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/11/product3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"product3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(329, 110, '_wp_attached_file', '2019/11/product4.jpg'),
(330, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/11/product4.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"product4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(331, 111, '_wp_attached_file', '2019/11/product5.jpg'),
(332, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/11/product5.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product5-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"product5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(333, 112, '_edit_lock', '1574039297:1'),
(334, 112, '_wp_trash_meta_status', 'publish'),
(335, 112, '_wp_trash_meta_time', '1574039303'),
(336, 113, '_wp_trash_meta_status', 'publish'),
(337, 113, '_wp_trash_meta_time', '1574039509'),
(338, 114, '_wp_trash_meta_status', 'publish'),
(339, 114, '_wp_trash_meta_time', '1574039540'),
(340, 115, '_wp_trash_meta_status', 'publish'),
(341, 115, '_wp_trash_meta_time', '1574039567'),
(342, 116, '_wp_trash_meta_status', 'publish'),
(343, 116, '_wp_trash_meta_time', '1574043634');

-- --------------------------------------------------------

--
-- Table structure for table `gorg_posts`
--

CREATE TABLE `gorg_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_posts`
--

INSERT INTO `gorg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-07 02:00:15', '2019-11-07 02:00:15', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-11-07 02:00:15', '2019-11-07 02:00:15', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-07 02:00:15', '2019-11-07 02:00:15', '', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2019-11-08 02:41:39', '2019-11-08 02:41:39', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-07 02:00:15', '2019-11-07 02:00:15', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/GrandOrientalRugGalleryWordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-07 02:00:15', '2019-11-07 02:00:15', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-11-08 02:41:39', '2019-11-08 02:41:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-11-08 02:41:39', '2019-11-08 02:41:39', '', 2, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/08/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-11-10 13:34:30', '2019-11-10 13:34:30', '<div class=\"row\">\r\n<div class=\"form-group col-lg-6\">\r\n[text* contact-name class:form-control placeholder \"Enter Name\"]\r\n</div>\r\n<div class=\"form-group col-lg-6\">\r\n<input required=\"required\" placeholder=\"Enter Email *\" id=\"email\" class=\"form-control\" name=\"email\" type=\"email\">\r\n</div>\r\n<div class=\"form-group col-lg-12\">\r\n<input placeholder=\"Enter Subject\" id=\"subject\" class=\"form-control\" name=\"subject\" type=\"subject\">\r\n</div>\r\n<div class=\"form-group col-lg-12\">\r\n<textarea required=\"required\" placeholder=\"Message *\" id=\"description\" class=\"form-control\" name=\"message\" rows=\"4\"></textarea>\r\n</div>\r\n<div class=\"col-lg-12\">\r\n<button type=\"submit\" title=\"Submit Your Message!\" class=\"btn btn-outline-white btn-radius\" id=\"submitButton\" name=\"submit\" value=\"Submit\">Submit</button>\r\n</div>\r\n<div class=\"col-lg-12\">\r\n<div id=\"alert-msg\" class=\"alert-msg text-center\"></div>\r\n</div>\r\n</div>\n1\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <info@gorg.com>\nroshanb54@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nReply-To: [your-email]\n\n\n\n\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nReply-To: roshanb54@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-17 02:30:25', '2019-11-17 02:30:25', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=wpcf7_contact_form&#038;p=6', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2019-11-10 14:26:32', '2019-11-10 14:26:32', '{\n    \"gorg_theme_options[gorg_social_facebook]\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:32\"\n    },\n    \"gorg_theme_options[gorg_social_twitter]\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:32\"\n    },\n    \"gorg_theme_options[gorg_social_googleplus]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8172a661-86a5-4686-a2ee-ddc348fe8604', '', '', '2019-11-10 14:26:32', '2019-11-10 14:26:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/10/8172a661-86a5-4686-a2ee-ddc348fe8604/', 0, 'customize_changeset', '', 0),
(9, 1, '2019-11-11 14:35:00', '2019-11-11 14:35:00', '', 'logo_dark', '', 'inherit', 'open', 'closed', '', 'logo_dark', '', '', '2019-11-11 14:35:00', '2019-11-11 14:35:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_dark.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2019-11-11 14:35:15', '2019-11-11 14:35:15', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:35:00\"\n    },\n    \"gorg::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:35:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf18f1d8-533f-4307-8636-baff2386959c', '', '', '2019-11-11 14:35:15', '2019-11-11 14:35:15', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2019-11-11 14:35:02', '2019-11-11 14:35:02', '', 'logo_white', '', 'inherit', 'open', 'closed', '', 'logo_white', '', '', '2019-11-11 14:35:02', '2019-11-11 14:35:02', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2019-11-11 14:46:42', '2019-11-11 14:46:42', '{\n    \"gorg_theme_options[white_image]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:46:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66d9f759-e72e-423e-896d-5bc327d1d54c', '', '', '2019-11-11 14:46:42', '2019-11-11 14:46:42', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/66d9f759-e72e-423e-896d-5bc327d1d54c/', 0, 'customize_changeset', '', 0),
(13, 1, '2019-11-11 14:48:01', '2019-11-11 14:48:01', '{\n    \"gorg_theme_options[contact_address]\": {\n        \"value\": \"383 Aragon Ave Coral Gables Miami, FL 33134\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:48:01\"\n    },\n    \"gorg_theme_options[contact_fphone]\": {\n        \"value\": \"305 442 4500\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:48:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ddc75819-2aba-4366-bedb-ffb3c051e0ee', '', '', '2019-11-11 14:48:01', '2019-11-11 14:48:01', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/ddc75819-2aba-4366-bedb-ffb3c051e0ee/', 0, 'customize_changeset', '', 0),
(14, 1, '2019-11-11 15:00:23', '0000-00-00 00:00:00', '[]', '', '', 'auto-draft', 'closed', 'closed', '', 'be5530ab-3642-49b1-bc90-9e3d54abd39a', '', '', '2019-11-11 15:00:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2019-11-11 15:00:51', '2019-11-11 15:00:51', '{\n    \"gorg_theme_options[white_logo]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:00:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b71a7697-39d5-4a45-be83-1527f7746633', '', '', '2019-11-11 15:00:51', '2019-11-11 15:00:51', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/b71a7697-39d5-4a45-be83-1527f7746633/', 0, 'customize_changeset', '', 0),
(16, 1, '2019-11-11 15:05:55', '2019-11-11 15:05:55', '{\n    \"gorg_theme_options[contact_address]\": {\n        \"value\": \"383 Aragon Ave Coral Gables Miami, FL 33134\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:05:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4305341-84ae-41ba-96ab-ebb8fc0d0182', '', '', '2019-11-11 15:05:55', '2019-11-11 15:05:55', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/f4305341-84ae-41ba-96ab-ebb8fc0d0182/', 0, 'customize_changeset', '', 0),
(17, 1, '2019-11-11 15:09:32', '2019-11-11 15:09:32', '{\n    \"gorg_theme_options[gorg_social_instagram]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:09:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '32134f56-3c39-4f48-b010-e7181104396c', '', '', '2019-11-11 15:09:32', '2019-11-11 15:09:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/32134f56-3c39-4f48-b010-e7181104396c/', 0, 'customize_changeset', '', 0),
(18, 1, '2019-11-11 15:10:02', '2019-11-11 15:10:02', '{\n    \"gorg_theme_options[gorg_social_linkedin]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    },\n    \"gorg_theme_options[gorg_social_googleplus]\": {\n        \"value\": \"http://4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    },\n    \"gorg_theme_options[gorg_social_instagram]\": {\n        \"value\": \"http://5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    },\n    \"gorg_theme_options[gorg_social_youtube]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb12e1d6-911e-436a-bde3-9956de34e8ff', '', '', '2019-11-11 15:10:02', '2019-11-11 15:10:02', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/bb12e1d6-911e-436a-bde3-9956de34e8ff/', 0, 'customize_changeset', '', 0),
(19, 1, '2019-11-11 15:14:30', '2019-11-11 15:14:30', '{\n    \"gorg_theme_options[gorg_social_linkedin]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:14:26\"\n    },\n    \"gorg_theme_options[gorg_social_youtube]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:14:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e147f795-32a5-4850-a264-595a3322e182', '', '', '2019-11-11 15:14:30', '2019-11-11 15:14:30', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2019-11-11 15:18:38', '2019-11-11 15:18:38', '<!-- wp:paragraph -->\n<p> At Grand Oriental Rug Gallery, we offer an everlasting commitment to providing our clientele an exquisite selection of the highest quality hand-made carpets available. Located in the heart of Coral Gables, Florida, our showroom features a large and diverse selection of Contemporary rugs, Traditional Area rugs, Tibetan rugs, Animal prints, and Modern century rugs. Providing over three generations of knowledge, service, and experience, our company strives to bridge the gap between art, design, and architecture by making rugs a key element of interior design, and our end goal is to provide the highest quality hand-made carpets available to our customers, with the hopes of being able to implement and integrate them perfectly into their existing household décor. Not only are you able to choose from our existing stock, but you also have the option of selecting your own pattern and color scheme using our color reference system consisting of over 6,000 shades of colors to design your own custom rug tailored to your liking. </p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-11-13 13:31:00', '2019-11-13 13:31:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-11-11 15:18:38', '2019-11-11 15:18:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-11-11 15:18:38', '2019-11-11 15:18:38', '', 20, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-11-11 15:18:54', '2019-11-11 15:18:54', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-11-11 15:18:54', '2019-11-11 15:18:54', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-11-11 15:18:54', '2019-11-11 15:18:54', '', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-11 15:18:54', '2019-11-11 15:18:54', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 'Locations', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 24, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 26, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 28, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-11-11 15:20:15', '2019-11-11 15:20:15', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-11-11 15:20:21', '2019-11-11 15:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-11-11 15:20:15', '2019-11-11 15:20:15', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-11-11 15:20:21', '2019-11-11 15:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2019-11-11 15:20:16', '2019-11-11 15:20:16', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-11-11 15:20:21', '2019-11-11 15:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2019-11-11 15:20:16', '2019-11-11 15:20:16', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-11-11 15:20:21', '2019-11-11 15:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=33', 5, 'nav_menu_item', '', 0),
(34, 1, '2019-11-11 15:19:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-11 15:19:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2019-11-11 15:20:16', '2019-11-11 15:20:16', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-11-11 15:20:21', '2019-11-11 15:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2019-11-11 15:20:15', '2019-11-11 15:20:15', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-11-11 15:20:21', '2019-11-11 15:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2019-11-12 02:39:46', '2019-11-12 02:39:46', '<!-- wp:paragraph -->\n<p>\n\nLorem is simply text of the printing and typesetting industry.\n\n</p>\n<!-- /wp:paragraph -->', 'Welcome to GORG', '', 'publish', 'closed', 'closed', '', 'welcome-to-gorg', '', '', '2019-11-12 03:11:32', '2019-11-12 03:11:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=home_slider&#038;p=37', 0, 'home_slider', '', 0),
(38, 1, '2019-11-12 02:39:34', '2019-11-12 02:39:34', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2019-11-12 02:39:34', '2019-11-12 02:39:34', '', 37, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-11-12 02:39:36', '2019-11-12 02:39:36', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2019-11-12 02:39:36', '2019-11-12 02:39:36', '', 37, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-11-12 02:39:37', '2019-11-12 02:39:37', '', 'banner3', '', 'inherit', 'open', 'closed', '', 'banner3', '', '', '2019-11-12 02:39:37', '2019-11-12 02:39:37', '', 37, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/banner3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-11-12 02:52:51', '2019-11-12 02:52:51', '{\n    \"gorg_theme_options[show_static_content]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 02:52:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3c2c9149-313e-4bd2-b9ed-8046b11c0a8a', '', '', '2019-11-12 02:52:51', '2019-11-12 02:52:51', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2019-11-12 02:54:14', '2019-11-12 02:54:14', '{\n    \"gorg_theme_options[slider_posts]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 02:54:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '38aaa1aa-6d1c-4cf4-ba4e-ac9f15e07a91', '', '', '2019-11-12 02:54:14', '2019-11-12 02:54:14', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/12/38aaa1aa-6d1c-4cf4-ba4e-ac9f15e07a91/', 0, 'customize_changeset', '', 0),
(43, 1, '2019-11-12 03:01:23', '2019-11-12 03:01:23', '{\n    \"gorg_theme_options[show_static_content]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 03:01:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7b1c5a4-bb36-40de-b531-0bb8587885f9', '', '', '2019-11-12 03:01:23', '2019-11-12 03:01:23', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/12/b7b1c5a4-bb36-40de-b531-0bb8587885f9/', 0, 'customize_changeset', '', 0),
(44, 1, '2019-11-12 03:04:08', '2019-11-12 03:04:08', '<!-- wp:paragraph -->\n<p>Slider 2 Content Here</p>\n<!-- /wp:paragraph -->', 'Slider 2 title Here', '', 'publish', 'closed', 'closed', '', 'slider-2-title-here', '', '', '2019-11-12 03:11:41', '2019-11-12 03:11:41', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=home_slider&#038;p=44', 0, 'home_slider', '', 0),
(45, 1, '2019-11-12 03:07:58', '2019-11-12 03:07:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home_slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slider Options', 'slider-options', 'publish', 'closed', 'closed', '', 'group_5dca21e4cb568', '', '', '2019-11-12 03:07:58', '2019-11-12 03:07:58', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2019-11-12 03:07:58', '2019-11-12 03:07:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Slider Text', 'slider_text', 'publish', 'closed', 'closed', '', 'field_5dca21f2de074', '', '', '2019-11-12 03:07:58', '2019-11-12 03:07:58', '', 45, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2019-11-12 03:07:58', '2019-11-12 03:07:58', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Read More Link', 'read_more_link', 'publish', 'closed', 'closed', '', 'field_5dca21fede075', '', '', '2019-11-12 03:07:58', '2019-11-12 03:07:58', '', 45, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 1, '2019-11-12 03:12:47', '2019-11-12 03:12:47', '{\n    \"gorg_theme_options[show_slider_arrow]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 03:12:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '924ac5ef-3523-461d-a5ab-2a1098b5bd2f', '', '', '2019-11-12 03:12:47', '2019-11-12 03:12:47', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/12/924ac5ef-3523-461d-a5ab-2a1098b5bd2f/', 0, 'customize_changeset', '', 0),
(49, 1, '2019-11-12 03:13:40', '2019-11-12 03:13:40', '{\n    \"gorg_theme_options[slider_static_title]\": {\n        \"value\": \"Welcome to GORG\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 03:13:40\"\n    },\n    \"gorg_theme_options[slider_static_content]\": {\n        \"value\": \"This is the Short Description\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 03:13:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8c1449b1-9990-4cae-a20f-9d4fe31c7830', '', '', '2019-11-12 03:13:40', '2019-11-12 03:13:40', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/12/8c1449b1-9990-4cae-a20f-9d4fe31c7830/', 0, 'customize_changeset', '', 0),
(50, 1, '2019-11-12 03:13:51', '2019-11-12 03:13:51', '{\n    \"gorg_theme_options[show_static_content]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 03:13:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '13cd82ee-87c7-43b7-aa56-07c3e3599be4', '', '', '2019-11-12 03:13:51', '2019-11-12 03:13:51', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/12/13cd82ee-87c7-43b7-aa56-07c3e3599be4/', 0, 'customize_changeset', '', 0),
(51, 1, '2019-11-12 03:24:09', '2019-11-12 03:24:09', '{\n    \"gorg_theme_options[show_static_content]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 03:24:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7562f7d2-1402-489f-8e35-6419638a12d0', '', '', '2019-11-12 03:24:09', '2019-11-12 03:24:09', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/12/7562f7d2-1402-489f-8e35-6419638a12d0/', 0, 'customize_changeset', '', 0),
(52, 1, '2019-11-13 13:07:36', '2019-11-13 13:07:36', '{\n    \"gorg_theme_options[welcome_title]\": {\n        \"value\": \"Welcome to GROG\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:07:36\"\n    },\n    \"gorg_theme_options[select_about_page]\": {\n        \"value\": \"20\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:07:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e514bb0f-8e6f-4c31-bc0c-f3b7cacd3a8d', '', '', '2019-11-13 13:07:36', '2019-11-13 13:07:36', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/e514bb0f-8e6f-4c31-bc0c-f3b7cacd3a8d/', 0, 'customize_changeset', '', 0),
(53, 1, '2019-11-13 13:17:16', '2019-11-13 13:17:16', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"300\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:17:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3615b0cc-2bb1-4418-bde5-d4f9def7bb8b', '', '', '2019-11-13 13:17:16', '2019-11-13 13:17:16', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/3615b0cc-2bb1-4418-bde5-d4f9def7bb8b/', 0, 'customize_changeset', '', 0),
(54, 1, '2019-11-13 13:23:21', '2019-11-13 13:23:21', '{\n    \"gorg_theme_options[select_about_page]\": {\n        \"value\": \"20\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:23:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a70855e-20c3-47be-94f5-d63324d3296c', '', '', '2019-11-13 13:23:21', '2019-11-13 13:23:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/6a70855e-20c3-47be-94f5-d63324d3296c/', 0, 'customize_changeset', '', 0),
(55, 1, '2019-11-13 13:24:55', '2019-11-13 13:24:55', '<!-- wp:paragraph -->\n<p> At Grand Oriental Rug Gallery, we offer an everlasting commitment to providing our clientele an exquisite selection of the highest quality hand-made carpets available. Located in the heart of Coral Gables, Florida, our showroom features a large and diverse selection of Contemporary rugs, Traditional Area rugs, Tibetan rugs, Animal prints, and Modern century rugs. Providing over three generations of knowledge, service, and experience, our company strives to bridge the gap between art, design, and architecture by making rugs a key element of interior design </p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-11-13 13:24:55', '2019-11-13 13:24:55', '', 20, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/20-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-11-13 13:25:33', '2019-11-13 13:25:33', '<!-- wp:paragraph -->\n<p> At Grand Oriental Rug Gallery, we offer an everlasting commitment to providing our clientele an exquisite selection of the highest quality hand-made carpets available. Located in the heart of Coral Gables, Florida, our showroom features a large and diverse selection of Contemporary rugs, Traditional Area rugs, Tibetan rugs, Animal prints, and Modern century rugs. Providing over three generations of knowledge, service, and experience, our company strives to bridge the gap between art, design, and architecture by making rugs a key element of interior design, and our end goal is to provide the highest quality hand-made carpets available to our customers, with the hopes of being able to implement and integrate them perfectly into their existing household décor. Not only are you able to choose from our existing stock, but you also have the option of selecting your own pattern and color scheme using our color reference system consisting of over 6,000 shades of colors to design your own custom rug tailored to your liking. </p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-11-13 13:25:33', '2019-11-13 13:25:33', '', 20, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/20-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-11-13 13:27:59', '2019-11-13 13:27:59', '', 'about', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2019-11-13 13:27:59', '2019-11-13 13:27:59', '', 20, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-11-13 13:36:27', '2019-11-13 13:36:27', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:35:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b3497c49-7e25-4edd-bb57-1dd4c6b03388', '', '', '2019-11-13 13:36:27', '2019-11-13 13:36:27', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2019-11-13 13:39:20', '0000-00-00 00:00:00', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:39:20\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0fc9e37b-7350-4c81-8db7-294f55b1a35b', '', '', '2019-11-13 13:39:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2019-11-13 13:41:33', '2019-11-13 13:41:33', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"300\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:41:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '12ad4da5-f538-4b87-ac57-628c7f6edcc6', '', '', '2019-11-13 13:41:33', '2019-11-13 13:41:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/12ad4da5-f538-4b87-ac57-628c7f6edcc6/', 0, 'customize_changeset', '', 0),
(61, 1, '2019-11-13 13:43:21', '2019-11-13 13:43:21', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:43:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3e464c44-b45a-4b2d-98d2-baf81413b29f', '', '', '2019-11-13 13:43:21', '2019-11-13 13:43:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2019-11-13 13:47:39', '2019-11-13 13:47:39', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:47:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8f810fe-d525-4482-9060-f6cfcb662324', '', '', '2019-11-13 13:47:39', '2019-11-13 13:47:39', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/d8f810fe-d525-4482-9060-f6cfcb662324/', 0, 'customize_changeset', '', 0),
(63, 1, '2019-11-13 13:47:56', '2019-11-13 13:47:56', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:47:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '298a40db-bc2b-4bd1-b3cd-d45b56c666e9', '', '', '2019-11-13 13:47:56', '2019-11-13 13:47:56', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/298a40db-bc2b-4bd1-b3cd-d45b56c666e9/', 0, 'customize_changeset', '', 0),
(64, 1, '2019-11-13 13:48:22', '2019-11-13 13:48:22', '{\n    \"gorg_theme_options[select_about_page]\": {\n        \"value\": \"20\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:48:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d8697f2-3881-4b03-a498-195b81566292', '', '', '2019-11-13 13:48:22', '2019-11-13 13:48:22', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/8d8697f2-3881-4b03-a498-195b81566292/', 0, 'customize_changeset', '', 0),
(65, 1, '2019-11-14 15:49:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-14 15:49:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2019-11-14 15:57:53', '2019-11-14 15:57:53', '{\n    \"gorg_theme_options[footer_copyright]\": {\n        \"value\": \"\\u00a92019 GORG. All Rights Reserved.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 15:57:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fb35a29f-23a6-4926-9240-eb6747744a6f', '', '', '2019-11-14 15:57:53', '2019-11-14 15:57:53', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/14/fb35a29f-23a6-4926-9240-eb6747744a6f/', 0, 'customize_changeset', '', 0),
(67, 1, '2019-11-14 15:58:36', '2019-11-14 15:58:36', '{\n    \"gorg_theme_options[show_developer_footer]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 15:58:07\"\n    },\n    \"gorg_theme_options[footer_logo]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 15:58:16\"\n    },\n    \"gorg_theme_options[footer_text]\": {\n        \"value\": \"Phasellus blandit massa enim. elit id varius nunc. Lorem ipsum dolor sit amet, consectetur industry.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 15:58:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5af1cbd3-9032-4707-8c34-c0e26ee8ac0a', '', '', '2019-11-14 15:58:36', '2019-11-14 15:58:36', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2019-11-14 16:08:24', '2019-11-14 16:08:24', '{\n    \"gorg_theme_options[contact_address]\": {\n        \"value\": \"Grand Oriental Rug Gallery,<br/>\\n383 Aragon Ave <br/>\\nCoral Gables Miami, FL 33134\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:08:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd470ca53-8103-4057-9d97-d20698f52ab0', '', '', '2019-11-14 16:08:24', '2019-11-14 16:08:24', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=68', 0, 'customize_changeset', '', 0),
(69, 1, '2019-11-14 16:08:49', '2019-11-14 16:08:49', '{\n    \"gorg_theme_options[contact_email]\": {\n        \"value\": \" info@grandorientalruggallery.com\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:08:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a75fd873-e1c6-42c5-bc80-621186b1b458', '', '', '2019-11-14 16:08:49', '2019-11-14 16:08:49', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/14/a75fd873-e1c6-42c5-bc80-621186b1b458/', 0, 'customize_changeset', '', 0),
(70, 1, '2019-11-14 16:12:46', '2019-11-14 16:12:46', '{\n    \"gorg_theme_options[contact_fax]\": {\n        \"value\": \"305 442 4502\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:12:38\"\n    },\n    \"gorg_theme_options[contact_sphone]\": {\n        \"value\": \"305 490 1936\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:12:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '64797444-b986-41a8-b772-29dca13df939', '', '', '2019-11-14 16:12:46', '2019-11-14 16:12:46', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=70', 0, 'customize_changeset', '', 0),
(71, 1, '2019-11-14 16:19:37', '2019-11-14 16:19:37', '{\n    \"gorg_theme_options[contact_sphone]\": {\n        \"value\": \"305 490 1936\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:19:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd9d2c0c-522e-41f2-a4c5-b86714118b11', '', '', '2019-11-14 16:19:37', '2019-11-14 16:19:37', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/14/bd9d2c0c-522e-41f2-a4c5-b86714118b11/', 0, 'customize_changeset', '', 0),
(72, 1, '2019-11-14 16:20:21', '2019-11-14 16:20:21', '{\n    \"gorg_theme_options[contact_sphone]\": {\n        \"value\": \"305 490 1936\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:20:21\"\n    },\n    \"gorg_theme_options[contact_fax]\": {\n        \"value\": \"305 442 4502\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:20:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f79145b-b05a-4669-a513-b6a4dfe97f84', '', '', '2019-11-14 16:20:21', '2019-11-14 16:20:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/14/0f79145b-b05a-4669-a513-b6a4dfe97f84/', 0, 'customize_changeset', '', 0),
(73, 1, '2019-11-14 16:21:29', '2019-11-14 16:21:29', '{\n    \"gorg_theme_options[footer_copyright]\": {\n        \"value\": \"&copy; 2019 All Rights Reserved by GORG.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 16:21:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21f0b797-c87f-42bd-a5be-f1e2b6d3383b', '', '', '2019-11-14 16:21:29', '2019-11-14 16:21:29', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/14/21f0b797-c87f-42bd-a5be-f1e2b6d3383b/', 0, 'customize_changeset', '', 0),
(74, 1, '2019-11-15 05:03:12', '2019-11-15 05:03:12', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2019-11-15 05:03:12', '2019-11-15 05:03:12', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2019-11-15 05:03:12', '2019-11-15 05:03:12', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2019-11-15 05:03:12', '2019-11-15 05:03:12', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2019-11-15 05:03:13', '2019-11-15 05:03:13', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2019-11-15 05:03:13', '2019-11-15 05:03:13', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2019-11-15 05:03:13', '2019-11-15 05:03:13', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2019-11-15 05:03:13', '2019-11-15 05:03:13', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=77', 4, 'nav_menu_item', '', 0),
(78, 1, '2019-11-15 05:03:13', '2019-11-15 05:03:13', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2019-11-15 05:03:13', '2019-11-15 05:03:13', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=78', 5, 'nav_menu_item', '', 0),
(79, 1, '2019-11-15 05:03:32', '2019-11-15 05:03:32', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2019-11-15 05:03:32', '2019-11-15 05:03:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2019-11-15 05:03:33', '2019-11-15 05:03:33', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2019-11-15 05:03:33', '2019-11-15 05:03:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2019-11-15 05:03:33', '2019-11-15 05:03:33', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2019-11-15 05:03:33', '2019-11-15 05:03:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2019-11-17 02:22:54', '2019-11-17 02:22:54', '{\n    \"gorg_theme_options[contact_work]\": {\n        \"value\": \"Mon to Fri - 10:00AM- 6:00PM<br/>\\nSat - 11:00AM - 6:00PM\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:22:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e44a5815-8afa-4d60-ba7c-56c1252702b3', '', '', '2019-11-17 02:22:54', '2019-11-17 02:22:54', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/e44a5815-8afa-4d60-ba7c-56c1252702b3/', 0, 'customize_changeset', '', 0),
(83, 1, '2019-11-17 02:23:27', '2019-11-17 02:23:27', '{\n    \"gorg_theme_options[contact_map_iframe]\": {\n        \"value\": \"<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193229.77301255226!2d-74.05531241936525!3d40.823236500441624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f613438663b5%3A0xce20073c8862af08!2sW+123rd+St%2C+New+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1533565007513\\\" allowfullscreen=\\\"\\\" frameborder=\\\"0\\\"></iframe>\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:23:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '471ce725-db15-47c3-832b-03a843f067ff', '', '', '2019-11-17 02:23:27', '2019-11-17 02:23:27', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/471ce725-db15-47c3-832b-03a843f067ff/', 0, 'customize_changeset', '', 0),
(84, 1, '2019-11-17 02:30:43', '2019-11-17 02:30:43', '{\n    \"gorg_theme_options[contact_form]\": {\n        \"value\": \"[contact-form-7 id=\\\"6\\\" title=\\\"Contact form\\\"]\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:30:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee7a1d5b-82f9-4772-b900-9ca6910f96cf', '', '', '2019-11-17 02:30:43', '2019-11-17 02:30:43', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/ee7a1d5b-82f9-4772-b900-9ca6910f96cf/', 0, 'customize_changeset', '', 0),
(85, 1, '2019-11-17 02:34:33', '2019-11-17 02:34:33', '{\n    \"gorg_theme_options[contact_form]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:34:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e926b10b-c57b-4b5f-a918-7e373bd09a13', '', '', '2019-11-17 02:34:33', '2019-11-17 02:34:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/e926b10b-c57b-4b5f-a918-7e373bd09a13/', 0, 'customize_changeset', '', 0),
(86, 1, '2019-11-17 02:34:43', '2019-11-17 02:34:43', '{\n    \"gorg_theme_options[contact_form]\": {\n        \"value\": \"[contact-form-7 id=\\\"6\\\" title=\\\"Contact form\\\"]\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:34:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2777b981-69f7-4497-93c4-5965be5645a7', '', '', '2019-11-17 02:34:43', '2019-11-17 02:34:43', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/2777b981-69f7-4497-93c4-5965be5645a7/', 0, 'customize_changeset', '', 0);
INSERT INTO `gorg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2019-11-17 02:35:17', '2019-11-17 02:35:17', '{\n    \"gorg_theme_options[contact_title]\": {\n        \"value\": \"Get In Touch\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:35:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0ae73a6d-8615-4614-a2b4-cb9d2a687d76', '', '', '2019-11-17 02:35:17', '2019-11-17 02:35:17', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/0ae73a6d-8615-4614-a2b4-cb9d2a687d76/', 0, 'customize_changeset', '', 0),
(88, 1, '2019-11-17 02:48:22', '2019-11-17 02:48:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"gorg_testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonial Options', 'testimonial-options', 'publish', 'closed', 'closed', '', 'group_5dd0b4ca724b1', '', '', '2019-11-17 02:48:22', '2019-11-17 02:48:22', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2019-11-17 02:48:22', '2019-11-17 02:48:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Testimonial Content', 'testimonial_content', 'publish', 'closed', 'closed', '', 'field_5dd0b4de7079e', '', '', '2019-11-17 02:48:22', '2019-11-17 02:48:22', '', 88, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2019-11-17 02:48:22', '2019-11-17 02:48:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Designation', 'designation', 'publish', 'closed', 'closed', '', 'field_5dd0b4d37079d', '', '', '2019-11-17 02:48:22', '2019-11-17 02:48:22', '', 88, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=90', 1, 'acf-field', '', 0),
(91, 1, '2019-11-17 02:48:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-17 02:48:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_testimonial&p=91', 0, 'gorg_testimonial', '', 0),
(92, 1, '2019-11-17 02:50:19', '2019-11-17 02:50:19', '', 'Name Here', '', 'publish', 'closed', 'closed', '', 'name-here', '', '', '2019-11-17 14:32:46', '2019-11-17 14:32:46', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_testimonial&#038;p=92', 0, 'gorg_testimonial', '', 0),
(93, 1, '2019-11-17 02:50:12', '2019-11-17 02:50:12', '', 'user1', '', 'inherit', 'open', 'closed', '', 'user1', '', '', '2019-11-17 02:50:12', '2019-11-17 02:50:12', '', 92, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/user1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-11-17 02:50:12', '2019-11-17 02:50:12', '', 'user2', '', 'inherit', 'open', 'closed', '', 'user2', '', '', '2019-11-17 02:50:12', '2019-11-17 02:50:12', '', 92, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/user2.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-11-17 02:50:13', '2019-11-17 02:50:13', '', 'user3', '', 'inherit', 'open', 'closed', '', 'user3', '', '', '2019-11-17 02:50:13', '2019-11-17 02:50:13', '', 92, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/user3.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-11-17 02:50:13', '2019-11-17 02:50:13', '', 'user4', '', 'inherit', 'open', 'closed', '', 'user4', '', '', '2019-11-17 02:50:13', '2019-11-17 02:50:13', '', 92, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/user4.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-11-17 02:50:43', '2019-11-17 02:50:43', '', 'Name Here 1', '', 'publish', 'closed', 'closed', '', 'name-here-1', '', '', '2019-11-17 02:50:43', '2019-11-17 02:50:43', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_testimonial&#038;p=97', 0, 'gorg_testimonial', '', 0),
(98, 1, '2019-11-17 02:51:02', '2019-11-17 02:51:02', '', 'Name Here 2', '', 'publish', 'closed', 'closed', '', 'name-here-2', '', '', '2019-11-17 02:51:02', '2019-11-17 02:51:02', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_testimonial&#038;p=98', 0, 'gorg_testimonial', '', 0),
(99, 1, '2019-11-17 02:51:17', '2019-11-17 02:51:17', '', 'Name Here 3', '', 'publish', 'closed', 'closed', '', 'name-here-3', '', '', '2019-11-17 02:51:17', '2019-11-17 02:51:17', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_testimonial&#038;p=99', 0, 'gorg_testimonial', '', 0),
(101, 1, '2019-11-17 14:15:44', '2019-11-17 14:15:44', '{\n    \"gorg_theme_options[testimonial_title]\": {\n        \"value\": \"Clients Testimonials\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 14:15:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2cd85f75-764b-4ce9-811d-860d2019e233', '', '', '2019-11-17 14:15:44', '2019-11-17 14:15:44', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/2cd85f75-764b-4ce9-811d-860d2019e233/', 0, 'customize_changeset', '', 0),
(102, 1, '2019-11-17 14:17:41', '2019-11-17 14:17:41', '{\n    \"gorg_theme_options[testimonial_limit]\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 14:17:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3f14533b-4048-4e36-8661-f00d7467f4ad', '', '', '2019-11-17 14:17:41', '2019-11-17 14:17:41', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/3f14533b-4048-4e36-8661-f00d7467f4ad/', 0, 'customize_changeset', '', 0),
(103, 1, '2019-11-17 14:20:47', '2019-11-17 14:20:47', '{\n    \"gorg_theme_options[testimonial_title]\": {\n        \"value\": \"Clients Testimonials\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 14:20:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf35e58b-3106-45bf-9905-1bb9af0d2593', '', '', '2019-11-17 14:20:47', '2019-11-17 14:20:47', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/cf35e58b-3106-45bf-9905-1bb9af0d2593/', 0, 'customize_changeset', '', 0),
(104, 1, '2019-11-17 14:45:20', '2019-11-17 14:45:20', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-11-17 14:45:20', '2019-11-17 14:45:20', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(105, 0, '2019-11-17 14:45:57', '2019-11-17 14:45:57', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dd15d49ddd6d4.33953911-VN5dnMIceTS1lYnfcUxOLBpVUg686HQp', '', '', '2019-11-17 14:46:33', '2019-11-17 14:46:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=scheduled-action&#038;p=105', 0, 'scheduled-action', '', 3),
(106, 1, '2019-11-17 14:48:06', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-11-17 14:48:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=product&p=106', 0, 'product', '', 0),
(107, 1, '2019-11-17 14:55:47', '2019-11-17 14:55:47', '', 'product1', '', 'inherit', 'open', 'closed', '', 'product1', '', '', '2019-11-17 14:55:47', '2019-11-17 14:55:47', '', 106, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-11-17 14:55:48', '2019-11-17 14:55:48', '', 'product2', '', 'inherit', 'open', 'closed', '', 'product2', '', '', '2019-11-17 14:55:48', '2019-11-17 14:55:48', '', 106, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-11-17 14:55:50', '2019-11-17 14:55:50', '', 'product3', '', 'inherit', 'open', 'closed', '', 'product3', '', '', '2019-11-17 14:55:50', '2019-11-17 14:55:50', '', 106, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product3.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-11-17 14:55:52', '2019-11-17 14:55:52', '', 'product4', '', 'inherit', 'open', 'closed', '', 'product4', '', '', '2019-11-17 14:55:52', '2019-11-17 14:55:52', '', 106, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product4.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-11-17 14:55:54', '2019-11-17 14:55:54', '', 'product5', '', 'inherit', 'open', 'closed', '', 'product5', '', '', '2019-11-17 14:55:54', '2019-11-17 14:55:54', '', 106, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product5.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-11-18 01:08:21', '2019-11-18 01:08:21', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:08:17\"\n    },\n    \"gorg_theme_options[catalogue_count]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:08:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25eb7c01-0648-4657-a872-41d96a331b53', '', '', '2019-11-18 01:08:21', '2019-11-18 01:08:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=112', 0, 'customize_changeset', '', 0),
(113, 1, '2019-11-18 01:11:49', '2019-11-18 01:11:49', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:11:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '90c6f954-da34-4fae-aada-c681d2faca0a', '', '', '2019-11-18 01:11:49', '2019-11-18 01:11:49', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/90c6f954-da34-4fae-aada-c681d2faca0a/', 0, 'customize_changeset', '', 0),
(114, 1, '2019-11-18 01:12:20', '2019-11-18 01:12:20', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:12:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4e3f4689-b1d3-4a40-9ab2-c4a3697cb4d7', '', '', '2019-11-18 01:12:20', '2019-11-18 01:12:20', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/4e3f4689-b1d3-4a40-9ab2-c4a3697cb4d7/', 0, 'customize_changeset', '', 0),
(115, 1, '2019-11-18 01:12:46', '2019-11-18 01:12:46', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:12:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '568f136f-003b-4532-8f2c-c57bf883522c', '', '', '2019-11-18 01:12:46', '2019-11-18 01:12:46', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/568f136f-003b-4532-8f2c-c57bf883522c/', 0, 'customize_changeset', '', 0),
(116, 1, '2019-11-18 02:20:34', '2019-11-18 02:20:34', '{\n    \"gorg_theme_options[catalogue_count]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 02:20:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3bdbcdc5-4f13-4ca5-b1ad-d14baf718848', '', '', '2019-11-18 02:20:34', '2019-11-18 02:20:34', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/3bdbcdc5-4f13-4ca5-b1ad-d14baf718848/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gorg_termmeta`
--

CREATE TABLE `gorg_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_termmeta`
--

INSERT INTO `gorg_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 18, 'display_type', ''),
(2, 18, 'thumbnail_id', '111'),
(3, 19, 'order', '1'),
(4, 19, 'display_type', ''),
(5, 19, 'thumbnail_id', '0'),
(6, 20, 'order', '6'),
(7, 20, 'display_type', ''),
(8, 20, 'thumbnail_id', '110'),
(9, 21, 'order', '3'),
(10, 21, 'display_type', ''),
(11, 21, 'thumbnail_id', '108'),
(12, 22, 'order', '4'),
(13, 22, 'display_type', ''),
(14, 22, 'thumbnail_id', '107'),
(15, 23, 'order', '5'),
(16, 23, 'display_type', ''),
(17, 23, 'thumbnail_id', '111'),
(18, 18, 'order', '2');

-- --------------------------------------------------------

--
-- Table structure for table `gorg_terms`
--

CREATE TABLE `gorg_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_terms`
--

INSERT INTO `gorg_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Quick Links', 'quick-links', 0),
(4, 'Footer Bottom Menu', 'footer-bottom-menu', 0),
(5, 'simple', 'simple', 0),
(6, 'grouped', 'grouped', 0),
(7, 'variable', 'variable', 0),
(8, 'external', 'external', 0),
(9, 'exclude-from-search', 'exclude-from-search', 0),
(10, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(11, 'featured', 'featured', 0),
(12, 'outofstock', 'outofstock', 0),
(13, 'rated-1', 'rated-1', 0),
(14, 'rated-2', 'rated-2', 0),
(15, 'rated-3', 'rated-3', 0),
(16, 'rated-4', 'rated-4', 0),
(17, 'rated-5', 'rated-5', 0),
(18, 'Contemporary Rugs', 'contemporary-rugs', 0),
(19, 'Traditional Area Rugs', 'traditional-area-rugs', 0),
(20, 'Tibetan Rugs', 'tibetan-rugs', 0),
(21, 'Animal Prints', 'animal-prints', 0),
(22, 'In Room Setting', 'in-room-setting', 0),
(23, 'Persian Rugs', 'persian-rugs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gorg_term_relationships`
--

CREATE TABLE `gorg_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_term_relationships`
--

INSERT INTO `gorg_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(35, 2, 0),
(36, 2, 0),
(74, 3, 0),
(75, 3, 0),
(76, 3, 0),
(77, 3, 0),
(78, 3, 0),
(79, 4, 0),
(80, 4, 0),
(81, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gorg_term_taxonomy`
--

CREATE TABLE `gorg_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_term_taxonomy`
--

INSERT INTO `gorg_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0),
(19, 19, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0),
(20, 20, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0),
(21, 21, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0),
(22, 22, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0),
(23, 23, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gorg_usermeta`
--

CREATE TABLE `gorg_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_usermeta`
--

INSERT INTO `gorg_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gorg'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'gorg_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'gorg_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'gorg_dashboard_quick_press_last_post_id', '65'),
(19, 1, 'gorg_user-settings', 'libraryContent=browse&widgets_access=off'),
(20, 1, 'gorg_user-settings-time', '1573651291'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(24, 1, 'nav_menu_recently_edited', '4'),
(25, 1, 'closedpostboxes_dashboard', 'a:6:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:36:\"woocommerce_dashboard_recent_reviews\";i:3;s:28:\"woocommerce_dashboard_status\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'session_tokens', 'a:2:{s:64:\"01cdb5030d985af0cd135aa093e68c29b73ba9c551f8f7119513d62da35c8349\";a:4:{s:10:\"expiration\";i:1574172912;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1574000112;}s:64:\"50a863bea78de2a412259b4bc47a3e4b21bd050fed3d7620ee3408bf7cc069c6\";a:4:{s:10:\"expiration\";i:1574211971;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1574039171;}}'),
(28, 1, '_woocommerce_tracks_anon_id', 'woo:Oh6LzY6UGHdtj6am2WBzgLl0'),
(29, 1, 'dismissed_install_notice', '1'),
(30, 1, 'dismissed_wc_admin_notice', '1'),
(31, 1, 'dismissed_no_secure_connection_notice', '1'),
(32, 1, 'wc_last_active', '1574035200'),
(33, 1, 'wc_marketplace_suggestions_dismissed_suggestions', 'a:5:{i:0;s:35:\"products-empty-woocommerce-bookings\";i:1;s:26:\"products-empty-memberships\";i:2;s:30:\"products-empty-product-bundles\";i:3;s:40:\"products-empty-woocommerce-subscriptions\";i:4;s:30:\"products-empty-product-vendors\";}');

-- --------------------------------------------------------

--
-- Table structure for table `gorg_users`
--

CREATE TABLE `gorg_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_users`
--

INSERT INTO `gorg_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gorg', '$P$BrFDubFEvYiuI0oYvfcFi.rxDzVB481', 'gorg', 'roshanb54@gmail.com', '', '2019-11-07 02:00:14', '', 0, 'gorg');

-- --------------------------------------------------------

--
-- Table structure for table `gorg_wc_download_log`
--

CREATE TABLE `gorg_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_wc_product_meta_lookup`
--

CREATE TABLE `gorg_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_wc_tax_rate_classes`
--

CREATE TABLE `gorg_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_wc_tax_rate_classes`
--

INSERT INTO `gorg_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `gorg_wc_webhooks`
--

CREATE TABLE `gorg_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_api_keys`
--

CREATE TABLE `gorg_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_attribute_taxonomies`
--

CREATE TABLE `gorg_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `gorg_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_log`
--

CREATE TABLE `gorg_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_order_itemmeta`
--

CREATE TABLE `gorg_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_order_items`
--

CREATE TABLE `gorg_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_payment_tokenmeta`
--

CREATE TABLE `gorg_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_payment_tokens`
--

CREATE TABLE `gorg_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_sessions`
--

CREATE TABLE `gorg_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gorg_woocommerce_sessions`
--

INSERT INTO `gorg_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:707:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"roshanb54@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1574174741);

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_shipping_zones`
--

CREATE TABLE `gorg_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_shipping_zone_locations`
--

CREATE TABLE `gorg_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_shipping_zone_methods`
--

CREATE TABLE `gorg_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_tax_rates`
--

CREATE TABLE `gorg_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gorg_woocommerce_tax_rate_locations`
--

CREATE TABLE `gorg_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gorg_commentmeta`
--
ALTER TABLE `gorg_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gorg_comments`
--
ALTER TABLE `gorg_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `gorg_links`
--
ALTER TABLE `gorg_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `gorg_options`
--
ALTER TABLE `gorg_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `gorg_postmeta`
--
ALTER TABLE `gorg_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gorg_posts`
--
ALTER TABLE `gorg_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `gorg_termmeta`
--
ALTER TABLE `gorg_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gorg_terms`
--
ALTER TABLE `gorg_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `gorg_term_relationships`
--
ALTER TABLE `gorg_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `gorg_term_taxonomy`
--
ALTER TABLE `gorg_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `gorg_usermeta`
--
ALTER TABLE `gorg_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gorg_users`
--
ALTER TABLE `gorg_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `gorg_wc_download_log`
--
ALTER TABLE `gorg_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `gorg_wc_product_meta_lookup`
--
ALTER TABLE `gorg_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `gorg_wc_tax_rate_classes`
--
ALTER TABLE `gorg_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `gorg_wc_webhooks`
--
ALTER TABLE `gorg_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gorg_woocommerce_api_keys`
--
ALTER TABLE `gorg_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `gorg_woocommerce_attribute_taxonomies`
--
ALTER TABLE `gorg_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `gorg_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `gorg_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `gorg_woocommerce_log`
--
ALTER TABLE `gorg_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `gorg_woocommerce_order_itemmeta`
--
ALTER TABLE `gorg_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `gorg_woocommerce_order_items`
--
ALTER TABLE `gorg_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `gorg_woocommerce_payment_tokenmeta`
--
ALTER TABLE `gorg_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `gorg_woocommerce_payment_tokens`
--
ALTER TABLE `gorg_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gorg_woocommerce_sessions`
--
ALTER TABLE `gorg_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `gorg_woocommerce_shipping_zones`
--
ALTER TABLE `gorg_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `gorg_woocommerce_shipping_zone_locations`
--
ALTER TABLE `gorg_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `gorg_woocommerce_shipping_zone_methods`
--
ALTER TABLE `gorg_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `gorg_woocommerce_tax_rates`
--
ALTER TABLE `gorg_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `gorg_woocommerce_tax_rate_locations`
--
ALTER TABLE `gorg_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gorg_commentmeta`
--
ALTER TABLE `gorg_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_comments`
--
ALTER TABLE `gorg_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gorg_links`
--
ALTER TABLE `gorg_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_options`
--
ALTER TABLE `gorg_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT for table `gorg_postmeta`
--
ALTER TABLE `gorg_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `gorg_posts`
--
ALTER TABLE `gorg_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `gorg_termmeta`
--
ALTER TABLE `gorg_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gorg_terms`
--
ALTER TABLE `gorg_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gorg_term_taxonomy`
--
ALTER TABLE `gorg_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gorg_usermeta`
--
ALTER TABLE `gorg_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `gorg_users`
--
ALTER TABLE `gorg_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gorg_wc_download_log`
--
ALTER TABLE `gorg_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_wc_tax_rate_classes`
--
ALTER TABLE `gorg_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gorg_wc_webhooks`
--
ALTER TABLE `gorg_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_api_keys`
--
ALTER TABLE `gorg_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_attribute_taxonomies`
--
ALTER TABLE `gorg_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `gorg_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_log`
--
ALTER TABLE `gorg_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_order_itemmeta`
--
ALTER TABLE `gorg_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_order_items`
--
ALTER TABLE `gorg_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_payment_tokenmeta`
--
ALTER TABLE `gorg_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_payment_tokens`
--
ALTER TABLE `gorg_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_sessions`
--
ALTER TABLE `gorg_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_shipping_zones`
--
ALTER TABLE `gorg_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_shipping_zone_locations`
--
ALTER TABLE `gorg_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_shipping_zone_methods`
--
ALTER TABLE `gorg_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_tax_rates`
--
ALTER TABLE `gorg_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_woocommerce_tax_rate_locations`
--
ALTER TABLE `gorg_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gorg_wc_download_log`
--
ALTER TABLE `gorg_wc_download_log`
  ADD CONSTRAINT `fk_gorg_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `gorg_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
