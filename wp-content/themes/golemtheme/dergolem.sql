-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Värd: localhost:3306
-- Tid vid skapande: 22 jun 2022 kl 07:01
-- Serverversion: 5.7.24
-- PHP-version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `dergolem`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_trash_meta_status', '1'),
(2, 2, '_wp_trash_meta_time', '1652786841');

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-18 10:25:25', '2022-04-18 10:25:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 49, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-16 09:03:50', '2022-05-16 09:03:50', 'Test comment', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(3, 53, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-17 10:20:13', '2022-05-17 10:20:13', 'This was the best! I only got robbed twice when I was there and the temperature was 100+ every single day! Would recommend!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(4, 53, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-17 10:20:48', '2022-05-17 10:20:48', 'Absolutely beautiful! I climbed the pyramids and went straight to jail. Spent 5 years there and learned so much! Met so many interesting people. Go to Egypt now! You won\'t regret it!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(5, 51, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-17 10:34:38', '2022-05-17 10:34:38', 'A great place to vacate! I had so much fun in South Africa. We went hunting for elephants but didn\'t find any, unfortunately. Next year we\'ll get more luck for sure!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(6, 51, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-17 10:34:52', '2022-05-17 10:34:52', 'Splendid! The sunset was amaaaaazing', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(7, 53, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-17 11:08:38', '2022-05-17 11:08:38', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(8, 49, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-17 11:27:27', '2022-05-17 11:27:27', 'A great place to start a family', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'comment', 0, 1),
(9, 53, 'Stenibeck', 'fete.erik@golem.se', 'http://nej', '127.0.0.1', '2022-05-25 07:58:07', '2022-05-25 07:58:07', 'Käften', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'comment', 0, 0),
(10, 51, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-25 08:21:41', '2022-05-25 08:21:41', 'I lost all my money', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'comment', 0, 1),
(11, 51, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-25 08:23:17', '2022-05-25 08:23:17', 'Hello?', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'comment', 0, 1),
(12, 53, 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '127.0.0.1', '2022-05-25 08:41:07', '2022-05-25 08:41:07', 'Loved Egypt! Fell off the pyramid and broke leg.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dergolem.test', 'yes'),
(2, 'home', 'http://dergolem.test', 'yes'),
(3, 'blogname', 'Afrikaresor.se', 'yes'),
(4, 'blogdescription', 'Besök hjärtat av Afrika', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fete.edvin@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:119:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:13:\"ar_travels/?$\";s:30:\"index.php?post_type=ar_travels\";s:43:\"ar_travels/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=ar_travels&feed=$matches[1]\";s:38:\"ar_travels/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=ar_travels&feed=$matches[1]\";s:30:\"ar_travels/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=ar_travels&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"ar_travels/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"ar_travels/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"ar_travels/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"ar_travels/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"ar_travels/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"ar_travels/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"ar_travels/([^/]+)/embed/?$\";s:43:\"index.php?ar_travels=$matches[1]&embed=true\";s:31:\"ar_travels/([^/]+)/trackback/?$\";s:37:\"index.php?ar_travels=$matches[1]&tb=1\";s:51:\"ar_travels/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?ar_travels=$matches[1]&feed=$matches[2]\";s:46:\"ar_travels/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?ar_travels=$matches[1]&feed=$matches[2]\";s:39:\"ar_travels/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?ar_travels=$matches[1]&paged=$matches[2]\";s:46:\"ar_travels/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?ar_travels=$matches[1]&cpage=$matches[2]\";s:35:\"ar_travels/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?ar_travels=$matches[1]&page=$matches[2]\";s:27:\"ar_travels/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"ar_travels/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"ar_travels/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"ar_travels/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"ar_travels/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"ar_travels/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:24:\"feteplugin/wp_plugin.php\";i:1;s:9:\"hello.php\";i:2;s:31:\"plugin-review/plugin-review.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'golemtheme', 'yes'),
(41, 'stylesheet', 'golemtheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '300', 'yes'),
(57, 'thumbnail_size_h', '200', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1665829524', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1654770325;a:6:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654770340;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654770342;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1655202325;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650279920;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1654766547;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(136, 'can_compress_scripts', '0', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(156, 'current_theme', 'Der Golem Theme', 'yes'),
(157, 'theme_mods_golemtheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1651051407;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(165, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":0}', 'yes'),
(204, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1651051542;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(262, 'WPLANG', '', 'yes'),
(263, 'new_admin_email', 'fete.edvin@gmail.com', 'yes'),
(512, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(560, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(582, 'recovery_mode_email_last_sent', '1653466018', 'yes'),
(998, 'recently_activated', 'a:1:{s:29:\"githubplugin/githubplugin.php\";i:1653466224;}', 'yes'),
(1335, 'wcm_setting_name', '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', 'yes'),
(1411, 'wcm_github_token', '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', 'yes'),
(1412, 'wcm_github_username', 'fete82', 'yes'),
(1716, '_site_transient_timeout_theme_roots', '1654768349', 'no'),
(1717, '_site_transient_theme_roots', 'a:4:{s:10:\"golemtheme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1718, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654766550;s:7:\"checked\";a:4:{s:10:\"golemtheme\";s:4:\"1.82\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1719, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654766550;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:24:\"feteplugin/wp_plugin.php\";s:3:\"1.0\";s:31:\"plugin-review/plugin-review.php\";s:5:\"1.0.0\";s:29:\"githubplugin/githubplugin.php\";s:5:\"1.0.0\";}}', 'no'),
(1720, '_site_transient_timeout_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', '1655371351', 'no'),
(1721, '_site_transient_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1727, '_transient_timeout_global_styles_golemtheme', '1654766910', 'no'),
(1728, '_transient_global_styles_golemtheme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_wp_attached_file', '2022/05/africa-bg.jpg'),
(4, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5610;s:6:\"height\";i:3739;s:4:\"file\";s:21:\"2022/05/africa-bg.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 10, '_edit_lock', '1652261838:1'),
(7, 11, '_wp_attached_file', '2022/05/africa-1.jpg'),
(8, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2022/05/africa-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 13, '_edit_lock', '1652702798:1'),
(10, 15, '_edit_lock', '1652255601:1'),
(11, 17, '_edit_lock', '1652255637:1'),
(12, 18, '_wp_attached_file', '2022/05/africa-2.jpg'),
(13, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:810;s:4:\"file\";s:20:\"2022/05/africa-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(14, 20, '_edit_lock', '1652255668:1'),
(15, 21, '_wp_attached_file', '2022/05/africa-3.jpg'),
(16, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:329;s:6:\"height\";i:153;s:4:\"file\";s:20:\"2022/05/africa-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 26, '_menu_item_type', 'post_type'),
(45, 26, '_menu_item_menu_item_parent', '0'),
(46, 26, '_menu_item_object_id', '15'),
(47, 26, '_menu_item_object', 'page'),
(48, 26, '_menu_item_target', ''),
(49, 26, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(50, 26, '_menu_item_xfn', ''),
(51, 26, '_menu_item_url', ''),
(53, 2, '_wp_trash_meta_status', 'publish'),
(54, 2, '_wp_trash_meta_time', '1652257251'),
(55, 2, '_wp_desired_post_slug', 'sample-page'),
(56, 28, '_edit_lock', '1652282253:1'),
(59, 1, '_wp_trash_meta_status', 'publish'),
(60, 1, '_wp_trash_meta_time', '1652261975'),
(61, 1, '_wp_desired_post_slug', 'hello-world'),
(62, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(63, 10, '_wp_trash_meta_status', 'publish'),
(64, 10, '_wp_trash_meta_time', '1652261984'),
(65, 10, '_wp_desired_post_slug', 'chad'),
(66, 20, '_wp_trash_meta_status', 'publish'),
(67, 20, '_wp_trash_meta_time', '1652261986'),
(68, 20, '_wp_desired_post_slug', 'algeriet'),
(69, 17, '_wp_trash_meta_status', 'publish'),
(70, 17, '_wp_trash_meta_time', '1652261987'),
(71, 17, '_wp_desired_post_slug', 'etiopien'),
(72, 31, '_edit_lock', '1652703936:1'),
(75, 33, '_edit_lock', '1652696081:1'),
(90, 49, '_edit_last', '1'),
(91, 49, '_edit_lock', '1653471192:1'),
(93, 51, '_edit_last', '1'),
(94, 51, '_edit_lock', '1653471305:1'),
(96, 53, '_edit_last', '1'),
(97, 53, '_edit_lock', '1653472176:1'),
(99, 57, '_edit_last', '1'),
(100, 57, '_edit_lock', '1652692082:1'),
(101, 57, '_wp_trash_meta_status', 'publish'),
(102, 57, '_wp_trash_meta_time', '1652692876'),
(103, 57, '_wp_desired_post_slug', 'test-nation'),
(105, 51, '_thumbnail_id', '18'),
(106, 62, '_wp_attached_file', '2022/05/africa-1-1.jpg'),
(107, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1064;s:4:\"file\";s:22:\"2022/05/africa-1-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 53, '_thumbnail_id', '62'),
(109, 63, '_wp_attached_file', '2022/05/africa-3-1.jpg'),
(110, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:329;s:6:\"height\";i:153;s:4:\"file\";s:22:\"2022/05/africa-3-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 33, '_thumbnail_id', '63'),
(114, 49, '_thumbnail_id', '11'),
(119, 71, '_wp_attached_file', '2022/05/background.jpg'),
(120, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2022/05/background.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 81, 'reviewer', 'Namn från formulär.'),
(122, 81, 'post_id', ''),
(123, 82, 'reviewer', 'Namn från formulär.'),
(124, 82, 'post_id', ''),
(125, 82, '_wp_trash_meta_status', 'publish'),
(126, 82, '_wp_trash_meta_time', '1653468736'),
(127, 82, '_wp_desired_post_slug', 'test-2'),
(128, 81, '_edit_lock', '1653469214:1'),
(129, 84, '_edit_lock', '1653469817:1'),
(130, 51, 'post_id', '10'),
(131, 53, 'post_id', '20'),
(132, 49, 'post_id', '30'),
(133, 49, 'reviewer', '3'),
(134, 51, 'reviewer', '1'),
(135, 53, 'reviewer', '2');

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-18 10:25:25', '2022-04-18 10:25:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2022-05-11 09:39:35', '2022-05-11 09:39:35', '', 0, 'http://dergolem.test/?p=1', 0, 'post', '', 1),
(2, 1, '2022-04-18 10:25:25', '2022-04-18 10:25:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dergolem.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-05-11 08:20:51', '2022-05-11 08:20:51', '', 0, 'http://dergolem.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-04-18 10:25:25', '2022-04-18 10:25:25', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://dergolem.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-04-18 10:25:25', '2022-04-18 10:25:25', '', 0, 'http://dergolem.test/?page_id=3', 0, 'page', '', 0),
(7, 1, '2022-05-09 07:40:54', '2022-05-09 07:40:54', '', 'africa-bg', '', 'inherit', 'open', 'closed', '', 'africa-bg', '', '', '2022-05-16 09:21:33', '2022-05-16 09:21:33', '', 51, 'http://dergolem.test/wp-content/uploads/2022/05/africa-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2022-05-09 08:26:41', '2022-05-09 08:26:41', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-golemtheme', '', '', '2022-05-09 08:26:41', '2022-05-09 08:26:41', '', 0, 'http://dergolem.test/2022/05/09/wp-global-styles-golemtheme/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-05-11 07:21:49', '2022-05-11 07:21:49', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chad är ett land i Afrika</p>\n<!-- /wp:paragraph -->', 'Chad', '', 'trash', 'closed', 'closed', '', 'chad__trashed', '', '', '2022-05-11 09:39:44', '2022-05-11 09:39:44', '', 0, 'http://dergolem.test/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-05-11 07:21:28', '2022-05-11 07:21:28', '', 'africa-1', '', 'inherit', 'open', 'closed', '', 'africa-1', '', '', '2022-05-11 07:21:28', '2022-05-11 07:21:28', '', 10, 'http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2022-05-11 07:21:49', '2022-05-11 07:21:49', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chad är ett land i Afrika</p>\n<!-- /wp:paragraph -->', 'Chad', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-05-11 07:21:49', '2022-05-11 07:21:49', '', 10, 'http://dergolem.test/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-05-11 07:37:45', '2022-05-11 07:37:45', '<!-- wp:paragraph -->\n<p>Test home page</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2022-05-11 07:37:45', '2022-05-11 07:37:45', '', 0, 'http://dergolem.test/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-05-11 07:37:45', '2022-05-11 07:37:45', '<!-- wp:paragraph -->\n<p>Test home page</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-05-11 07:37:45', '2022-05-11 07:37:45', '', 13, 'http://dergolem.test/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-05-11 07:55:27', '2022-05-11 07:55:27', '<!-- wp:paragraph -->\n<p>Lundin Energy is <strong>an experienced Nordic oil and gas company that explores for, develops and produces resources economically, efficiently and responsibly</strong>. We focus on value creation for our shareholders and wider stakeholders through three strategic pillars: Resilience, Sustainability and Growth.</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-05-11 07:55:27', '2022-05-11 07:55:27', '', 0, 'http://dergolem.test/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-05-11 07:55:27', '2022-05-11 07:55:27', '<!-- wp:paragraph -->\n<p>Lundin Energy is <strong>an experienced Nordic oil and gas company that explores for, develops and produces resources economically, efficiently and responsibly</strong>. We focus on value creation for our shareholders and wider stakeholders through three strategic pillars: Resilience, Sustainability and Growth.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-05-11 07:55:27', '2022-05-11 07:55:27', '', 15, 'http://dergolem.test/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-05-11 07:56:19', '2022-05-11 07:56:19', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-2.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>\n<!-- /wp:paragraph -->', 'Etiopien', '', 'trash', 'closed', 'closed', '', 'etiopien__trashed', '', '', '2022-05-11 09:39:47', '2022-05-11 09:39:47', '', 0, 'http://dergolem.test/?page_id=17', 0, 'page', '', 0),
(18, 1, '2022-05-11 07:56:00', '2022-05-11 07:56:00', '', 'africa-2', '', 'inherit', 'open', 'closed', '', 'africa-2', '', '', '2022-05-11 07:56:00', '2022-05-11 07:56:00', '', 17, 'http://dergolem.test/wp-content/uploads/2022/05/africa-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2022-05-11 07:56:19', '2022-05-11 07:56:19', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-2.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>\n<!-- /wp:paragraph -->', 'Etiopien', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-05-11 07:56:19', '2022-05-11 07:56:19', '', 17, 'http://dergolem.test/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-05-11 07:56:52', '2022-05-11 07:56:52', '<!-- wp:image {\"id\":21,\"width\":841,\"height\":391,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-3.jpg\" alt=\"\" class=\"wp-image-21\" width=\"841\" height=\"391\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->', 'Algeriet', '', 'trash', 'closed', 'closed', '', 'algeriet__trashed', '', '', '2022-05-11 09:39:46', '2022-05-11 09:39:46', '', 0, 'http://dergolem.test/?page_id=20', 0, 'page', '', 0),
(21, 1, '2022-05-11 07:56:32', '2022-05-11 07:56:32', '', 'africa-3', '', 'inherit', 'open', 'closed', '', 'africa-3', '', '', '2022-05-11 07:56:32', '2022-05-11 07:56:32', '', 20, 'http://dergolem.test/wp-content/uploads/2022/05/africa-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2022-05-11 07:56:52', '2022-05-11 07:56:52', '<!-- wp:image {\"id\":21,\"width\":841,\"height\":391,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-3.jpg\" alt=\"\" class=\"wp-image-21\" width=\"841\" height=\"391\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->', 'Algeriet', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-05-11 07:56:52', '2022-05-11 07:56:52', '', 20, 'http://dergolem.test/?p=22', 0, 'revision', '', 0),
(26, 1, '2022-05-11 08:20:30', '2022-05-11 08:18:50', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-05-11 08:20:30', '2022-05-11 08:20:30', '', 0, 'http://dergolem.test/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2022-05-11 08:20:51', '2022-05-11 08:20:51', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dergolem.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-05-11 08:20:51', '2022-05-11 08:20:51', '', 2, 'http://dergolem.test/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-05-11 09:18:29', '2022-05-11 09:18:29', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Etiopien', 'Torrt och varmt. En magisk plats.', 'publish', 'open', 'open', '', 'etiopien', '', '', '2022-05-11 15:19:56', '2022-05-11 15:19:56', '', 0, 'http://dergolem.test/?p=28', 0, 'post', '', 0),
(29, 1, '2022-05-11 09:18:29', '2022-05-11 09:18:29', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Etiopien ftw</p>\n<!-- /wp:paragraph -->', 'Etiopien', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-05-11 09:18:29', '2022-05-11 09:18:29', '', 28, 'http://dergolem.test/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-05-11 09:39:35', '2022-05-11 09:39:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-11 09:39:35', '2022-05-11 09:39:35', '', 1, 'http://dergolem.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-05-11 09:40:17', '2022-05-11 09:40:17', '<!-- wp:image {\"id\":71,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/background.jpg\" alt=\"\" class=\"wp-image-71\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Mitt i Afrika - Ett äventyr väntar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Massor av djur och så. Askul</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Chad', 'Plåtskjul och brunt vatten. Ett paradis.', 'publish', 'open', 'open', '', 'chad', '', '', '2022-05-16 12:27:54', '2022-05-16 12:27:54', '', 0, 'http://dergolem.test/?p=31', 0, 'post', '', 0),
(32, 1, '2022-05-11 09:40:17', '2022-05-11 09:40:17', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-2.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>\n<!-- /wp:paragraph -->', 'Chad', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-05-11 09:40:17', '2022-05-11 09:40:17', '', 31, 'http://dergolem.test/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-05-11 09:40:51', '2022-05-11 09:40:51', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->', 'Algeriet', 'Semestra i Algeriets torra öken', 'publish', 'open', 'open', '', 'algeriet', '', '', '2022-05-16 10:17:04', '2022-05-16 10:17:04', '', 0, 'http://dergolem.test/?p=33', 0, 'post', '', 0),
(34, 1, '2022-05-11 09:40:51', '2022-05-11 09:40:51', '<!-- wp:image {\"id\":21,\"width\":840,\"height\":391,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-3.jpg\" alt=\"\" class=\"wp-image-21\" width=\"840\" height=\"391\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->', 'Algeriet', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-05-11 09:40:51', '2022-05-11 09:40:51', '', 33, 'http://dergolem.test/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-05-11 09:43:35', '2022-05-11 09:43:35', '<!-- wp:image {\"id\":21,\"width\":840,\"height\":391,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-3.jpg\" alt=\"\" class=\"wp-image-21\" width=\"840\" height=\"391\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->', 'Algeriet', 'Semestra i Algeriets torra öken', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-05-11 09:43:35', '2022-05-11 09:43:35', '', 33, 'http://dergolem.test/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-05-11 09:44:17', '2022-05-11 09:44:17', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-2.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>\n<!-- /wp:paragraph -->', 'Chad', 'Plåtskjul och brunt vatten. Ett paradis.', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-05-11 09:44:17', '2022-05-11 09:44:17', '', 31, 'http://dergolem.test/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-05-11 09:44:41', '2022-05-11 09:44:41', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Etiopien ftw</p>\n<!-- /wp:paragraph -->', 'Etiopien', 'Torrt och varmt. En magisk plats.', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-05-11 09:44:41', '2022-05-11 09:44:41', '', 28, 'http://dergolem.test/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-05-11 14:35:45', '2022-05-11 14:35:45', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>\n<!-- /wp:paragraph -->', 'Etiopien', 'Torrt och varmt. En magisk plats.', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-05-11 14:35:45', '2022-05-11 14:35:45', '', 28, 'http://dergolem.test/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-05-11 14:41:29', '2022-05-11 14:41:29', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Härligt klimat i sköna Etiopien</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Etiopien', 'Torrt och varmt. En magisk plats.', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-05-11 14:41:29', '2022-05-11 14:41:29', '', 28, 'http://dergolem.test/?p=39', 0, 'revision', '', 0),
(41, 1, '2022-05-11 15:19:56', '2022-05-11 15:19:56', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Etiopien', 'Torrt och varmt. En magisk plats.', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-05-11 15:19:56', '2022-05-11 15:19:56', '', 28, 'http://dergolem.test/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-05-11 15:27:44', '2022-05-11 15:27:44', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->', 'Algeriet', 'Semestra i Algeriets torra öken', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-05-11 15:27:44', '2022-05-11 15:27:44', '', 33, 'http://dergolem.test/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-05-12 11:17:09', '2022-05-12 11:17:09', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Algeriet', 'Semestra i Algeriets torra öken', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2022-05-12 11:17:09', '2022-05-12 11:17:09', '', 33, 'http://dergolem.test/?p=43', 0, 'revision', '', 0),
(49, 1, '2022-05-16 08:39:13', '2022-05-16 08:39:13', '<b>Nigeria</b> (<span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"\'n\' in \'nigh\'\">n</span><span title=\"/aɪ/: \'i\' in \'tide\'\">aɪ</span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"/dʒ/: \'j\' in \'jam\'\">dʒ</span><span title=\"/ɪər/: \'ear\' in \'near\'\">ɪər</span><span title=\"/i/: \'y\' in \'happy\'\">i</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span> <span class=\"nowrap\"><span class=\"unicode haudio\"><span class=\"fn\"><a title=\"Listen\" href=\"https://en.wikipedia.org/wiki/Special:FilePath/En-us-Nigeria.ogg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/17px-Loudspeaker.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/22px-Loudspeaker.svg.png 2x\" alt=\"Listen\" width=\"11\" height=\"11\" data-file-width=\"20\" data-file-height=\"20\" /></a></span></span></span></span>), officially the <b>Federal Republic of Nigeria</b>, is a country in <a title=\"West Africa\" href=\"https://en.wikipedia.org/wiki/West_Africa\">West Africa</a>. It is the <a title=\"List of African countries by population\" href=\"https://en.wikipedia.org/wiki/List_of_African_countries_by_population\">most populous country</a> in <a title=\"Africa\" href=\"https://en.wikipedia.org/wiki/Africa\">Africa</a>. It is geographically situated between the <a title=\"Sahel\" href=\"https://en.wikipedia.org/wiki/Sahel\">Sahel</a> to the north and the <a title=\"Gulf of Guinea\" href=\"https://en.wikipedia.org/wiki/Gulf_of_Guinea\">Gulf of Guinea</a> to the south in the <a title=\"Atlantic Ocean\" href=\"https://en.wikipedia.org/wiki/Atlantic_Ocean\">Atlantic Ocean</a>. It covers an area of 923,769 square kilometres (356,669 sq mi), with a population of over 211 million. Nigeria borders <a title=\"Niger\" href=\"https://en.wikipedia.org/wiki/Niger\">Niger</a> in <a title=\"Niger–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Niger%E2%80%93Nigeria_border\">the north</a>, <a title=\"Chad\" href=\"https://en.wikipedia.org/wiki/Chad\">Chad</a> in <a title=\"Chad–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Chad%E2%80%93Nigeria_border\">the northeast</a>, <a title=\"Cameroon\" href=\"https://en.wikipedia.org/wiki/Cameroon\">Cameroon</a> in <a title=\"Cameroon–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Cameroon%E2%80%93Nigeria_border\">the east</a>, and <a title=\"Benin\" href=\"https://en.wikipedia.org/wiki/Benin\">Benin</a> in <a title=\"Benin–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Benin%E2%80%93Nigeria_border\">the west</a>. Nigeria is a <a title=\"Federation\" href=\"https://en.wikipedia.org/wiki/Federation\">federal</a> <a title=\"Republic\" href=\"https://en.wikipedia.org/wiki/Republic\">republic</a> comprising <a title=\"States of Nigeria\" href=\"https://en.wikipedia.org/wiki/States_of_Nigeria\">36 states</a> and the <a class=\"mw-redirect\" title=\"Federal Capital Territory, Nigeria\" href=\"https://en.wikipedia.org/wiki/Federal_Capital_Territory,_Nigeria\">Federal Capital Territory</a>, where the capital, <a title=\"Abuja\" href=\"https://en.wikipedia.org/wiki/Abuja\">Abuja</a>, is located. The <a title=\"List of Nigerian cities by population\" href=\"https://en.wikipedia.org/wiki/List_of_Nigerian_cities_by_population\">largest city in Nigeria</a> is <a title=\"Lagos\" href=\"https://en.wikipedia.org/wiki/Lagos\">Lagos</a>, one of the largest <a title=\"List of largest cities\" href=\"https://en.wikipedia.org/wiki/List_of_largest_cities\">metropolitan areas</a> in the world and the <a title=\"List of cities in Africa by population\" href=\"https://en.wikipedia.org/wiki/List_of_cities_in_Africa_by_population\">second-largest in Africa.</a>', 'Nigeria', 'Loremus Upsumus', 'publish', 'open', 'closed', '', 'nigeria', '', '', '2022-05-17 10:35:54', '2022-05-17 10:35:54', '', 0, 'http://dergolem.test/?post_type=ar_travels&#038;p=49', 0, 'ar_travels', '', 1),
(50, 1, '2022-05-16 08:39:13', '2022-05-16 08:39:13', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Nigeria', 'Loremus Upsumus', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2022-05-16 08:39:13', '2022-05-16 08:39:13', '', 49, 'http://dergolem.test/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-05-16 08:46:21', '2022-05-16 08:46:21', '<b>South Africa</b>, officially the <b>Republic of South Africa</b> (<b>RSA</b>), is the <a title=\"Southern Africa\" href=\"https://en.wikipedia.org/wiki/Southern_Africa\">southernmost</a> country in Africa. With over <a title=\"Demographics of South Africa\" href=\"https://en.wikipedia.org/wiki/Demographics_of_South_Africa\">60 million people</a>, the country is the world\'s <a class=\"mw-redirect\" title=\"List of countries by population\" href=\"https://en.wikipedia.org/wiki/List_of_countries_by_population\">23rd-most populous nation</a> and covers an area of 1,221,037 square kilometres (471,445 square miles). South Africa has three capital cities, with the executive, judicial and legislative branches of government based in <a title=\"Pretoria\" href=\"https://en.wikipedia.org/wiki/Pretoria\">Pretoria</a>, <a title=\"Bloemfontein\" href=\"https://en.wikipedia.org/wiki/Bloemfontein\">Bloemfontein</a> and <a title=\"Cape Town\" href=\"https://en.wikipedia.org/wiki/Cape_Town\">Cape Town</a> respectively. The largest city is <a title=\"Johannesburg\" href=\"https://en.wikipedia.org/wiki/Johannesburg\">Johannesburg</a>. About 81% of the population are <a class=\"mw-redirect mw-disambig\" title=\"Black South Africans\" href=\"https://en.wikipedia.org/wiki/Black_South_Africans\">Black South Africans</a>.<sup id=\"cite_ref-safacts_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/South_Africa#cite_note-safacts-14\">[14]</a></sup> The remaining population consists of Africa\'s largest communities of <a class=\"mw-redirect\" title=\"European peoples\" href=\"https://en.wikipedia.org/wiki/European_peoples\">European</a> (<a title=\"White South Africans\" href=\"https://en.wikipedia.org/wiki/White_South_Africans\">White South Africans</a>), <a title=\"Asian people\" href=\"https://en.wikipedia.org/wiki/Asian_people\">Asian</a> (<a title=\"Indian South Africans\" href=\"https://en.wikipedia.org/wiki/Indian_South_Africans\">Indian South Africans</a> and <a title=\"Chinese South Africans\" href=\"https://en.wikipedia.org/wiki/Chinese_South_Africans\">Chinese South Africans</a>), and <a class=\"mw-redirect\" title=\"Multiracial\" href=\"https://en.wikipedia.org/wiki/Multiracial\">Multiracial</a> (<a title=\"Coloureds\" href=\"https://en.wikipedia.org/wiki/Coloureds\">Coloured South Africans</a>) ancestry.\r\n\r\n&nbsp;\r\n\r\nEn ny paragraf\r\n\r\n&nbsp;\r\n\r\n<strong>HEADING</strong>', 'South Africa', 'Sunny almost every day and lots of apartheid', 'publish', 'open', 'closed', '', 'south-africa', '', '', '2022-05-17 10:35:17', '2022-05-17 10:35:17', '', 0, 'http://dergolem.test/?post_type=ar_travels&#038;p=51', 0, 'ar_travels', '', 4),
(52, 1, '2022-05-16 08:46:21', '2022-05-16 08:46:21', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'South Africa', 'Sunny almost every day and lots of apartheid', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-05-16 08:46:21', '2022-05-16 08:46:21', '', 51, 'http://dergolem.test/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-05-16 08:54:55', '2022-05-16 08:54:55', '<strong>Desert As Far As The Eye Can See</strong>\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of.\r\n\r\n&nbsp;\r\n\r\n<strong>Fantastic Tourism At Best</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation u\r\n\r\n&nbsp;\r\n\r\n<strong>Great Food If You Have Money</strong>\r\n\r\noluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptate', 'Egypt', 'Pyramids are nice and very big!', 'publish', 'open', 'closed', '', 'egypt', '', '', '2022-05-17 10:37:03', '2022-05-17 10:37:03', '', 0, 'http://dergolem.test/?post_type=ar_travels&#038;p=53', 0, 'ar_travels', '', 5),
(54, 1, '2022-05-16 08:54:55', '2022-05-16 08:54:55', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lor', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-16 08:54:55', '2022-05-16 08:54:55', '', 53, 'http://dergolem.test/?p=54', 0, 'revision', '', 0),
(57, 1, '2022-05-16 09:10:24', '2022-05-16 09:10:24', '<img class=\"alignnone size-full wp-image-11\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" width=\"1000\" height=\"667\" />', 'Test Nation', 'Test with img', 'trash', 'open', 'closed', '', 'test-nation__trashed', '', '', '2022-05-16 09:21:16', '2022-05-16 09:21:16', '', 0, 'http://dergolem.test/?post_type=ar_travels&#038;p=57', 0, 'ar_travels', '', 0),
(58, 1, '2022-05-16 09:10:24', '2022-05-16 09:10:24', '<img class=\"alignnone size-full wp-image-11\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1.jpg\" alt=\"\" width=\"1000\" height=\"667\" />', 'Test Nation', 'Test with img', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2022-05-16 09:10:24', '2022-05-16 09:10:24', '', 57, 'http://dergolem.test/?p=58', 0, 'revision', '', 0),
(59, 1, '2022-05-16 09:21:25', '2022-05-16 09:21:25', '<img class=\"alignnone size-full wp-image-40\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" width=\"1600\" height=\"1064\" />There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lor', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-16 09:21:25', '2022-05-16 09:21:25', '', 53, 'http://dergolem.test/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-05-16 09:21:34', '2022-05-16 09:21:34', '<img class=\"alignnone size-full wp-image-7\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-bg.jpg\" alt=\"\" width=\"5610\" height=\"3739\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'South Africa', 'Sunny almost every day and lots of apartheid', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-05-16 09:21:34', '2022-05-16 09:21:34', '', 51, 'http://dergolem.test/?p=60', 0, 'revision', '', 0),
(61, 1, '2022-05-16 09:21:45', '2022-05-16 09:21:45', '<strong><img class=\"alignnone size-full wp-image-18\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-2.jpg\" alt=\"\" width=\"1600\" height=\"810\" />Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Nigeria', 'Loremus Upsumus', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2022-05-16 09:21:45', '2022-05-16 09:21:45', '', 49, 'http://dergolem.test/?p=61', 0, 'revision', '', 0),
(62, 1, '2022-05-16 10:03:25', '2022-05-16 10:03:25', '', 'africa-1', '', 'inherit', 'open', 'closed', '', 'africa-1-2', '', '', '2022-05-16 10:03:25', '2022-05-16 10:03:25', '', 53, 'http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2022-05-16 10:16:58', '2022-05-16 10:16:58', '', 'africa-3', '', 'inherit', 'open', 'closed', '', 'africa-3-2', '', '', '2022-05-16 10:16:58', '2022-05-16 10:16:58', '', 33, 'http://dergolem.test/wp-content/uploads/2022/05/africa-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2022-05-16 12:11:21', '2022-05-16 12:11:21', '<img class=\"alignnone size-full wp-image-40\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" width=\"1600\" height=\"1064\" />There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lor\n\n[list_travels]', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2022-05-16 12:11:21', '2022-05-16 12:11:21', '', 53, 'http://dergolem.test/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-05-16 12:11:23', '2022-05-16 12:11:23', '<img class=\"alignnone size-full wp-image-40\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" width=\"1600\" height=\"1064\" />There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lor\r\n\r\n[list_travels]', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-16 12:11:23', '2022-05-16 12:11:23', '', 53, 'http://dergolem.test/?p=65', 0, 'revision', '', 0),
(66, 1, '2022-05-16 12:22:44', '2022-05-16 12:22:44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'South Africa', 'Sunny almost every day and lots of apartheid', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-05-16 12:22:44', '2022-05-16 12:22:44', '', 51, 'http://dergolem.test/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-05-17 10:35:16', '2022-05-17 10:35:16', '<b>South Africa</b>, officially the <b>Republic of South Africa</b> (<b>RSA</b>), is the <a title=\"Southern Africa\" href=\"https://en.wikipedia.org/wiki/Southern_Africa\">southernmost</a> country in Africa. With over <a title=\"Demographics of South Africa\" href=\"https://en.wikipedia.org/wiki/Demographics_of_South_Africa\">60 million people</a>, the country is the world\'s <a class=\"mw-redirect\" title=\"List of countries by population\" href=\"https://en.wikipedia.org/wiki/List_of_countries_by_population\">23rd-most populous nation</a> and covers an area of 1,221,037 square kilometres (471,445 square miles). South Africa has three capital cities, with the executive, judicial and legislative branches of government based in <a title=\"Pretoria\" href=\"https://en.wikipedia.org/wiki/Pretoria\">Pretoria</a>, <a title=\"Bloemfontein\" href=\"https://en.wikipedia.org/wiki/Bloemfontein\">Bloemfontein</a> and <a title=\"Cape Town\" href=\"https://en.wikipedia.org/wiki/Cape_Town\">Cape Town</a> respectively. The largest city is <a title=\"Johannesburg\" href=\"https://en.wikipedia.org/wiki/Johannesburg\">Johannesburg</a>. About 81% of the population are <a class=\"mw-redirect mw-disambig\" title=\"Black South Africans\" href=\"https://en.wikipedia.org/wiki/Black_South_Africans\">Black South Africans</a>.<sup id=\"cite_ref-safacts_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/South_Africa#cite_note-safacts-14\">[14]</a></sup> The remaining population consists of Africa\'s largest communities of <a class=\"mw-redirect\" title=\"European peoples\" href=\"https://en.wikipedia.org/wiki/European_peoples\">European</a> (<a title=\"White South Africans\" href=\"https://en.wikipedia.org/wiki/White_South_Africans\">White South Africans</a>), <a title=\"Asian people\" href=\"https://en.wikipedia.org/wiki/Asian_people\">Asian</a> (<a title=\"Indian South Africans\" href=\"https://en.wikipedia.org/wiki/Indian_South_Africans\">Indian South Africans</a> and <a title=\"Chinese South Africans\" href=\"https://en.wikipedia.org/wiki/Chinese_South_Africans\">Chinese South Africans</a>), and <a class=\"mw-redirect\" title=\"Multiracial\" href=\"https://en.wikipedia.org/wiki/Multiracial\">Multiracial</a> (<a title=\"Coloureds\" href=\"https://en.wikipedia.org/wiki/Coloureds\">Coloured South Africans</a>) ancestry.\n\n&nbsp;\n\nEn ny paragraf\n\n&nbsp;\n\n<strong>HEADING</strong>', 'South Africa', 'Sunny almost every day and lots of apartheid', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2022-05-17 10:35:16', '2022-05-17 10:35:16', '', 51, 'http://dergolem.test/?p=67', 0, 'revision', '', 0),
(68, 1, '2022-05-16 12:23:54', '2022-05-16 12:23:54', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n&nbsp;\r\n\r\nEn ny paragraf\r\n\r\n&nbsp;\r\n\r\n<strong>HEADING</strong>', 'South Africa', 'Sunny almost every day and lots of apartheid', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-05-16 12:23:54', '2022-05-16 12:23:54', '', 51, 'http://dergolem.test/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-05-16 12:25:12', '2022-05-16 12:25:12', '<!-- wp:paragraph -->\n<p>Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>123</td><td>23</td></tr><tr><td>123</td><td>24</td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Chad', 'Plåtskjul och brunt vatten. Ett paradis.', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-05-16 12:25:12', '2022-05-16 12:25:12', '', 31, 'http://dergolem.test/?p=69', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(70, 1, '2022-05-16 12:27:42', '2022-05-16 12:27:42', '<!-- wp:paragraph -->\n<p>Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Mitt i Afrika - Ett äventyr väntar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Massor av djur och så. Askul</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Chad', 'Plåtskjul och brunt vatten. Ett paradis.', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-05-16 12:27:42', '2022-05-16 12:27:42', '', 31, 'http://dergolem.test/?p=70', 0, 'revision', '', 0),
(71, 1, '2022-05-16 12:27:53', '2022-05-16 12:27:53', '', 'background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2022-05-16 12:27:53', '2022-05-16 12:27:53', '', 31, 'http://dergolem.test/wp-content/uploads/2022/05/background.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2022-05-16 12:27:54', '2022-05-16 12:27:54', '<!-- wp:image {\"id\":71,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://dergolem.test/wp-content/uploads/2022/05/background.jpg\" alt=\"\" class=\"wp-image-71\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Mitt i Afrika - Ett äventyr väntar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Massor av djur och så. Askul</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Chad', 'Plåtskjul och brunt vatten. Ett paradis.', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-05-16 12:27:54', '2022-05-16 12:27:54', '', 31, 'http://dergolem.test/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-05-17 09:59:18', '2022-05-17 09:59:18', '<img class=\"alignnone size-full wp-image-40\" src=\"http://dergolem.test/wp-content/uploads/2022/05/africa-1-1.jpg\" alt=\"\" width=\"1600\" height=\"1064\" />There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of.', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-17 09:59:18', '2022-05-17 09:59:18', '', 53, 'http://dergolem.test/?p=73', 0, 'revision', '', 0),
(74, 1, '2022-05-17 09:59:53', '2022-05-17 09:59:53', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of.', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-17 09:59:53', '2022-05-17 09:59:53', '', 53, 'http://dergolem.test/?p=74', 0, 'revision', '', 0),
(75, 1, '2022-05-17 10:00:47', '2022-05-17 10:00:47', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of.\r\n\r\n&nbsp;\r\n\r\n<strong>Fantastic Tourism At Best</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation u\r\n\r\n&nbsp;\r\n\r\n<strong>Great Food If You Have Money</strong>\r\n\r\noluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptate', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-17 10:00:47', '2022-05-17 10:00:47', '', 53, 'http://dergolem.test/?p=75', 0, 'revision', '', 0),
(76, 1, '2022-05-17 10:01:00', '2022-05-17 10:01:00', '<strong>Desert As Far As The Eye Can See</strong>\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of.\r\n\r\n&nbsp;\r\n\r\n<strong>Fantastic Tourism At Best</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation u\r\n\r\n&nbsp;\r\n\r\n<strong>Great Food If You Have Money</strong>\r\n\r\noluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptate', 'Egypt', 'Pyramids are nice!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-17 10:01:00', '2022-05-17 10:01:00', '', 53, 'http://dergolem.test/?p=76', 0, 'revision', '', 0),
(77, 1, '2022-05-17 10:01:52', '2022-05-17 10:01:52', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Nigeria', 'Loremus Upsumus', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2022-05-17 10:01:52', '2022-05-17 10:01:52', '', 49, 'http://dergolem.test/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-05-17 10:35:17', '2022-05-17 10:35:17', '<b>South Africa</b>, officially the <b>Republic of South Africa</b> (<b>RSA</b>), is the <a title=\"Southern Africa\" href=\"https://en.wikipedia.org/wiki/Southern_Africa\">southernmost</a> country in Africa. With over <a title=\"Demographics of South Africa\" href=\"https://en.wikipedia.org/wiki/Demographics_of_South_Africa\">60 million people</a>, the country is the world\'s <a class=\"mw-redirect\" title=\"List of countries by population\" href=\"https://en.wikipedia.org/wiki/List_of_countries_by_population\">23rd-most populous nation</a> and covers an area of 1,221,037 square kilometres (471,445 square miles). South Africa has three capital cities, with the executive, judicial and legislative branches of government based in <a title=\"Pretoria\" href=\"https://en.wikipedia.org/wiki/Pretoria\">Pretoria</a>, <a title=\"Bloemfontein\" href=\"https://en.wikipedia.org/wiki/Bloemfontein\">Bloemfontein</a> and <a title=\"Cape Town\" href=\"https://en.wikipedia.org/wiki/Cape_Town\">Cape Town</a> respectively. The largest city is <a title=\"Johannesburg\" href=\"https://en.wikipedia.org/wiki/Johannesburg\">Johannesburg</a>. About 81% of the population are <a class=\"mw-redirect mw-disambig\" title=\"Black South Africans\" href=\"https://en.wikipedia.org/wiki/Black_South_Africans\">Black South Africans</a>.<sup id=\"cite_ref-safacts_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/South_Africa#cite_note-safacts-14\">[14]</a></sup> The remaining population consists of Africa\'s largest communities of <a class=\"mw-redirect\" title=\"European peoples\" href=\"https://en.wikipedia.org/wiki/European_peoples\">European</a> (<a title=\"White South Africans\" href=\"https://en.wikipedia.org/wiki/White_South_Africans\">White South Africans</a>), <a title=\"Asian people\" href=\"https://en.wikipedia.org/wiki/Asian_people\">Asian</a> (<a title=\"Indian South Africans\" href=\"https://en.wikipedia.org/wiki/Indian_South_Africans\">Indian South Africans</a> and <a title=\"Chinese South Africans\" href=\"https://en.wikipedia.org/wiki/Chinese_South_Africans\">Chinese South Africans</a>), and <a class=\"mw-redirect\" title=\"Multiracial\" href=\"https://en.wikipedia.org/wiki/Multiracial\">Multiracial</a> (<a title=\"Coloureds\" href=\"https://en.wikipedia.org/wiki/Coloureds\">Coloured South Africans</a>) ancestry.\r\n\r\n&nbsp;\r\n\r\nEn ny paragraf\r\n\r\n&nbsp;\r\n\r\n<strong>HEADING</strong>', 'South Africa', 'Sunny almost every day and lots of apartheid', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-05-17 10:35:17', '2022-05-17 10:35:17', '', 51, 'http://dergolem.test/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-05-17 10:35:54', '2022-05-17 10:35:54', '<b>Nigeria</b> (<span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"\'n\' in \'nigh\'\">n</span><span title=\"/aɪ/: \'i\' in \'tide\'\">aɪ</span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"/dʒ/: \'j\' in \'jam\'\">dʒ</span><span title=\"/ɪər/: \'ear\' in \'near\'\">ɪər</span><span title=\"/i/: \'y\' in \'happy\'\">i</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span> <span class=\"nowrap\"><span class=\"unicode haudio\"><span class=\"fn\"><a title=\"Listen\" href=\"https://en.wikipedia.org/wiki/Special:FilePath/En-us-Nigeria.ogg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/17px-Loudspeaker.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/22px-Loudspeaker.svg.png 2x\" alt=\"Listen\" width=\"11\" height=\"11\" data-file-width=\"20\" data-file-height=\"20\" /></a></span></span></span></span>), officially the <b>Federal Republic of Nigeria</b>, is a country in <a title=\"West Africa\" href=\"https://en.wikipedia.org/wiki/West_Africa\">West Africa</a>. It is the <a title=\"List of African countries by population\" href=\"https://en.wikipedia.org/wiki/List_of_African_countries_by_population\">most populous country</a> in <a title=\"Africa\" href=\"https://en.wikipedia.org/wiki/Africa\">Africa</a>. It is geographically situated between the <a title=\"Sahel\" href=\"https://en.wikipedia.org/wiki/Sahel\">Sahel</a> to the north and the <a title=\"Gulf of Guinea\" href=\"https://en.wikipedia.org/wiki/Gulf_of_Guinea\">Gulf of Guinea</a> to the south in the <a title=\"Atlantic Ocean\" href=\"https://en.wikipedia.org/wiki/Atlantic_Ocean\">Atlantic Ocean</a>. It covers an area of 923,769 square kilometres (356,669 sq mi), with a population of over 211 million. Nigeria borders <a title=\"Niger\" href=\"https://en.wikipedia.org/wiki/Niger\">Niger</a> in <a title=\"Niger–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Niger%E2%80%93Nigeria_border\">the north</a>, <a title=\"Chad\" href=\"https://en.wikipedia.org/wiki/Chad\">Chad</a> in <a title=\"Chad–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Chad%E2%80%93Nigeria_border\">the northeast</a>, <a title=\"Cameroon\" href=\"https://en.wikipedia.org/wiki/Cameroon\">Cameroon</a> in <a title=\"Cameroon–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Cameroon%E2%80%93Nigeria_border\">the east</a>, and <a title=\"Benin\" href=\"https://en.wikipedia.org/wiki/Benin\">Benin</a> in <a title=\"Benin–Nigeria border\" href=\"https://en.wikipedia.org/wiki/Benin%E2%80%93Nigeria_border\">the west</a>. Nigeria is a <a title=\"Federation\" href=\"https://en.wikipedia.org/wiki/Federation\">federal</a> <a title=\"Republic\" href=\"https://en.wikipedia.org/wiki/Republic\">republic</a> comprising <a title=\"States of Nigeria\" href=\"https://en.wikipedia.org/wiki/States_of_Nigeria\">36 states</a> and the <a class=\"mw-redirect\" title=\"Federal Capital Territory, Nigeria\" href=\"https://en.wikipedia.org/wiki/Federal_Capital_Territory,_Nigeria\">Federal Capital Territory</a>, where the capital, <a title=\"Abuja\" href=\"https://en.wikipedia.org/wiki/Abuja\">Abuja</a>, is located. The <a title=\"List of Nigerian cities by population\" href=\"https://en.wikipedia.org/wiki/List_of_Nigerian_cities_by_population\">largest city in Nigeria</a> is <a title=\"Lagos\" href=\"https://en.wikipedia.org/wiki/Lagos\">Lagos</a>, one of the largest <a title=\"List of largest cities\" href=\"https://en.wikipedia.org/wiki/List_of_largest_cities\">metropolitan areas</a> in the world and the <a title=\"List of cities in Africa by population\" href=\"https://en.wikipedia.org/wiki/List_of_cities_in_Africa_by_population\">second-largest in Africa.</a>', 'Nigeria', 'Loremus Upsumus', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2022-05-17 10:35:54', '2022-05-17 10:35:54', '', 49, 'http://dergolem.test/?p=79', 0, 'revision', '', 0),
(80, 1, '2022-05-17 10:37:03', '2022-05-17 10:37:03', '<strong>Desert As Far As The Eye Can See</strong>\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of.\r\n\r\n&nbsp;\r\n\r\n<strong>Fantastic Tourism At Best</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation u\r\n\r\n&nbsp;\r\n\r\n<strong>Great Food If You Have Money</strong>\r\n\r\noluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptate', 'Egypt', 'Pyramids are nice and very big!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-05-17 10:37:03', '2022-05-17 10:37:03', '', 53, 'http://dergolem.test/?p=80', 0, 'revision', '', 0),
(81, 1, '2022-05-25 08:15:30', '2022-05-25 08:15:30', 'TEST REVIEW WITH CUSTOM POST TYPE', 'Test REVIEW', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2022-05-25 08:59:59', '2022-05-25 08:59:59', '', 0, 'http://dergolem.test/?p=81', 0, 'reviews', '', 0),
(82, 1, '2022-05-25 08:15:31', '2022-05-25 08:15:31', 'Test', 'Test', '', 'trash', 'closed', 'closed', '', 'test-2__trashed', '', '', '2022-05-25 08:52:16', '2022-05-25 08:52:16', '', 0, 'http://dergolem.test/?p=82', 0, 'reviews', '', 0),
(84, 1, '2022-05-25 09:12:41', '2022-05-25 09:12:41', '<!-- wp:paragraph -->\n<p>Test</p>\n<!-- /wp:paragraph -->', 'Great Trip', '', 'publish', 'closed', 'closed', '', 'great-trip', '', '', '2022-05-25 09:12:41', '2022-05-25 09:12:41', '', 0, 'http://dergolem.test/?post_type=reviews&#038;p=84', 0, 'reviews', '', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'golemtheme', 'golemtheme', 0),
(3, 'Main', 'main', 0),
(4, 'Nordafrika', 'nordafrika', 0),
(5, 'Centralafrika', 'centralafrika', 0),
(6, 'Östafrika', 'ostafrika', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(26, 3, 0),
(28, 1, 0),
(28, 6, 0),
(31, 1, 0),
(31, 5, 0),
(33, 1, 0),
(33, 4, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'golem'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5c599f60cc0745fbc072611fee8f6e091ab0435162c70474fe8af0e0a8add86a\";a:4:{s:10:\"expiration\";i:1654675269;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36\";s:5:\"login\";i:1653465669;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '83'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list&mfold=o'),
(23, 1, 'wp_user-settings-time', '1653472296'),
(24, 1, 'closedpostboxes_ar_travels', 'a:0:{}'),
(25, 1, 'metaboxhidden_ar_travels', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Tabellstruktur `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'golem', '$P$BVDn3hVZXsIhvErryzCfz2I8uc6xAk0', 'golem', 'fete.edvin@gmail.com', 'http://dergolem.test', '2022-04-18 10:25:25', '', 0, 'golem');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index för tabell `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index för tabell `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index för tabell `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index för tabell `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index för tabell `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index för tabell `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index för tabell `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT för tabell `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT för tabell `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1729;

--
-- AUTO_INCREMENT för tabell `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT för tabell `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT för tabell `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT för tabell `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT för tabell `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT för tabell `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
