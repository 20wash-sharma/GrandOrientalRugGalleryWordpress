-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 03:18 AM
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-07 02:00:15', '2019-11-07 02:00:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(29, 'rewrite_rules', 'a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"home_slider/?$\";s:31:\"index.php?post_type=home_slider\";s:44:\"home_slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_slider&feed=$matches[1]\";s:39:\"home_slider/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=home_slider&feed=$matches[1]\";s:31:\"home_slider/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=home_slider&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"home_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_slider/([^/]+)/embed/?$\";s:44:\"index.php?home_slider=$matches[1]&embed=true\";s:32:\"home_slider/([^/]+)/trackback/?$\";s:38:\"index.php?home_slider=$matches[1]&tb=1\";s:52:\"home_slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_slider=$matches[1]&feed=$matches[2]\";s:47:\"home_slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?home_slider=$matches[1]&feed=$matches[2]\";s:40:\"home_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&paged=$matches[2]\";s:47:\"home_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&cpage=$matches[2]\";s:36:\"home_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home_slider=$matches[1]&page=$matches[2]\";s:28:\"home_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:44:\"facebook-pagelike-widget/facebook_widget.php\";}', 'yes'),
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
(94, 'gorg_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-2\";a:1:{i:0;s:8:\"fbw_id-2\";}s:8:\"footer-3\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1573959618;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1573999219;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574042417;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574042428;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574042432;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(171, '_site_transient_timeout_browser_f9f7120ce5a4a9cf082c424b40cf59f5', '1573997535', 'no'),
(172, '_site_transient_browser_f9f7120ce5a4a9cf082c424b40cf59f5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"78.0.3904.97\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(193, 'acf_version', '5.8.7', 'yes'),
(194, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1573649782;s:7:\"version\";s:5:\"5.1.5\";s:11:\"count_valid\";i:0;s:13:\"count_invalid\";i:1;}}', 'yes'),
(195, 'recovery_mode_email_last_sent', '1573746964', 'yes'),
(203, 'gorg_theme_options', 'a:25:{s:20:\"gorg_social_facebook\";s:8:\"http://1\";s:19:\"gorg_social_twitter\";s:8:\"http://2\";s:22:\"gorg_social_googleplus\";s:8:\"http://4\";s:11:\"white_image\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:15:\"contact_address\";s:84:\"Grand Oriental Rug Gallery,<br />\n383 Aragon Ave <br />\nCoral Gables Miami, FL 33134\";s:14:\"contact_fphone\";s:12:\"305 442 4500\";s:10:\"white_logo\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:21:\"gorg_social_instagram\";s:8:\"http://5\";s:20:\"gorg_social_linkedin\";s:0:\"\";s:19:\"gorg_social_youtube\";s:0:\"\";s:19:\"show_static_content\";b:0;s:12:\"slider_posts\";s:1:\"4\";s:17:\"show_slider_arrow\";b:1;s:19:\"slider_static_title\";s:15:\"Welcome to GORG\";s:21:\"slider_static_content\";s:29:\"This is the Short Description\";s:13:\"welcome_title\";s:15:\"Welcome to GROG\";s:17:\"select_about_page\";i:20;s:18:\"welcome_text_limit\";s:3:\"600\";s:16:\"footer_copyright\";s:40:\"&copy; 2019 All Rights Reserved by GORG.\";s:21:\"show_developer_footer\";b:1;s:11:\"footer_logo\";s:91:\"http://localhost/GrandOrientalRugGalleryWordpress/wp-content/uploads/2019/11/logo_white.png\";s:11:\"footer_text\";s:100:\"Phasellus blandit massa enim. elit id varius nunc. Lorem ipsum dolor sit amet, consectetur industry.\";s:13:\"contact_email\";s:33:\" info@grandorientalruggallery.com\";s:11:\"contact_fax\";s:12:\"305 442 4502\";s:14:\"contact_sphone\";s:12:\"305 490 1936\";}', 'yes'),
(221, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(258, 'admin_email_lifespan', '1589298593', 'yes'),
(259, 'db_upgraded', '', 'yes'),
(263, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1573956865;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(264, 'can_compress_scripts', '1', 'no'),
(265, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1573956882;s:7:\"checked\";a:2:{s:4:\"gorg\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(279, '_site_transient_timeout_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', '1574351395', 'no'),
(280, '_site_transient_php_check_5ef9b0d4e2ff0a2eb7df4e41a2af1661', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(302, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1573956882;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"2.1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:3:\"5.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:44:\"facebook-pagelike-widget/facebook_widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-pagelike-widget\";s:4:\"slug\";s:24:\"facebook-pagelike-widget\";s:6:\"plugin\";s:44:\"facebook-pagelike-widget/facebook_widget.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-pagelike-widget/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/facebook-pagelike-widget.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/facebook-pagelike-widget/assets/icon-128x128.png?rev=2079670\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/facebook-pagelike-widget/assets/banner-772x250.png?rev=2143108\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(303, 'widget_fbw_id', 'a:2:{i:2;a:13:{s:17:\"data_small_header\";s:2:\"on\";s:26:\"data_adapt_container_width\";s:0:\"\";s:15:\"data_hide_cover\";s:0:\"\";s:18:\"data_show_facepile\";s:2:\"on\";s:15:\"data_show_posts\";s:2:\"on\";s:9:\"data_tabs\";s:8:\"timeline\";s:5:\"title\";s:0:\"\";s:6:\"app_id\";s:15:\"503595753002055\";s:6:\"fb_url\";s:32:\"https://www.facebook.com/GORG383\";s:5:\"width\";s:3:\"340\";s:6:\"height\";s:3:\"250\";s:10:\"custom_css\";s:0:\"\";s:10:\"select_lng\";s:5:\"en_US\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, '_site_transient_timeout_theme_roots', '1573958679', 'no'),
(311, '_site_transient_theme_roots', 'a:2:{s:4:\"gorg\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

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
(4, 6, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(5, 6, '_mail', 'a:8:{s:7:\"subject\";s:84:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\";s:6:\"sender\";s:89:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\";s:4:\"body\";s:255:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\";s:9:\"recipient\";s:19:\"roshanb54@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:84:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\";s:6:\"sender\";s:89:\"Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\";s:4:\"body\";s:197:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: roshanb54@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(7, 6, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(8, 6, '_additional_settings', NULL),
(9, 6, '_locale', 'en_US'),
(10, 7, '_edit_lock', '1573395975:1'),
(11, 7, '_customize_restore_dismissed', '1'),
(12, 8, '_wp_trash_meta_status', 'publish'),
(13, 8, '_wp_trash_meta_time', '1573395992'),
(14, 9, '_wp_attached_file', '2019/11/logo_dark.png'),
(15, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:147;s:4:\"file\";s:21:\"2019/11/logo_dark.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_dark-150x147.png\";s:5:\"width\";i:150;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo_dark-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 10, '_edit_lock', '1573482903:1'),
(17, 11, '_wp_attached_file', '2019/11/logo_white.png'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:147;s:4:\"file\";s:22:\"2019/11/logo_white.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo_white-150x147.png\";s:5:\"width\";i:150;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"logo_white-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(107, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/11/banner1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(108, 39, '_wp_attached_file', '2019/11/banner2.jpg'),
(109, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/11/banner2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(110, 40, '_wp_attached_file', '2019/11/banner3.jpg'),
(111, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/11/banner3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
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
(142, 6, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(143, 1, '_edit_lock', '1573649776:1'),
(144, 52, '_wp_trash_meta_status', 'publish'),
(145, 52, '_wp_trash_meta_time', '1573650457'),
(146, 53, '_wp_trash_meta_status', 'publish'),
(147, 53, '_wp_trash_meta_time', '1573651036'),
(148, 54, '_wp_trash_meta_status', 'publish'),
(149, 54, '_wp_trash_meta_time', '1573651402'),
(150, 57, '_wp_attached_file', '2019/11/about.jpg'),
(151, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:778;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2019/11/about.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x632.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:632;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(259, 81, '_menu_item_url', '');

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
(6, 1, '2019-11-10 13:34:30', '2019-11-10 13:34:30', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\nroshanb54@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning \"[your-subject]\"\nOriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning <roshanb54@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oriental Rug Cleaning Miami, Florida - Coral Gables Carpet Cleaning (http://localhost/GrandOrientalRugGalleryWordpress)\n[your-email]\nReply-To: roshanb54@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-10 13:34:30', '2019-11-10 13:34:30', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?post_type=wpcf7_contact_form&p=6', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2019-11-10 14:26:15', '0000-00-00 00:00:00', '{\n    \"gorg_theme_options[catalogue_count]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-10 14:26:15\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '37d56a39-1534-4082-b641-f04f22aacc49', '', '', '2019-11-10 14:26:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=7', 0, 'customize_changeset', '', 0),
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
(81, 1, '2019-11-15 05:03:33', '2019-11-15 05:03:33', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2019-11-15 05:03:33', '2019-11-15 05:03:33', '', 0, 'http://localhost/GrandOrientalRugGalleryWordpress/?p=81', 3, 'nav_menu_item', '', 0);

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
(4, 'Footer Bottom Menu', 'footer-bottom-menu', 0);

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
(4, 4, 'nav_menu', '', 0, 3);

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
(18, 1, 'session_tokens', 'a:2:{s:64:\"a0ff6305d7d0313104e835413aca4112bb74e48c0414e63a1c036c7d24469417\";a:4:{s:10:\"expiration\";i:1573919381;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1573746581;}s:64:\"af3194cd005fe5872fb9f400d8295f464dfbb8512900c655f5b49b003a29f7cf\";a:4:{s:10:\"expiration\";i:1573956635;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1573783835;}}'),
(19, 1, 'gorg_user-settings', 'libraryContent=browse&widgets_access=off'),
(20, 1, 'gorg_user-settings-time', '1573651291'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(24, 1, 'nav_menu_recently_edited', '4'),
(25, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gorg_links`
--
ALTER TABLE `gorg_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_options`
--
ALTER TABLE `gorg_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `gorg_postmeta`
--
ALTER TABLE `gorg_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `gorg_posts`
--
ALTER TABLE `gorg_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `gorg_termmeta`
--
ALTER TABLE `gorg_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gorg_terms`
--
ALTER TABLE `gorg_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gorg_term_taxonomy`
--
ALTER TABLE `gorg_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gorg_usermeta`
--
ALTER TABLE `gorg_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gorg_users`
--
ALTER TABLE `gorg_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
