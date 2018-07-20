-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-20 12:36:47
-- 服务器版本： 5.5.53
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hykindergarten`
--

-- --------------------------------------------------------

--
-- 表的结构 `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `Id` int(11) NOT NULL,
  `Ip` varchar(200) DEFAULT NULL COMMENT '访问Ip',
  `type` int(11) DEFAULT NULL COMMENT '0表示电脑',
  `Browser` varchar(200) DEFAULT NULL COMMENT '被访问网页',
  `AccessType` varchar(200) DEFAULT NULL COMMENT '访问浏览器类型',
  `address` varchar(200) NOT NULL COMMENT '访问地址',
  `os` varchar(200) DEFAULT NULL COMMENT '访问操作类型',
  `time` datetime DEFAULT NULL COMMENT ' 访问时间'
) ENGINE=MyISAM AUTO_INCREMENT=537 DEFAULT CHARSET=utf8 COMMENT='访问记录';

--
-- 转存表中的数据 `access`
--

INSERT INTO `access` (`Id`, `Ip`, `type`, `Browser`, `AccessType`, `address`, `os`, `time`) VALUES
(1, '127.0.0.1', 0, '/zw/', 'Chrome', '未知', NULL, '2018-01-25 10:58:54'),
(2, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', '未知', NULL, '2018-01-25 11:00:47'),
(3, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Safari', '未知', NULL, '2018-01-25 11:02:29'),
(4, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Safari', '未知', 'iOS', '2018-01-25 11:17:15'),
(5, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', '未知', 'AndroidOS', '2018-01-25 11:17:26'),
(6, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', '未知', 'Windows', '2018-01-25 11:17:58'),
(7, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'IE', '未知', 'Windows', '2017-12-21 11:18:15'),
(8, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', '未知', 'Windows', '2018-01-25 11:45:53'),
(9, '127.0.0.1', 0, 'http://phptest.com:80/zw/productlist', 'Chrome', '未知', 'Windows', '2018-01-25 11:46:54'),
(10, '127.0.0.1', 0, 'http://phptest.com:80/zw/productlist', 'Chrome', '未知', 'Windows', '2018-01-25 13:12:33'),
(11, '127.0.0.1', 0, 'http://phptest.com:80/zw/product', 'Chrome', '未知', 'Windows', '2018-01-25 13:12:51'),
(12, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', '未知', '-内网IP-内网IP', 'Windows', '2018-01-25 14:36:21'),
(13, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516862810284', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 14:46:50'),
(14, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516862810284', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:32:40'),
(15, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516862810284', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:33:07'),
(16, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516862810284', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:34:57'),
(17, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516862810284', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:35:06'),
(18, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:35:31'),
(19, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:35:45'),
(20, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:36:09'),
(21, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:36:38'),
(22, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:36:49'),
(23, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:37:32'),
(24, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/aboutus', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:38:46'),
(25, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:39:04'),
(26, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:44:08'),
(27, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:44:15'),
(28, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:44:40'),
(29, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:45:00'),
(30, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:45:25'),
(31, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:49:43'),
(32, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:50:10'),
(33, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:50:28'),
(34, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:51:08'),
(35, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 15:52:32'),
(36, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 16:03:30'),
(37, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 16:08:53'),
(38, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516868444483', '未知', '-内网IP-内网IP', 'Windows', '2018-01-25 16:20:45'),
(39, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 16:50:56'),
(40, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 16:51:27'),
(41, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:45:11'),
(42, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:45:24'),
(43, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:47:39'),
(44, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:49:32'),
(45, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:49:34'),
(46, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:49:53'),
(47, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:50:11'),
(48, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:50:22'),
(49, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:50:38'),
(50, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:51:09'),
(51, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:51:55'),
(52, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:52:05'),
(53, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:52:37'),
(54, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:52:57'),
(55, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:53:09'),
(56, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:53:39'),
(57, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:54:05'),
(58, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:54:20'),
(59, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:54:48'),
(60, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:56:12'),
(61, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:56:37'),
(62, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:57:33'),
(63, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:58:30'),
(64, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:58:49'),
(65, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 17:59:50'),
(66, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:00:10'),
(67, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:00:24'),
(68, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:03:10'),
(69, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:04:00'),
(70, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:04:15'),
(71, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:06:04'),
(72, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:06:15'),
(73, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:06:39'),
(74, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:06:54'),
(75, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:07:24'),
(76, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:07:24'),
(77, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:07:30'),
(78, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:07:53'),
(79, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:08:27'),
(80, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:08:59'),
(81, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:10:29'),
(82, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:11:09'),
(83, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:11:57'),
(84, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:14:06'),
(85, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:14:15'),
(86, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:14:36'),
(87, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:15:00'),
(88, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:16:07'),
(89, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:16:23'),
(90, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:16:45'),
(91, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:16:54'),
(92, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:17:45'),
(93, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:18:19'),
(94, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:19:14'),
(95, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:19:30'),
(96, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:20:13'),
(97, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:21:02'),
(98, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:22:16'),
(99, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:22:30'),
(100, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:22:53'),
(101, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:23:13'),
(102, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:23:47'),
(103, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:24:12'),
(104, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:25:28'),
(105, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-25 18:27:39'),
(106, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:22:49'),
(107, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:26:56'),
(108, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:27:33'),
(109, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:27:39'),
(110, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:28:09'),
(111, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:28:23'),
(112, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:28:39'),
(113, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:29:36'),
(114, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:30:57'),
(115, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:33:13'),
(116, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:34:00'),
(117, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:34:46'),
(118, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:35:09'),
(119, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:37:40'),
(120, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:38:10'),
(121, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:39:45'),
(122, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:44:27'),
(123, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:44:41'),
(124, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:56:38'),
(125, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 09:57:04'),
(126, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:00:51'),
(127, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:01:36'),
(128, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:02:06'),
(129, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:03:23'),
(130, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-26 10:03:54'),
(131, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-26 10:04:33'),
(132, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:05:47'),
(133, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:09:12'),
(134, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:09:31'),
(135, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:18:26'),
(136, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:18:56'),
(137, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:21:05'),
(138, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:21:51'),
(139, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516929753141', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:29:11'),
(140, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1516933984135', '未知', '-内网IP-内网IP', 'Windows', '2018-01-26 10:33:04'),
(141, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517189292852', 'Chrome', '-内网IP-内网IP', 'Windows', '2018-01-29 09:28:14'),
(142, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:02:05'),
(143, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/productlist/12', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:02:07'),
(144, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/productlist/11', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:02:08'),
(145, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/productlist/6', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:02:10'),
(146, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/productlist/6', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:03:25'),
(147, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/details/36', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:03:27'),
(148, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/details/36', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:00'),
(149, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:05'),
(150, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:07'),
(151, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:08'),
(152, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:34'),
(153, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:34'),
(154, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:35'),
(155, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:04:56'),
(156, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:05:00'),
(157, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:05:22'),
(158, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:05:35'),
(159, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:05:39'),
(160, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:05:55'),
(161, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news/1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:05:58'),
(162, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/new/20', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:06:01'),
(163, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news/1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:06:03'),
(164, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:06:05'),
(165, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/new/21', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:06:07'),
(166, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/new/21', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:06:48'),
(167, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/new/21', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:07:03'),
(168, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:07:16'),
(169, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:09:23'),
(170, '127.0.0.1', 1, 'http://phptest.com:80/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:09:25'),
(171, '127.0.0.1', 1, 'http://phptest.com:80/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:09:38'),
(172, '127.0.0.1', 1, 'http://phptest.com:80/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:09:40'),
(173, '127.0.0.1', 1, 'http://phptest.com:80/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:10:06'),
(174, '127.0.0.1', 1, 'http://phptest.com:80/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:10:12'),
(175, '127.0.0.1', 1, 'http://phptest.com:80/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:11:28'),
(176, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:12:54'),
(177, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:12:55'),
(178, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:12:56'),
(179, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:14:20'),
(180, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:14:34'),
(181, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:14:47'),
(182, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:16:27'),
(183, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:16:42'),
(184, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:16:57'),
(185, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:17:11'),
(186, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:17:47'),
(187, '127.0.0.1', 0, 'http://phptest.com:80/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:17:51'),
(188, '127.0.0.1', 0, 'http://phptest.com:80/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:17:56'),
(189, '127.0.0.1', 0, 'http://phptest.com:80/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:17:56'),
(190, '127.0.0.1', 0, 'http://phptest.com:80/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:18:02'),
(191, '127.0.0.1', 0, 'http://phptest.com:80/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:18:07'),
(192, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 11:18:32'),
(193, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:19:14'),
(194, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:21:46'),
(195, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:23:19'),
(196, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:26:07'),
(197, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 11:27:44'),
(198, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 13:59:33'),
(199, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:11:37'),
(200, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:11:43'),
(201, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:11:48'),
(202, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:11:55'),
(203, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:12:01'),
(204, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:12:34'),
(205, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:12:34'),
(206, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:12:41'),
(207, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:12:47'),
(208, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:14:23'),
(209, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:14:41'),
(210, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:14:46'),
(211, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:14:55'),
(212, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:15:16'),
(213, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:15:20'),
(214, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:15:23'),
(215, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:16:42'),
(216, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:16:45'),
(217, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:16:54'),
(218, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:16:57'),
(219, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:17:05'),
(220, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:17:06'),
(221, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:18:49'),
(222, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:27:21'),
(223, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517206297251', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:27:29'),
(224, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207775834', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:36:19'),
(225, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207775834', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:36:25'),
(226, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207775834', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:36:28'),
(227, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207775834', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:36:30'),
(228, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207810883', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:36:51'),
(229, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207810883', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:36:55'),
(230, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207810883', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:37:00'),
(231, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207810883', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:37:28'),
(232, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207810883', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:38:01'),
(233, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517207810883', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:38:03'),
(234, '127.0.0.1', 0, 'http://phptest.com:80/zw/', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:38:35'),
(235, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:38:44'),
(236, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:38:45'),
(237, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:38:58'),
(238, '127.0.0.1', 0, 'http://phptest.com:80/zw/', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:39:12'),
(239, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:39:18'),
(240, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'IE', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:39:21'),
(241, '127.0.0.1', 0, 'http://phptest.com:80/zw/', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 14:39:28'),
(242, '127.0.0.1', 0, 'http://phptest.com:80/zw/', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:06:25'),
(243, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:06:41'),
(244, '127.0.0.1', 0, 'http://phptest.com:80/zw/', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:06:47'),
(245, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517209614619', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:06:55'),
(246, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:16:44'),
(247, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:17:27'),
(248, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:17:41'),
(249, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:04'),
(250, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:17'),
(251, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:18'),
(252, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:18'),
(253, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:18'),
(254, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:18'),
(255, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(256, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(257, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(258, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(259, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(260, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(261, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:19'),
(262, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:20'),
(263, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:22'),
(264, '127.0.0.1', 0, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:28'),
(265, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517209614619', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:18:30'),
(266, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:22:40'),
(267, '127.0.0.1', 0, 'http://phptest.com:80/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:41:00'),
(268, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php?__hbt=1517211891499', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 15:44:52'),
(269, '127.0.0.1', 0, 'http://phptest.com:80/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:22:47'),
(270, '127.0.0.1', 0, 'http://phptest.com:80/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:27:01'),
(271, '127.0.0.1', 0, 'http://phptest.com:80/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:27:57'),
(272, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?page=2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:28:10'),
(273, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?page=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:28:45'),
(274, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?page=2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:28:48'),
(275, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?page=2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:29:24'),
(276, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?page=2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:31:06'),
(277, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?page=2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:31:43'),
(278, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:33:32'),
(279, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:33:38'),
(280, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:34:18'),
(281, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:34:29'),
(282, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:34:51'),
(283, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:35:03'),
(284, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:35:17'),
(285, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:36:17'),
(286, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:36:18'),
(287, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:36:19'),
(288, '127.0.0.1', 0, 'http://phptest.com:80/zw/news?p=1', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:36:32'),
(289, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:39:15'),
(290, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:43:06'),
(291, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:43:28'),
(292, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:44:12'),
(293, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:45:46'),
(294, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:51:56'),
(295, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:54:37'),
(296, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:55:33'),
(297, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 17:56:18'),
(298, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:06:53'),
(299, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:06:54'),
(300, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:07:18'),
(301, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:08:45'),
(302, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:08:46'),
(303, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:09:06'),
(304, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:09:15'),
(305, '127.0.0.1', 0, 'http://phptest.com:80/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-29 18:14:53'),
(306, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 18:23:40'),
(307, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 18:26:51'),
(308, '127.0.0.1', 1, 'http://phptest.com:80/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-29 18:27:47'),
(309, '127.0.0.1', 0, 'http://phptest.com:80/zw/index.php/index/post/access', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 09:43:58'),
(310, '127.0.0.1', 0, 'http://phptest.com:80/zw/index/post/access', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 09:44:36'),
(311, '127.0.0.1', 0, 'http://phptest.com:80/zw/index/post/access', 'Edge', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 09:46:23'),
(312, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 09:48:26'),
(313, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'AndroidOS', '2018-01-30 09:49:07'),
(314, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'iOS', '2018-01-30 09:49:25'),
(315, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Firefox', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 09:53:22'),
(316, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:13:08'),
(317, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:15:45'),
(318, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:15:47'),
(319, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:16:12'),
(320, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:28:56'),
(321, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:45:31'),
(322, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:45:33'),
(323, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:45:34'),
(324, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:30'),
(325, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:31'),
(326, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:33'),
(327, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:34'),
(328, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:35'),
(329, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:36'),
(330, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 10:51:37'),
(331, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 12:17:26'),
(332, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 12:17:43'),
(333, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'iOS', '2018-01-30 12:17:46'),
(334, '127.0.0.1', 1, 'http://phptest.com/zw/m/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'iOS', '2018-01-30 12:18:04'),
(335, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 12:18:46'),
(336, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:32:53'),
(337, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:33:03'),
(338, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:33:05'),
(339, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:33:24'),
(340, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:33:27'),
(341, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:33:28'),
(342, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-30 16:33:29'),
(343, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517377624639', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 13:47:05'),
(344, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517391719708', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 17:42:00'),
(345, '127.0.0.1', 0, 'http://phptest.com/zw/index.php', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 17:42:04'),
(346, '127.0.0.1', 0, 'http://phptest.com/zw/index.php', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 17:50:35'),
(347, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517397414867', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:16:55'),
(348, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:16:57'),
(349, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:23:04'),
(350, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:23:04'),
(351, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:24:10'),
(352, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:24:21'),
(353, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:26:40'),
(354, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:27:38'),
(355, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-01-31 19:31:57'),
(356, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517448767465', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:32:49'),
(357, '127.0.0.1', 0, 'http://phptest.com/zw/index.php', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:32:52'),
(358, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:32:55'),
(359, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:33:11'),
(360, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:33:19'),
(361, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:50:55'),
(362, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:08'),
(363, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:09'),
(364, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:10'),
(365, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:13'),
(366, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:26'),
(367, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:35'),
(368, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:52'),
(369, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:55'),
(370, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:59'),
(371, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:51:59'),
(372, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:52:03'),
(373, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:52:04'),
(374, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:52:08'),
(375, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:52:27'),
(376, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:07'),
(377, '127.0.0.1', 0, 'http://phptest.com/zw/index.Html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:09'),
(378, '127.0.0.1', 0, 'http://phptest.com/zw/productlist.html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:20'),
(379, '127.0.0.1', 0, 'http://phptest.com/zw/index.Html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:21'),
(380, '127.0.0.1', 0, 'http://phptest.com/zw/product.html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:24'),
(381, '127.0.0.1', 0, 'http://phptest.com/zw/productlist.html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:26'),
(382, '127.0.0.1', 0, 'http://phptest.com/zw/product.html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:31'),
(383, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:41'),
(384, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:42'),
(385, '127.0.0.1', 0, 'http://phptest.com/zw/page/24.html', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:45'),
(386, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:50'),
(387, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:54:52'),
(388, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:55:11'),
(389, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 09:55:12'),
(390, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 10:24:54'),
(391, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 10:30:21'),
(392, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 10:36:30'),
(393, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'iOS', '2018-02-01 10:36:41'),
(394, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 10:43:26'),
(395, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:02:21'),
(396, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:10:45'),
(397, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:10:55'),
(398, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:11:05'),
(399, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:11:10'),
(400, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:11:15'),
(401, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:11:48'),
(402, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:21:58'),
(403, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:22:08'),
(404, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 11:22:50'),
(405, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:04:13'),
(406, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:05:08'),
(407, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:05:40'),
(408, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:05:45'),
(409, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:06:22');
INSERT INTO `access` (`Id`, `Ip`, `type`, `Browser`, `AccessType`, `address`, `os`, `time`) VALUES
(410, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:07:13'),
(411, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 12:09:24'),
(412, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 13:50:06'),
(413, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 13:51:30'),
(414, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 13:51:47'),
(415, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 13:51:55'),
(416, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 13:57:46'),
(417, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 13:59:40'),
(418, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:01:02'),
(419, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:02:01'),
(420, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:03:21'),
(421, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:03:34'),
(422, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:27:53'),
(423, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:28:30'),
(424, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:28:44'),
(425, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:29:15'),
(426, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:29:52'),
(427, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:31:14'),
(428, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:31:57'),
(429, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:32:37'),
(430, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:33:02'),
(431, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'iOS', '2018-02-01 14:33:34'),
(432, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:33:43'),
(433, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:34:47'),
(434, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:34:54'),
(435, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:04'),
(436, '127.0.0.1', 0, 'http://phptest.com/zw/productlist/0/2', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:09'),
(437, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:25'),
(438, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:30'),
(439, '127.0.0.1', 0, 'http://phptest.com/zw/productlist/0/2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:33'),
(440, '127.0.0.1', 0, 'http://phptest.com/zw/productlist/6', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:40'),
(441, '127.0.0.1', 0, 'http://phptest.com/zw/productlist/8', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:41'),
(442, '127.0.0.1', 0, 'http://phptest.com/zw/productlist/8/2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:45'),
(443, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:47'),
(444, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:52'),
(445, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:55'),
(446, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:35:58'),
(447, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:36:04'),
(448, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:36:12'),
(449, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:36:16'),
(450, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:36:19'),
(451, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:36:21'),
(452, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:36:38'),
(453, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'iOS', '2018-02-01 14:37:41'),
(454, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:38:18'),
(455, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:41:11'),
(456, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Opera', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:41:55'),
(457, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:42:09'),
(458, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:44:44'),
(459, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:46:20'),
(460, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:47:03'),
(461, '127.0.0.1', 1, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'iOS', '2018-02-01 14:48:24'),
(462, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:48:26'),
(463, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:51:14'),
(464, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:51:30'),
(465, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 14:51:52'),
(466, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 14:53:15'),
(467, '127.0.0.1', 0, 'http://phptest.com/zw/public/index.php?__hbt=1517468452441', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:00:55'),
(468, '127.0.0.1', 0, 'http://phptest.com/zw/public/index.php?__hbt=1517468452441', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:01:23'),
(469, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:02:08'),
(470, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:02:13'),
(471, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:02:40'),
(472, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:02:58'),
(473, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:03:27'),
(474, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:03:48'),
(475, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:05:44'),
(476, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:06:16'),
(477, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:06:27'),
(478, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Safari', 'XX-XX-内网IP-内网IP', 'MAC', '2018-02-01 15:08:20'),
(479, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:08:28'),
(480, '127.0.0.1', 0, 'http://phptest.com/zw/m', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:11:11'),
(481, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:22:25'),
(482, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Safari', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:22:36'),
(483, '127.0.0.1', 0, 'http://phptest.com/zw/', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:49:11'),
(484, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:49:12'),
(485, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:49:14'),
(486, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:29'),
(487, '127.0.0.1', 0, 'http://phptest.com/zw/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:31'),
(488, '127.0.0.1', 0, 'http://phptest.com/zw/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:37'),
(489, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:39'),
(490, '127.0.0.1', 0, 'http://phptest.com/zw/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:39'),
(491, '127.0.0.1', 0, 'http://phptest.com/zw/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:42'),
(492, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:50:43'),
(493, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:51:26'),
(494, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:51:40'),
(495, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:51:53'),
(496, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:52:02'),
(497, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:52:20'),
(498, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:52:28'),
(499, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:52:39'),
(500, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:53:04'),
(501, '127.0.0.1', 0, 'http://phptest.com/zw/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 15:53:32'),
(502, '127.0.0.1', 0, 'http://phptest.com/zw/new/21', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 16:40:13'),
(503, '127.0.0.1', 0, 'http://phptest.com/zw/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-01 16:40:29'),
(504, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517535074386', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-02 09:31:16'),
(505, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517535404194', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-02 09:36:46'),
(506, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517535404194', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-02 09:37:01'),
(507, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517535404194', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-02 09:37:08'),
(508, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517535601012', '未知', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-02 09:40:03'),
(509, '127.0.0.1', 0, 'http://phptest.com/zw/index.php', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-02 10:57:26'),
(510, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517793952504', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 09:27:20'),
(511, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 10:05:23'),
(512, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/productlist/0/2', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 10:05:46'),
(513, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 10:15:01'),
(514, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1517800834388', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:20:38'),
(515, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:02'),
(516, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:03'),
(517, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:05'),
(518, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:06'),
(519, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/product', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:07'),
(520, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/aboutus', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:08'),
(521, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 11:40:09'),
(522, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 13:01:44'),
(523, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 15:37:27'),
(524, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 15:50:38'),
(525, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 15:54:33'),
(526, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/index', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-05 16:04:12'),
(527, '127.0.0.1', 0, 'http://phptest.com/zw/index.php?__hbt=1518161307963', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:28:29'),
(528, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/page/24', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:28:33'),
(529, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:29:06'),
(530, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/new/21', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:29:10'),
(531, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/productlist', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:29:12'),
(532, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/details/36', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:29:14'),
(533, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:41:01'),
(534, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/new/21', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:41:03'),
(535, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/news', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:41:51'),
(536, '127.0.0.1', 0, 'http://phptest.com/zw/index.php/new/46', 'Chrome', 'XX-XX-内网IP-内网IP', 'Windows', '2018-02-09 15:41:54');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `Id` int(11) NOT NULL,
  `imgUrl` varchar(200) NOT NULL COMMENT '图片地址',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `text` varchar(200) DEFAULT NULL COMMENT '内容',
  `href` varchar(200) DEFAULT NULL COMMENT '跳转链接',
  `type` int(11) NOT NULL COMMENT '0首页，1集团介绍，2办学理念，3教师风采，4宝贝风采，5特色活动，6家园共育，7教育科研',
  `time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`Id`, `imgUrl`, `title`, `text`, `href`, `type`, `time`, `sort`) VALUES
(7, '151816695183.jpeg', '', '', '', 0, '2018-02-09 17:02:31', 2),
(6, '15181669517.png', '', '', '', 0, '2018-02-09 17:02:31', 1),
(5, '151816695137.png', '', '', '', 0, '2018-02-09 17:02:31', 0),
(8, '151817049995.jpeg', '', '', '', 1, '2018-02-09 18:01:39', 0),
(9, '151817049987.jpeg', '', '', '', 1, '2018-02-09 18:01:39', 1),
(10, '151817049942.jpeg', '', '', '', 1, '2018-02-09 18:01:39', 2);

-- --------------------------------------------------------

--
-- 表的结构 `basic`
--

CREATE TABLE IF NOT EXISTS `basic` (
  `Id` int(11) NOT NULL,
  `key` varchar(200) NOT NULL COMMENT '字段名',
  `val` varchar(200) DEFAULT NULL COMMENT '内容',
  `Explain` varchar(200) DEFAULT NULL COMMENT '说明'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='基本信息';

--
-- 转存表中的数据 `basic`
--

INSERT INTO `basic` (`Id`, `key`, `val`, `Explain`) VALUES
(1, 'mainLogo', '', '主logo'),
(2, 'attachLogo', '', '附logo'),
(3, 'WebsiteTitle', '众联云海', '站点标题'),
(4, 'keywords', '众联云海,众联,zonlinks,App开发,网站建设,网站开发,软件开发', 'keywords'),
(5, 'description', '成都众联云海科技有限公司作为国内技术领先的信息化解决方案供应商，致力于为各企事业单位提供软硬件系统、多系统集成、复杂软件系统开发的整体解决方案，从软件需求开发咨询、解决方案提供、设计方案提供，到后期项目延伸等全方位专业服务。 我们坚持信息化解决方案供应商的第三方定位，为提供更多优质的产品帮助所需的企业而努力。', 'description'),
(6, 'Telephone', '135-4111-8666', '联系电话'),
(7, 'QQ', 'QQ', 'QQ'),
(8, 'ICP', 'Copyright Zonlinks 2016-2017. All rights reserved. 蜀ICP备12018175号-4', 'ICP 备案'),
(9, 'QrCode', '', '二维码'),
(10, 'mailbox', '8888888@qq.com', '邮箱'),
(11, 'address', '高新区香年广场T3栋804号', '公司地址'),
(12, 'Culture', '众联云海，是一家信息化解决方案供应商，公司成立于2016年6月15日，注册地址为四川成都。<div>众联云海为各行业提供专业的信息化解决方案，软件外包定制开发服务。<br><div>众联云海的主要行业解决方案包括医疗行业、教育行业、金融行业、大型企业等单位提供信息化解决方案，</div><div>如内部管理系统、自动流程化系统、设备运行监管系统、智慧云平台系统等。</div></div>', '企业概括'),
(13, 'Subtitle', '领先的信息化解决方案供应商', '副标题');

-- --------------------------------------------------------

--
-- 表的结构 `leaving`
--

CREATE TABLE IF NOT EXISTS `leaving` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `Telephone` varchar(50) DEFAULT NULL COMMENT '电话',
  `text` text COMMENT '内容',
  `ip` varchar(100) DEFAULT NULL,
  `time` datetime NOT NULL COMMENT '留言时间',
  `isRead` int(11) NOT NULL COMMENT '是否已读'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言';

--
-- 转存表中的数据 `leaving`
--

INSERT INTO `leaving` (`Id`, `name`, `Telephone`, `text`, `ip`, `time`, `isRead`) VALUES
(2, '2', '15111111112', '放松放松水电费水电费', '127.0.0.1', '2018-01-19 14:26:26', 1),
(3, '3', '15333266222', '让对方', '127.0.0.1', '2018-01-19 14:27:19', 1),
(4, '4', '15111111111', '', '127.0.0.1', '2018-01-19 14:39:32', 1),
(5, '6', '15111111111', '', '127.0.0.1', '2018-01-19 14:39:37', 1),
(6, '7', '15111111111', '', '127.0.0.1', '2018-01-19 14:39:41', 1),
(13, '15333333333', '15133333333', '', '127.0.0.1', '2018-01-19 14:54:20', 1),
(14, '123132', '13222222222', '撒旦法啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊谁大啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '127.0.0.1', '2018-01-22 13:38:41', 1),
(15, '123', '15445444444', 'ThinkPHP是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，是为了敏捷WEB应用开发和简化企业应用开发而诞生的。ThinkPHP从诞生以来一直秉承简洁实用的设计原则，在保持出色的性能和至简的代码的同时，也注重易用性。遵循Apache2开源许可协议发布，意味着你可以免费使用ThinkPHP，甚至允许把你基于ThinkPHP开发的应用开源或商业产品发布/销售。', '127.0.0.1', '2018-01-22 13:51:33', 1);

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `Id` int(11) NOT NULL,
  `menuType` int(11) NOT NULL COMMENT '0表示顶部1表示底部',
  `parentId` int(11) DEFAULT NULL COMMENT '父级Id',
  `DisplayName` varchar(200) DEFAULT NULL COMMENT '显示名',
  `Formerly` varchar(200) DEFAULT NULL COMMENT '原名',
  `type` int(11) NOT NULL COMMENT '0表示基础1表示单页2表示链接',
  `url` varchar(200) DEFAULT NULL COMMENT '地址',
  `pageId` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序'
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`Id`, `menuType`, `parentId`, `DisplayName`, `Formerly`, `type`, `url`, `pageId`, `sort`) VALUES
(1, 0, 0, '', '解决方案', 0, 'product', 0, NULL),
(2, 0, 0, '产品中心', '产品中心', 0, 'ProductList', 0, NULL),
(34, 0, 0, '', '', 1, '自动获取', 24, NULL),
(12, 1, 0, '新闻中心', '', 2, 'javascript:;', 0, 2),
(35, 0, 0, '新闻中心', '新闻中心', 0, 'news', 0, NULL),
(11, 1, 0, '服务支持', '', 2, 'javascript:;', 0, 1),
(10, 1, 0, '解决方案', '', 2, 'javascript:;', 0, 0),
(13, 1, 0, '关于我们', '', 2, 'javascript:;', 0, NULL),
(14, 1, 0, '关注我们', '', 2, 'javascript:;', 0, NULL),
(15, 1, 10, '教育行业', '', 2, 'javascript:;', 0, 0),
(16, 1, 10, '医疗行业', '', 2, 'javascript:;', 0, NULL),
(38, 1, 10, '关于我们', '关于我们', 0, 'AboutUs', 0, NULL),
(39, 1, 10, '页面7', '', 1, '自动获取', 30, NULL),
(19, 1, 11, '安卓开发', '', 2, 'javascript:;', 0, NULL),
(20, 1, 11, 'IOS开发', '', 2, 'javascript:;', 0, NULL),
(21, 1, 11, 'HTML5开发', '', 2, 'javascript:;', 0, NULL),
(22, 1, 11, '微信开发', '', 2, 'javascript:;', 0, NULL),
(23, 1, 11, '技术资料', '', 2, 'javascript:;', 0, NULL),
(24, 1, 11, '文档资料', '', 2, 'javascript:;', 0, NULL),
(25, 1, 12, '公司公告', '', 2, 'javascript:;', 0, NULL),
(26, 1, 12, '行业新闻', '', 2, 'javascript:;', 0, NULL),
(27, 1, 12, '客户中心', '', 2, 'javascript:;', 0, NULL),
(28, 1, 12, '产品中心', '', 2, 'javascript:;', 0, NULL),
(29, 1, 13, '公司简介', '', 2, 'javascript:;', 0, NULL),
(30, 1, 13, '资质证书', '', 2, 'javascript:;', 0, NULL),
(31, 1, 13, '人才招募', '', 2, 'javascript:;', 0, NULL),
(32, 1, 14, '关于我们1', '', 2, 'javascript:;', 0, NULL),
(36, 0, 0, '关于我们', '关于我们', 0, 'AboutUs', 0, NULL),
(37, 1, 0, 'a', '', 2, '', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `Id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1园区2教师',
  `author` varchar(200) DEFAULT NULL COMMENT '作者',
  `Age` varchar(200) DEFAULT NULL COMMENT '年龄',
  `class` varchar(200) DEFAULT NULL COMMENT '班级',
  `CoverMap` varchar(200) DEFAULT NULL COMMENT '封面图',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduce` varchar(500) DEFAULT NULL COMMENT '介绍',
  `text` text COMMENT '内容',
  `Clicks` int(11) NOT NULL COMMENT '点击量',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `CreationTime` datetime NOT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='页面';

--
-- 转存表中的数据 `page`
--

INSERT INTO `page` (`Id`, `type`, `author`, `Age`, `class`, `CoverMap`, `title`, `introduce`, `text`, `Clicks`, `sort`, `CreationTime`) VALUES
(1, 1, '', '', '', '151816905870.jpeg', '童声飞扬•喜迎国庆——华幼西区“庆国庆”活动', '在十月一日国庆节即将来临之际，华幼西区大班组在2017年9月30日上午开展了“童声飞扬•喜迎国庆”主题活动，庆祝祖国妈妈68岁的生日。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	在十月一日国庆节即将来临之际，华幼西区大班组在2017年9月30日上午开展了“童声飞扬•喜迎国庆”主题活动，庆祝祖国妈妈68岁的生日。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171029/20171029104300_48443.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	“国旗国旗多美丽，五颗金星照大地，祖国前进我长大，我像祖国敬个礼”迎着五星红旗的上升，我们的活动正式拉开了序幕。在活动中，孩子们个个精神抖擞，都纷纷想要把自己精心排练的合唱歌曲，作为礼物送给祖国妈妈，他们用稚嫩、清脆的声音诠释身为中国人的自豪感。我们的家长们也带来了他们精心准备的节目，向祖国妈妈表达自己的一份爱和祝福。最后，家长们、孩子们携手在祝福墙上留下了祝福语，为本次活动画上了圆满的句号。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171029/20171029104348_42261.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，既让孩子们享受到了节日的快乐，更让他们用实际行动表达了对祖国妈妈的热爱之情！\n</p>', 0, NULL, '2018-02-09 17:37:38'),
(2, 1, '', '', '', '15181716218.jpeg', '记师生雨中情', '窗外雾蒙蒙的感觉，耳朵了传来“滴答滴答”的声音，偶尔还有汽车飞过溅起水花的声音。下雨了，让我们推开窗门，静静感受这浓浓的师幼之情！', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	窗外雾蒙蒙的感觉，耳朵了传来“滴答滴答”的声音，偶尔还有汽车飞过溅起水花的声音。下雨了，让我们推开窗门，静静感受这浓浓的师幼之情！\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160607/20160607191717_14696.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160607/20160607191718_43011.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 18:20:21'),
(3, 2, '王婷婷', NULL, NULL, '151817420880.jpeg', '扎实理论功底 做好课题研究——华阳幼儿园科研专题培训', '苏霍姆林斯基说：教师，这是学生智力生活中的第一盏、继而也是主要的一盏指路灯；是他在激发学生的求知欲，教会他们尊重科学、文化和教育。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	苏霍姆林斯基说：教师，这是学生智力生活中的第一盏、继而也是主要的一盏指路灯；是他在激发学生的求知欲，教会他们尊重科学、文化和教育。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<br />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步扎实教师的科研理论功底，提高教师的科研素养，天府新区华阳幼儿园于2018年1月2日开展了科研专题培训。此次培训特别邀请到成都师范学院副教授、四川省早教行业协会专家顾问——罗小华博士作客主讲，华幼集团共计40余名科研骨干参加了此次培训。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102201319_78991.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	培训中，罗小华教授围绕幼儿园课题研究的意义、研究步骤、研究方法、研究报告撰写等进行了深入、详细的阐述，为一线教师如何进行课题研究指明了方向。针对课题研究中存在的常见问题，罗小华教授结合案例和自身研究经验分享了很多实用技巧和策略。<br />\n通过此次培训，老师们对课题研究有了更清晰的认识，对于一线教师如何做好课题研究有了新的思考。相信在专家的引领和点拨下，华幼蘑菇团队一定能在不断的磨炼中成为领域内的研究型教育专家。\n</p>', 0, NULL, '2018-02-09 19:03:28'),
(4, 2, '王婷婷', NULL, NULL, '151817424875.jpeg', '华阳幼儿园小班组阳光体育运动月暨元旦节庆祝活动', '为进一步提高幼儿身体素质，激发幼儿运动的兴趣，培养幼儿不怕寒冷、坚持锻炼的良好习惯，天府新区华阳幼儿园小班组结合实际情况开展了阳光体育运动月暨元旦节庆祝活动。小班组全体幼儿及家长共计200余人参加了此次活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步提高幼儿身体素质，激发幼儿运动的兴趣，培养幼儿不怕寒冷、坚持锻炼的良好习惯，天府新区华阳幼儿园小班组结合实际情况开展了阳光体育运动月暨元旦节庆祝活动。小班组全体幼儿及家长共计200余人参加了此次活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195733_32527.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195846_77837.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195917_54011.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195941_37380.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	快乐的运动过后，大家一起回到教室，搓汤圆、包饺子，一起分享节日的快乐，寓意一家人团团圆圆、和和美美。结合“爱与感恩”的主题教育活动，老师引导孩子们进行分享，把煮好的汤圆分享给门卫叔叔、食堂阿姨等。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，不仅彰显了华幼的课程特色、育人理念，还很好的增进了家长对幼儿园、对班级教师的了解。在其乐融融的活动氛围中，家长和孩子的感情更加亲密了。相信在家园双方的密切配合下，华幼的孩子们一定能健康茁壮的成长。\n</p>', 0, NULL, '2018-02-09 19:04:08'),
(5, 2, '王婷婷', NULL, NULL, '151817428897.jpeg', '我运动 我健康 我快乐——华阳幼儿园大班组亲子体育游园活动', '2017年12月29日，天府新区华阳幼儿园大班组举办了“我运动、我健康、我快乐”的亲子体育游园活动，共计500余名幼儿和家长参加了此次活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	雾霾天，我不怕~\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	寒冷的冬天，我也不怕~\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	不要犹豫，赶快加入我们的运动，一起迎接2018年吧~\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<br />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<strong>2017年12月29日，天府新区华阳幼儿园大班组举办了“我运动、我健康、我快乐”的亲子体育游园活动，共计500余名幼儿和家长参加了此次活动。</strong> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102200928_41124.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102200954_55826.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动前，老师们精心准备，利用多种形式宣传“阳光体育运动月”活动，激发幼儿及家长的参与兴趣。活动中，踩气球、跳绳、两人三足、赶小猪等等丰富有趣的体育游戏，让家长和幼儿在游戏中锻炼了身体，在游戏中享受了运动的快乐。\n</p>', 0, NULL, '2018-02-09 19:04:48'),
(6, 2, '王婷婷', NULL, NULL, '151817432779.jpeg', '神奇魔术来助阵 快快乐乐迎新年 ——华幼中班组元旦节庆祝活动', '元旦节是中华民族的传统节日，在这辞旧迎新的日子里，为了让孩子们进一步了解元旦节的美好寓意和传统习俗，度过一个快乐而有意义的节日，天府新区华阳幼儿园中班组开展了丰富多彩的旦节庆祝活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	元旦节是中华民族的传统节日，在这辞旧迎新的日子里，为了让孩子们进一步了解元旦节的美好寓意和传统习俗，度过一个快乐而有意义的节日，天府新区华阳幼儿园中班组开展了丰富多彩的旦节庆祝活动。<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102200243_45744.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	这个冬天虽然有点冷，但丰富多彩的活动让孩子们觉得很快乐，很幸福。老师和孩子们一起剪窗花、贴窗花、做灯笼，用自己的双手装扮教室，老师还给孩子们讲了很多很多关于元旦节的故事和风俗。幼儿园请来了民间魔术大师，神奇、搞笑的魔术表演逗得孩子们哈哈大笑。相信孩子们在丰富多元的活动中，一定会更加健康快乐的成长。\n</p>\n<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102200310_16567.jpg" alt="" />', 0, NULL, '2018-02-09 19:05:27'),
(7, 2, '王婷婷', NULL, NULL, '151817437230.jpeg', '总院专家级教师', '为了让家长更好地了解孩子在幼儿园的学习、生活情况，帮助家长不断获取新的教育理念，更好地达到家园共育目的。华阳幼儿园西区大班组于2017年12月20日上午开展了“家园共育，携手共进”为主题的家长开放日活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了让家长更好地了解孩子在幼儿园的学习、生活情况，帮助家长不断获取新的教育理念，更好地达到家园共育目的。华阳幼儿园西区大班组于2017年12月20日上午开展了“家园共育，携手共进”为主题的家长开放日活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次活动共分为两个阶段。第一阶段，班级老师为家长们开放了：丰富多彩的晨间活动、师幼互动的早操活动、亲密无间的亲子游戏活动等环节。活动中，家长们看到了孩子在园的学习情况及表现，更好的发现孩子的问题，给以更多的陪伴和教育，促进他们更好的发展，同时把尊重、相信孩子、充分给予孩子探索的机会等宝贵经验和教育观念传递给了家长。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180729_75028.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	第二阶段：邀请到华阳西寺小学骨干教师钟飞为全体大班组家长开展“幼小衔接”专题讲座。讲座中，钟老师首先引导家长认识到家庭教育对孩子成长的重要性，接着又从“什么是幼小衔接”、“幼小衔接具体怎么做”、“幼小衔接应该怎么做”等方面与家长进行了沟通和交流。通过鲜活的案例、深思的视频，让家长对幼小衔接有了更深测认知。知道着手从孩子的心理适应准备、行为习惯准备以及知识技能准备做好衔接，家园携手一起帮助孩子更好的与小学生活相连接。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180747_72591.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次活动，进了“家园”之间的沟通力度，拉近了幼儿园与家长的距离，同时也使家长们了解了幼小衔接的重要性和具体内容，为家园携手做好大班幼儿的入学准备工作打下了良好基础。相信在大家的努力下，孩子们一定会平稳地度过这一阶段，顺利并且开心地开启他们的小学生活！\n</p>', 0, NULL, '2018-02-09 19:06:12'),
(8, 2, '王婷婷', NULL, NULL, '151817441095.jpeg', '华阳幼儿园小班老师', '为进一步提升老师们的课程意识和课程设计能力，天府新区华阳幼儿园于2017年12月21日开展了题为“幼儿园课程与活动设计”的专题培训。此次培训特别邀请到成都大学师范学院副教授万中老师作客主讲，华幼集团共计四十余名管理人员和一线教师参加培训。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步提升老师们的课程意识和课程设计能力，天府新区华阳幼儿园于2017年12月21日开展了题为“幼儿园课程与活动设计”的专题培训。此次培训特别邀请到成都大学师范学院副教授万中老师作客主讲，华幼集团共计四十余名管理人员和一线教师参加培训。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180442_98319.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	培训中，万老师由浅入深，用“番茄炒蛋”的例子来比喻幼儿园课程，让老师们对课程的复杂性有了更清晰的认识。从“课程”到“幼儿园课程”，再到“幼儿园教育活动”，万老师用形象生动的案例和图式让老师们重新认识了课程、活动与游戏。培训中，万老师鼓励老师们在日常教学中要勤反思、多总结，融汇贯通努力创新，做一名有专业化思考的老师。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180500_46312.jpg" alt="" /> \n</p>', 0, NULL, '2018-02-09 19:06:50'),
(9, 2, '王婷婷', NULL, NULL, '151817444644.jpeg', '华阳幼儿园大班教师', '为了让家长真实、全面、近距离地观察、感受孩子在园的学习和生活情况，促进家园的合作与交流，华阳幼儿园西区中班组于2017年12月初开展了本期的家长开放日活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了让家长真实、全面、近距离地观察、感受孩子在园的学习和生活情况，促进家园的合作与交流，华阳幼儿园西区中班组于2017年12月初开展了本期的家长开放日活动。&nbsp;&nbsp;&nbsp;&nbsp;\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180223_80460.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动前，老师向家长们简短介绍了活动的具体流程，并提出参与活动的要求和希望，接着各班教师结合孩子的实际情况向家长们一一展示了午操、生活、集体教育、进餐等环节。一个个充满情趣的活动场景深深吸引了孩子，充分调动了幼儿参与活动的主动性与积极性，看到孩子们积极地表现，愉悦地参与，家长们心里满是喜悦。在观摩活动后，各班老师还组织家长针对当天的活动进行了互动讨论交流，家长们纷纷表示，今后要多参加类似活动，以便及时了解幼儿园各种教育信息，更有效地配合幼儿园开展家庭教育。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180245_65697.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	家长开放日活动，不仅拉进了教师与家长的距离，提升了家园之间的沟通力度，还让他们在一个个细微的环节中，深刻感受了教师的辛劳和对孩子满满的爱，同时也对幼儿园的工作有了客观的认识，为家园共育搭建了更好地交流平台。\n</p>', 0, NULL, '2018-02-09 19:07:26'),
(10, 3, '王婷婷', '8岁', '华西区幼儿园大班', '151818004480.jpeg', '绘画大赛一等奖', '喜欢舞蹈、击剑、游泳，性格活泼开朗是老师和同学心中的欢乐豆', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2017年12月16日，成都市天府新区首届教职工合唱比赛初赛在天府七中盛大举行，由华阳幼儿园四十余名教职工组成的合唱队参加了此次活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223175713_65453.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	“一心装满国，一手撑起家，家是最小国，国是千万家，在世界的国，在天地的家，有了强的国，才有富的家······”歌词是歌曲的灵魂，华阳幼儿园教师合唱的《国家》，铿锵有力，让在场每一个心灵都能触及、感受国家的伟大，将个人命运与国家兴盛相联系并与之并行。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223175727_83649.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	华阳幼儿园教师们优美而壮观的歌声，寄托的不仅仅是对国家的爱，更是对天府新区的爱、对教育的爱，他们誓将一腔热血与激情洒在天府新区这片充满希望的土地上，为新区的学前教育发展助力。\n</p>', 0, NULL, '2018-02-09 20:40:44'),
(11, 3, '张婷婷', '8岁', '南区幼儿园小班', '151818302954.jpeg', '唱歌第一名', '喜欢舞蹈、击剑、游泳，性格活泼开朗是老师和同学心中的欢乐豆', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2017年11月17日，由成都市体操运动协会主办的“运动成都”2017年成都市快乐动感操推广赛在成都恒大广场隆重开幕。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223170818_45724.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了参加此次比赛，华阳幼儿园组建了五支队伍，分别是三支快乐动感操队和两支自由操队。赛场上，孩子们精神饱满、热情洋溢，伴着欢快的音乐，以有力的动作和富有感染力的表情脱颖而出，把各具特色的体操风格尽情展示，获得了广大教练员、裁判员及家长朋友们的高度评价。经过激烈的角逐，三支快乐动感操队伍荣获了金奖，两支自由操队伍获得银牌。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223170839_80565.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	这次比赛不仅激发了幼儿积极参加体育锻炼的兴趣，培养了孩子的团队精神。同时，还展示了华阳幼儿园师幼奋发向上的精神风貌。获此荣誉既是对华阳幼儿园多年来开展幼儿体操活动的充分肯定和赞誉，同时也为以后体操活动的开展注入了新的力量。\n</p>', 0, NULL, '2018-02-09 20:42:56'),
(12, 3, '王婷婷', '9岁', '西区幼儿园中班', '151818302340.jpeg', '绘画大奖第一名', '喜欢舞蹈、击剑、游泳，性格活泼开朗是老师和同学心中的欢乐豆', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2017年11月6日，成都市2017年“未来名师”1—2班跟岗研修活动在天府新区华阳幼儿园召开。成都大学教育学院副院长、“未来名师”项目培训负责人、首席专家李敏博士出席活动，共计90余名来自成都市各区、县的“未来名师”参加了此次活动。 &nbsp;\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120140000_83927.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	跟岗研修分为三个环节——参观幼儿园环境、观摩户外教育活动、专题交流汇报。11月6日上午9：30，来自各区、县的园长和老师们陆续进入华阳幼儿园，参观幼儿园户外环境、室内环境、幼儿活动等，对幼儿园宽敞的户外场地、精致的环境创设表示欣赏。在观摩环节，三位不同层次的老师分别带来了三个别开生面的户外教育活动。“蘑菇丽人”刘夏老师带来户外挑战活动《送蛋宝宝回家》，“蘑菇达人”商李美老师带来户外美术活动《创意摆拼》，“蘑菇名人”付利丽老师带来户外数学活动《大家一起来帮忙》，富有趣味性和挑战性的活动引发了参研老师们的共鸣。接着，华阳幼儿园谢丽艳副园长做了《课程建设引领教师专业发展》的专题汇报，对幼儿园在课程建设、教师队伍培养等方面的经验进行了分享。在总结环节，李敏副院长强调:不管是儿童的成长还是教师的成长，都要注意学习经验的连续性和整同性。李敏副院长还对跟岗研修的园长和老师们提出了&nbsp;“1-2-3”的学习要求，即在一段时间内围绕一个主题进行学习和研究，在此基础上形成两项成果，与至少三个专家进行对话交流。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120140012_86324.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	借助“未来名师”研修平台，华阳幼儿园不仅很好的展示了自身在内涵发展道路上的一些探索和尝试，还促进了各区、县幼儿园之间的交流学习。相信在不断的磨炼中，华阳幼儿园的内涵发展之路会越走越宽，越走越好！\n</p>', 0, NULL, '2018-02-09 20:43:53'),
(13, 3, '王婷婷', '8岁', '华阳东区小班', '151818294596.png', '唱歌优秀奖', '喜欢舞蹈、击剑、游泳，性格活泼开朗是老师和同学心中的欢乐豆', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	近期，为了给孩子创造丰富多元的阅读环境，让孩子爱读书，努力营造一个丰富、有趣的阅读情境，为此华阳幼儿园语言项目组开展了一次主题为“书香童梦•幸福成长”为主题的活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223175531_46427.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	在本次活动中，首先，孩子和家长在家里，通过剪、贴、画等方式，一同制作了许多形式各异，颇具创意的图书；其次，在幼儿园里，通过各园区的初选，然后邀请教师代表、家长代表、幼儿园领导投票选出了“最佳绘画”、“最佳故事”、“最佳设计”三种类型的图书；最后，所有的自制图书全部投放到班级的图书区中，让孩子在区域中分享、阅读。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223175546_67205.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	相信通过本次活动，不仅增进了师幼、亲子、家园及家长间的良好联系与情感交流，更有效帮助家长阅读理念和指导水平的进一步提升。\n</p>', 0, NULL, '2018-02-09 20:47:20'),
(14, 3, '李宏娜', '7岁', '总院大班', '151818301682.jpeg', '唱歌优秀奖', '喜欢舞蹈、击剑、游泳，性格活泼开朗是老师和同学心中的欢乐豆', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了给教师们搭建一个互动交流、共同探索分享的教研平台，华幼集团于2017年12月13日下午在华幼西区开展了主题为“教研亮风采，快乐同成长”的教研活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180058_74964.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次活动分为现场观摩、说课、研讨、分享交流等四个环节。首先是，田老师提供的小班数学领域《1和许多》观摩活动，通过情景游戏让孩子们感知数量之间的关系；然后是说课环节，田老师从活动的设计思路、目标，以及她在活动过程中产生的想法和困惑进行介绍；紧接着互动研讨环节，以颜色为单位把老师们分成四组，围绕以下两个问题进行研讨：1.对本次活动提出优点和建议及优化措施。2.在此次活动中，我们还可以运用哪些策略或方法促进幼儿核心经验的发展？最后，每组推选一名教师分享研讨的成果，大家畅所欲言，言无不尽，使许多疑问、教学难点等问题都得到解决。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180113_64299.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次教研活动既打开了教师的思路，又展示了教师的教学风采，还能有效地提高了华幼集团教师们的教育教学水平，同时也为接下来的教研活动奠定了夯实的基础！\n</p>', 0, NULL, '2018-02-09 20:49:49'),
(15, 3, '蔡侣佐', '7岁', '西区幼儿园1班', '151818071237.jpeg', '跳舞优秀奖', '喜欢舞蹈、击剑、游泳，性格活泼开朗是老师和同学心中的欢乐豆', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	元旦节是中华民族的传统节日，在这辞旧迎新的日子里，为了让孩子们进一步了解元旦节的美好寓意和传统习俗，度过一个快乐而有意义的节日，天府新区华阳幼儿园中班组开展了丰富多彩的旦节庆祝活动。<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102200243_45744.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	这个冬天虽然有点冷，但丰富多彩的活动让孩子们觉得很快乐，很幸福。老师和孩子们一起剪窗花、贴窗花、做灯笼，用自己的双手装扮教室，老师还给孩子们讲了很多很多关于元旦节的故事和风俗。幼儿园请来了民间魔术大师，神奇、搞笑的魔术表演逗得孩子们哈哈大笑。相信孩子们在丰富多元的活动中，一定会更加健康快乐的成长。\n</p>\n<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102200310_16567.jpg" alt="" />', 0, NULL, '2018-02-09 20:51:52'),
(16, 3, '', '', '', '151818081698.jpeg', '手工作品展示', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步提高幼儿身体素质，激发幼儿运动的兴趣，培养幼儿不怕寒冷、坚持锻炼的良好习惯，天府新区华阳幼儿园小班组结合实际情况开展了阳光体育运动月暨元旦节庆祝活动。小班组全体幼儿及家长共计200余人参加了此次活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195733_32527.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195846_77837.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195917_54011.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195941_37380.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	快乐的运动过后，大家一起回到教室，搓汤圆、包饺子，一起分享节日的快乐，寓意一家人团团圆圆、和和美美。结合“爱与感恩”的主题教育活动，老师引导孩子们进行分享，把煮好的汤圆分享给门卫叔叔、食堂阿姨等。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，不仅彰显了华幼的课程特色、育人理念，还很好的增进了家长对幼儿园、对班级教师的了解。在其乐融融的活动氛围中，家长和孩子的感情更加亲密了。相信在家园双方的密切配合下，华幼的孩子们一定能健康茁壮的成长。\n</p>', 0, NULL, '2018-02-09 20:53:36'),
(17, 3, '', '', '', '151818146517.jpeg', '手工作品展', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步提升老师们的课程意识和课程设计能力，天府新区华阳幼儿园于2017年12月21日开展了题为“幼儿园课程与活动设计”的专题培训。此次培训特别邀请到成都大学师范学院副教授万中老师作客主讲，华幼集团共计四十余名管理人员和一线教师参加培训。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180442_98319.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	培训中，万老师由浅入深，用“番茄炒蛋”的例子来比喻幼儿园课程，让老师们对课程的复杂性有了更清晰的认识。从“课程”到“幼儿园课程”，再到“幼儿园教育活动”，万老师用形象生动的案例和图式让老师们重新认识了课程、活动与游戏。培训中，万老师鼓励老师们在日常教学中要勤反思、多总结，融汇贯通努力创新，做一名有专业化思考的老师。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180500_46312.jpg" alt="" /> \n</p>', 0, NULL, '2018-02-09 21:04:25'),
(18, 3, '', '', '', '151818150358.jpeg', '绘画展', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步提高幼儿身体素质，激发幼儿运动的兴趣，培养幼儿不怕寒冷、坚持锻炼的良好习惯，天府新区华阳幼儿园小班组结合实际情况开展了阳光体育运动月暨元旦节庆祝活动。小班组全体幼儿及家长共计200余人参加了此次活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195733_32527.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195846_77837.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195917_54011.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20180102/20180102195941_37380.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	快乐的运动过后，大家一起回到教室，搓汤圆、包饺子，一起分享节日的快乐，寓意一家人团团圆圆、和和美美。结合“爱与感恩”的主题教育活动，老师引导孩子们进行分享，把煮好的汤圆分享给门卫叔叔、食堂阿姨等。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，不仅彰显了华幼的课程特色、育人理念，还很好的增进了家长对幼儿园、对班级教师的了解。在其乐融融的活动氛围中，家长和孩子的感情更加亲密了。相信在家园双方的密切配合下，华幼的孩子们一定能健康茁壮的成长。\n</p>', 0, NULL, '2018-02-09 21:05:03'),
(19, 3, '', '', '', '151818155570.jpeg', '绘画展', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了让家长真实、全面、近距离地观察、感受孩子在园的学习和生活情况，促进家园的合作与交流，华阳幼儿园西区中班组于2017年12月初开展了本期的家长开放日活动。&nbsp;&nbsp;&nbsp;&nbsp;\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180223_80460.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动前，老师向家长们简短介绍了活动的具体流程，并提出参与活动的要求和希望，接着各班教师结合孩子的实际情况向家长们一一展示了午操、生活、集体教育、进餐等环节。一个个充满情趣的活动场景深深吸引了孩子，充分调动了幼儿参与活动的主动性与积极性，看到孩子们积极地表现，愉悦地参与，家长们心里满是喜悦。在观摩活动后，各班老师还组织家长针对当天的活动进行了互动讨论交流，家长们纷纷表示，今后要多参加类似活动，以便及时了解幼儿园各种教育信息，更有效地配合幼儿园开展家庭教育。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223180245_65697.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	家长开放日活动，不仅拉进了教师与家长的距离，提升了家园之间的沟通力度，还让他们在一个个细微的环节中，深刻感受了教师的辛劳和对孩子满满的爱，同时也对幼儿园的工作有了客观的认识，为家园共育搭建了更好地交流平台。\n</p>', 0, NULL, '2018-02-09 21:05:55'),
(20, 3, '', '', '', '151818158134.jpeg', '手工作品展', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2017年12月18日—19日由成都市教育局、成都市食品药品监督管理局、成都市卫生和计划生育委员会主办的《2017年成都市学校卫生工作专题论坛》在成都新良大酒店隆重开幕。天府新区华阳幼儿园的欧阳冰洁、万涛参加了此次活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223175901_95056.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	按论坛活动的流程，首先对2017年成都市学校食品安全与卫生防病论文评选进行颁奖。我园的欧阳冰洁和张弟的《幼以食为天，食以安为先》获得特等奖，万涛的《浅谈幼儿园疾病防控的有效策略》获一等奖。颁奖后，四川广播电视台对欧阳园长进行采访，欧阳园长以华幼食品安全管理新举措：幼儿园实行双向管理—让食品安全制度落地；落实“一岗双责”—把食品安全责任定下来；打造透明厨房—把食堂工作展示出来；细化食品安全管理—让食品管理细下来；开展多元宣传—让家长参与进来等。最后欧阳园长作为专家在本次论坛中进行了《浅谈幼儿园膳食安全管理的几点新尝试》的精彩讲座，受到所有参会人员的一致好评。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171223/20171223175917_56277.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次论坛活动，让我园的食品安全和卫生防病工作得到专家们的认可。时也提高了我园在整个成都市的知名度，为我们守护孩子成长，共启未来奠定了良好基础。我园将继续以研究的思维、务实的态度、创新的方法、积极整合多方面资源，为孩子愉快地童年生活奉献自己的力量。\n</p>', 0, NULL, '2018-02-09 21:06:21'),
(21, 3, '', '', '', '151818163170.jpeg', '手工作品展示', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了激发幼儿阅读兴趣，搭建家园沟通的桥梁。2017年11月10日华幼西区小班组以“家长进课堂、家园溢书香”为主题，开展了家长志愿者进课堂讲故事活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120143203_22032.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动前，我们的家长志愿者绞尽脑汁、想尽各种办法。有的制作了精美的PPT；有的准备了可爱的动物头饰；有的······。瞧！小一班的家长志愿者通过游戏巧妙的掩饰了传统教学的枯燥无味，让我们的孩子在轻松、愉快地环境下学习；小二班的家长志愿者带来的绘本《一颗纽扣》看似一个简单的小故事，却蕴藏着丰富知识的小故事；小三班的家长志愿者用生动活泼的语言、精彩形象的肢体动作为孩子们讲述了《龟兔赛跑》的故事，每个孩子们都听得聚精会神。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120143215_65947.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，不仅拉近家园之间的距离，也在每个孩子心底埋下一颗喜欢并享受阅读的种子，生根发芽，伴随孩子快乐成长\n</p>', 0, NULL, '2018-02-09 21:07:11'),
(22, 3, '', '', '', '151818167545.jpeg', '绘画展', '', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:楷体;font-size:14pt;">“家园是一辆自行车上的两个轮子，只有协调一致才能朝着同一个方向前进”。</span><span style="font-family:楷体;font-size:14pt;">在“家，园，社区三位一体”的教育特色引领下，天府新区华阳幼儿园坚持每月举行一次</span><span style="font-family:楷体;font-size:12pt;">“家园共构家长志愿者活动日”</span><span style="font-family:楷体;font-size:14pt;">。让家长走进幼儿园</span><span style="font-family:楷体;font-size:14pt;">为幼儿的生活、学习提供更多元化的服务，同时也为孩子幸福童年生活创造别样的精彩！</span><span style="font-family:楷体;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:楷体;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;">华阳幼儿园总园</span><span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;">2016年11月25日，走入教室，你可以看到爷爷带着孩子们认识宇宙各大星系，拓展孩子的视野。妈妈们和孩子们玩着折纸游戏、音乐游戏，爸爸带着孩子们做挑战游戏等等。活动中，家长们运用自身特长给孩子们带来一次次愉快体验，更有心灵手巧的志愿者协助教师们制作了精美的教玩具。</span><span style="font-family:方正小标宋简体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201120056_59073.jpg" alt="" /><br />\n</span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;">华阳幼儿园西区</span><span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;"></span>\n</p>\n<p class="15" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;">2016年11月23日小中班李安晴小朋友的妈妈为孩子们准备的手工活动——《粘贴大鱼》。活动开始，晴晴妈妈和孩子们一起玩了颜色变魔术的游戏，让孩子们在游戏中认识了颜色，感受了颜色变化的魔力。之后，晴晴妈妈给孩子们讲了绘本故事《小墨鱼》，让孩子们在故事中了解了小鱼变大鱼的方法。最后，晴晴妈妈组织幼儿分组进行粘贴大鱼的游戏，让幼儿通过与同伴合作完成自己组的作品。</span><span style="font-family:方正小标宋简体;font-size:12pt;"></span>\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201120133_56164.jpg" alt="" />\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<br />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">在家园共构活动中，家长志愿者们在与教师、幼儿园互动中建立了深厚的友谊，大家渐渐的从一个积极参与者转变为主动倡导者。相信在这样和谐美好的家园共育环境中，我们的孩子会成长得更好！更愿意帮助别人，更懂得分享和感恩！</span><span style="font-family:Calibri;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">亲爱的家长们，我们的“家园共构家长志愿者活动日”每月最后一周如期举行，我们热情地邀请您的参与喔！</span>\n</p>', 0, NULL, '2018-02-09 21:07:55'),
(23, 4, '', '', '', '151818430727.jpeg', '华阳幼儿园西区家长志愿者活动', '为进一步增强孩子们的消防安全意识，提高自我保护能力。天府新区华阳幼儿园西区中三班的家长志愿者走了进幼儿园，为孩子们讲述了一节生动、有趣的消防课。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为进一步增强孩子们的消防安全意识，提高自我保护能力。天府新区华阳幼儿园西区中三班的家长志愿者走了进幼儿园，为孩子们讲述了一节生动、有趣的消防课。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120143322_41703.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	&nbsp;此次活动围绕五个方面来开展：第一，引导孩子们了解消防车的构造与作用。活动中孩子们非常感兴趣，认为消防车很神奇，梦想长大以后能开一辆这样帅气的车；第二，认识各种消防工具，了解它们的使用方法；第三，通过PPT让孩子们知道一日常生活中如何预防火灾。因为事故往往发生在一瞬间，我们要时刻预防，不断检查，防患于未然；第四，了解正确的逃生步骤。家长志愿者一边讲述，一边演示，孩子们也都跟着模仿，个个儿学得有模有样；最后，孩子们在消防员叔叔的帮助下体验了穿消防服装，同时也为本次活动画上了圆满的句号。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120143336_92174.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过活动孩子们不仅了解了一些消防常识，也学会遇到紧急情况不慌张、有秩序、懂应对的处理方式，提高了突发事件的应变能力和自我保护能力。在以后的日子里，我园将把安全教育继续坚持下去，为孩子们的成长提供安全的屏障！\n</p>', 0, NULL, '2018-02-09 21:51:47'),
(24, 4, '', '', '', '151818440982.jpeg', '华幼西区家长志愿者活动——动手动脑做玩具', '有趣的户外器械能激发幼儿参与运动的兴趣，也能锻炼幼儿钻、爬、跳、攀登、平衡等动作技能，更好地提高幼儿的体质。2017年3月20日上午，华阳幼儿园西区中一班和中四班家长志愿者来园共同为孩子们制作了精美、实用的户外游戏玩具。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	有趣的户外器械能激发幼儿参与运动的兴趣，也能锻炼幼儿钻、爬、跳、攀登、平衡等动作技能，更好地提高幼儿的体质。2017年3月20日上午，华阳幼儿园西区中一班和中四班家长志愿者来园共同为孩子们制作了精美、实用的户外游戏玩具。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170417/20170417205713_29272.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动前，老师为本次活动准备了半成品材料。家长们通过老师的讲解、示范很快的学会了户外器械的制作方法。活动中，家长们个个心灵手巧，认真的参与到剪、缝、粘、画等制作活动中。在大家齐心协力的参与下，我们一起完成了《五彩气球伞》、《跳格子》等多件户外器械。最后，家长们还亲身体验这两个户外器械带来的游戏，活动在大家愉快的游戏中结束了。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次活动，家长们不仅为孩子增添了许多件有意思的户外器械，也让家长感受到自己在孩子成长过程中的重要作用。相信，通过家园携手，我们的孩子会更加幸福地成长。\n</p>', 0, NULL, '2018-02-09 21:53:29'),
(25, 4, '', '', '', '151818444164.jpeg', '华幼西区家长志愿者开展“儿童口腔保健”知识讲座', '龋齿成为儿童最常见的疾病之一，给许多的孩子带来痛苦，让家长们感到极其困惑。为了让幼儿拥有健康美丽的牙齿，2017年3月15日上午，华阳幼儿园西区利用家长资源，邀请到四川大学华西口腔医院修复科硕士研究生张鑫医生，到园为家长们做“儿童口腔保健”的专题知识讲座。', '<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span line-height:150%;font-size:14pt;"=""><span style="font-size:14px;">龋齿成为儿童最常见的疾病之一，给许多的孩子带来痛苦，让家长们感到极其困惑。为了让幼儿拥有健康美丽的牙齿，</span><span style="font-size:14px;">2017</span><span style="font-size:14px;">年</span><span style="font-size:14px;">3</span><span style="font-size:14px;">月</span><span style="font-size:14px;">15</span><span style="font-size:14px;">日上午，华阳幼儿园西区利用家长资源，邀请到四川大学华西口腔医院修复科硕士研究生张鑫医生，到园为家长们做</span><span style="font-size:14px;">“</span><span style="font-size:14px;">儿童口腔保健</span><span style="font-size:14px;">”</span><span style="font-size:14px;">的专题知识讲座。</span></span><span line-height:150%;font-size:14pt;"=""></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span line-height:150%;font-size:14pt;"=""><span style="font-size:14px;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170320/20170320141252_87305.jpg" alt="" /></span></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span line-height:150%;font-size:14pt;"=""><span style="font-size:14px;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170320/20170320141253_95773.jpg" alt="" /><br />\n</span></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span line-height:150%;font-size:14pt;"=""><span style="font-size:14px;">活动中，张鑫医生针对牙齿普遍存在的问题，从</span><span style="font-size:14px;">“</span><span style="font-size:14px;">牙生理萌发的特点、牙齿的结构、龋齿的进展、儿童龋病的治疗与预防</span><span style="font-size:14px;">”</span><span style="font-size:14px;">等多方面详细阐述了口腔保健的重要性。为了让家长们掌握刷牙的方法，他还通过牙齿模具，现场展示正确刷牙过程。活动后家长们还把自己的疑惑进行咨询，张医生用专业的知识耐心地为家长们一一解答，整个活动一直在热烈地氛围中进行。</span></span><span line-height:150%;font-size:14pt;"=""></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span line-height:150%;font-size:14pt;"=""><span style="font-size:14px;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170320/20170320141312_52371.jpg" alt="" /></span></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span line-height:150%;font-size:14pt;"=""><span style="font-size:14px;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170320/20170320141313_48633.jpg" alt="" /><br />\n</span></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span line-height:150%;font-size:14px;"=""><span style="font-size:14px;">通过本次活动，</span></span><span line-height:150%;font-size:14px;"=""><span style="font-size:14px;">让家长们懂得了龋齿危害，掌握了口腔保健的相关知识，同时也解除了家长们对龋齿的困惑。</span></span><span line-height:150%;font-size:14px;"=""><span style="font-size:14px;">相信，</span></span><span line-height:150%;font-size:14px;"=""><span style="font-size:14px;">只要我们积极行动起来，从爱牙、护牙开始，一定能</span></span><span line-height:150%;font-size:14px;"=""><span style="font-size:14px;">帮助孩子拥有洁白的牙齿，从而促进孩子健康成长。</span></span> \n</p>', 0, NULL, '2018-02-09 21:54:01'),
(26, 4, '', '', '', '15181844706.jpeg', '家园合力，丰富游戏材料 ——记华阳幼儿园西区小班组家长志愿者活动', '为了充分利用家长资源，丰富幼儿区角游戏材料，华阳幼儿园西区小班组于2016年9月29日下午组织家长开展了“家园合力，丰富区角游戏材料”手工制作活动。', '<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">为了</span><span style="font-family:宋体;font-size:12pt;">充分利用家长资源，</span><span style="font-family:宋体;font-size:12pt;">丰富幼儿区角游戏材料，华阳幼儿园西区小班组于2016年9月29日下午</span><span style="font-family:宋体;font-size:12pt;">组织家长</span><span style="font-family:宋体;font-size:12pt;">开展了</span><span style="font-family:宋体;font-size:12pt;">“家园合力，丰富区角游戏材料”</span><span style="font-family:宋体;font-size:12pt;">手工</span><span style="font-family:宋体;font-size:12pt;">制作活动。</span><span style="font-family:宋体;font-size:12pt;"></span> \n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">本次活动邀请了部分家长志愿者参加。首先由胡慧老师为家长志愿者简单介绍了制作区角材料的原因及意义；接着展示了需要制作的区角材料，并示范了制作方法；然后家长们自由分工、制作。在制作过程中，家长们互相交流、探讨，分享经验，为幼儿制作出了精美的区角材料，如：毛毛虫扣件、包子等。</span><span style="font-family:宋体;font-size:12pt;"></span> \n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">通过此次活动，家长们不仅了解</span><span style="font-family:宋体;font-size:12pt;">到</span><span style="font-family:宋体;font-size:12pt;">了区角游戏</span><span style="font-family:宋体;font-size:12pt;">对孩子</span><span style="font-family:宋体;font-size:12pt;">的重要性，也体会到了手工制作的乐趣，</span><span style="font-family:宋体;font-size:12pt;">同时也</span><span style="font-family:宋体;font-size:12pt;">增进了家园合作关系。</span><span style="font-family:宋体;font-size:12pt;">相信通过一系列的活动，我们在家园合作方面会寻求到更多的途径。</span><span style="font-family:Calibri;font-size:12pt;"></span> \n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;font-size:12pt;"><br />\n</span> \n</p>\n<div style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026151621_17786.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026151621_50259.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026151622_44672.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026151623_20747.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:54:30'),
(27, 4, '', '', '', '151818450948.jpeg', '家长志愿者进课堂——大三班户外美术活动《自然拼贴》', '秋天到了，户外活动时孩子们经常捡拾院子里掉落的小叶子、小花瓣、花种子，甚至小石子，像找到宝贝似的攥在手里，时不时的还会拿着自己喜欢的叶子小花瓣等等进行想像', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	秋天到了，户外活动时孩子们经常捡拾院子里掉落的小叶子、小花瓣、花种子，甚至小石子，像找到宝贝似的攥在手里，时不时的还会拿着自己喜欢的叶子小花瓣等等进行想像——“这片叶子像什么，那片花瓣像什么……”这些在成人看来毫不起眼的东西却分外吸引孩子，突然间变得如此的美丽、神奇。《指南》指出：“指导幼儿利用身边的物品或废旧材料 制作玩具、手工艺品等来美化自己的生活或开展其他活动。”大自然是一个丰富多彩的物质世界，它为幼儿的艺术创作提供了天然的素材，为了满足孩子们的好奇心，培养他们的创造能力，让他们把自己捡拾的自然物收集起来，让他们利用自然材料进行大胆的创作。我设计了这次活动。旨在通过活动让孩子们学会观察生活、发现美、体验美。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	大自然是一个丰富多彩的物质世界，通过今天的活动在满足了孩子们好奇心的同时也培养了他们的创造能力，让他们把自己捡拾的自然物收集起来，利用自然材料进行了大胆的创作，充分发挥了孩子们的主观能动性及动手能力，每一个孩子都积极参与其中，过的快乐充实，通过自然材料拼出来的各式各样的图，从孩子们的角度看到了丰富多彩的世界，看到了不一样的生活、不一样的美。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614183340_54436.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614183342_32228.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614183350_20827.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614183344_96401.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614183345_69389.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614183348_34411.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:55:09'),
(28, 4, '', '', '', '151818454730.jpeg', '大五班：军事训练', '本次军事训练活动，目的在于让孩子们了解部队队列行进和基本的武术动作，其中包括了齐步、正步、弓步、马步等。孩子们平时除了在电视上能看到，实际接触还是比较少，我发现他们都非常的有兴趣，学习得也很认真。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次军事训练活动，目的在于让孩子们了解部队队列行进和基本的武术动作，其中包括了齐步、正步、弓步、马步等。孩子们平时除了在电视上能看到，实际接触还是比较少，我发现他们都非常的有兴趣，学习得也很认真。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动中我采用了示范，分部讲解动作要领等方式进行教学活动，孩子们掌握也比较快，最后还进行了小组评比活动，很快孩子们就掌握了队列行进的基本动作。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614182639_16781.jpg" alt="" /> \n</div>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过这样不一样的一堂课，不仅让孩子们感受了部队纪律，同时还培养了小朋友们良好的队列养成和规范的动作。相信，通过这么一个活动，孩子们在以后的活动中，都能很好的运用这些规范的动作。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614182640_28511.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614182642_91076.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614182643_64286.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:55:47'),
(29, 4, '', '', '', '15181845789.jpeg', '家长志愿者进课堂——大五班语言活动《虎牙河狸改行》', '通过本次家长进课堂活动，让孩子们懂得了要爱护我们的环境，珍惜资源，拒绝使用一次性筷子。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次家长进课堂活动，让孩子们懂得了要爱护我们的环境，珍惜资源，拒绝使用一次性筷子。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614181955_47902.jpg" alt="" /> \n</div>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动后，罗艺涵妈妈还给每位幼儿准备了一份环保餐具。爱护环境从小做起，让孩子带动家人，家人带动家庭，让每位家庭为保护我们的环境出一份力，世界将更加美好。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614181956_84036.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614181957_94971.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614181959_74827.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614182000_20242.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614182001_85165.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:56:18'),
(30, 4, '', '', '', '151818460946.jpeg', '家长志愿者进课堂——中六班《洋娃娃和小熊跳舞》', '本课教学以学唱歌为主，通过创设情景、模仿，演唱、律动表演等教学环节，让学生在情景中感受、体验、参与、合作、交流的过程中学习，并能从中体会自我创造、自我表现的乐趣。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本课教学以学唱歌为主，通过创设情景、模仿，演唱、律动表演等教学环节，让学生在情景中感受、体验、参与、合作、交流的过程中学习，并能从中体会自我创造、自我表现的乐趣。本堂课整体看来，各个教学环节比较清晰，互动比较有效，尤其是在打节奏这一板块将学生的激情进一步调动了起来。本课也有许多不足之处，在教学过程中，各环节衔接处语言组织得不够熟练，有个别孩子的积极性没有调动起来。由于教室没有音响，音乐效果不是很好，歌词听得不够清晰，孩子们可能没有完全学会。由于时间和场地有限创编与表演板块只做了简单的交流和互动，还需要多多的改进，争取能做得更好。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614180533_69556.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614180553_68686.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614180549_11373.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614180558_68603.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614180531_22142.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:56:49'),
(31, 4, '', '', '', '151818463689.jpeg', '家长志愿者进课堂——中二班《剪窗花》', '《剪窗花》是一个手工活动，我认为我本次活动的设计也是非常有趣的，让孩子在观察、讨论、玩玩中度过，在一个愉快的气氛下学习知识，这样也体现了游戏化的教学方式。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	《剪窗花》是一个手工活动，我认为我本次活动的设计也是非常有趣的，让孩子在观察、讨论、玩玩中度过，在一个愉快的气氛下学习知识，这样也体现了游戏化的教学方式。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次活动我的目标就是让幼儿通过观看各种窗花以及我的现场演示，然后让幼儿发挥自己的想象，剪出各种各样有趣的窗花，这样做既能调动幼儿观察的积极性，又能拓展幼儿想象的空间。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动中，孩子们也表现得非常积极，争着说自己的想法。接着我发放了材料，让幼儿尽情的去发挥，去剪自己想象中的窗花，幼儿也能很积极的参与进来。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175657_94125.jpg" alt="" /> \n</div>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	最后，我引导幼儿自愿上来展示自己的作品，但这个环节我却忽视了让幼儿介绍自己的作品，所以我认为本次的教学活动还有很多地方需要进行改善的，希望以后我为幼儿提供的活动更有趣、丰富。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175655_26770.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175658_63953.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175653_76439.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175654_34186.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:57:16');
INSERT INTO `page` (`Id`, `type`, `author`, `Age`, `class`, `CoverMap`, `title`, `introduce`, `text`, `Clicks`, `sort`, `CreationTime`) VALUES
(32, 4, '', '', '', '151818466619.jpeg', '家长志愿者进课堂——中二班《剪窗花》', '《剪窗花》是一个手工活动，我认为我本次活动的设计也是非常有趣的，让孩子在观察、讨论、玩玩中度过，在一个愉快的气氛下学习知识，这样也体现了游戏化的教学方式。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	《剪窗花》是一个手工活动，我认为我本次活动的设计也是非常有趣的，让孩子在观察、讨论、玩玩中度过，在一个愉快的气氛下学习知识，这样也体现了游戏化的教学方式。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次活动我的目标就是让幼儿通过观看各种窗花以及我的现场演示，然后让幼儿发挥自己的想象，剪出各种各样有趣的窗花，这样做既能调动幼儿观察的积极性，又能拓展幼儿想象的空间。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动中，孩子们也表现得非常积极，争着说自己的想法。接着我发放了材料，让幼儿尽情的去发挥，去剪自己想象中的窗花，幼儿也能很积极的参与进来。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175657_94125.jpg" alt="" /> \n</div>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	最后，我引导幼儿自愿上来展示自己的作品，但这个环节我却忽视了让幼儿介绍自己的作品，所以我认为本次的教学活动还有很多地方需要进行改善的，希望以后我为幼儿提供的活动更有趣、丰富。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175655_26770.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175658_63953.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175653_76439.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614175654_34186.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-09 21:57:46'),
(33, 4, '', '', '', '151818471250.jpeg', '巧手赞扬真善美 真心传授育儿经', '3月8日下午，华阳幼儿园志愿者服务队参加了由华阳街道组织的“2016年三八妇女节暨华阳街道首届‘真善美’女性评选主题活动”。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	3月8日下午，华阳幼儿园志愿者服务队参加了由华阳街道组织的“2016年三八妇女节暨华阳街道首届‘真善美’女性评选主题活动”。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	作为此次活动的协办方，我园不仅积极参与了活动的筹备，幼儿园“蘑菇志愿服务队”还负责现场的插花展示和育儿知识教授等活动环节。\n</p>\n<p align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160601/20160601184315_88107.jpg" alt="" /> \n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动中，插花展示现场，幼儿园易学敏老师的插花艺术引得人们纷纷前来观摩、学习。与此同时，欧阳冰洁老师也在舞台上与观众积极互动，现场教授现代育儿经。其科学的育儿理念、实用的育儿方法，更是获得了观众们的一致认同。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，幼儿园的志愿者们不仅用爱心向大家送上了三八节的问候，更用自己的付出展示了华阳幼儿园“蘑菇志愿者”的风采。\n</p>', 0, NULL, '2018-02-09 21:58:32'),
(34, 6, '', '', '', '151927644362.jpeg', '华幼西区小班组家长志愿者进课堂讲故事活动', '为了激发幼儿阅读兴趣，搭建家园沟通的桥梁。2017年11月10日华幼西区小班组以“家长进课堂、家园溢书香”为主题，开展了家长志愿者进课堂讲故事活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了激发幼儿阅读兴趣，搭建家园沟通的桥梁。2017年11月10日华幼西区小班组以“家长进课堂、家园溢书香”为主题，开展了家长志愿者进课堂讲故事活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120143203_22032.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动前，我们的家长志愿者绞尽脑汁、想尽各种办法。有的制作了精美的PPT；有的准备了可爱的动物头饰；有的······。瞧！小一班的家长志愿者通过游戏巧妙的掩饰了传统教学的枯燥无味，让我们的孩子在轻松、愉快地环境下学习；小二班的家长志愿者带来的绘本《一颗纽扣》看似一个简单的小故事，却蕴藏着丰富知识的小故事；小三班的家长志愿者用生动活泼的语言、精彩形象的肢体动作为孩子们讲述了《龟兔赛跑》的故事，每个孩子们都听得聚精会神。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171120/20171120143215_65947.jpg" alt="" /> \n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次活动，不仅拉近家园之间的距离，也在每个孩子心底埋下一颗喜欢并享受阅读的种子，生根发芽，伴随孩子快乐成长。\n</p>', 0, NULL, '2018-02-22 13:14:03'),
(35, 6, '', '', '', '151927662627.jpeg', '爱的路上携手共进——华幼小班组学期初家长会', '家长是幼儿的第一任教师，也是幼儿教育的重要力量。开学已有一月，孩子的在园情况是家长们分外关注的事情。为了使家长们能够更加深入地了解班级的情况以及孩子在园的实际状况，同时也为了加强家园合作，10月13日下午，天府新区华阳幼儿园小班组组织召开了学期初家长会', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	家长是幼儿的第一任教师，也是幼儿教育的重要力量。开学已有一月，孩子的在园情况是家长们分外关注的事情。为了使家长们能够更加深入地了解班级的情况以及孩子在园的实际状况，同时也为了加强家园合作，10月13日下午，天府新区华阳幼儿园小班组组织召开了学期初家长会。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171029/20171029110557_27020.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	各班老师们在会上向家长们分享了孩子在幼儿园第一个月的情况以及将来需要家长配合的点，还向家长们介绍了华阳幼儿园的特色课程，家长们认真地聆听，并与老师就如何帮助孩子更好成长、如何培养孩子养成良好习惯等方面进行探讨，最终在交流中达成共识。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20171029/20171029110611_35867.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次家长会的召开，家长们更加了解了自己的孩子在园的情况，也纷纷表示一定和幼儿园紧密携手，共同促进孩子健康发展，为孩子的健康成长保驾护航，家长会在愉快祥和的气氛中落下帷幕。\n</p>', 0, NULL, '2018-02-22 13:17:06'),
(36, 6, '', '', '', '151927677570.jpeg', '【家园共育】“慧”读书', '一本好的图书，可让人变聪慧，也能储存好的品质。为了营造书香氛围，让幼儿和家长择好书，会读书。2017年9月18日下午3:00，华阳幼儿园西区大班组开展了“慧”读书书香嘉年华活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	一本好的图书，可让人变聪慧，也能储存好的品质。为了营造书香氛围，让幼儿和家长择好书，会读书。2017年9月18日下午3:00，华阳幼儿园西区大班组开展了“慧”读书书香嘉年华活动。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923172621_19887.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923172622_69817.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923172622_19165.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923172622_46079.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	《遇到你真好》《谁藏起来了》《牙齿大街的新鲜事》《宇航员》……家长们正在热火朝天的推荐着自己带来的图书，讲述着这本书带来的教育价值；还有的家长借着自己陪读的经验，向家长们分享到如何选择好书，怎样陪伴幼儿读书的重要性，说出了自己的观点和方法。整个活动书意浓浓，充满着满满的书香味。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次活动，拓展了家长们对书的认识。知道丰富书的种类，用心进行筛选，智慧陪伴阅读，让大家“慧”读书，为养成阅读好习惯奠定良好的基础。\n</p>', 0, NULL, '2018-02-22 13:19:35'),
(37, 6, '', '', '', '151927684529.jpeg', '天府新区华阳幼儿园新生家长会', '轻轻的一声：“老师，您早！”\n\n幼儿园的生活开始了！\n\n为了帮助新入园的孩子和家长们顺利平稳地度过家园分离期，天府新区华阳幼儿园各校区新生家长会在开学第一周圆满结束。', '<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">轻轻的一声：“老师，您早！”</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">幼儿园的生活开始了！</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">为了帮助新入园的孩子和家长们顺利平稳地度过家园分离期，天府新区华阳幼儿园各校区新生家长会在开学第一周圆满结束。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;">♥</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">总园</span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<b><span style="font-family:黑体;line-height:30px;font-size:15pt;">宝贝们！你们来了！</span></b><b><span style="font-family:黑体;line-height:30px;font-size:15pt;"></span></b>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-324pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">——天府新区华阳幼儿园小班组新生家长会</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">新的学期开始了，我们又迎来了一张张可爱的笑脸，小班的宝贝们入园啦！</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">为了帮助宝贝们更快更好的适应幼儿园生活，增进家长与学校、教师的了解和认识，我园于9月1日下午3：30举行了新生家长会。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923170838_12200.jpg" alt="" /><br />\n</span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">在家长们的期待中，老师们首先介绍了幼儿园和班级老师的基本情况。接着又为家长们介绍了幼儿在园的一日生活。同时也用一个个实例缓解了家长们的一些焦虑。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">通过本次活动，家长们纷纷表示既了解了学校又认识了老师，同时也了解了一些如何帮助孩子适应集体生活的方法，同时也非常愿意将孩子交到我们手里。当然我们也相信，华阳幼儿园将成为宝贝们健康快乐成长的乐园！</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">黄琳/文 &nbsp;总园小班组老师/图</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华康简楷;line-height:24px;font-size:12pt;">&nbsp;&nbsp;</span><span style="font-family:华康简楷;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;">♥西区</span><span style="font-family:华文中宋;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<b><span style="font-family:黑体;line-height:30px;font-size:15pt;">家园携手&nbsp;&nbsp;共创未来</span></b><b><span style="font-family:黑体;line-height:30px;font-size:15pt;"></span></b>\n</p>\n<p class="MsoNormal" align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">——记天府新区华阳幼儿园西区新生家长会</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">为了使小班新生尽快适应幼儿园的集体生活，解除家长们的心理顾虑。2017年9月5日下午，华阳幼儿园西区小班组开展了新生家长会。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923170858_19385.jpg" alt="" /><br />\n</span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">本次新生家长会分为两个两个部分：首先，是执行园长李妈妈向家长们介绍幼儿园简介、幼儿在园一日生活、课程与活动、及家园合作、安全等多个方面，使新生家长对幼儿园有了全面的了解；紧接着是各班开展形式多样的班级家长会，有的班级采用PPT分享，向家长介绍班级主题活动的开展、安全教育活动、特色教育等；也有的班级采用家长座谈会的形式，零距离和家长接触，共同探讨新学期幼儿发展目标，并分享有益的育儿经验、育儿趣事等，气氛和睦融洽。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">相信通过此次家长会这不仅能让家长多角度全方位地了解幼儿园，增进对幼儿园的可信度，更能拉近家长、教师和幼儿园之间的距离，同时也为孩子们健康快乐成长奠定了夯实的基础！</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">杨仕芳/图 &nbsp;&nbsp;&nbsp;西区小班组老师/文</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;">♥东区</span><span style="font-family:华文中宋;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<b><span style="font-family:黑体;line-height:30px;font-size:15pt;">家园携手&nbsp;共助幼儿健康成长</span></b><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-324pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">&nbsp;&nbsp;&nbsp;</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;">&nbsp;&nbsp;&nbsp;——记华阳幼儿园东区2017年秋季新生家长会</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">为了帮助新生家长更好地了解幼儿园、了解班级教师，促进家园间的有效沟通与相互理解。2017年9月4日下午3点，天府新区华阳幼儿园东区在二楼会议室召开了2017年秋季新生家长会。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923170928_97973.jpg" alt="" /><br />\n</span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">会议分为两个部分，首先由华幼东区执行园长谢丽艳向家长们详细介绍了幼儿园的发展历程、办园理念、教育特色、师资建设以及东区分园管理团队、新生班教师基本情况等。其次，是由新生班教师召开学初第一次的家长会。会上，老师们以直观的图片、真实的案列和家长们初步交流了家园合作事项，帮助家长们正确认识孩子的家园分离等问题，在家园间形成了良好的沟通氛围。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">通过此次会议，不仅帮助家长们对幼儿园的活动有了初步地了解；更对老师们的工作有了初步地了解；也对孩子们在园的生活、学习情况有了初步地了解；更为我园家园共育工作提供了经验支撑。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">最后，祝愿我们所有的小朋友们在幼儿园里健康、快乐地成长!</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">喻晓兰/图 &nbsp;&nbsp;&nbsp;西区小班组老师/文</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="margin-left:378pt;font-size:16px;color:#74411A;text-indent:-378pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:华文中宋;line-height:28px;font-size:14pt;">♥南区</span><span style="font-family:华文中宋;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<b><span style="font-family:黑体;line-height:30px;font-size:15pt;">沟通从心开始，共建由心而起</span></b><b><span style="font-family:黑体;line-height:30px;font-size:15pt;"></span></b>\n</p>\n<p class="MsoNormal" align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">——记天府新区华阳幼儿园南区小班组新生家长会</span><span style="font-family:华文楷体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">9月8日华阳幼儿园南区和全体小班组家长共建交流启动，保教办、保健室、后勤组、小班组教师等部门携手家长开展了新生家长交流座谈会。为了让新生家长们充分了解我的园办园理念及班级各方面情况，天府新区华阳幼儿园南区执行园长李敏对我园办园理念、小班组老师情况以及我园的特色活动做了详细介绍。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20170923/20170923170949_28278.jpg" alt="" /><br />\n</span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">为给家长朋友们留下良好的第一印象，建立初步的信任感，小班的教师们都做了精心准备，如：精炼的自我介绍、精美的PPT等。会议中，李园长就我园的现状、教师情况、教育教学活动、课程特色和家园配合等事宜做了详细介绍，并着重介绍了我们园的七大安全体验中心，强调了安全教育的重要性，也为家长们如何对幼儿进行安全教育给出了科学建议。在沟通过程中，李园长对家长们所关心的教师师德、幼儿的午睡、膳食、教学理念等问题进行了详细的解答。并呼吁家长积极参与到家园互动活动中，确保家园共育的一致性和有效性。</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;line-height:24px;font-size:12pt;">通过此次新生家长会，家长对我园有了初步的信任感，希望在家园一致的合作下，为孩子们共建更加快乐的成长乐园！</span><span style="font-family:宋体;line-height:24px;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:华文楷体;line-height:24px;font-size:12pt;">付立林/图 &nbsp;&nbsp;&nbsp;西区小班组老师/文</span>\n</p>', 0, NULL, '2018-02-22 13:20:45'),
(38, 6, '', '', '', '151927698996.jpeg', '加强沟通 密切合作｜华幼南区园级家委会会议', '2017年5月26日，天府新区华阳幼儿园南区园级家委会会议在一楼多功能厅隆重召开。华幼南区执行园长李敏主持会议，来自6个班级的园级家委会成员、班级家委会成员和幼儿园各部门负责人参加了此次会议。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2017年5月26日，天府新区华阳幼儿园南区园级家委会会议在一楼多功能厅隆重召开。华幼南区执行园长李敏主持会议，来自6个班级的园级家委会成员、班级家委会成员和幼儿园各部门负责人参加了此次会议。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170602/20170602153547_80164.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了活跃氛围，促进大家相互认识，来自各班级的家委会成员们在会议开始前轮流进行了自我介绍。接着，李敏园长详细介绍了幼儿园的办园理念、办园思想、管理制度、课程建设、团队培养等情况。李敏园长强调：在未来的工作中，幼儿园将以幼儿和教师的发展为基础，着力内涵提升；以三项创新为主线，加快品牌建设。此外，李敏园长还带着家长们学习了《2017年华幼南区家长学校计划》,从指导思想、工作目标到工作措施等做了详细说明和部署。最后，保教管理负责人分享了一些先进的科学育儿知识，并在卫生保健、教育教学等方面对家长们提出了新的希望和要求，鼓励家长们平时要多陪伴幼儿、多注意幼儿的饮食护理。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过此次会议，家委会成员们对幼儿园各方面工作有了进一步的了解，更加信任幼儿园，也更加理解和支持班级教师的工作。相信在良好的“合作共育”的氛围下，华幼南区的孩子们一定会更加健康快乐地成长！\n</p>', 0, NULL, '2018-02-22 13:23:09'),
(39, 6, '', '', '', '151927712924.jpeg', '共策 共育 共享｜华阳幼儿园召开园级家委会会议', '为了整合家庭、社区和幼儿园的教育资源，形成教育合力，促进幼儿健康快乐地成长。2017年5月5日上午，天府新区华阳幼儿园召开了园级家委会会议。会议由幼儿园副园长欧阳冰洁主持。园长徐途琼及幼儿园园级家委会成员参加了此次会议。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了整合家庭、社区和幼儿园的教育资源，形成教育合力，促进幼儿健康快乐地成长。2017年5月5日上午，天府新区华阳幼儿园召开了园级家委会会议。会议由幼儿园副园长欧阳冰洁主持。园长徐途琼及幼儿园园级家委会成员参加了此次会议。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	会议正式开始前，徐园长首先对家长们的到来表示热烈欢迎，接着向大家介绍了本学期的工作计划、经费投入情况、近期的工作重点和今后的发展方向，就幼儿园特色课程、家长志愿者活动、幼儿园环境打造、幼儿园办园品牌提升等方面的举措和新区教育事业发展规划进行了详细的阐述。徐园长还特别感谢了家长们对幼儿园各项工作的大力支持与配合。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170602/20170602113855_47001.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	副园长欧阳冰洁介绍了幼儿园的膳食管理和卫生保健工作，重点强调了幼儿疾病预防工作措施，以及需要家长配合的工作要点，希望在家园的共同努力下为幼儿营造一个健康、安全、舒适的生活环境。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170602/20170602113915_72119.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	本次园级家委会的顺利召开，不仅让家长们对我园教育教学工作有了进一步的了解，为家园更密切地配合、为幼儿全面发展起到推动作用。让我们家园携手、共策共育共享为华幼的孩子们创造美好的童年。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170602/20170602113932_86019.jpg" alt="" />\n</p>', 0, NULL, '2018-02-22 13:25:29'),
(40, 6, '', '', '', '151927722199.jpeg', '华阳幼儿园3月家园共构主题活动日活动', '2017年3月31日，华阳幼儿园迎来了每月一次的家园共构主题活动日，幼儿园“蘑菇志愿者中心”各部门组织了丰富的活动。心灵手巧制作部的材料制作、组织策划服务部的食堂管理、互动培训提升部的理财培训、特色教育活动部的家长进课堂等等活动，让家长们在参与中真实地走进了幼儿园。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<b><span style="font-family:宋体;color:#E36C09;font-size:16pt;">全面开放</span></b><b><span style="font-family:Calibri;color:#E36C09;font-size:16pt;">&nbsp;&nbsp;</span></b><b><span style="font-family:宋体;color:#E36C09;font-size:16pt;">深度共育</span></b>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2017年3月31日，华阳幼儿园迎来了每月一次的家园共构主题活动日，幼儿园“蘑菇志愿者中心”各部门组织了丰富的活动。心灵手巧制作部的材料制作、组织策划服务部的食堂管理、互动培训提升部的理财培训、特色教育活动部的家长进课堂等等活动，让家长们在参与中真实地走进了幼儿园。\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动中，家长组织的理财讲座引导教师和家长们学习依靠自己去思考、判断、选择和行动，提高财富的积累和生活的质量；而心灵手巧的家长们则帮助教师们制作区角教玩具；组织策划组走进食堂参观，并听取食堂管理人员介绍了幼儿的膳食搭配；家长进课堂活动中有交警叔叔讲解装备和户外安全知识，有美丽的舞蹈老师倾心互动，还有各类的科学实验……\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20170417/20170417213013_20939.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	在长期的实践中，华阳幼儿园一直致力于家、园、社区合作共育特色的构建。通过固化每月一次的家园共构活动，坚持幼儿园向家长全面开放。家长们在参与幼儿园教育教学、全面管理、质量评估、活动策划中，成为幼儿园的管理者、参与者，实现家、园、社区合作共育，满足幼儿全面发展的需求。\n</p>', 0, NULL, '2018-02-22 13:27:01'),
(41, 6, '', '', '', '151927740325.jpeg', '华阳幼儿园“家长开放日”活动', '为了进一步加强幼儿园与家庭之间的沟通交流，提升家园共育质量，让家长更好地了解孩子在园的一日生活，提高家园共育质量。天府新区华阳幼儿园开展了家长开放日活动。', '<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:方正小标宋_GBK;line-height:30px;color:#E36C09;font-size:15pt;">家园沟通，快乐成长</span><span style="font-family:宋体;line-height:28px;color:#E36C09;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;color:#E36C09;font-size:14pt;">&nbsp;</span><span style="font-family:方正楷体_GBK;line-height:28px;color:#E36C09;font-size:14pt;">为了进一步加强幼儿园与家庭之间的沟通交流，提升家园共育质量，让家长更好地了解孩子在园的一日生活，提高家园共育质量。天府新区华阳幼儿园开展了家长开放日活动。</span><span style="font-family:方正楷体_GBK;line-height:28px;color:#E36C09;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋_GBK;line-height:30px;color:#5F497A;font-size:15pt;">小班组家长开放日</span><span style="font-family:方正小标宋_GBK;line-height:30px;color:#5F497A;font-size:15pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;">结合本学期“爱与感恩”主题，各班老师围绕主题开展了丰富多彩的集体教育活动。例如：绘本《抱抱》让孩子们感受到了如何表达爱，手工制作《全家福》、《家庭树》让孩子们和家长一起感受创作的快乐，体验家庭的温馨。接着在期中家长会中，就家长担心的一些问题、孩子出现的问题以及未来如何有效的开展家园共育合作和家长们进行了解答、讨论、交流。最后进餐时，家长们看到孩子们的生活自理能力有了很大的提高，也备感欣慰。</span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;">活动后，老师从家长们的脸上看到了满意的笑容；从孩子们的笑声中感受到了快乐和喜悦。家长们纷纷表示，今后要多参加类似活动，及时了解幼儿园各种教育方法，以便更有效地配合幼儿园开展家庭教育。</span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161219/20161219115347_24820.jpg" alt="" /></span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋_GBK;line-height:30px;color:#5F497A;font-size:15pt;">中班组“家长开放日”活动</span><span style="font-family:方正小标宋_GBK;line-height:30px;color:#5F497A;font-size:15pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;">活动前，各班老师向家长们简短介绍了活动的具体流程，并提出参与活动的要求和希望。接着各班教师结合孩子的实际情况向家长们一一展示了生活活动、集体教育、户外体育游戏等环节。活动中，充满情趣的活动场景不但吸引了孩子，也使家长们跃跃欲试，看到孩子们积极地表现，开心地游戏，家长们心里满是喜悦。在观摩活动后，各班老师还组织家长针对当天的活动进行了互动讨论交流，家长们纷纷表示，今后要多参加类似</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">的</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">活动，以便及时了解幼儿园各种教育信息，更有效地配合幼儿园开展家庭教育。</span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;">家长开放日活动，不仅让家长更多地了解到了幼儿园教育的内涵，更是家园教育理念的协调统一、实现家园共育的重要途径。我园将坚持家园共育的办园理念，真正促进孩子健康、快乐成长。</span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161219/20161219115416_56222.jpg" alt="" /></span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋_GBK;line-height:30px;color:#5F497A;font-size:15pt;">天府新区华阳幼儿园大班组家长开放日活动</span><span style="font-family:方正小标宋_GBK;line-height:30px;color:#5F497A;font-size:15pt;"><br />\n</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">&nbsp;&nbsp;&nbsp;&nbsp;本次开放日活动，大班组老师开放了操节、集教、户外、生活活动等环节，让家长更清楚幼儿在园的生活情况和学习品质的发展。</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">在操节活动</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">中孩子们都很积极的与教师互动，跟随音乐有节奏的律动起来</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">精神饱满；教学观摩课上，教师与幼儿默契的配合、有爱的问答，展现了教师的专业和幼儿的聪颖；户外游戏时，孩子们通过各种体育器械、肢体</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">运动等游戏向家长们展示了近期体质锻炼的成果；生活活动时，家长们看到了孩子对营养搭配、香脆可口的饭菜的喜爱，感受到幼儿园对孩子身体健康的关爱；家长交流会上，老师与家长们进行了面对面的互动交流，家长们了解到孩子在学校生活和学习方面的情况；整个活动中，家长看到</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">了孩子的进步与成长，看到了老师对孩子</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">细致的关爱，</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">让每一位参与活动的家长</span><span style="font-family:宋体;line-height:28px;font-size:14pt;">都非常感动。</span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161219/20161219115439_57598.jpg" alt="" /></span><span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" align="center" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:0pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;line-height:28px;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;line-height:28px;color:#E36C09;font-size:14pt;">经过此次家长开放日活动，家长们更了解幼儿在园的生活和学习情况，他们对长大了一岁的幼儿展现出来的品质表示很欣慰；同时，活动也拉近了家长与老师之间的交流和沟通，让彼此更互相理解。相信在家园共育的环境下，在充满爱的氛围里，幼儿会更快乐健康地成长。</span>\n</p>', 0, NULL, '2018-02-22 13:30:04'),
(42, 6, '', '', '', '151927747688.jpeg', '家园携手 共促健康成长', '为了深化“明厨亮灶”工程建设，促进华阳幼儿园食堂民主化、透明化的管理。11月23--24日华阳幼儿园西区开展了家长进食堂活动。', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:42pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:14pt;">为了深化“明厨亮灶”工程建设，促进华阳幼儿园食堂民主化、透明化的管理。11月23--24日华阳幼儿园西区开展了家长进食堂活动。</span><span style="font-family:宋体;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:14pt;">活动一开始，</span><span style="font-family:宋体;font-size:14pt;">西区后勤副主任肖静梅</span><span style="font-family:宋体;font-size:14pt;">首先</span><span style="font-family:宋体;font-size:14pt;">向家长们介绍“明厨亮灶”工作开展的情况，</span><span style="font-family:宋体;font-size:14pt;">接着</span><span style="font-family:宋体;font-size:14pt;">保健医生万涛进行了</span><span style="font-family:宋体;font-size:14pt;">题为</span><span style="font-family:宋体;font-size:14pt;">《幼儿膳食与营养健康》的专题讲座。紧</span><span style="font-family:宋体;font-size:14pt;">接着</span><span style="font-family:宋体;font-size:14pt;">大家一起走进食堂，</span><span style="font-family:宋体;font-size:14pt;">实地查看食堂的管理与工作人员的操作，并</span><span style="font-family:宋体;font-size:14pt;">对食堂的原材料进行抽样检查。最后</span><span style="font-family:宋体;font-size:14pt;">家长们</span><span style="font-family:宋体;font-size:14pt;">共同品尝幼儿膳食，就膳食情况提出自己的宝贵意见和建议。</span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201131842_59971.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201131935_46938.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201132034_17783.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201132053_79529.jpg" alt="" />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<br />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:14pt;">通过本次活动，</span><span style="font-family:宋体;font-size:14pt;">家长们不仅对我园食堂管理有了较为全面的了解，并且充分肯定了我园食堂的各项工作，</span><span style="font-family:宋体;font-size:14pt;">家长们纷纷表示对</span><span style="font-family:宋体;font-size:14pt;">幼儿园</span><span style="font-family:宋体;font-size:14pt;">的幼儿膳食非常放心、满意，希望食堂能一如既往</span><span style="font-family:宋体;font-size:14pt;">地做好各项工作</span><span style="font-family:宋体;font-size:14pt;">。</span>\n</p>', 0, NULL, '2018-02-22 13:31:16'),
(43, 6, '', '', '', '151927754750.jpeg', '家园共构，共促发展', '家园是一辆自行车上的两个轮子，只有协调一致才能朝着同一个方向前进”。在“家，园，社区三位一体”的教育特色引领下，天府新区华阳幼儿园坚持每月举行一次“家园共构家长志愿者活动日”。让家长走进幼儿园为幼儿的生活、学习提供更多元化的服务，同时也为孩子幸福童年生活创造别样的精彩！', '<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:楷体;font-size:14pt;">“家园是一辆自行车上的两个轮子，只有协调一致才能朝着同一个方向前进”。</span><span style="font-family:楷体;font-size:14pt;">在“家，园，社区三位一体”的教育特色引领下，天府新区华阳幼儿园坚持每月举行一次</span><span style="font-family:楷体;font-size:12pt;">“家园共构家长志愿者活动日”</span><span style="font-family:楷体;font-size:14pt;">。让家长走进幼儿园</span><span style="font-family:楷体;font-size:14pt;">为幼儿的生活、学习提供更多元化的服务，同时也为孩子幸福童年生活创造别样的精彩！</span><span style="font-family:楷体;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:28pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:楷体;font-size:14pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;">华阳幼儿园总园</span><span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;">2016年11月25日，走入教室，你可以看到爷爷带着孩子们认识宇宙各大星系，拓展孩子的视野。妈妈们和孩子们玩着折纸游戏、音乐游戏，爸爸带着孩子们做挑战游戏等等。活动中，家长们运用自身特长给孩子们带来一次次愉快体验，更有心灵手巧的志愿者协助教师们制作了精美的教玩具。</span><span style="font-family:方正小标宋简体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201120056_59073.jpg" alt="" /><br />\n</span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;"><br />\n</span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;">华阳幼儿园西区</span><span style="font-family:方正小标宋简体;color:#C0504D;font-size:12pt;"></span>\n</p>\n<p class="15" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:方正小标宋简体;font-size:12pt;">2016年11月23日小中班李安晴小朋友的妈妈为孩子们准备的手工活动——《粘贴大鱼》。活动开始，晴晴妈妈和孩子们一起玩了颜色变魔术的游戏，让孩子们在游戏中认识了颜色，感受了颜色变化的魔力。之后，晴晴妈妈给孩子们讲了绘本故事《小墨鱼》，让孩子们在故事中了解了小鱼变大鱼的方法。最后，晴晴妈妈组织幼儿分组进行粘贴大鱼的游戏，让幼儿通过与同伴合作完成自己组的作品。</span><span style="font-family:方正小标宋简体;font-size:12pt;"></span>\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161201/20161201120133_56164.jpg" alt="" />\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<br />\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">在家园共构活动中，家长志愿者们在与教师、幼儿园互动中建立了深厚的友谊，大家渐渐的从一个积极参与者转变为主动倡导者。相信在这样和谐美好的家园共育环境中，我们的孩子会成长得更好！更愿意帮助别人，更懂得分享和感恩！</span><span style="font-family:Calibri;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;">亲爱的家长们，我们的“家园共构家长志愿者活动日”每月最后一周如期举行，我们热情地邀请您的参与喔！</span>\n</p>', 0, NULL, '2018-02-22 13:32:27'),
(44, 6, '', '', '', '151927765754.jpeg', '商讨、沟通、了解——记华阳幼儿园东区园级家委会会议', '为了让家长进一步了解幼儿园的活动和当前的重要事件，华阳幼儿园东区特于2016年10月9日召开了园级家委会和伙委会会议，各班园级家委会成员参加。', '<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;">为了让家长进一步了解幼儿园的活动和当前的重要事件，华阳幼儿园东区特于2016年10月9日召开了园级家委会和伙委会会议，各班园级家委会成员参加。</span><span style="font-family:宋体;font-size:12pt;"></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;">在本次会议中，首先由彭庆向家长们介绍了幼儿园的基本情况及发展方向，在教育教学方面又从安全教育、课程安排、主题活动、家长志愿者活动和读书活动等几个方面进行了详细的阐述，让家长们充分了解了幼儿园。接着负责后勤的周老师简单的介绍了食堂工作，以及对接下来将进行的厨艺大师进行了说明，家长们对厨艺比赛非常感兴趣；对于幼儿后期的伙食费，也与家长们进行了探讨，大家一致认为一起交比较好，可以减轻家长和老师的工作量，并在同意书上签字按手印；最后家长们对幼儿园的发展前景非常有信心，并提出了合理化的建议。</span><span style="font-family:宋体;font-size:12pt;"></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;">本次会议气氛非常轻松活跃，家长们不仅进一步了解了幼儿园以及幼儿园的活动，更是促进了家园的沟通与了解，家长们也表示将配合幼儿园让各项活动顺利开展，希望幼儿园的发展越来越好。</span><span style="font-family:宋体;font-size:12pt;"></span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;font-size:12pt;"><br />\n</span> \n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:24pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<span style="font-family:宋体;font-size:12pt;"><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026151107_63712.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026151107_92974.jpg" alt="" /></span> \n</p>', 0, NULL, '2018-02-22 13:34:17'),
(45, 5, '', '', '', '151927778664.jpeg', '享受自然，快乐播种 ——华幼东区家长志愿者种植活动', '在这阳光温馨恬静，蓝天白云的秋天，为了丰富幼儿生活，亲近自然、发现大自然植物生长的奥妙、体验种植的乐趣。天府新区华阳幼儿园东区于9月27日上午开展了家长志愿者种植活动。', '<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;">在这</span><span style="font-family:宋体;font-size:12pt;">阳光温馨恬静，蓝天白云</span><span style="font-family:宋体;font-size:12pt;">的秋天，</span><span style="font-family:宋体;font-size:12pt;">为了丰富幼儿生活，亲近自然、发现大自然植物生长的奥妙、体验种植的乐趣。</span><span style="font-family:宋体;font-size:12pt;">天府新区华阳幼儿园东区于9月27日上午开展了家长志愿者种植活动。</span><span style="font-family:宋体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;">首先，上午各班的家长志愿者和教师带着幼儿到种植园地开始了快乐种植，大家各司其责，家长们领工具、拔草、挖地、松土；接着教师介绍本班种的蔬菜苗和种的种子，家长示范如何种植蔬菜秧苗和撒种子，再把秧苗和种子发给幼儿，教幼儿开始种植，最后为种好的秧苗和种子盖土浇水。大家你一言我一句其乐融融，忙的不亦乐乎！我们还将以“观察日记”的形式记录植物生长的整个过程。</span><span style="font-family:宋体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;">通过本次开展的种植活动，不仅让家长们参与到我们的活动当中来，更是让孩子们从中体验了劳动和收获的快乐。孩子们认识和了解自然物的生长规律，同时又能让孩子们对大自然保持着永久的好奇心和探究欲望，促进幼儿对自然知识的探究和观察兴趣。让我们的种植园地地成为孩子们探索的乐园，成长的乐园！</span><span style="font-family:宋体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" align="justify" style="margin-left:0pt;font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="font-family:宋体;font-size:12pt;"></span>\n</p>\n<p class="MsoNormal" style="font-size:16px;color:#74411A;text-indent:21pt;font-family:微软雅黑;background-color:#F7FAEB;">\n	<span style="font-family:宋体;font-size:12pt;"></span>\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<br />\n</p>\n<div style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;text-align:justify;">\n	<span style="line-height:2;font-size:16px;"></span>\n</div>\n<div style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;text-align:center;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026144357_62657.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026144358_55293.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20161026/20161026144742_25444.jpg" alt="" />\n</div>', 0, NULL, '2018-02-22 13:36:26'),
(46, 5, '', '', '', '151927785122.jpeg', '大六班家长会', '大六班家长会', '<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614115948_81625.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614115949_41286.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614115950_51116.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614115950_83215.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160614/20160614115951_33090.jpg" alt="" />', 0, NULL, '2018-02-22 13:37:31');
INSERT INTO `page` (`Id`, `type`, `author`, `Age`, `class`, `CoverMap`, `title`, `introduce`, `text`, `Clicks`, `sort`, `CreationTime`) VALUES
(47, 5, '', '', '', '151927796259.jpeg', '“我爱我的祖国” ——天府新区华阳幼儿园大班组庆国庆活动', '国庆节是祖国妈妈的生日，对于大班幼儿，“ 十月一日”只是一个盛大的节日，可以休息7天，有好吃的、好玩的，到处都很热闹。但是对这一节日的实际意义还不能深入了解。为了让幼儿了解十月一日是国庆节，我们开学初就相继开展了系列爱国主义主题教育活动，引导幼儿适时了解一些历史，让幼儿知道今天幸福生活的来之不易。为培养幼儿热爱祖国的情感，让孩子们一起为祖国妈妈庆祝，在相聚中体悟华夏的传统和文化。我们结合“我爱祖国”主题教育活动进行国庆庆祝活动，给孩子们一个展示自己、表达爱国情感的舞台，让每一位幼儿都能在活动中自信、大方的展示自己，家长们也积极参与幼儿的节日庆祝活动中，进一步感悟我园的教育观念，从中使自己对如何教育孩子有所启发。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	国庆节是祖国妈妈的生日，对于大班幼儿，“ 十月一日”只是一个盛大的节日，可以休息7天，有好吃的、好玩的，到处都很热闹。但是对这一节日的实际意义还不能深入了解。为了让幼儿了解十月一日是国庆节，我们开学初就相继开展了系列爱国主义主题教育活动，引导幼儿适时了解一些历史，让幼儿知道今天幸福生活的来之不易。为培养幼儿热爱祖国的情感，让孩子们一起为祖国妈妈庆祝，在相聚中体悟华夏的传统和文化。我们结合“我爱祖国”主题教育活动进行国庆庆祝活动，给孩子们一个展示自己、表达爱国情感的舞台，让每一位幼儿都能在活动中自信、大方的展示自己，家长们也积极参与幼儿的节日庆祝活动中，进一步感悟我园的教育观念，从中使自己对如何教育孩子有所启发。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602153539_95855.jpg" alt="" /><br />\n</div>\n<p align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	知识问答\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602153554_71712.jpg" alt="" /><br />\n</div>\n<p align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	合唱《大中国》\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	幼儿感受国庆节热烈的气氛，萌发爱国情感，我们在活动前期（9月1日-3日），积极鼓励幼儿回家观看纪念抗日战争胜利70周年阅兵仪式，并发动家长配合幼儿收集阅兵图片和资料，丰富我们的“我爱我的祖国”主题墙，让幼儿了解到了祖国的历史，铭记历史的教训。活动中期（9月7日-18日），我们鼓励幼儿讲爱国人物故事、演唱爱国歌曲、朗诵爱国主义诗歌等，让幼儿萌发了强烈的爱国情感。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	9月30日上午我们终于迎来了激动人心的时刻---国庆庆祝活动，首先我们在教室举行了国庆知识问答，小朋友们积极举手，气氛热烈，让家长们刮目相看。接着我们又表演了合唱《大中国》，得到了家长一致好评。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过这一系列的活动，孩子们对我们国家认识和了解得更多了，也更加热爱我们的祖国了，同时也进一步增进了孩子与家长的亲子感情，有效促进了家园联系。\n</p>', 0, NULL, '2018-02-22 13:39:22'),
(48, 5, '', '', '', '151927829618.jpeg', '中三班家长开放日', '为了让家长们了解、知道孩子们在幼儿园的半日生活内容，了解孩子们在教学活动中的表现，同时也为了教师与家长之间的沟通,我们2015年11月18日开展了本班的家长开放日活动，意在让家长们能够走进幼儿园近距离的看到孩子在园的生活情况，了解教师在教学活动中的教学方法和形式，从而让他们能够更好地配合幼儿园的各项工作，共同关注孩子成长的每一个阶段。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	为了让家长们了解、知道孩子们在幼儿园的半日生活内容，了解孩子们在教学活动中的表现，同时也为了教师与家长之间的沟通,我们2015年11月18日开展了本班的家长开放日活动，意在让家长们能够走进幼儿园近距离的看到孩子在园的生活情况，了解教师在教学活动中的教学方法和形式，从而让他们能够更好地配合幼儿园的各项工作，共同关注孩子成长的每一个阶段。\n</p>\n<p align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602094520_66280.jpg" alt="" /> \n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	在活动中我们向家长们开放了早操活动、集体教育活动和生活活动。在活动前，为了能有序顺利的开展活动，我们特向家长们进行了会前说明会，让家长们能更加清楚的了解今天活动的流程与为活注意事项。在活动中，有了之前对家长的说明会，家长们都很配合老师在活动前对他们所提出的要求，既没有去干涉幼儿的自由发挥，也尊重老师的教学计划。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动结束后，我们还与家长们进行了深刻地交流，家长们也谈了观摩活动后的感受，也提出了日常如何引导孩子学习的疑问，老师们也耐心的进行了解答，此外，家长们通过观摩本次的半日活动也对老师们和学校表示了肯定。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	此次的开放日活动，不仅让家长更多地了解了自己孩子在幼儿园的生活情况，同时通过参加了这次开放日活动也对老师和学校多了一份肯定和放心，更多的是为家园共育搭起了沟通的桥梁，从而能更好的家园配合，关注每一位幼儿的健康成长！\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602094517_10216.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602094523_42255.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602094526_66222.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602094529_20469.jpg" alt="" /> \n</div>', 0, NULL, '2018-02-22 13:44:56'),
(49, 5, '', '', '', '151927854797.jpeg', '阳光宝贝 健康成长 ——记华阳幼儿园小班组“迎新年”亲子体能活动', '充满感动和收获的2015年过去了，在这辞旧迎新的日子里，我们华阳幼儿园小班组于2016年1月8日上午开展了“迎新年”亲子体能活动。', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	充满感动和收获的2015年过去了，在这辞旧迎新的日子里，我们华阳幼儿园小班组于2016年1月8日上午开展了“迎新年”亲子体能活动。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	活动中我们在体能老师的带领下，首先进行热身活动，接着进行了多种亲子体能活动，如：大龙球、太空漫步、奇妙的气球......幼儿园内到处是欢声笑语，家长和孩子们开心快乐的互动着。最后，活动在《心愿便利贴》的韵律操中圆满结束。\n</p>\n<p align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602100057_78785.jpg" alt="" />\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	通过本次的亲子体能活动，不仅让父母和孩子之间更加亲密了，也为家园合作搭建了一个沟通交流的平台，同时也为孩子的童年生活增添了一道亮丽的色彩！\n</p>\n<p align="center" style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602100031_78472.jpg" alt="" />\n</p>\n<div>\n	<br />\n</div>', 0, NULL, '2018-02-22 13:49:07'),
(50, 5, '', '', '', '151927860211.jpeg', '华幼宝贝 运动最美', '记天府新区华阳幼儿园中班组开展“迎新年”亲子体育运动会', '<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	2016年1月8日上午，天府新区华阳幼儿园开展了“迎新年”亲子体育运动会。中班组全体幼儿与家长，教师参与了本次活动。\n</p>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	此次活动分为两个部分，首先是全园体育运动月开幕式，开幕式上全员幼儿与教师身着新年的盛装喊着积极向上的口号整齐地走向大家；其次是我们华幼蘑菇艺术团的孩子们、家长志愿者、教师们展示了她们活泼可爱、优美、靓丽的舞姿；最后是我们中班组举行的亲子体育运动会，看着孩子和家长们一张张笑容满面的笑容，相信他们收获的不仅仅是比赛的奖品，更重要的是他们收获了快乐与幸福！每个班级形式各异、丰富多彩的游戏活动，轻松、温馨的游戏氛围赢得家长和小朋友的共同喜爱。\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602093201_20810.jpg" alt="" />\n</div>\n<p style="font-size:16px;color:#74411A;text-indent:2em;font-family:微软雅黑;background-color:#F7FAEB;">\n	整个活动，大家都发扬了“重过程，轻结果”的游戏精神，同时通过这样的游戏融洽了亲子间的关系、拉近了家园间的距离。希望华幼的宝贝们在运动中健康成长！\n</p>\n<div align="center" style="padding:0px;margin:0px;font-family:微软雅黑;background-color:#F7FAEB;">\n	<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602093205_29484.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602093208_61031.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602093211_19681.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160602/20160602093213_70825.jpg" alt="" />\n</div>', 0, NULL, '2018-02-22 13:50:02'),
(53, 7, '', '', '', '', '各类骨干培训基地园', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:36:55'),
(52, 7, '', '', '', '', '各类“国培”项目研修基地园。', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:36:02'),
(54, 7, '', '', '', '', '四川师范大学和四川省教育学院国培项目—“园长培训园”', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:37:10'),
(55, 7, '', '', '', '', '成都天府新区直管区体育（幼儿啦啦操）特色项目基地校', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:37:31'),
(56, 7, '', '', '', '', '成都大学“毕业生实习基地', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:37:49'),
(57, 7, '', '', '', '', '四川师范大学“本科生实习基地', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:38:00'),
(58, 7, NULL, NULL, NULL, NULL, '成都市幼儿体操后备人才训练基地', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:38:19'),
(59, 7, '', '', '', '', '成都市‘立德童谣’传唱基地校', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:38:58'),
(60, 7, '', '', '', '', '成都市营养与保健科技学会·幼儿园卫生保健专业委员会会员单位', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:39:48'),
(61, 7, NULL, NULL, NULL, NULL, '成都市环境友好型学校', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:40:09'),
(62, 7, NULL, NULL, NULL, NULL, '天府新区卫生保健先进单位', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:40:23'),
(63, 7, NULL, NULL, NULL, NULL, '成都市‘九五’托幼工作先进集体', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:40:39'),
(64, 7, NULL, NULL, NULL, NULL, '成都市园长发展基地幼儿园', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:40:53'),
(65, 7, NULL, NULL, NULL, NULL, '成都市一级幼儿园', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:41:10'),
(66, 7, NULL, NULL, NULL, NULL, '成都市示范性幼儿园', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:41:26'),
(67, 7, NULL, NULL, NULL, NULL, '四川省校本研修示范学校', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:42:18'),
(68, 7, NULL, NULL, NULL, NULL, '全国第五届心系好儿童成都市首批试点园', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', NULL, 0, NULL, '2018-02-22 14:43:03'),
(69, 7, '', '', '', '', '全国三优家长学校', '华阳幼儿园在天府新区“学有良教、品质卓越”和“专家办学、名师育人”的办学理念指导下，一直致力于园所品牌发展和内涵提升', '', 0, NULL, '2018-02-22 14:43:20'),
(70, 1, '', '', '', '151928271079.jpeg', '一起寻找春天', '春回大地，万物复苏，在这收获着赞美、感恩、理解、尊重的日子里，让我们来一起寻找春天！', '<div class="jtcz" style="padding:0px;margin:0px auto;font-family:微软雅黑;">\n	<div class="wzxqc" style="padding:40px 0px 0px;margin:0px auto;">\n		<div class="wzxqcn" style="padding:0px;margin:0px;">\n			<p style="font-size:16px;color:#74411A;text-indent:2em;">\n				春回大地，万物复苏，在这收获着赞美、感恩、理解、尊重的日子里，让我们来一起寻找春天！\n			</p>\n			<div align="center" style="padding:0px;margin:0px;">\n				<img src="http://www.huayangyoueryuan.com/Public/attached/image/20160608/20160608102904_81202.jpg" alt="" /><img src="http://www.huayangyoueryuan.com/Public/attached/image/20160608/20160608102920_61748.jpg" alt="" />\n			</div>\n			<div>\n				<br />\n			</div>\n		</div>\n	</div>\n</div>', 0, NULL, '2018-02-22 14:58:30');

-- --------------------------------------------------------

--
-- 表的结构 `page_comment`
--

CREATE TABLE IF NOT EXISTS `page_comment` (
  `Id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `text` varchar(500) DEFAULT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论';

-- --------------------------------------------------------

--
-- 表的结构 `page_school`
--

CREATE TABLE IF NOT EXISTS `page_school` (
  `Id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `schoolId` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `page_school`
--

INSERT INTO `page_school` (`Id`, `pageId`, `schoolId`) VALUES
(8, 34, 5),
(7, 34, 3),
(6, 34, 2),
(5, 34, 1),
(9, 35, 1),
(10, 35, 2),
(11, 35, 3),
(12, 35, 5),
(13, 36, 1),
(14, 36, 2),
(15, 36, 3),
(16, 36, 5),
(17, 37, 1),
(18, 37, 2),
(19, 37, 3),
(20, 37, 5),
(21, 38, 1),
(22, 38, 2),
(23, 38, 3),
(24, 38, 5),
(25, 39, 1),
(26, 39, 2),
(27, 39, 3),
(28, 39, 5),
(29, 40, 1),
(30, 40, 2),
(31, 40, 3),
(32, 40, 5),
(33, 41, 1),
(34, 41, 2),
(35, 41, 3),
(36, 41, 5),
(37, 42, 1),
(38, 42, 2),
(39, 42, 3),
(40, 42, 5),
(41, 43, 1),
(42, 43, 2),
(43, 43, 3),
(44, 43, 5),
(52, 45, 1),
(51, 44, 5),
(50, 44, 3),
(49, 44, 1),
(53, 45, 2),
(54, 45, 3),
(55, 45, 5),
(56, 46, 1),
(57, 46, 2),
(58, 46, 3),
(59, 46, 5),
(60, 47, 1),
(61, 47, 2),
(62, 47, 3),
(63, 47, 5),
(71, 49, 1),
(70, 48, 5),
(69, 48, 3),
(68, 48, 1),
(72, 49, 2),
(73, 49, 3),
(74, 49, 5),
(75, 50, 1),
(76, 50, 2),
(77, 50, 3),
(78, 50, 5),
(79, 33, 1),
(80, 33, 2),
(81, 33, 3),
(82, 33, 5),
(83, 32, 1),
(84, 31, 1),
(85, 30, 1),
(86, 29, 1),
(87, 28, 1),
(88, 27, 1),
(89, 26, 1),
(90, 25, 1),
(91, 24, 1),
(92, 23, 1),
(121, 2, 1),
(98, 58, 1),
(99, 52, 1),
(100, 53, 1),
(101, 54, 1),
(102, 55, 1),
(103, 56, 1),
(104, 57, 1),
(105, 59, 1),
(106, 60, 1),
(107, 61, 1),
(108, 62, 1),
(109, 63, 1),
(110, 64, 1),
(111, 65, 1),
(112, 66, 1),
(113, 67, 1),
(114, 68, 1),
(116, 69, 1),
(117, 69, 2),
(118, 69, 3),
(119, 69, 5),
(120, 1, 1),
(122, 2, 2),
(123, 70, 1);

-- --------------------------------------------------------

--
-- 表的结构 `page_type`
--

CREATE TABLE IF NOT EXISTS `page_type` (
  `Id` int(11) NOT NULL,
  `pageId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8 COMMENT='关联表';

--
-- 转存表中的数据 `page_type`
--

INSERT INTO `page_type` (`Id`, `pageId`, `typeId`) VALUES
(231, 1, 1),
(232, 2, 1),
(37, 3, 8),
(36, 3, 7),
(35, 3, 6),
(34, 4, 6),
(33, 5, 8),
(32, 5, 6),
(31, 6, 7),
(30, 6, 6),
(44, 7, 8),
(43, 7, 6),
(42, 8, 8),
(41, 8, 6),
(40, 9, 8),
(39, 9, 7),
(38, 9, 6),
(50, 10, 12),
(49, 10, 10),
(48, 10, 9),
(84, 11, 12),
(83, 11, 10),
(82, 11, 9),
(81, 12, 12),
(80, 12, 10),
(79, 12, 9),
(75, 13, 12),
(74, 13, 10),
(73, 13, 9),
(78, 14, 12),
(77, 14, 10),
(76, 14, 9),
(63, 15, 9),
(64, 15, 10),
(65, 15, 12),
(66, 18, 11),
(67, 17, 11),
(68, 16, 11),
(69, 19, 11),
(70, 20, 11),
(71, 21, 11),
(72, 22, 11),
(229, 23, 15),
(228, 23, 14),
(227, 23, 13),
(226, 24, 15),
(225, 24, 14),
(224, 24, 13),
(223, 25, 15),
(222, 25, 14),
(221, 25, 13),
(220, 26, 15),
(219, 26, 14),
(218, 26, 13),
(217, 27, 15),
(216, 27, 14),
(215, 27, 13),
(214, 28, 15),
(213, 28, 14),
(212, 28, 13),
(211, 29, 15),
(210, 29, 14),
(209, 29, 13),
(208, 30, 15),
(207, 30, 14),
(206, 30, 13),
(205, 31, 15),
(204, 31, 14),
(203, 31, 13),
(202, 32, 15),
(201, 32, 14),
(200, 32, 13),
(199, 33, 15),
(198, 33, 14),
(197, 33, 13),
(127, 34, 23),
(126, 34, 22),
(125, 34, 21),
(124, 34, 20),
(123, 34, 19),
(128, 35, 19),
(129, 35, 20),
(130, 35, 21),
(131, 35, 22),
(132, 35, 23),
(133, 36, 19),
(134, 36, 20),
(135, 36, 21),
(136, 36, 22),
(137, 36, 23),
(138, 37, 19),
(139, 37, 20),
(140, 37, 21),
(141, 37, 22),
(142, 37, 23),
(143, 38, 19),
(144, 38, 20),
(145, 38, 21),
(146, 38, 22),
(147, 38, 23),
(148, 39, 19),
(149, 39, 20),
(150, 39, 21),
(151, 39, 22),
(152, 39, 23),
(153, 40, 19),
(154, 40, 20),
(155, 40, 21),
(156, 40, 22),
(157, 40, 23),
(158, 41, 19),
(159, 41, 20),
(160, 41, 21),
(161, 41, 22),
(162, 41, 23),
(163, 42, 19),
(164, 42, 20),
(165, 42, 21),
(166, 42, 22),
(167, 42, 23),
(168, 43, 19),
(169, 43, 20),
(170, 43, 21),
(171, 43, 22),
(172, 43, 23),
(182, 44, 23),
(181, 44, 22),
(180, 44, 21),
(179, 44, 20),
(178, 44, 19),
(183, 45, 16),
(184, 45, 17),
(185, 46, 16),
(186, 46, 17),
(187, 47, 16),
(188, 47, 17),
(192, 48, 17),
(191, 48, 16),
(193, 49, 16),
(194, 49, 17),
(195, 50, 16),
(196, 50, 17);

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `Id` int(11) NOT NULL,
  `system` int(11) DEFAULT NULL COMMENT '系统默认',
  `type` int(11) NOT NULL COMMENT '1园区介绍，2教师风采，3宝贝风采，4特色活动，5家园共育，6教育科研',
  `school` int(11) DEFAULT NULL COMMENT '所属学校',
  `name` varchar(200) DEFAULT NULL COMMENT '名字',
  `introduce` varchar(500) DEFAULT NULL COMMENT '简介',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `url` varchar(200) DEFAULT NULL COMMENT '相关地址',
  `sort` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='类型';

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`Id`, `system`, `type`, `school`, `name`, `introduce`, `picture`, `url`, `sort`, `time`) VALUES
(1, 1, 1, NULL, '华阳总院', '成都市天府新区华阳幼儿园始建于1953年，是一所全日制公办幼儿园。占地有13余亩，共有教职工 87名，是一所规模大、起点高、设施完善的省级示范性幼儿园，成都市一级幼儿园。走入幼儿园，犹如走入一个童话般的世界，茵茵草坪、树林成荫；溢满童话的 幼儿活动城堡、形态别致的大型多功能玩具区、戏水泳池；妙趣横生的沙地、自然的种植饲养区；温馨的小阁楼、幼儿活动室等。幼儿可以大胆的探索、自由的思考，他们有充足的时间和空间完美的去享受和体验健康 快乐的童年生活。', '151816853214.png', '', 0, '2018-02-09 18:38:50'),
(2, 1, 1, NULL, '华阳东区园', '成都市天府新区华阳幼儿园始建于1953年，是一所全日制公办幼儿园。占地有13余亩，共有教职工 87名，是一所规模大、起点高、设施完善的省级示范性幼儿园，成都市一级幼儿园。走入幼儿园，犹如走入一个童话般的世界，茵茵草坪、树林成荫；溢满童话的 幼儿活动城堡、形态别致的大型多功能玩具区、戏水泳池；妙趣横生的沙地、自然的种植饲养区；温馨的小阁楼、幼儿活动室等。幼儿可以大胆的探索、自由的思考，他们有充足的时间和空间完美的去享受和体验健康 快乐的童年生活。', '151816861294.png', NULL, 1, '2018-02-09 17:30:12'),
(3, 1, 1, NULL, '华阳西区园', '成都市天府新区华阳幼儿园始建于1953年，是一所全日制公办幼儿园。占地有13余亩，共有教职工 87名，是一所规模大、起点高、设施完善的省级示范性幼儿园，成都市一级幼儿园。走入幼儿园，犹如走入一个童话般的世界，茵茵草坪、树林成荫；溢满童话的 幼儿活动城堡、形态别致的大型多功能玩具区、戏水泳池；妙趣横生的沙地、自然的种植饲养区；温馨的小阁楼、幼儿活动室等。幼儿可以大胆的探索、自由的思考，他们有充足的时间和空间完美的去享受和体验健康 快乐的童年生活。', '151816863921.png', NULL, 2, '2018-02-09 17:30:39'),
(5, 1, 1, NULL, '华阳蓝区园', '成都市天府新区华阳幼儿园始建于1953年，是一所全日制公办幼儿园。占地有13余亩，共有教职工 87名，是一所规模大、起点高、设施完善的省级示范性幼儿园，成都市一级幼儿园。走入幼儿园，犹如走入一个童话般的世界，茵茵草坪、树林成荫；溢满童话的 幼儿活动城堡、形态别致的大型多功能玩具区、戏水泳池；妙趣横生的沙地、自然的种植饲养区；温馨的小阁楼、幼儿活动室等。幼儿可以大胆的探索、自由的思考，他们有充足的时间和空间完美的去享受和体验健康 快乐的童年生活。', '151816868018.png', NULL, 3, '2018-02-09 17:31:20'),
(6, 1, 2, NULL, '名师工作室', '华阳幼儿园“人本、自主、愉悦、发展”的办园理念和“四心两全三个一”的服务特色，紧紧围绕新区“学有良教、品质卓越”的教育目标，以“优化教师队伍，提升保教质量，创现代化书香幼儿园”为总体目标，着眼于幼儿的终身发展。', '', NULL, 1, '2018-02-09 18:58:19'),
(7, 1, 2, NULL, '对外交流展示', '在生态式的教育理念下，遵循幼儿自然成长规律，创造自然、自由、平等、和谐的教育环境，使幼儿园充满生命力和活力。着眼于幼儿的身体素质、社会情感、知识技能的完整培养，从而影响孩子的一生', '', NULL, 2, '2018-02-09 18:59:05'),
(8, 1, 2, NULL, '每月明星教师', '为孩子选择第一所学校是您所作出的最重要的决定之一，我们理解，在这个世界上，没有任何事物能够比孩子更加珍贵，因而我们十分荣幸能够和您 一起为了孩子的未来而共同努力：', '', '', NULL, '2018-02-09 19:47:59'),
(9, 1, 3, NULL, '班级星宝贝', '我很荣幸当上了这次的班级之星。我的爱好广泛，比如说：打篮球，羽毛球，看书……我的成绩优异，特别喜欢数学，一直担任数学课代表。', '', NULL, NULL, '2018-02-09 20:23:23'),
(10, 1, 3, NULL, '比赛获奖宝贝', '为促进幼儿园素质教育实施，激发幼儿审美情趣，熏陶幼儿的艺术情操；感受家庭合作的乐趣，增进亲子感情。仁和镇幼儿园结和美术特色教学活动，于2017年4月开展了“美术特色亲子手工作品展”活动.', '', NULL, NULL, '2018-02-09 20:24:18'),
(11, 1, 3, NULL, '绘画、手工作品展示', '为促进幼儿园素质教育实施，激发幼儿审美情趣，熏陶幼儿的艺术情操；感受家庭合作的乐趣，增进亲子感情。仁和镇幼儿园结和美术特色教学活动，于2017年4月开展了“美术特色亲子手工作品展”活动.', '', NULL, NULL, '2018-02-09 20:24:34'),
(12, 1, 3, NULL, '儿童自我展示', '为促进幼儿园素质教育实施，激发幼儿审美情趣，熏陶幼儿的艺术情操；感受家庭合作的乐趣，增进亲子感情。仁和镇幼儿园结和美术特色教学活动，于2017年4月开展了“美术特色亲子手工作品展”活动', '', NULL, NULL, '2018-02-09 20:25:03'),
(13, 1, 4, NULL, '活动课', NULL, '151818417684.png', NULL, NULL, '2018-02-09 21:49:36'),
(14, 1, 4, NULL, '体验课', NULL, '151818420392.png', NULL, NULL, '2018-02-09 21:50:03'),
(15, 1, 4, NULL, '自愿者活动', NULL, '15181842184.png', NULL, NULL, '2018-02-09 21:50:18'),
(16, NULL, 5, 0, '亲子活动', NULL, '', NULL, NULL, '2018-02-22 12:58:45'),
(17, NULL, 5, 0, '家长经验', NULL, '', NULL, NULL, '2018-02-22 12:59:01'),
(19, NULL, 6, 0, '课程资源', NULL, '', NULL, NULL, '2018-02-22 13:06:27'),
(20, NULL, 6, 0, '教学比武', NULL, '', NULL, NULL, '2018-02-22 13:06:42'),
(21, NULL, 6, 0, '优秀课件、课例', NULL, '', NULL, NULL, '2018-02-22 13:07:12'),
(22, NULL, 6, 0, '科研论文', NULL, '', NULL, NULL, '2018-02-22 13:07:24'),
(23, NULL, 6, 0, '教育随笔', NULL, '', NULL, NULL, '2018-02-22 13:07:37'),
(24, NULL, 8, 0, '教师风采', NULL, '', NULL, NULL, '2018-02-22 15:09:28'),
(25, NULL, 8, 0, '体育人员', NULL, '', NULL, NULL, '2018-02-22 15:09:37'),
(26, NULL, 8, 0, '蘑菇丽人', NULL, '', NULL, NULL, '2018-02-22 15:09:49'),
(27, NULL, 8, 0, '蘑菇达人', NULL, '', NULL, NULL, '2018-02-22 15:09:59');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL,
  `Account` varchar(50) NOT NULL COMMENT '账号',
  `Password` varchar(200) NOT NULL COMMENT '密码',
  `CreationTime` datetime NOT NULL COMMENT '创建时间',
  `Name` varchar(50) NOT NULL COMMENT '名字',
  `Photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `Remarks` varchar(200) DEFAULT NULL,
  `Telephone` varchar(200) DEFAULT NULL COMMENT '电话',
  `LastLoginTime` datetime DEFAULT NULL COMMENT '最后登录时间'
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`Id`, `Account`, `Password`, `CreationTime`, `Name`, `Photo`, `Remarks`, `Telephone`, `LastLoginTime`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-03 08:00:00', '管理员', '', '这是管理员账号', '15111111111', NULL),
(57, 'admin1', '71a5c0514ab83382d98154e5a5f9d813', '2018-01-03 00:00:00', '123123', '', '<span style="color: rgb(51, 51, 51); font-weight: 700;">用户备注124</span>', '', NULL),
(16, '992中文11', '71a5c0514ab83382d98154e5a5f9d813', '2018-01-03 16:23:58', '86', '', '23134', '', NULL),
(15, '1', '2', '2018-01-03 16:23:27', '24', NULL, NULL, NULL, NULL),
(21, '728', '836', '2018-01-03 16:25:08', '60', NULL, NULL, NULL, NULL),
(22, '994', '465', '2018-01-03 16:25:08', '30', NULL, NULL, NULL, NULL),
(23, '339', '301', '2018-01-03 16:25:08', '68', NULL, NULL, NULL, NULL),
(24, '488', '535', '2018-01-03 16:25:08', '48', NULL, NULL, NULL, NULL),
(25, '211', '448', '2018-01-03 16:25:08', '38', NULL, NULL, NULL, NULL),
(26, '608', '697', '2018-01-03 16:25:08', '46', NULL, NULL, NULL, NULL),
(27, '658', '200', '2018-01-03 16:25:08', '16', NULL, NULL, NULL, NULL),
(28, '23', '517', '2018-01-03 16:25:08', '40', NULL, NULL, NULL, NULL),
(29, '513', '17', '2018-01-03 16:25:08', '51', NULL, NULL, NULL, NULL),
(30, '542', '662', '2018-01-03 16:25:08', '33', NULL, NULL, NULL, NULL),
(31, '681', '419', '2018-01-03 16:25:08', '15', NULL, NULL, NULL, NULL),
(32, '52', '1', '2018-01-03 16:25:08', '74', NULL, NULL, NULL, NULL),
(33, '851', '251', '2018-01-03 16:25:08', '24', NULL, NULL, NULL, NULL),
(34, '702', '756', '2018-01-03 16:25:08', '100', NULL, NULL, NULL, NULL),
(35, '672', '92', '2018-01-03 16:25:08', '25', NULL, NULL, NULL, NULL),
(36, '445', '948', '2018-01-03 16:25:08', '26', NULL, NULL, NULL, NULL),
(37, '406', '182', '2018-01-03 16:25:08', '56', NULL, NULL, NULL, NULL),
(38, '694', '924', '2018-01-03 16:25:08', '100', NULL, NULL, NULL, NULL),
(39, '539', '919', '2018-01-03 16:25:08', '33', NULL, NULL, NULL, NULL),
(40, '979', '135', '2018-01-03 16:25:08', '65', NULL, NULL, NULL, NULL),
(41, '741', '298', '2018-01-03 16:25:08', '26', NULL, NULL, NULL, NULL),
(42, '267', '440', '2018-01-03 16:25:08', '34', NULL, NULL, NULL, NULL),
(43, '399', '676', '2018-01-03 16:25:08', '93', NULL, NULL, NULL, NULL),
(44, '181', '877', '2018-01-03 16:25:08', '61', NULL, NULL, NULL, NULL),
(45, '843', '582', '2018-01-03 16:25:08', '27', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `basic`
--
ALTER TABLE `basic`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `leaving`
--
ALTER TABLE `leaving`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `page_comment`
--
ALTER TABLE `page_comment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `page_school`
--
ALTER TABLE `page_school`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `page_type`
--
ALTER TABLE `page_type`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=537;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `basic`
--
ALTER TABLE `basic`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `leaving`
--
ALTER TABLE `leaving`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `page_comment`
--
ALTER TABLE `page_comment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_school`
--
ALTER TABLE `page_school`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `page_type`
--
ALTER TABLE `page_type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
