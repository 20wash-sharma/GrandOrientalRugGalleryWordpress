-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 02:58 PM
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
(4, 105, 'ActionScheduler', '', '', '', '2019-11-17 14:46:33', '2019-11-17 14:46:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 208, 'ActionScheduler', '', '', '', '2019-11-29 15:58:50', '2019-11-29 15:58:50', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 208, 'ActionScheduler', '', '', '', '2019-11-29 15:59:31', '2019-11-29 15:59:31', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 208, 'ActionScheduler', '', '', '', '2019-11-29 15:59:32', '2019-11-29 15:59:32', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

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
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:298:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:16:\"gorg-products/?$\";s:27:\"index.php?post_type=product\";s:46:\"gorg-products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:41:\"gorg-products/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:33:\"gorg-products/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"home_slider/?$\";s:31:\"index.php?post_type=home_slider\";s:44:\"home_slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_slider&feed=$matches[1]\";s:39:\"home_slider/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_slider&feed=$matches[1]\";s:31:\"home_slider/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=home_slider&paged=$matches[1]\";s:19:\"gorg_testimonial/?$\";s:36:\"index.php?post_type=gorg_testimonial\";s:49:\"gorg_testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=gorg_testimonial&feed=$matches[1]\";s:44:\"gorg_testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=gorg_testimonial&feed=$matches[1]\";s:36:\"gorg_testimonial/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=gorg_testimonial&paged=$matches[1]\";s:11:\"location/?$\";s:28:\"index.php?post_type=location\";s:41:\"location/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=location&feed=$matches[1]\";s:36:\"location/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=location&feed=$matches[1]\";s:28:\"location/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=location&paged=$matches[1]\";s:15:\"gorg_gallery/?$\";s:32:\"index.php?post_type=gorg_gallery\";s:45:\"gorg_gallery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=gorg_gallery&feed=$matches[1]\";s:40:\"gorg_gallery/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=gorg_gallery&feed=$matches[1]\";s:32:\"gorg_gallery/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=gorg_gallery&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"wcpf_project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"wcpf_project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"wcpf_project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"wcpf_project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"wcpf_project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"wcpf_project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"wcpf_project/([^/]+)/embed/?$\";s:45:\"index.php?wcpf_project=$matches[1]&embed=true\";s:33:\"wcpf_project/([^/]+)/trackback/?$\";s:39:\"index.php?wcpf_project=$matches[1]&tb=1\";s:41:\"wcpf_project/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?wcpf_project=$matches[1]&paged=$matches[2]\";s:48:\"wcpf_project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?wcpf_project=$matches[1]&cpage=$matches[2]\";s:38:\"wcpf_project/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?wcpf_project=$matches[1]&wc-api=$matches[3]\";s:44:\"wcpf_project/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"wcpf_project/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"wcpf_project/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?wcpf_project=$matches[1]&page=$matches[2]\";s:29:\"wcpf_project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"wcpf_project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"wcpf_project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"wcpf_project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"wcpf_project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"wcpf_project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"wcpf_item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"wcpf_item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"wcpf_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"wcpf_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"wcpf_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"wcpf_item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"wcpf_item/([^/]+)/embed/?$\";s:42:\"index.php?wcpf_item=$matches[1]&embed=true\";s:30:\"wcpf_item/([^/]+)/trackback/?$\";s:36:\"index.php?wcpf_item=$matches[1]&tb=1\";s:38:\"wcpf_item/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?wcpf_item=$matches[1]&paged=$matches[2]\";s:45:\"wcpf_item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?wcpf_item=$matches[1]&cpage=$matches[2]\";s:35:\"wcpf_item/([^/]+)/wc-api(/(.*))?/?$\";s:50:\"index.php?wcpf_item=$matches[1]&wc-api=$matches[3]\";s:41:\"wcpf_item/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"wcpf_item/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"wcpf_item/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?wcpf_item=$matches[1]&page=$matches[2]\";s:26:\"wcpf_item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"wcpf_item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"wcpf_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"wcpf_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"wcpf_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"wcpf_item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"home_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_slider/([^/]+)/embed/?$\";s:44:\"index.php?home_slider=$matches[1]&embed=true\";s:32:\"home_slider/([^/]+)/trackback/?$\";s:38:\"index.php?home_slider=$matches[1]&tb=1\";s:52:\"home_slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_slider=$matches[1]&feed=$matches[2]\";s:47:\"home_slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_slider=$matches[1]&feed=$matches[2]\";s:40:\"home_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&paged=$matches[2]\";s:47:\"home_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&cpage=$matches[2]\";s:37:\"home_slider/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?home_slider=$matches[1]&wc-api=$matches[3]\";s:43:\"home_slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"home_slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"home_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home_slider=$matches[1]&page=$matches[2]\";s:28:\"home_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"gorg_testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"gorg_testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"gorg_testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"gorg_testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"gorg_testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"gorg_testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"gorg_testimonial/([^/]+)/embed/?$\";s:49:\"index.php?gorg_testimonial=$matches[1]&embed=true\";s:37:\"gorg_testimonial/([^/]+)/trackback/?$\";s:43:\"index.php?gorg_testimonial=$matches[1]&tb=1\";s:57:\"gorg_testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?gorg_testimonial=$matches[1]&feed=$matches[2]\";s:52:\"gorg_testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?gorg_testimonial=$matches[1]&feed=$matches[2]\";s:45:\"gorg_testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?gorg_testimonial=$matches[1]&paged=$matches[2]\";s:52:\"gorg_testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?gorg_testimonial=$matches[1]&cpage=$matches[2]\";s:42:\"gorg_testimonial/([^/]+)/wc-api(/(.*))?/?$\";s:57:\"index.php?gorg_testimonial=$matches[1]&wc-api=$matches[3]\";s:48:\"gorg_testimonial/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"gorg_testimonial/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"gorg_testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?gorg_testimonial=$matches[1]&page=$matches[2]\";s:33:\"gorg_testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"gorg_testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"gorg_testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gorg_testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gorg_testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"gorg_testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"location/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"location/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"location/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"location/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"location/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"location/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"location/([^/]+)/embed/?$\";s:41:\"index.php?location=$matches[1]&embed=true\";s:29:\"location/([^/]+)/trackback/?$\";s:35:\"index.php?location=$matches[1]&tb=1\";s:49:\"location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:44:\"location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:37:\"location/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&paged=$matches[2]\";s:44:\"location/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&cpage=$matches[2]\";s:34:\"location/([^/]+)/wc-api(/(.*))?/?$\";s:49:\"index.php?location=$matches[1]&wc-api=$matches[3]\";s:40:\"location/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"location/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"location/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?location=$matches[1]&page=$matches[2]\";s:25:\"location/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"location/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"location/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"location/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"location/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"location/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"gorg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"gorg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"gorg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"gorg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"gorg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"gorg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"gorg_gallery/([^/]+)/embed/?$\";s:45:\"index.php?gorg_gallery=$matches[1]&embed=true\";s:33:\"gorg_gallery/([^/]+)/trackback/?$\";s:39:\"index.php?gorg_gallery=$matches[1]&tb=1\";s:53:\"gorg_gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?gorg_gallery=$matches[1]&feed=$matches[2]\";s:48:\"gorg_gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?gorg_gallery=$matches[1]&feed=$matches[2]\";s:41:\"gorg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?gorg_gallery=$matches[1]&paged=$matches[2]\";s:48:\"gorg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?gorg_gallery=$matches[1]&cpage=$matches[2]\";s:38:\"gorg_gallery/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?gorg_gallery=$matches[1]&wc-api=$matches[3]\";s:44:\"gorg_gallery/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"gorg_gallery/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"gorg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?gorg_gallery=$matches[1]&page=$matches[2]\";s:29:\"gorg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"gorg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"gorg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"gorg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"gorg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"gorg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:27:\"acf-gallery/acf-gallery.php\";i:1;s:29:\"acf-repeater/acf-repeater.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:44:\"facebook-pagelike-widget/facebook_widget.php\";i:5;s:59:\"woocommerce-product-filters/woocommerce-product-filters.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:104:\"D:\\xampp\\htdocs\\GrandOrientalRugGalleryWordpress/wp-content/plugins/contact-form-7/wp-contact-form-7.php\";i:1;s:98:\"D:\\xampp\\htdocs\\GrandOrientalRugGalleryWordpress/wp-content/plugins/advanced-custom-fields/acf.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'gorg', 'yes'),
(41, 'stylesheet', 'gorg', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:139:\"<div class=\"field_form\">\r\n<h2>Request a <strong>FREE ESTIMATE</strong></h2>\r\n[contact-form-7 id=\"195\" title=\"Cleaning Appointment\"]\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'gorg_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:16:\"sidebar-location\";a:1:{i:0;s:6:\"text-2\";}s:21:\"gorg-woo-shop-sidebar\";a:1:{i:0;s:14:\"wcpf_filters-2\";}s:23:\"gorg-woo-single-sidebar\";a:1:{i:0;s:13:\"custom_html-3\";}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-2\";a:1:{i:0;s:8:\"fbw_id-2\";}s:8:\"footer-3\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:14:{i:1575554304;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1575554418;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575554419;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575557273;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1575576634;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575590400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575597617;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575597628;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575597632;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575598234;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575598244;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575609034;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578355200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:\"title\";s:12:\"Useful Links\";s:8:\"nav_menu\";i:3;}i:3;a:1:{s:8:\"nav_menu\";i:4;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:2:{i:3;a:2:{s:5:\"title\";s:19:\"Woo Product Sidebar\";s:7:\"content\";s:4:\"TEst\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573179771;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'current_theme', 'GORG', 'yes'),
(153, 'theme_mods_gorg', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'category_children', 'a:0:{}', 'yes'),
(193, 'acf_version', '5.8.7', 'yes'),
(194, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1573649782;s:7:\"version\";s:5:\"5.1.5\";s:11:\"count_valid\";i:0;s:13:\"count_invalid\";i:1;}}', 'yes'),
(195, 'recovery_mode_email_last_sent', '1575380387', 'yes');
INSERT INTO `gorg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(203, 'gorg_theme_options', 'a:43:{s:20:\"gorg_social_facebook\";s:8:\"http://1\";s:19:\"gorg_social_twitter\";s:8:\"http://2\";s:22:\"gorg_social_googleplus\";s:8:\"http://4\";s:11:\"white_image\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:15:\"contact_address\";s:84:\"Grand Oriental Rug Gallery,<br />\n383 Aragon Ave <br />\nCoral Gables Miami, FL 33134\";s:14:\"contact_fphone\";s:12:\"305 442 4500\";s:10:\"white_logo\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:21:\"gorg_social_instagram\";s:8:\"http://5\";s:20:\"gorg_social_linkedin\";s:0:\"\";s:19:\"gorg_social_youtube\";s:0:\"\";s:19:\"show_static_content\";b:0;s:12:\"slider_posts\";s:1:\"4\";s:17:\"show_slider_arrow\";b:1;s:19:\"slider_static_title\";s:15:\"Welcome to GORG\";s:21:\"slider_static_content\";s:29:\"This is the Short Description\";s:13:\"welcome_title\";s:15:\"Welcome to GROG\";s:17:\"select_about_page\";i:20;s:18:\"welcome_text_limit\";s:3:\"600\";s:16:\"footer_copyright\";s:40:\"&copy; 2019 All Rights Reserved by GORG.\";s:21:\"show_developer_footer\";b:1;s:11:\"footer_logo\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:11:\"footer_text\";s:100:\"Phasellus blandit massa enim. elit id varius nunc. Lorem ipsum dolor sit amet, consectetur industry.\";s:13:\"contact_email\";s:33:\" info@grandorientalruggallery.com\";s:11:\"contact_fax\";s:12:\"305 442 4502\";s:14:\"contact_sphone\";s:12:\"305 490 1936\";s:12:\"contact_work\";s:57:\"Mon to Fri - 10:00AM- 6:00PM<br />\nSat - 11:00AM - 6:00PM\";s:18:\"contact_map_iframe\";s:385:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d229991.0376233033!2d-80.262074!3d25.750409!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b79a70cb3ec9%3A0x576b28e932ed9b0f!2s383%20Aragon%20Ave%2C%20Coral%20Gables%2C%20FL%2033134%2C%20USA!5e0!3m2!1sen!2sin!4v1575334809026!5m2!1sen!2sin\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>\";s:12:\"contact_form\";s:44:\"[contact-form-7 id=\"6\" title=\"Contact form\"]\";s:13:\"contact_title\";s:12:\"Get In Touch\";s:17:\"testimonial_title\";s:20:\"Clients Testimonials\";s:17:\"testimonial_limit\";s:2:\"10\";s:15:\"catalogue_title\";s:17:\"PRODUCT CATALOGUE\";s:15:\"catalogue_count\";s:1:\"6\";s:14:\"featured_title\";s:16:\"FEATURED PRODUCT\";s:14:\"featured_limit\";s:2:\"10\";s:9:\"cta_title\";s:39:\"Pick Up And Delivery Service Available.\";s:11:\"cta_content\";s:120:\"Call For a Free Quote today<br />\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936\";s:12:\"cta_btn_text\";s:10:\"Contact Us\";s:12:\"cta_btn_link\";s:61:\"http://localhost/GrandOrientalRugGalleryWordpress/contact-us/\";s:10:\"cta_bg_img\";s:0:\"\";s:16:\"gorg_shop_column\";s:1:\"4\";s:22:\"gorg_shop_page_sidebar\";s:7:\"default\";s:32:\"gorg_single_product_page_sidebar\";s:10:\"no-sidebar\";}', 'yes'),
(221, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(258, 'admin_email_lifespan', '1589298593', 'yes'),
(259, 'db_upgraded', '', 'yes'),
(263, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1575511261;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(264, 'can_compress_scripts', '1', 'no'),
(265, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1575511265;s:7:\"checked\";a:2:{s:4:\"gorg\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(303, 'widget_fbw_id', 'a:2:{i:2;a:13:{s:17:\"data_small_header\";s:2:\"on\";s:26:\"data_adapt_container_width\";s:0:\"\";s:15:\"data_hide_cover\";s:0:\"\";s:18:\"data_show_facepile\";s:2:\"on\";s:15:\"data_show_posts\";s:2:\"on\";s:9:\"data_tabs\";s:8:\"timeline\";s:5:\"title\";s:0:\"\";s:6:\"app_id\";s:15:\"503595753002055\";s:6:\"fb_url\";s:32:\"https://www.facebook.com/GORG383\";s:5:\"width\";s:3:\"340\";s:6:\"height\";s:3:\"250\";s:10:\"custom_css\";s:0:\"\";s:10:\"select_lng\";s:5:\"en_US\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(343, 'woocommerce_shop_page_id', '153', 'yes'),
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
(403, 'woocommerce_cart_page_id', '154', 'no'),
(404, 'woocommerce_checkout_page_id', '155', 'no'),
(405, 'woocommerce_myaccount_page_id', '156', 'no'),
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
(429, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(430, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(431, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(434, 'default_product_cat', '18', 'yes'),
(439, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:3;s:15:\"wcpf_activation\";}', 'yes'),
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
(471, '_transient_product_query-transient-version', '1575553747', 'yes'),
(477, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1575043172;}', 'no'),
(489, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(596, '_transient_product-transient-version', '1575469090', 'yes'),
(952, '_site_transient_timeout_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', '1575598101', 'no'),
(953, '_site_transient_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1003, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1004, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1093, 'product_cat_children', 'a:0:{}', 'yes'),
(1157, 'woocommerce_version', '3.8.1', 'yes'),
(1158, 'woocommerce_db_version', '3.8.1', 'yes'),
(1160, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(1164, 'wcpf_setting_default_project', '213', 'yes'),
(1165, 'wcpf_export_demo_project', '1', 'yes'),
(1166, 'woocommerce_admin_notice_wcpf_activation', '<p>\r\n                <strong>Product Filter for WooCommerce Installed</strong> <span> - Now you\'re ready to edit filters</span>\r\n            </p>\r\n            <p class=\"submit\">\r\n                <a href=\"http://localhost/GrandOrientalRugGalleryWordpress/wp-admin/edit.php?post_type=wcpf_project\" class=\"button button-primary\">Edit Filters</a> <a href=\"http://localhost/GrandOrientalRugGalleryWordpress/wp-admin/admin.php?page=wc-settings&amp;tab=products&amp;section=wcpf\" class=\"button button-primary\">Settings</a>\r\n            </p>', 'yes'),
(1167, 'wcpf_setting_out_of_stock_products', 'no-action', 'yes'),
(1168, 'wcpf_version', '1.1.16', 'yes'),
(1169, 'widget_wcpf_filters', 'a:2:{i:2;a:3:{s:5:\"title\";s:7:\"Filters\";s:2:\"id\";s:3:\"213\";s:15:\"needToShowTitle\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1170, 'widget_wcpf_filter_notes', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1183, '_site_transient_timeout_browser_2894fb4dbf964f58ccf3d2e4e372b316', '1575813071', 'no'),
(1184, '_site_transient_browser_2894fb4dbf964f58ccf3d2e4e372b316', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1232, '_transient_timeout_external_ip_address_::1', '1575855741', 'no'),
(1233, '_transient_external_ip_address_::1', '27.34.31.21', 'no'),
(1247, '_transient_timeout_wc_report_sales_by_date', '1575640150', 'no'),
(1248, '_transient_wc_report_sales_by_date', 'a:24:{s:32:\"4dce758b9d073dd06b7f9621ff0cea5f\";a:0:{}s:32:\"e9ef3f8fa0e139c8b64611af1ffe07b8\";a:0:{}s:32:\"b0f1cc83bad7ba6b3d24cbff0ff4cc1d\";a:0:{}s:32:\"6ec12b417e99b98482ecf539d3c0821a\";N;s:32:\"c954c9fbab78cdbf51915bb8a3b7ef47\";a:0:{}s:32:\"47054c6c6522bdc723795d56763adbb8\";a:0:{}s:32:\"8ad4c7d7bf36ee780c55414fdf2d075b\";a:0:{}s:32:\"71c333a3101e677bbebfab47737af37f\";a:0:{}s:32:\"bd46c155be20c56f44f7850114cef024\";a:0:{}s:32:\"bb78bc369c2aa78bb09668d5b4e6271a\";a:0:{}s:32:\"e0c2dff16e944fed5fed1e56e8d702bb\";a:0:{}s:32:\"e477661e825fbf66144902bf58bdf991\";N;s:32:\"33526255f15f886bc953673fb8a727f0\";a:0:{}s:32:\"304e348c26477729e2c2d94d7b67781a\";a:0:{}s:32:\"24b6ce90ca2c6d14943b9f77fd8bb8cf\";a:0:{}s:32:\"a5aa066429f70e136f66ea0f7f4facc8\";a:0:{}s:32:\"75d9aa3ccd7d0c84dc301537e76bd279\";a:0:{}s:32:\"13a1d829731102d58a1f5c00a6ecdef0\";a:0:{}s:32:\"c9c15cae1cd2771d89d68cf34fcb497d\";a:0:{}s:32:\"334466e5f1fb47e208680371d5af935e\";N;s:32:\"0c52958234207fdc2619934b07984a7e\";a:0:{}s:32:\"9783b5052123635586d3f4d320c5c626\";a:0:{}s:32:\"c76a608dab5668dd27a081451ae54933\";a:0:{}s:32:\"acce4219f85f3c71477b4fb36add2a8c\";a:0:{}}', 'no'),
(1249, '_transient_timeout_wc_admin_report', '1575640150', 'no'),
(1250, '_transient_wc_admin_report', 'a:3:{s:32:\"356247fcfce782e4646356f7e4fcb09e\";a:0:{}s:32:\"b8f0cfc378bb56341b39008f196c5469\";a:0:{}s:32:\"88b419b2e8f076828342fb6be1a425ef\";a:0:{}}', 'no'),
(1287, '_transient_timeout_acf_plugin_updates', '1575553077', 'no'),
(1288, '_transient_acf_plugin_updates', 'a:3:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;}', 'no'),
(1393, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1575596953', 'no'),
(1394, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:4:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Pokhara, Nepal\";s:3:\"url\";s:34:\"https://2019.pokhara.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-12-07 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Pokhara, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:28.1874169;s:9:\"longitude\";d:83.9717805;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"WordPress Kathmandu December Meetup, 2019\";s:3:\"url\";s:52:\"https://www.meetup.com/wpkathmandu/events/266846598/\";s:6:\"meetup\";s:19:\"WordPress Kathmandu\";s:10:\"meetup_url\";s:35:\"https://www.meetup.com/wpkathmandu/\";s:4:\"date\";s:19:\"2019-12-14 09:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Kathmandu, Nepal\";s:7:\"country\";s:2:\"np\";s:8:\"latitude\";d:27.741878509521;s:9:\"longitude\";d:85.343734741211;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:70:\"Summarizing of WordCamp Bharatpur 2019 & Planning for upcoming meetups\";s:3:\"url\";s:67:\"https://www.meetup.com/Bharatpur-WordPress-Meetup/events/266887670/\";s:6:\"meetup\";s:26:\"Bharatpur WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Bharatpur-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-12-14 12:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Bharatpur, Nepal\";s:7:\"country\";s:2:\"np\";s:8:\"latitude\";d:27.670625686646;s:9:\"longitude\";d:84.438461303711;}}i:3;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Butwal\";s:3:\"url\";s:32:\"https://2020.butwal.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-01-25 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Butwal, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:27.6675391;s:9:\"longitude\";d:83.4635304;}}}}', 'no'),
(1404, '_transient_timeout_wc_related_118', '1575640566', 'no'),
(1405, '_transient_wc_related_118', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=118\";a:1:{i:0;s:3:\"121\";}}', 'no'),
(1406, '_transient_timeout_wc_term_counts', '1578061235', 'no'),
(1407, '_transient_wc_term_counts', 'a:6:{i:22;s:1:\"2\";i:23;s:1:\"2\";i:19;s:1:\"1\";i:18;s:1:\"1\";i:21;s:1:\"1\";i:20;s:0:\"\";}', 'no'),
(1411, '_transient_timeout_wcpf_products_in_product_cat', '1575560936', 'no'),
(1412, '_transient_wcpf_products_in_product_cat', 'a:12:{i:0;b:0;s:32:\"9a3d29d7dfc8544bb9499586c4e3152b\";a:5:{i:18;s:3:\"120\";i:19;s:3:\"120\";i:21;s:3:\"119\";i:22;s:7:\"118,121\";i:23;s:7:\"121,122\";}s:32:\"88b8902fabb57ac6a2de7b35d6c4ec5f\";a:2:{i:22;s:7:\"118,121\";i:23;s:3:\"121\";}s:32:\"c7e790268d7e8e00691b7e8f03f55d5c\";a:1:{i:21;s:3:\"119\";}s:32:\"a3fec648e9d1720d8449ec1fab5505b2\";a:2:{i:22;s:3:\"121\";i:23;s:7:\"121,122\";}s:32:\"1bc41d458834e27f7452b8bcc4cddc5c\";a:0:{}s:32:\"54693f832b2729495e347c3e61de8d6a\";a:2:{i:18;s:3:\"120\";i:19;s:3:\"120\";}s:32:\"4c27400ea9a6d25f73522fec9eca7d09\";a:2:{i:18;s:3:\"120\";i:19;s:3:\"120\";}s:32:\"5836f0f013ae5628f70e9c59363796a8\";a:1:{i:22;s:3:\"118\";}s:32:\"3f501d1df85f05f9b5c35e8ed397abbd\";a:2:{i:21;s:3:\"119\";i:22;s:3:\"118\";}s:32:\"c9288bd96dee0919a9bced033a2df156\";a:2:{i:21;s:3:\"119\";i:22;s:3:\"118\";}s:32:\"5e91e4f964446f3f70c3bdd6e104c6b6\";a:2:{i:21;s:3:\"119\";i:22;s:7:\"118,118\";}}', 'no'),
(1413, '_transient_timeout_wc_layered_nav_counts_pa_color', '1575555657', 'no'),
(1414, '_transient_wc_layered_nav_counts_pa_color', 'a:2:{i:0;b:0;s:32:\"9d5a452dc658d5eb3a474a85b9bb1dc0\";a:3:{i:24;i:2;i:25;i:1;i:26;i:2;}}', 'no'),
(1417, '_transient_timeout_wc_low_stock_count', '1578061397', 'no'),
(1418, '_transient_wc_low_stock_count', '0', 'no'),
(1419, '_transient_timeout_wc_outofstock_count', '1578061397', 'no'),
(1420, '_transient_wc_outofstock_count', '0', 'no'),
(1432, '_transient_timeout_wc_related_119', '1575559834', 'no'),
(1433, '_transient_wc_related_119', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=119\";a:0:{}}', 'no'),
(1454, '_transient_timeout_wc_related_121', '1575560067', 'no'),
(1455, '_transient_wc_related_121', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=121\";a:2:{i:0;s:3:\"118\";i:1;s:3:\"122\";}}', 'no'),
(1456, '_transient_timeout_wc_related_122', '1575560091', 'no'),
(1457, '_transient_wc_related_122', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=122\";a:1:{i:0;s:3:\"121\";}}', 'no'),
(1463, 'wcpf_scroll_top', 'yes', 'yes'),
(1464, 'wcpf_setting_dynamic_image_change', 'yes', 'yes'),
(1465, 'search_selectors_in_overrides_templates', 'no', 'yes'),
(1466, 'wcpf_script_after_products_update', '', 'yes'),
(1470, '_transient_timeout_wcpf_products_in_pa_color', '1575640223', 'no'),
(1471, '_transient_wcpf_products_in_pa_color', 'a:17:{i:0;b:0;s:32:\"548ce211aff1ab63dc03f0f8c9d15b70\";a:3:{i:24;s:7:\"118,119\";i:25;s:3:\"118\";i:26;s:7:\"118,119\";}s:32:\"81053f54eecb21918009d5d44dff2542\";a:0:{}s:32:\"0a56373fabc6a7c2c157060bba73a66a\";a:3:{i:24;s:3:\"118\";i:25;s:3:\"118\";i:26;s:3:\"118\";}s:32:\"fdf873388352d20ee524bff7c3cb93c6\";a:3:{i:24;s:3:\"118\";i:25;s:3:\"118\";i:26;s:3:\"118\";}s:32:\"9780292f66a40d1f311e9452c15e1f84\";a:3:{i:24;s:3:\"118\";i:25;s:3:\"118\";i:26;s:3:\"118\";}s:32:\"ef706bf7e232d75fb61fb024bbfebc04\";a:0:{}s:32:\"41902b04af8636ca020a52aee5b1c809\";a:3:{i:24;s:7:\"118,119\";i:25;s:3:\"118\";i:26;s:7:\"118,119\";}s:32:\"c71f43e740bb1f06fa83ccca64267d72\";a:2:{i:24;s:3:\"119\";i:26;s:3:\"119\";}s:32:\"2cfa19ef137cc74c6eb9e92bc45d09da\";a:2:{i:24;s:3:\"119\";i:26;s:3:\"119\";}s:32:\"48d9f5b79cd4ad4ab0b1c546de7be730\";a:3:{i:24;s:7:\"119,118\";i:25;s:3:\"118\";i:26;s:7:\"119,118\";}s:32:\"5a2c323522747e4f76267783d2e14e5b\";a:3:{i:24;s:7:\"118,119\";i:25;s:3:\"118\";i:26;s:7:\"118,119\";}s:32:\"fd06c597bd98a3fc79da542036190ace\";a:3:{i:24;s:3:\"118\";i:25;s:3:\"118\";i:26;s:3:\"118\";}s:32:\"d74e4454b8ba12271319bec4b3df9a9b\";a:3:{i:24;s:3:\"118\";i:25;s:3:\"118\";i:26;s:3:\"118\";}s:32:\"085d1db54a9288d276e79814399fd5c1\";a:0:{}s:32:\"bc781b758d5b8c956223b5502a544b7c\";a:0:{}s:32:\"47f2852cb3d2be239b7987d8dbda62f8\";a:0:{}}', 'no'),
(1483, '_site_transient_timeout_theme_roots', '1575513062', 'no'),
(1484, '_site_transient_theme_roots', 'a:2:{s:4:\"gorg\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1485, '_transient_timeout__woocommerce_helper_updates', '1575554462', 'no'),
(1486, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"016c87cc11d06046db7990e6e383ecdb\";s:7:\"updated\";i:1575511262;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1487, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1575511267;s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:27:\"acf-gallery/acf-gallery.php\";s:5:\"2.1.0\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"2.1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:59:\"woocommerce-product-filters/woocommerce-product-filters.php\";s:6:\"1.1.16\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:3:\"5.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.1\";}s:8:\"response\";a:1:{s:44:\"facebook-pagelike-widget/facebook_widget.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-pagelike-widget\";s:4:\"slug\";s:24:\"facebook-pagelike-widget\";s:6:\"plugin\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:11:\"new_version\";s:3:\"6.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-pagelike-widget/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/facebook-pagelike-widget.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/facebook-pagelike-widget/assets/icon-128x128.png?rev=2079670\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/facebook-pagelike-widget/assets/banner-772x250.png?rev=2143108\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(4, 6, '_form', '<div class=\"row\">\n<div class=\"form-group col-lg-6\">\n[text* contact-name class:form-control placeholder \"Enter Name*\"]\n</div>\n<div class=\"form-group col-lg-6\">\n[email* contact-email class:form-control placeholder \"Enter Email*\"]\n</div>\n<div class=\"form-group col-lg-12\">\n[text contact-subject class:form-control placeholder \"Enter Subject\"]\n</div>\n<div class=\"form-group col-lg-12\">\n[textarea* contact-message class:form-control placeholder \"Message*\"]\n</textarea>\n</div>\n<div class=\"col-lg-12\">\n[submit id:submitButton class:btn class:btn-outline-white class:btn-radius \"Submit\"]\n</div>\n</div>'),
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
(38, 20, '_edit_lock', '1575126191:1'),
(39, 22, '_edit_lock', '1574997768:1'),
(40, 24, '_edit_lock', '1573485407:1'),
(41, 26, '_edit_lock', '1574783158:1'),
(42, 28, '_edit_lock', '1574215118:1'),
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
(343, 116, '_wp_trash_meta_time', '1574043634'),
(344, 117, '_wp_trash_meta_status', 'publish'),
(345, 117, '_wp_trash_meta_time', '1574044476'),
(346, 118, '_edit_last', '1'),
(347, 118, '_edit_lock', '1575474217:1'),
(348, 118, '_thumbnail_id', '111'),
(349, 118, 'total_sales', '0'),
(350, 118, '_tax_status', 'taxable'),
(351, 118, '_tax_class', ''),
(352, 118, '_manage_stock', 'no'),
(353, 118, '_backorders', 'no'),
(354, 118, '_sold_individually', 'no'),
(355, 118, '_virtual', 'no'),
(356, 118, '_downloadable', 'no'),
(357, 118, '_download_limit', '-1'),
(358, 118, '_download_expiry', '-1'),
(359, 118, '_stock', NULL),
(360, 118, '_stock_status', 'instock'),
(361, 118, '_wc_average_rating', '0'),
(362, 118, '_wc_review_count', '0'),
(363, 118, '_product_version', '3.8.1'),
(364, 119, '_edit_last', '1'),
(365, 119, '_edit_lock', '1575043695:1'),
(366, 119, '_thumbnail_id', '110'),
(367, 119, 'total_sales', '0'),
(368, 119, '_tax_status', 'taxable'),
(369, 119, '_tax_class', ''),
(370, 119, '_manage_stock', 'no'),
(371, 119, '_backorders', 'no'),
(372, 119, '_sold_individually', 'no'),
(373, 119, '_virtual', 'no'),
(374, 119, '_downloadable', 'no'),
(375, 119, '_download_limit', '-1'),
(376, 119, '_download_expiry', '-1'),
(377, 119, '_stock', NULL),
(378, 119, '_stock_status', 'instock'),
(379, 119, '_wc_average_rating', '0'),
(380, 119, '_wc_review_count', '0'),
(381, 119, '_product_version', '3.8.0'),
(382, 120, '_edit_last', '1'),
(383, 120, '_edit_lock', '1574044904:1'),
(384, 120, '_thumbnail_id', '109'),
(385, 120, 'total_sales', '0'),
(386, 120, '_tax_status', 'taxable'),
(387, 120, '_tax_class', ''),
(388, 120, '_manage_stock', 'no'),
(389, 120, '_backorders', 'no'),
(390, 120, '_sold_individually', 'no'),
(391, 120, '_virtual', 'no'),
(392, 120, '_downloadable', 'no'),
(393, 120, '_download_limit', '-1'),
(394, 120, '_download_expiry', '-1'),
(395, 120, '_stock', NULL),
(396, 120, '_stock_status', 'instock'),
(397, 120, '_wc_average_rating', '0'),
(398, 120, '_wc_review_count', '0'),
(399, 120, '_product_version', '3.8.0'),
(400, 121, '_edit_last', '1'),
(401, 121, '_edit_lock', '1574044941:1'),
(402, 121, '_thumbnail_id', '108'),
(403, 121, 'total_sales', '0'),
(404, 121, '_tax_status', 'taxable'),
(405, 121, '_tax_class', ''),
(406, 121, '_manage_stock', 'no'),
(407, 121, '_backorders', 'no'),
(408, 121, '_sold_individually', 'no'),
(409, 121, '_virtual', 'no'),
(410, 121, '_downloadable', 'no'),
(411, 121, '_download_limit', '-1'),
(412, 121, '_download_expiry', '-1'),
(413, 121, '_stock', NULL),
(414, 121, '_stock_status', 'instock'),
(415, 121, '_wc_average_rating', '0'),
(416, 121, '_wc_review_count', '0'),
(417, 121, '_product_version', '3.8.0'),
(418, 122, '_edit_last', '1'),
(419, 122, '_edit_lock', '1575341096:1'),
(421, 122, 'total_sales', '0'),
(422, 122, '_tax_status', 'taxable'),
(423, 122, '_tax_class', ''),
(424, 122, '_manage_stock', 'no'),
(425, 122, '_backorders', 'no'),
(426, 122, '_sold_individually', 'no'),
(427, 122, '_virtual', 'no'),
(428, 122, '_downloadable', 'no'),
(429, 122, '_download_limit', '-1'),
(430, 122, '_download_expiry', '-1'),
(431, 122, '_stock', NULL),
(432, 122, '_stock_status', 'instock'),
(433, 122, '_wc_average_rating', '0'),
(434, 122, '_wc_review_count', '0'),
(435, 122, '_product_version', '3.8.0'),
(436, 122, '_thumbnail_id', '107'),
(437, 123, '_wp_trash_meta_status', 'publish'),
(438, 123, '_wp_trash_meta_time', '1574046489'),
(439, 28, '_wp_page_template', 'page-templates/contact-template.php'),
(440, 6, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(441, 22, '_wp_page_template', 'page-templates/service-template.php'),
(442, 127, '_edit_last', '1'),
(443, 127, '_edit_lock', '1574563928:1'),
(444, 22, '_edit_last', '1'),
(445, 22, 'cleaning_process_steps', '<h5><strong>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</strong></h5>\r\n<ol class=\"order_list\">\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(446, 22, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(447, 129, 'cleaning_process_steps', '<h5>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(448, 129, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(449, 130, '_edit_last', '1'),
(450, 130, '_edit_lock', '1574349246:1'),
(451, 22, 'cta_title', 'Pick Up And Delivery Service Available.'),
(452, 22, '_cta_title', 'field_5dd69f343e423'),
(453, 22, 'cta_content', 'Call For a Free Quote today<br/>\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(454, 22, '_cta_content', 'field_5dd69f413e424'),
(455, 22, 'cta_button_text', 'Contact Us'),
(456, 22, '_cta_button_text', 'field_5dd69f503e425'),
(457, 22, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(458, 22, '_cta_button_link', 'field_5dd69f643e426'),
(459, 135, 'cleaning_process_steps', '<h5>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(460, 135, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(461, 135, 'cta_title', 'Pick Up And Delivery Service Available.'),
(462, 135, '_cta_title', 'field_5dd69f343e423'),
(463, 135, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(464, 135, '_cta_content', 'field_5dd69f413e424'),
(465, 135, 'cta_button_text', 'Contact Us'),
(466, 135, '_cta_button_text', 'field_5dd69f503e425'),
(467, 135, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(468, 135, '_cta_button_link', 'field_5dd69f643e426'),
(469, 136, '_edit_last', '1'),
(470, 136, '_edit_lock', '1574350572:1'),
(471, 141, '_wp_attached_file', '2019/11/Washing-an-Oriental-Rug.jpg'),
(472, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:408;s:4:\"file\";s:35:\"2019/11/Washing-an-Oriental-Rug.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Washing-an-Oriental-Rug-300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Washing-an-Oriental-Rug-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"Washing-an-Oriental-Rug-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"Washing-an-Oriental-Rug-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"Washing-an-Oriental-Rug-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"Washing-an-Oriental-Rug-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(473, 22, 'section_title', 'Restorations And Repair Service'),
(474, 22, '_section_title', 'field_5dd6a0051c093'),
(475, 22, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(476, 22, '_section_content', 'field_5dd6a0261c094'),
(477, 22, 'video_background_image', '141'),
(478, 22, '_video_background_image', 'field_5dd6a0311c095'),
(479, 22, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(480, 22, '_youtube_video_link', 'field_5dd6a0411c096'),
(481, 142, 'cleaning_process_steps', '<h5>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(482, 142, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(483, 142, 'cta_title', 'Pick Up And Delivery Service Available.'),
(484, 142, '_cta_title', 'field_5dd69f343e423'),
(485, 142, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(486, 142, '_cta_content', 'field_5dd69f413e424'),
(487, 142, 'cta_button_text', 'Contact Us'),
(488, 142, '_cta_button_text', 'field_5dd69f503e425'),
(489, 142, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(490, 142, '_cta_button_link', 'field_5dd69f643e426'),
(491, 142, 'section_title', 'Restorations And Repair Service'),
(492, 142, '_section_title', 'field_5dd6a0051c093');
INSERT INTO `gorg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(493, 142, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(494, 142, '_section_content', 'field_5dd6a0261c094'),
(495, 142, 'video_background_image', '141'),
(496, 142, '_video_background_image', 'field_5dd6a0311c095'),
(497, 142, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(498, 142, '_youtube_video_link', 'field_5dd6a0411c096'),
(499, 143, 'cleaning_process_steps', '<h5>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(500, 143, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(501, 143, 'cta_title', 'Pick Up And Delivery Service Available.'),
(502, 143, '_cta_title', 'field_5dd69f343e423'),
(503, 143, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(504, 143, '_cta_content', 'field_5dd69f413e424'),
(505, 143, 'cta_button_text', 'Contact Us'),
(506, 143, '_cta_button_text', 'field_5dd69f503e425'),
(507, 143, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(508, 143, '_cta_button_link', 'field_5dd69f643e426'),
(509, 143, 'section_title', 'Restorations And Repair Service'),
(510, 143, '_section_title', 'field_5dd6a0051c093'),
(511, 143, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(512, 143, '_section_content', 'field_5dd6a0261c094'),
(513, 143, 'video_background_image', '141'),
(514, 143, '_video_background_image', 'field_5dd6a0311c095'),
(515, 143, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(516, 143, '_youtube_video_link', 'field_5dd6a0411c096'),
(517, 145, 'cleaning_process_steps', '<h5>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(518, 145, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(519, 145, 'cta_title', 'Pick Up And Delivery Service Available.'),
(520, 145, '_cta_title', 'field_5dd69f343e423'),
(521, 145, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(522, 145, '_cta_content', 'field_5dd69f413e424'),
(523, 145, 'cta_button_text', 'Contact Us'),
(524, 145, '_cta_button_text', 'field_5dd69f503e425'),
(525, 145, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(526, 145, '_cta_button_link', 'field_5dd69f643e426'),
(527, 145, 'section_title', 'Restorations And Repair Service'),
(528, 145, '_section_title', 'field_5dd6a0051c093'),
(529, 145, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(530, 145, '_section_content', 'field_5dd6a0261c094'),
(531, 145, 'video_background_image', '141'),
(532, 145, '_video_background_image', 'field_5dd6a0311c095'),
(533, 145, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(534, 145, '_youtube_video_link', 'field_5dd6a0411c096'),
(535, 147, 'cleaning_process_steps', '<h5>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(536, 147, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(537, 147, 'cta_title', 'Pick Up And Delivery Service Available.'),
(538, 147, '_cta_title', 'field_5dd69f343e423'),
(539, 147, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(540, 147, '_cta_content', 'field_5dd69f413e424'),
(541, 147, 'cta_button_text', 'Contact Us'),
(542, 147, '_cta_button_text', 'field_5dd69f503e425'),
(543, 147, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(544, 147, '_cta_button_link', 'field_5dd69f643e426'),
(545, 147, 'section_title', 'Restorations And Repair Service'),
(546, 147, '_section_title', 'field_5dd6a0051c093'),
(547, 147, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(548, 147, '_section_content', 'field_5dd6a0261c094'),
(549, 147, 'video_background_image', '141'),
(550, 147, '_video_background_image', 'field_5dd6a0311c095'),
(551, 147, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(552, 147, '_youtube_video_link', 'field_5dd6a0411c096'),
(553, 148, 'cleaning_process_steps', '<h5><strong>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</strong></h5>\r\n<ol>\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(554, 148, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(555, 148, 'cta_title', 'Pick Up And Delivery Service Available.'),
(556, 148, '_cta_title', 'field_5dd69f343e423'),
(557, 148, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(558, 148, '_cta_content', 'field_5dd69f413e424'),
(559, 148, 'cta_button_text', 'Contact Us'),
(560, 148, '_cta_button_text', 'field_5dd69f503e425'),
(561, 148, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(562, 148, '_cta_button_link', 'field_5dd69f643e426'),
(563, 148, 'section_title', 'Restorations And Repair Service'),
(564, 148, '_section_title', 'field_5dd6a0051c093'),
(565, 148, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(566, 148, '_section_content', 'field_5dd6a0261c094'),
(567, 148, 'video_background_image', '141'),
(568, 148, '_video_background_image', 'field_5dd6a0311c095'),
(569, 148, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(570, 148, '_youtube_video_link', 'field_5dd6a0411c096'),
(571, 149, 'cleaning_process_steps', '<h5><strong>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</strong></h5>\r\n<ol class=\"order_list\">\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(572, 149, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(573, 149, 'cta_title', 'Pick Up And Delivery Service Available.'),
(574, 149, '_cta_title', 'field_5dd69f343e423'),
(575, 149, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(576, 149, '_cta_content', 'field_5dd69f413e424'),
(577, 149, 'cta_button_text', 'Contact Us'),
(578, 149, '_cta_button_text', 'field_5dd69f503e425'),
(579, 149, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(580, 149, '_cta_button_link', 'field_5dd69f643e426'),
(581, 149, 'section_title', 'Restorations And Repair Service'),
(582, 149, '_section_title', 'field_5dd6a0051c093'),
(583, 149, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(584, 149, '_section_content', 'field_5dd6a0261c094'),
(585, 149, 'video_background_image', '141'),
(586, 149, '_video_background_image', 'field_5dd6a0311c095'),
(587, 149, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(588, 149, '_youtube_video_link', 'field_5dd6a0411c096'),
(589, 150, 'cleaning_process_steps', '<h5><strong>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</strong></h5>\r\n<ol class=\"order_list\">\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(590, 150, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(591, 150, 'cta_title', 'Pick Up And Delivery Service Available.'),
(592, 150, '_cta_title', 'field_5dd69f343e423'),
(593, 150, 'cta_content', 'Call For a Free Quote today\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(594, 150, '_cta_content', 'field_5dd69f413e424'),
(595, 150, 'cta_button_text', 'Contact Us'),
(596, 150, '_cta_button_text', 'field_5dd69f503e425'),
(597, 150, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(598, 150, '_cta_button_link', 'field_5dd69f643e426'),
(599, 150, 'section_title', 'Restorations And Repair Service'),
(600, 150, '_section_title', 'field_5dd6a0051c093'),
(601, 150, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(602, 150, '_section_content', 'field_5dd6a0261c094'),
(603, 150, 'video_background_image', '141'),
(604, 150, '_video_background_image', 'field_5dd6a0311c095'),
(605, 150, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(606, 150, '_youtube_video_link', 'field_5dd6a0411c096'),
(607, 151, 'cleaning_process_steps', '<h5><strong>The Cleaning Process For Oriental Rugs Is A Multi-Step Process Which Includes:</strong></h5>\r\n<ol class=\"order_list\">\r\n 	<li>Pre-wash inspection to determine Rug quality and overall condition.</li>\r\n 	<li>Dye testing, to determine the color fastness.</li>\r\n 	<li>Power dusting, to get out the loose soil.</li>\r\n 	<li>Pre-treatment for sport removal.</li>\r\n 	<li>Hand cleaning and Rinsing.</li>\r\n 	<li>Moisture removal with wringer.</li>\r\n 	<li>Drying in a humidity-controlled environment.</li>\r\n 	<li>We use Anti-microbial treatments, enzymes, for removal of strong odor.</li>\r\n 	<li>Urine decontamination: the aggressive option when a rug has excessive staining and odor. the process includes disinfect-deodorize and sanitize.</li>\r\n</ol>'),
(608, 151, '_cleaning_process_steps', 'field_5dd69e837dd0e'),
(609, 151, 'cta_title', 'Pick Up And Delivery Service Available.'),
(610, 151, '_cta_title', 'field_5dd69f343e423'),
(611, 151, 'cta_content', 'Call For a Free Quote today<br/>\r\n<i class=\"fa fa-phone\"></i> 305 442 4500 - <i class=\"fa fa-phone\"></i> 305 490 1936'),
(612, 151, '_cta_content', 'field_5dd69f413e424'),
(613, 151, 'cta_button_text', 'Contact Us'),
(614, 151, '_cta_button_text', 'field_5dd69f503e425'),
(615, 151, 'cta_button_link', 'http://localhost/GrandOrientalRugGalleryWordpress/contact-us/'),
(616, 151, '_cta_button_link', 'field_5dd69f643e426'),
(617, 151, 'section_title', 'Restorations And Repair Service'),
(618, 151, '_section_title', 'field_5dd6a0051c093'),
(619, 151, 'section_content', '<ul>\r\n 	<li><strong>Re-fringe:</strong> The fringe is hand sewn and there are many different type to choose from, so it looks original and matching.</li>\r\n 	<li><strong>Binding:</strong> it stops the rug from unraveling and fraying.</li>\r\n 	<li><strong>Overcasting:</strong> The side finish on rugs may detach from the rug, wear down from traffic, get chewed off by pets.</li>\r\n 	<li><strong>Serging:</strong> for finish off certain type of rugs the yarn is serge around the border which gives the rug a finished look and stops from unraveling.</li>\r\n 	<li><strong>Lock-stitching:</strong> Stops rugs from unraveling which can cause major damages and lower the value of antique rugs. A neatly, and nearly invisible stitch is sewn back and forth from end to end. Appraisals. Trade Ins, welcome.</li>\r\n</ul>'),
(620, 151, '_section_content', 'field_5dd6a0261c094'),
(621, 151, 'video_background_image', '141'),
(622, 151, '_video_background_image', 'field_5dd6a0311c095'),
(623, 151, 'youtube_video_link', 'https://www.youtube.com/watch?time_continue=77&v=LjJyKNAQwNI'),
(624, 151, '_youtube_video_link', 'field_5dd6a0411c096'),
(625, 154, '_wp_trash_meta_status', 'publish'),
(626, 154, '_wp_trash_meta_time', '1574563740'),
(627, 154, '_wp_desired_post_slug', 'cart'),
(628, 155, '_wp_trash_meta_status', 'publish'),
(629, 155, '_wp_trash_meta_time', '1574563741'),
(630, 155, '_wp_desired_post_slug', 'checkout'),
(631, 159, '_menu_item_type', 'post_type'),
(632, 159, '_menu_item_menu_item_parent', '0'),
(633, 159, '_menu_item_object_id', '153'),
(634, 159, '_menu_item_object', 'page'),
(635, 159, '_menu_item_target', ''),
(636, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(637, 159, '_menu_item_xfn', ''),
(638, 159, '_menu_item_url', ''),
(639, 160, '_edit_lock', '1574783003:1'),
(640, 161, '_edit_last', '1'),
(641, 161, '_edit_lock', '1574780012:1'),
(642, 160, '_edit_last', '1'),
(643, 160, 'add_gallery_images', 'a:3:{i:0;s:3:\"176\";i:1;s:3:\"175\";i:2;s:3:\"168\";}'),
(644, 160, '_add_gallery_images', 'field_5ddd2e7b789d6'),
(645, 163, '_wp_attached_file', '2019/11/gallery_img1-scaled.jpg'),
(646, 163, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2019/11/gallery_img1-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"gallery_img1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"gallery_img1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"gallery_img1-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"gallery_img1-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"iPhone 6\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1428503312\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"gallery_img1.jpg\";}'),
(647, 164, '_wp_attached_file', '2019/11/gallery_img2-scaled.jpg'),
(648, 164, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2019/11/gallery_img2-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"gallery_img2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"gallery_img2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"gallery_img2-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"gallery_img2-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img2-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img2-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"iPhone 6\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1428503388\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"gallery_img2.jpg\";}'),
(649, 165, '_wp_attached_file', '2019/11/gallery_img3.jpg'),
(650, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:24:\"2019/11/gallery_img3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"gallery_img3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(651, 166, '_wp_attached_file', '2019/11/gallery_img4-scaled.jpg'),
(652, 166, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2019/11/gallery_img4-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"gallery_img4-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"gallery_img4-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"gallery_img4-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"gallery_img4-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img4-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img4-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"iPhone 6\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1426188737\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"gallery_img4.jpg\";}'),
(653, 167, '_wp_attached_file', '2019/11/gallery_img5.jpg'),
(654, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2019/11/gallery_img5.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"gallery_img5-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img5-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img5-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"iPhone 5s\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1419955920\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(655, 168, '_wp_attached_file', '2019/11/gallery_img6.png'),
(656, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:668;s:4:\"file\";s:24:\"2019/11/gallery_img6.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img6-251x300.png\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img6-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img6-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 169, '_wp_attached_file', '2019/11/gallery_img7-scaled.jpg'),
(658, 169, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2019/11/gallery_img7-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img7-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"gallery_img7-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"gallery_img7-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"gallery_img7-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"gallery_img7-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img7-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img7-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"iPhone 6\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1490788536\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"gallery_img7.jpg\";}'),
(659, 170, '_wp_attached_file', '2019/11/gallery_img8-scaled.jpg'),
(660, 170, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:31:\"2019/11/gallery_img8-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img8-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"gallery_img8-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"gallery_img8-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"gallery_img8-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"gallery_img8-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img8-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img8-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"iPhone 6\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1536327219\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:2:\"40\";s:13:\"shutter_speed\";s:18:\"0.0083333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"gallery_img8.jpg\";}'),
(661, 171, '_wp_attached_file', '2019/11/gallery_img9-scaled.jpg'),
(662, 171, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:31:\"2019/11/gallery_img9-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery_img9-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"gallery_img9-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"gallery_img9-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"gallery_img9-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"gallery_img9-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"gallery_img9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"gallery_img9-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"gallery_img9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"gallery_img9-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery_img9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:6:\"XT1254\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1039348800\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.8\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.02499\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"gallery_img9.jpg\";}'),
(663, 172, '_wp_attached_file', '2019/11/gallery_img10.jpg'),
(664, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1350;s:4:\"file\";s:25:\"2019/11/gallery_img10.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery_img10-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"gallery_img10-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"gallery_img10-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"gallery_img10-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"gallery_img10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"gallery_img10-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"gallery_img10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"gallery_img10-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(665, 173, '_wp_attached_file', '2019/11/gallery_img11.jpg'),
(666, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:25:\"2019/11/gallery_img11.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery_img11-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"gallery_img11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"gallery_img11-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"gallery_img11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"gallery_img11-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"iPhone 8 Plus\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1524914297\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.99\";s:3:\"iso\";s:2:\"32\";s:13:\"shutter_speed\";s:18:\"0.0083333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(667, 174, '_wp_attached_file', '2019/11/gallery_img12-scaled.jpg'),
(668, 174, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1756;s:4:\"file\";s:32:\"2019/11/gallery_img12-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery_img12-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"gallery_img12-1024x702.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"gallery_img12-768x527.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"gallery_img12-1536x1054.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1054;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"gallery_img12-2048x1405.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"gallery_img12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"gallery_img12-600x412.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"gallery_img12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"gallery_img12-600x412.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:20:\"XtravaganT - Fotolia\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:62:\"Luxury living room interior with white couch and seascape view\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"gallery_img12.jpg\";}'),
(669, 175, '_wp_attached_file', '2019/11/gallery_img13.png');
INSERT INTO `gorg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(670, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:668;s:4:\"file\";s:25:\"2019/11/gallery_img13.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery_img13-251x300.png\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"gallery_img13-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img13-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"gallery_img13-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img13-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(671, 176, '_wp_attached_file', '2019/11/gallery_img14.png'),
(672, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:668;s:4:\"file\";s:25:\"2019/11/gallery_img14.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery_img14-251x300.png\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"gallery_img14-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img14-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"gallery_img14-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery_img14-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 177, '_edit_last', '1'),
(674, 177, '_edit_lock', '1574776965:1'),
(675, 177, 'add_gallery_images', 'a:11:{i:0;s:3:\"174\";i:1;s:3:\"173\";i:2;s:3:\"172\";i:3;s:3:\"171\";i:4;s:3:\"170\";i:5;s:3:\"169\";i:6;s:3:\"163\";i:7;s:3:\"164\";i:8;s:3:\"165\";i:9;s:3:\"166\";i:10;s:3:\"167\";}'),
(676, 177, '_add_gallery_images', 'field_5ddd2e7b789d6'),
(677, 26, '_wp_page_template', 'page-templates/gallery-template.php'),
(678, 26, '_edit_last', '1'),
(679, 178, '_edit_lock', '1575125031:1'),
(680, 179, '_edit_lock', '1574864779:1'),
(681, 180, '_edit_lock', '1574864802:1'),
(682, 181, '_edit_lock', '1574864830:1'),
(683, 182, '_edit_lock', '1574864849:1'),
(684, 183, '_edit_lock', '1574864882:1'),
(685, 184, '_edit_lock', '1574864899:1'),
(686, 185, '_edit_lock', '1574904887:1'),
(687, 186, '_menu_item_type', 'post_type_archive'),
(688, 186, '_menu_item_menu_item_parent', '0'),
(689, 186, '_menu_item_object_id', '-54'),
(690, 186, '_menu_item_object', 'location'),
(691, 186, '_menu_item_target', ''),
(692, 186, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 186, '_menu_item_xfn', ''),
(694, 186, '_menu_item_url', ''),
(695, 186, '_menu_item_orphaned', '1574866797'),
(696, 187, '_menu_item_type', 'post_type'),
(697, 187, '_menu_item_menu_item_parent', '35'),
(698, 187, '_menu_item_object_id', '182'),
(699, 187, '_menu_item_object', 'location'),
(700, 187, '_menu_item_target', ''),
(701, 187, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 187, '_menu_item_xfn', ''),
(703, 187, '_menu_item_url', ''),
(705, 188, '_menu_item_type', 'post_type'),
(706, 188, '_menu_item_menu_item_parent', '35'),
(707, 188, '_menu_item_object_id', '181'),
(708, 188, '_menu_item_object', 'location'),
(709, 188, '_menu_item_target', ''),
(710, 188, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 188, '_menu_item_xfn', ''),
(712, 188, '_menu_item_url', ''),
(714, 189, '_menu_item_type', 'post_type'),
(715, 189, '_menu_item_menu_item_parent', '35'),
(716, 189, '_menu_item_object_id', '184'),
(717, 189, '_menu_item_object', 'location'),
(718, 189, '_menu_item_target', ''),
(719, 189, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 189, '_menu_item_xfn', ''),
(721, 189, '_menu_item_url', ''),
(723, 190, '_menu_item_type', 'post_type'),
(724, 190, '_menu_item_menu_item_parent', '35'),
(725, 190, '_menu_item_object_id', '183'),
(726, 190, '_menu_item_object', 'location'),
(727, 190, '_menu_item_target', ''),
(728, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 190, '_menu_item_xfn', ''),
(730, 190, '_menu_item_url', ''),
(732, 191, '_menu_item_type', 'post_type'),
(733, 191, '_menu_item_menu_item_parent', '35'),
(734, 191, '_menu_item_object_id', '179'),
(735, 191, '_menu_item_object', 'location'),
(736, 191, '_menu_item_target', ''),
(737, 191, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 191, '_menu_item_xfn', ''),
(739, 191, '_menu_item_url', ''),
(741, 192, '_menu_item_type', 'post_type'),
(742, 192, '_menu_item_menu_item_parent', '35'),
(743, 192, '_menu_item_object_id', '178'),
(744, 192, '_menu_item_object', 'location'),
(745, 192, '_menu_item_target', ''),
(746, 192, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 192, '_menu_item_xfn', ''),
(748, 192, '_menu_item_url', ''),
(750, 193, '_menu_item_type', 'post_type'),
(751, 193, '_menu_item_menu_item_parent', '35'),
(752, 193, '_menu_item_object_id', '185'),
(753, 193, '_menu_item_object', 'location'),
(754, 193, '_menu_item_target', ''),
(755, 193, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 193, '_menu_item_xfn', ''),
(757, 193, '_menu_item_url', ''),
(759, 194, '_menu_item_type', 'post_type'),
(760, 194, '_menu_item_menu_item_parent', '35'),
(761, 194, '_menu_item_object_id', '180'),
(762, 194, '_menu_item_object', 'location'),
(763, 194, '_menu_item_target', ''),
(764, 194, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 194, '_menu_item_xfn', ''),
(766, 194, '_menu_item_url', ''),
(767, 178, '_wp_page_template', 'page-templates/location-sidebar.php'),
(768, 195, '_form', '<div class=\"row\">\n<div class=\"form-group col-md-12\">\n    [text* ap-your-name class:form-control placeholder \"Full Name*\"]\n</div>\n<div class=\"form-group col-md-12\">\n[email* ap-your-email class:form-control placeholder \"Your Email*\"]\n</div>\n<div class=\"form-group col-md-12\">\n    [text* ap-your-phone class:form-control placeholder \"Phone Number*\"]\n</div>\n<div class=\"form-group col-md-12\">\n<div class=\"custom-checkbox\">\n<label><strong>Service(s) Needed:</strong></label>\n    [checkbox* checkbox-services class:form-check-label use_label_element \"Carpet Cleaning\" \"Tile & Grout Cleaning\" \"Upholstery Cleaning\" \"Water Damage Restoration\"]\n</div>\n</div>\n<div class=\"form-group col-md-12\">\n[textarea ap-additional-info class:form-control placeholder \"Additional Information\"]\n</div>\n</div>\n[submit class:btn class:btn-sm class:btn-outline-white \"Submit\"]'),
(769, 195, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:84:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\";s:6:\"sender\";s:89:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\";s:9:\"recipient\";s:19:\"roshanb54@gmail.com\";s:4:\"body\";s:255:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(770, 195, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:84:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\";s:6:\"sender\";s:89:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:197:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\";s:18:\"additional_headers\";s:29:\"Reply-To: roshanb54@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(771, 195, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(772, 195, '_additional_settings', ''),
(773, 195, '_locale', 'en_US'),
(790, 178, '_oembed_9fd1a6f28b4375265f88adc1129584b0', '<iframe title=\"Oriental rug cleaners miami\" width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/LjJyKNAQwNI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(791, 178, '_oembed_time_9fd1a6f28b4375265f88adc1129584b0', '1574994879'),
(792, 178, '_oembed_59db40529eff1c1c08ec023a7ff6e305', '<iframe title=\"Oriental rug cleaners miami\" width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/LjJyKNAQwNI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(793, 178, '_oembed_time_59db40529eff1c1c08ec023a7ff6e305', '1575125078'),
(803, 195, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(804, 197, '_wp_trash_meta_status', 'publish'),
(805, 197, '_wp_trash_meta_time', '1574995635'),
(806, 198, '_edit_lock', '1574995804:1'),
(807, 198, '_wp_trash_meta_status', 'publish'),
(808, 198, '_wp_trash_meta_time', '1574995809'),
(809, 199, '_wp_trash_meta_status', 'publish'),
(810, 199, '_wp_trash_meta_time', '1574996378'),
(811, 200, '_wp_trash_meta_status', 'publish'),
(812, 200, '_wp_trash_meta_time', '1574996386'),
(813, 201, '_wp_attached_file', '2019/11/cta_img.jpg'),
(814, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2019/11/cta_img.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"cta_img-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"cta_img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"cta_img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"cta_img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"cta_img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"cta_img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(815, 202, '_wp_trash_meta_status', 'publish'),
(816, 202, '_wp_trash_meta_time', '1574996454'),
(817, 203, '_wp_trash_meta_status', 'publish'),
(818, 203, '_wp_trash_meta_time', '1574996706'),
(819, 204, '_wp_trash_meta_status', 'publish'),
(820, 204, '_wp_trash_meta_time', '1574996719'),
(821, 205, '_wp_trash_meta_status', 'publish'),
(822, 205, '_wp_trash_meta_time', '1574996876'),
(823, 206, '_wp_trash_meta_status', 'publish'),
(824, 206, '_wp_trash_meta_time', '1574996889'),
(825, 153, '_edit_last', '1'),
(826, 153, '_wp_page_template', 'default'),
(827, 153, '_edit_lock', '1575040987:1'),
(828, 208, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1575043129;}'),
(829, 118, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(830, 119, '_product_attributes', 'a:2:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(831, 209, '_wp_attached_file', '2019/11/banner1-1.jpg'),
(832, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:21:\"2019/11/banner1-1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner1-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"banner1-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banner1-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"banner1-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banner1-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banner1-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(833, 213, 'wcpf_entity_options', 'a:13:{s:13:\"urlNavigation\";s:5:\"query\";s:15:\"filteringStarts\";s:4:\"auto\";s:20:\"urlNavigationOptions\";a:0:{}s:13:\"useComponents\";a:5:{i:0;s:10:\"pagination\";i:1;s:7:\"sorting\";i:2;s:13:\"results-count\";i:3;s:10:\"page-title\";i:4;s:10:\"breadcrumb\";}s:14:\"paginationAjax\";b:1;s:11:\"sortingAjax\";b:1;s:25:\"productsContainerSelector\";s:9:\".products\";s:18:\"paginationSelector\";s:23:\".woocommerce-pagination\";s:19:\"resultCountSelector\";s:25:\".woocommerce-result-count\";s:15:\"sortingSelector\";s:21:\".woocommerce-ordering\";s:17:\"pageTitleSelector\";s:35:\".woocommerce-products-header__title\";s:18:\"breadcrumbSelector\";s:23:\".woocommerce-breadcrumb\";s:29:\"multipleContainersForProducts\";b:1;}'),
(834, 213, 'wcpf_entity_key', 'Project'),
(835, 214, 'wcpf_entity_options', 'a:17:{s:11:\"itemsSource\";s:8:\"category\";s:12:\"itemsDisplay\";s:3:\"all\";s:9:\"queryType\";s:2:\"or\";s:24:\"itemsDisplayHierarchical\";b:1;s:28:\"displayHierarchicalCollapsed\";b:1;s:12:\"displayTitle\";b:1;s:20:\"displayToggleContent\";b:1;s:18:\"defaultToggleState\";s:4:\"show\";s:8:\"cssClass\";s:0:\"\";s:21:\"actionForEmptyOptions\";s:4:\"hide\";s:19:\"displayProductCount\";b:1;s:18:\"productCountPolicy\";s:15:\"for-option-only\";s:16:\"seeMoreOptionsBy\";s:9:\"scrollbar\";s:22:\"heightOfVisibleContent\";i:12;s:9:\"optionKey\";s:16:\"product-category\";s:19:\"itemsSourceCategory\";s:3:\"all\";s:26:\"itemsDisplayWithoutParents\";s:3:\"all\";}'),
(836, 214, 'wcpf_entity_key', 'CheckBoxListField'),
(841, 217, 'wcpf_entity_options', 'a:2:{s:8:\"cssClass\";s:0:\"\";s:6:\"action\";s:5:\"reset\";}'),
(842, 217, 'wcpf_entity_key', 'ButtonField'),
(843, 218, '_wp_trash_meta_status', 'publish'),
(844, 218, '_wp_trash_meta_time', '1575334817'),
(845, 219, '_edit_lock', '1575380689:1'),
(846, 219, '_customize_restore_dismissed', '1'),
(847, 220, '_edit_lock', '1575381377:1'),
(848, 220, '_customize_restore_dismissed', '1'),
(849, 221, '_edit_lock', '1575381472:1'),
(850, 221, '_wp_trash_meta_status', 'publish'),
(851, 221, '_wp_trash_meta_time', '1575381480'),
(852, 222, '_wp_trash_meta_status', 'publish'),
(853, 222, '_wp_trash_meta_time', '1575381807'),
(854, 223, '_wp_trash_meta_status', 'publish'),
(855, 223, '_wp_trash_meta_time', '1575384371'),
(856, 224, '_wp_trash_meta_status', 'publish'),
(857, 224, '_wp_trash_meta_time', '1575384399'),
(858, 225, '_wp_trash_meta_status', 'publish'),
(859, 225, '_wp_trash_meta_time', '1575384418'),
(860, 226, '_wp_trash_meta_status', 'publish'),
(861, 226, '_wp_trash_meta_time', '1575387584'),
(862, 227, '_wp_trash_meta_status', 'publish'),
(863, 227, '_wp_trash_meta_time', '1575387613'),
(864, 228, '_wp_trash_meta_status', 'publish'),
(865, 228, '_wp_trash_meta_time', '1575387627'),
(866, 229, '_wp_trash_meta_status', 'publish'),
(867, 229, '_wp_trash_meta_time', '1575387640'),
(868, 230, '_wp_trash_meta_status', 'publish'),
(869, 230, '_wp_trash_meta_time', '1575388279'),
(870, 231, '_wp_trash_meta_status', 'publish'),
(871, 231, '_wp_trash_meta_time', '1575388339'),
(872, 232, '_wp_trash_meta_status', 'publish'),
(873, 232, '_wp_trash_meta_time', '1575388466'),
(874, 233, '_wp_trash_meta_status', 'publish'),
(875, 233, '_wp_trash_meta_time', '1575389557'),
(876, 234, '_wp_trash_meta_status', 'publish'),
(877, 234, '_wp_trash_meta_time', '1575389874'),
(878, 235, '_wp_trash_meta_status', 'publish'),
(879, 235, '_wp_trash_meta_time', '1575390411'),
(880, 236, '_wp_trash_meta_status', 'publish'),
(881, 236, '_wp_trash_meta_time', '1575390419'),
(882, 237, '_wp_trash_meta_status', 'publish'),
(883, 237, '_wp_trash_meta_time', '1575391054'),
(884, 238, '_wp_trash_meta_status', 'publish'),
(885, 238, '_wp_trash_meta_time', '1575391070'),
(886, 239, '_wp_trash_meta_status', 'publish'),
(887, 239, '_wp_trash_meta_time', '1575391082'),
(888, 240, '_wp_trash_meta_status', 'publish'),
(889, 240, '_wp_trash_meta_time', '1575391095'),
(890, 241, '_wp_trash_meta_status', 'publish'),
(891, 241, '_wp_trash_meta_time', '1575391107'),
(892, 242, '_edit_lock', '1575427765:1'),
(893, 242, '_wp_trash_meta_status', 'publish'),
(894, 242, '_wp_trash_meta_time', '1575427768'),
(895, 243, '_wp_trash_meta_status', 'publish'),
(896, 243, '_wp_trash_meta_time', '1575428029'),
(897, 244, '_wp_trash_meta_status', 'publish'),
(898, 244, '_wp_trash_meta_time', '1575428051'),
(899, 245, '_wp_trash_meta_status', 'publish'),
(900, 245, '_wp_trash_meta_time', '1575428064'),
(901, 246, '_wp_trash_meta_status', 'publish'),
(902, 246, '_wp_trash_meta_time', '1575428075'),
(903, 247, '_wp_trash_meta_status', 'publish'),
(904, 247, '_wp_trash_meta_time', '1575429354'),
(905, 248, '_wp_trash_meta_status', 'publish'),
(906, 248, '_wp_trash_meta_time', '1575429370'),
(907, 249, '_wp_trash_meta_status', 'publish'),
(908, 249, '_wp_trash_meta_time', '1575429394'),
(909, 250, '_wp_trash_meta_status', 'publish'),
(910, 250, '_wp_trash_meta_time', '1575429680'),
(911, 251, '_wp_trash_meta_status', 'publish'),
(912, 251, '_wp_trash_meta_time', '1575429770'),
(913, 252, '_wp_trash_meta_status', 'publish'),
(914, 252, '_wp_trash_meta_time', '1575429792'),
(915, 118, '_product_image_gallery', '109,108,107,111'),
(916, 253, '_wp_trash_meta_status', 'publish'),
(917, 253, '_wp_trash_meta_time', '1575469566'),
(918, 254, '_wp_trash_meta_status', 'publish'),
(919, 254, '_wp_trash_meta_time', '1575472036'),
(920, 255, '_wp_trash_meta_status', 'publish'),
(921, 255, '_wp_trash_meta_time', '1575472133'),
(922, 256, '_wp_trash_meta_status', 'publish'),
(923, 256, '_wp_trash_meta_time', '1575472153'),
(924, 257, '_wp_trash_meta_status', 'publish'),
(925, 257, '_wp_trash_meta_time', '1575472219'),
(926, 258, '_wp_trash_meta_status', 'publish'),
(927, 258, '_wp_trash_meta_time', '1575472254'),
(928, 259, '_wp_trash_meta_status', 'publish'),
(929, 259, '_wp_trash_meta_time', '1575472271'),
(930, 260, '_wp_trash_meta_status', 'publish'),
(931, 260, '_wp_trash_meta_time', '1575472972'),
(934, 263, 'wcpf_entity_options', 'a:17:{s:11:\"itemsSource\";s:9:\"attribute\";s:12:\"itemsDisplay\";s:3:\"all\";s:9:\"queryType\";s:2:\"or\";s:24:\"itemsDisplayHierarchical\";b:1;s:28:\"displayHierarchicalCollapsed\";b:0;s:12:\"displayTitle\";b:1;s:20:\"displayToggleContent\";b:1;s:18:\"defaultToggleState\";s:4:\"show\";s:8:\"cssClass\";s:0:\"\";s:21:\"actionForEmptyOptions\";s:4:\"hide\";s:19:\"displayProductCount\";b:1;s:18:\"productCountPolicy\";s:15:\"for-option-only\";s:9:\"optionKey\";s:6:\"colors\";s:11:\"multiSelect\";b:1;s:20:\"itemsSourceAttribute\";s:5:\"color\";s:15:\"colors_pa_color\";a:4:{i:24;a:6:{s:4:\"type\";s:5:\"color\";s:5:\"color\";s:7:\"#dd3333\";s:5:\"image\";s:0:\"\";s:11:\"borderColor\";s:0:\"\";s:11:\"markerStyle\";s:5:\"light\";s:4:\"term\";i:24;}i:25;a:6:{s:4:\"type\";s:5:\"color\";s:5:\"color\";s:7:\"#1e73be\";s:5:\"image\";s:0:\"\";s:11:\"borderColor\";s:0:\"\";s:11:\"markerStyle\";s:5:\"light\";s:4:\"term\";i:25;}i:26;a:6:{s:4:\"type\";s:5:\"color\";s:5:\"color\";s:7:\"#81d742\";s:5:\"image\";s:0:\"\";s:11:\"borderColor\";s:0:\"\";s:11:\"markerStyle\";s:5:\"light\";s:4:\"term\";i:26;}i:30;a:6:{s:4:\"type\";s:5:\"color\";s:5:\"color\";s:7:\"#0a0a0a\";s:5:\"image\";s:0:\"\";s:11:\"borderColor\";s:0:\"\";s:11:\"markerStyle\";s:5:\"light\";s:4:\"term\";i:30;}}s:12:\"displayRules\";a:1:{i:0;a:2:{s:2:\"id\";s:7:\"group_0\";s:5:\"rules\";a:1:{i:0;a:2:{s:2:\"id\";s:6:\"rule_0\";s:4:\"rule\";a:3:{s:5:\"param\";s:8:\"category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}}}}}'),
(935, 263, 'wcpf_entity_key', 'ColorListField'),
(936, 264, '_menu_item_type', 'post_type'),
(937, 264, '_menu_item_menu_item_parent', '33'),
(938, 264, '_menu_item_object_id', '177'),
(939, 264, '_menu_item_object', 'gorg_gallery'),
(940, 264, '_menu_item_target', ''),
(941, 264, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(942, 264, '_menu_item_xfn', ''),
(943, 264, '_menu_item_url', ''),
(945, 265, '_menu_item_type', 'post_type'),
(946, 265, '_menu_item_menu_item_parent', '33'),
(947, 265, '_menu_item_object_id', '160'),
(948, 265, '_menu_item_object', 'gorg_gallery'),
(949, 265, '_menu_item_target', ''),
(950, 265, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(951, 265, '_menu_item_xfn', ''),
(952, 265, '_menu_item_url', '');

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
(6, 1, '2019-11-10 13:34:30', '2019-11-10 13:34:30', '<div class=\"row\">\r\n<div class=\"form-group col-lg-6\">\r\n[text* contact-name class:form-control placeholder \"Enter Name*\"]\r\n</div>\r\n<div class=\"form-group col-lg-6\">\r\n[email* contact-email class:form-control placeholder \"Enter Email*\"]\r\n</div>\r\n<div class=\"form-group col-lg-12\">\r\n[text contact-subject class:form-control placeholder \"Enter Subject\"]\r\n</div>\r\n<div class=\"form-group col-lg-12\">\r\n[textarea* contact-message class:form-control placeholder \"Message*\"]\r\n</textarea>\r\n</div>\r\n<div class=\"col-lg-12\">\r\n[submit id:submitButton class:btn class:btn-outline-white class:btn-radius \"Submit\"]\r\n</div>\r\n</div>\n1\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <info@gorg.com>\nroshanb54@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nReply-To: [your-email]\n\n\n\n\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nReply-To: roshanb54@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-20 02:04:41', '2019-11-20 02:04:41', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=wpcf7_contact_form&#038;p=6', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2019-11-10 14:26:32', '2019-11-10 14:26:32', '{\n    \"gorg_theme_options[gorg_social_facebook]\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:32\"\n    },\n    \"gorg_theme_options[gorg_social_twitter]\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:32\"\n    },\n    \"gorg_theme_options[gorg_social_googleplus]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8172a661-86a5-4686-a2ee-ddc348fe8604', '', '', '2019-11-10 14:26:32', '2019-11-10 14:26:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/10/8172a661-86a5-4686-a2ee-ddc348fe8604/', 0, 'customize_changeset', '', 0),
(9, 1, '2019-11-11 14:35:00', '2019-11-11 14:35:00', '', 'logo_dark', '', 'inherit', 'open', 'closed', '', 'logo_dark', '', '', '2019-11-11 14:35:00', '2019-11-11 14:35:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_dark.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2019-11-11 14:35:15', '2019-11-11 14:35:15', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:35:00\"\n    },\n    \"gorg::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:35:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf18f1d8-533f-4307-8636-baff2386959c', '', '', '2019-11-11 14:35:15', '2019-11-11 14:35:15', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2019-11-11 14:35:02', '2019-11-11 14:35:02', '', 'logo_white', '', 'inherit', 'open', 'closed', '', 'logo_white', '', '', '2019-11-11 14:35:02', '2019-11-11 14:35:02', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2019-11-11 14:46:42', '2019-11-11 14:46:42', '{\n    \"gorg_theme_options[white_image]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:46:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66d9f759-e72e-423e-896d-5bc327d1d54c', '', '', '2019-11-11 14:46:42', '2019-11-11 14:46:42', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/66d9f759-e72e-423e-896d-5bc327d1d54c/', 0, 'customize_changeset', '', 0),
(13, 1, '2019-11-11 14:48:01', '2019-11-11 14:48:01', '{\n    \"gorg_theme_options[contact_address]\": {\n        \"value\": \"383 Aragon Ave Coral Gables Miami, FL 33134\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:48:01\"\n    },\n    \"gorg_theme_options[contact_fphone]\": {\n        \"value\": \"305 442 4500\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 14:48:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ddc75819-2aba-4366-bedb-ffb3c051e0ee', '', '', '2019-11-11 14:48:01', '2019-11-11 14:48:01', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/ddc75819-2aba-4366-bedb-ffb3c051e0ee/', 0, 'customize_changeset', '', 0),
(15, 1, '2019-11-11 15:00:51', '2019-11-11 15:00:51', '{\n    \"gorg_theme_options[white_logo]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:00:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b71a7697-39d5-4a45-be83-1527f7746633', '', '', '2019-11-11 15:00:51', '2019-11-11 15:00:51', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/b71a7697-39d5-4a45-be83-1527f7746633/', 0, 'customize_changeset', '', 0),
(16, 1, '2019-11-11 15:05:55', '2019-11-11 15:05:55', '{\n    \"gorg_theme_options[contact_address]\": {\n        \"value\": \"383 Aragon Ave Coral Gables Miami, FL 33134\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:05:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4305341-84ae-41ba-96ab-ebb8fc0d0182', '', '', '2019-11-11 15:05:55', '2019-11-11 15:05:55', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/f4305341-84ae-41ba-96ab-ebb8fc0d0182/', 0, 'customize_changeset', '', 0),
(17, 1, '2019-11-11 15:09:32', '2019-11-11 15:09:32', '{\n    \"gorg_theme_options[gorg_social_instagram]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:09:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '32134f56-3c39-4f48-b010-e7181104396c', '', '', '2019-11-11 15:09:32', '2019-11-11 15:09:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/32134f56-3c39-4f48-b010-e7181104396c/', 0, 'customize_changeset', '', 0),
(18, 1, '2019-11-11 15:10:02', '2019-11-11 15:10:02', '{\n    \"gorg_theme_options[gorg_social_linkedin]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    },\n    \"gorg_theme_options[gorg_social_googleplus]\": {\n        \"value\": \"http://4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    },\n    \"gorg_theme_options[gorg_social_instagram]\": {\n        \"value\": \"http://5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    },\n    \"gorg_theme_options[gorg_social_youtube]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:10:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb12e1d6-911e-436a-bde3-9956de34e8ff', '', '', '2019-11-11 15:10:02', '2019-11-11 15:10:02', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/bb12e1d6-911e-436a-bde3-9956de34e8ff/', 0, 'customize_changeset', '', 0),
(19, 1, '2019-11-11 15:14:30', '2019-11-11 15:14:30', '{\n    \"gorg_theme_options[gorg_social_linkedin]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:14:26\"\n    },\n    \"gorg_theme_options[gorg_social_youtube]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-11 15:14:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e147f795-32a5-4850-a264-595a3322e182', '', '', '2019-11-11 15:14:30', '2019-11-11 15:14:30', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2019-11-11 15:18:38', '2019-11-11 15:18:38', '<!-- wp:paragraph -->\n<p> At Grand Oriental Rug Gallery, we offer an everlasting commitment to providing our clientele an exquisite selection of the highest quality hand-made carpets available. Located in the heart of Coral Gables, Florida, our showroom features a large and diverse selection of Contemporary rugs, Traditional Area rugs, Tibetan rugs, Animal prints, and Modern century rugs. Providing over three generations of knowledge, service, and experience, our company strives to bridge the gap between art, design, and architecture by making rugs a key element of interior design, and our end goal is to provide the highest quality hand-made carpets available to our customers, with the hopes of being able to implement and integrate them perfectly into their existing household décor. Not only are you able to choose from our existing stock, but you also have the option of selecting your own pattern and color scheme using our color reference system consisting of over 6,000 shades of colors to design your own custom rug tailored to your liking. </p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-11-13 13:31:00', '2019-11-13 13:31:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-11-11 15:18:38', '2019-11-11 15:18:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-11-11 15:18:38', '2019-11-11 15:18:38', '', 20, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-11-11 15:18:54', '2019-11-11 15:18:54', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-11-21 15:17:14', '2019-11-21 15:17:14', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-11-11 15:18:54', '2019-11-11 15:18:54', '', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-11 15:18:54', '2019-11-11 15:18:54', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 'Locations', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-11 15:19:09', '2019-11-11 15:19:09', '', 24, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gorg-gallery', '', '', '2019-11-26 15:45:58', '2019-11-26 15:45:58', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-11 15:19:19', '2019-11-11 15:19:19', '', 26, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-11-20 01:48:51', '2019-11-20 01:48:51', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-11-11 15:19:33', '2019-11-11 15:19:33', '', 28, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/11/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-11-11 15:20:15', '2019-11-11 15:20:15', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-12-05 13:49:05', '2019-12-05 13:49:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-11-11 15:20:15', '2019-11-11 15:20:15', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-12-05 13:49:05', '2019-12-05 13:49:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2019-11-11 15:20:16', '2019-11-11 15:20:16', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-12-05 13:49:07', '2019-12-05 13:49:07', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=32', 17, 'nav_menu_item', '', 0),
(33, 1, '2019-11-11 15:20:16', '2019-11-11 15:20:16', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=33', 14, 'nav_menu_item', '', 0),
(34, 1, '2019-11-11 15:19:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-11 15:19:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2019-11-11 15:20:16', '2019-11-11 15:20:16', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-12-05 13:49:05', '2019-12-05 13:49:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2019-11-11 15:20:15', '2019-11-11 15:20:15', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-12-05 13:49:05', '2019-12-05 13:49:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=36', 3, 'nav_menu_item', '', 0),
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
(60, 1, '2019-11-13 13:41:33', '2019-11-13 13:41:33', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"300\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:41:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '12ad4da5-f538-4b87-ac57-628c7f6edcc6', '', '', '2019-11-13 13:41:33', '2019-11-13 13:41:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/12ad4da5-f538-4b87-ac57-628c7f6edcc6/', 0, 'customize_changeset', '', 0),
(61, 1, '2019-11-13 13:43:21', '2019-11-13 13:43:21', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:43:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3e464c44-b45a-4b2d-98d2-baf81413b29f', '', '', '2019-11-13 13:43:21', '2019-11-13 13:43:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2019-11-13 13:47:39', '2019-11-13 13:47:39', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:47:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8f810fe-d525-4482-9060-f6cfcb662324', '', '', '2019-11-13 13:47:39', '2019-11-13 13:47:39', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/d8f810fe-d525-4482-9060-f6cfcb662324/', 0, 'customize_changeset', '', 0),
(63, 1, '2019-11-13 13:47:56', '2019-11-13 13:47:56', '{\n    \"gorg_theme_options[welcome_text_limit]\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:47:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '298a40db-bc2b-4bd1-b3cd-d45b56c666e9', '', '', '2019-11-13 13:47:56', '2019-11-13 13:47:56', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/298a40db-bc2b-4bd1-b3cd-d45b56c666e9/', 0, 'customize_changeset', '', 0),
(64, 1, '2019-11-13 13:48:22', '2019-11-13 13:48:22', '{\n    \"gorg_theme_options[select_about_page]\": {\n        \"value\": \"20\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-13 13:48:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d8697f2-3881-4b03-a498-195b81566292', '', '', '2019-11-13 13:48:22', '2019-11-13 13:48:22', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/13/8d8697f2-3881-4b03-a498-195b81566292/', 0, 'customize_changeset', '', 0),
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
(85, 1, '2019-11-17 02:34:33', '2019-11-17 02:34:33', '{\n    \"gorg_theme_options[contact_form]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:34:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e926b10b-c57b-4b5f-a918-7e373bd09a13', '', '', '2019-11-17 02:34:33', '2019-11-17 02:34:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/e926b10b-c57b-4b5f-a918-7e373bd09a13/', 0, 'customize_changeset', '', 0);
INSERT INTO `gorg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2019-11-17 02:34:43', '2019-11-17 02:34:43', '{\n    \"gorg_theme_options[contact_form]\": {\n        \"value\": \"[contact-form-7 id=\\\"6\\\" title=\\\"Contact form\\\"]\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:34:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2777b981-69f7-4497-93c4-5965be5645a7', '', '', '2019-11-17 02:34:43', '2019-11-17 02:34:43', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/2777b981-69f7-4497-93c4-5965be5645a7/', 0, 'customize_changeset', '', 0),
(87, 1, '2019-11-17 02:35:17', '2019-11-17 02:35:17', '{\n    \"gorg_theme_options[contact_title]\": {\n        \"value\": \"Get In Touch\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-17 02:35:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0ae73a6d-8615-4614-a2b4-cb9d2a687d76', '', '', '2019-11-17 02:35:17', '2019-11-17 02:35:17', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/17/0ae73a6d-8615-4614-a2b4-cb9d2a687d76/', 0, 'customize_changeset', '', 0),
(88, 1, '2019-11-17 02:48:22', '2019-11-17 02:48:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"gorg_testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonial Options', 'testimonial-options', 'publish', 'closed', 'closed', '', 'group_5dd0b4ca724b1', '', '', '2019-11-17 02:48:22', '2019-11-17 02:48:22', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2019-11-17 02:48:22', '2019-11-17 02:48:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Testimonial Content', 'testimonial_content', 'publish', 'closed', 'closed', '', 'field_5dd0b4de7079e', '', '', '2019-11-17 02:48:22', '2019-11-17 02:48:22', '', 88, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2019-11-17 02:48:22', '2019-11-17 02:48:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Designation', 'designation', 'publish', 'closed', 'closed', '', 'field_5dd0b4d37079d', '', '', '2019-11-17 02:48:22', '2019-11-17 02:48:22', '', 88, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=90', 1, 'acf-field', '', 0),
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
(107, 1, '2019-11-17 14:55:47', '2019-11-17 14:55:47', '', 'product1', '', 'inherit', 'open', 'closed', '', 'product1', '', '', '2019-11-26 13:54:49', '2019-11-26 13:54:49', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-11-17 14:55:48', '2019-11-17 14:55:48', '', 'product2', '', 'inherit', 'open', 'closed', '', 'product2', '', '', '2019-11-17 14:55:48', '2019-11-17 14:55:48', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-11-17 14:55:50', '2019-11-17 14:55:50', '', 'product3', '', 'inherit', 'open', 'closed', '', 'product3', '', '', '2019-11-17 14:55:50', '2019-11-17 14:55:50', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product3.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-11-17 14:55:52', '2019-11-17 14:55:52', '', 'product4', '', 'inherit', 'open', 'closed', '', 'product4', '', '', '2019-11-17 14:55:52', '2019-11-17 14:55:52', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product4.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-11-17 14:55:54', '2019-11-17 14:55:54', '', 'product5', '', 'inherit', 'open', 'closed', '', 'product5', '', '', '2019-11-17 14:55:54', '2019-11-17 14:55:54', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/product5.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-11-18 01:08:21', '2019-11-18 01:08:21', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:08:17\"\n    },\n    \"gorg_theme_options[catalogue_count]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:08:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25eb7c01-0648-4657-a872-41d96a331b53', '', '', '2019-11-18 01:08:21', '2019-11-18 01:08:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=112', 0, 'customize_changeset', '', 0),
(113, 1, '2019-11-18 01:11:49', '2019-11-18 01:11:49', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:11:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '90c6f954-da34-4fae-aada-c681d2faca0a', '', '', '2019-11-18 01:11:49', '2019-11-18 01:11:49', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/90c6f954-da34-4fae-aada-c681d2faca0a/', 0, 'customize_changeset', '', 0),
(114, 1, '2019-11-18 01:12:20', '2019-11-18 01:12:20', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:12:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4e3f4689-b1d3-4a40-9ab2-c4a3697cb4d7', '', '', '2019-11-18 01:12:20', '2019-11-18 01:12:20', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/4e3f4689-b1d3-4a40-9ab2-c4a3697cb4d7/', 0, 'customize_changeset', '', 0),
(115, 1, '2019-11-18 01:12:46', '2019-11-18 01:12:46', '{\n    \"gorg_theme_options[catalogue_title]\": {\n        \"value\": \"PRODUCT CATALOGUE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 01:12:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '568f136f-003b-4532-8f2c-c57bf883522c', '', '', '2019-11-18 01:12:46', '2019-11-18 01:12:46', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/568f136f-003b-4532-8f2c-c57bf883522c/', 0, 'customize_changeset', '', 0),
(116, 1, '2019-11-18 02:20:34', '2019-11-18 02:20:34', '{\n    \"gorg_theme_options[catalogue_count]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 02:20:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3bdbcdc5-4f13-4ca5-b1ad-d14baf718848', '', '', '2019-11-18 02:20:34', '2019-11-18 02:20:34', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/3bdbcdc5-4f13-4ca5-b1ad-d14baf718848/', 0, 'customize_changeset', '', 0),
(117, 1, '2019-11-18 02:34:36', '2019-11-18 02:34:36', '{\n    \"gorg_theme_options[featured_title]\": {\n        \"value\": \"FEATURED PRODUCT\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 02:34:36\"\n    },\n    \"gorg_theme_options[featured_limit]\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 02:34:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f65890e6-0402-4981-9b24-d02448694302', '', '', '2019-11-18 02:34:36', '2019-11-18 02:34:36', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/f65890e6-0402-4981-9b24-d02448694302/', 0, 'customize_changeset', '', 0),
(118, 1, '2019-11-18 02:43:20', '2019-11-18 02:43:20', 'Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit sed.', 'Product Name 1', 'Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit sed.', 'publish', 'open', 'closed', '', 'product-name-1', '', '', '2019-12-04 14:18:09', '2019-12-04 14:18:09', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2019-11-18 02:43:42', '2019-11-18 02:43:42', '', 'Product Name 2', '', 'publish', 'open', 'closed', '', 'product-name-2', '', '', '2019-11-29 16:08:13', '2019-11-29 16:08:13', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=product&#038;p=119', 0, 'product', '', 0),
(120, 1, '2019-11-18 02:44:03', '2019-11-18 02:44:03', '', 'Product Name 3', '', 'publish', 'open', 'closed', '', 'product-name-3', '', '', '2019-11-18 02:58:49', '2019-11-18 02:58:49', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2019-11-18 02:44:22', '2019-11-18 02:44:22', '', 'Product Name 4', '', 'publish', 'open', 'closed', '', 'product-name-4', '', '', '2019-11-18 02:58:48', '2019-11-18 02:58:48', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=product&#038;p=121', 0, 'product', '', 0),
(122, 1, '2019-11-18 02:44:58', '2019-11-18 02:44:58', '', 'Product Name 5', '', 'publish', 'open', 'closed', '', 'product-name-5', '', '', '2019-11-18 03:06:00', '2019-11-18 03:06:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2019-11-18 03:08:08', '2019-11-18 03:08:08', '{\n    \"gorg_theme_options[featured_limit]\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-18 03:08:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9f88fe2-778d-4964-b202-2542ef96f2c5', '', '', '2019-11-18 03:08:08', '2019-11-18 03:08:08', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/18/e9f88fe2-778d-4964-b202-2542ef96f2c5/', 0, 'customize_changeset', '', 0),
(124, 1, '2019-11-20 01:50:16', '2019-11-20 01:50:16', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '28-autosave-v1', '', '', '2019-11-20 01:50:16', '2019-11-20 01:50:16', '', 28, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/20/28-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2019-11-21 14:19:08', '2019-11-21 14:19:08', '<!-- wp:heading -->\n<h2>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</h2>\n<!-- /wp:heading -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:19:08', '2019-11-21 14:19:08', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-11-21 14:24:39', '2019-11-21 14:24:39', '<!-- wp:heading -->\n<h2>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:24:39', '2019-11-21 14:24:39', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-11-21 14:27:29', '2019-11-21 14:27:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"22\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Cleaning Process Options', 'cleaning-process-options', 'publish', 'closed', 'closed', '', 'group_5dd69e72ced50', '', '', '2019-11-21 14:27:29', '2019-11-21 14:27:29', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=127', 0, 'acf-field-group', '', 0),
(128, 1, '2019-11-21 14:27:29', '2019-11-21 14:27:29', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Cleaning Process Steps', 'cleaning_process_steps', 'publish', 'closed', 'closed', '', 'field_5dd69e837dd0e', '', '', '2019-11-21 14:27:29', '2019-11-21 14:27:29', '', 127, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=128', 0, 'acf-field', '', 0),
(129, 1, '2019-11-21 14:28:16', '2019-11-21 14:28:16', '<!-- wp:heading -->\n<h2>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:28:16', '2019-11-21 14:28:16', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-11-21 14:30:15', '2019-11-21 14:30:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"22\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'CTA Options', 'cta-options', 'publish', 'closed', 'closed', '', 'group_5dd69f1075a87', '', '', '2019-11-21 14:31:34', '2019-11-21 14:31:34', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2019-11-21 14:30:15', '2019-11-21 14:30:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CTA Title', 'cta_title', 'publish', 'closed', 'closed', '', 'field_5dd69f343e423', '', '', '2019-11-21 14:30:15', '2019-11-21 14:30:15', '', 130, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=131', 0, 'acf-field', '', 0),
(132, 1, '2019-11-21 14:30:15', '2019-11-21 14:30:15', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'CTA Content', 'cta_content', 'publish', 'closed', 'closed', '', 'field_5dd69f413e424', '', '', '2019-11-21 14:31:34', '2019-11-21 14:31:34', '', 130, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&#038;p=132', 1, 'acf-field', '', 0),
(133, 1, '2019-11-21 14:30:15', '2019-11-21 14:30:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CTA Button Text', 'cta_button_text', 'publish', 'closed', 'closed', '', 'field_5dd69f503e425', '', '', '2019-11-21 14:30:15', '2019-11-21 14:30:15', '', 130, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=133', 2, 'acf-field', '', 0),
(134, 1, '2019-11-21 14:30:15', '2019-11-21 14:30:15', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'CTA Button Link', 'cta_button_link', 'publish', 'closed', 'closed', '', 'field_5dd69f643e426', '', '', '2019-11-21 14:30:15', '2019-11-21 14:30:15', '', 130, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=134', 3, 'acf-field', '', 0),
(135, 1, '2019-11-21 14:31:19', '2019-11-21 14:31:19', '<!-- wp:heading -->\n<h2>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:31:19', '2019-11-21 14:31:19', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-11-21 14:33:54', '2019-11-21 14:33:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"22\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Restorations Section Options', 'restorations-section-options', 'publish', 'closed', 'closed', '', 'group_5dd69ff3bf727', '', '', '2019-11-21 14:33:55', '2019-11-21 14:33:55', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=136', 0, 'acf-field-group', '', 0),
(137, 1, '2019-11-21 14:33:54', '2019-11-21 14:33:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'section_title', 'publish', 'closed', 'closed', '', 'field_5dd6a0051c093', '', '', '2019-11-21 14:33:54', '2019-11-21 14:33:54', '', 136, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=137', 0, 'acf-field', '', 0),
(138, 1, '2019-11-21 14:33:55', '2019-11-21 14:33:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Section Content', 'section_content', 'publish', 'closed', 'closed', '', 'field_5dd6a0261c094', '', '', '2019-11-21 14:33:55', '2019-11-21 14:33:55', '', 136, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=138', 1, 'acf-field', '', 0),
(139, 1, '2019-11-21 14:33:55', '2019-11-21 14:33:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video Background Image', 'video_background_image', 'publish', 'closed', 'closed', '', 'field_5dd6a0311c095', '', '', '2019-11-21 14:33:55', '2019-11-21 14:33:55', '', 136, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=139', 2, 'acf-field', '', 0),
(140, 1, '2019-11-21 14:33:55', '2019-11-21 14:33:55', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Youtube Video Link', 'youtube_video_link', 'publish', 'closed', 'closed', '', 'field_5dd6a0411c096', '', '', '2019-11-21 14:33:55', '2019-11-21 14:33:55', '', 136, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=140', 3, 'acf-field', '', 0),
(141, 1, '2019-11-21 14:45:08', '2019-11-21 14:45:08', '', 'Washing-an-Oriental-Rug', '', 'inherit', 'open', 'closed', '', 'washing-an-oriental-rug', '', '', '2019-11-26 13:55:00', '2019-11-26 13:55:00', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/Washing-an-Oriental-Rug.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2019-11-21 14:45:37', '2019-11-21 14:45:37', '<!-- wp:heading -->\n<h2>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:45:37', '2019-11-21 14:45:37', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2019-11-21 14:48:28', '2019-11-21 14:48:28', '<!-- wp:heading -->\n<h2>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:48:28', '2019-11-21 14:48:28', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-11-21 14:48:39', '2019-11-21 14:48:39', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:48:39', '2019-11-21 14:48:39', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-11-21 14:48:40', '2019-11-21 14:48:40', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:48:40', '2019-11-21 14:48:40', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2019-11-21 14:54:44', '2019-11-21 14:54:44', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:54:44', '2019-11-21 14:54:44', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-11-21 14:54:45', '2019-11-21 14:54:45', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:54:45', '2019-11-21 14:54:45', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-11-21 14:55:55', '2019-11-21 14:55:55', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:55:55', '2019-11-21 14:55:55', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `gorg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(149, 1, '2019-11-21 14:59:57', '2019-11-21 14:59:57', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 14:59:57', '2019-11-21 14:59:57', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-11-21 15:07:10', '2019-11-21 15:07:10', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 15:07:10', '2019-11-21 15:07:10', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-11-21 15:17:14', '2019-11-21 15:17:14', '<!-- wp:heading -->\n<h2><strong>Carpet &amp; Rug Cleaning Services In Miami FL, Rugs Repair Service</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":23} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>At Grand Oriental Rug Gallery your oriental Rugs are precious possessions. They also represent a sizable investments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Complete submersion process is used, its that simple,&nbsp;<strong>YOU MAY ASK WHY</strong>&nbsp;Your Rugs add to the beauty of your house. they finish off the decor of a room and make it warm and inviting, among the things they invite are a host of impurities-dirt and grime settle deep in the pile of your Rug along with hair and dander from your pets, and bacteria and other microbes find your Rug a perfect place to lurk and Multiply. while simple coffee and food stains are easily apparent, most of the impurities will wedge them selves deeper into your Rug, making them resistant to removal by vacuuming. in sort, what you think is fresh clean Rug could actually be harboring a host of germs and allergens, and you don\'t even know it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The custom built vibrating massager gently loosen the deep down dirt out of both the front and back of your rug. The Rug is then totally soaked and submerged-in a cool water, along with the mild organic shampoo- process breaks down and flushes out all impurities, and any deep down dirt and dust that are trapped in the Rugs fiber and foundation. now its time for the total submersion rinse. A purified water is used in rinsing process. The Rug has to be prepared for drying process-after excess amount of water is squeezed out- The Rug is now left drying on a blocking table that is more suitable for Rugs prone to losing their shape when wet. The final steps are carefully measured, the Process includes brushing the Rug and the fringes is very important component of the Rug, because it\'s the extension of the warp threads, that makes the foundation of the Rug.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-11-21 15:17:14', '2019-11-21 15:17:14', '', 22, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/21/22-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-11-24 02:48:48', '2019-11-24 02:48:48', '', 'Products', '', 'publish', 'closed', 'closed', '', 'gorg-products', '', '', '2019-11-29 15:25:14', '2019-11-29 15:25:14', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/shop/', 0, 'page', '', 0),
(154, 1, '2019-11-24 02:48:49', '2019-11-24 02:48:49', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'trash', 'closed', 'closed', '', 'cart__trashed', '', '', '2019-11-24 02:49:00', '2019-11-24 02:49:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/cart/', 0, 'page', '', 0),
(155, 1, '2019-11-24 02:48:49', '2019-11-24 02:48:49', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'trash', 'closed', 'closed', '', 'checkout__trashed', '', '', '2019-11-24 02:49:01', '2019-11-24 02:49:01', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/checkout/', 0, 'page', '', 0),
(156, 1, '2019-11-24 02:48:49', '2019-11-24 02:48:49', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-11-24 02:48:49', '2019-11-24 02:48:49', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/my-account/', 0, 'page', '', 0),
(157, 1, '2019-11-24 02:49:00', '2019-11-24 02:49:00', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2019-11-24 02:49:00', '2019-11-24 02:49:00', '', 154, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/24/154-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-11-24 02:49:01', '2019-11-24 02:49:01', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2019-11-24 02:49:01', '2019-11-24 02:49:01', '', 155, 'http://localhost/GrandOrientalRugGalleryWordpress/2019/11/24/155-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-11-24 02:50:02', '2019-11-24 02:50:02', ' ', '', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=159', 13, 'nav_menu_item', '', 0),
(160, 1, '2019-11-26 13:53:29', '2019-11-26 13:53:29', '', 'Media Event', '', 'publish', 'closed', 'closed', '', 'media-event', '', '', '2019-11-26 14:56:04', '2019-11-26 14:56:04', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_gallery&#038;p=160', 0, 'gorg_gallery', '', 0),
(161, 1, '2019-11-26 13:54:27', '2019-11-26 13:54:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"gorg_gallery\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Gallery Options', 'gallery-options', 'publish', 'closed', 'closed', '', 'group_5ddd2e739d081', '', '', '2019-11-26 13:54:28', '2019-11-26 13:54:28', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field-group&#038;p=161', 0, 'acf-field-group', '', 0),
(162, 1, '2019-11-26 13:54:27', '2019-11-26 13:54:27', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Add Gallery Images', 'add_gallery_images', 'publish', 'closed', 'closed', '', 'field_5ddd2e7b789d6', '', '', '2019-11-26 13:54:27', '2019-11-26 13:54:27', '', 161, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=acf-field&p=162', 0, 'acf-field', '', 0),
(163, 1, '2019-11-26 13:56:17', '2019-11-26 13:56:17', '', 'gallery_img1', '', 'inherit', 'open', 'closed', '', 'gallery_img1', '', '', '2019-11-26 14:02:44', '2019-11-26 14:02:44', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2019-11-26 13:56:28', '2019-11-26 13:56:28', '', 'gallery_img2', '', 'inherit', 'open', 'closed', '', 'gallery_img2', '', '', '2019-11-26 13:56:28', '2019-11-26 13:56:28', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2019-11-26 13:56:37', '2019-11-26 13:56:37', '', 'gallery_img3', '', 'inherit', 'open', 'closed', '', 'gallery_img3', '', '', '2019-11-26 13:56:37', '2019-11-26 13:56:37', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2019-11-26 13:56:39', '2019-11-26 13:56:39', '', 'gallery_img4', '', 'inherit', 'open', 'closed', '', 'gallery_img4', '', '', '2019-11-26 13:56:39', '2019-11-26 13:56:39', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2019-11-26 13:56:50', '2019-11-26 13:56:50', '', 'gallery_img5', '', 'inherit', 'open', 'closed', '', 'gallery_img5', '', '', '2019-11-26 14:03:25', '2019-11-26 14:03:25', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img5.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2019-11-26 13:56:52', '2019-11-26 13:56:52', '', 'gallery_img6', '', 'inherit', 'open', 'closed', '', 'gallery_img6', '', '', '2019-11-26 14:02:59', '2019-11-26 14:02:59', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img6.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2019-11-26 13:56:54', '2019-11-26 13:56:54', '', 'gallery_img7', '', 'inherit', 'open', 'closed', '', 'gallery_img7', '', '', '2019-11-26 13:56:54', '2019-11-26 13:56:54', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img7.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2019-11-26 13:57:04', '2019-11-26 13:57:04', '', 'gallery_img8', '', 'inherit', 'open', 'closed', '', 'gallery_img8', '', '', '2019-11-26 13:57:04', '2019-11-26 13:57:04', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img8.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2019-11-26 13:57:13', '2019-11-26 13:57:13', '', 'gallery_img9', '', 'inherit', 'open', 'closed', '', 'gallery_img9', '', '', '2019-11-26 13:57:13', '2019-11-26 13:57:13', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img9.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2019-11-26 13:57:27', '2019-11-26 13:57:27', '', 'gallery_img10', '', 'inherit', 'open', 'closed', '', 'gallery_img10', '', '', '2019-11-26 13:57:27', '2019-11-26 13:57:27', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img10.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2019-11-26 13:57:31', '2019-11-26 13:57:31', '', 'gallery_img11', '', 'inherit', 'open', 'closed', '', 'gallery_img11', '', '', '2019-11-26 13:57:31', '2019-11-26 13:57:31', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img11.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2019-11-26 13:57:33', '2019-11-26 13:57:33', '', 'Luxury living room interior with white couch and seascape view', '', 'inherit', 'open', 'closed', '', 'luxury-living-room-interior-with-white-couch-and-seascape-view', '', '', '2019-11-26 13:57:33', '2019-11-26 13:57:33', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img12.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2019-11-26 13:57:42', '2019-11-26 13:57:42', '', 'gallery_img13', '', 'inherit', 'open', 'closed', '', 'gallery_img13', '', '', '2019-11-26 13:57:42', '2019-11-26 13:57:42', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img13.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2019-11-26 13:57:44', '2019-11-26 13:57:44', '', 'gallery_img14', '', 'inherit', 'open', 'closed', '', 'gallery_img14', '', '', '2019-11-26 13:57:44', '2019-11-26 13:57:44', '', 160, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img14.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2019-11-26 14:03:26', '2019-11-26 14:03:26', '', 'In Room Setting', '', 'publish', 'closed', 'closed', '', 'in-room-setting', '', '', '2019-11-26 14:03:26', '2019-11-26 14:03:26', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=gorg_gallery&#038;p=177', 0, 'gorg_gallery', '', 0),
(178, 1, '2019-11-27 14:27:43', '2019-11-27 14:27:43', '<!-- wp:heading {\"level\":3} -->\n<h3><strong>Top Rug Cleaning Services in Miami Beach</strong> </h3>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Miami Beach, where rustling waves crash on the shore give way to sunbathing locals and tourists alike lying about on the sand; while in the background, small historic hotels dot Ocean Drive and buildings of the past give way to towering multi-million-dollar condos and hotels that line the Miami Beach skyline. All these locales share one commonality, however: the beach!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/LjJyKNAQwNI\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/LjJyKNAQwNI\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:image {\"id\":209,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/banner1-1-1024x683.jpg\" alt=\"\" class=\"wp-image-209\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Separated from the Miami mainland by Biscayne Bay, Miami Beach, a world-famous beach town characterized by its warm Atlantic waters; a long stretch of sandy beaches; historic architecture; and vibrant, scenic nightlife, is a unique charm to the Miami panorama. From its sleepy origins as an agricultural area and planned coconut plantation, the vision of pioneer Carl Fisher prompted subsequent dredging of the mangrove swamps into sandy beaches drove the development of the area – marked by the construction of the first hotel in 1914 and the subsequent incorporation of the City of Miami Beach in 1915.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> A destination for tourists and locals alike, Miami Beach draws in millions in each year with sites that uniquely characterize Miami Beach, such as the renowned Fontainebleau Hotel, Versace Mansion, Collins Avenue, Lincoln Road Mall, eclectic Ocean Drive, the historic Art Deco district (an art style unique to Miami), several museums, countless delicious restaurants, and vibrant nightlife. Miami Beach today is also a hub for shopping, fashion, culture, and festivals alike, with its beaches enjoying a distinct status that few other cities in the world share. It is truly a city unlike any other!We have served Miami Beach and the surrounding areas before South Beach was even famous. In fact, Miami Beach has been classified into three distinct areas: North Beach, Mid Beach, and South Beach. While South Beach is always booming and bustling, the North Beach scene is a more tranquil, but just as beautiful experience.<br>While a rug can bring out the best in any living space, homes and apartments in coastal areas such as Miami Beach, with warm tropical air and the sea breeze nearby, have special concerns to address. Oriental rug cleaning in Miami Beach is especially important due to the proximity of saltwater intrusion and susceptibility to flooding.Having serviced homes, condos, and hotels we ensure your rugs are treated and cared for each step of the way.<br>Quick question: when was the last time you cleaned your floors? Okay, you probably know the answer to that one; but how about your sofa? And your curtains? And your rugs? Rugs many times tend to be one of the most overlooked items in your home or office when it comes to cleaning and usually, many homeowners only clean their carpets once they are stained or some kind of event has occurred (such as a spill, pet accident, flood, etc.) that necessitates the cleaning of the rug. However, it is not only under these circumstances in which you should clean your rugs and carpets. Habitual cleanings and preventative maintenance go a long way in ensuring the overall health of your carpet. In our experience with oriental rug cleaning in Miami Beach one of the most volatile compounds contributing to the deterioration of your carpet is sand. Whether brought in by the wind or by a day at the beach, sand’s abrasiveness, over time, can pose serious risks to the overall structure of your Oriental rug. As time goes by sand lodges itself deep within the pile and foundation to a point where a thorough vacuuming will not cut it. In this event sand scrapes the foundation of the carpet, the equivalent of several near-microscopic knives slowly wearing away your foundation, weakening the overall carpet. We have extracted large amounts of sand in particular from Oriental rugs in Miami Beach and other coastal areas that would have remained ingrained and invisible if not removed.<br>Another factor particularly affecting coastal areas such as Miami Beach is flooding. With sea levels rising and hurricanes a potential threat to South Florida, the susceptibility to flooding in Miami Beach and other low-lying coastal areas is inevitable. We have witnessed many hurricanes pass through our area and leave a trail of damage and flooding behind. We were one of the first to respond after Hurricanes Katrina (2005), Wilma (2005), and Irma (2017) slammed the Miami Beach area, and have copious amounts of experience when it comes to handling rugs affected by flood damage, especially saltwater. We have been able to salvage, wash, and restore these carpets successfully, thus saving many treasured heirlooms for many more years to come.Additionally, your rugs maintain a unique appeal to your home or office; however, as with any textile, with regular use, dust particles, as well as dirt, pollen, bacteria, and just about anything else that can stick to the bottoms of your shoes (or feet) can and will pass on to the rugs in your home or office, and accumulate. While there are measures to curtail the frequency and amount of this occurring, your rugs still should be cleaned at certain intervals dependent on their traffic and condition, and always be on your agenda of things to clean.The best kept secret and only way to keep your rugs in the best condition, lasting long, and remaining usable for years to come, is through care and maintenance by a professional evaluation and customized rug cleanings (according to the many factors we take into consideration which is the best method for your rug).In the case of&nbsp;<a href=\"https://www.grandorientalruggallery.com/\">Oriental rugs</a>, it’s essential to keep them healthy so that in turn, your home will stay healthy. Now why did we say “healthy” for an inanimate object? Because unless the rug is synthetic, Oriental carpets are made from natural fibres such as wool, silk, cotton, or even hide (as in the case with cowhide rugs). These fibres all benefit from a wash or cleaning and allows your rugs to be restored to their best condition. Witness how a superior cleaning can restore your rugs and carpets to beautiful condition and bring back their vibrant colors. Juxtapose for yourself; before and after results will be sure to amaze!Our trained professionals promise to use all effective and safe methods to eliminate stains, odor and total dirt from your rugs. Because of pre-existing conditions and factors beyond our control, we are unable to guarantee removal of stains, but we have had a high success rate in eliminating many kinds of stains. However, this is not meant to discourage you, please bring your rugs in, so that we may get to work as soon as possible. Time is the most essential factor.Traditional cleaning methods may not deliver effective solutions and we promise quality improvement whatever the current condition of your rug may be. Seek our help and we shall assist you immediately, according to the need and take measures to prevent any additional growth of bacteria or any further issues from springing up. Our team assures total and fresh, lasting clean to your carpet as we make sure that any detrimental bacteria is completely washed away from the carpet, as this is one method to extend the life of the carpet and ensure longevity of your carpet as well as a reduction in any risk for allergens in your living space. Our experience as dedicated rug cleaners in Miami Beach brings you pristine rug care and cleaning services at affordable prices. Coupled with our state-of-the-art equipment, classical rug washing techniques, and gentle, but effective cleaning agents, we promise to return to you a clean and fresh carpet, which is totally safe for any living space. </p>\n<!-- /wp:paragraph -->', 'Miami Beach', '', 'publish', 'closed', 'closed', '', 'miami-beach', '', '', '2019-11-30 14:45:05', '2019-11-30 14:45:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=178', 0, 'location', '', 0),
(179, 1, '2019-11-27 14:28:33', '2019-11-27 14:28:33', '', 'Key Biscayne', '', 'publish', 'closed', 'closed', '', 'key-biscayne', '', '', '2019-11-27 14:28:33', '2019-11-27 14:28:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=179', 0, 'location', '', 0),
(180, 1, '2019-11-27 14:28:58', '2019-11-27 14:28:58', '', 'Pinecrest', '', 'publish', 'closed', 'closed', '', 'pinecrest', '', '', '2019-11-27 14:28:58', '2019-11-27 14:28:58', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=180', 0, 'location', '', 0),
(181, 1, '2019-11-27 14:29:27', '2019-11-27 14:29:27', '', 'Coconut Grove', '', 'publish', 'closed', 'closed', '', 'coconut-grove', '', '', '2019-11-27 14:29:27', '2019-11-27 14:29:27', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=181', 0, 'location', '', 0),
(182, 1, '2019-11-27 14:29:46', '2019-11-27 14:29:46', '', 'Brickell', '', 'publish', 'closed', 'closed', '', 'brickell', '', '', '2019-11-27 14:29:46', '2019-11-27 14:29:46', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=182', 0, 'location', '', 0),
(183, 1, '2019-11-27 14:30:21', '2019-11-27 14:30:21', '', 'Kendall', '', 'publish', 'closed', 'closed', '', 'kendall', '', '', '2019-11-27 14:30:21', '2019-11-27 14:30:21', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=183', 0, 'location', '', 0),
(184, 1, '2019-11-27 14:30:35', '2019-11-27 14:30:35', '', 'Doral', '', 'publish', 'closed', 'closed', '', 'doral', '', '', '2019-11-27 14:30:35', '2019-11-27 14:30:35', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=184', 0, 'location', '', 0),
(185, 1, '2019-11-27 14:31:20', '2019-11-27 14:31:20', '', 'Palmetto Bay', '', 'publish', 'closed', 'closed', '', 'palmetto-bay', '', '', '2019-11-27 14:31:20', '2019-11-27 14:31:20', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=location&#038;p=185', 0, 'location', '', 0),
(186, 1, '2019-11-27 14:59:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-27 14:59:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=186', 1, 'nav_menu_item', '', 0),
(187, 1, '2019-11-27 15:00:41', '2019-11-27 15:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '187', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=187', 8, 'nav_menu_item', '', 0),
(188, 1, '2019-11-27 15:00:42', '2019-11-27 15:00:42', ' ', '', '', 'publish', 'closed', 'closed', '', '188', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=188', 9, 'nav_menu_item', '', 0),
(189, 1, '2019-11-27 15:00:43', '2019-11-27 15:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '189', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=189', 10, 'nav_menu_item', '', 0),
(190, 1, '2019-11-27 15:00:43', '2019-11-27 15:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '190', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=190', 11, 'nav_menu_item', '', 0),
(191, 1, '2019-11-27 15:00:43', '2019-11-27 15:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '191', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=191', 12, 'nav_menu_item', '', 0),
(192, 1, '2019-11-27 15:00:41', '2019-11-27 15:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '192', '', '', '2019-12-05 13:49:05', '2019-12-05 13:49:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=192', 5, 'nav_menu_item', '', 0),
(193, 1, '2019-11-27 15:00:41', '2019-11-27 15:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '193', '', '', '2019-12-05 13:49:05', '2019-12-05 13:49:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=193', 6, 'nav_menu_item', '', 0),
(194, 1, '2019-11-27 15:00:41', '2019-11-27 15:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '194', '', '', '2019-12-05 13:49:06', '2019-12-05 13:49:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=194', 7, 'nav_menu_item', '', 0),
(195, 1, '2019-11-28 02:07:43', '2019-11-28 02:07:43', '<div class=\"row\">\r\n<div class=\"form-group col-md-12\">\r\n    [text* ap-your-name class:form-control placeholder \"Full Name*\"]\r\n</div>\r\n<div class=\"form-group col-md-12\">\r\n[email* ap-your-email class:form-control placeholder \"Your Email*\"]\r\n</div>\r\n<div class=\"form-group col-md-12\">\r\n    [text* ap-your-phone class:form-control placeholder \"Phone Number*\"]\r\n</div>\r\n<div class=\"form-group col-md-12\">\r\n<div class=\"custom-checkbox\">\r\n<label><strong>Service(s) Needed:</strong></label>\r\n    [checkbox* checkbox-services class:form-check-label use_label_element \"Carpet Cleaning\" \"Tile & Grout Cleaning\" \"Upholstery Cleaning\" \"Water Damage Restoration\"]\r\n</div>\r\n</div>\r\n<div class=\"form-group col-md-12\">\r\n[textarea ap-additional-info class:form-control placeholder \"Additional Information\"]\r\n</div>\r\n</div>\r\n[submit class:btn class:btn-sm class:btn-outline-white \"Submit\"]\n1\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\nroshanb54@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nReply-To: [your-email]\n\n\n\n\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nReply-To: roshanb54@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Cleaning Appointment', '', 'publish', 'closed', 'closed', '', 'cleaning-appointment', '', '', '2019-11-28 15:30:17', '2019-11-28 15:30:17', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=wpcf7_contact_form&#038;p=195', 0, 'wpcf7_contact_form', '', 0),
(197, 1, '2019-11-29 02:47:15', '2019-11-29 02:47:15', '{\n    \"gorg_theme_options[cta_title]\": {\n        \"value\": \"Pick Up And Delivery Service Available.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 02:47:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89015023-832e-4c4c-8afb-a41f6ea563db', '', '', '2019-11-29 02:47:15', '2019-11-29 02:47:15', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/89015023-832e-4c4c-8afb-a41f6ea563db/', 0, 'customize_changeset', '', 0),
(198, 1, '2019-11-29 02:50:09', '2019-11-29 02:50:09', '{\n    \"gorg_theme_options[cta_content]\": {\n        \"value\": \"Call For a Free Quote today<br/>\\n<i class=\\\"fa fa-phone\\\"></i>\\u00a0305 442 4500 -\\u00a0<i class=\\\"fa fa-phone\\\"></i>\\u00a0305 490 1936\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 02:50:00\"\n    },\n    \"gorg_theme_options[cta_btn_text]\": {\n        \"value\": \"Contact Us\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 02:50:04\"\n    },\n    \"gorg_theme_options[cta_btn_link]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/contact-us/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 02:50:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a47e8190-8696-47ed-8f75-011e58d53203', '', '', '2019-11-29 02:50:09', '2019-11-29 02:50:09', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=198', 0, 'customize_changeset', '', 0),
(199, 1, '2019-11-29 02:59:37', '2019-11-29 02:59:37', '{\n    \"gorg_theme_options[cta_title]\": {\n        \"value\": \"Pick Up And Delivery Service Available.1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 02:59:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3cdcd1e8-908c-4c09-ba46-7e1ce5dee254', '', '', '2019-11-29 02:59:37', '2019-11-29 02:59:37', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/3cdcd1e8-908c-4c09-ba46-7e1ce5dee254/', 0, 'customize_changeset', '', 0),
(200, 1, '2019-11-29 02:59:46', '2019-11-29 02:59:46', '{\n    \"gorg_theme_options[cta_title]\": {\n        \"value\": \"Pick Up And Delivery Service Available.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 02:59:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0d0284a-d2d9-4668-b15d-c372482ddcc6', '', '', '2019-11-29 02:59:46', '2019-11-29 02:59:46', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/e0d0284a-d2d9-4668-b15d-c372482ddcc6/', 0, 'customize_changeset', '', 0),
(201, 1, '2019-11-29 03:00:48', '2019-11-29 03:00:48', '', 'cta_img', '', 'inherit', 'open', 'closed', '', 'cta_img', '', '', '2019-11-29 03:00:48', '2019-11-29 03:00:48', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/cta_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2019-11-29 03:00:53', '2019-11-29 03:00:53', '{\n    \"gorg_theme_options[cta_bg_img]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/cta_img.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 03:00:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a5c129c-6a52-4c6b-b022-030c4ab4f101', '', '', '2019-11-29 03:00:53', '2019-11-29 03:00:53', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/3a5c129c-6a52-4c6b-b022-030c4ab4f101/', 0, 'customize_changeset', '', 0),
(203, 1, '2019-11-29 03:05:06', '2019-11-29 03:05:06', '{\n    \"gorg_theme_options[cta_bg_img]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img4-scaled.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 03:05:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8cc32728-e775-4a14-b029-579910960be7', '', '', '2019-11-29 03:05:06', '2019-11-29 03:05:06', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/8cc32728-e775-4a14-b029-579910960be7/', 0, 'customize_changeset', '', 0),
(204, 1, '2019-11-29 03:05:19', '2019-11-29 03:05:19', '{\n    \"gorg_theme_options[cta_bg_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 03:05:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ecf7107f-345d-40a6-9afc-a52aa93da038', '', '', '2019-11-29 03:05:19', '2019-11-29 03:05:19', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/ecf7107f-345d-40a6-9afc-a52aa93da038/', 0, 'customize_changeset', '', 0),
(205, 1, '2019-11-29 03:07:55', '2019-11-29 03:07:55', '{\n    \"gorg_theme_options[cta_bg_img]\": {\n        \"value\": \"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/gallery_img7-scaled.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 03:07:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9318e801-f1b3-4b69-8c21-4e039bc37740', '', '', '2019-11-29 03:07:55', '2019-11-29 03:07:55', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/9318e801-f1b3-4b69-8c21-4e039bc37740/', 0, 'customize_changeset', '', 0),
(206, 1, '2019-11-29 03:08:09', '2019-11-29 03:08:09', '{\n    \"gorg_theme_options[cta_bg_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-29 03:08:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e733e36-e723-420d-a38b-8d15c5e81b3b', '', '', '2019-11-29 03:08:09', '2019-11-29 03:08:09', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/0e733e36-e723-420d-a38b-8d15c5e81b3b/', 0, 'customize_changeset', '', 0),
(207, 1, '2019-11-29 15:24:27', '2019-11-29 15:24:27', '', 'Products', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2019-11-29 15:24:27', '2019-11-29 15:24:27', '', 153, 'http://localhost/GrandOrientalRugGalleryWordpress/153-revision-v1/', 0, 'revision', '', 0),
(208, 0, '2019-11-29 15:58:49', '2019-11-29 15:58:49', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5de14064dab474.31417695-yHSIZMnRo6sOLZpiEkFQJJeVNDOMslNh', '', '', '2019-11-29 15:59:32', '2019-11-29 15:59:32', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=scheduled-action&#038;p=208', 0, 'scheduled-action', '', 3),
(209, 1, '2019-11-30 14:38:10', '2019-11-30 14:38:10', '', 'banner1-1', '', 'inherit', 'open', 'closed', '', 'banner1-1', '', '', '2019-11-30 14:38:10', '2019-11-30 14:38:10', '', 178, 'http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/banner1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2019-11-30 14:42:40', '2019-11-30 14:42:40', '<!-- wp:heading {\"level\":3} -->\n<h3><strong>Top Rug Cleaning Services in Miami Beach</strong> </h3>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Miami Beach, where rustling waves crash on the shore give way to sunbathing locals and tourists alike lying about on the sand; while in the background, small historic hotels dot Ocean Drive and buildings of the past give way to towering multi-million-dollar condos and hotels that line the Miami Beach skyline. All these locales share one commonality, however: the beach!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/LjJyKNAQwNI\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/LjJyKNAQwNI\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:paragraph -->\n<p>Separated from the Miami mainland by Biscayne Bay, Miami Beach, a world-famous beach town characterized by its warm Atlantic waters; a long stretch of sandy beaches; historic architecture; and vibrant, scenic nightlife, is a unique charm to the Miami panorama. From its sleepy origins as an agricultural area and planned coconut plantation, the vision of pioneer Carl Fisher prompted subsequent dredging of the mangrove swamps into sandy beaches drove the development of the area – marked by the construction of the first hotel in 1914 and the subsequent incorporation of the City of Miami Beach in 1915.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> A destination for tourists and locals alike, Miami Beach draws in millions in each year with sites that uniquely characterize Miami Beach, such as the renowned Fontainebleau Hotel, Versace Mansion, Collins Avenue, Lincoln Road Mall, eclectic Ocean Drive, the historic Art Deco district (an art style unique to Miami), several museums, countless delicious restaurants, and vibrant nightlife. Miami Beach today is also a hub for shopping, fashion, culture, and festivals alike, with its beaches enjoying a distinct status that few other cities in the world share. It is truly a city unlike any other!We have served Miami Beach and the surrounding areas before South Beach was even famous. In fact, Miami Beach has been classified into three distinct areas: North Beach, Mid Beach, and South Beach. While South Beach is always booming and bustling, the North Beach scene is a more tranquil, but just as beautiful experience.<br>While a rug can bring out the best in any living space, homes and apartments in coastal areas such as Miami Beach, with warm tropical air and the sea breeze nearby, have special concerns to address. Oriental rug cleaning in Miami Beach is especially important due to the proximity of saltwater intrusion and susceptibility to flooding.Having serviced homes, condos, and hotels we ensure your rugs are treated and cared for each step of the way.<br>Quick question: when was the last time you cleaned your floors? Okay, you probably know the answer to that one; but how about your sofa? And your curtains? And your rugs? Rugs many times tend to be one of the most overlooked items in your home or office when it comes to cleaning and usually, many homeowners only clean their carpets once they are stained or some kind of event has occurred (such as a spill, pet accident, flood, etc.) that necessitates the cleaning of the rug. However, it is not only under these circumstances in which you should clean your rugs and carpets. Habitual cleanings and preventative maintenance go a long way in ensuring the overall health of your carpet. In our experience with oriental rug cleaning in Miami Beach one of the most volatile compounds contributing to the deterioration of your carpet is sand. Whether brought in by the wind or by a day at the beach, sand’s abrasiveness, over time, can pose serious risks to the overall structure of your Oriental rug. As time goes by sand lodges itself deep within the pile and foundation to a point where a thorough vacuuming will not cut it. In this event sand scrapes the foundation of the carpet, the equivalent of several near-microscopic knives slowly wearing away your foundation, weakening the overall carpet. We have extracted large amounts of sand in particular from Oriental rugs in Miami Beach and other coastal areas that would have remained ingrained and invisible if not removed.<br>Another factor particularly affecting coastal areas such as Miami Beach is flooding. With sea levels rising and hurricanes a potential threat to South Florida, the susceptibility to flooding in Miami Beach and other low-lying coastal areas is inevitable. We have witnessed many hurricanes pass through our area and leave a trail of damage and flooding behind. We were one of the first to respond after Hurricanes Katrina (2005), Wilma (2005), and Irma (2017) slammed the Miami Beach area, and have copious amounts of experience when it comes to handling rugs affected by flood damage, especially saltwater. We have been able to salvage, wash, and restore these carpets successfully, thus saving many treasured heirlooms for many more years to come.Additionally, your rugs maintain a unique appeal to your home or office; however, as with any textile, with regular use, dust particles, as well as dirt, pollen, bacteria, and just about anything else that can stick to the bottoms of your shoes (or feet) can and will pass on to the rugs in your home or office, and accumulate. While there are measures to curtail the frequency and amount of this occurring, your rugs still should be cleaned at certain intervals dependent on their traffic and condition, and always be on your agenda of things to clean.The best kept secret and only way to keep your rugs in the best condition, lasting long, and remaining usable for years to come, is through care and maintenance by a professional evaluation and customized rug cleanings (according to the many factors we take into consideration which is the best method for your rug).In the case of&nbsp;<a href=\"https://www.grandorientalruggallery.com/\">Oriental rugs</a>, it’s essential to keep them healthy so that in turn, your home will stay healthy. Now why did we say “healthy” for an inanimate object? Because unless the rug is synthetic, Oriental carpets are made from natural fibres such as wool, silk, cotton, or even hide (as in the case with cowhide rugs). These fibres all benefit from a wash or cleaning and allows your rugs to be restored to their best condition. Witness how a superior cleaning can restore your rugs and carpets to beautiful condition and bring back their vibrant colors. Juxtapose for yourself; before and after results will be sure to amaze!Our trained professionals promise to use all effective and safe methods to eliminate stains, odor and total dirt from your rugs. Because of pre-existing conditions and factors beyond our control, we are unable to guarantee removal of stains, but we have had a high success rate in eliminating many kinds of stains. However, this is not meant to discourage you, please bring your rugs in, so that we may get to work as soon as possible. Time is the most essential factor.Traditional cleaning methods may not deliver effective solutions and we promise quality improvement whatever the current condition of your rug may be. Seek our help and we shall assist you immediately, according to the need and take measures to prevent any additional growth of bacteria or any further issues from springing up. Our team assures total and fresh, lasting clean to your carpet as we make sure that any detrimental bacteria is completely washed away from the carpet, as this is one method to extend the life of the carpet and ensure longevity of your carpet as well as a reduction in any risk for allergens in your living space. Our experience as dedicated rug cleaners in Miami Beach brings you pristine rug care and cleaning services at affordable prices. Coupled with our state-of-the-art equipment, classical rug washing techniques, and gentle, but effective cleaning agents, we promise to return to you a clean and fresh carpet, which is totally safe for any living space. </p>\n<!-- /wp:paragraph -->', 'Miami Beach', '', 'inherit', 'closed', 'closed', '', '178-autosave-v1', '', '', '2019-11-30 14:42:40', '2019-11-30 14:42:40', '', 178, 'http://localhost/GrandOrientalRugGalleryWordpress/178-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `gorg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(211, 1, '2019-11-30 14:49:58', '2019-11-30 14:49:58', '<!-- wp:paragraph -->\n<p> At Grand Oriental Rug Gallery, we offer an everlasting commitment to providing our clientele an exquisite selection of the highest quality hand-made carpets available. Located in the heart of Coral Gables, Florida, our showroom features a large and diverse selection of Contemporary rugs, Traditional Area rugs, Tibetan rugs, Animal prints, and Modern century rugs. Providing over three generations of knowledge, service, and experience, our company strives to bridge the gap between art, design, and architecture by making rugs a key element of interior design, and our end goal is to provide the highest quality hand-made carpets available to our customers, with the hopes of being able to implement and integrate them perfectly into their existing household décor. Not only are you able to choose from our existing stock, but you also have the option of selecting your own pattern and color scheme using our color reference system consisting of over 6,000 shades of colors to design your own custom rug tailored to your liking. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2019-11-30 14:49:58', '2019-11-30 14:49:58', '', 20, 'http://localhost/GrandOrientalRugGalleryWordpress/20-autosave-v1/', 0, 'revision', '', 0),
(212, 1, '2019-12-01 02:08:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-01 02:08:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=212', 0, 'post', '', 0),
(213, 1, '2019-12-01 02:10:38', '2019-12-01 02:10:38', '', 'Filters for product archive', '', 'publish', 'closed', 'closed', '', 'filters-for-product-archive', '', '', '2019-12-04 15:48:39', '2019-12-04 15:48:39', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/filters-for-product-archive/', 0, 'wcpf_project', '', 0),
(214, 1, '2019-12-01 02:10:38', '2019-12-01 02:10:38', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2019-12-04 15:48:39', '2019-12-04 15:48:39', '', 213, 'http://localhost/GrandOrientalRugGalleryWordpress/categories/', 0, 'wcpf_item', '', 0),
(217, 1, '2019-12-01 02:10:38', '2019-12-01 02:10:38', '', 'Reset', '', 'publish', 'closed', 'closed', '', 'reset', '', '', '2019-12-04 15:48:39', '2019-12-04 15:48:39', '', 213, 'http://localhost/GrandOrientalRugGalleryWordpress/reset/', 2, 'wcpf_item', '', 0),
(218, 1, '2019-12-03 01:00:17', '2019-12-03 01:00:17', '{\n    \"gorg_theme_options[contact_map_iframe]\": {\n        \"value\": \"<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d229991.0376233033!2d-80.262074!3d25.750409!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b79a70cb3ec9%3A0x576b28e932ed9b0f!2s383%20Aragon%20Ave%2C%20Coral%20Gables%2C%20FL%2033134%2C%20USA!5e0!3m2!1sen!2sin!4v1575334809026!5m2!1sen!2sin\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\"></iframe>\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 01:00:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '561df4f2-925b-4c88-95e0-54842547a16d', '', '', '2019-12-03 01:00:17', '2019-12-03 01:00:17', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/561df4f2-925b-4c88-95e0-54842547a16d/', 0, 'customize_changeset', '', 0),
(219, 1, '2019-12-03 13:44:49', '0000-00-00 00:00:00', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 13:44:49\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b214c58c-4c7b-4be0-ad4e-edd521820c81', '', '', '2019-12-03 13:44:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=219', 0, 'customize_changeset', '', 0),
(220, 1, '2019-12-03 13:56:08', '0000-00-00 00:00:00', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 13:56:08\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0120ff5c-7466-46e7-9f6d-8786b7ba7b10', '', '', '2019-12-03 13:56:08', '2019-12-03 13:56:08', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=220', 0, 'customize_changeset', '', 0),
(221, 1, '2019-12-03 13:58:00', '2019-12-03 13:58:00', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 13:57:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c87e0f29-5c8b-46ac-aa90-8f7002c6162e', '', '', '2019-12-03 13:58:00', '2019-12-03 13:58:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=221', 0, 'customize_changeset', '', 0),
(222, 1, '2019-12-03 14:03:27', '2019-12-03 14:03:27', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 14:03:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c772d74-af5c-4abd-9059-caf81fb52333', '', '', '2019-12-03 14:03:27', '2019-12-03 14:03:27', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/4c772d74-af5c-4abd-9059-caf81fb52333/', 0, 'customize_changeset', '', 0),
(223, 1, '2019-12-03 14:46:11', '2019-12-03 14:46:11', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 14:46:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1db1e453-cde5-40a8-a633-c81066fc6126', '', '', '2019-12-03 14:46:11', '2019-12-03 14:46:11', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/1db1e453-cde5-40a8-a633-c81066fc6126/', 0, 'customize_changeset', '', 0),
(224, 1, '2019-12-03 14:46:39', '2019-12-03 14:46:39', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 14:46:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ed81a88-e6a4-4cea-a823-9f25f090ee61', '', '', '2019-12-03 14:46:39', '2019-12-03 14:46:39', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2ed81a88-e6a4-4cea-a823-9f25f090ee61/', 0, 'customize_changeset', '', 0),
(225, 1, '2019-12-03 14:46:57', '2019-12-03 14:46:57', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 14:46:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fc4b1272-42d5-4297-a7d5-8829cffbed76', '', '', '2019-12-03 14:46:57', '2019-12-03 14:46:57', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/fc4b1272-42d5-4297-a7d5-8829cffbed76/', 0, 'customize_changeset', '', 0),
(226, 1, '2019-12-03 15:39:43', '2019-12-03 15:39:43', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:39:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d713711-9450-418c-aa54-d298c04949ae', '', '', '2019-12-03 15:39:43', '2019-12-03 15:39:43', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/5d713711-9450-418c-aa54-d298c04949ae/', 0, 'customize_changeset', '', 0),
(227, 1, '2019-12-03 15:40:12', '2019-12-03 15:40:12', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:40:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f64f8413-7831-4b46-b7a4-461dbb8172b4', '', '', '2019-12-03 15:40:12', '2019-12-03 15:40:12', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/f64f8413-7831-4b46-b7a4-461dbb8172b4/', 0, 'customize_changeset', '', 0),
(228, 1, '2019-12-03 15:40:26', '2019-12-03 15:40:26', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:40:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97a39a08-3447-4cdd-96bc-92664307fa4f', '', '', '2019-12-03 15:40:26', '2019-12-03 15:40:26', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/97a39a08-3447-4cdd-96bc-92664307fa4f/', 0, 'customize_changeset', '', 0),
(229, 1, '2019-12-03 15:40:39', '2019-12-03 15:40:39', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:40:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '311efc49-afa1-4612-b15a-666827c19c22', '', '', '2019-12-03 15:40:39', '2019-12-03 15:40:39', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/311efc49-afa1-4612-b15a-666827c19c22/', 0, 'customize_changeset', '', 0),
(230, 1, '2019-12-03 15:51:19', '2019-12-03 15:51:19', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:51:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8dc5c39f-18ae-4061-9eb5-87f48301f407', '', '', '2019-12-03 15:51:19', '2019-12-03 15:51:19', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/8dc5c39f-18ae-4061-9eb5-87f48301f407/', 0, 'customize_changeset', '', 0),
(231, 1, '2019-12-03 15:52:18', '2019-12-03 15:52:18', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:52:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80f66a77-1d98-4036-931c-4ac517fe47e1', '', '', '2019-12-03 15:52:18', '2019-12-03 15:52:18', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/80f66a77-1d98-4036-931c-4ac517fe47e1/', 0, 'customize_changeset', '', 0),
(232, 1, '2019-12-03 15:54:25', '2019-12-03 15:54:25', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 15:54:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '089cc08e-bc32-4d61-8178-7146cc41e611', '', '', '2019-12-03 15:54:25', '2019-12-03 15:54:25', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/089cc08e-bc32-4d61-8178-7146cc41e611/', 0, 'customize_changeset', '', 0),
(233, 1, '2019-12-03 16:12:36', '2019-12-03 16:12:36', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:12:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '846167c3-958e-43b3-b4bb-091531db5b7b', '', '', '2019-12-03 16:12:36', '2019-12-03 16:12:36', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/846167c3-958e-43b3-b4bb-091531db5b7b/', 0, 'customize_changeset', '', 0),
(234, 1, '2019-12-03 16:17:53', '2019-12-03 16:17:53', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:17:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f7afd7ef-d0de-460a-a2ad-c604251b18c5', '', '', '2019-12-03 16:17:53', '2019-12-03 16:17:53', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/f7afd7ef-d0de-460a-a2ad-c604251b18c5/', 0, 'customize_changeset', '', 0),
(235, 1, '2019-12-03 16:26:50', '2019-12-03 16:26:50', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:26:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '63c688b5-a903-4181-85de-568a82ff661a', '', '', '2019-12-03 16:26:50', '2019-12-03 16:26:50', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/63c688b5-a903-4181-85de-568a82ff661a/', 0, 'customize_changeset', '', 0),
(236, 1, '2019-12-03 16:26:58', '2019-12-03 16:26:58', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:26:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e030a62-ffe5-4864-8a96-3cc1ffe88de7', '', '', '2019-12-03 16:26:58', '2019-12-03 16:26:58', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/1e030a62-ffe5-4864-8a96-3cc1ffe88de7/', 0, 'customize_changeset', '', 0),
(237, 1, '2019-12-03 16:37:33', '2019-12-03 16:37:33', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:37:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c65f5b78-bee4-44e7-b62c-3f62e4591948', '', '', '2019-12-03 16:37:33', '2019-12-03 16:37:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/c65f5b78-bee4-44e7-b62c-3f62e4591948/', 0, 'customize_changeset', '', 0),
(238, 1, '2019-12-03 16:37:50', '2019-12-03 16:37:50', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:37:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee03919e-72f6-4b62-8849-724dd8e2bab3', '', '', '2019-12-03 16:37:50', '2019-12-03 16:37:50', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/ee03919e-72f6-4b62-8849-724dd8e2bab3/', 0, 'customize_changeset', '', 0),
(239, 1, '2019-12-03 16:38:01', '2019-12-03 16:38:01', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:38:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e8240361-a448-404d-8281-cd913cf49a56', '', '', '2019-12-03 16:38:01', '2019-12-03 16:38:01', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/e8240361-a448-404d-8281-cd913cf49a56/', 0, 'customize_changeset', '', 0),
(240, 1, '2019-12-03 16:38:14', '2019-12-03 16:38:14', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:38:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2fb0b75-0f7a-47a6-a56f-385ddba0da58', '', '', '2019-12-03 16:38:14', '2019-12-03 16:38:14', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/b2fb0b75-0f7a-47a6-a56f-385ddba0da58/', 0, 'customize_changeset', '', 0),
(241, 1, '2019-12-03 16:38:27', '2019-12-03 16:38:27', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-03 16:38:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7c57c76a-fda7-48ad-9adb-bad953224472', '', '', '2019-12-03 16:38:27', '2019-12-03 16:38:27', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/7c57c76a-fda7-48ad-9adb-bad953224472/', 0, 'customize_changeset', '', 0),
(242, 1, '2019-12-04 02:49:28', '2019-12-04 02:49:28', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 02:49:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5341e59-6001-424a-9289-967a3ef30ceb', '', '', '2019-12-04 02:49:28', '2019-12-04 02:49:28', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=242', 0, 'customize_changeset', '', 0),
(243, 1, '2019-12-04 02:53:48', '2019-12-04 02:53:48', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 02:53:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2213a7af-99d5-4140-8ec7-8e041b3259be', '', '', '2019-12-04 02:53:48', '2019-12-04 02:53:48', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2213a7af-99d5-4140-8ec7-8e041b3259be/', 0, 'customize_changeset', '', 0),
(244, 1, '2019-12-04 02:54:10', '2019-12-04 02:54:10', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 02:54:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8049db9f-f2e1-4eba-a86f-bab5b9c61964', '', '', '2019-12-04 02:54:10', '2019-12-04 02:54:10', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/8049db9f-f2e1-4eba-a86f-bab5b9c61964/', 0, 'customize_changeset', '', 0),
(245, 1, '2019-12-04 02:54:23', '2019-12-04 02:54:23', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 02:54:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ace4d524-0817-44e2-ba2f-e8068dab3d4f', '', '', '2019-12-04 02:54:23', '2019-12-04 02:54:23', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/ace4d524-0817-44e2-ba2f-e8068dab3d4f/', 0, 'customize_changeset', '', 0),
(246, 1, '2019-12-04 02:54:35', '2019-12-04 02:54:35', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 02:54:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2f8b8e5-5f57-471d-9c38-ec6be7f2d0f5', '', '', '2019-12-04 02:54:35', '2019-12-04 02:54:35', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/c2f8b8e5-5f57-471d-9c38-ec6be7f2d0f5/', 0, 'customize_changeset', '', 0),
(247, 1, '2019-12-04 03:15:54', '2019-12-04 03:15:54', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 03:15:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9572ca94-89e2-4131-8519-829f203fada1', '', '', '2019-12-04 03:15:54', '2019-12-04 03:15:54', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/9572ca94-89e2-4131-8519-829f203fada1/', 0, 'customize_changeset', '', 0),
(248, 1, '2019-12-04 03:16:10', '2019-12-04 03:16:10', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 03:16:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '785985e8-fbce-4480-8e7e-39a1dd040c95', '', '', '2019-12-04 03:16:10', '2019-12-04 03:16:10', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/785985e8-fbce-4480-8e7e-39a1dd040c95/', 0, 'customize_changeset', '', 0),
(249, 1, '2019-12-04 03:16:34', '2019-12-04 03:16:34', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 03:16:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ef611c8-7f35-4934-aaf3-e27152b784bc', '', '', '2019-12-04 03:16:34', '2019-12-04 03:16:34', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/6ef611c8-7f35-4934-aaf3-e27152b784bc/', 0, 'customize_changeset', '', 0),
(250, 1, '2019-12-04 03:21:20', '2019-12-04 03:21:20', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 03:21:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec303dc2-1a28-4e7d-81da-28b3d2d9b98c', '', '', '2019-12-04 03:21:20', '2019-12-04 03:21:20', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/ec303dc2-1a28-4e7d-81da-28b3d2d9b98c/', 0, 'customize_changeset', '', 0),
(251, 1, '2019-12-04 03:22:50', '2019-12-04 03:22:50', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 03:22:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bde4dd5b-9771-4ab3-8c5a-8462e749470f', '', '', '2019-12-04 03:22:50', '2019-12-04 03:22:50', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/bde4dd5b-9771-4ab3-8c5a-8462e749470f/', 0, 'customize_changeset', '', 0),
(252, 1, '2019-12-04 03:23:12', '2019-12-04 03:23:12', '{\n    \"gorg_theme_options[gorg_shop_column]\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 03:23:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e4eb3f0-91cc-4bf1-b37b-bdcb2e9089e2', '', '', '2019-12-04 03:23:12', '2019-12-04 03:23:12', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/9e4eb3f0-91cc-4bf1-b37b-bdcb2e9089e2/', 0, 'customize_changeset', '', 0),
(253, 1, '2019-12-04 14:26:05', '2019-12-04 14:26:05', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 14:26:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '368a9354-e208-427c-b24a-722f9f7259b9', '', '', '2019-12-04 14:26:05', '2019-12-04 14:26:05', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/368a9354-e208-427c-b24a-722f9f7259b9/', 0, 'customize_changeset', '', 0),
(254, 1, '2019-12-04 15:07:15', '2019-12-04 15:07:15', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"left-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:07:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '519e5dd8-02a5-41fb-be94-ce3184510893', '', '', '2019-12-04 15:07:15', '2019-12-04 15:07:15', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/519e5dd8-02a5-41fb-be94-ce3184510893/', 0, 'customize_changeset', '', 0),
(255, 1, '2019-12-04 15:08:53', '2019-12-04 15:08:53', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:08:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd0e4354f-dad3-4df3-adb0-199308501080', '', '', '2019-12-04 15:08:53', '2019-12-04 15:08:53', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/d0e4354f-dad3-4df3-adb0-199308501080/', 0, 'customize_changeset', '', 0),
(256, 1, '2019-12-04 15:09:12', '2019-12-04 15:09:12', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:09:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a15ab984-6234-4d29-9291-49804e9550eb', '', '', '2019-12-04 15:09:12', '2019-12-04 15:09:12', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/a15ab984-6234-4d29-9291-49804e9550eb/', 0, 'customize_changeset', '', 0),
(257, 1, '2019-12-04 15:10:18', '2019-12-04 15:10:18', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:10:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2333f884-2481-44ca-b84a-8434b141005a', '', '', '2019-12-04 15:10:18', '2019-12-04 15:10:18', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2333f884-2481-44ca-b84a-8434b141005a/', 0, 'customize_changeset', '', 0),
(258, 1, '2019-12-04 15:10:53', '2019-12-04 15:10:53', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:10:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2cd3fb28-e868-49b6-b204-3df33f388037', '', '', '2019-12-04 15:10:53', '2019-12-04 15:10:53', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/2cd3fb28-e868-49b6-b204-3df33f388037/', 0, 'customize_changeset', '', 0),
(259, 1, '2019-12-04 15:11:11', '2019-12-04 15:11:11', '{\n    \"gorg_theme_options[gorg_shop_page_sidebar]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:11:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6299f1d5-80b7-4e6e-8c2b-3a4fa617fbd6', '', '', '2019-12-04 15:11:11', '2019-12-04 15:11:11', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/6299f1d5-80b7-4e6e-8c2b-3a4fa617fbd6/', 0, 'customize_changeset', '', 0),
(260, 1, '2019-12-04 15:22:52', '2019-12-04 15:22:52', '{\n    \"gorg_theme_options[gorg_single_product_page_sidebar]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-04 15:22:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7479436b-9ca7-4ac5-b46f-8585fb5fc61e', '', '', '2019-12-04 15:22:52', '2019-12-04 15:22:52', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/7479436b-9ca7-4ac5-b46f-8585fb5fc61e/', 0, 'customize_changeset', '', 0),
(262, 1, '2019-12-04 15:47:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-04 15:47:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=wcpf_project&p=262', 0, 'wcpf_project', '', 0),
(263, 1, '2019-12-04 15:48:39', '2019-12-04 15:48:39', '', 'Colors', '', 'publish', 'closed', 'closed', '', 'colors', '', '', '2019-12-04 15:48:39', '2019-12-04 15:48:39', '', 213, 'http://localhost/GrandOrientalRugGalleryWordpress/wcpf_item/colors/', 1, 'wcpf_item', '', 0),
(264, 1, '2019-12-05 13:49:07', '2019-12-05 13:49:07', ' ', '', '', 'publish', 'closed', 'closed', '', '264', '', '', '2019-12-05 13:49:07', '2019-12-05 13:49:07', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=264', 15, 'nav_menu_item', '', 0),
(265, 1, '2019-12-05 13:49:07', '2019-12-05 13:49:07', ' ', '', '', 'publish', 'closed', 'closed', '', '265', '', '', '2019-12-05 13:49:07', '2019-12-05 13:49:07', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=265', 16, 'nav_menu_item', '', 0);

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
(18, 18, 'order', '2'),
(19, 22, 'product_count_product_cat', '2'),
(20, 21, 'product_count_product_cat', '1'),
(21, 19, 'product_count_product_cat', '1'),
(22, 18, 'product_count_product_cat', '1'),
(23, 23, 'product_count_product_cat', '2'),
(24, 24, 'order_pa_color', '0'),
(25, 25, 'order_pa_color', '0'),
(26, 26, 'order_pa_color', '0'),
(27, 27, 'order_pa_size', '0'),
(28, 28, 'order_pa_size', '0'),
(29, 29, 'order_pa_size', '0'),
(30, 30, 'order_pa_color', '0');

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
(22, 'Aubusson', 'aubusson', 0),
(23, 'Persian Rugs', 'persian-rugs', 0),
(24, 'Red', 'red', 0),
(25, 'Blue', 'blue', 0),
(26, 'Green', 'green', 0),
(27, 'Small', 'small', 0),
(28, 'Medium', 'medium', 0),
(29, 'Large', 'large', 0),
(30, 'Black', 'black', 0);

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
(81, 4, 0),
(118, 5, 0),
(118, 11, 0),
(118, 22, 0),
(118, 24, 0),
(118, 25, 0),
(118, 26, 0),
(118, 28, 0),
(118, 29, 0),
(119, 5, 0),
(119, 11, 0),
(119, 21, 0),
(119, 24, 0),
(119, 26, 0),
(119, 27, 0),
(120, 5, 0),
(120, 11, 0),
(120, 18, 0),
(120, 19, 0),
(121, 5, 0),
(121, 11, 0),
(121, 22, 0),
(121, 23, 0),
(122, 5, 0),
(122, 11, 0),
(122, 23, 0),
(159, 2, 0),
(187, 2, 0),
(188, 2, 0),
(189, 2, 0),
(190, 2, 0),
(191, 2, 0),
(192, 2, 0),
(193, 2, 0),
(194, 2, 0),
(264, 2, 0),
(265, 2, 0);

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
(2, 2, 'nav_menu', '', 0, 17),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'product_type', '', 0, 5),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 5),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 1),
(19, 19, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 1),
(20, 20, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 0),
(21, 21, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 1),
(22, 22, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 2),
(23, 23, 'product_cat', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 0, 2),
(24, 24, 'pa_color', '', 0, 2),
(25, 25, 'pa_color', '', 0, 1),
(26, 26, 'pa_color', '', 0, 2),
(27, 27, 'pa_size', '', 0, 1),
(28, 28, 'pa_size', '', 0, 1),
(29, 29, 'pa_size', '', 0, 1),
(30, 30, 'pa_color', '', 0, 0);

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
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'gorg_dashboard_quick_press_last_post_id', '212'),
(19, 1, 'gorg_user-settings', 'libraryContent=browse&widgets_access=off&editor=html'),
(20, 1, 'gorg_user-settings-time', '1574907404'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_dashboard', 'a:6:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:36:\"woocommerce_dashboard_recent_reviews\";i:3;s:28:\"woocommerce_dashboard_status\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(28, 1, '_woocommerce_tracks_anon_id', 'woo:Oh6LzY6UGHdtj6am2WBzgLl0'),
(29, 1, 'dismissed_install_notice', '1'),
(30, 1, 'dismissed_wc_admin_notice', '1'),
(31, 1, 'dismissed_no_secure_connection_notice', '1'),
(32, 1, 'wc_last_active', '1575504000'),
(33, 1, 'wc_marketplace_suggestions_dismissed_suggestions', 'a:5:{i:0;s:35:\"products-empty-woocommerce-bookings\";i:1;s:26:\"products-empty-memberships\";i:2;s:30:\"products-empty-product-bundles\";i:3;s:40:\"products-empty-woocommerce-subscriptions\";i:4;s:30:\"products-empty-product-vendors\";}'),
(35, 1, 'closedpostboxes_page', 'a:0:{}'),
(36, 1, 'metaboxhidden_page', 'a:0:{}'),
(37, 1, 'session_tokens', 'a:3:{s:64:\"831a17773448331367fd97372eed45b829a3e5b77a16146a69e01bdd01e64bb2\";a:4:{s:10:\"expiration\";i:1575641546;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575468746;}s:64:\"212bd50ee44f2d0b48cdb4371a21940422dd1df43088fd959918bf8c3a4c8944\";a:4:{s:10:\"expiration\";i:1575687253;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575514453;}s:64:\"95232566cb1283a72b6d1ff010c71f0d20bf36ed1519de10d6f7136d137e5fed\";a:4:{s:10:\"expiration\";i:1575726515;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575553715;}}'),
(39, 1, 'closedpostboxes_product', 'a:0:{}'),
(40, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}');

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

--
-- Dumping data for table `gorg_wc_product_meta_lookup`
--

INSERT INTO `gorg_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(118, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(119, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(120, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(121, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(122, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0);

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

--
-- Dumping data for table `gorg_woocommerce_attribute_taxonomies`
--

INSERT INTO `gorg_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

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
(3, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:707:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"NP\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"NP\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"roshanb54@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1575726522);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gorg_links`
--
ALTER TABLE `gorg_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_options`
--
ALTER TABLE `gorg_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1499;

--
-- AUTO_INCREMENT for table `gorg_postmeta`
--
ALTER TABLE `gorg_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=954;

--
-- AUTO_INCREMENT for table `gorg_posts`
--
ALTER TABLE `gorg_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `gorg_termmeta`
--
ALTER TABLE `gorg_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gorg_terms`
--
ALTER TABLE `gorg_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gorg_term_taxonomy`
--
ALTER TABLE `gorg_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gorg_usermeta`
--
ALTER TABLE `gorg_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
