-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2016 at 08:46 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomla`
--
CREATE DATABASE IF NOT EXISTS `joomla` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `joomla`;

-- --------------------------------------------------------

--
-- Table structure for table `db_assets`
--

CREATE TABLE `db_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_assets`
--

INSERT INTO `db_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 119, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 86, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 87, 90, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 91, 92, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 93, 94, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 95, 96, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 97, 98, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 99, 102, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 103, 104, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 88, 89, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 100, 101, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 105, 106, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 107, 108, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 109, 110, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 111, 112, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 113, 114, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 115, 116, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'Popular Tags', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 76, 77, 2, 'com_modules.module.89', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 78, 79, 2, 'com_modules.module.90', 'Latest Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 80, 81, 2, 'com_modules.module.91', 'User Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 82, 83, 2, 'com_modules.module.92', 'Image Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 18, 84, 85, 2, 'com_modules.module.93', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 1, 117, 118, 1, '#__ucm_content.1', '#__ucm_content.1', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `db_associations`
--

CREATE TABLE `db_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_banner_clients`
--

CREATE TABLE `db_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_banner_tracks`
--

CREATE TABLE `db_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_banners`
--

CREATE TABLE `db_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_categories`
--

CREATE TABLE `db_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_categories`
--

INSERT INTO `db_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 579, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 579, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact_details`
--

CREATE TABLE `db_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the "Template Settings" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the "Site Settings" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="https://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>', '', 1, 2, '2013-11-16 00:00:00', 579, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_content_frontpage`
--

CREATE TABLE `db_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_content_rating`
--

CREATE TABLE `db_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_content_types`
--

CREATE TABLE `db_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_content_types`
--

INSERT INTO `db_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `db_contentitem_tag_map`
--

CREATE TABLE `db_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `db_contentitem_tag_map`
--

INSERT INTO `db_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2013-11-16 06:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_core_log_searches`
--

CREATE TABLE `db_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_extensions`
--

CREATE TABLE `db_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_extensions`
--

INSERT INTO `db_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"45fddcf96cc6f8fbb448d26bacb84af8"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `db_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_filters`
--

CREATE TABLE `db_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links`
--

CREATE TABLE `db_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms0`
--

CREATE TABLE `db_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms1`
--

CREATE TABLE `db_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms2`
--

CREATE TABLE `db_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms3`
--

CREATE TABLE `db_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms4`
--

CREATE TABLE `db_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms5`
--

CREATE TABLE `db_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms6`
--

CREATE TABLE `db_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms7`
--

CREATE TABLE `db_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms8`
--

CREATE TABLE `db_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_terms9`
--

CREATE TABLE `db_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_termsa`
--

CREATE TABLE `db_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_termsb`
--

CREATE TABLE `db_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_termsc`
--

CREATE TABLE `db_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_termsd`
--

CREATE TABLE `db_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_termse`
--

CREATE TABLE `db_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_links_termsf`
--

CREATE TABLE `db_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_taxonomy`
--

CREATE TABLE `db_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_finder_taxonomy`
--

INSERT INTO `db_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_taxonomy_map`
--

CREATE TABLE `db_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_terms`
--

CREATE TABLE `db_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_terms_common`
--

CREATE TABLE `db_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_finder_terms_common`
--

INSERT INTO `db_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_tokens`
--

CREATE TABLE `db_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_tokens_aggregate`
--

CREATE TABLE `db_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_finder_types`
--

CREATE TABLE `db_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_hangsanxuat`
--

CREATE TABLE `db_hangsanxuat` (
  `hang_ma` varchar(20) NOT NULL,
  `hang_ten` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_languages`
--

CREATE TABLE `db_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_languages`
--

INSERT INTO `db_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 55, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 1, '*', 0),
(102, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(103, 'usermenu', 'Site Administrator', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 17, 18, 0, '*', 0),
(104, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(106, 'usermenu', 'Template Settings', 'template-settings', '', 'template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(107, 'usermenu', 'Site Settings', 'site-settings', '', 'site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu_types`
--

CREATE TABLE `db_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_menu_types`
--

INSERT INTO `db_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users');

-- --------------------------------------------------------

--
-- Table structure for table `db_messages`
--

CREATE TABLE `db_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_messages_cfg`
--

CREATE TABLE `db_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_modules`
--

CREATE TABLE `db_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_modules`
--

INSERT INTO `db_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 57, 'Latest Articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Image Module', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Search', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `db_modules_menu`
--

CREATE TABLE `db_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_modules_menu`
--

INSERT INTO `db_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_newsfeeds`
--

CREATE TABLE `db_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_overrider`
--

CREATE TABLE `db_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_postinstall_messages`
--

CREATE TABLE `db_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_postinstall_messages`
--

INSERT INTO `db_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_redirect_links`
--

CREATE TABLE `db_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_sanpham`
--

