-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 22 Janvier 2014 à 14:25
-- Version du serveur: 5.1.53-community-log
-- Version de PHP: 5.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `wp_ecom`
--
--CREATE DATABASE IF NOT EXISTS `wp_ecom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
--USE `wp_ecom`;
USE `labuller`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'rating', '5'),
(2, 4, 'is_customer_note', '0'),
(3, 5, 'is_customer_note', '0'),
(4, 6, 'is_customer_note', '0'),
(5, 7, 'is_customer_note', '0'),
(6, 8, 'is_customer_note', '0'),
(7, 9, 'is_customer_note', '0'),
(8, 10, 'is_customer_note', '0'),
(9, 11, 'is_customer_note', '0'),
(10, 12, 'is_customer_note', '0'),
(11, 13, 'is_customer_note', '0'),
(12, 14, 'is_customer_note', '0'),
(13, 15, 'is_customer_note', '0');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2014-01-20 13:23:31', '2014-01-20 13:23:31', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0),
(2, 17, 'admin', 'labullerie6@gmail.com', '', '127.0.0.1', '2014-01-20 15:10:15', '2014-01-20 14:10:15', 'Super !!!!', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', '', 0, 1),
(3, 17, 'admin', 'labullerie6@gmail.com', '', '127.0.0.1', '2014-01-20 15:29:24', '2014-01-20 14:29:24', 'TEST', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', '', 0, 1),
(4, 47, 'WooCommerce', '', '', '', '2014-01-20 15:48:18', '2014-01-20 14:48:18', 'En attente de paiement BACS État de la commande modifié de attente à en-attente', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 47, 'WooCommerce', '', '', '', '2014-01-20 15:48:18', '2014-01-20 14:48:18', 'Articles de la commande sortis du stock.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 76, 'WooCommerce', '', '', '', '2014-01-21 17:31:52', '2014-01-21 16:31:52', 'En attente règlement par chèque État de la commande modifié de attente à en-attente', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 76, 'WooCommerce', '', '', '', '2014-01-21 17:31:52', '2014-01-21 16:31:52', 'L''élément n&deg;74 est en stock réduit de 1 jusqu''à 0', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 76, 'WooCommerce', '', '', '', '2014-01-21 17:31:53', '2014-01-21 16:31:53', 'Articles de la commande sortis du stock.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 77, 'WooCommerce', '', '', '', '2014-01-21 17:45:01', '2014-01-21 16:45:01', 'En attente règlement par chèque État de la commande modifié de attente à en-attente', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 77, 'WooCommerce', '', '', '', '2014-01-21 17:45:01', '2014-01-21 16:45:01', 'L''élément n&deg;72 est en stock réduit de 1 jusqu''à 0', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 77, 'WooCommerce', '', '', '', '2014-01-21 17:45:02', '2014-01-21 16:45:02', 'Articles de la commande sortis du stock.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 78, 'WooCommerce', '', '', '', '2014-01-21 17:47:24', '2014-01-21 16:47:24', 'En attente règlement par chèque État de la commande modifié de attente à en-attente', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 78, 'WooCommerce', '', '', '', '2014-01-21 17:47:24', '2014-01-21 16:47:24', 'Articles de la commande sortis du stock.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 79, 'WooCommerce', '', '', '', '2014-01-22 13:02:38', '2014-01-22 12:02:38', 'En attente règlement par chèque État de la commande modifié de attente à en-attente', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 79, 'WooCommerce', '', '', '', '2014-01-22 13:02:38', '2014-01-22 12:02:38', 'Articles de la commande sortis du stock.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=486 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ecom', 'yes'),
(2, 'blogname', 'La bullerie', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'labullerie6@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:12:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:41:"envato-wordpress-toolkit-master/index.php";i:2;s:23:"mailchimp/mailchimp.php";i:3;s:83:"previous-and-next-post-in-same-taxonomy/previous-and-next-post-in-same-taxonomy.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:5;s:23:"revslider/revslider.php";i:6;s:37:"simple-wp-retina/simple-wp-retina.php";i:7;s:45:"woocommerce-gateway-stripe/gateway-stripe.php";i:8;s:27:"woocommerce/woocommerce.php";i:9;s:27:"woosidebars/woosidebars.php";i:10;s:42:"woosponsorship/woocommerce-sponsorship.php";i:11;s:39:"woothemes-updater/woothemes-updater.php";}', 'yes'),
(36, 'home', 'http://localhost/ecom', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:5:{i:0;s:78:"C:\\wamp\\www\\ecom/wp-content/plugins/woosponsorship/woocommerce-sponsorship.php";i:1;s:55:"C:\\wamp\\www\\ecom/wp-content/plugins/akismet/akismet.php";i:2;s:113:"C:\\wamp\\www\\ecom/wp-content/plugins/woosponsorship/classes/widgets/class-wc-sponsorship-project-status-widget.php";i:3;s:107:"C:\\wamp\\www\\ecom/wp-content/plugins/woosponsorship/classes/widgets/class-wc-sponsorship-levels-template.php";i:4;s:91:"C:\\wamp\\www\\ecom/wp-content/plugins/woosponsorship/classes/class-wc-sponsorship-sidebar.php";}', 'no'),
(44, 'template', 'theretailer', 'yes'),
(45, 'stylesheet', 'theretailer', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '48', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:8:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:115:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:20:"campaign_contributor";a:2:{s:4:"name";s:20:"Campaign Contributor";s:12:"capabilities";a:18:{s:4:"read";b:1;s:12:"upload_files";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:10:"edit_posts";b:1;s:13:"publish_posts";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"edit_published_posts";b:1;s:7:"level_1";b:1;s:16:"submit_campaigns";b:1;s:12:"edit_product";b:1;s:13:"edit_products";b:1;s:14:"delete_product";b:1;s:15:"delete_products";b:1;s:16:"publish_products";b:1;s:23:"edit_published_products";b:1;s:20:"assign_product_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:2:{i:0;s:8:"search-2";i:1;s:29:"woocommerce_random_products-2";}s:23:"widgets_product_listing";a:0:{}s:20:"widgets_light_footer";a:0:{}s:19:"widgets_dark_footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:9:{i:1390401485;a:2:{s:34:"atcf_check_for_completed_campaigns";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:21:"atcf_process_payments";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1390403002;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1390415340;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1390438800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1390440214;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1390440615;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1390483433;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1390484362;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_timeout_browser_e0acbe6b4333b2774cf2305ecf4cd614', '1390829019', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:47:"http://fr.wordpress.org/wordpress-3.8-fr_FR.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:47:"http://fr.wordpress.org/wordpress-3.8-fr_FR.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.8";s:7:"version";s:3:"3.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:38:"http://wordpress.org/wordpress-3.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:38:"http://wordpress.org/wordpress-3.8.zip";s:10:"no_content";s:49:"http://wordpress.org/wordpress-3.8-no-content.zip";s:11:"new_bundled";s:50:"http://wordpress.org/wordpress-3.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.8";s:7:"version";s:3:"3.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1390397062;s:15:"version_checked";s:3:"3.8";s:12:"translations";a:0:{}}', 'yes'),
(483, '_site_transient_timeout_theme_roots', '1390401263', 'yes'),
(484, '_site_transient_theme_roots', 'a:5:{s:8:"flatsome";s:7:"/themes";s:11:"theretailer";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1390392042;s:7:"checked";a:5:{s:8:"flatsome";s:3:"1.6";s:11:"theretailer";s:5:"1.6.5";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_browser_e0acbe6b4333b2774cf2305ecf4cd614', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"32.0.1700.76";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(116, 'can_compress_scripts', '1', 'yes'),
(121, '_transient_timeout_plugin_slugs', '1390397863', 'no'),
(122, '_transient_plugin_slugs', 'a:14:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:41:"envato-wordpress-toolkit-master/index.php";i:3;s:9:"hello.php";i:4;s:23:"mailchimp/mailchimp.php";i:5;s:83:"previous-and-next-post-in-same-taxonomy/previous-and-next-post-in-same-taxonomy.php";i:6;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:7;s:23:"revslider/revslider.php";i:8;s:37:"simple-wp-retina/simple-wp-retina.php";i:9;s:27:"woocommerce/woocommerce.php";i:10;s:42:"woosponsorship/woocommerce-sponsorship.php";i:11;s:45:"woocommerce-gateway-stripe/gateway-stripe.php";i:12;s:27:"woosidebars/woosidebars.php";i:13;s:39:"woothemes-updater/woothemes-updater.php";}', 'no'),
(465, '_transient_woocommerce_processing_order_count', '0', 'yes'),
(467, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1390435415', 'no'),
(468, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: H', 'no'),
(485, '_transient_is_multi_author', '0', 'yes'),
(125, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1390235034', 'yes'),
(126, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3898";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2456";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2344";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1856";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1583";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1329";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1325";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1310";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1260";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1225";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1121";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1000";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"982";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"974";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"950";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"844";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"821";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"780";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"722";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"686";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"681";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"678";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"623";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"615";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"595";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"572";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"570";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"541";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"539";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"530";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"522";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"506";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"505";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"471";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"458";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"453";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"452";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"436";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"432";}}', 'yes'),
(228, '_transient_random_seed', '1a3e0090c8a0ebe53e27cd1a7a337e97', 'yes'),
(132, 'woocommerce_default_country', 'FR', 'yes'),
(133, 'woocommerce_currency', 'EUR', 'yes'),
(134, 'woocommerce_allowed_countries', 'all', 'yes'),
(135, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(136, 'woocommerce_demo_store', 'no', 'yes'),
(137, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes — no orders shall be fulfilled.', 'yes'),
(138, 'woocommerce_enable_coupons', 'yes', 'yes'),
(139, 'woocommerce_enable_guest_checkout', 'yes', 'yes'),
(140, 'woocommerce_enable_order_comments', 'yes', 'yes'),
(141, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(142, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(143, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'yes'),
(144, 'woocommerce_enable_myaccount_registration', 'no', 'yes'),
(145, 'woocommerce_registration_email_for_username', 'yes', 'yes'),
(146, 'woocommerce_lock_down_admin', 'yes', 'yes'),
(147, 'woocommerce_clear_cart_on_logout', 'no', 'yes'),
(148, 'woocommerce_allow_customers_to_reorder', 'no', 'yes'),
(149, 'woocommerce_frontend_css', 'yes', 'yes'),
(150, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(151, 'woocommerce_enable_chosen', 'yes', 'yes'),
(152, 'woocommerce_file_download_method', 'force', 'yes'),
(153, 'woocommerce_downloads_require_login', 'no', 'yes'),
(154, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'yes'),
(155, 'woocommerce_shop_page_id', '4', 'yes'),
(156, 'woocommerce_terms_page_id', '', 'yes'),
(157, 'woocommerce_cart_page_id', '5', 'yes'),
(158, 'woocommerce_checkout_page_id', '6', 'yes'),
(159, 'woocommerce_pay_page_id', '13', 'yes'),
(160, 'woocommerce_thanks_page_id', '14', 'yes'),
(161, 'woocommerce_myaccount_page_id', '7', 'yes'),
(162, 'woocommerce_edit_address_page_id', '9', 'yes'),
(163, 'woocommerce_view_order_page_id', '10', 'yes'),
(164, 'woocommerce_change_password_page_id', '11', 'yes'),
(165, 'woocommerce_logout_page_id', '12', 'yes'),
(166, 'woocommerce_lost_password_page_id', '8', 'yes'),
(167, 'woocommerce_default_catalog_orderby', 'title', 'yes'),
(168, 'woocommerce_shop_page_display', '', 'yes'),
(169, 'woocommerce_category_archive_display', '', 'yes'),
(170, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(171, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(172, 'woocommerce_enable_sku', 'yes', 'yes'),
(173, 'woocommerce_enable_weight', 'yes', 'yes'),
(174, 'woocommerce_enable_dimensions', 'yes', 'yes'),
(175, 'woocommerce_enable_dimension_product_attributes', 'yes', 'yes'),
(176, 'woocommerce_weight_unit', 'kg', 'yes'),
(177, 'woocommerce_dimension_unit', 'cm', 'yes'),
(178, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(179, 'woocommerce_review_rating_required', 'yes', 'yes'),
(180, 'woocommerce_review_rating_verification_label', 'yes', 'yes'),
(181, 'woocommerce_currency_pos', 'left', 'yes'),
(182, 'woocommerce_price_thousand_sep', ',', 'yes'),
(183, 'woocommerce_price_decimal_sep', '.', 'yes'),
(184, 'woocommerce_price_num_decimals', '2', 'yes'),
(185, 'woocommerce_price_trim_zeros', 'yes', 'yes'),
(186, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";b:1;}', 'yes'),
(187, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(188, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"90";s:6:"height";s:2:"90";s:4:"crop";i:1;}', 'yes'),
(189, 'woocommerce_manage_stock', 'yes', 'yes'),
(190, 'woocommerce_hold_stock_minutes', '60', 'yes'),
(191, 'woocommerce_notify_low_stock', 'yes', 'yes'),
(192, 'woocommerce_notify_no_stock', 'yes', 'yes'),
(193, 'woocommerce_stock_email_recipient', 'labullerie6@gmail.com', 'yes'),
(194, 'woocommerce_notify_low_stock_amount', '5', 'yes'),
(195, 'woocommerce_notify_no_stock_amount', '1', 'yes'),
(196, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(197, 'woocommerce_stock_format', '', 'yes'),
(198, 'woocommerce_calc_shipping', 'yes', 'yes'),
(199, 'woocommerce_enable_shipping_calc', 'yes', 'yes'),
(200, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(201, 'woocommerce_shipping_method_format', '', 'yes'),
(202, 'woocommerce_ship_to_billing_address_only', 'no', 'yes'),
(203, 'woocommerce_ship_to_same_address', 'yes', 'yes'),
(204, 'woocommerce_require_shipping_address', 'no', 'yes'),
(205, 'woocommerce_calc_taxes', 'no', 'yes'),
(206, 'woocommerce_prices_include_tax', 'no', 'yes'),
(207, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(208, 'woocommerce_default_customer_address', 'base', 'yes'),
(209, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(210, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(211, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(212, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(213, 'woocommerce_email_from_name', 'La bullerie', 'yes'),
(214, 'woocommerce_email_from_address', 'labullerie6@gmail.com', 'yes'),
(215, 'woocommerce_email_header_image', '', 'yes'),
(216, 'woocommerce_email_footer_text', 'La bullerie - Powered by WooCommerce', 'yes'),
(217, 'woocommerce_email_base_color', '#557da1', 'yes'),
(218, 'woocommerce_email_background_color', '#f5f5f5', 'yes'),
(219, 'woocommerce_email_body_background_color', '#fdfdfd', 'yes'),
(220, 'woocommerce_email_text_color', '#505050', 'yes'),
(223, 'woocommerce_db_version', '2.0.20', 'yes'),
(224, 'woocommerce_version', '2.0.20', 'yes'),
(225, 'recently_activated', 'a:0:{}', 'yes'),
(242, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:7:"/panier";i:1;s:9:"/commande";i:2;s:11:"/mon-compte";i:3;s:3:"p=5";i:4;s:3:"p=6";i:5;s:3:"p=7";}', 'yes'),
(230, 'slurp_page_installed', '1', 'yes'),
(231, 'woocommerce_frontend_css_colors', 'a:5:{s:7:"primary";s:7:"#ad74a2";s:9:"secondary";s:7:"#f7f6f7";s:9:"highlight";s:7:"#85ad74";s:10:"content_bg";s:7:"#ffffff";s:7:"subtext";s:7:"#777777";}', 'yes'),
(238, 'woocommerce_default_gateway', 'mijireh_checkout', 'yes'),
(239, 'woocommerce_gateway_order', 'a:5:{s:6:"paypal";i:0;s:16:"mijireh_checkout";i:1;s:4:"bacs";i:2;s:6:"cheque";i:3;s:3:"cod";i:4;}', 'yes'),
(264, 'The Retailer (Shared on www.MafiaShare.net)_options', 'a:50:{s:9:"gb_layout";s:10:"fullscreen";s:18:"boxed_layout_width";s:4:"1100";s:13:"favicon_image";s:0:"";s:14:"favicon_retina";s:0:"";s:34:"revolution_slider_in_mobile_phones";i:0;s:13:"page_comments";i:0;s:17:"light_footer_blog";i:0;s:12:"catalog_mode";i:0;s:15:"sidebar_listing";i:0;s:12:"flip_product";i:0;s:20:"flip_product_mobiles";i:0;s:16:"category_listing";i:0;s:17:"products_per_page";s:2:"12";s:12:"introduction";s:58:"<h4 class="theretailer_theme_options_subheader">Icons</h4>";s:18:"registration_title";s:18:"I''m a New Customer";s:20:"registration_content";s:136:"<h3>Your text here</h3>\r\n<ul>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n</ul>";s:19:"registration_button";s:17:"Create an account";s:11:"login_title";s:24:"I''m a Returning Customer";s:13:"login_content";s:136:"<h3>Your text here</h3>\r\n<ul>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n</ul>";s:12:"login_button";s:5:"Login";s:11:"hide_topbar";i:0;s:11:"topbar_text";s:34:"Define this text in Theme Options.";s:23:"menu_header_top_padding";a:1:{s:4:"size";s:4:"30px";}s:26:"menu_header_bottom_padding";a:1:{s:4:"size";s:4:"30px";}s:12:"footer_logos";s:0:"";s:14:"copyright_text";s:34:"Define this text in Theme Options.";s:9:"site_logo";s:0:"";s:13:"main_bg_color";s:4:"#fff";s:7:"main_bg";s:0:"";s:12:"accent_color";s:7:"#b39964";s:13:"primary_color";s:4:"#000";s:15:"header_bg_color";s:7:"#f4f4f4";s:23:"primary_footer_bg_color";s:7:"#f4f4f4";s:25:"secondary_footer_bg_color";s:4:"#000";s:22:"secondary_footer_color";s:4:"#fff";s:29:"secondary_footer_title_border";a:3:{s:5:"width";s:1:"2";s:5:"style";s:5:"solid";s:5:"color";s:7:"#3d3d3d";}s:30:"secondary_footer_borders_color";s:7:"#3d3d3d";s:22:"copyright_bar_bg_color";s:4:"#000";s:24:"copyright_bar_top_border";a:3:{s:5:"width";s:1:"2";s:5:"style";s:5:"solid";s:5:"color";s:7:"#3d3d3d";}s:20:"copyright_text_color";s:7:"#a8a8a8";s:19:"icons_sprite_normal";s:0:"";s:19:"icons_sprite_retina";s:0:"";s:12:"gb_main_font";s:4:"Arvo";s:17:"gb_secondary_font";s:4:"Lato";s:10:"custom_css";s:33:".add-your-own-classes-here {\r\n\r\n}";s:16:"custom_js_header";s:75:"<script type="text/javascript">\r\n					\r\n//JavaScript goes here\r\n\r\n</script>";s:16:"custom_js_footer";s:75:"<script type="text/javascript">\r\n					\r\n//JavaScript goes here\r\n\r\n</script>";s:9:"of_backup";s:0:"";s:11:"of_transfer";s:0:"";s:8:"doc_info";s:367:"<p class="theretailer_theme_options_info_paragraph">Checkout our <a href="http://theretailer.getbowtied.com/docs/" target="_blank">Online Documentation</a>. From the first steps of installing the theme, to creating custom pages and style the whole thing for your needs, the documentation will provide you with the help you need to get started with your new theme.</p>";}', 'yes'),
(256, '_transient_twentyfourteen_category_count', '1', 'yes'),
(246, '_wc_session_1', 'a:23:{s:23:"available_methods_count";i:1;s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:417:"a:14:{s:7:"country";s:2:"FR";s:5:"state";s:0:"";s:8:"postcode";s:5:"75012";s:4:"city";s:5:"paris";s:7:"address";s:10:"admin test";s:9:"address_2";s:0:"";s:16:"shipping_country";s:2:"FR";s:14:"shipping_state";s:0:"";s:17:"shipping_postcode";s:5:"75012";s:13:"shipping_city";s:5:"paris";s:16:"shipping_address";s:10:"admin test";s:18:"shipping_address_2";s:0:"";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:4:"cart";s:241:"a:1:{s:32:"ad61ab143223efbc24c7d2583be69251";a:8:{s:10:"product_id";i:74;s:12:"variation_id";s:0:"";s:9:"variation";s:0:"";s:8:"quantity";i:1;s:10:"line_total";i:15;s:8:"line_tax";i:0;s:13:"line_subtotal";i:15;s:17:"line_subtotal_tax";i:0;}}";s:12:"coupon_codes";s:6:"a:0:{}";s:14:"coupon_amounts";s:6:"a:0:{}";s:14:"shipping_label";N;s:19:"cart_contents_total";i:15;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:17:"cart_contents_tax";i:0;s:5:"total";s:5:"15.00";s:8:"subtotal";i:15;s:15:"subtotal_ex_tax";i:15;s:9:"tax_total";i:0;s:14:"shipping_taxes";s:6:"a:0:{}";s:5:"taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:14:"discount_total";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:6:"errors";N;s:8:"messages";N;}', 'no'),
(247, '_wc_session_expires_1', '1390397680', 'no'),
(253, 'woocommerce_errors', '', 'yes'),
(250, 'atcf_installed', '1', 'yes'),
(301, 'The Retailer_options', 'a:49:{s:9:"gb_layout";s:10:"fullscreen";s:18:"boxed_layout_width";s:4:"1100";s:13:"favicon_image";s:0:"";s:14:"favicon_retina";s:0:"";s:34:"revolution_slider_in_mobile_phones";i:0;s:13:"page_comments";i:0;s:21:"light_footer_all_site";i:0;s:20:"dark_footer_all_site";i:0;s:12:"catalog_mode";i:0;s:15:"sidebar_listing";i:0;s:12:"flip_product";i:0;s:20:"flip_product_mobiles";i:0;s:16:"category_listing";i:0;s:17:"products_per_page";s:2:"12";s:12:"introduction";s:58:"<h4 class="theretailer_theme_options_subheader">Icons</h4>";s:20:"registration_content";s:136:"<h3>Your text here</h3>\r\n<ul>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n</ul>";s:13:"login_content";s:136:"<h3>Your text here</h3>\r\n<ul>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n<li>Your text here</li>\r\n</ul>";s:11:"hide_topbar";i:0;s:11:"topbar_text";s:34:"Define this text in Theme Options.";s:23:"menu_header_top_padding";a:1:{s:4:"size";s:4:"30px";}s:26:"menu_header_bottom_padding";a:1:{s:4:"size";s:4:"30px";}s:12:"footer_logos";s:0:"";s:14:"copyright_text";s:34:"Define this text in Theme Options.";s:9:"site_logo";s:0:"";s:13:"main_bg_color";s:4:"#fff";s:7:"main_bg";s:0:"";s:12:"accent_color";s:7:"#b39964";s:13:"primary_color";s:4:"#000";s:15:"header_bg_color";s:7:"#f4f4f4";s:18:"primary_menu_color";s:4:"#000";s:20:"secondary_menu_color";s:4:"#777";s:23:"primary_footer_bg_color";s:7:"#f4f4f4";s:25:"secondary_footer_bg_color";s:4:"#000";s:22:"secondary_footer_color";s:4:"#fff";s:29:"secondary_footer_title_border";a:3:{s:5:"width";s:1:"2";s:5:"style";s:5:"solid";s:5:"color";s:7:"#3d3d3d";}s:30:"secondary_footer_borders_color";s:7:"#3d3d3d";s:22:"copyright_bar_bg_color";s:4:"#000";s:24:"copyright_bar_top_border";a:3:{s:5:"width";s:1:"2";s:5:"style";s:5:"solid";s:5:"color";s:7:"#3d3d3d";}s:20:"copyright_text_color";s:7:"#a8a8a8";s:19:"icons_sprite_normal";s:0:"";s:19:"icons_sprite_retina";s:0:"";s:12:"gb_main_font";s:4:"Arvo";s:17:"gb_secondary_font";s:4:"Lato";s:10:"custom_css";s:33:".add-your-own-classes-here {\r\n\r\n}";s:16:"custom_js_header";s:75:"<script type="text/javascript">\r\n					\r\n//JavaScript goes here\r\n\r\n</script>";s:16:"custom_js_footer";s:75:"<script type="text/javascript">\r\n					\r\n//JavaScript goes here\r\n\r\n</script>";s:9:"of_backup";s:0:"";s:11:"of_transfer";s:0:"";s:8:"doc_info";s:367:"<p class="theretailer_theme_options_info_paragraph">Checkout our <a href="http://theretailer.getbowtied.com/docs/" target="_blank">Online Documentation</a>. From the first steps of installing the theme, to creating custom pages and style the whole thing for your needs, the documentation will provide you with the help you need to get started with your new theme.</p>";}', 'yes'),
(261, 'current_theme', 'The Retailer', 'yes'),
(262, 'theme_mods_theretailer', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:7:"primary";i:13;s:5:"tools";i:0;s:9:"secondary";i:0;s:10:"my_account";i:0;}}', 'yes'),
(263, 'theme_switched', '', 'yes'),
(300, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1390227964;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(265, 'wpcf7', 'a:1:{s:7:"version";s:3:"3.6";}', 'yes'),
(266, 'woosidebars-version', '1.2.2', 'yes'),
(269, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(268, 'mc_interest_groups', 'a:0:{}', 'yes'),
(309, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(275, 'product_cat_children', 'a:0:{}', 'yes'),
(276, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(329, '_transient_wc_average_rating_45', '', 'yes'),
(464, '_wc_session_expires_fGSPD2iVCKgZDbRF3W2olEd3Z7gBGzNd', '1390506209', 'no'),
(389, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1390392041;s:7:"checked";a:14:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"3.6";s:41:"envato-wordpress-toolkit-master/index.php";s:3:"1.4";s:9:"hello.php";s:3:"1.6";s:23:"mailchimp/mailchimp.php";s:5:"1.4.1";s:83:"previous-and-next-post-in-same-taxonomy/previous-and-next-post-in-same-taxonomy.php";s:3:"1.0";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"2.2.4";s:23:"revslider/revslider.php";s:5:"2.3.3";s:37:"simple-wp-retina/simple-wp-retina.php";s:5:"1.1.1";s:27:"woocommerce/woocommerce.php";s:6:"2.0.20";s:42:"woosponsorship/woocommerce-sponsorship.php";s:3:"1.0";s:45:"woocommerce-gateway-stripe/gateway-stripe.php";s:5:"1.5.1";s:27:"woosidebars/woosidebars.php";s:5:"1.3.1";s:39:"woothemes-updater/woothemes-updater.php";s:5:"1.2.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(390, 'woothemes-updater-version', '1.2.2', 'yes'),
(303, 'widget_woocommerce_random_products', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:15:"show_variations";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(328, '_transient_wc_rating_count_45', '0', 'yes'),
(316, '_transient_wc_rating_count_17', '1', 'yes'),
(317, '_transient_wc_average_rating_17', '5.00', 'yes'),
(330, '_wc_session_3tB6U3peNlNwBW5rMLvemxk16iLDvdPY', 'a:6:{s:6:"errors";N;s:22:"chosen_shipping_method";s:13:"free_shipping";s:23:"available_methods_count";i:1;s:8:"messages";N;s:21:"chosen_payment_method";s:4:"bacs";s:8:"customer";s:445:"a:14:{s:7:"country";s:2:"FR";s:5:"state";s:0:"";s:8:"postcode";s:5:"75012";s:4:"city";s:5:"Paris";s:7:"address";s:17:"27 rue saint-jack";s:9:"address_2";s:7:"porte 5";s:16:"shipping_country";s:2:"FR";s:14:"shipping_state";s:0:"";s:17:"shipping_postcode";s:5:"75012";s:13:"shipping_city";s:5:"Paris";s:16:"shipping_address";s:17:"27 rue saint-jack";s:18:"shipping_address_2";s:7:"porte 5";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(331, '_wc_session_expires_3tB6U3peNlNwBW5rMLvemxk16iLDvdPY', '1390402005', 'no'),
(385, 'theme_mods_flatsome', 'a:83:{i:0;b:0;s:12:"social_icons";a:5:{s:8:"facebook";b:1;s:7:"twitter";b:1;s:5:"email";b:1;s:9:"pinterest";b:1;s:10:"googleplus";b:1;}s:7:"backups";N;s:9:"smof_init";s:31:"Mon, 20 Jan 2014 16:06:44 +0000";s:9:"site_logo";s:0:"";s:12:"site_favicon";s:0:"";s:18:"site_favicon_large";s:0:"";s:16:"custom_cart_icon";s:0:"";s:11:"body_layout";s:10:"full-width";s:7:"body_bg";s:0:"";s:13:"body_bg_image";s:0:"";s:12:"body_bg_type";s:0:"";s:13:"content_color";s:5:"light";s:10:"content_bg";s:4:"#FFF";s:13:"header_height";s:3:"120";s:10:"logo_width";s:3:"210";s:13:"logo_position";s:4:"left";s:10:"search_pos";s:4:"left";s:18:"myaccount_dropdown";i:1;s:13:"header_sticky";i:1;s:20:"header_height_sticky";s:2:"70";s:12:"header_color";s:5:"light";s:9:"header_bg";s:4:"#fff";s:13:"header_bg_img";s:0:"";s:17:"header_bg_img_pos";s:8:"repeat-x";s:11:"topbar_show";i:1;s:9:"topbar_bg";s:0:"";s:11:"topbar_left";s:42:"Add anything here here or just remove it..";s:12:"nav_position";s:3:"top";s:15:"nav_position_bg";s:4:"#eee";s:18:"nav_position_color";s:5:"light";s:17:"nav_position_text";s:26:"Add shortcode or text here";s:21:"nav_position_text_top";s:26:"Add shortcode or text here";s:16:"footer_left_text";s:89:"Copyright 2013 &copy; <strong>UX Themes</strong>. Powered by <strong>WooCommerce</strong>";s:17:"footer_right_text";s:0:"";s:14:"footer_1_color";s:5:"light";s:17:"footer_1_bg_color";s:4:"#fff";s:14:"footer_2_color";s:4:"dark";s:17:"footer_2_bg_color";s:4:"#777";s:19:"footer_bottom_style";s:4:"dark";s:19:"footer_bottom_color";s:4:"#333";s:13:"disable_fonts";i:0;s:13:"type_headings";s:4:"Lato";s:10:"type_texts";s:4:"Lato";s:8:"type_nav";s:4:"Lato";s:8:"type_alt";s:14:"Dancing Script";s:13:"color_primary";s:7:"#627f9a";s:15:"color_secondary";s:7:"#d26e4b";s:13:"color_success";s:7:"#7a9c59";s:11:"color_links";s:0:"";s:14:"color_checkout";s:0:"";s:10:"color_sale";s:0:"";s:12:"color_review";s:0:"";s:13:"button_radius";s:3:"0px";s:18:"cart_dropdown_show";i:1;s:16:"shop_aside_title";s:17:"complete the look";s:15:"product_sidebar";s:10:"no_sidebar";s:15:"product_display";s:4:"tabs";s:9:"tab_title";s:0:"";s:11:"tab_content";s:0:"";s:16:"category_sidebar";s:12:"left-sidebar";s:15:"breadcrumb_size";s:17:"breadcrumb-normal";s:15:"breadcrumb_home";i:1;s:18:"category_row_count";s:1:"3";s:16:"products_pr_page";s:2:"12";s:13:"search_result";i:0;s:11:"blog_layout";s:13:"right-sidebar";s:15:"blog_author_box";i:1;s:11:"blog_header";s:1:" ";s:10:"blog_share";i:0;s:19:"html_scripts_footer";s:1:" ";s:15:"html_custom_css";s:6:"div {}";s:17:"html_after_header";s:1:" ";s:18:"html_before_footer";s:1:" ";s:17:"html_after_footer";s:1:" ";s:12:"catalog_mode";i:0;s:19:"catalog_mode_prices";i:0;s:19:"catalog_mode_header";s:0:"";s:20:"catalog_mode_product";s:0:"";s:21:"catalog_mode_lightbox";s:0:"";s:14:"facebook_login";i:0;s:17:"facebook_login_bg";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1390234064;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:27:"sponsorship_project_sidebar";a:2:{i:0;s:8:"search-2";i:1;s:29:"woocommerce_random_products-2";}s:12:"sidebar-main";a:0:{}s:12:"shop-sidebar";a:0:{}s:15:"product-sidebar";a:0:{}s:16:"sidebar-footer-1";N;s:16:"sidebar-footer-2";N;}}}', 'yes'),
(454, '_transient_wc_uf_pid_98445f98e21fece4c092bccf3dc7ac25', 'a:3:{i:0;s:2:"71";i:1;s:2:"45";i:2;s:2:"17";}', 'yes'),
(463, '_wc_session_fGSPD2iVCKgZDbRF3W2olEd3Z7gBGzNd', 'a:5:{s:14:"shipping_label";N;s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:417:"a:14:{s:7:"country";s:2:"FR";s:5:"state";s:0:"";s:8:"postcode";s:5:"75012";s:4:"city";s:5:"paris";s:7:"address";s:10:"admin test";s:9:"address_2";s:0:"";s:16:"shipping_country";s:2:"FR";s:14:"shipping_state";s:0:"";s:17:"shipping_postcode";s:5:"75012";s:13:"shipping_city";s:5:"paris";s:16:"shipping_address";s:10:"admin test";s:18:"shipping_address_2";s:0:"";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:6:"errors";N;s:8:"messages";N;}', 'no'),
(446, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(449, '_transient_wc_rating_count_71', '0', 'yes'),
(450, '_transient_wc_average_rating_71', '', 'yes'),
(453, '_transient_wc_uf_pid_30d3b1b78f2bfdbccb25fa26a31c24e5', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=391 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 17, '_edit_last', '1'),
(3, 17, '_edit_lock', '1390228470:1'),
(147, 42, '_wp_attachment_image_alt', 'Oncle Picsou : la terre regorge de trésors'),
(148, 42, '_edit_last', '1'),
(149, 17, '_thumbnail_id', '42'),
(181, 46, '_edit_lock', '1390229000:1'),
(146, 42, '_edit_lock', '1390228503:1'),
(7, 17, '_visibility', 'visible'),
(8, 17, '_stock_status', 'instock'),
(9, 17, 'total_sales', '0'),
(10, 17, '_downloadable', 'no'),
(11, 17, '_virtual', 'no'),
(12, 17, '_product_image_gallery', '18'),
(13, 17, '_regular_price', '20'),
(14, 17, '_sale_price', '15'),
(15, 17, '_purchase_note', ''),
(16, 17, '_featured', 'no'),
(17, 17, '_weight', ''),
(18, 17, '_length', ''),
(19, 17, '_width', ''),
(20, 17, '_height', ''),
(21, 17, '_sku', ''),
(22, 17, '_product_attributes', 'a:0:{}'),
(23, 17, '_sale_price_dates_from', ''),
(24, 17, '_sale_price_dates_to', ''),
(25, 17, '_price', '15'),
(26, 17, '_sold_individually', ''),
(27, 17, '_stock', ''),
(28, 17, '_backorders', 'no'),
(29, 17, '_manage_stock', 'no'),
(30, 25, '_form', '<p>Votre nom (obligatoire)<br />\n    [text* your-name] </p>\n\n<p>Votre email (obligatoire)<br />\n    [email* your-email] </p>\n\n<p>Sujet<br />\n    [text your-subject] </p>\n\n<p>Votre message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Envoyer"]</p>'),
(31, 25, '_mail', 'a:7:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:181:"De : [your-name] <[your-email]>\nSujet : [your-subject]\n\nCorps du message :\n[your-message]\n\n--\nCe email a été envoyé via formulaire de contact le La bullerie http://localhost/ecom";s:9:"recipient";s:21:"labullerie6@gmail.com";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";i:0;}'),
(32, 25, '_mail_2', 'a:8:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:125:"Corps du message :\n[your-message]\n\n--\nCe email a été envoyé via formulaire de contact le La bullerie http://localhost/ecom";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";i:0;}'),
(33, 25, '_messages', 'a:7:{s:12:"mail_sent_ok";s:42:"Votre message a bien été envoyé. Merci.";s:12:"mail_sent_ng";s:116:"Erreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.";s:16:"validation_error";s:76:"Erreur de validation. Veuillez vérifier les champs et soumettre à nouveau.";s:4:"spam";s:116:"Erreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.";s:12:"accept_terms";s:61:"Merci de bien vouloir accepter les conditions pour continuer.";s:13:"invalid_email";s:32:"L''adresse email semble invalide.";s:16:"invalid_required";s:38:"Veuillez remplir le champ obligatoire.";}'),
(34, 25, '_additional_settings', ''),
(35, 2, '_wp_trash_meta_status', 'publish'),
(36, 2, '_wp_trash_meta_time', '1390225718'),
(37, 27, '_menu_item_type', 'post_type'),
(38, 27, '_menu_item_menu_item_parent', '0'),
(39, 27, '_menu_item_object_id', '7'),
(40, 27, '_menu_item_object', 'page'),
(41, 27, '_menu_item_target', ''),
(42, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 27, '_menu_item_xfn', ''),
(44, 27, '_menu_item_url', ''),
(145, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:34:"2014/01/OnclePicsou76_04032007.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent_posts_shortcode";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-190x190.jpg";s:5:"width";i:190;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_4_col";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-220x165.jpg";s:5:"width";i:220;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_3_col";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_2_col";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-460x345.jpg";s:5:"width";i:460;s:6:"height";i:345;s:9:"mime-type";s:10:"image/jpeg";}s:12:"thumbnail@2x";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"recent_posts_shortcode@2x";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-380x380.jpg";s:5:"width";i:380;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_4_col@2x";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-440x330.jpg";s:5:"width";i:440;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_3_col@2x";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"OnclePicsou76_04032007-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:34:"OnclePicsou76_04032007-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(46, 28, '_menu_item_type', 'post_type'),
(47, 28, '_menu_item_menu_item_parent', '0'),
(48, 28, '_menu_item_object_id', '12'),
(49, 28, '_menu_item_object', 'page'),
(50, 28, '_menu_item_target', ''),
(51, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 28, '_menu_item_xfn', ''),
(53, 28, '_menu_item_url', ''),
(55, 29, '_menu_item_type', 'post_type'),
(56, 29, '_menu_item_menu_item_parent', '27'),
(57, 29, '_menu_item_object_id', '11'),
(58, 29, '_menu_item_object', 'page'),
(59, 29, '_menu_item_target', ''),
(60, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 29, '_menu_item_xfn', ''),
(62, 29, '_menu_item_url', ''),
(73, 31, '_menu_item_type', 'post_type'),
(74, 31, '_menu_item_menu_item_parent', '27'),
(75, 31, '_menu_item_object_id', '9'),
(76, 31, '_menu_item_object', 'page'),
(77, 31, '_menu_item_target', ''),
(78, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 31, '_menu_item_xfn', ''),
(80, 31, '_menu_item_url', ''),
(180, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:787;s:6:"height";i:787;s:4:"file";s:26:"2014/01/tintin_licorne.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"tintin_licorne-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"tintin_licorne-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent_posts_shortcode";a:4:{s:4:"file";s:26:"tintin_licorne-190x190.jpg";s:5:"width";i:190;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_4_col";a:4:{s:4:"file";s:26:"tintin_licorne-220x165.jpg";s:5:"width";i:220;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_3_col";a:4:{s:4:"file";s:26:"tintin_licorne-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_2_col";a:4:{s:4:"file";s:26:"tintin_licorne-460x345.jpg";s:5:"width";i:460;s:6:"height";i:345;s:9:"mime-type";s:10:"image/jpeg";}s:12:"thumbnail@2x";a:4:{s:4:"file";s:26:"tintin_licorne-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"medium@2x";a:4:{s:4:"file";s:26:"tintin_licorne-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:25:"recent_posts_shortcode@2x";a:4:{s:4:"file";s:26:"tintin_licorne-380x380.jpg";s:5:"width";i:380;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_4_col@2x";a:4:{s:4:"file";s:26:"tintin_licorne-440x330.jpg";s:5:"width";i:440;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_3_col@2x";a:4:{s:4:"file";s:26:"tintin_licorne-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_2_col@2x";a:4:{s:4:"file";s:26:"tintin_licorne-787x690.jpg";s:5:"width";i:787;s:6:"height";i:690;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"tintin_licorne-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"tintin_licorne-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"tintin_licorne-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(179, 46, '_wp_attached_file', '2014/01/tintin_licorne.jpg'),
(153, 45, '_edit_last', '1'),
(154, 45, '_edit_lock', '1390229237:1'),
(228, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:350;s:4:"file";s:19:"2014/01/slider1.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slider1-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent_posts_shortcode";a:4:{s:4:"file";s:19:"slider1-190x190.jpg";s:5:"width";i:190;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_4_col";a:4:{s:4:"file";s:19:"slider1-220x165.jpg";s:5:"width";i:220;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_3_col";a:4:{s:4:"file";s:19:"slider1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_2_col";a:4:{s:4:"file";s:19:"slider1-460x345.jpg";s:5:"width";i:460;s:6:"height";i:345;s:9:"mime-type";s:10:"image/jpeg";}s:12:"thumbnail@2x";a:4:{s:4:"file";s:19:"slider1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"medium@2x";a:4:{s:4:"file";s:19:"slider1-600x218.jpg";s:5:"width";i:600;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:25:"recent_posts_shortcode@2x";a:4:{s:4:"file";s:19:"slider1-380x350.jpg";s:5:"width";i:380;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_4_col@2x";a:4:{s:4:"file";s:19:"slider1-440x330.jpg";s:5:"width";i:440;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_3_col@2x";a:4:{s:4:"file";s:19:"slider1-600x350.jpg";s:5:"width";i:600;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_2_col@2x";a:4:{s:4:"file";s:19:"slider1-920x350.jpg";s:5:"width";i:920;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"slider1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"slider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"slider1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(226, 48, '_edit_lock', '1390399290:1'),
(227, 60, '_wp_attached_file', '2014/01/slider1.jpg'),
(225, 48, '_wp_page_template', 'page-full.php'),
(224, 48, '_edit_last', '1'),
(182, 46, '_wp_attachment_image_alt', 'Tintin : le secret de la Licorne'),
(156, 45, '_visibility', 'visible'),
(157, 45, '_stock_status', 'instock'),
(158, 45, 'total_sales', '1'),
(144, 42, '_wp_attached_file', '2014/01/OnclePicsou76_04032007.jpg'),
(127, 37, '_menu_item_type', 'post_type'),
(128, 37, '_menu_item_menu_item_parent', '0'),
(129, 37, '_menu_item_object_id', '4'),
(130, 37, '_menu_item_object', 'page'),
(131, 37, '_menu_item_target', ''),
(132, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 37, '_menu_item_xfn', ''),
(134, 37, '_menu_item_url', ''),
(159, 45, '_downloadable', 'no'),
(160, 45, '_virtual', 'no'),
(161, 45, '_product_image_gallery', ''),
(162, 45, '_regular_price', '17'),
(163, 45, '_sale_price', '17'),
(164, 45, '_purchase_note', ''),
(165, 45, '_featured', 'no'),
(166, 45, '_weight', ''),
(167, 45, '_length', ''),
(168, 45, '_width', ''),
(169, 45, '_height', ''),
(170, 45, '_sku', ''),
(171, 45, '_product_attributes', 'a:0:{}'),
(172, 45, '_sale_price_dates_from', ''),
(173, 45, '_sale_price_dates_to', ''),
(174, 45, '_price', '17'),
(175, 45, '_sold_individually', ''),
(176, 45, '_stock', ''),
(177, 45, '_backorders', 'no'),
(178, 45, '_manage_stock', 'no'),
(183, 46, '_edit_last', '1'),
(184, 45, '_thumbnail_id', '46'),
(185, 47, '_billing_country', 'FR'),
(186, 47, '_billing_first_name', 'Jack'),
(187, 47, '_billing_last_name', 'Smith'),
(188, 47, '_billing_company', ''),
(189, 47, '_billing_address_1', '27 rue saint-jack'),
(190, 47, '_billing_address_2', 'porte 5'),
(191, 47, '_billing_postcode', '75012'),
(192, 47, '_billing_city', 'Paris'),
(193, 47, '_billing_state', ''),
(194, 47, '_billing_email', 'jack@gmail.com'),
(195, 47, '_billing_phone', '0604050301'),
(196, 47, '_shipping_country', 'FR'),
(197, 47, '_shipping_first_name', 'Jack'),
(198, 47, '_shipping_last_name', 'Smith'),
(199, 47, '_shipping_company', ''),
(200, 47, '_shipping_address_1', '27 rue saint-jack'),
(201, 47, '_shipping_address_2', 'porte 5'),
(202, 47, '_shipping_postcode', '75012'),
(203, 47, '_shipping_city', 'Paris'),
(204, 47, '_shipping_state', ''),
(205, 47, '_shipping_method', 'free_shipping'),
(206, 47, '_shipping_method_title', 'Livraison Gratuite'),
(207, 47, '_payment_method', 'bacs'),
(208, 47, '_payment_method_title', 'Virement Bancaire'),
(209, 47, '_order_shipping', '0.00'),
(210, 47, '_order_discount', '0.00'),
(211, 47, '_cart_discount', '0.00'),
(212, 47, '_order_tax', '0'),
(213, 47, '_order_shipping_tax', '0'),
(214, 47, '_order_total', '17.00'),
(215, 47, '_order_key', 'order_52dd372fd5fb4'),
(216, 47, '_customer_user', '0'),
(217, 47, '_order_currency', 'EUR'),
(218, 47, '_prices_include_tax', 'no'),
(219, 47, '_customer_ip_address', '127.0.0.1'),
(220, 47, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36'),
(221, 47, '_recorded_sales', 'yes'),
(222, 47, '_recorded_coupon_usage_counts', 'yes'),
(223, 47, '_edit_lock', '1390229370:1'),
(229, 61, '_wp_attached_file', '2014/01/slider2.jpg'),
(230, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:350;s:4:"file";s:19:"2014/01/slider2.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slider2-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent_posts_shortcode";a:4:{s:4:"file";s:19:"slider2-190x190.jpg";s:5:"width";i:190;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_4_col";a:4:{s:4:"file";s:19:"slider2-220x165.jpg";s:5:"width";i:220;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_3_col";a:4:{s:4:"file";s:19:"slider2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio_2_col";a:4:{s:4:"file";s:19:"slider2-460x345.jpg";s:5:"width";i:460;s:6:"height";i:345;s:9:"mime-type";s:10:"image/jpeg";}s:12:"thumbnail@2x";a:4:{s:4:"file";s:19:"slider2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"medium@2x";a:4:{s:4:"file";s:19:"slider2-600x218.jpg";s:5:"width";i:600;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:25:"recent_posts_shortcode@2x";a:4:{s:4:"file";s:19:"slider2-380x350.jpg";s:5:"width";i:380;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_4_col@2x";a:4:{s:4:"file";s:19:"slider2-440x330.jpg";s:5:"width";i:440;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_3_col@2x";a:4:{s:4:"file";s:19:"slider2-600x350.jpg";s:5:"width";i:600;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:18:"portfolio_2_col@2x";a:4:{s:4:"file";s:19:"slider2-920x350.jpg";s:5:"width";i:920;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"slider2-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"slider2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1323425845;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:8:"SONY DSC";}}'),
(231, 71, '_edit_last', '1'),
(232, 71, '_visibility', 'visible'),
(234, 71, 'total_sales', '0'),
(235, 71, '_downloadable', 'no'),
(236, 71, '_virtual', 'yes'),
(237, 71, '_product_image_gallery', ''),
(238, 71, '_regular_price', ''),
(239, 71, '_sale_price', ''),
(240, 71, '_purchase_note', ''),
(241, 71, '_featured', 'no'),
(242, 71, '_weight', ''),
(243, 71, '_length', ''),
(244, 71, '_width', ''),
(245, 71, '_height', ''),
(246, 71, '_sku', ''),
(247, 71, '_product_attributes', 'a:0:{}'),
(248, 71, '_sale_price_dates_from', ''),
(249, 71, '_sale_price_dates_to', ''),
(250, 71, '_price', '10.00'),
(251, 71, '_sold_individually', ''),
(252, 71, '_stock', '100'),
(253, 71, '_backorders', 'no'),
(254, 71, '_manage_stock', 'no'),
(255, 71, '_sponsorship', 'a:3:{s:4:"goal";s:3:"500";s:3:"end";a:1:{s:4:"date";s:10:"03/21/2014";}s:8:"progress";s:2:"55";}'),
(256, 72, '_price', '10.00'),
(257, 72, '_stock', '0'),
(258, 72, '_virtual', 'yes'),
(259, 72, '_downloadable', 'no'),
(266, 72, '_visibility', 'visible'),
(260, 71, '_min_variation_price', '10.00'),
(261, 71, '_max_variation_price', '15'),
(262, 71, '_edit_lock', '1390392325:1'),
(263, 73, '_wp_attached_file', '2014/01/oekaki_33547_0.png'),
(264, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:26:"2014/01/oekaki_33547_0.png";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"oekaki_33547_0-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"oekaki_33547_0-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:22:"recent_posts_shortcode";a:4:{s:4:"file";s:26:"oekaki_33547_0-190x190.png";s:5:"width";i:190;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}s:15:"portfolio_4_col";a:4:{s:4:"file";s:26:"oekaki_33547_0-220x165.png";s:5:"width";i:220;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:15:"portfolio_3_col";a:4:{s:4:"file";s:26:"oekaki_33547_0-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:15:"portfolio_2_col";a:4:{s:4:"file";s:26:"oekaki_33547_0-460x345.png";s:5:"width";i:460;s:6:"height";i:345;s:9:"mime-type";s:9:"image/png";}s:12:"thumbnail@2x";a:4:{s:4:"file";s:26:"oekaki_33547_0-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:25:"recent_posts_shortcode@2x";a:4:{s:4:"file";s:26:"oekaki_33547_0-380x380.png";s:5:"width";i:380;s:6:"height";i:380;s:9:"mime-type";s:9:"image/png";}s:18:"portfolio_4_col@2x";a:4:{s:4:"file";s:26:"oekaki_33547_0-440x330.png";s:5:"width";i:440;s:6:"height";i:330;s:9:"mime-type";s:9:"image/png";}s:18:"portfolio_3_col@2x";a:4:{s:4:"file";s:26:"oekaki_33547_0-500x450.png";s:5:"width";i:500;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"oekaki_33547_0-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"oekaki_33547_0-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:26:"oekaki_33547_0-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(265, 71, '_thumbnail_id', '73'),
(267, 72, '_stock_status', ''),
(268, 74, '_price', '15'),
(306, 77, '_billing_first_name', 'Admin'),
(270, 74, '_virtual', 'yes'),
(271, 74, '_downloadable', 'no'),
(272, 74, '_visibility', 'visible'),
(307, 77, '_billing_last_name', 'test'),
(274, 72, '_regular_price', '10.00'),
(275, 74, '_regular_price', '15'),
(276, 76, '_billing_country', 'FR'),
(277, 76, '_billing_first_name', 'Admin'),
(278, 76, '_billing_last_name', 'test'),
(279, 76, '_billing_company', ''),
(280, 76, '_billing_address_1', 'admin test'),
(281, 76, '_billing_address_2', ''),
(282, 76, '_billing_postcode', '75012'),
(283, 76, '_billing_city', 'paris'),
(284, 76, '_billing_state', ''),
(285, 76, '_billing_email', 'labullerie6@gmail.com'),
(286, 76, '_billing_phone', '0102030405'),
(287, 76, '_payment_method', 'cheque'),
(288, 76, '_payment_method_title', 'Paiement par Chèque'),
(289, 76, '_order_shipping', '0.00'),
(290, 76, '_order_discount', '0.00'),
(291, 76, '_cart_discount', '0.00'),
(292, 76, '_order_tax', '0'),
(293, 76, '_order_shipping_tax', '0'),
(294, 76, '_order_total', '15.00'),
(295, 76, '_order_key', 'order_52dea0f648cea'),
(296, 76, '_customer_user', '1'),
(297, 76, '_order_currency', 'EUR'),
(298, 76, '_prices_include_tax', 'no'),
(299, 76, '_customer_ip_address', '127.0.0.1'),
(300, 76, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36'),
(301, 76, '_sponsorship_project', '71'),
(302, 74, 'total_sales', '3'),
(303, 76, '_recorded_sales', 'yes'),
(304, 76, '_recorded_coupon_usage_counts', 'yes'),
(305, 77, '_billing_country', 'FR'),
(308, 77, '_billing_company', ''),
(309, 77, '_billing_address_1', 'admin test'),
(310, 77, '_billing_address_2', ''),
(311, 77, '_billing_postcode', '75012'),
(312, 77, '_billing_city', 'paris'),
(313, 77, '_billing_state', ''),
(314, 77, '_billing_email', 'labullerie6@gmail.com'),
(315, 77, '_billing_phone', '0102030405'),
(316, 77, '_payment_method', 'cheque'),
(317, 77, '_payment_method_title', 'Paiement par Chèque'),
(318, 77, '_order_shipping', '0.00'),
(319, 77, '_order_discount', '0.00'),
(320, 77, '_cart_discount', '0.00'),
(321, 77, '_order_tax', '0'),
(322, 77, '_order_shipping_tax', '0'),
(323, 77, '_order_total', '10.00'),
(324, 77, '_order_key', 'order_52dea40b0b775'),
(325, 77, '_customer_user', '1'),
(326, 77, '_order_currency', 'EUR'),
(327, 77, '_prices_include_tax', 'no'),
(328, 77, '_customer_ip_address', '127.0.0.1'),
(329, 77, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36'),
(330, 77, '_sponsorship_project', '71'),
(331, 72, 'total_sales', '1'),
(332, 77, '_recorded_sales', 'yes'),
(333, 77, '_recorded_coupon_usage_counts', 'yes'),
(335, 78, '_billing_country', 'FR'),
(336, 78, '_billing_first_name', 'Admin'),
(337, 78, '_billing_last_name', 'test'),
(338, 78, '_billing_company', ''),
(339, 78, '_billing_address_1', 'admin test'),
(340, 78, '_billing_address_2', ''),
(341, 78, '_billing_postcode', '75012'),
(342, 78, '_billing_city', 'paris'),
(343, 78, '_billing_state', ''),
(344, 78, '_billing_email', 'labullerie6@gmail.com'),
(345, 78, '_billing_phone', '0102030405'),
(346, 78, '_payment_method', 'cheque'),
(347, 78, '_payment_method_title', 'Paiement par Chèque'),
(348, 78, '_order_shipping', '0.00'),
(349, 78, '_order_discount', '0.00'),
(350, 78, '_cart_discount', '0.00'),
(351, 78, '_order_tax', '0'),
(352, 78, '_order_shipping_tax', '0'),
(353, 78, '_order_total', '15.00'),
(354, 78, '_order_key', 'order_52dea49a7a818'),
(355, 78, '_customer_user', '1'),
(356, 78, '_order_currency', 'EUR'),
(357, 78, '_prices_include_tax', 'no'),
(358, 78, '_customer_ip_address', '127.0.0.1'),
(359, 78, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36'),
(360, 78, '_sponsorship_project', '71'),
(361, 78, '_recorded_sales', 'yes'),
(362, 78, '_recorded_coupon_usage_counts', 'yes'),
(363, 79, '_billing_country', 'FR'),
(364, 79, '_billing_first_name', 'Admin'),
(365, 79, '_billing_last_name', 'test'),
(366, 79, '_billing_company', ''),
(367, 79, '_billing_address_1', 'admin test'),
(368, 79, '_billing_address_2', ''),
(369, 79, '_billing_postcode', '75012'),
(370, 79, '_billing_city', 'paris'),
(371, 79, '_billing_state', ''),
(372, 79, '_billing_email', 'labullerie6@gmail.com'),
(373, 79, '_billing_phone', '0102030405'),
(374, 79, '_payment_method', 'cheque'),
(375, 79, '_payment_method_title', 'Paiement par Chèque'),
(376, 79, '_order_shipping', '0.00'),
(377, 79, '_order_discount', '0.00'),
(378, 79, '_cart_discount', '0.00'),
(379, 79, '_order_tax', '0'),
(380, 79, '_order_shipping_tax', '0'),
(381, 79, '_order_total', '15.00'),
(382, 79, '_order_key', 'order_52dfb35b4dac3'),
(383, 79, '_customer_user', '1'),
(384, 79, '_order_currency', 'EUR'),
(385, 79, '_prices_include_tax', 'no'),
(386, 79, '_customer_ip_address', '127.0.0.1'),
(387, 79, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36'),
(388, 79, '_sponsorship_project', '71'),
(389, 79, '_recorded_sales', 'yes'),
(390, 79, '_recorded_coupon_usage_counts', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-01-20 13:23:31', '2014-01-20 13:23:31', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2014-01-20 13:23:31', '2014-01-20 13:23:31', '', 0, 'http://localhost/ecom/?p=1', 0, 'post', '', 1),
(2, 1, '2014-01-20 13:23:31', '2014-01-20 13:23:31', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/ecom/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2014-01-20 14:48:38', '2014-01-20 13:48:38', '', 0, 'http://localhost/ecom/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-01-20 14:23:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-01-20 14:23:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?p=3', 0, 'post', '', 0),
(4, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 'Boutique', '', 'publish', 'closed', 'open', '', 'boutique', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 0, 'http://localhost/ecom/?page_id=4', 0, 'page', '', 0),
(5, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_cart]', 'Panier', '', 'publish', 'closed', 'open', '', 'panier', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 0, 'http://localhost/ecom/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_checkout]', 'Commande', '', 'publish', 'closed', 'open', '', 'commande', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 0, 'http://localhost/ecom/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_my_account]', 'Mon Compte', '', 'publish', 'closed', 'open', '', 'mon-compte', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 0, 'http://localhost/ecom/?page_id=7', 0, 'page', '', 0),
(8, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_lost_password]', 'Mot de passe perdu', '', 'publish', 'closed', 'open', '', 'lost-password', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 7, 'http://localhost/ecom/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_edit_address]', 'Modifier mon adresse', '', 'publish', 'closed', 'open', '', 'modification-adresse', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 7, 'http://localhost/ecom/?page_id=9', 0, 'page', '', 0),
(10, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_view_order]', 'Voir la commande', '', 'publish', 'closed', 'open', '', 'voir-commande', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 7, 'http://localhost/ecom/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_change_password]', 'Changer de mot de passe', '', 'publish', 'closed', 'open', '', 'changer-mot-de-passe', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 7, 'http://localhost/ecom/?page_id=11', 0, 'page', '', 0),
(12, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 'Déconnexion', '', 'publish', 'closed', 'open', '', 'deconnexion', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 7, 'http://localhost/ecom/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_pay]', 'Commande &rarr; Paiement', '', 'publish', 'closed', 'open', '', 'payer', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 6, 'http://localhost/ecom/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-01-20 14:30:19', '2014-01-20 13:30:19', '[woocommerce_thankyou]', 'Commande reçue', '', 'publish', 'closed', 'open', '', 'commande-recue', '', '', '2014-01-20 14:30:19', '2014-01-20 13:30:19', '', 6, 'http://localhost/ecom/?page_id=14', 0, 'page', '', 0),
(15, 1, '2014-01-20 14:30:43', '2014-01-20 13:30:43', '<h1>Checkout</h1>\n\n{{mj-checkout-form}}', 'Mijireh Secure Checkout', '', 'private', 'closed', 'closed', '', 'mijireh-secure-checkout', '', '', '2014-01-20 14:30:43', '2014-01-20 13:30:43', '', 0, 'http://localhost/ecom/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-01-20 14:39:22', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-01-20 14:39:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=shop_coupon&p=16', 0, 'shop_coupon', '', 0),
(17, 1, '2014-01-20 14:42:40', '2014-01-20 13:42:40', 'BD de picsou !', 'Oncle Picsou ', 'Oncle Picsou : La terre regorge de trésors', 'publish', 'open', 'closed', '', 'oncle-picsou', '', '', '2014-01-20 15:35:29', '2014-01-20 14:35:29', '', 0, 'http://localhost/ecom/?post_type=product&#038;p=17', 0, 'product', '', 2),
(42, 1, '2014-01-20 15:34:10', '2014-01-20 14:34:10', 'Oncle Picsou : la terre regorge de trésors', 'Oncle Picsou : la terre regorge de trésors', 'Oncle Picsou : la terre regorge de trésors', 'inherit', 'open', 'open', '', 'onclepicsou76_04032007', '', '', '2014-01-20 15:34:10', '2014-01-20 14:34:10', '', 0, 'http://localhost/ecom/wp-content/uploads/2014/01/OnclePicsou76_04032007.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 'Favicon Image', '', 'draft', 'closed', 'closed', '', 'of-favicon_image', '', '', '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=options&p=19', 0, 'options', '', 0),
(20, 1, '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 'Favicon Retina', '', 'draft', 'closed', 'closed', '', 'of-favicon_retina', '', '', '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=options&p=20', 0, 'options', '', 0),
(21, 1, '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 'Footer Logos', '', 'draft', 'closed', 'closed', '', 'of-footer_logos', '', '', '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=options&p=21', 0, 'options', '', 0),
(22, 1, '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 'Site Logo', '', 'draft', 'closed', 'closed', '', 'of-site_logo', '', '', '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=options&p=22', 0, 'options', '', 0),
(23, 1, '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 'Main Bg', '', 'draft', 'closed', 'closed', '', 'of-main_bg', '', '', '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=options&p=23', 0, 'options', '', 0),
(24, 1, '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 'Icons Sprite Retina', '', 'draft', 'closed', 'closed', '', 'of-icons_sprite_retina', '', '', '2014-01-20 14:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=options&p=24', 0, 'options', '', 0),
(25, 1, '2014-01-20 14:45:57', '2014-01-20 13:45:57', '<p>Votre nom (obligatoire)<br />\n    [text* your-name] </p>\n\n<p>Votre email (obligatoire)<br />\n    [email* your-email] </p>\n\n<p>Sujet<br />\n    [text your-subject] </p>\n\n<p>Votre message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Envoyer"]</p>\n[your-subject]\n[your-name] <[your-email]>\nDe : [your-name] <[your-email]>\nSujet : [your-subject]\n\nCorps du message :\n[your-message]\n\n--\nCe email a été envoyé via formulaire de contact le La bullerie http://localhost/ecom\nlabullerie6@gmail.com\n\n\n0\n\n[your-subject]\n[your-name] <[your-email]>\nCorps du message :\n[your-message]\n\n--\nCe email a été envoyé via formulaire de contact le La bullerie http://localhost/ecom\n[your-email]\n\n\n0\nVotre message a bien été envoyé. Merci.\nErreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.\nErreur de validation. Veuillez vérifier les champs et soumettre à nouveau.\nErreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.\nMerci de bien vouloir accepter les conditions pour continuer.\nL''adresse email semble invalide.\nVeuillez remplir le champ obligatoire.', 'Formulaire de contact 1', '', 'publish', 'open', 'open', '', 'formulaire-de-contact-1', '', '', '2014-01-20 14:45:57', '2014-01-20 13:45:57', '', 0, 'http://localhost/ecom/?post_type=wpcf7_contact_form&p=25', 0, 'wpcf7_contact_form', '', 0),
(26, 1, '2014-01-20 14:48:38', '2014-01-20 13:48:38', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/ecom/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-01-20 14:48:38', '2014-01-20 13:48:38', '', 2, 'http://localhost/ecom/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-01-20 14:49:30', '2014-01-20 13:49:30', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2014-01-20 15:53:16', '2014-01-20 14:53:16', '', 0, 'http://localhost/ecom/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2014-01-20 14:49:30', '2014-01-20 13:49:30', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2014-01-20 15:53:16', '2014-01-20 14:53:16', '', 7, 'http://localhost/ecom/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2014-01-20 14:49:30', '2014-01-20 13:49:30', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2014-01-20 15:53:16', '2014-01-20 14:53:16', '', 7, 'http://localhost/ecom/?p=29', 3, 'nav_menu_item', '', 0),
(51, 1, '2014-01-20 16:00:27', '2014-01-20 15:00:27', '[woocommerce_messages]test', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:00:27', '2014-01-20 15:00:27', '', 48, 'http://localhost/ecom/?p=51', 0, 'revision', '', 0),
(31, 1, '2014-01-20 14:49:30', '2014-01-20 13:49:30', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2014-01-20 15:53:16', '2014-01-20 14:53:16', '', 7, 'http://localhost/ecom/?p=31', 4, 'nav_menu_item', '', 0),
(49, 1, '2014-01-20 15:55:31', '2014-01-20 14:55:31', '', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 15:55:31', '2014-01-20 14:55:31', '', 48, 'http://localhost/ecom/?p=49', 0, 'revision', '', 0),
(43, 1, '2014-01-20 15:37:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-01-20 15:37:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=product&p=43', 0, 'product', '', 0),
(37, 1, '2014-01-20 14:49:30', '2014-01-20 13:49:30', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2014-01-20 15:53:16', '2014-01-20 14:53:16', '', 0, 'http://localhost/ecom/?p=37', 1, 'nav_menu_item', '', 0),
(50, 1, '2014-01-20 15:58:39', '2014-01-20 14:58:39', 'test', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 15:58:39', '2014-01-20 14:58:39', '', 48, 'http://localhost/ecom/?p=50', 0, 'revision', '', 0),
(48, 1, '2014-01-20 15:55:31', '2014-01-20 14:55:31', '[rev_slider slide_test]\r\n\r\n&nbsp;\r\n\r\n<center>[recent_products per_page="12" columns="4" orderby="date" order="desc"]</center>', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-01-20 16:21:42', '2014-01-20 15:21:42', '', 0, 'http://localhost/ecom/?page_id=48', 0, 'page', '', 0),
(46, 1, '2014-01-20 15:42:41', '2014-01-20 14:42:41', 'Tintin : le secret de la Licorne', 'Tintin : le secret de la Licorne', 'Tintin : le secret de la Licorne', 'inherit', 'open', 'open', '', 'tintin_licorne', '', '', '2014-01-20 15:42:41', '2014-01-20 14:42:41', '', 0, 'http://localhost/ecom/wp-content/uploads/2014/01/tintin_licorne.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2014-01-20 15:39:58', '2014-01-20 14:39:58', 'Tintin : le secret de la Licorne', 'Tintin : le secret de la Licorne', '', 'publish', 'open', 'closed', '', 'asterix', '', '', '2014-01-20 15:44:07', '2014-01-20 14:44:07', '', 0, 'http://localhost/ecom/?post_type=product&#038;p=45', 0, 'product', '', 0),
(47, 1, '2014-01-20 15:48:15', '2014-01-20 14:48:15', '', 'Commande n&deg;Jan 20, 2014 @ 02:48 PM', '', 'publish', 'open', 'closed', 'order_52dd372fc52bd', 'commande-njan-20-2014-0248-pm', '', '', '2014-01-20 15:48:18', '2014-01-20 14:48:18', '', 0, 'http://localhost/ecom/?post_type=shop_order&#038;p=47', 0, 'shop_order', '', 2),
(52, 1, '2014-01-20 16:00:55', '2014-01-20 15:00:55', '[add_to_cart id="17" sku=""]toto', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:00:55', '2014-01-20 15:00:55', '', 48, 'http://localhost/ecom/?p=52', 0, 'revision', '', 0),
(53, 1, '2014-01-20 16:01:10', '2014-01-20 15:01:10', '[add_to_cart id="17" sku="17"]toto', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:01:10', '2014-01-20 15:01:10', '', 48, 'http://localhost/ecom/?p=53', 0, 'revision', '', 0),
(54, 1, '2014-01-20 16:01:32', '2014-01-20 15:01:32', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:01:32', '2014-01-20 15:01:32', '', 48, 'http://localhost/ecom/?p=54', 0, 'revision', '', 0),
(55, 1, '2014-01-20 16:08:22', '2014-01-20 15:08:22', '<p style="text-align: center;">[recent_products per_page="12" columns="4" orderby="date" order="desc"]</p>', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:08:22', '2014-01-20 15:08:22', '', 48, 'http://localhost/ecom/?p=55', 0, 'revision', '', 0),
(56, 1, '2014-01-20 16:09:05', '2014-01-20 15:09:05', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n\r\n[featured_products per_page="12" columns="4" orderby="date" order="desc"]', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:09:05', '2014-01-20 15:09:05', '', 48, 'http://localhost/ecom/?p=56', 0, 'revision', '', 0),
(58, 1, '2014-01-20 16:09:38', '2014-01-20 15:09:38', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:09:38', '2014-01-20 15:09:38', '', 48, 'http://localhost/ecom/?p=58', 0, 'revision', '', 0),
(57, 1, '2014-01-20 16:09:20', '2014-01-20 15:09:20', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n\r\n&nbsp;\r\n\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n\r\n&nbsp;\r\n\r\n<span style="line-height: 1.5em;">[featured_products per_page="12" columns="4" orderby="date" order="desc"]</span>', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:09:20', '2014-01-20 15:09:20', '', 48, 'http://localhost/ecom/?p=57', 0, 'revision', '', 0),
(59, 1, '2014-01-20 16:11:07', '2014-01-20 15:11:07', '[rev_slider slide_test]\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:11:07', '2014-01-20 15:11:07', '', 48, 'http://localhost/ecom/?p=59', 0, 'revision', '', 0),
(60, 1, '2014-01-20 16:14:23', '2014-01-20 15:14:23', '', 'slider1', '', 'inherit', 'open', 'open', '', 'slider1', '', '', '2014-01-20 16:14:23', '2014-01-20 15:14:23', '', 0, 'http://localhost/ecom/wp-content/uploads/2014/01/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2014-01-20 16:14:50', '2014-01-20 15:14:50', '', 'SONY DSC', '', 'inherit', 'open', 'open', '', 'sony-dsc', '', '', '2014-01-20 16:14:50', '2014-01-20 15:14:50', '', 0, 'http://localhost/ecom/wp-content/uploads/2014/01/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2014-01-22 14:49:13', '2014-01-22 13:49:13', '[rev_slider slide_test]\n\n&nbsp;\n\n<center>[recent_products per_page="12" columns="4" orderby="date" order="desc"]</center>', 'Home', '', 'inherit', 'open', 'open', '', '48-autosave-v1', '', '', '2014-01-22 14:49:13', '2014-01-22 13:49:13', '', 48, 'http://localhost/ecom/?p=62', 0, 'revision', '', 0),
(63, 1, '2014-01-20 16:16:56', '2014-01-20 15:16:56', '[custom_latest_products][/custom_latest_products]\r\n[rev_slider slide_test]\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:16:56', '2014-01-20 15:16:56', '', 48, 'http://localhost/ecom/?p=63', 0, 'revision', '', 0),
(64, 1, '2014-01-20 16:17:52', '2014-01-20 15:17:52', '[rev_slider slide_test]\r\n<center>\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n</center>\r\n', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:17:52', '2014-01-20 15:17:52', '', 48, 'http://localhost/ecom/?p=64', 0, 'revision', '', 0),
(65, 1, '2014-01-20 16:19:43', '2014-01-20 15:19:43', '[rev_slider slide_test]\r\n\r\n&nbsp;\r\n<h1>Les derniers produits</h1>\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:19:43', '2014-01-20 15:19:43', '', 48, 'http://localhost/ecom/?p=65', 0, 'revision', '', 0),
(66, 1, '2014-01-20 16:20:04', '2014-01-20 15:20:04', '[rev_slider slide_test]\r\n\r\n<center>\r\n<h1>Les derniers produits</h1>\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]\r\n</center>', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:20:04', '2014-01-20 15:20:04', '', 48, 'http://localhost/ecom/?p=66', 0, 'revision', '', 0),
(68, 1, '2014-01-20 16:21:23', '2014-01-20 15:21:23', '[rev_slider slide_test]\r\n\r\n<center>[recent_products per_page="12" columns="4" orderby="date" order="desc"]</center>', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:21:23', '2014-01-20 15:21:23', '', 48, 'http://localhost/ecom/?p=68', 0, 'revision', '', 0),
(67, 1, '2014-01-20 16:20:59', '2014-01-20 15:20:59', '[rev_slider slide_test]\r\n\r\n<center><strong>Les derniers produits</strong>\r\n[recent_products per_page="12" columns="4" orderby="date" order="desc"]</center>', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:20:59', '2014-01-20 15:20:59', '', 48, 'http://localhost/ecom/?p=67', 0, 'revision', '', 0),
(69, 1, '2014-01-20 16:21:42', '2014-01-20 15:21:42', '[rev_slider slide_test]\r\n\r\n&nbsp;\r\n\r\n<center>[recent_products per_page="12" columns="4" orderby="date" order="desc"]</center>', 'Home', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-01-20 16:21:42', '2014-01-20 15:21:42', '', 48, 'http://localhost/ecom/?p=69', 0, 'revision', '', 0),
(70, 1, '2014-01-20 16:52:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-01-20 16:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=product&p=70', 0, 'product', '', 0),
(71, 1, '2014-01-20 16:58:24', '2014-01-20 15:58:24', '', 'Produit crowfunding', '', 'publish', 'open', 'closed', '', 'produit-crowfunding', '', '', '2014-01-21 17:36:04', '2014-01-21 16:36:04', '', 0, 'http://localhost/ecom/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2014-01-20 16:58:25', '2014-01-20 15:58:25', 'test', 'Un cadeau', '', 'publish', 'open', 'open', '', 'test', '', '', '2014-01-21 17:36:04', '2014-01-21 16:36:04', '', 71, 'http://localhost/ecom/?product_variation=test', 0, 'product_variation', '', 0),
(73, 1, '2014-01-20 16:59:30', '2014-01-20 15:59:30', '', 'oekaki_33547_0', '', 'inherit', 'open', 'open', '', 'oekaki_33547_0', '', '', '2014-01-20 16:59:30', '2014-01-20 15:59:30', '', 71, 'http://localhost/ecom/wp-content/uploads/2014/01/oekaki_33547_0.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2014-01-20 17:00:56', '2014-01-20 16:00:56', 'bob', 'Un bisous', '', 'publish', 'open', 'open', '', 'un-bisous', '', '', '2014-01-21 17:36:04', '2014-01-21 16:36:04', '', 71, 'http://localhost/ecom/?product_variation=un-bisous', 0, 'product_variation', '', 0),
(77, 1, '2014-01-21 17:44:58', '2014-01-21 16:44:58', '', 'Commande n&deg;Jan 21, 2014 @ 04:44 PM', '', 'publish', 'open', 'closed', 'order_52dea40af0f2b', 'commande-njan-21-2014-0444-pm', '', '', '2014-01-21 17:45:01', '2014-01-21 16:45:01', '', 0, 'http://localhost/ecom/?post_type=shop_order&#038;p=77', 0, 'shop_order', '', 3),
(76, 1, '2014-01-21 17:31:50', '2014-01-21 16:31:50', '', 'Commande n&deg;Jan 21, 2014 @ 04:31 PM', '', 'publish', 'open', 'closed', 'order_52dea0f634f8c', 'commande-njan-21-2014-0431-pm', '', '', '2014-01-21 17:31:52', '2014-01-21 16:31:52', '', 0, 'http://localhost/ecom/?post_type=shop_order&#038;p=76', 0, 'shop_order', '', 3),
(78, 1, '2014-01-21 17:47:22', '2014-01-21 16:47:22', '', 'Commande n&deg;Jan 21, 2014 @ 04:47 PM', '', 'publish', 'open', 'closed', 'order_52dea49a6e095', 'commande-njan-21-2014-0447-pm', '', '', '2014-01-21 17:47:24', '2014-01-21 16:47:24', '', 0, 'http://localhost/ecom/?post_type=shop_order&#038;p=78', 0, 'shop_order', '', 2),
(79, 1, '2014-01-22 13:02:35', '2014-01-22 12:02:35', '', 'Commande n&deg;Jan 22, 2014 @ 12:02 PM', '', 'publish', 'open', 'closed', 'order_52dfb35b3e3a3', 'commande-njan-22-2014-1202-pm', '', '', '2014-01-22 13:02:38', '2014-01-22 12:02:38', '', 0, 'http://localhost/ecom/?post_type=shop_order&#038;p=79', 0, 'shop_order', '', 2),
(80, 1, '2014-01-22 13:03:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-01-22 13:03:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/ecom/?post_type=product&p=80', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'Test', 'slide_test', '{"title":"Test","alias":"slide_test","shortcode":"[rev_slider slide_test]","slider_type":"fixed","width":"960","height":"350","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"","responsitive_sw4":"","responsitive_w5":"","responsitive_sw5":"","responsitive_w6":"","responsitive_sw6":"","delay":"9000","touchenabled":"on","stop_on_hover":"on","shuffle":"off","load_googlefont":"false","google_font":"PT+Sans+Narrow:400,700","stop_slider":"off","stop_after_loops":"0","stop_at_slide":"2","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","shadow_type":"2","show_timerbar":"true","timebar_position":"top","background_color":"#E9E9E9","padding":"5","show_background_image":"false","background_image":"","navigaion_type":"none","navigation_arrows":"nexttobullets","navigation_style":"round","navigaion_always_on":"false","hide_thumbs":"200","navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":"20","leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":"20","leftarrow_offset_vert":"0","rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":"20","rightarrow_offset_vert":"0","thumb_width":"100","thumb_height":"50","thumb_amount":"5","hide_slider_under":"0","hide_defined_layers_under":"0","hide_all_layers_under":"0","start_with_slide":"1","first_transition_type":"fade","first_transition_duration":"300","first_transition_slot_amount":"7","jquery_noconflict":"on","js_to_body":"false","output_type":"none"}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"title":"Slide","state":"published","slide_transition":"random","slot_amount":"7","transition_rotation":"0","transition_duration":"300","delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","enable_video":"false","video_id":"","video_autoplay":"false","slide_thumb":"","0":"Choose Image","fullwidth_centering":"false","background_type":"image","slide_bg_color":"#E7E7E7","image":"http:\\/\\/localhost\\/ecom\\/wp-content\\/uploads\\/2014\\/01\\/slider1.jpg"}', '[]'),
(2, 1, 2, '{"title":"Slide","state":"published","slide_transition":"random","slot_amount":"7","transition_rotation":"0","transition_duration":"300","delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","enable_video":"false","video_id":"","video_autoplay":"false","slide_thumb":"","0":"Choose Image","fullwidth_centering":"false","background_type":"image","slide_bg_color":"#E7E7E7","image":"http:\\/\\/localhost\\/ecom\\/wp-content\\/uploads\\/2014\\/01\\/slider2.jpg"}', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'pending', 'pending', 0),
(7, 'failed', 'failed', 0),
(8, 'on-hold', 'on-hold', 0),
(9, 'processing', 'processing', 0),
(10, 'completed', 'completed', 0),
(11, 'refunded', 'refunded', 0),
(12, 'cancelled', 'cancelled', 0),
(13, 'main', 'main', 0),
(14, 'sponsorship-project', 'sponsorship-project', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(27, 13, 0),
(28, 13, 0),
(29, 13, 0),
(77, 8, 0),
(31, 13, 0),
(78, 8, 0),
(76, 8, 0),
(71, 14, 0),
(45, 2, 0),
(37, 13, 0),
(47, 8, 0),
(79, 8, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'shop_order_status', '', 0, 0),
(7, 7, 'shop_order_status', '', 0, 0),
(8, 8, 'shop_order_status', '', 0, 5),
(9, 9, 'shop_order_status', '', 0, 0),
(10, 10, 'shop_order_status', '', 0, 0),
(11, 11, 'shop_order_status', '', 0, 0),
(12, 12, 'shop_order_status', '', 0, 0),
(13, 13, 'nav_menu', '', 0, 5),
(14, 14, 'product_type', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Admin'),
(2, 1, 'last_name', 'test'),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(40, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(17, 1, 'wp_user-settings-time', '1390231255'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:8:"add-post";i:1;s:11:"add-product";i:2;s:13:"add-portfolio";i:3;s:12:"add-post_tag";i:4;s:20:"add-portfolio_filter";i:5;s:15:"add-product_cat";i:6;s:15:"add-product_tag";}'),
(20, 1, 'nav_menu_recently_edited', '13'),
(21, 1, 'closedpostboxes_attachment', 'a:0:{}'),
(22, 1, 'metaboxhidden_attachment', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(23, 1, '_order_count', '0'),
(41, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'billing_country', 'FR'),
(28, 1, 'billing_first_name', 'Admin'),
(29, 1, 'billing_last_name', 'test'),
(30, 1, 'billing_address_1', 'admin test'),
(31, 1, 'billing_postcode', '75012'),
(32, 1, 'billing_city', 'paris'),
(33, 1, 'billing_email', 'labullerie6@gmail.com'),
(34, 1, 'billing_phone', '0102030405');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BlRvrO/9uvnC5inclutjEFzuYW4O6n0', 'admin', 'labullerie6@gmail.com', '', '2014-01-20 13:23:30', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`order_id`,`order_key`,`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Contenu de la table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '1'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '45'),
(4, 1, '_variation_id', ''),
(5, 1, '_line_subtotal', '17'),
(6, 1, '_line_total', '17'),
(7, 1, '_line_tax', '0'),
(8, 1, '_line_subtotal_tax', '0'),
(9, 2, '_qty', '1'),
(10, 2, '_tax_class', ''),
(11, 2, '_product_id', '74'),
(12, 2, '_variation_id', ''),
(13, 2, '_line_subtotal', '15'),
(14, 2, '_line_total', '15'),
(15, 2, '_line_tax', '0'),
(16, 2, '_line_subtotal_tax', '0'),
(17, 3, '_qty', '1'),
(18, 3, '_tax_class', ''),
(19, 3, '_product_id', '72'),
(20, 3, '_variation_id', ''),
(21, 3, '_line_subtotal', '10'),
(22, 3, '_line_total', '10'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 4, '_qty', '1'),
(26, 4, '_tax_class', ''),
(27, 4, '_product_id', '74'),
(28, 4, '_variation_id', ''),
(29, 4, '_line_subtotal', '15'),
(30, 4, '_line_total', '15'),
(31, 4, '_line_tax', '0'),
(32, 4, '_line_subtotal_tax', '0'),
(33, 5, '_qty', '1'),
(34, 5, '_tax_class', ''),
(35, 5, '_product_id', '74'),
(36, 5, '_variation_id', ''),
(37, 5, '_line_subtotal', '15'),
(38, 5, '_line_total', '15'),
(39, 5, '_line_tax', '0'),
(40, 5, '_line_subtotal_tax', '0');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Tintin : le secret de la Licorne', 'line_item', 47),
(2, 'Produit crowfunding', 'line_item', 76),
(3, 'Produit crowfunding', 'line_item', 77),
(4, 'Produit crowfunding', 'line_item', 78),
(5, 'Produit crowfunding', 'line_item', 79);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
