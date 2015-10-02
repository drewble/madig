-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2015 at 07:29 PM
-- Server version: 5.5.42-MariaDB
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `legendsh_madison`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-20 00:20:53', '2015-04-20 00:20:53', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=325 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://madisonmcwilliams.com', 'yes'),
(2, 'home', 'http://madisonmcwilliams.com', 'yes'),
(3, 'blogname', 'Madison McWilliams', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'me@jedidiahlachmann.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:45:"acf-flexible-content/acf-flexible-content.php";i:1;s:27:"acf-gallery/acf-gallery.php";i:2;s:37:"acf-options-page/acf-options-page.php";i:3;s:29:"acf-repeater/acf-repeater.php";i:4;s:53:"acf-wordpress-wysiwyg-field-master/acf-wp_wysiwyg.php";i:5;s:30:"advanced-custom-fields/acf.php";i:6;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'madison', 'yes'),
(42, 'stylesheet', 'madison', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31533', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '2', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1430163120;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430180455;a:3:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430180467;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430184981;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(222, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:23:"me@jedidiahlachmann.com";s:7:"version";s:5:"4.1.3";s:9:"timestamp";i:1429840239;}', 'yes'),
(294, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1430203796', 'no'),
(298, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1430203796', 'no'),
(299, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1430160596', 'no'),
(123, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429489521;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(304, '_site_transient_timeout_theme_roots', '1430162399', 'yes'),
(305, '_site_transient_theme_roots', 'a:1:{s:7:"madison";s:7:"/themes";}', 'yes'),
(104, '_transient_random_seed', '379024aae3a7e4e6514626004a9317a4', 'yes'),
(119, 'db_upgraded', '', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430161291;s:7:"checked";a:1:{s:7:"madison";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(173, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.1.1";}', 'yes'),
(288, '_site_transient_timeout_browser_7a6cce0b740e13f09d82507ff53d91cc', '1430765394', 'yes'),
(289, '_site_transient_browser_7a6cce0b740e13f09d82507ff53d91cc', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(300, '_transient_timeout_plugin_slugs', '1430246996', 'no'),
(301, '_transient_plugin_slugs', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:45:"acf-flexible-content/acf-flexible-content.php";i:2;s:27:"acf-gallery/acf-gallery.php";i:3;s:37:"acf-options-page/acf-options-page.php";i:4;s:29:"acf-repeater/acf-repeater.php";i:5;s:53:"acf-wordpress-wysiwyg-field-master/acf-wp_wysiwyg.php";i:6;s:19:"akismet/akismet.php";i:7;s:36:"contact-form-7/wp-contact-form-7.php";i:8;s:29:"gravityforms/gravityforms.php";i:9;s:56:"gravity-forms-placeholders/gravityforms-placeholders.php";}', 'no'),
(292, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430160596', 'no'),
(290, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430203796', 'no'),
(291, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430203796', 'no'),
(295, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1430160596', 'no'),
(293, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1430203796', 'no'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(124, 'current_theme', 'Madison McWilliams', 'yes'),
(125, 'theme_mods_madison', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:10:"footer-nav";i:2;}}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(308, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(147, 'recently_activated', 'a:2:{s:56:"gravity-forms-placeholders/gravityforms-placeholders.php";i:1429638444;s:29:"gravityforms/gravityforms.php";i:1429638441;}', 'yes'),
(148, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(149, 'rg_form_version', '1.8.8', 'yes'),
(152, 'acf_version', '4.4.1', 'yes'),
(309, 'can_compress_scripts', '0', 'yes'),
(307, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1430161291;s:15:"version_checked";s:5:"4.2.1";s:12:"translations";a:0:{}}', 'yes'),
(310, 'options_facebook_link', 'https://www.facebook.com/pages/Madison-McWilliams/', 'no'),
(311, '_options_facebook_link', 'field_553e85b85653c', 'no'),
(312, 'options_twitter_link', 'http://twitter.com/madigrocks1', 'no'),
(313, '_options_twitter_link', 'field_553e85c25653d', 'no'),
(314, 'options_instagram_link', 'http://instagram.com/madisonmcwilliams_', 'no'),
(315, '_options_instagram_link', 'field_553e85c95653e', 'no'),
(316, 'options_youtube_link', 'https://www.youtube.com/channel/UCBC78aZUP_PeLCSQsWpelaQ', 'no'),
(317, '_options_youtube_link', 'field_553e85d15653f', 'no'),
(318, 'options_pinterest_link', 'https://www.pinterest.com/madigrocks123/', 'no'),
(319, '_options_pinterest_link', 'field_553e85d856540', 'no'),
(320, 'options_plus_link', 'https://plus.google.com/u/0/116915913155728166380', 'no'),
(321, '_options_plus_link', 'field_553e85e256541', 'no'),
(185, 'WPLANG', '', 'yes'),
(233, '_site_transient_timeout_browser_0b1a5a7bb402ad73a90c8850662e7650', '1430510516', 'yes'),
(234, '_site_transient_browser_0b1a5a7bb402ad73a90c8850662e7650', 'a:9:{s:8:"platform";s:6:"iPhone";s:4:"name";s:6:"iPhone";s:7:"version";s:3:"7.0";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(324, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430161291;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.1.2.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:56:"gravity-forms-placeholders/gravityforms-placeholders.php";O:8:"stdClass":6:{s:2:"id";s:5:"28975";s:4:"slug";s:26:"gravity-forms-placeholders";s:6:"plugin";s:56:"gravity-forms-placeholders/gravityforms-placeholders.php";s:11:"new_version";s:5:"1.2.1";s:3:"url";s:57:"https://wordpress.org/plugins/gravity-forms-placeholders/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/gravity-forms-placeholders.1.2.1.zip";}}}', 'yes'),
(296, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1430203796', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(297, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Apr 2015 18:39:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Broken Link Checker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/broken-link-checker/#post-2441";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Oct 2007 21:35:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2441@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"This plugin will check your posts, comments and other content for broken links and missing images, and notify you if any are found.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Janis Elsts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5468@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:67:"Make your WordPress website mobile-friendly with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"P3 (Plugin Performance Profiler)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/p3-profiler/#post-32894";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Dec 2011 23:11:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"32894@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:102:"See which plugins are slowing down your site.  This plugin creates a performance report for your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"GoDaddy.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"The Events Calendar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/plugins/the-events-calendar/#post-14790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Dec 2009 21:58:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"14790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"The Events Calendar is a carefully crafted, extensible plugin that lets you easily share your events. Beautiful. Solid. Awesome.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Peter Chester";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"bbPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/bbpress/#post-14709";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 13 Dec 2009 00:05:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"14709@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:50:"bbPress is forum software, made the WordPress way.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"John James Jacoby";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"ManageWP Worker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/worker/#post-24528";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Feb 2011 13:06:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"24528@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:103:"ManageWP is the ultimate WordPress productivity tool, allowing you to efficiently manage your websites.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Vladimir Prelovac";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Redirection";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/redirection/#post-2286";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Sep 2007 04:45:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2286@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Redirection is a WordPress plugin to manage 301 redirections and keep track of 404 errors without requiring knowledge of Apache .htaccess files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Godley";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"WP Smush";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-smushit/#post-7936";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Dec 2008 00:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"7936@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:108:"Reduce image file sizes, improve performance and boost your SEO using the free WPMU DEV WordPress Smush API.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alex Dunae";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/buddypress/#post-10314";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Apr 2009 17:48:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"10314@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"BuddyPress helps you run any kind of social network on your WordPress, with member profiles, activity streams, user groups, messaging, and more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Andy Peatling";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:13:"Photo Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/photo-gallery/#post-63299";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Jan 2014 15:58:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"63299@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:143:"Photo Gallery is an advanced plugin with a list of tools and options for adding and editing images for different views. It is fully responsive.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"webdorado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"solarissmoke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 27 Apr 2015 18:49:55 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Thu, 20 Jan 2011 02:21:38 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20150422002711";}', 'no'),
(302, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1430203796', 'no'),
(303, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/04/wordpress-4-2-1/''>WordPress 4.2.1 Security Release</a> <span class="rss-date">April 27, 2015</span><div class="rssSummary">WordPress 4.2.1 is now available. This is a critical security release for all previous versions and we strongly encourage you to update your sites immediately. A few hours ago, the WordPress team was made aware of a cross-site scripting vulnerability, which could enable commenters to compromise a site. The vulnerability was discovered by Jouko Pynnönen. [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://ma.tt/2015/04/cell-phones-cancer/''>Matt: Cell Phones &amp; Cancer</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/do-wordpress-org-themes-need-a-changelog''>WPTavern: Do WordPress.org Themes Need a Changelog?</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/zero-day-xss-vulnerability-in-wordpress-4-2-currently-being-patched''>WPTavern: Zero Day XSS Vulnerability in WordPress 4.2 Currently Being Patched</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=b447c6208f&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Install</a>)</span></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=369 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'templates/page-home.php'),
(2, 2, '_edit_lock', '1429492534:1'),
(3, 2, '_edit_last', '1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1430160761:1'),
(6, 5, '_wp_page_template', 'templates/page-about.php'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1430160803:1'),
(9, 7, '_wp_page_template', 'templates/page-music.php'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1429746176:1'),
(12, 9, '_wp_page_template', 'templates/page-media.php'),
(13, 11, '_edit_last', '1'),
(14, 11, '_edit_lock', '1429733090:1'),
(15, 11, '_wp_page_template', 'templates/page-tour.php'),
(16, 13, '_edit_last', '1'),
(17, 13, '_edit_lock', '1429648421:1'),
(18, 13, '_wp_page_template', 'templates/page-contact.php'),
(19, 15, '_menu_item_type', 'post_type'),
(20, 15, '_menu_item_menu_item_parent', '0'),
(21, 15, '_menu_item_object_id', '2'),
(22, 15, '_menu_item_object', 'page'),
(23, 15, '_menu_item_target', ''),
(24, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 15, '_menu_item_xfn', ''),
(26, 15, '_menu_item_url', ''),
(27, 15, '_menu_item_orphaned', '1429550387'),
(28, 16, '_menu_item_type', 'post_type'),
(29, 16, '_menu_item_menu_item_parent', '0'),
(30, 16, '_menu_item_object_id', '2'),
(31, 16, '_menu_item_object', 'page'),
(32, 16, '_menu_item_target', ''),
(33, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 16, '_menu_item_xfn', ''),
(35, 16, '_menu_item_url', ''),
(37, 17, '_menu_item_type', 'post_type'),
(38, 17, '_menu_item_menu_item_parent', '0'),
(39, 17, '_menu_item_object_id', '7'),
(40, 17, '_menu_item_object', 'page'),
(41, 17, '_menu_item_target', ''),
(42, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 17, '_menu_item_xfn', ''),
(44, 17, '_menu_item_url', ''),
(46, 18, '_menu_item_type', 'post_type'),
(47, 18, '_menu_item_menu_item_parent', '0'),
(48, 18, '_menu_item_object_id', '5'),
(49, 18, '_menu_item_object', 'page'),
(50, 18, '_menu_item_target', ''),
(51, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 18, '_menu_item_xfn', ''),
(53, 18, '_menu_item_url', ''),
(55, 19, '_menu_item_type', 'post_type'),
(56, 19, '_menu_item_menu_item_parent', '0'),
(57, 19, '_menu_item_object_id', '9'),
(58, 19, '_menu_item_object', 'page'),
(59, 19, '_menu_item_target', ''),
(60, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 19, '_menu_item_xfn', ''),
(62, 19, '_menu_item_url', ''),
(64, 20, '_menu_item_type', 'post_type'),
(65, 20, '_menu_item_menu_item_parent', '0'),
(66, 20, '_menu_item_object_id', '11'),
(67, 20, '_menu_item_object', 'page'),
(68, 20, '_menu_item_target', ''),
(69, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 20, '_menu_item_xfn', ''),
(71, 20, '_menu_item_url', ''),
(83, 22, 'field_55356d72f04d3', 'a:11:{s:3:"key";s:19:"field_55356d72f04d3";s:5:"label";s:21:"Page Background Image";s:4:"name";s:21:"page_background_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:5:"large";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(73, 21, '_menu_item_type', 'post_type'),
(74, 21, '_menu_item_menu_item_parent', '0'),
(75, 21, '_menu_item_object_id', '13'),
(76, 21, '_menu_item_object', 'page'),
(77, 21, '_menu_item_target', ''),
(78, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 21, '_menu_item_xfn', ''),
(80, 21, '_menu_item_url', ''),
(82, 22, '_edit_last', '1'),
(222, 22, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(216, 39, '_wp_attached_file', '2015/04/madison-tour.jpg'),
(217, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:987;s:4:"file";s:24:"2015/04/madison-tour.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"madison-tour-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"madison-tour-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"madison-tour-1024x526.jpg";s:5:"width";i:1024;s:6:"height";i:526;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(86, 22, 'position', 'acf_after_title'),
(87, 22, 'layout', 'no_box'),
(88, 22, 'hide_on_screen', 'a:13:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:4:"slug";i:7;s:6:"author";i:8;s:6:"format";i:9;s:14:"featured_image";i:10;s:10:"categories";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}'),
(89, 22, '_edit_lock', '1429729707:1'),
(90, 23, '_wp_attached_file', '2015/04/madison-about.jpg'),
(91, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1091;s:4:"file";s:25:"2015/04/madison-about.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"madison-about-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"madison-about-300x170.jpg";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"madison-about-1024x582.jpg";s:5:"width";i:1024;s:6:"height";i:582;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(92, 5, 'page_background_image', '37'),
(93, 5, '_page_background_image', 'field_55356d72f04d3'),
(94, 24, 'page_background_image', '23'),
(95, 24, '_page_background_image', 'field_55356d72f04d3'),
(96, 25, '_form', '<p>\n   [text* your-name  placeholder "Full Name"]\n </p>\n\n<p>\n [email* your-email placeholder "Email Address"] \n</p>\n\n<p>\n [textarea your-message placeholder "Your Message"] \n</p>\n\n <a class="button expand large" href="#" onclick="document.getElementById(''main-contact-form'').submit();">Submit</a>'),
(97, 25, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:37:"[your-name] <me@jedidiahlachmann.com>";s:4:"body";s:180:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Madison McWilliams (http://madisonmcwilliams.com)";s:9:"recipient";s:23:"me@jedidiahlachmann.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(98, 25, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:44:"Madison McWilliams <me@jedidiahlachmann.com>";s:4:"body";s:122:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Madison McWilliams (http://madisonmcwilliams.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:33:"Reply-To: me@jedidiahlachmann.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(99, 25, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(100, 25, '_additional_settings', ''),
(101, 25, '_locale', 'en_US'),
(102, 26, '_wp_attached_file', '2015/04/madison-contact.jpg'),
(103, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:653;s:4:"file";s:27:"2015/04/madison-contact.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"madison-contact-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"madison-contact-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"madison-contact-1024x348.jpg";s:5:"width";i:1024;s:6:"height";i:348;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(104, 27, 'page_background_image', '26'),
(105, 27, '_page_background_image', 'field_55356d72f04d3'),
(106, 13, 'page_background_image', '26'),
(107, 13, '_page_background_image', 'field_55356d72f04d3'),
(108, 28, '_edit_last', '1'),
(160, 31, 'page_background_image', '26'),
(161, 31, '_page_background_image', 'field_55356d72f04d3'),
(162, 31, 'booking_info', 'Boyd@BCGMusic.com'),
(163, 31, '_booking_info', 'field_5536920b37e95'),
(164, 31, 'management_info', 'Management@MadisonMcWilliams.com'),
(165, 31, '_management_info', 'field_5536921e37e96'),
(166, 13, 'booking_info', 'Boyd@BCGMusic.com'),
(167, 13, '_booking_info', 'field_5536920b37e95'),
(159, 28, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"13";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(111, 28, 'position', 'acf_after_title'),
(112, 28, 'layout', 'no_box'),
(113, 28, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}'),
(114, 28, '_edit_lock', '1429646397:1'),
(115, 29, 'page_background_image', '26'),
(116, 29, '_page_background_image', 'field_55356d72f04d3'),
(117, 29, 'contact_info_0_title', 'Booking'),
(118, 29, '_contact_info_0_title', 'field_55368ff3cc57b'),
(119, 29, 'contact_info_0_email', 'Boyd@BCGMusic.com'),
(120, 29, '_contact_info_0_email', 'field_55368ffecc57c'),
(121, 29, 'contact_info_1_title', 'Management'),
(122, 29, '_contact_info_1_title', 'field_55368ff3cc57b'),
(123, 29, 'contact_info_1_email', 'Management@MadisonMcWilliams.com'),
(124, 29, '_contact_info_1_email', 'field_55368ffecc57c'),
(125, 29, 'contact_info', '2'),
(126, 29, '_contact_info', 'field_55368fdbcc57a'),
(127, 13, 'contact_info_0_title', 'Booking'),
(128, 13, '_contact_info_0_title', 'field_55368ff3cc57b'),
(129, 13, 'contact_info_0_email', 'Boyd@BCGMusic.com'),
(130, 13, '_contact_info_0_email', 'field_55368ffecc57c'),
(131, 13, 'contact_info_1_title', 'Management'),
(132, 13, '_contact_info_1_title', 'field_55368ff3cc57b'),
(133, 13, 'contact_info_1_email', 'Management@MadisonMcWilliams.com'),
(134, 13, '_contact_info_1_email', 'field_55368ffecc57c'),
(135, 13, 'contact_info', '2'),
(136, 13, '_contact_info', 'field_55368fdbcc57a'),
(137, 28, 'field_5536920b37e95', 'a:14:{s:3:"key";s:19:"field_5536920b37e95";s:5:"label";s:12:"Booking Info";s:4:"name";s:12:"booking_info";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(138, 28, 'field_5536921e37e96', 'a:14:{s:3:"key";s:19:"field_5536921e37e96";s:5:"label";s:15:"Management Info";s:4:"name";s:15:"management_info";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(140, 30, 'page_background_image', '26'),
(141, 30, '_page_background_image', 'field_55356d72f04d3'),
(142, 30, 'contact_info_0_title', 'Booking'),
(143, 30, '_contact_info_0_title', 'field_55368ff3cc57b'),
(144, 30, 'contact_info_0_email', 'Boyd@BCGMusic.com'),
(145, 30, '_contact_info_0_email', 'field_55368ffecc57c'),
(146, 30, 'contact_info_1_title', 'Management'),
(147, 30, '_contact_info_1_title', 'field_55368ff3cc57b'),
(148, 30, 'contact_info_1_email', 'Management@MadisonMcWilliams.com'),
(149, 30, '_contact_info_1_email', 'field_55368ffecc57c'),
(150, 30, 'contact_info', '2'),
(151, 30, '_contact_info', 'field_55368fdbcc57a'),
(152, 30, '_', 'field_5536920b37e95'),
(153, 30, 'management_info', 'Management@MadisonMcWilliams.com'),
(154, 30, '_management_info', 'field_5536921e37e96'),
(155, 13, '_', 'field_5536920b37e95'),
(156, 13, 'management_info', 'Management@MadisonMcWilliams.com'),
(157, 13, '_management_info', 'field_5536921e37e96'),
(168, 32, '_edit_last', '1'),
(169, 32, 'field_5536bdf23a0f9', 'a:12:{s:3:"key";s:19:"field_5536bdf23a0f9";s:5:"label";s:15:"Top Content Box";s:4:"name";s:15:"top_content_box";s:4:"type";s:10:"wp_wysiwyg";s:12:"instructions";s:7:"(wider)";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:5:"teeny";s:1:"0";s:13:"media_buttons";s:1:"1";s:3:"dfw";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(170, 32, 'field_5536be023a0fa', 'a:12:{s:3:"key";s:19:"field_5536be023a0fa";s:5:"label";s:18:"Bottom Content Box";s:4:"name";s:18:"bottom_content_box";s:4:"type";s:10:"wp_wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:5:"teeny";s:1:"0";s:13:"media_buttons";s:1:"1";s:3:"dfw";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(171, 32, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(172, 32, 'position', 'acf_after_title'),
(173, 32, 'layout', 'no_box'),
(174, 32, 'hide_on_screen', 'a:13:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:4:"slug";i:7;s:6:"author";i:8;s:6:"format";i:9;s:14:"featured_image";i:10;s:10:"categories";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}'),
(175, 32, '_edit_lock', '1429746196:1'),
(178, 33, 'page_background_image', '23'),
(179, 33, '_page_background_image', 'field_55356d72f04d3'),
(180, 33, 'top_content_box', 'Musician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(181, 33, '_top_content_box', 'field_5536bdf23a0f9'),
(182, 33, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(183, 33, '_bottom_content_box', 'field_5536be023a0fa'),
(184, 5, 'top_content_box', '<h2 id="about-title">Madison McWilliams: A Powerhouse in the Making.</h2>\r\n<img class="alignnone size-full wp-image-68" src="http://localhost/madison/wp-content/uploads/2015/04/about-x.png"/>\r\n\r\nMusician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(185, 5, '_top_content_box', 'field_5536bdf23a0f9'),
(186, 5, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(187, 5, '_bottom_content_box', 'field_5536be023a0fa'),
(188, 34, 'page_background_image', '23'),
(189, 34, '_page_background_image', 'field_55356d72f04d3'),
(190, 34, 'top_content_box', '<img src="http://placehold.it/600x200.jpg"/>\r\nMusician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(191, 34, '_top_content_box', 'field_5536bdf23a0f9'),
(192, 34, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(193, 34, '_bottom_content_box', 'field_5536be023a0fa'),
(194, 35, 'page_background_image', '23'),
(195, 35, '_page_background_image', 'field_55356d72f04d3'),
(196, 35, 'top_content_box', '<img src="http://placehold.it/600x200.jpg" alt="" />\r\nMusician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(197, 35, '_top_content_box', 'field_5536bdf23a0f9'),
(198, 35, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(199, 35, '_bottom_content_box', 'field_5536be023a0fa'),
(200, 36, 'page_background_image', '23'),
(201, 36, '_page_background_image', 'field_55356d72f04d3'),
(202, 36, 'top_content_box', '<h2 id="about-title">Madison McWilliams: A Powerhouse in the Making.</h2>\r\n<img src="http://placehold.it/600x200.jpg" alt="" />\r\n\r\nMusician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(203, 36, '_top_content_box', 'field_5536bdf23a0f9'),
(204, 36, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(205, 36, '_bottom_content_box', 'field_5536be023a0fa'),
(206, 37, '_wp_attached_file', '2015/04/madison-about1.jpg'),
(207, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:26:"2015/04/madison-about1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"madison-about1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"madison-about1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"madison-about1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(208, 38, 'page_background_image', '37'),
(209, 38, '_page_background_image', 'field_55356d72f04d3'),
(210, 38, 'top_content_box', '<h2 id="about-title">Madison McWilliams: A Powerhouse in the Making.</h2>\r\n<img src="http://placehold.it/600x200.jpg" alt="" />\r\n\r\nMusician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(211, 38, '_top_content_box', 'field_5536bdf23a0f9'),
(212, 38, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(213, 38, '_bottom_content_box', 'field_5536be023a0fa'),
(218, 40, 'page_background_image', '39'),
(219, 40, '_page_background_image', 'field_55356d72f04d3'),
(220, 11, 'page_background_image', '39'),
(221, 11, '_page_background_image', 'field_55356d72f04d3'),
(223, 9, 'page_background_image', ''),
(224, 9, '_page_background_image', 'field_55356d72f04d3'),
(225, 41, '_edit_last', '1'),
(226, 41, 'field_55381c7699028', 'a:13:{s:3:"key";s:19:"field_55381c7699028";s:5:"label";s:6:"Videos";s:4:"name";s:6:"videos";s:4:"type";s:8:"repeater";s:12:"instructions";s:23:"Enter Youtube Video URL";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:13:{s:3:"key";s:19:"field_55381c8999029";s:5:"label";s:11:"Youtube Url";s:4:"name";s:11:"youtube_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"order_no";i:0;}i:1;a:13:{s:3:"key";s:19:"field_553822fff61b5";s:5:"label";s:5:"Title";s:4:"name";s:5:"title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"order_no";i:1;}}s:7:"row_min";s:1:"0";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(313, 41, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"9";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(228, 41, 'position', 'acf_after_title'),
(229, 41, 'layout', 'no_box'),
(230, 41, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}'),
(231, 41, '_edit_lock', '1429746202:1'),
(232, 42, 'page_background_image', ''),
(233, 42, '_page_background_image', 'field_55356d72f04d3'),
(234, 42, 'videos_0_youtube_url', 'https://www.youtube.com/watch?v=kYfguGh_890'),
(235, 42, '_videos_0_youtube_url', 'field_55381c8999029'),
(236, 42, 'videos_1_youtube_url', ''),
(237, 42, '_videos_1_youtube_url', 'field_55381c8999029'),
(238, 42, 'videos', '2'),
(239, 42, '_videos', 'field_55381c7699028'),
(240, 9, 'videos_0_youtube_url', 'https://www.youtube.com/watch?v=Qay6t5UpnhM'),
(241, 9, '_videos_0_youtube_url', 'field_55381c8999029'),
(255, 44, '_page_background_image', 'field_55356d72f04d3'),
(254, 44, 'page_background_image', ''),
(244, 9, 'videos', '2'),
(245, 9, '_videos', 'field_55381c7699028'),
(246, 43, 'page_background_image', ''),
(247, 43, '_page_background_image', 'field_55356d72f04d3'),
(248, 43, 'videos_0_youtube_url', 'https://www.youtube.com/watch?v=Qay6t5UpnhM'),
(249, 43, '_videos_0_youtube_url', 'field_55381c8999029'),
(250, 43, 'videos_1_youtube_url', ''),
(251, 43, '_videos_1_youtube_url', 'field_55381c8999029'),
(252, 43, 'videos', '2'),
(253, 43, '_videos', 'field_55381c7699028'),
(256, 44, 'videos_0_youtube_url', 'https://www.youtube.com/watch?v=Qay6t5UpnhM'),
(257, 44, '_videos_0_youtube_url', 'field_55381c8999029'),
(258, 44, 'videos_1_youtube_url', 'https://www.youtube.com/watch?v=HtZKBWiVPbI'),
(259, 44, '_videos_1_youtube_url', 'field_55381c8999029'),
(260, 44, 'videos', '2'),
(261, 44, '_videos', 'field_55381c7699028'),
(262, 9, 'videos_1_youtube_url', 'https://www.youtube.com/watch?v=HtZKBWiVPbI'),
(263, 9, '_videos_1_youtube_url', 'field_55381c8999029'),
(265, 45, 'page_background_image', ''),
(266, 45, '_page_background_image', 'field_55356d72f04d3'),
(267, 45, 'videos_0_youtube_url', 'https://www.youtube.com/watch?v=Qay6t5UpnhM'),
(268, 45, '_videos_0_youtube_url', 'field_55381c8999029'),
(269, 45, 'videos_0_title', 'Tame Impala on Conan'),
(270, 45, '_videos_0_title', 'field_553822fff61b5'),
(271, 45, 'videos_1_youtube_url', 'https://www.youtube.com/watch?v=HtZKBWiVPbI'),
(272, 45, '_videos_1_youtube_url', 'field_55381c8999029'),
(273, 45, 'videos_1_title', 'Radiohead - My Iron Lung'),
(274, 45, '_videos_1_title', 'field_553822fff61b5'),
(275, 45, 'videos', '2'),
(276, 45, '_videos', 'field_55381c7699028'),
(277, 9, 'videos_0_title', 'Tame Impala on Conan'),
(278, 9, '_videos_0_title', 'field_553822fff61b5'),
(279, 9, 'videos_1_title', 'Radiohead - My Iron Lung'),
(280, 9, '_videos_1_title', 'field_553822fff61b5'),
(281, 41, 'field_5538267655e37', 'a:9:{s:3:"key";s:19:"field_5538267655e37";s:5:"label";s:13:"Photo Gallery";s:4:"name";s:13:"photo_gallery";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"preview_size";s:9:"thumbnail";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(283, 7, 'page_background_image', '66'),
(284, 7, '_page_background_image', 'field_55356d72f04d3'),
(285, 46, '_wp_attached_file', '2015/04/madison-music-e1429804524468.jpg'),
(286, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1492;s:4:"file";s:40:"2015/04/madison-music-e1429804524468.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"madison-music-e1429804524468-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"madison-music-e1429804524468-300x233.jpg";s:5:"width";i:300;s:6:"height";i:233;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"madison-music-e1429804524468-1024x796.jpg";s:5:"width";i:1024;s:6:"height";i:796;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(287, 47, 'page_background_image', '46'),
(288, 47, '_page_background_image', 'field_55356d72f04d3'),
(289, 48, '_wp_attached_file', '2015/04/IMG_3575-e1429906030524.jpg'),
(290, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2583;s:6:"height";i:3748;s:4:"file";s:35:"2015/04/IMG_3575-e1429906030524.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"IMG_3575-e1429906030524-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"IMG_3575-e1429906030524-207x300.jpg";s:5:"width";i:207;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"IMG_3575-e1429906030524-706x1024.jpg";s:5:"width";i:706;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420888004;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(291, 49, '_wp_attached_file', '2015/04/IMG_3606-Derek-Coutss-conflicted-copy-2015-04-14.jpg'),
(292, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:60:"2015/04/IMG_3606-Derek-Coutss-conflicted-copy-2015-04-14.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"IMG_3606-Derek-Coutss-conflicted-copy-2015-04-14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"IMG_3606-Derek-Coutss-conflicted-copy-2015-04-14-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:61:"IMG_3606-Derek-Coutss-conflicted-copy-2015-04-14-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.20000000000000017763568394002504646778106689453125;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420890032;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(293, 50, '_wp_attached_file', '2015/04/IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14.jpg'),
(294, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:60:"2015/04/IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:75:"IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14-e1429905935963-150x147.jpg";s:5:"width";i:150;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:61:"IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420894979;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"250";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(295, 51, '_wp_attached_file', '2015/04/IMG_3691.jpg'),
(296, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:20:"2015/04/IMG_3691.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3691-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3691-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3691-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420900180;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"100";s:3:"iso";s:3:"125";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(297, 52, '_wp_attached_file', '2015/04/IMG_3692.jpg'),
(298, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:20:"2015/04/IMG_3692.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3692-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3692-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3692-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420900283;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"100";s:3:"iso";s:3:"125";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(299, 9, 'photo_gallery', 'a:11:{i:0;s:2:"48";i:1;s:2:"49";i:2;s:2:"50";i:3;s:2:"51";i:4;s:2:"52";i:5;s:2:"53";i:6;s:2:"54";i:7;s:2:"55";i:8;s:2:"56";i:9;s:2:"57";i:10;s:2:"58";}'),
(300, 9, '_photo_gallery', 'field_5538267655e37'),
(301, 53, '_wp_attached_file', '2015/04/IMG_3756.jpg'),
(302, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3753;s:6:"height";i:5651;s:4:"file";s:20:"2015/04/IMG_3756.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3756-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3756-199x300.jpg";s:5:"width";i:199;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3756-680x1024.jpg";s:5:"width";i:680;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420906545;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(303, 54, '_wp_attached_file', '2015/04/IMG_3805.jpg'),
(304, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:20:"2015/04/IMG_3805.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3805-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3805-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3805-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.20000000000000017763568394002504646778106689453125;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420910915;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"31";s:3:"iso";s:3:"125";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(305, 55, '_wp_attached_file', '2015/04/IMG_3846.jpg'),
(306, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3674;s:6:"height";i:5511;s:4:"file";s:20:"2015/04/IMG_3846.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3846-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3846-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3846-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420915832;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"125";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(307, 56, '_wp_attached_file', '2015/04/IMG_3854.jpg'),
(308, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:20:"2015/04/IMG_3854.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"IMG_3854-e1429906003500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3854-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3854-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420915994;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"125";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(309, 57, '_wp_attached_file', '2015/04/IMG_3870.jpg'),
(310, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:20:"2015/04/IMG_3870.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3870-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3870-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3870-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420917940;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(311, 58, '_wp_attached_file', '2015/04/IMG_3931.jpg'),
(312, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3744;s:6:"height";i:5616;s:4:"file";s:20:"2015/04/IMG_3931.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3931-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3931-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3931-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1420921149;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(314, 59, '_edit_last', '1'),
(315, 59, 'field_553832bdfd855', 'a:14:{s:3:"key";s:19:"field_553832bdfd855";s:5:"label";s:26:"Soundcloud Player Set Link";s:4:"name";s:26:"soundcloud_player_set_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(316, 59, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"7";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(317, 59, 'position', 'acf_after_title'),
(318, 59, 'layout', 'no_box'),
(319, 59, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}'),
(320, 59, '_edit_lock', '1429746278:1'),
(321, 60, 'page_background_image', '46'),
(322, 60, '_page_background_image', 'field_55356d72f04d3'),
(323, 60, 'soundcloud_player_set_link', 'https://soundcloud.com/brokencircles/sets/website-player'),
(324, 60, '_soundcloud_player_set_link', 'field_553832bdfd855'),
(325, 7, 'soundcloud_player_set_link', 'https://soundcloud.com/madison-mcwilliams-1/sets/madison-mcwilliams-music'),
(326, 7, '_soundcloud_player_set_link', 'field_553832bdfd855'),
(327, 61, 'page_background_image', '46'),
(328, 61, '_page_background_image', 'field_55356d72f04d3'),
(329, 61, 'soundcloud_player_set_link', 'https://soundcloud.com/theemberdays/sets/valitus/s-dxBfg'),
(330, 61, '_soundcloud_player_set_link', 'field_553832bdfd855'),
(331, 62, 'page_background_image', '46'),
(332, 62, '_page_background_image', 'field_55356d72f04d3'),
(333, 62, 'soundcloud_player_set_link', 'https://soundcloud.com/theemberdays/sets/more-than-you-think'),
(334, 62, '_soundcloud_player_set_link', 'field_553832bdfd855'),
(335, 46, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:1920;s:6:"height";i:1681;s:4:"file";s:17:"madison-music.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:25:"madison-music-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:25:"madison-music-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:26:"madison-music-1024x897.jpg";s:5:"width";i:1024;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}'),
(336, 50, '_wp_attachment_backup_sizes', 'a:1:{s:14:"thumbnail-orig";a:4:{s:4:"file";s:60:"IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}'),
(337, 56, '_wp_attachment_backup_sizes', 'a:1:{s:14:"thumbnail-orig";a:4:{s:4:"file";s:20:"IMG_3854-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}'),
(338, 48, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:5616;s:6:"height";i:3744;s:4:"file";s:12:"IMG_3575.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:20:"IMG_3575-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:20:"IMG_3575-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:21:"IMG_3575-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}'),
(339, 64, '_edit_last', '1'),
(340, 64, 'field_553e85aa5653b', 'a:8:{s:3:"key";s:19:"field_553e85aa5653b";s:5:"label";s:12:"Social Links";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(341, 64, 'field_553e85b85653c', 'a:14:{s:3:"key";s:19:"field_553e85b85653c";s:5:"label";s:13:"Facebook Link";s:4:"name";s:13:"facebook_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(342, 64, 'field_553e85c25653d', 'a:14:{s:3:"key";s:19:"field_553e85c25653d";s:5:"label";s:12:"Twitter Link";s:4:"name";s:12:"twitter_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(343, 64, 'field_553e85c95653e', 'a:14:{s:3:"key";s:19:"field_553e85c95653e";s:5:"label";s:14:"Instagram Link";s:4:"name";s:14:"instagram_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(344, 64, 'field_553e85d15653f', 'a:14:{s:3:"key";s:19:"field_553e85d15653f";s:5:"label";s:12:"Youtube Link";s:4:"name";s:12:"youtube_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(345, 64, 'field_553e85d856540', 'a:14:{s:3:"key";s:19:"field_553e85d856540";s:5:"label";s:14:"Pinterest Link";s:4:"name";s:14:"pinterest_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(346, 64, 'field_553e85e256541', 'a:14:{s:3:"key";s:19:"field_553e85e256541";s:5:"label";s:9:"Plus Link";s:4:"name";s:9:"plus_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(352, 64, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(348, 64, 'position', 'normal'),
(349, 64, 'layout', 'no_box'),
(350, 64, 'hide_on_screen', ''),
(351, 64, '_edit_lock', '1430160736:1'),
(353, 65, 'page_background_image', '37'),
(354, 65, '_page_background_image', 'field_55356d72f04d3'),
(355, 65, 'top_content_box', '<h2 id="about-title">Madison McWilliams: A Powerhouse in the Making.</h2>\r\n<img class="alignnone size-full wp-image-68" src="http://localhost/madison/wp-content/uploads/2015/04/about-x.png"/>\r\n\r\nMusician, dancer and exuberant teen, Madison McWilliams has a passion for her art that combines natural talent with iconic influences. The result: a refreshing, engaging performer who is a powerhouse in the making.\r\n\r\nRaised in Austin, Texas—the Live Music Capital of the World—and trained on Broadway, Madison hails from a close-knit, loving family that is steeped in politics, giving her a unique perspective on the world and a keen interest that goes beyond her years.'),
(356, 65, '_top_content_box', 'field_5536bdf23a0f9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(357, 65, 'bottom_content_box', 'With the release of her Nashville-produced music videos, Madison showcases her vocal range and a sophisticated singing voice - honed by many years of starring roles in musical theater - that is both inspiring and easy listening.\r\n\r\nMadison is an accomplished pianist, budding guitarist, fluent in Spanish and an enthusiastic globetrotter who loves learning from her encounters with a wide variety of musical and cultural influences.'),
(358, 65, '_bottom_content_box', 'field_5536be023a0fa'),
(359, 66, '_wp_attached_file', '2015/04/madison-music1.jpg'),
(360, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1106;s:4:"file";s:26:"2015/04/madison-music1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"madison-music1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"madison-music1-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"madison-music1-1024x590.jpg";s:5:"width";i:1024;s:6:"height";i:590;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(361, 67, 'page_background_image', '66'),
(362, 67, '_page_background_image', 'field_55356d72f04d3'),
(363, 67, 'soundcloud_player_set_link', 'https://soundcloud.com/theemberdays/sets/more-than-you-think'),
(364, 67, '_soundcloud_player_set_link', 'field_553832bdfd855'),
(365, 68, 'page_background_image', '66'),
(366, 68, '_page_background_image', 'field_55356d72f04d3'),
(367, 68, 'soundcloud_player_set_link', 'https://soundcloud.com/madison-mcwilliams-1/sets/madison-mcwilliams-music'),
(368, 68, '_soundcloud_player_set_link', 'field_553832bdfd855');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-20 00:20:53', '2015-04-20 00:20:53', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-20 00:20:53', '2015-04-20 00:20:53', '', 0, 'http://madisonmcwilliams.com/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-20 00:20:53', '2015-04-20 00:20:53', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-20 01:17:54', '2015-04-20 01:17:54', '', 0, 'http://madisonmcwilliams.com/?page_id=2', 1, 'page', '', 0),
(4, 1, '2015-04-20 01:17:48', '2015-04-20 01:17:48', '', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-20 01:17:48', '2015-04-20 01:17:48', '', 2, 'http://madisonmcwilliams.com/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2015-04-20 01:36:26', '2015-04-20 01:36:26', '', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2015-04-27 18:55:04', '2015-04-27 18:55:04', '', 0, 'http://madisonmcwilliams.com/?page_id=5', 3, 'page', '', 0),
(6, 1, '2015-04-20 01:36:26', '2015-04-20 01:36:26', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-20 01:36:26', '2015-04-20 01:36:26', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-04-20 17:19:24', '2015-04-20 17:19:24', '', 'Music', '', 'publish', 'open', 'open', '', 'music', '', '', '2015-04-27 18:55:46', '2015-04-27 18:55:46', '', 0, 'http://madisonmcwilliams.com/?page_id=7', 2, 'page', '', 0),
(8, 1, '2015-04-20 17:19:24', '2015-04-20 17:19:24', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-20 17:19:24', '2015-04-20 17:19:24', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-04-20 17:19:30', '2015-04-20 17:19:30', '', 'Media', '', 'publish', 'open', 'open', '', 'media', '', '', '2015-04-22 23:33:04', '2015-04-22 23:33:04', '', 0, 'http://madisonmcwilliams.com/?page_id=9', 4, 'page', '', 0),
(63, 1, '2015-04-27 18:49:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-27 18:49:54', '0000-00-00 00:00:00', '', 0, 'http://madisonmcwilliams.com/?p=63', 0, 'post', '', 0),
(10, 1, '2015-04-20 17:19:30', '2015-04-20 17:19:30', '', 'Media', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-04-20 17:19:30', '2015-04-20 17:19:30', '', 9, 'http://madisonmcwilliams.com/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-04-20 17:19:35', '2015-04-20 17:19:35', '', 'Tour', '', 'publish', 'open', 'open', '', 'tour', '', '', '2015-04-22 19:12:58', '2015-04-22 19:12:58', '', 0, 'http://madisonmcwilliams.com/?page_id=11', 5, 'page', '', 0),
(12, 1, '2015-04-20 17:19:35', '2015-04-20 17:19:35', '', 'Tour', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-04-20 17:19:35', '2015-04-20 17:19:35', '', 11, 'http://madisonmcwilliams.com/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-04-20 17:19:43', '2015-04-20 17:19:43', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-04-21 20:02:41', '2015-04-21 20:02:41', '', 0, 'http://madisonmcwilliams.com/?page_id=13', 6, 'page', '', 0),
(14, 1, '2015-04-20 17:19:43', '2015-04-20 17:19:43', '', 'Contact', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-20 17:19:43', '2015-04-20 17:19:43', '', 13, 'http://madisonmcwilliams.com/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-04-20 17:19:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-20 17:19:47', '0000-00-00 00:00:00', '', 0, 'http://madisonmcwilliams.com/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2015-04-20 17:19:55', '2015-04-20 17:19:55', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2015-04-20 17:19:59', '2015-04-20 17:19:59', '', 0, 'http://madisonmcwilliams.com/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2015-04-20 17:19:55', '2015-04-20 17:19:55', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2015-04-20 17:19:59', '2015-04-20 17:19:59', '', 0, 'http://madisonmcwilliams.com/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2015-04-20 17:19:55', '2015-04-20 17:19:55', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2015-04-20 17:19:59', '2015-04-20 17:19:59', '', 0, 'http://madisonmcwilliams.com/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2015-04-20 17:19:55', '2015-04-20 17:19:55', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2015-04-20 17:19:59', '2015-04-20 17:19:59', '', 0, 'http://madisonmcwilliams.com/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2015-04-20 17:19:55', '2015-04-20 17:19:55', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2015-04-20 17:19:59', '2015-04-20 17:19:59', '', 0, 'http://madisonmcwilliams.com/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2015-04-20 17:19:55', '2015-04-20 17:19:55', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2015-04-20 17:19:59', '2015-04-20 17:19:59', '', 0, 'http://madisonmcwilliams.com/?p=21', 6, 'nav_menu_item', '', 0),
(22, 1, '2015-04-20 21:20:18', '2015-04-20 21:20:18', '', 'BG Images', '', 'publish', 'closed', 'closed', '', 'acf_bg-images', '', '', '2015-04-22 19:10:50', '2015-04-22 19:10:50', '', 0, 'http://madisonmcwilliams.com/?post_type=acf&#038;p=22', 1, 'acf', '', 0),
(23, 1, '2015-04-20 21:20:59', '2015-04-20 21:20:59', '', 'madison-about', '', 'inherit', 'open', 'open', '', 'madison-about', '', '', '2015-04-20 21:20:59', '2015-04-20 21:20:59', '', 5, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/madison-about.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2015-04-20 21:23:31', '2015-04-20 21:23:31', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-20 21:23:31', '2015-04-20 21:23:31', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-04-21 17:47:09', '2015-04-21 17:47:09', '<p>\r\n   [text* your-name  placeholder "Full Name"]\r\n </p>\r\n\r\n<p>\r\n [email* your-email placeholder "Email Address"] \r\n</p>\r\n\r\n<p>\r\n [textarea your-message placeholder "Your Message"] \r\n</p>\r\n\r\n <a class="button expand large" href="#" onclick="document.getElementById(''main-contact-form'').submit();">Submit</a>\n[your-subject]\n[your-name] <me@jedidiahlachmann.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Madison McWilliams (http://madisonmcwilliams.com)\nme@jedidiahlachmann.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nMadison McWilliams <me@jedidiahlachmann.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Madison McWilliams (http://madisonmcwilliams.com)\n[your-email]\nReply-To: me@jedidiahlachmann.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-04-21 20:48:10', '2015-04-21 20:48:10', '', 0, 'http://madisonmcwilliams.com/?post_type=wpcf7_contact_form&#038;p=25', 0, 'wpcf7_contact_form', '', 0),
(26, 1, '2015-04-21 17:51:02', '2015-04-21 17:51:02', '', 'madison-contact', '', 'inherit', 'open', 'open', '', 'madison-contact', '', '', '2015-04-21 17:51:02', '2015-04-21 17:51:02', '', 13, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/madison-contact.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2015-04-21 17:51:04', '2015-04-21 17:51:04', '', 'Contact', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-21 17:51:04', '2015-04-21 17:51:04', '', 13, 'http://madisonmcwilliams.com/13-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-04-21 17:59:37', '2015-04-21 17:59:37', '', 'Contact Page', '', 'publish', 'closed', 'closed', '', 'acf_contact-page', '', '', '2015-04-21 20:02:19', '2015-04-21 20:02:19', '', 0, 'http://madisonmcwilliams.com/?post_type=acf&#038;p=28', 6, 'acf', '', 0),
(29, 1, '2015-04-21 18:00:06', '2015-04-21 18:00:06', '', 'Contact', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-21 18:00:06', '2015-04-21 18:00:06', '', 13, 'http://madisonmcwilliams.com/13-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-04-21 18:09:09', '2015-04-21 18:09:09', '', 'Contact', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-21 18:09:09', '2015-04-21 18:09:09', '', 13, 'http://madisonmcwilliams.com/13-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-04-21 20:02:41', '2015-04-21 20:02:41', '', 'Contact', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-04-21 20:02:41', '2015-04-21 20:02:41', '', 13, 'http://madisonmcwilliams.com/13-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-04-21 21:16:04', '2015-04-21 21:16:04', '', 'About Page', '', 'publish', 'closed', 'closed', '', 'acf_about-page', '', '', '2015-04-21 21:16:04', '2015-04-21 21:16:04', '', 0, 'http://madisonmcwilliams.com/?post_type=acf&#038;p=32', 3, 'acf', '', 0),
(33, 1, '2015-04-21 21:16:52', '2015-04-21 21:16:52', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-21 21:16:52', '2015-04-21 21:16:52', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-04-21 21:28:07', '2015-04-21 21:28:07', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-21 21:28:07', '2015-04-21 21:28:07', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-04-21 21:46:00', '2015-04-21 21:46:00', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-21 21:46:00', '2015-04-21 21:46:00', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-04-21 21:28:38', '2015-04-21 21:28:38', '', 'Madison McWilliams: A Powerhouse in the Making.', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-21 21:28:38', '2015-04-21 21:28:38', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-04-21 21:53:10', '2015-04-21 21:53:10', '', 'madison-about', '', 'inherit', 'open', 'open', '', 'madison-about-2', '', '', '2015-04-21 21:53:10', '2015-04-21 21:53:10', '', 5, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/madison-about1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2015-04-21 21:53:13', '2015-04-21 21:53:13', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-21 21:53:13', '2015-04-21 21:53:13', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-04-22 19:10:38', '2015-04-22 19:10:38', '', 'madison-tour', '', 'inherit', 'open', 'open', '', 'madison-tour', '', '', '2015-04-22 19:10:38', '2015-04-22 19:10:38', '', 11, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/madison-tour.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2015-04-22 19:10:41', '2015-04-22 19:10:41', '', 'Tour', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-04-22 19:10:41', '2015-04-22 19:10:41', '', 11, 'http://madisonmcwilliams.com/11-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2015-04-22 22:11:35', '2015-04-22 22:11:35', '', 'Media Page', '', 'publish', 'closed', 'closed', '', 'acf_media-page', '', '', '2015-04-22 23:45:46', '2015-04-22 23:45:46', '', 0, 'http://madisonmcwilliams.com/?post_type=acf&#038;p=41', 4, 'acf', '', 0),
(42, 1, '2015-04-22 22:11:49', '2015-04-22 22:11:49', '', 'Media', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-04-22 22:11:49', '2015-04-22 22:11:49', '', 9, 'http://madisonmcwilliams.com/9-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-04-22 22:20:01', '2015-04-22 22:20:01', '', 'Media', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-04-22 22:20:01', '2015-04-22 22:20:01', '', 9, 'http://madisonmcwilliams.com/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-04-22 22:35:18', '2015-04-22 22:35:18', '', 'Media', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-04-22 22:35:18', '2015-04-22 22:35:18', '', 9, 'http://madisonmcwilliams.com/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-04-22 22:39:21', '2015-04-22 22:39:21', '', 'Media', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-04-22 22:39:21', '2015-04-22 22:39:21', '', 9, 'http://madisonmcwilliams.com/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-04-22 23:14:50', '2015-04-22 23:14:50', '', 'madison-music', '', 'inherit', 'open', 'open', '', 'madison-music', '', '', '2015-04-22 23:14:50', '2015-04-22 23:14:50', '', 7, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/madison-music.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2015-04-22 23:15:55', '2015-04-22 23:15:55', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-22 23:15:55', '2015-04-22 23:15:55', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-04-22 23:26:50', '2015-04-22 23:26:50', '', 'IMG_3575', '', 'inherit', 'open', 'open', '', 'img_3575', '', '', '2015-04-22 23:26:50', '2015-04-22 23:26:50', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3575.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-04-22 23:26:52', '2015-04-22 23:26:52', '', 'IMG_3606 (Derek Couts''s conflicted copy 2015-04-14)', '', 'inherit', 'open', 'open', '', 'img_3606-derek-coutss-conflicted-copy-2015-04-14', '', '', '2015-04-22 23:26:52', '2015-04-22 23:26:52', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3606-Derek-Coutss-conflicted-copy-2015-04-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2015-04-22 23:26:55', '2015-04-22 23:26:55', '', 'IMG_3678 (Derek Couts''s conflicted copy 2015-04-14)', '', 'inherit', 'open', 'open', '', 'img_3678-derek-coutss-conflicted-copy-2015-04-14', '', '', '2015-04-22 23:26:55', '2015-04-22 23:26:55', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3678-Derek-Coutss-conflicted-copy-2015-04-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2015-04-22 23:26:57', '2015-04-22 23:26:57', '', 'IMG_3691', '', 'inherit', 'open', 'open', '', 'img_3691', '', '', '2015-04-22 23:26:57', '2015-04-22 23:26:57', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3691.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2015-04-22 23:26:59', '2015-04-22 23:26:59', '', 'IMG_3692', '', 'inherit', 'open', 'open', '', 'img_3692', '', '', '2015-04-22 23:26:59', '2015-04-22 23:26:59', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3692.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2015-04-22 23:32:46', '2015-04-22 23:32:46', '', 'IMG_3756', '', 'inherit', 'open', 'open', '', 'img_3756', '', '', '2015-04-22 23:32:46', '2015-04-22 23:32:46', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3756.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2015-04-22 23:32:48', '2015-04-22 23:32:48', '', 'IMG_3805', '', 'inherit', 'open', 'open', '', 'img_3805', '', '', '2015-04-22 23:32:48', '2015-04-22 23:32:48', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3805.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2015-04-22 23:32:50', '2015-04-22 23:32:50', '', 'IMG_3846', '', 'inherit', 'open', 'open', '', 'img_3846', '', '', '2015-04-22 23:32:50', '2015-04-22 23:32:50', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3846.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2015-04-22 23:32:52', '2015-04-22 23:32:52', '', 'IMG_3854', '', 'inherit', 'open', 'open', '', 'img_3854', '', '', '2015-04-22 23:32:52', '2015-04-22 23:32:52', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3854.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2015-04-22 23:32:54', '2015-04-22 23:32:54', '', 'IMG_3870', '', 'inherit', 'open', 'open', '', 'img_3870', '', '', '2015-04-22 23:32:54', '2015-04-22 23:32:54', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3870.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2015-04-22 23:32:57', '2015-04-22 23:32:57', '', 'IMG_3931', '', 'inherit', 'open', 'open', '', 'img_3931', '', '', '2015-04-22 23:32:57', '2015-04-22 23:32:57', '', 9, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/IMG_3931.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2015-04-22 23:46:13', '2015-04-22 23:46:13', '', 'Music Page', '', 'publish', 'closed', 'closed', '', 'acf_music-page', '', '', '2015-04-22 23:46:13', '2015-04-22 23:46:13', '', 0, 'http://madisonmcwilliams.com/?post_type=acf&#038;p=59', 2, 'acf', '', 0),
(60, 1, '2015-04-22 23:47:09', '2015-04-22 23:47:09', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-22 23:47:09', '2015-04-22 23:47:09', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-04-23 15:51:42', '2015-04-23 15:51:42', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-23 15:51:42', '2015-04-23 15:51:42', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-04-23 15:52:41', '2015-04-23 15:52:41', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-23 15:52:41', '2015-04-23 15:52:41', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-04-27 18:54:33', '2015-04-27 18:54:33', '', 'Options Page', '', 'publish', 'closed', 'closed', '', 'acf_options-page', '', '', '2015-04-27 18:54:39', '2015-04-27 18:54:39', '', 0, 'http://madisonmcwilliams.com/?post_type=acf&#038;p=64', 6, 'acf', '', 0),
(65, 1, '2015-04-27 18:55:04', '2015-04-27 18:55:04', '', 'About', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-27 18:55:04', '2015-04-27 18:55:04', '', 5, 'http://madisonmcwilliams.com/5-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-04-27 18:55:26', '2015-04-27 18:55:26', '', 'madison-music', '', 'inherit', 'open', 'open', '', 'madison-music-2', '', '', '2015-04-27 18:55:26', '2015-04-27 18:55:26', '', 7, 'http://madisonmcwilliams.com/wp-content/uploads/2015/04/madison-music1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2015-04-27 18:55:30', '2015-04-27 18:55:30', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-27 18:55:30', '2015-04-27 18:55:30', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2015-04-27 18:55:46', '2015-04-27 18:55:46', '', 'Music', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-04-27 18:55:46', '2015-04-27 18:55:46', '', 7, 'http://madisonmcwilliams.com/7-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

CREATE TABLE IF NOT EXISTS `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

CREATE TABLE IF NOT EXISTS `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

CREATE TABLE IF NOT EXISTS `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

CREATE TABLE IF NOT EXISTS `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

CREATE TABLE IF NOT EXISTS `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

CREATE TABLE IF NOT EXISTS `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

CREATE TABLE IF NOT EXISTS `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

CREATE TABLE IF NOT EXISTS `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  `note_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Footer Nav', 'footer-nav', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Legends Hill'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:"555bb01f94813d4e182a3be6df212aa40c1c9263241b018bf4bfe3bb95ccf112";a:4:{s:10:"expiration";i:1430333393;s:2:"ip";s:12:"69.245.21.55";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1430160593;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '63'),
(16, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1430160899'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(20, 1, 'closedpostboxes_acf', 'a:0:{}'),
(21, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Legends Hill', '$P$BBiH9uaYJ1i1snkALALSb7rOjlLYWj.', 'legends-hill', 'me@jedidiahlachmann.com', '', '2015-04-20 00:20:53', '', 0, 'Legends Hill');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