CREATE TABLE `db_sanpham` (
  `sanpham_ma` varchar(20) NOT NULL,
  `sanpham_ten` varchar(100) NOT NULL,
  `sanpham_gia` decimal(10,0) NOT NULL,
  `sanpham_mota` varchar(10000) NOT NULL,
  `hang_gia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_schemas`
--

CREATE TABLE `db_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_schemas`
--

INSERT INTO `db_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `db_session`
--

CREATE TABLE `db_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_session`
--

INSERT INTO `db_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('3js8ega775mlq84lhe7l5u9p27', 0, 1, '1457013072', 'joomla|s:1552:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ1NzAwOTcwNDtzOjQ6Imxhc3QiO2k6MTQ1NzAxMjIzMjtzOjM6Im5vdyI7aToxNDU3MDEzMDcyO31zOjU6InRva2VuIjtzOjMyOiJkM2E4MzQ3NTNmMWM5M2Y0ODExOWQyMTBiZTg2OTA4YSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtiOjA7czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjk7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjM6e2k6MDtpOjE7aToxO2k6MTtpOjI7aTo1O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('o9g88prnuc344e7f9e8l93lui6', 1, 0, '1457013179', 'joomla|s:2160:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ1NzAxMzEwMDtzOjQ6Imxhc3QiO2k6MTQ1NzAxMzEyOTtzOjM6Im5vdyI7aToxNDU3MDEzMTc5O31zOjU6InRva2VuIjtzOjMyOiIyOGE5OTZjZmUzMjhjNTYzMjA5ZWNhY2VkNjVhMTI0OSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsYW5nIjtzOjU6ImVuLUdCIjt9czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MzoiNTc5IjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6MTA6ImxlY2hpZW43ODkiO3M6NToiZW1haWwiO3M6MzI6ImNoaWVuYzE0MDAxNDdAc3R1ZGVudC5jdHUuZWR1LnZuIjtzOjg6InBhc3N3b3JkIjtzOjYwOiIkMnkkMTAkYUpaTElSMlpCT3FTVFJ1U1hQUU12ZUlPbzVVQlhpejFQQ2Fjb0NzdFBzRUg5Y21vdUpPVzIiO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7czoxOiIwIjtzOjk6InNlbmRFbWFpbCI7czoxOiIxIjtzOjEyOiJyZWdpc3RlckRhdGUiO3M6MTk6IjIwMTYtMDMtMDMgMTA6MzA6MTYiO3M6MTM6Imxhc3R2aXNpdERhdGUiO3M6MTk6IjIwMTYtMDMtMDMgMTE6MTM6MTUiO3M6MTA6ImFjdGl2YXRpb24iO3M6MToiMCI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjY6Imdyb3VwcyI7YToxOntpOjg7czoxOiI4Ijt9czo1OiJndWVzdCI7aTowO3M6MTM6Imxhc3RSZXNldFRpbWUiO3M6MTk6IjAwMDAtMDAtMDAgMDA6MDA6MDAiO3M6MTA6InJlc2V0Q291bnQiO3M6MToiMCI7czoxMjoicmVxdWlyZVJlc2V0IjtzOjE6IjAiO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6ODt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6NTp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo2O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7czo2OiJvdHBLZXkiO3M6MDoiIjtzOjQ6Im90ZXAiO3M6MDoiIjt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 579, 'lechien789');

-- --------------------------------------------------------

--
-- Table structure for table `db_tags`
--

CREATE TABLE `db_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_tags`
--

INSERT INTO `db_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 579, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 579, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `db_template_styles`
--

CREATE TABLE `db_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_template_styles`
--

INSERT INTO `db_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `db_ucm_base`
--

CREATE TABLE `db_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_ucm_base`
--

INSERT INTO `db_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_ucm_content`
--

CREATE TABLE `db_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

--
-- Dumping data for table `db_ucm_content`
--

INSERT INTO `db_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the "Template Settings" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the "Site Settings" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="https://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>', 1, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 579, '', '2013-11-16 00:00:00', 0, '0000-00-00 00:00:00', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 1, 62, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 0, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_ucm_history`
--

CREATE TABLE `db_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_ucm_history`
--

INSERT INTO `db_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 579, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"Joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"849","created_time":"2013-11-16 00:00:00","created_by_alias":"","modified_user_id":"0","modified_time":"0000-00-00 00:00:00","images":null,"urls":null,"hits":"0","language":"*","version":"1","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 579, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{"id":1,"asset_id":54,"title":"Getting Started","alias":"getting-started","introtext":"<p>It''s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\"Submit Article\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\"Template Settings\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\"Site Settings\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\"Site Administrator\\" link on the \\"User Menu\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\"http:\\/\\/docs.joomla.org\\" target=\\"_blank\\">Joomla! documentation site<\\/a> and on the<a href=\\"http:\\/\\/forum.joomla.org\\" target=\\"_blank\\"> Joomla! forums<\\/a>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"849","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_update_sites`
--

CREATE TABLE `db_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Dumping data for table `db_update_sites`
--

INSERT INTO `db_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1457013120, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1457013120, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `db_update_sites_extensions`
--

CREATE TABLE `db_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `db_update_sites_extensions`
--

INSERT INTO `db_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `db_updates`
--

CREATE TABLE `db_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `db_user_keys`
--

CREATE TABLE `db_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_user_notes`
--

CREATE TABLE `db_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_user_profiles`
--

CREATE TABLE `db_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `db_user_usergroup_map`
--

CREATE TABLE `db_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user_usergroup_map`
--

INSERT INTO `db_user_usergroup_map` (`user_id`, `group_id`) VALUES
(579, 8);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroups`
--

CREATE TABLE `db_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_usergroups`
--

INSERT INTO `db_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_users`
--

INSERT INTO `db_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(579, 'Super User', 'lechien789', 'chienc1400147@student.ctu.edu.vn', '$2y$10$aJZLIR2ZBOqSTRuSXPQMveIOo5UBXiz1PCacoCstPsEH9cmouJOW2', 0, 1, '2016-03-03 10:30:16', '2016-03-03 13:51:54', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_viewlevels`
--

CREATE TABLE `db_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_viewlevels`
--

INSERT INTO `db_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `smartphone`
--

CREATE TABLE `smartphone` (
  `code` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_assets`
--
ALTER TABLE `db_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `db_associations`
--
ALTER TABLE `db_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `db_banner_clients`
--
ALTER TABLE `db_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `db_banner_tracks`
--
ALTER TABLE `db_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `db_banners`
--
ALTER TABLE `db_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `db_categories`
--
ALTER TABLE `db_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `db_contact_details`
--
ALTER TABLE `db_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `db_content_frontpage`
--
ALTER TABLE `db_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `db_content_rating`
--
ALTER TABLE `db_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `db_content_types`
--
ALTER TABLE `db_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `db_contentitem_tag_map`
--
ALTER TABLE `db_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_tag` (`tag_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `db_extensions`
--
ALTER TABLE `db_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `db_finder_filters`
--
ALTER TABLE `db_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `db_finder_links`
--
ALTER TABLE `db_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `db_finder_links_terms0`
--
ALTER TABLE `db_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms1`
--
ALTER TABLE `db_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms2`
--
ALTER TABLE `db_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms3`
--
ALTER TABLE `db_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms4`
--
ALTER TABLE `db_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms5`
--
ALTER TABLE `db_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms6`
--
ALTER TABLE `db_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms7`
--
ALTER TABLE `db_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms8`
--
ALTER TABLE `db_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_terms9`
--
ALTER TABLE `db_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_termsa`
--
ALTER TABLE `db_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_termsb`
--
ALTER TABLE `db_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_termsc`
--
ALTER TABLE `db_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_termsd`
--
ALTER TABLE `db_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_termse`
--
ALTER TABLE `db_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_links_termsf`
--
ALTER TABLE `db_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `db_finder_taxonomy`
--
ALTER TABLE `db_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `db_finder_taxonomy_map`
--
ALTER TABLE `db_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `db_finder_terms`
--
ALTER TABLE `db_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `db_finder_terms_common`
--
ALTER TABLE `db_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `db_finder_tokens`
--
ALTER TABLE `db_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `db_finder_tokens_aggregate`
--
ALTER TABLE `db_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `db_finder_types`
--
ALTER TABLE `db_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `db_hangsanxuat`
--
ALTER TABLE `db_hangsanxuat`
  ADD PRIMARY KEY (`hang_ma`);

--
-- Indexes for table `db_languages`
--
ALTER TABLE `db_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(255)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `db_menu_types`
--
ALTER TABLE `db_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `db_messages`
--
ALTER TABLE `db_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `db_messages_cfg`
--
ALTER TABLE `db_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `db_modules`
--
ALTER TABLE `db_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `db_modules_menu`
--
ALTER TABLE `db_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `db_newsfeeds`
--
ALTER TABLE `db_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `db_overrider`
--
ALTER TABLE `db_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_postinstall_messages`
--
ALTER TABLE `db_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `db_redirect_links`
--
ALTER TABLE `db_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD KEY `hang_gia` (`hang_gia`);

--
-- Indexes for table `db_schemas`
--
ALTER TABLE `db_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `db_session`
--
ALTER TABLE `db_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `db_tags`
--
ALTER TABLE `db_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `db_template_styles`
--
ALTER TABLE `db_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `db_ucm_base`
--
ALTER TABLE `db_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `db_ucm_content`
--
ALTER TABLE `db_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `db_ucm_history`
--
ALTER TABLE `db_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `db_update_sites`
--
ALTER TABLE `db_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `db_update_sites_extensions`
--
ALTER TABLE `db_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `db_updates`
--
ALTER TABLE `db_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `db_user_keys`
--
ALTER TABLE `db_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `db_user_notes`
--
ALTER TABLE `db_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `db_user_profiles`
--
ALTER TABLE `db_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `db_user_usergroup_map`
--
ALTER TABLE `db_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `db_usergroups`
--
ALTER TABLE `db_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `db_viewlevels`
--
ALTER TABLE `db_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_assets`
--
ALTER TABLE `db_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `db_banner_clients`
--
ALTER TABLE `db_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_banners`
--
ALTER TABLE `db_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_categories`
--
ALTER TABLE `db_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `db_contact_details`
--
ALTER TABLE `db_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_content_types`
--
ALTER TABLE `db_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `db_extensions`
--
ALTER TABLE `db_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT for table `db_finder_filters`
--
ALTER TABLE `db_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_finder_links`
--
ALTER TABLE `db_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_finder_taxonomy`
--
ALTER TABLE `db_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_finder_terms`
--
ALTER TABLE `db_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_finder_types`
--
ALTER TABLE `db_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_languages`
--
ALTER TABLE `db_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `db_menu_types`
--
ALTER TABLE `db_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `db_messages`
--
ALTER TABLE `db_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_modules`
--
ALTER TABLE `db_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `db_newsfeeds`
--
ALTER TABLE `db_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_overrider`
--
ALTER TABLE `db_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `db_postinstall_messages`
--
ALTER TABLE `db_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `db_redirect_links`
--
ALTER TABLE `db_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_tags`
--
ALTER TABLE `db_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `db_template_styles`
--
ALTER TABLE `db_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `db_ucm_content`
--
ALTER TABLE `db_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_ucm_history`
--
ALTER TABLE `db_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `db_update_sites`
--
ALTER TABLE `db_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `db_updates`
--
ALTER TABLE `db_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_user_keys`
--
ALTER TABLE `db_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_user_notes`
--
ALTER TABLE `db_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_usergroups`
--
ALTER TABLE `db_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;
--
-- AUTO_INCREMENT for table `db_viewlevels`
--
ALTER TABLE `db_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD CONSTRAINT `db_sanpham_ibfk_1` FOREIGN KEY (`hang_gia`) REFERENCES `db_hangsanxuat` (`hang_ma`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"angular","relation_lines":"true","snap_to_grid":"off"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('joomla', 1, 'db');

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"shop","table":"lienhe"},{"db":"shop","table":"sanpham"},{"db":"shop","table":"slide"},{"db":"shop","table":"loaisanpham"},{"db":"shop","table":"tintuc"},{"db":"shop","table":"khachhang"},{"db":"shop","table":"hinhthucthanhtoan"},{"db":"tuyendung","table":"ungvien"},{"db":"tuyendung","table":"tuyendung"},{"db":"tuyendung","table":"quantri"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('joomla', 'db_assets', 1, 274, 519),
('joomla', 'db_associations', 1, 698, 353),
('joomla', 'db_banner_clients', 1, 94, 193),
('joomla', 'db_banner_tracks', 1, 274, 362),
('joomla', 'db_banners', 1, 22, 259),
('joomla', 'db_categories', 1, 665, 25),
('joomla', 'db_contact_details', 1, 584, 548),
('joomla', 'db_content', 1, 852, 475),
('joomla', 'db_content_frontpage', 1, 478, 390),
('joomla', 'db_content_rating', 1, 608, 302),
('joomla', 'db_content_types', 1, 859, 350),
('joomla', 'db_contentitem_tag_map', 1, 829, 417),
('joomla', 'db_core_log_searches', 1, 629, 361),
('joomla', 'db_extensions', 1, 648, 253),
('joomla', 'db_finder_filters', 1, 606, 450),
('joomla', 'db_finder_links', 1, 557, 187),
('joomla', 'db_finder_links_terms0', 1, 815, 330),
('joomla', 'db_finder_links_terms1', 1, 322, 543),
('joomla', 'db_finder_links_terms2', 1, 783, 392),
('joomla', 'db_finder_links_terms3', 1, 687, 375),
('joomla', 'db_finder_links_terms4', 1, 180, 92),
('joomla', 'db_finder_links_terms5', 1, 694, 66),
('joomla', 'db_finder_links_terms6', 1, 813, 495),
('joomla', 'db_finder_links_terms7', 1, 905, 398),
('joomla', 'db_finder_links_terms8', 1, 644, 512),
('joomla', 'db_finder_links_terms9', 1, 842, 424),
('joomla', 'db_finder_links_termsa', 1, 99, 339),
('joomla', 'db_finder_links_termsb', 1, 823, 352),
('joomla', 'db_finder_links_termsc', 1, 748, 407),
('joomla', 'db_finder_links_termsd', 1, 123, 526),
('joomla', 'db_finder_links_termse', 1, 884, 379),
('joomla', 'db_finder_links_termsf', 1, 660, 186),
('joomla', 'db_finder_taxonomy', 1, 554, 476),
('joomla', 'db_finder_taxonomy_map', 1, 202, 136),
('joomla', 'db_finder_terms', 1, 886, 319),
('joomla', 'db_finder_terms_common', 1, 173, 491),
('joomla', 'db_finder_tokens', 1, 824, 342),
('joomla', 'db_finder_tokens_aggregate', 1, 807, 305),
('joomla', 'db_finder_types', 1, 400, 340),
('joomla', 'db_hangsanxuat', 1, 484, 56),
('joomla', 'db_languages', 1, 699, 159),
('joomla', 'db_menu', 1, 850, 317),
('joomla', 'db_menu_types', 1, 924, 357),
('joomla', 'db_messages', 1, 715, 266),
('joomla', 'db_messages_cfg', 1, 93, 492),
('joomla', 'db_modules', 1, 874, 367),
('joomla', 'db_modules_menu', 1, 863, 583),
('joomla', 'db_newsfeeds', 1, 829, 298),
('joomla', 'db_overrider', 1, 1012, 399),
('joomla', 'db_postinstall_messages', 1, 830, 355),
('joomla', 'db_redirect_links', 1, 922, 404),
('joomla', 'db_sanpham', 1, 250, 41),
('joomla', 'db_schemas', 1, 78, 415),
('joomla', 'db_session', 1, 155, 479),
('joomla', 'db_tags', 1, 864, 385),
('joomla', 'db_template_styles', 1, 923, 340),
('joomla', 'db_ucm_base', 1, 957, 407),
('joomla', 'db_ucm_content', 1, 815, 277),
('joomla', 'db_ucm_history', 1, 909, 294),
('joomla', 'db_update_sites', 1, 908, 315),
('joomla', 'db_update_sites_extensions', 1, 889, 287),
('joomla', 'db_updates', 1, 914, 253),
('joomla', 'db_user_keys', 1, 914, 295),
('joomla', 'db_user_notes', 1, 46, 185),
('joomla', 'db_user_profiles', 1, 865, 283),
('joomla', 'db_user_usergroup_map', 1, 831, 557),
('joomla', 'db_usergroups', 1, 957, 360),
('joomla', 'db_users', 1, 886, 307),
('joomla', 'db_viewlevels', 1, 910, 426),
('joomla', 'smartphone', 1, 881, 282);

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-02-21 05:19:07', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `doitac`
--

CREATE TABLE `doitac` (
  `dt_ma` int(11) NOT NULL,
  `dt_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doitac`
--

INSERT INTO `doitac` (`dt_ma`, `dt_ten`, `dt_url`, `dt_link`) VALUES
(4, 'đối tác google', 'upload/doitac/patner-01.jpg', 'https://www.google.com/'),
(6, 'Đối tác 2', 'upload/doitac/patner-02.jpg', 'https://www.facebook.com/'),
(7, 'Đối tác VIP', 'upload/doitac/patner-03.jpg', 'mp3.zing.vn');

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `dh_ma` int(11) NOT NULL,
  `dh_ngaylap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dh_ngaygiao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_noigiao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_trangthaithanhtoan` int(11) NOT NULL,
  `kh_tendangnhap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_ten` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_diachi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_sdt` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`dh_ma`, `dh_ngaylap`, `dh_ngaygiao`, `dh_noigiao`, `dh_trangthaithanhtoan`, `kh_tendangnhap`, `kh_ten`, `kh_diachi`, `kh_sdt`) VALUES
(1, '1465746154', '1467293233', 'Can Tho', 2, 'user@gmail.com', NULL, NULL, NULL),
(13, '1466108174', NULL, '', 1, 'user3@gmail.com', NULL, NULL, NULL),
(19, '1466109121', NULL, '', 1, NULL, '', '', ''),
(20, '1466109251', NULL, '', 1, NULL, '213', '2131241123', '123123123'),
(21, '1466843054', '1467027006', 'Cần Thơ', 2, NULL, 'Nguyễn Thùy Anh', 'Sóc Trăng', '0169345678'),
(22, '1467292509', NULL, 'sadd', 1, 'user3@gmail.com', NULL, NULL, NULL),
(23, '1467292573', NULL, 'sad', 1, 'user3@gmail.com', NULL, NULL, NULL),
(24, '1467292654', NULL, 'sadsad', 1, 'user3@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `gt_ma` int(11) NOT NULL,
  `gt_tieude` varchar(255) NOT NULL,
  `gt_noidung` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gioithieu`
--

INSERT INTO `gioithieu` (`gt_ma`, `gt_tieude`, `gt_noidung`) VALUES
(1, 'gioi thieu', '<p><small>Ng&agrave;y đăng: 1/1/2016 / Người đăng: Admin</small></p>\r\n\r\n<p>&nbsp;\r\n<h4>Khai th&aacute;c mật ong như thế n&agrave;o</h4>\r\n</p>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla.</strong></p>\r\n\r\n<div class="img-news"><img class="img-resposive" src="file:///C:/xampp/htdocs/codelayout/codelayout/images/news-001.jpg" />\r\n<p><small>H&igrave;nh ảnh khai th&aacute;c mật ong của người d&acirc;n T&acirc;y Bắc</small></p>\r\n</div>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n\r\n<div class="img-news"><img class="img-resposive" src="file:///C:/xampp/htdocs/codelayout/codelayout/images/news-001.jpg" />\r\n<p><small>H&igrave;nh ảnh khai th&aacute;c mật ong của người d&acirc;n T&acirc;y Bắc</small></p>\r\n</div>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hinhsanpham`
--

CREATE TABLE `hinhsanpham` (
  `hsp_ma` int(11) NOT NULL,
  `hsp_tentaptin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_ma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhsanpham`
--

INSERT INTO `hinhsanpham` (`hsp_ma`, `hsp_tentaptin`, `sp_ma`) VALUES
(1, 'upload/sanpham/sp-008.jpg', 27);

-- --------------------------------------------------------

--
-- Table structure for table `huongdan`
--

CREATE TABLE `huongdan` (
  `hd_ma` int(11) NOT NULL,
  `hd_tieude` varchar(255) NOT NULL,
  `hd_noidung` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huongdan`
--

INSERT INTO `huongdan` (`hd_ma`, `hd_tieude`, `hd_noidung`) VALUES
(1, 'huong dan', '<p>2222222222222222222223&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huongdan dhuonasdkas;fojpsidfajsfas</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kh_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_gioitinh` int(11) NOT NULL,
  `kh_diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_ngaysinh` int(11) DEFAULT NULL,
  `kh_thangsinh` int(11) DEFAULT NULL,
  `kh_namsinh` int(11) NOT NULL,
  `kh_cmnd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_makichhoat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`kh_tendangnhap`, `kh_matkhau`, `kh_ten`, `kh_gioitinh`, `kh_diachi`, `kh_dienthoai`, `kh_email`, `kh_ngaysinh`, `kh_thangsinh`, `kh_namsinh`, `kh_cmnd`, `kh_makichhoat`, `kh_trangthai`) VALUES
('cuongb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen', 1, 'Can tho', '0932173210', 'cuongb@gmail.com', NULL, NULL, 0, '331722450', NULL, 1),
('user@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'ten', 1, 'Can Tho', '0123455161', 'user@gmail.com', 5, 11, 1992, '1231241231', '1', 0),
('user2@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'user2', 0, 'Can Tho', '21321232123', 'user2@gmail.com', NULL, NULL, 0, '213123', NULL, 1),
('user3@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'user3@@', 0, 'Cai Rang', '01821823821', 'user3@gmail.com', NULL, NULL, 0, '123456789', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `lh_ma` int(11) NOT NULL,
  `lh_tieude` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lh_noidung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lh_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`lh_ma`, `lh_tieude`, `lh_noidung`, `lh_loai`) VALUES
(1, 'lien he', '<p>ĐỊA CHỈ CỬA H&Agrave;NG</p>\r\n\r\n<p><img src="http://localhost/codelayout/codelayout/images/maps.jpg" style="height:91px; width:200px" /></p>\r\n\r\n<p>132, Nguyễn Văn Cừ, TP.Cần Thơ.</p>\r\n\r\n<p>LI&Ecirc;N HỆ CH&Uacute;NG T&Ocirc;I</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n mang lại sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng bằng chất lượng sản phẩm v&agrave; đội ngũ kỹ thuật chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>(+84)90.123.4567</p>\r\n\r\n<p>hello@example.com</p>\r\n\r\n<p>sadasdasd</p>\r\n', 1),
(3, 'Nguyen', '01647083964', 2),
(4, 'Lê Hồng Chiến', '01696455979', 2),
(5, 'Quốc Cường', '0907360260', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `lsp_ma` int(11) NOT NULL,
  `lsp_ten` varchar(255) NOT NULL,
  `lsp_mota` varchar(255) NOT NULL,
  `lsp_trangthai` int(11) NOT NULL,
  `lsp_anhdd` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`lsp_ma`, `lsp_ten`, `lsp_mota`, `lsp_trangthai`, `lsp_anhdd`) VALUES
(1, 'Mật ong tây bắc', 'Mật ong nguyên chất được thu hoạch từ núi Tây Bắc', 1, 'upload/loaisanpham/image-1.jpg'),
(4, 'Thực phẩm & Thảo mộc', 'Thực phẩm vào thảo mộc từ mật ong', 1, 'upload/loaisanpham/image-3.jpg'),
(5, 'Gia vị tây bắc', 'Các sản phẩm gia vị từ tây bắc', 1, 'upload/loaisanpham/4.jpg'),
(6, 'Rượu & Đồ ngâm', 'Rượu và đồ ngâm rượu được làm rừ mật ong', 1, 'upload/loaisanpham/image-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `lg_ma` int(11) NOT NULL,
  `lg_ten` text COLLATE utf8_unicode_ci NOT NULL,
  `lg_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lg_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`lg_ma`, `lg_ten`, `lg_link`, `lg_url`) VALUES
(2, 'logo', '?page=Trang-chu', 'upload/logo/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `mail_ma` int(11) NOT NULL,
  `mail_ten` varchar(250) NOT NULL,
  `mail_trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mail_ma`, `mail_ten`, `mail_trangthai`) VALUES
(1, 'gui@gmail.com', 2),
(2, 'nhan222@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `nsx_ma` int(11) NOT NULL,
  `nsx_ten` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nsx_mota` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`nsx_ma`, `nsx_ten`, `nsx_mota`) VALUES
(1, 'QC Company', 'Lorem ipsum dolor sit amet, consectetur adipi'),
(3, 'LC Company', 'Lorem ipsum dolor sit amet, consectetur adipi');

-- --------------------------------------------------------

--
-- Table structure for table `quantri`
--

CREATE TABLE `quantri` (
  `qt_ma` int(11) NOT NULL,
  `qt_tendangnhap` varchar(200) NOT NULL,
  `qt_matkhau` varchar(50) NOT NULL,
  `qt_ten` varchar(255) NOT NULL,
  `qt_quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quantri`
--

INSERT INTO `quantri` (`qt_ma`, `qt_tendangnhap`, `qt_matkhau`, `qt_ten`, `qt_quyen`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1),
(2, 'user2gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'user', 2),
(3, 'user3@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'user2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_ma` int(11) NOT NULL,
  `sp_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sp_gia` int(11) DEFAULT NULL,
  `sp_mota_ngan` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sp_mota_chitiet` text COLLATE utf8_unicode_ci,
  `sp_ngaycapnhat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lsp_ma` int(11) NOT NULL,
  `nsx_ma` int(11) NOT NULL,
  `sp_anhdd` varchar(110) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_trangthai` int(11) NOT NULL,
  `sp_donvitinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`sp_ma`, `sp_ten`, `sp_gia`, `sp_mota_ngan`, `sp_mota_chitiet`, `sp_ngaycapnhat`, `lsp_ma`, `nsx_ma`, `sp_anhdd`, `sp_trangthai`, `sp_donvitinh`) VALUES
(7, 'MẬT ONG HOA RỪNG ĐẶC BIỆT', 900000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p><strong>MẬT ONG HOA RỪNG ĐẶC BIỆT</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467656723', 1, 1, 'upload/sanpham/sp-001.jpg', 0, 'Chai'),
(8, 'mật ong tây bắc', 500000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p><strong>MẬT ONG HOA RỪNG ĐẶC BIỆT</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467657161', 1, 1, 'upload/sanpham/sp-009.jpg', 1, 'Chai'),
(9, 'Mật ong rừng 100%', 200000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p><strong>MẬT ONG HOA RỪNG ĐẶC BIỆT</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 1, 1, 'upload/sanpham/sp-005.jpg', 1, 'Chai'),
(15, 'Trà Thảo Mộc', 450000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 4, 1, 'upload/sanpham/tm1.jpg', 1, 'Chai'),
(16, 'Gia Vị Thơm Ngon', 130000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 5, 3, 'upload/sanpham/gv1.jpg', 1, 'Cái'),
(18, 'Gia Vị Canh Chua', 50000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 5, 3, 'upload/sanpham/gv2.jpg', 1, 'Gói'),
(19, 'Hương Hoa Mật Ong Cho Thịt Nướng', 70000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 5, 3, 'upload/sanpham/gv3.jpg', 1, 'Lốc'),
(23, 'Rượu Mật Nho', 700000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 6, 1, 'upload/sanpham/r3.jpg', 1, 'Chai'),
(24, 'Rượu Hoa Chuối Mật', 400000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 6, 1, 'upload/sanpham/r4.jpg', 1, 'Chai'),
(25, 'Rượu Nho & Mật Ong', 500000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', NULL, 6, 3, 'upload/sanpham/r5.jpg', 1, 'Chai'),
(27, 'Mật ong rừng U Minh', 20000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467656052', 1, 1, 'upload/sanpham/12191698_1649783755286853_602492918494554672_n.jpg', 0, 'Chai'),
(28, 'Rượu Chuối Hột Me', 300000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467632533', 6, 3, 'upload/sanpham/r7.jpg', 1, 'Chai'),
(29, 'Rượu Naponeon', 500000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467632603', 6, 3, 'upload/sanpham/r6.jpg', 1, 'Chai'),
(30, 'Giấm chua thần kỳ', 3000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467632695', 5, 3, 'upload/sanpham/gv6.jpg', 1, 'Gói'),
(31, 'Nước mắm kho thịt', 30000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467632945', 5, 3, 'upload/sanpham/gv7.jpg', 1, 'Chai'),
(32, 'Tinh dầu thơm lừng', 40000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467633033', 4, 3, 'upload/sanpham/tm2.jpg', 1, 'Hộp'),
(33, 'Thảo mộc hoa rừng ', 40000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467633443', 4, 1, 'upload/sanpham/tm5.jpg', 1, 'Chai'),
(34, 'Dược thảo tinh chất', 500000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467633497', 4, 1, 'upload/sanpham/tm6.jpg', 1, 'Hộp'),
(35, 'Mật ong hạng nhất ', 30000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467633986', 1, 1, 'upload/sanpham/sp-006.jpg', 1, 'Chai'),
(36, 'Mật ong hoa rừng rừng', 45000, 'MẬT ONG RỪNG của chúng tôi chỉ khai thác 1 lần trong năm, từ tháng 3 đến đầu tháng 6. Tôi trữ hàng bán cả năm. Khi nào hết hàng thì phải đợi mùa sang năm. Các anh chị yêu cầu rót chai như thế nào, đóng gói ra làm sao. Chúng tôi phục vụ chu đáo. Và quan trọng, chỉ duy nhất gọi 0914.268.535 để đặt hàng. Để kiểm soát chất lượng mật rừng chuẩn xịn 100%, chúng tôi bán lẻ trực tiếp đến tận tay quý anh chị. KHÔNG ĐẠI LÝ – KHÔNG NHƯỢNG QUYỀN KINH DOANH.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae eius ipsum, eveniet enim provident mollitia distinctio minus praesentium! Culpa incidunt soluta placeat hic et accusamus aut debitis nisi inventore fuga. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatum minima consequuntur sed delectus perferendis iure totam aperiam suscipit inventore molestiae dignissimos nam necessitatibus ad asperiores, voluptatem nemo, sequi fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto perspiciatis, sunt aliquam? Nam vitae maiores repellendus dolorem quasi dolor, quaerat facilis voluptas suscipit pariatur mollitia aliquam dolorum quo vel velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aspernatur aperiam rerum ab dolorum aliquid labore quia quidem iure, suscipit commodi voluptatem pariatur sit ipsa laudantium consequatur maxime amet ullam!</p>\r\n', '1467656817', 1, 3, 'upload/sanpham/sp-001.jpg', 1, 'Chai');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_dondathang`
--

CREATE TABLE `sanpham_dondathang` (
  `sp_dh_ma` int(11) NOT NULL,
  `sp_ma` int(11) NOT NULL,
  `dh_ma` int(11) NOT NULL,
  `sp_dh_soluong` int(11) DEFAULT NULL,
  `sp_dh_dongia` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham_dondathang`
--

INSERT INTO `sanpham_dondathang` (`sp_dh_ma`, `sp_ma`, `dh_ma`, `sp_dh_soluong`, `sp_dh_dongia`) VALUES
(11, 8, 13, 1, '500000.00'),
(12, 7, 13, 1, '100000.00'),
(24, 23, 21, 1, '700000.00'),
(25, 25, 21, 1, '500000.00'),
(29, 15, 24, 1, '450000.00');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `ss_ma` int(11) NOT NULL,
  `ss_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_vitri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_uutien` int(3) NOT NULL,
  `ss_link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`ss_ma`, `ss_ten`, `ss_mota`, `ss_hinh`, `ss_url`, `ss_vitri`, `ss_uutien`, `ss_link`) VALUES
(10, 'mật ong rừng nguyên chất 100%', 'mật ong rừng nguyên chất 100%', '', 'upload/slideshow/mat-ong-2.jpg', '', 1, ''),
(11, 'mật ong giúp làm đẹp da như thế nào?', 'mật ong giúp làm đẹp da như thế nào?', '', 'upload/slideshow/mat-ong-1.jpg', '', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `tin_ma` int(11) NOT NULL,
  `tin_tieude` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tin_mota` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tin_noidung` text CHARACTER SET utf8 NOT NULL,
  `tin_hinhdd` varchar(100) NOT NULL,
  `tin_loai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`tin_ma`, `tin_tieude`, `tin_mota`, `tin_noidung`, `tin_hinhdd`, `tin_loai`) VALUES
(1, 'Khai thác mật ong như thế nào', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, co', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla.</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus veniam provident rem cum molestias ipsum maiores nostrum explicabo quas doloremque, sunt repellat aliquam animi reiciendis nulla. Officia nobis, accusamus eligendi?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi repellendus illum aliquam, provident, ipsa praesentium quod necessitatibus consequuntur ducimus labore, adipisci! Amet perferendis dolor atque suscipit possimus culpa aut porro.</p>\r\n', 'upload/tintuc/news-001.jpg', NULL),
(2, 'Cách làm đẹp từ mật ong', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, co', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam.</p>\r\n', 'upload/tintuc/background.jpg', NULL),
(3, 'KINH NGHIỆM ĐI RỪNG - PHẦN 1  LỰA CHỌN & CHUẨN BỊ TRANG PHỤC', 'Mũ để đi rừng, tôi khuyến cáo nên sử dụng những chiếc mũ vải, mềm và rộng vành thay vì mũ lưỡi trai. Mũ Vải rộng vành có rất nhiều ưu điểm vượt trội so với mũ lưỡi trai. Các anh chị xem chi tiết như sau', '<h3><strong>4. MŨ</strong></h3>\r\n\r\n<p>Mũ để đi rừng, t&ocirc;i khuyến c&aacute;o n&ecirc;n sử dụng những chiếc mũ vải, mềm v&agrave; rộng v&agrave;nh thay v&igrave; mũ lưỡi trai. Mũ Vải rộng v&agrave;nh c&oacute; rất nhiều ưu điểm vượt trội so với mũ lưỡi trai. C&aacute;c anh chị xem chi tiết như sau:</p>\r\n\r\n<ul>\r\n	<li>Mềm, gọn nhỏ, rất dễ cuốn gọn để v&agrave;o trong balo khi kh&ocirc;ng sử dụng</li>\r\n	<li>C&oacute; v&agrave;nh rộng, che nắng, mưa tốt hơn rất nhiều so với mũ lưỡi trai</li>\r\n	<li>Khi chui trong rừng gi&agrave;, hoặc rừng rậm rạp, tư thế chui lu&ocirc;n hướng đầu về ph&iacute;a trước. Mũ rộng v&agrave;nh gi&uacute;p bảo vệ đầu &amp; mặt khỏi l&aacute; c&acirc;y sắc, c&agrave;nh c&acirc;y nhọn tốt hơn mũ lưỡi trai.</li>\r\n	<li>V&agrave; đơn giản, c&oacute; thể d&ugrave;ng l&agrave;m...quạt khi qu&aacute; n&oacute;ng. :))</li>\r\n</ul>\r\n\r\n<p><strong>5. KHĂN</strong></p>\r\n\r\n<p>T&ocirc;i thấy đa phần mọi người đi chơi, du lịch hay c&ograve;n gọi l&agrave; Phượt thường sử dụng những chiếc khăn rằn của Nam Bộ (hoặc Campuchia), rất to, d&agrave;i. T&ocirc;i kh&ocirc;ng bao giờ sử dụng những chiếc khăn như thế để đi rừng, v&igrave; nếu để l&agrave;m d&aacute;ng, hoặc giữ ấm cổ khi trời qu&aacute; lạnh th&igrave; được, chứ để d&atilde; chiến, bảo vệ sức khỏe tốt th&igrave; những chiếc khăn rằn đấy kh&ocirc;ng đảm đương nổi đ&acirc;u.</p>\r\n\r\n<p>H&atilde;y mang theo 1 chiếc khăn mặt loại tốt, vải sợi cotton, c&oacute; chiều d&agrave;i từ 40cm -&gt; 60cm l&agrave; vừa đẹp. Tin t&ocirc;i đi, c&aacute;c anh chị sẽ kh&ocirc;ng hối tiếc khi mang 1 chiếc khăn mặt tốt cho chuyến đi d&agrave;i ng&agrave;y đ&acirc;u, n&oacute; c&oacute; qu&aacute; nhiều ưu điểm &amp; tiện lợi sử dụng, để t&ocirc;i liệt k&ecirc; cho m&agrave; xem.</p>\r\n\r\n<ul>\r\n	<li>Sẽ l&agrave; khăn rửa mặt, khăn tắm trong suốt qu&aacute; tr&igrave;nh đi.</li>\r\n	<li>Khi trời nắng n&oacute;ng, thay v&igrave; đội mũ. H&atilde;y thấm ướt khăn mặt, tr&ugrave;m l&ecirc;n đầu, hơi nước m&aacute;t sẽ gi&uacute;p bảo vệ khỏi say nắng, ch&aacute;y nắng tuyệt vời! Khi n&agrave;o hơi kh&ocirc;, lại thấm ướt v&agrave; đội l&ecirc;n đầu tiếp.</li>\r\n	<li>Khi leo tr&egrave;o, chui r&uacute;c thường rất mệt, mồ h&ocirc;i ướt đẫm. Ta đ&atilde; c&oacute; ngay khăn ẩm để lau mồ h&ocirc;i, c&ograve;n g&igrave; tuyệt hơn nữa n&agrave;o</li>\r\n</ul>\r\n', 'upload/tintuc/dirung.jpg', NULL),
(4, 'Phân Biệt Mật Ong Giả Thật', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, co</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, co</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, co</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sit laborum expedita id, harum eveniet voluptas nisi, odit eaque ab reiciendis, quibusdam impedit veniam. Cupiditate dolorum doloremque ipsa odit quae?Lorem ipsum dolor sit amet, co</p>\r\n', 'upload/tintuc/dr.jpg', NULL),
(5, 'Mùa mật ong bạc hà', 'Những ngày này dọc con đường Hạnh Phúc, đường từ trung tâm huyện đi vào các xã Cán Chu Phìn, Lủng Pù, Khâu Vai (Mèo Vạc) dễ bắt gặp cảnh những lều lán được người dân dựng lên để nuôi ong quay mật hoa bạc hà.', '<p><strong>Nu&ocirc;i ong du mục</strong></p>\r\n\r\n<p>Những ng&agrave;y n&agrave;y dọc con đường Hạnh Ph&uacute;c, đường từ trung t&acirc;m huyện đi v&agrave;o c&aacute;c x&atilde; C&aacute;n Chu Ph&igrave;n, Lủng P&ugrave;, Kh&acirc;u Vai (M&egrave;o Vạc) dễ bắt gặp cảnh những lều l&aacute;n được người d&acirc;n dựng l&ecirc;n để nu&ocirc;i ong quay mật hoa bạc h&agrave;.</p>\r\n\r\n<p>D&acirc;n nu&ocirc;i ong coi việc du mục, chọn được vị tr&iacute; tốt sẽ quyết định đến bội thu hoặc thất thu mật. Hoa bạc h&agrave; nở đến đ&acirc;u th&igrave; lều l&aacute;n lại được dựng l&ecirc;n ở đ&oacute; v&agrave; hoa t&agrave;n nơi n&agrave;y, thợ mật lại t&igrave;m đến khu vực kh&aacute;c.</p>\r\n\r\n<p>Thời tiết nắng ấm hoa cũng rất nhanh t&agrave;n n&ecirc;n c&ocirc;ng việc du mục theo hoa thường diễn ra rất nhanh...</p>\r\n\r\n<p>Người l&acirc;u năm trong nghề chia sẻ nu&ocirc;i ong bạc h&agrave; nhanh thu hồi vốn, l&atilde;i cao nhưng cũng lắm rủi ro v&igrave; ong bị bệnh hoặc thối ấu tr&ugrave;ng sẽ chết cả đ&agrave;n. Ngo&agrave;i chọn vị tr&iacute; đặt cầu (th&ugrave;ng l&agrave;m nơi tr&uacute;, nhả mật cho ong) người nu&ocirc;i phải biết c&aacute;ch l&agrave;m &ldquo;mũ ch&uacute;a&rdquo; để dụ ong ở lại kh&ocirc;ng bay đi.</p>\r\n\r\n<p>Với kinh nghiệm gần 30 năm nu&ocirc;i ong lấy mật, &ocirc;ng H&agrave; Trọng Nghiệp (63 tuổi, người Tuy&ecirc;n Quang) n&oacute;i rằng để thu được mật thắng lợi người nu&ocirc;i ong phải chọn &ldquo;vị tr&iacute; v&agrave;ng&rdquo; đặt đ&agrave;n ong. &ldquo;Kh&ocirc;ng phải cứ nhiều hoa l&agrave; ong cho nhiều mật&rdquo; - &ocirc;ng Nghiệp n&oacute;i.</p>\r\n\r\n<p>Một khoảnh đất rộng khoảng v&agrave;i hecta, cạnh đường li&ecirc;n x&atilde; (ở th&ocirc;n Ch&oacute; Do, x&atilde; C&aacute;n Chu Ph&igrave;n) l&agrave; nơi &ocirc;ng Nghiệp đặt khoảng 100 đ&agrave;n ong. Đ&acirc;y l&agrave; vị tr&iacute; đắc địa n&ecirc;n mấy năm gần đ&acirc;y cứ đến m&ugrave;a hoa bạc h&agrave; &ocirc;ng lại tới đ&acirc;y thu&ecirc; đất.</p>\r\n\r\n<p>Theo kinh nghiệm, nơi đặt cầu ong phải ph&ugrave; hợp với việc ong đi lấy mật sau đ&oacute; vừa cất c&aacute;nh l&agrave; c&oacute; thể về tổ nhả mật. Đặt xa qu&aacute; ong bay mệt n&ecirc;n khi về đến tổ sẽ kh&ocirc;ng c&ograve;n mật, c&ograve;n nếu đặt cạnh nơi c&oacute; nhiều hoa th&igrave; ong kh&ocirc;ng chịu đi l&agrave;m.</p>\r\n\r\n<p><strong>Nu&ocirc;i ong du mục</strong></p>\r\n\r\n<p>Những ng&agrave;y n&agrave;y dọc con đường Hạnh Ph&uacute;c, đường từ trung t&acirc;m huyện đi v&agrave;o c&aacute;c x&atilde; C&aacute;n Chu Ph&igrave;n, Lủng P&ugrave;, Kh&acirc;u Vai (M&egrave;o Vạc) dễ bắt gặp cảnh những lều l&aacute;n được người d&acirc;n dựng l&ecirc;n để nu&ocirc;i ong quay mật hoa bạc h&agrave;.</p>\r\n\r\n<p>D&acirc;n nu&ocirc;i ong coi việc du mục, chọn được vị tr&iacute; tốt sẽ quyết định đến bội thu hoặc thất thu mật. Hoa bạc h&agrave; nở đến đ&acirc;u th&igrave; lều l&aacute;n lại được dựng l&ecirc;n ở đ&oacute; v&agrave; hoa t&agrave;n nơi n&agrave;y, thợ mật lại t&igrave;m đến khu vực kh&aacute;c.</p>\r\n\r\n<p>Thời tiết nắng ấm hoa cũng rất nhanh t&agrave;n n&ecirc;n c&ocirc;ng việc du mục theo hoa thường diễn ra rất nhanh...</p>\r\n\r\n<p>Người l&acirc;u năm trong nghề chia sẻ nu&ocirc;i ong bạc h&agrave; nhanh thu hồi vốn, l&atilde;i cao nhưng cũng lắm rủi ro v&igrave; ong bị bệnh hoặc thối ấu tr&ugrave;ng sẽ chết cả đ&agrave;n. Ngo&agrave;i chọn vị tr&iacute; đặt cầu (th&ugrave;ng l&agrave;m nơi tr&uacute;, nhả mật cho ong) người nu&ocirc;i phải biết c&aacute;ch l&agrave;m &ldquo;mũ ch&uacute;a&rdquo; để dụ ong ở lại kh&ocirc;ng bay đi.</p>\r\n\r\n<p>Với kinh nghiệm gần 30 năm nu&ocirc;i ong lấy mật, &ocirc;ng H&agrave; Trọng Nghiệp (63 tuổi, người Tuy&ecirc;n Quang) n&oacute;i rằng để thu được mật thắng lợi người nu&ocirc;i ong phải chọn &ldquo;vị tr&iacute; v&agrave;ng&rdquo; đặt đ&agrave;n ong. &ldquo;Kh&ocirc;ng phải cứ nhiều hoa l&agrave; ong cho nhiều mật&rdquo; - &ocirc;ng Nghiệp n&oacute;i.</p>\r\n\r\n<p>Một khoảnh đất rộng khoảng v&agrave;i hecta, cạnh đường li&ecirc;n x&atilde; (ở th&ocirc;n Ch&oacute; Do, x&atilde; C&aacute;n Chu Ph&igrave;n) l&agrave; nơi &ocirc;ng Nghiệp đặt khoảng 100 đ&agrave;n ong. Đ&acirc;y l&agrave; vị tr&iacute; đắc địa n&ecirc;n mấy năm gần đ&acirc;y cứ đến m&ugrave;a hoa bạc h&agrave; &ocirc;ng lại tới đ&acirc;y thu&ecirc; đất.</p>\r\n\r\n<p>Theo kinh nghiệm, nơi đặt cầu ong phải ph&ugrave; hợp với việc ong đi lấy mật sau đ&oacute; vừa cất c&aacute;nh l&agrave; c&oacute; thể về tổ nhả mật. Đặt xa qu&aacute; ong bay mệt n&ecirc;n khi về đến tổ sẽ kh&ocirc;ng c&ograve;n mật, c&ograve;n nếu đặt cạnh nơi c&oacute; nhiều hoa th&igrave; ong kh&ocirc;ng chịu đi l&agrave;m.</p>\r\n', 'upload/tintuc/tt.jpg', NULL),
(6, 'Giá 1 triệu đồng/lít: Có thật mật ong rừng?', 'Những ngày này dọc con đường Hạnh Phúc, đường từ trung tâm huyện đi vào các xã Cán Chu Phìn, Lủng Pù, Khâu Vai (Mèo Vạc) dễ bắt gặp cảnh những lều lán được người dân dựng lên để nuôi ong quay mật hoa bạc hà.', '<p>Tr&ecirc;n mạng x&atilde; hội facebook, theo quảng c&aacute;o của chị T, chị mới mua được của người d&acirc;n tộc tr&ecirc;n Cao Bằng một tổ ong rừng vắt được 17 l&iacute;t mật, gi&aacute; chị b&aacute;n tới tay người ti&ecirc;u d&ugrave;ng l&agrave; 1 triệu đồng/l&iacute;t. Để tăng độ hot của sản phẩm, chị T c&ograve;n ghi ch&uacute; lại trong quảng c&aacute;o: &quot;Mỗi người chỉ được mua tối đa 2 l&iacute;t với mục đ&iacute;ch c&ograve;n để chia sẻ cho những người kh&aacute;c c&oacute; cơ hội d&ugrave;ng mật xịn...&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giống chị T, chị Trần Ngọc Thảo rao b&aacute;n tr&ecirc;n Hội L&agrave;m cha mẹ mật ong đ&aacute;, loại mật được ong l&agrave;m tổ tr&ecirc;n đ&aacute; v&ocirc;i rất hiếm, gi&aacute; b&aacute;n mỗi l&iacute;t mật l&agrave; 800.000 đồng. Tuy nhi&ecirc;n, theo người b&aacute;n, người mua mật ong đ&aacute; c&oacute; thể đặt h&agrave;ng trước 1 tuần để người b&aacute;n thu gom. Những người b&aacute;n mật ong đều cam kết: mật xịn, nguy&ecirc;n chất, kh&ocirc;ng pha đường.... v&agrave; sẵn s&agrave;ng cho kiểm tra thử.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo t&igrave;m hiểu của PV Chất lượng Việt Nam, hiện nay tr&ecirc;n thị trường, gi&aacute; mật ong rao động phổ biến l&agrave; 200.000 - 300.000 đồng/l&iacute;t đối với mật ong nu&ocirc;i. 700.000 - 1 triệu đồng/l&iacute;t mật ong rừng. Tuy nhi&ecirc;n, giữa hai loại mật ong n&agrave;y kh&ocirc;ng c&oacute; điểm g&igrave; kh&aacute;c biệt ngo&agrave;i t&ecirc;n gọi nguồn gốc m&agrave; người b&aacute;n g&aacute;n cho.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo chia sẻ của &ocirc;ng Trịnh H&oacute;a - bản Mường Hung - S&ocirc;ng M&atilde;, Sơn La, người nu&ocirc;i ong l&acirc;u năm tr&ecirc;n đất T&acirc;y Bắc, gi&aacute; mật ong c&ograve;n dựa theo loại mật ong th&ocirc;ng qua quy tr&igrave;nh xử l&yacute; m&agrave; c&oacute; những mức gi&aacute; kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo &ocirc;ng H&oacute;a, loại mật được lọc qua một tấm lưới để loại bỏ s&aacute;p ong nhưng vẫn giữ lại phấn hoa. Do chứa phấn hoa n&ecirc;n m&agrave;u của n&oacute; tr&ocirc;ng mờ đục, v&agrave; thường v&oacute;n cục nhanh hơn loại chưa lọc. Loại thứ 2 l&agrave; mật được xử l&yacute; bằng phương ph&aacute;p lọc dưới &aacute;p suất cao để loại bỏ tất cả chất rắn v&agrave; bột phấn hoa. Mật n&agrave;y rất sạch v&agrave; thường được đ&oacute;ng chai b&aacute;n ở si&ecirc;u thị, hiệu thuốc v&igrave; c&oacute; tuổi thọ cao hơn.</p>\r\n\r\n<p>Tr&ecirc;n mạng x&atilde; hội facebook, theo quảng c&aacute;o của chị T, chị mới mua được của người d&acirc;n tộc tr&ecirc;n Cao Bằng một tổ ong rừng vắt được 17 l&iacute;t mật, gi&aacute; chị b&aacute;n tới tay người ti&ecirc;u d&ugrave;ng l&agrave; 1 triệu đồng/l&iacute;t. Để tăng độ hot của sản phẩm, chị T c&ograve;n ghi ch&uacute; lại trong quảng c&aacute;o: &quot;Mỗi người chỉ được mua tối đa 2 l&iacute;t với mục đ&iacute;ch c&ograve;n để chia sẻ cho những người kh&aacute;c c&oacute; cơ hội d&ugrave;ng mật xịn...&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giống chị T, chị Trần Ngọc Thảo rao b&aacute;n tr&ecirc;n Hội L&agrave;m cha mẹ mật ong đ&aacute;, loại mật được ong l&agrave;m tổ tr&ecirc;n đ&aacute; v&ocirc;i rất hiếm, gi&aacute; b&aacute;n mỗi l&iacute;t mật l&agrave; 800.000 đồng. Tuy nhi&ecirc;n, theo người b&aacute;n, người mua mật ong đ&aacute; c&oacute; thể đặt h&agrave;ng trước 1 tuần để người b&aacute;n thu gom. Những người b&aacute;n mật ong đều cam kết: mật xịn, nguy&ecirc;n chất, kh&ocirc;ng pha đường.... v&agrave; sẵn s&agrave;ng cho kiểm tra thử.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo t&igrave;m hiểu của PV Chất lượng Việt Nam, hiện nay tr&ecirc;n thị trường, gi&aacute; mật ong rao động phổ biến l&agrave; 200.000 - 300.000 đồng/l&iacute;t đối với mật ong nu&ocirc;i. 700.000 - 1 triệu đồng/l&iacute;t mật ong rừng. Tuy nhi&ecirc;n, giữa hai loại mật ong n&agrave;y kh&ocirc;ng c&oacute; điểm g&igrave; kh&aacute;c biệt ngo&agrave;i t&ecirc;n gọi nguồn gốc m&agrave; người b&aacute;n g&aacute;n cho.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo chia sẻ của &ocirc;ng Trịnh H&oacute;a - bản Mường Hung - S&ocirc;ng M&atilde;, Sơn La, người nu&ocirc;i ong l&acirc;u năm tr&ecirc;n đất T&acirc;y Bắc, gi&aacute; mật ong c&ograve;n dựa theo loại mật ong th&ocirc;ng qua quy tr&igrave;nh xử l&yacute; m&agrave; c&oacute; những mức gi&aacute; kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo &ocirc;ng H&oacute;a, loại mật được lọc qua một tấm lưới để loại bỏ s&aacute;p ong nhưng vẫn giữ lại phấn hoa. Do chứa phấn hoa n&ecirc;n m&agrave;u của n&oacute; tr&ocirc;ng mờ đục, v&agrave; thường v&oacute;n cục nhanh hơn loại chưa lọc. Loại thứ 2 l&agrave; mật được xử l&yacute; bằng phương ph&aacute;p lọc dưới &aacute;p suất cao để loại bỏ tất cả chất rắn v&agrave; bột phấn hoa. Mật n&agrave;y rất sạch v&agrave; thường được đ&oacute;ng chai b&aacute;n ở si&ecirc;u thị, hiệu thuốc v&igrave; c&oacute; tuổi thọ cao hơn.</p>\r\n\r\n<p>Tr&ecirc;n mạng x&atilde; hội facebook, theo quảng c&aacute;o của chị T, chị mới mua được của người d&acirc;n tộc tr&ecirc;n Cao Bằng một tổ ong rừng vắt được 17 l&iacute;t mật, gi&aacute; chị b&aacute;n tới tay người ti&ecirc;u d&ugrave;ng l&agrave; 1 triệu đồng/l&iacute;t. Để tăng độ hot của sản phẩm, chị T c&ograve;n ghi ch&uacute; lại trong quảng c&aacute;o: &quot;Mỗi người chỉ được mua tối đa 2 l&iacute;t với mục đ&iacute;ch c&ograve;n để chia sẻ cho những người kh&aacute;c c&oacute; cơ hội d&ugrave;ng mật xịn...&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giống chị T, chị Trần Ngọc Thảo rao b&aacute;n tr&ecirc;n Hội L&agrave;m cha mẹ mật ong đ&aacute;, loại mật được ong l&agrave;m tổ tr&ecirc;n đ&aacute; v&ocirc;i rất hiếm, gi&aacute; b&aacute;n mỗi l&iacute;t mật l&agrave; 800.000 đồng. Tuy nhi&ecirc;n, theo người b&aacute;n, người mua mật ong đ&aacute; c&oacute; thể đặt h&agrave;ng trước 1 tuần để người b&aacute;n thu gom. Những người b&aacute;n mật ong đều cam kết: mật xịn, nguy&ecirc;n chất, kh&ocirc;ng pha đường.... v&agrave; sẵn s&agrave;ng cho kiểm tra thử.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo t&igrave;m hiểu của PV Chất lượng Việt Nam, hiện nay tr&ecirc;n thị trường, gi&aacute; mật ong rao động phổ biến l&agrave; 200.000 - 300.000 đồng/l&iacute;t đối với mật ong nu&ocirc;i. 700.000 - 1 triệu đồng/l&iacute;t mật ong rừng. Tuy nhi&ecirc;n, giữa hai loại mật ong n&agrave;y kh&ocirc;ng c&oacute; điểm g&igrave; kh&aacute;c biệt ngo&agrave;i t&ecirc;n gọi nguồn gốc m&agrave; người b&aacute;n g&aacute;n cho.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo chia sẻ của &ocirc;ng Trịnh H&oacute;a - bản Mường Hung - S&ocirc;ng M&atilde;, Sơn La, người nu&ocirc;i ong l&acirc;u năm tr&ecirc;n đất T&acirc;y Bắc, gi&aacute; mật ong c&ograve;n dựa theo loại mật ong th&ocirc;ng qua quy tr&igrave;nh xử l&yacute; m&agrave; c&oacute; những mức gi&aacute; kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo &ocirc;ng H&oacute;a, loại mật được lọc qua một tấm lưới để loại bỏ s&aacute;p ong nhưng vẫn giữ lại phấn hoa. Do chứa phấn hoa n&ecirc;n m&agrave;u của n&oacute; tr&ocirc;ng mờ đục, v&agrave; thường v&oacute;n cục nhanh hơn loại chưa lọc. Loại thứ 2 l&agrave; mật được xử l&yacute; bằng phương ph&aacute;p lọc dưới &aacute;p suất cao để loại bỏ tất cả chất rắn v&agrave; bột phấn hoa. Mật n&agrave;y rất sạch v&agrave; thường được đ&oacute;ng chai b&aacute;n ở si&ecirc;u thị, hiệu thuốc v&igrave; c&oacute; tuổi thọ cao hơn.</p>\r\n', 'upload/tintuc/tt2.jpg', NULL),
(7, 'Hãy uống mật ong trước khi ngủ', 'Hỗn hợp glycofuse trong mật ong sẽ duy trì lượng glucose khi chúng ta ngủ, giúp chúng ta không bị tỉnh giấc ban đêm.  Việc nhấp một muỗng mật ong nguyên chất trước khi ngủ có thể là một phương pháp cải thiện... ', '<p>Hỗn hợp glycofuse trong mật ong sẽ duy tr&igrave; lượng glucose khi ch&uacute;ng ta ngủ, gi&uacute;p ch&uacute;ng ta kh&ocirc;ng bị tỉnh giấc ban đ&ecirc;m.&nbsp; Việc nhấp một muỗng mật ong nguy&ecirc;n chất trước khi ngủ c&oacute; thể l&agrave; một phương ph&aacute;p cải thiện...&nbsp;</p>\r\n\r\n<p>Hỗn hợp glycofuse trong mật ong sẽ duy tr&igrave; lượng glucose khi ch&uacute;ng ta ngủ, gi&uacute;p ch&uacute;ng ta kh&ocirc;ng bị tỉnh giấc ban đ&ecirc;m.&nbsp; Việc nhấp một muỗng mật ong nguy&ecirc;n chất trước khi ngủ c&oacute; thể l&agrave; một phương ph&aacute;p cải thiện...&nbsp;</p>\r\n\r\n<p>Hỗn hợp glycofuse trong mật ong sẽ duy tr&igrave; lượng glucose khi ch&uacute;ng ta ngủ, gi&uacute;p ch&uacute;ng ta kh&ocirc;ng bị tỉnh giấc ban đ&ecirc;m.&nbsp; Việc nhấp một muỗng mật ong nguy&ecirc;n chất trước khi ngủ c&oacute; thể l&agrave; một phương ph&aacute;p cải thiện...&nbsp;</p>\r\n\r\n<p>Hỗn hợp glycofuse trong mật ong sẽ duy tr&igrave; lượng glucose khi ch&uacute;ng ta ngủ, gi&uacute;p ch&uacute;ng ta kh&ocirc;ng bị tỉnh giấc ban đ&ecirc;m.&nbsp; Việc nhấp một muỗng mật ong nguy&ecirc;n chất trước khi ngủ c&oacute; thể l&agrave; một phương ph&aacute;p cải thiện...&nbsp;</p>\r\n\r\n<p>Hỗn hợp glycofuse trong mật ong sẽ duy tr&igrave; lượng glucose khi ch&uacute;ng ta ngủ, gi&uacute;p ch&uacute;ng ta kh&ocirc;ng bị tỉnh giấc ban đ&ecirc;m.&nbsp; Việc nhấp một muỗng mật ong nguy&ecirc;n chất trước khi ngủ c&oacute; thể l&agrave; một phương ph&aacute;p cải thiện...&nbsp;</p>\r\n', 'upload/tintuc/tt5.jpg', NULL),
(8, 'Chọn mua mật ong như thế nào cho đúng?', 'Nếu bạn nhờ Google tìm kiếm “mật ong rừng”, nó sẽ trả về 413.000 kết quả. Tương tự, sẽ có khoảng 394.000 kết quả cho “mật ong nguyên chất”, 74.700 kết quả cho “mật ong thật”, nhưng chỉ có 10.000 kết quả cho “mật ong chín” mà thôi. Những con số đó nói', '<p>Nếu bạn nhờ Google t&igrave;m kiếm &ldquo;mật ong rừng&rdquo;, n&oacute; sẽ trả về 413.000 kết quả. Tương tự, sẽ c&oacute; khoảng 394.000 kết quả cho &ldquo;mật ong nguy&ecirc;n chất&rdquo;, 74.700 kết quả cho &ldquo;mật ong thật&rdquo;, nhưng chỉ c&oacute; 10.000 kết quả cho &ldquo;mật ong ch&iacute;n&rdquo; m&agrave; th&ocirc;i. Những con số đ&oacute; n&oacute;i l&ecirc;n điều g&igrave;?&nbsp;</p>\r\n\r\n<p><br />\r\nB&agrave; Nguyễn Phương Lan, Gi&aacute;m đốc c&ocirc;ng ty TNHH Zemlya, chủ sở hữu nh&atilde;n hiệu mật ong ch&iacute;n Honimore nhận định: &ldquo;Kết quả t&igrave;m kiếm của Google những con số tr&ecirc;n phản &aacute;nh mức độ ho&agrave;i nghi của người ti&ecirc;u d&ugrave;ng về chất lượng của mật ong. Cứ nghe n&oacute;i đến mật ong, người Việt m&igrave;nh sẽ hỏi ngay: C&oacute; nguy&ecirc;n chất kh&ocirc;ng? C&oacute; thật kh&ocirc;ng? C&oacute; pha g&igrave; kh&ocirc;ng? C&oacute; cho ong ăn đường kh&ocirc;ng? Thật ra, ngoại trừ những loại mật ong kh&ocirc;ng r&otilde; nguồn gốc, mật ong c&oacute; thương hiệu của c&aacute;c c&ocirc;ng ty, ph&acirc;n phối trong c&aacute;c si&ecirc;u thị hay trung t&acirc;m mua sắm lớn đều l&agrave; mật ong thật, c&oacute; kh&aacute;c nhau th&igrave; chỉ l&agrave; về chất lượng v&agrave; hương vị m&agrave; th&ocirc;i&rdquo;.</p>\r\n', 'upload/tintuc/tt3.jpg', NULL),
(9, '10 lợi ích của mật ong đối với sức khỏe', 'Nếu bạn nhờ Google tìm kiếm “mật ong rừng”, nó sẽ trả về 413.000 kết quả. Tương tự, sẽ có khoảng 394.000 kết quả cho “mật ong nguyên chất”, 74.700 kết quả cho “mật ong thật”, nhưng chỉ có 10.000 kết quả cho “mật ong chín” mà thôi. Những con số đó nói', '<p>1. Ngăn ngừa ung thư v&agrave; bệnh tim mạch</p>\r\n\r\n<p>Mật ong chứa hai loại chất cực k&igrave; qu&iacute; đ&oacute; l&agrave; flavonoids v&agrave; antioxidants gi&uacute;p cơ thể giảm nguy cơ bị bệnh ung thư v&agrave; tim mạch. Flavonoids (c&oacute; thể gọi l&agrave; Vitamin P) c&oacute; t&aacute;c dụng l&agrave;m chậm qu&aacute; tr&igrave;nh oxy h&oacute;a v&agrave; l&agrave;m bền th&agrave;nh mạch tim. Antioxidants l&agrave; chất m&agrave; n&oacute; chống lại độc tố tấn c&ocirc;ng DNA (độc tố n&agrave;y c&ograve;n gọi l&agrave; &ldquo;gốc tự do&rdquo; - Free Radical) do đ&oacute; ph&ograve;ng được ung thư v&agrave; giảm sự gi&agrave; nua.</p>\r\n\r\n<p>1. Ngăn ngừa ung thư v&agrave; bệnh tim mạch</p>\r\n\r\n<p>Mật ong chứa hai loại chất cực k&igrave; qu&iacute; đ&oacute; l&agrave; flavonoids v&agrave; antioxidants gi&uacute;p cơ thể giảm nguy cơ bị bệnh ung thư v&agrave; tim mạch. Flavonoids (c&oacute; thể gọi l&agrave; Vitamin P) c&oacute; t&aacute;c dụng l&agrave;m chậm qu&aacute; tr&igrave;nh oxy h&oacute;a v&agrave; l&agrave;m bền th&agrave;nh mạch tim. Antioxidants l&agrave; chất m&agrave; n&oacute; chống lại độc tố tấn c&ocirc;ng DNA (độc tố n&agrave;y c&ograve;n gọi l&agrave; &ldquo;gốc tự do&rdquo; - Free Radical) do đ&oacute; ph&ograve;ng được ung thư v&agrave; giảm sự gi&agrave; nua.</p>\r\n\r\n<p>1. Ngăn ngừa ung thư v&agrave; bệnh tim mạch</p>\r\n\r\n<p>Mật ong chứa hai loại chất cực k&igrave; qu&iacute; đ&oacute; l&agrave; flavonoids v&agrave; antioxidants gi&uacute;p cơ thể giảm nguy cơ bị bệnh ung thư v&agrave; tim mạch. Flavonoids (c&oacute; thể gọi l&agrave; Vitamin P) c&oacute; t&aacute;c dụng l&agrave;m chậm qu&aacute; tr&igrave;nh oxy h&oacute;a v&agrave; l&agrave;m bền th&agrave;nh mạch tim. Antioxidants l&agrave; chất m&agrave; n&oacute; chống lại độc tố tấn c&ocirc;ng DNA (độc tố n&agrave;y c&ograve;n gọi l&agrave; &ldquo;gốc tự do&rdquo; - Free Radical) do đ&oacute; ph&ograve;ng được ung thư v&agrave; giảm sự gi&agrave; nua.</p>\r\n\r\n<p>1. Ngăn ngừa ung thư v&agrave; bệnh tim mạch</p>\r\n\r\n<p>Mật ong chứa hai loại chất cực k&igrave; qu&iacute; đ&oacute; l&agrave; flavonoids v&agrave; antioxidants gi&uacute;p cơ thể giảm nguy cơ bị bệnh ung thư v&agrave; tim mạch. Flavonoids (c&oacute; thể gọi l&agrave; Vitamin P) c&oacute; t&aacute;c dụng l&agrave;m chậm qu&aacute; tr&igrave;nh oxy h&oacute;a v&agrave; l&agrave;m bền th&agrave;nh mạch tim. Antioxidants l&agrave; chất m&agrave; n&oacute; chống lại độc tố tấn c&ocirc;ng DNA (độc tố n&agrave;y c&ograve;n gọi l&agrave; &ldquo;gốc tự do&rdquo; - Free Radical) do đ&oacute; ph&ograve;ng được ung thư v&agrave; giảm sự gi&agrave; nua.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'upload/tintuc/tt6.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doitac`
--
ALTER TABLE `doitac`
  ADD PRIMARY KEY (`dt_ma`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`dh_ma`),
  ADD KEY `dondathang_khachhang_idx` (`kh_tendangnhap`);

--
-- Indexes for table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`gt_ma`);

--
-- Indexes for table `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD PRIMARY KEY (`hsp_ma`),
  ADD KEY `fk_hinhsanpham_sanpham1_idx` (`sp_ma`);

--
-- Indexes for table `huongdan`
--
ALTER TABLE `huongdan`
  ADD PRIMARY KEY (`hd_ma`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_tendangnhap`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`lh_ma`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`lsp_ma`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`lg_ma`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mail_ma`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`nsx_ma`);

--
-- Indexes for table `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`qt_ma`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_ma`),
  ADD KEY `sanpham_loaisanpham_idx` (`lsp_ma`),
  ADD KEY `sanpham_nhasanxuat_idx` (`nsx_ma`),
  ADD KEY `sanpham_khuyenmai_idx` (`sp_anhdd`);

--
-- Indexes for table `sanpham_dondathang`
--
ALTER TABLE `sanpham_dondathang`
  ADD PRIMARY KEY (`sp_dh_ma`),
  ADD KEY `sanpham_donhang_sanpham_idx` (`sp_ma`),
  ADD KEY `sanpham_donhang_dondathang_idx` (`dh_ma`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`ss_ma`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`tin_ma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doitac`
--
ALTER TABLE `doitac`
  MODIFY `dt_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `dh_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `gt_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  MODIFY `hsp_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `huongdan`
--
ALTER TABLE `huongdan`
  MODIFY `hd_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `lh_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `lsp_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `lg_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `mail_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `nsx_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quantri`
--
ALTER TABLE `quantri`
  MODIFY `qt_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `sanpham_dondathang`
--
ALTER TABLE `sanpham_dondathang`
  MODIFY `sp_dh_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `ss_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `tin_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`kh_tendangnhap`) REFERENCES `khachhang` (`kh_tendangnhap`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD CONSTRAINT `hinhsanpham_ibfk_1` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`lsp_ma`) REFERENCES `loaisanpham` (`lsp_ma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`nsx_ma`) REFERENCES `nhasanxuat` (`nsx_ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham_dondathang`
--
ALTER TABLE `sanpham_dondathang`
  ADD CONSTRAINT `sanpham_dondathang_ibfk_1` FOREIGN KEY (`dh_ma`) REFERENCES `dondathang` (`dh_ma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_dondathang_ibfk_2` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tuyendung`
--
CREATE DATABASE IF NOT EXISTS `tuyendung` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tuyendung`;

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `loaiuv` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`loaiuv`, `tenloai`) VALUES
('CoKinhNghiem', 'Có kinh nghiệm'),
('MoiTotNghiep', 'Mới tốt nghiệp'),
('SinhVienThucTap', 'Thực tập');

-- --------------------------------------------------------

--
-- Table structure for table `quantri`
--

CREATE TABLE `quantri` (
  `qt_ma` int(5) NOT NULL,
  `qt_user` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `qt_pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `qt_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qt_lv` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quantri`
--

INSERT INTO `quantri` (`qt_ma`, `qt_user`, `qt_pass`, `qt_name`, `qt_lv`) VALUES
(1, 'admin', 'admin', 'lê hông chiến', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tuyendung`
--

CREATE TABLE `tuyendung` (
  `td_ma` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `td_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `td_vitri` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `td_loai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `td_goi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `td_soluong` int(3) NOT NULL,
  `td_ngaydang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuyendung`
--

INSERT INTO `tuyendung` (`td_ma`, `td_ten`, `td_vitri`, `td_loai`, `td_goi`, `td_soluong`, `td_ngaydang`) VALUES
('6MGJR', 'Cáº§n tuyá»ƒn 2 nhÃ¢n viÃªn thiáº¿t káº¿', '1', 'Others', 'A', 3, '2016-04-13'),
('A4EJF', 'Tuyá»ƒn Sinh ViÃªn thá»±c táº­p láº­p trÃ¬nh á»©ng dá»¥ng windows', '1', 'Dev', 'C', 0, '2016-03-29'),
('BWDE9', 'Cáº§n tuyá»ƒn nhÃ¢n viÃªn sá»­a chá»¯a', '1', 'Others', 'B', 0, '2016-03-11'),
('BY806', 'Tuyá»ƒn NhÃ¢n viÃªn kiá»ƒm tra pháº§n má»m', '1', 'Test', 'C', 1, '2016-03-29'),
('IMHJC', 'Tuyá»ƒn Sinh ViÃªn Thá»±c Táº­p Web', '1', 'Dev', 'C', 1, '2016-03-29'),
('JQ4XO', 'Tuyá»ƒn ThÆ° KÃ­ cÃ³ kinh nghiá»‡m 3 nÄƒm trá»Ÿ lÃªn', '1', 'Others', 'A', 0, '2016-03-29'),
('M6MXQ', 'Tuyá»ƒn nhÃ¢n viÃªn quáº£n trá»‹ máº¡ng cÃ³ kinh nghiá»‡m ', '1', 'Others', 'A', 0, '2016-03-29'),
('M7QZR', 'Cáº§n tuyá»ƒn 5 NhÃ¢n viÃªn thiáº¿t káº¿ web', '1', 'Others', 'B', 0, '2016-03-08'),
('PC5N9', 'Tuyá»ƒn NhÃ¢n ViÃªn Láº­p trÃ¬nh di Ä‘á»™ng rÃ nh nghá»', '1', 'Dev', 'A', 1, '2016-03-29'),
('V459X', 'Tuyá»ƒn NhÃ¢n ViÃªn Báº£o TrÃ¬', '1', 'Others', 'B', 0, '2016-03-29'),
('YAVUG', 'Tuyá»ƒn TrÆ°á»Ÿng Quáº£n trá»‹ máº¡ng', '2', 'Others', 'A', 0, '2016-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `ungvien`
--

CREATE TABLE `ungvien` (
  `uv_ma` int(3) NOT NULL,
  `uv_ho` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `uv_ten` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `uv_namsinh` int(4) NOT NULL,
  `uv_diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uv_cmnd` int(20) NOT NULL,
  `uv_sdt` int(20) NOT NULL,
  `uv_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `uv_nam_exp` int(3) NOT NULL,
  `uv_kynang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uv_nam_tn` int(5) NOT NULL,
  `uv_loai_tn` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `uv_truong_tn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uv_chuyennganh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `uv_hocky` int(5) NOT NULL,
  `uv_tentruong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uv_trangthai` int(2) NOT NULL,
  `loaiuv` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `td_ma` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ungvien`
--

INSERT INTO `ungvien` (`uv_ma`, `uv_ho`, `uv_ten`, `uv_namsinh`, `uv_diachi`, `uv_cmnd`, `uv_sdt`, `uv_email`, `uv_nam_exp`, `uv_kynang`, `uv_nam_tn`, `uv_loai_tn`, `uv_truong_tn`, `uv_chuyennganh`, `uv_hocky`, `uv_tentruong`, `uv_trangthai`, `loaiuv`, `td_ma`) VALUES
(39, 'Nguyá»…n ', 'Báº£o VÄƒn', 1992, 'Tp. CÃ  Mau', 364248576, 1697857463, 'lechien@gmail.com', 2, 'Äá»“ Há»a', 0, '', '', '', 0, '', 2, 'CoKinhNghiem', '6MGJR'),
(41, 'LÃª', 'Há»“ng Chiáº¿n', 1992, 'Huyá»‡n Cá» Äá», TP. Cáº§n ThÆ¡', 362381491, 1696455979, 'lechien789@gmail.com', 0, '', 2016, 'gioi', 'Äáº¡i Há»c Cáº§n ThÆ¡', '', 0, '', 1, 'MoiTotNghiep', NULL),
(42, 'VÃµ', 'HoÃ ng Phi', 1992, 'Tp. Háº­u Giang', 256354729, 939818647, 'vohoangphi@gmail.com', 0, '', 0, '', '', 'Quáº£n trá»‹ máº¡ng', 5, 'Äáº¡i Há»c TÃ¢y ÄÃ´', 1, 'SinhVienThucTap', NULL),
(43, 'Tráº§n', 'ThÃ¡i TÃº', 1991, 'PhÃº Quá»‘c, TP. Ráº¡ch GiÃ¡, KiÃªn Giang', 348576984, 939758674, 'thaimy@yahoo.com', 0, '', 0, '', '', 'Tin há»c á»©ng dá»¥ng', 6, 'Cao Äáº³ng Cáº§n ThÆ¡', 2, 'SinhVienThucTap', 'IMHJC'),
(45, 'Nguyá»…n', 'Tuáº¥n Anh', 1994, 'CÃ¡i Vá»“n, BÃ¬nh Minh, VÄ©nh Long', 366476542, 927364857, 'tuananh@student.ctu.edu.vn', 0, '', 0, '', '', 'Há»‡ Thá»‘ng ThÃ´ng Tin', 5, 'Äáº¡i Há»c Cáº§n ThÆ¡', 2, 'SinhVienThucTap', 'BY806'),
(48, 'TrÆ°Æ¡ng', 'Quá»‘c DÆ°Æ¡ng', 1992, 'ThÃ¡p MÆ°á»i, Äá»“ng ThÃ¡p', 256354874, 2147483647, 'quocduong@gmail.com', 3, 'Báº£o TrÃ¬ MÃ¡y', 0, '', '', '', 0, '', 2, 'CoKinhNghiem', '6MGJR'),
(49, 'LÃª', 'HoÃ ng Tuáº¥n', 1992, 'H. Cá» Äá», Tp. Cáº§n ThÆ¡', 365284756, 1928476574, 'lechien@gmail.com', 2, 'Láº­p TrÃ¬nh Web', 0, '', '', '', 0, '', 2, 'CoKinhNghiem', '6MGJR'),
(51, 'Nguyá»…n', 'Thanh Sang', 1995, 'Báº¿n Tre', 465376475, 1847575759, 'thanhsang@yahoo.com', 0, '', 2016, 'xuatsac', 'Äáº¡i Há»c TÃ¢y ÄÃ´', '', 0, '', 1, 'MoiTotNghiep', NULL),
(52, 'LÃª', 'Há»“ng Phong', 1992, 'TP. HCM', 368273653, 1647389894, 'hongphong@gmai.com', 0, '', 0, '', '', 'CÃ´ng Nghá»‡ ThÃ´ng Tin', 3, 'Äáº¡i Há»c Cáº§n ThÆ¡', 1, 'SinhVienThucTap', NULL),
(53, 'Nguyá»…n ', 'VÄƒn NÄƒm', 1993, 'An Giang', 362381374, 1696455979, 'vannam@gmail.com', 3, 'Láº­p TrÃ¬nh Web', 0, '', '', '', 0, '', 1, 'CoKinhNghiem', NULL),
(54, 'Tráº§n ', 'VÄƒn Báº±ng', 1992, 'SÃ³c TrÄƒng', 364783728, 1732638364, 'vanbang@gmai.com', 0, '', 1992, 'gioi', 'Äáº¡i Há»c TÃ¢y ÄÃ´', '', 0, '', 1, 'MoiTotNghiep', NULL),
(55, 'Tráº§n', 'Minh Thuáº­n', 1992, 'ChÃ¢u Ä‘á»‘c, An Giang', 362381653, 1696455738, 'minhthuan@gmai.com', 0, '', 2016, 'gioi', 'Äáº¡i Há»c TÃ¢y ÄÃ´', '', 0, '', 1, 'MoiTotNghiep', NULL),
(56, 'Nguyá»…n', 'ThÃ nh CÃ´ng', 1993, 'Tp. Long XuyÃªn', 367625345, 1698765345, 'thanhcong@gmail.com', 5, 'Äá»“ Há»a', 0, '', '', '', 0, '', 1, 'CoKinhNghiem', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`loaiuv`);

--
-- Indexes for table `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`qt_ma`);

--
-- Indexes for table `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`td_ma`);

--
-- Indexes for table `ungvien`
--
ALTER TABLE `ungvien`
  ADD PRIMARY KEY (`uv_ma`),
  ADD KEY `fk_loaiuv` (`loaiuv`),
  ADD KEY `td_ma` (`td_ma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quantri`
--
ALTER TABLE `quantri`
  MODIFY `qt_ma` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ungvien`
--
ALTER TABLE `ungvien`
  MODIFY `uv_ma` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ungvien`
--
ALTER TABLE `ungvien`
  ADD CONSTRAINT `fk_loaiuv` FOREIGN KEY (`loaiuv`) REFERENCES `loai` (`loaiuv`),
  ADD CONSTRAINT `ungvien_ibfk_1` FOREIGN KEY (`td_ma`) REFERENCES `tuyendung` (`td_ma`) ON UPDATE CASCADE;
--
-- Database: `user_manager`
--
CREATE DATABASE IF NOT EXISTS `user_manager` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `user_manager`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_lv` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`, `user_lv`) VALUES
(2, 'admin', 'admin', 1),
(3, 'member1', '123456', 2),
(4, 'member2', '123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
