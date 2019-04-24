-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2019 at 01:40 AM
-- Server version: 5.7.25
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shakti_eret`
--

-- --------------------------------------------------------

--
-- Table structure for table `agen`
--

CREATE TABLE `agen` (
  `id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `ktp` varchar(45) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_va` varchar(45) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agen`
--

INSERT INTO `agen` (`id`, `cms_users_id`, `nama`, `ktp`, `alamat`, `nomor_va`, `saldo`) VALUES
(1, 3, 'Agen Satu', '3333', 'Jl. Raya Serpong No. 39 RT/RW 001/03', '444 444 444 433', 2546550),
(2, 8, 'Agen Dua', '327567861323921', 'Jalan Dimana Nomor Berapa', '444 123 456 789', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(1, 'login_member', 'cms_users', 'detail', NULL, NULL, NULL, NULL, 'login_member', NULL, NULL, NULL, NULL, 'post', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(2, 'user_get', 'cms_users', 'detail', NULL, NULL, NULL, NULL, 'user get', NULL, NULL, NULL, NULL, 'get', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:16:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:7:\"id_user\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:15;a:4:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(3, 'ganti_password', 'cms_users', 'detail', NULL, NULL, NULL, NULL, 'ganti password', NULL, NULL, NULL, NULL, 'post', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"password_baru\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(4, 'tagihan_member_list', 'tagihan_member', 'list', NULL, NULL, NULL, NULL, 'tagihan member list', NULL, NULL, NULL, NULL, 'get', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:12:\"icon_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(5, 'history_pembayaran_member', 'detail_pembayaran_member', 'list', NULL, NULL, NULL, NULL, 'history pembayaran member', NULL, NULL, NULL, NULL, 'get', 'a:6:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:17:\"tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:11:\"kategori_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:17:\"tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(7, 'login_agen', 'cms_users', 'detail', NULL, NULL, NULL, NULL, 'login agen', NULL, NULL, NULL, NULL, 'post', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(8, 'history_pembayaran_agen', 'detail_pembayaran_agen', 'list', NULL, NULL, NULL, NULL, 'history pembayaran agen', NULL, NULL, NULL, NULL, 'get', 'a:6:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:15:\"tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:18:\"pembayaran_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:11:\"kategori_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:15:\"tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:18:\"pembayaran_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(9, 'tagihan_agen_list', 'tagihan_agen', 'list', NULL, NULL, NULL, NULL, 'tagihan agen list', NULL, NULL, NULL, NULL, 'get', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(10, 'tagihan_agen_detail', 'kategori_tagihan_agen', 'list', NULL, NULL, NULL, NULL, 'tagihan agen detail', NULL, NULL, NULL, NULL, 'get', 'a:4:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:13:\"nama_kategori\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:11:\"kategori_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:13:\"nama_kategori\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:10:\"id_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:13:\"nomor_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(11, 'pembayaran_member_create', 'pembayaran_member', 'save_add', NULL, NULL, NULL, NULL, 'pembayaran member create', NULL, NULL, NULL, NULL, 'post', 'a:6:{i:0;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:10:\"id_tagihan\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:16:\"nomor_pembayaran\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(12, 'list_member', 'member', 'list', NULL, NULL, NULL, NULL, 'list member', NULL, NULL, NULL, NULL, 'get', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(13, 'pembayaran_member', 'tagihan_member', 'detail', NULL, NULL, NULL, NULL, 'pembayaran_member', NULL, NULL, NULL, NULL, 'post', 'a:11:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(14, 'tagihan_member_detail_new', 'kategori_tagihan_member', 'list', NULL, NULL, NULL, NULL, 'tagihan member detail new', NULL, NULL, NULL, NULL, 'get', 'a:5:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:13:\"nama_kategori\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"icon\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:11:\"kategori_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:13:\"nama_kategori\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"icon\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:10:\"id_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:13:\"nomor_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(15, 'login_teller', 'cms_users', 'detail', NULL, NULL, NULL, NULL, 'login teller', NULL, NULL, NULL, NULL, 'post', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(16, 'list_agen', 'agen', 'list', NULL, NULL, NULL, NULL, 'list agen', NULL, NULL, NULL, NULL, 'get', 'a:7:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(17, 'tagihan_agen', 'tagihan_agen', 'detail', NULL, NULL, NULL, NULL, 'tagihan agen', NULL, NULL, NULL, NULL, 'get', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(18, 'list_member_cari', 'member', 'list', NULL, NULL, NULL, NULL, 'list member cari', NULL, NULL, NULL, NULL, 'post', 'a:9:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(19, 'top_up_create', 'topup', 'save_add', NULL, NULL, NULL, NULL, 'top up create', NULL, NULL, NULL, NULL, 'post', 'a:8:{i:0;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:9:\"master_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:16:\"bukti_pembayaran\";s:4:\"type\";s:4:\"file\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:9:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:9:\"master_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:16:\"bukti_pembayaran\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(20, 'list_agen_cari', 'agen', 'list', NULL, NULL, NULL, NULL, 'list agen cari', NULL, NULL, NULL, NULL, 'post', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(21, 'tagihan_agen_list_new', 'tagihan_agen', 'list', NULL, NULL, NULL, NULL, 'tagihan agen list new', NULL, NULL, NULL, NULL, 'get', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(22, 'tagihan_teller_list', 'tagihan_teller', 'list', NULL, NULL, NULL, NULL, 'tagihan teller list', NULL, NULL, NULL, NULL, 'get', 'a:9:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:18:\"pembayaran_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:18:\"pembayaran_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(23, 'pembayaran_agen', 'tagihan_agen', 'detail', NULL, NULL, NULL, NULL, 'pembayaran_agen', NULL, NULL, NULL, NULL, 'post', 'a:11:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:7:\"id_agen\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}');
INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(24, 'tagihan_member_list_va', 'tagihan_member', 'list', NULL, NULL, NULL, NULL, 'tagihan member list va', NULL, NULL, NULL, NULL, 'post', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:12:\"icon_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:11:\"nama_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:12:\"saldo_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:15:\"tabungan_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(25, 'tagihan_agen_list_va', 'tagihan_agen', 'list', NULL, NULL, NULL, NULL, 'tagihan agen list va', NULL, NULL, NULL, NULL, 'post', 'a:9:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:14:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:24:\"kategori_tagihan_agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:20:\"pembayaran_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:9:\"nama_agen\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:10:\"saldo_agen\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:7:\"id_agen\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(26, 'pinjaman_member_va', 'pinjaman_member', 'list', NULL, NULL, NULL, NULL, 'pinjaman member va', NULL, NULL, NULL, NULL, 'post', 'a:9:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:13:\"jumlah_pinjam\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:10;a:4:{s:4:\"name\";s:8:\"id_users\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:11:\"nama_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:9:\"nama_agen\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:7:\"id_agen\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:13:\"nomor_va_agen\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(27, 'pinjaman_member_bayar', 'pinjaman_member', 'detail', NULL, NULL, NULL, NULL, 'pinjaman member bayar', NULL, NULL, NULL, NULL, 'post', 'a:15:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:6:\"margin\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:10:\"keuntungan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:12;a:5:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:13;a:5:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:14;a:5:{s:4:\"name\";s:10:\"keuntungan\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(28, 'tagihan_member_list_pinjaman', 'tagihan_member', 'list', NULL, NULL, NULL, NULL, 'tagihan member list pinjaman', NULL, NULL, NULL, NULL, 'get', 'a:9:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:18:\"pinjaman_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:7:\"id_agen\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:18:\"pinjaman_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:12:\"nama_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:12:\"icon_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:13:\"bayar_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:13;a:4:{s:4:\"name\";s:11:\"nama_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:14:\"tanggal_pinjam\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(29, 'tagihan_member_detail_pinjaman', 'kategori_tagihan_member', 'list', NULL, NULL, NULL, NULL, 'tagihan member detail pinjaman', NULL, NULL, NULL, NULL, 'get', 'a:5:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:13:\"nama_kategori\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"icon\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:11:\"kategori_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:13:\"nama_kategori\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"icon\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:14:\"jumlah_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:10:\"id_tagihan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(30, 'history_topup', 'topup', 'list', NULL, NULL, NULL, NULL, 'history topup', NULL, NULL, NULL, NULL, 'get', 'a:13:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:9:\"master_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:16:\"bukti_pembayaran\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:7:\"id_agen\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:9:\"id_teller\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:12;a:5:{s:4:\"name\";s:9:\"id_master\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:14:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:9:\"master_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:16:\"bukti_pembayaran\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:5:\"warna\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(31, 'history_tabungan', 'tagihan_member', 'list', NULL, NULL, NULL, NULL, 'history tabungan', NULL, NULL, NULL, NULL, 'get', 'a:10:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:18:\"pinjaman_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:18:\"pinjaman_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(32, 'tarik_tabungan', 'tarik_tabungan', 'detail', NULL, NULL, NULL, NULL, 'tarik tabungan', NULL, NULL, NULL, NULL, 'post', 'a:10:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:9:\"id_member\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(33, 'history_tarik_tabungan', 'tarik_tabungan', 'list', NULL, NULL, NULL, NULL, 'history tarik tabungan', NULL, NULL, NULL, NULL, 'get', 'a:6:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:7:\"nominal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(34, 'setor_tabungan', 'tagihan_member', 'detail', NULL, NULL, NULL, NULL, 'setor tabungan', NULL, NULL, NULL, NULL, 'post', 'a:12:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:18:\"pinjaman_member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:14:\"total_tabungan\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:26:\"kategori_tagihan_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:13:\"total_tagihan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:18:\"pinjaman_member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(35, 'agen_pinjaman_approve', 'pinjaman_member', 'detail', NULL, NULL, NULL, NULL, 'agen pinjaman approve', NULL, NULL, NULL, NULL, 'post', 'a:11:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:6:\"margin\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:10:\"keuntungan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:4:\"ubah\";s:4:\"type\";s:6:\"custom\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:6:\"margin\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:8;a:4:{s:4:\"name\";s:10:\"keuntungan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:9;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(36, 'member_pinjaman_list', 'pinjaman_member', 'list', NULL, NULL, NULL, NULL, 'member pinjaman list', NULL, NULL, NULL, NULL, 'get', 'a:10:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:6:\"margin\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:10:\"keuntungan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"member_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:7:\"agen_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:9:\"teller_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"tanggal\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:6:\"margin\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:10:\"keuntungan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"approve\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:11:\"nama_member\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:14:\"tanggal_pinjam\";s:4:\"type\";s:6:\"custom\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(37, 'member_tabungan_refresh', 'member', 'detail', NULL, NULL, NULL, NULL, 'member tabungan refresh', NULL, NULL, NULL, NULL, 'get', 'a:8:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:1;a:4:{s:4:\"name\";s:12:\"cms_users_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:2;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:3;a:4:{s:4:\"name\";s:3:\"ktp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:4;a:4:{s:4:\"name\";s:6:\"alamat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:5;a:4:{s:4:\"name\";s:8:\"nomor_va\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:5:\"saldo\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:8:\"tabungan\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-01-18 05:23:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-18 05:28:35', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Administrator at Users Management', '', 1, '2019-01-18 06:36:47', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Agen at Users Management', '', 1, '2019-01-18 06:37:15', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Teller at Users Management', '', 1, '2019-01-18 06:37:46', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Member at Users Management', '', 1, '2019-01-18 06:38:13', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-01/user.png</td></tr><tr><td>password</td><td>$2y$10$anBBm.VT0ya8BfNFQbCp6.dwPPV2TA5PAP4hZFgnYQHbsID8DZon6</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:38:36', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Agen at Menu Management', '', 1, '2019-01-18 06:40:02', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Teller at Menu Management', '', 1, '2019-01-18 06:41:48', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Member at Menu Management', '', 1, '2019-01-18 06:44:22', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:46:50', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Tagihan Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:47:20', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Kategori Tagihan Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:47:38', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Pembayaran Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:47:57', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Detail Pembayaran Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:48:14', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Topup at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:48:46', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Master at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:49:07', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>19</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:49:28', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Tagihan Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:49:46', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Kategori Tagihan Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:50:02', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Pembayaran Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:50:23', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data Detail Pembayaran Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:50:40', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:51:11', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Tagihan Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:51:35', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Kategori Tagihan Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:51:54', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Pembayaran Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:52:10', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Detail Pembayaran Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:52:27', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user</td><td>fa fa-users</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2019-01-18 06:54:08', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-18 06:59:46', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-18 07:00:00', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/member/add-save', 'Add New Data Pajar at Member', '', 1, '2019-01-18 08:03:57', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Kategori Member 1 at Kategori Tagihan Member', '', 1, '2019-01-18 08:04:25', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/edit-save/1', 'Update data Toilet at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Kategori Member 1</td><td>Toilet</td></tr></tbody></table>', 1, '2019-01-18 08:04:47', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Parkir at Kategori Tagihan Member', '', 1, '2019-01-18 08:04:58', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Sewa at Kategori Tagihan Member', '', 1, '2019-01-18 08:05:04', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Keamanan at Kategori Tagihan Member', '', 1, '2019-01-18 08:05:11', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Sampah at Kategori Tagihan Member', '', 1, '2019-01-18 08:05:32', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Listrik at Kategori Tagihan Member', '', 1, '2019-01-18 08:05:37', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Iklan at Kategori Tagihan Member', '', 1, '2019-01-18 08:05:43', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/member/add-save', 'Add New Data Pajar at Member', '', 1, '2019-01-18 08:35:42', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Sewa at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:13', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Sampah at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:19', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Parkir at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:25', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Keamana at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:30', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Listrik at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:36', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Toilet at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:44', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/add-save', 'Add New Data Iklan at Kategori Tagihan Member', '', 1, '2019-01-18 08:36:50', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_member/edit-save/4', 'Update data Keamanan at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Keamana</td><td>Keamanan</td></tr></tbody></table>', 1, '2019-01-18 08:37:01', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-18 08:37:45', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/edit-save/1', 'Update data  at Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>udah</td><td>sudah</td></tr></tbody></table>', 1, '2019-01-18 08:38:00', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/member/add-save', 'Add New Data cobain at Member', '', 1, '2019-01-18 08:38:28', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/member/edit-save/2', 'Update data cobainah at Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama</td><td>cobain</td><td>cobainah</td></tr></tbody></table>', 1, '2019-01-18 08:38:43', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/member/delete/2', 'Delete data cobainah at Member', '', 1, '2019-01-18 08:38:53', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-18 08:39:38', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/edit-save/2', 'Update data  at Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nomor</td><td>347583456</td><td>34</td></tr></tbody></table>', 1, '2019-01-18 08:39:53', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/delete/2', 'Delete data 2 at Tagihan Member', '', 1, '2019-01-18 08:40:00', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/delete/1', 'Delete data 1 at Tagihan Member', '', 1, '2019-01-18 08:40:14', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/teller/add-save', 'Add New Data Dani at Teller', '', 1, '2019-01-18 08:41:39', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/agen/add-save', 'Add New Data Dhaffa at Agen', '', 1, '2019-01-18 08:42:14', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/master/add-save', 'Add New Data Muhyi at Master', '', 1, '2019-01-18 08:44:39', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Sewa at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:03', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Sampah at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:09', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Parkir at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:14', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Keamanan at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:20', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Listrik at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:25', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Toilet at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:30', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data Iklan at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:36', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/add-save', 'Add New Data haha at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:40', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/edit-save/8', 'Update data hahai at Kategori Tagihan Teller', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>haha</td><td>hahai</td></tr></tbody></table>', 1, '2019-01-18 08:45:52', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_teller/delete/8', 'Delete data hahai at Kategori Tagihan Teller', '', 1, '2019-01-18 08:45:59', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Sewa at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:16', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Sampah at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:22', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Parkir at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:31', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Keamanan at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:37', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Listrik at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:42', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Toilet at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:48', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data Iklan at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:53', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/add-save', 'Add New Data haha at Kategori Tagihan Agen', '', 1, '2019-01-18 08:46:58', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/edit-save/8', 'Update data ihaha at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>haha</td><td>ihaha</td></tr></tbody></table>', 1, '2019-01-18 08:47:09', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/kategori_tagihan_agen/delete/8', 'Delete data ihaha at Kategori Tagihan Agen', '', 1, '2019-01-18 08:47:15', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/master/edit-save/1', 'Update data Muhyi at Master', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ktp</td><td>3275827638742634</td><td>3275827638742635</td></tr></tbody></table>', 1, '2019-01-18 08:47:33', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_member/add-save', 'Add New Data  at Pembayaran Member', '', 1, '2019-01-18 08:48:25', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_member/add-save', 'Add New Data  at Pembayaran Member', '', 1, '2019-01-18 08:48:42', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_member/edit-save/2', 'Update data  at Pembayaran Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-18 08:48:57', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_member/delete/2', 'Delete data 2 at Pembayaran Member', '', 1, '2019-01-18 08:49:03', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-18 08:50:05', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 1, '2019-01-18 08:51:04', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 1, '2019-01-18 08:51:15', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_member/edit-save/2', 'Update data  at Detail Pembayaran Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jumlah</td><td>8080</td><td>80808</td></tr></tbody></table>', 1, '2019-01-18 08:51:25', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_member/delete/2', 'Delete data 2 at Detail Pembayaran Member', '', 1, '2019-01-18 08:51:32', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_agen/add-save', 'Add New Data  at Tagihan Agen', '', 1, '2019-01-18 08:56:02', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_agen/add-save', 'Add New Data  at Tagihan Agen', '', 1, '2019-01-18 08:56:24', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_agen/edit-save/2', 'Update data  at Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_tagihan</td><td>100</td><td>1001</td></tr></tbody></table>', 1, '2019-01-18 08:56:37', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_agen/delete/2', 'Delete data 2 at Tagihan Agen', '', 1, '2019-01-18 08:56:43', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_agen/add-save', 'Add New Data  at Pembayaran Agen', '', 1, '2019-01-18 08:57:11', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_agen/add-save', 'Add New Data  at Pembayaran Agen', '', 1, '2019-01-18 08:57:24', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_agen/edit-save/2', 'Update data  at Pembayaran Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td>2019-01-18 00:00:00</td><td>2019-01-19 00:00:00</td></tr></tbody></table>', 1, '2019-01-18 08:57:41', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_agen/delete/2', 'Delete data 2 at Pembayaran Agen', '', 1, '2019-01-18 08:57:52', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 1, '2019-01-18 08:58:14', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 1, '2019-01-18 08:58:23', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/detail_pembayaran_agen/delete/1', 'Delete data 1 at Detail Pembayaran Agen', '', 1, '2019-01-18 08:58:29', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_teller/add-save', 'Add New Data  at Tagihan Teller', '', 1, '2019-01-18 08:59:17', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_teller/add-save', 'Add New Data  at Tagihan Teller', '', 1, '2019-01-18 08:59:57', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_teller/edit-save/2', 'Update data  at Tagihan Teller', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_tagihan</td><td>80000</td><td>90000</td></tr></tbody></table>', 1, '2019-01-18 09:00:48', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/tagihan_teller/delete/2', 'Delete data 2 at Tagihan Teller', '', 1, '2019-01-18 09:01:02', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_teller/add-save', 'Add New Data  at Pembayaran Teller', '', 1, '2019-01-18 09:01:30', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_teller/add-save', 'Add New Data  at Pembayaran Teller', '', 1, '2019-01-18 09:01:49', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayaran_teller/delete/2', 'Delete data 2 at Pembayaran Teller', '', 1, '2019-01-18 09:01:57', NULL),
(108, '36.71.27.74', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.71.27.74', '', 1, '2019-01-19 11:14:33', NULL),
(109, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 61.5.74.235', '', 1, '2019-01-22 09:37:51', NULL),
(110, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/users/edit-save/5', 'Update data Fajar Hardianto at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Member</td><td>Fajar Hardianto</td></tr><tr><td>email</td><td>member@crudbooster.com</td><td>fajarakun31@gmail.com</td></tr><tr><td>password</td><td>$2y$10$GN1nlB.nlSIWFB/GJHJWk..upJR7uoIe1AQuXAEfQ9QNo7fQd8LJK</td><td>$2y$10$7ukNUTWi0inu54JX55x4wOuv5.xqo0k8XitFpoVaLWsX3DHSUV8N2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-22 09:38:54', NULL),
(111, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/member/add-save', 'Add New Data Fajar Hardianto at Member', '', 1, '2019-01-22 09:39:40', NULL),
(112, '115.178.214.16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 115.178.214.16', '', 1, '2019-01-22 09:53:53', NULL),
(113, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/users/edit-save/5', 'Update data Fajar Hardianto at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$7ukNUTWi0inu54JX55x4wOuv5.xqo0k8XitFpoVaLWsX3DHSUV8N2</td><td>$2y$10$VD4Wo30fetSHpZSMKkze2.t0oc9PTNO2J3PLm/JuqufQf.u25mJY2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-22 10:00:00', NULL),
(114, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Sewa at Kategori Tagihan Member', '', 1, '2019-01-22 12:33:44', NULL),
(115, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Sampah at Kategori Tagihan Member', '', 1, '2019-01-22 12:33:50', NULL),
(116, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Parkir at Kategori Tagihan Member', '', 1, '2019-01-22 12:34:17', NULL),
(117, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Keamanan at Kategori Tagihan Member', '', 1, '2019-01-22 12:34:33', NULL),
(118, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Listrik at Kategori Tagihan Member', '', 1, '2019-01-22 12:34:39', NULL),
(119, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Toilet at Kategori Tagihan Member', '', 1, '2019-01-22 12:34:48', NULL),
(120, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tagihan Iklan at Kategori Tagihan Member', '', 1, '2019-01-22 12:34:53', NULL),
(121, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/member/edit-save/1', 'Update data Fajar Hardianto at Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>saldo</td><td>0</td><td>800000</td></tr></tbody></table>', 1, '2019-01-22 12:37:29', NULL),
(122, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-22 12:44:52', NULL),
(123, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-22 12:45:14', NULL),
(124, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-22 12:45:36', NULL),
(125, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tagihan_member/add-save', 'Add New Data  at Tagihan Member', '', 1, '2019-01-22 12:46:11', NULL),
(126, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/agen/add-save', 'Add New Data Agen Satu at Agen', '', 1, '2019-01-22 13:14:24', NULL),
(127, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pembayaran_member/add-save', 'Add New Data  at Pembayaran Member', '', 1, '2019-01-22 13:15:27', NULL),
(128, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 1, '2019-01-22 13:15:44', NULL),
(129, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/7', 'Update data Tagihan Iklan at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-picture-o</td></tr></tbody></table>', 1, '2019-01-22 13:55:18', NULL),
(130, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/6', 'Update data Tagihan Toilet at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa-life-ring</td></tr></tbody></table>', 1, '2019-01-22 13:55:27', NULL),
(131, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/6', 'Update data Tagihan Toilet at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa-life-ring</td><td>fa-life-ringfa fa-life-ri</td></tr></tbody></table>', 1, '2019-01-22 13:55:37', NULL),
(132, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/6', 'Update data Tagihan Toilet at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa-life-ringfa fa-life-ri</td><td>fa fa-life-ring</td></tr></tbody></table>', 1, '2019-01-22 13:55:45', NULL),
(133, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/5', 'Update data Tagihan Listrik at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-bolt</td></tr></tbody></table>', 1, '2019-01-22 13:55:59', NULL),
(134, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/4', 'Update data Tagihan Keamanan at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-lock</td></tr></tbody></table>', 1, '2019-01-22 13:56:08', NULL),
(135, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/3', 'Update data Tagihan Parkir at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-road</td></tr></tbody></table>', 1, '2019-01-22 13:56:18', NULL),
(136, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/2', 'Update data Tagihan Sampah at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-trash-o</td></tr></tbody></table>', 1, '2019-01-22 13:56:28', NULL),
(137, '61.5.74.235', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/edit-save/1', 'Update data Tagihan Sewa at Kategori Tagihan Member', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-building-o</td></tr></tbody></table>', 1, '2019-01-22 13:58:09', NULL),
(138, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.148.118', '', 1, '2019-01-22 20:48:05', NULL),
(139, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.148.118', '', 1, '2019-01-22 21:55:57', NULL),
(140, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.148.118', '', 1, '2019-01-22 22:09:01', NULL),
(141, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.148.118', '', 1, '2019-01-23 03:33:34', NULL),
(142, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.148.118', '', 1, '2019-01-23 06:17:36', NULL),
(143, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/add-save', 'Add New Data Pembayaran Sewa Member at Kategori Tagihan Agen', '', 1, '2019-01-23 06:52:06', NULL),
(144, '110.138.148.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_teller/add-save', 'Add New Data Pembayaran Sewa Member at Kategori Tagihan Teller', '', 1, '2019-01-23 06:53:45', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(145, '110.138.150.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.150.152', '', 1, '2019-01-23 11:52:57', NULL),
(146, '180.245.20.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/tagihan_agen/add-save', 'Add New Data  at Tagihan Agen', '', 1, '2019-01-23 15:57:40', NULL),
(147, '180.245.20.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/teller/add-save', 'Add New Data Teller Satu at Teller', '', 1, '2019-01-23 16:00:16', NULL),
(148, '180.245.20.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/pembayaran_agen/add-save', 'Add New Data  at Pembayaran Agen', '', 1, '2019-01-23 16:01:09', NULL),
(149, '180.245.20.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 1, '2019-01-23 16:02:08', NULL),
(150, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 178.62.92.29', '', 1, '2019-01-24 07:23:28', NULL),
(151, '125.166.20.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.166.20.178', '', 1, '2019-01-24 08:10:35', NULL),
(152, '125.166.20.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/users/edit-save/4', 'Update data Teller at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$OJc2JLDY3QheCOgnRKKLc.5PSxzSX7pi.XiCEQjXq99LPDoR8aw0W</td><td>$2y$10$b.M6EO/cyrCrPXl3zFiAq.prbkyHeShQfysej7O1qT9el5TI2f9nu</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 09:23:40', NULL),
(153, '125.166.20.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/users/add-save', 'Add New Data Member at Users Management', '', 1, '2019-01-24 12:06:35', NULL),
(154, '125.166.20.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/member/add-save', 'Add New Data Member at Member', '', 1, '2019-01-24 12:08:44', NULL),
(155, '36.70.171.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.70.171.8', '', 1, '2019-01-25 08:23:49', NULL),
(156, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.70.171.8', '', 1, '2019-01-25 09:58:16', NULL),
(157, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/users/add-save', 'Add New Data Fauzi Eko Saputro at Users Management', '', 1, '2019-01-25 11:35:39', NULL),
(158, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/master/add-save', 'Add New Data Fauzi Eko Saputro at Master', '', 1, '2019-01-25 11:36:18', NULL),
(159, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 1, '2019-01-25 11:39:40', NULL),
(160, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 1, '2019-01-25 12:20:06', NULL),
(161, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/edit-save/1', 'Update data  at Topup', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>teller_id</td><td></td><td></td></tr><tr><td>agen_id</td><td></td><td></td></tr><tr><td>approve</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2019-01-25 12:21:00', NULL),
(162, '36.70.171.8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 1, '2019-01-25 20:23:52', NULL),
(163, '180.244.250.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.244.250.246', '', 1, '2019-01-26 03:15:24', NULL),
(164, '180.244.250.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/users/add-save', 'Add New Data Agen Dua at Users Management', '', 1, '2019-01-26 03:29:19', NULL),
(165, '180.244.250.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/agen/add-save', 'Add New Data Agen Dua at Agen', '', 1, '2019-01-26 03:30:23', NULL),
(166, '180.244.250.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/tagihan_teller/add-save', 'Add New Data  at Tagihan Teller', '', 1, '2019-01-26 04:12:47', NULL),
(167, '125.161.166.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-26 13:34:22', NULL),
(168, '125.161.166.219', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.161.166.219', '', 1, '2019-01-26 14:03:54', NULL),
(169, '125.161.166.219', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/statistic_builder/add-save', 'Add New Data dashboard at Statistic Builder', '', 1, '2019-01-26 15:12:34', NULL),
(170, '110.137.206.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.137.206.86', '', 1, '2019-01-26 22:59:56', NULL),
(171, '110.137.206.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/teller/edit-save/1', 'Update data Teller Satu at Teller', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ktp</td><td></td><td></td></tr><tr><td>alamat</td><td></td><td></td></tr><tr><td>nomor_va</td><td>123123123123</td><td>123 456 789 123</td></tr></tbody></table>', 1, '2019-01-26 23:10:12', NULL),
(172, '110.137.206.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.137.206.86', '', 1, '2019-01-27 03:31:56', NULL),
(173, '110.138.150.211', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.150.211', '', 1, '2019-01-27 07:30:09', NULL),
(174, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.93.49', '', 5, '2019-01-27 08:19:51', NULL),
(175, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/20', 'Update data Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-27 08:20:43', NULL),
(176, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/2', 'Update data Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:20:59', NULL),
(177, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/10', 'Update data Tagihan Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:21:47', NULL),
(178, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/4', 'Update data Kategori Tagihan Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:22:03', NULL),
(179, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/13', 'Update data Pembayaran Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:22:19', NULL),
(180, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/16', 'Update data Detail Pembayaran Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:22:37', NULL),
(181, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/19', 'Update data Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:23:25', NULL),
(182, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/5', 'Update data Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:24:03', NULL),
(183, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/11', 'Update data Tagihan Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:24:23', NULL),
(184, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/6', 'Update data Kategori Tagihan Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:24:38', NULL),
(185, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/14', 'Update data Pembayaran Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:24:59', NULL),
(186, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/17', 'Update data Detail Pembayaran Teller at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>19</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:25:23', NULL),
(187, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/18', 'Update data Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:25:42', NULL),
(188, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/1', 'Update data Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:26:13', NULL),
(189, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/9', 'Update data Tagihan Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:26:28', NULL),
(190, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/3', 'Update data Kategori Tagihan Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:26:48', NULL),
(191, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/12', 'Update data Pembayaran Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:27:04', NULL),
(192, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/15', 'Update data Detail Pembayaran Agen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-27 08:29:48', NULL),
(193, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-27 08:31:06', NULL),
(194, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 08:31:11', NULL),
(195, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', ' logout', '', NULL, '2019-01-27 08:31:12', NULL),
(196, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 178.62.93.49', '', 1, '2019-01-27 08:31:18', NULL),
(197, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.93.49', '', 5, '2019-01-27 08:31:26', NULL),
(198, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 08:34:11', NULL),
(199, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.93.49', '', 5, '2019-01-27 08:34:25', NULL),
(200, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-27 08:35:02', NULL),
(201, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.93.49', '', 5, '2019-01-27 08:35:13', NULL),
(202, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 08:35:35', NULL),
(203, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 178.62.93.49', '', 1, '2019-01-27 08:35:41', NULL),
(204, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 5, '2019-01-27 16:24:29', NULL),
(205, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 09:28:36', NULL),
(206, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 178.62.93.49', '', 3, '2019-01-27 09:28:47', NULL),
(207, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 3, '2019-01-27 16:29:18', NULL),
(208, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-27 09:30:14', NULL),
(209, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 178.62.93.49', '', 4, '2019-01-27 09:30:27', NULL),
(210, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 4, '2019-01-27 16:31:37', NULL),
(211, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-27 09:39:20', NULL),
(212, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.93.49', '', 5, '2019-01-27 09:39:59', NULL),
(213, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 09:43:18', NULL),
(214, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/users/add-save', 'Add New Data Master Account at Users Management', '', 1, '2019-01-27 09:53:46', NULL),
(215, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 178.62.93.49', '', 9, '2019-01-27 09:54:46', NULL),
(216, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pembayaran_teller', 'Try view the data :name at Pembayaran Teller', '', 9, '2019-01-27 09:55:20', NULL),
(217, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/8', 'Update data Topup at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-27 09:55:48', NULL),
(218, '178.62.93.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/agen', 'Try view the data :name at Agen', '', 9, '2019-01-27 10:21:30', NULL),
(219, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 178.62.92.29', '', 1, '2019-01-27 17:33:50', NULL),
(220, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.92.29', '', 5, '2019-01-27 17:34:46', NULL),
(221, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 17:34:53', NULL),
(222, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 178.62.92.29', '', 9, '2019-01-27 17:35:05', NULL),
(223, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-27 18:30:03', NULL),
(224, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.92.29', '', 5, '2019-01-27 18:30:17', NULL),
(225, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 19:58:08', NULL),
(226, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 178.62.92.29', '', 3, '2019-01-27 19:58:17', NULL),
(227, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-27 20:08:40', NULL),
(228, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 178.62.92.29', '', 4, '2019-01-27 20:08:50', NULL),
(229, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-27 20:12:24', NULL),
(230, '178.62.92.29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 178.62.92.29', '', 5, '2019-01-27 20:12:38', NULL),
(231, '110.138.150.211', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-27 20:42:43', NULL),
(232, '110.138.150.211', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.150.211', '', 1, '2019-01-27 20:42:46', NULL),
(233, '110.138.150.211', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-27 21:11:38', NULL),
(234, '46.101.22.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 46.101.22.182', '', 9, '2019-01-27 21:12:46', NULL),
(235, '46.101.22.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 46.101.22.182', '', 5, '2019-01-27 21:13:58', NULL),
(236, '46.101.22.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-27 21:18:39', NULL),
(237, '46.101.22.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 46.101.22.182', '', 1, '2019-01-27 21:18:43', NULL),
(238, '125.160.114.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.160.114.182', '', 1, '2019-01-28 09:12:53', NULL),
(239, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.160.114.182', '', 1, '2019-01-28 09:50:27', NULL),
(240, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 125.160.114.182', '', 5, '2019-01-28 09:50:36', NULL),
(241, '125.160.114.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-28 10:20:03', NULL),
(242, '125.160.114.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 125.160.114.182', '', 3, '2019-01-28 10:20:12', NULL),
(243, '125.160.114.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-28 10:20:23', NULL),
(244, '125.160.114.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.160.114.182', '', 1, '2019-01-28 10:20:26', NULL),
(245, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-01-28 18:14:55', NULL),
(246, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-01-28 18:16:08', NULL),
(247, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/13', 'Update data Pembayaran Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-28 11:16:56', NULL),
(248, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-28 11:18:45', NULL),
(249, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 125.160.114.182', '', 3, '2019-01-28 11:18:56', NULL),
(250, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-01-28 18:22:37', NULL),
(251, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-28 11:25:34', NULL),
(252, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 125.160.114.182', '', 4, '2019-01-28 11:25:48', NULL),
(253, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 4, '2019-01-28 18:35:38', NULL),
(254, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 4, '2019-01-28 18:36:12', NULL),
(255, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 4, '2019-01-28 18:36:32', NULL),
(256, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-28 11:37:06', NULL),
(257, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 125.160.114.182', '', 3, '2019-01-28 11:37:20', NULL),
(258, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-01-28 18:52:20', NULL),
(259, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-28 11:53:01', NULL),
(260, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 125.160.114.182', '', 4, '2019-01-28 11:54:09', NULL),
(261, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 4, '2019-01-28 18:54:48', NULL),
(262, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_teller/add-save', 'Add New Data  at Detail Pembayaran Teller', '', 4, '2019-01-28 19:10:32', NULL),
(263, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-28 12:10:50', NULL),
(264, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 125.160.114.182', '', 9, '2019-01-28 12:11:03', NULL),
(265, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_teller/add-save', 'Add New Data  at Detail Pembayaran Teller', '', 9, '2019-01-28 19:12:05', NULL),
(266, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-28 12:17:08', NULL),
(267, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 125.160.114.182', '', 5, '2019-01-28 12:17:20', NULL),
(268, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-28 12:23:31', NULL),
(269, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 125.160.114.182', '', 3, '2019-01-28 12:23:39', NULL),
(270, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-28 12:24:53', NULL),
(271, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 125.160.114.182', '', 4, '2019-01-28 12:25:01', NULL),
(272, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-28 14:45:33', NULL),
(273, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.160.114.182', '', 1, '2019-01-28 14:45:35', NULL),
(274, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/21', 'Update data Pengajuan Pinjaman at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-28 18:45:12', NULL),
(275, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-28 19:55:20', NULL),
(276, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.160.114.182', '', 1, '2019-01-28 19:55:26', NULL),
(277, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 125.160.114.182', '', 1, '2019-01-28 19:55:31', NULL),
(278, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-28 19:55:36', NULL),
(279, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 125.160.114.182', '', 6, '2019-01-28 19:56:07', NULL),
(280, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member', 'Try view the data :name at Pengajuan Pinjaman', '', 6, '2019-01-28 19:57:02', NULL),
(281, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member', 'Try view the data :name at Pengajuan Pinjaman', '', 6, '2019-01-28 19:57:47', NULL),
(282, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member', 'Try view the data :name at Pengajuan Pinjaman', '', 6, '2019-01-28 19:57:55', NULL),
(283, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member', 'Try view the data :name at Pengajuan Pinjaman', '', 6, '2019-01-28 19:58:25', NULL),
(284, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-28 19:58:45', NULL),
(285, '125.160.114.182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 125.160.114.182', '', 5, '2019-01-28 19:58:52', NULL),
(286, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-01-28 21:17:02', NULL),
(287, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-28 21:24:26', NULL),
(288, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', ' logout', '', NULL, '2019-01-28 21:24:26', NULL),
(289, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.252.196.88', '', 5, '2019-01-28 21:24:34', NULL),
(290, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member', 'Try view the data :name at Pengajuan Pinjaman', '', 5, '2019-01-28 21:24:39', NULL),
(291, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-28 21:25:03', NULL),
(292, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.252.196.88', '', 5, '2019-01-28 21:25:10', NULL),
(293, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-28 21:25:44', NULL),
(294, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', ' logout', '', NULL, '2019-01-28 21:25:44', NULL),
(295, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.252.196.88', '', 5, '2019-01-28 21:25:50', NULL),
(296, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-01-28 21:30:53', NULL),
(297, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/22', 'Update data Pinjaman Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2019-01-28 21:42:18', NULL),
(298, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-28 21:43:45', NULL),
(299, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.252.196.88', '', 3, '2019-01-28 21:43:55', NULL),
(300, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-28 22:04:14', NULL),
(301, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 180.252.196.88', '', 6, '2019-01-28 22:04:30', NULL),
(302, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-28 22:09:16', NULL),
(303, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Pinjaman at Kategori Tagihan Member', '', 1, '2019-01-28 22:11:57', NULL),
(304, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-28 22:12:45', NULL),
(305, '180.252.196.88', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.252.196.88', '', 3, '2019-01-28 22:12:52', NULL),
(306, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/23', 'Update data Pinjaman Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-01-28 22:26:42', NULL),
(307, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-28 22:41:03', NULL),
(308, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 180.252.193.80', '', 4, '2019-01-28 22:41:11', NULL),
(309, '180.252.193.80', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.252.193.80', '', 1, '2019-01-29 05:27:06', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(310, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.252.193.80', '', 5, '2019-01-29 07:01:47', NULL),
(311, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-29 07:04:22', NULL),
(312, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.252.193.80', '', 3, '2019-01-29 07:04:28', NULL),
(313, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.252.193.80', '', 1, '2019-01-29 07:06:35', NULL),
(314, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-29 08:43:48', NULL),
(315, '180.252.193.80', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.252.193.80', '', 5, '2019-01-29 08:43:57', NULL),
(316, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.49', '', 5, '2019-01-29 10:14:05', NULL),
(317, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.49', '', 3, '2019-01-29 10:14:58', NULL),
(318, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-29 11:21:45', NULL),
(319, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 182.253.212.49', '', 9, '2019-01-29 11:22:00', NULL),
(320, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-29 11:27:17', NULL),
(321, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.49', '', 5, '2019-01-29 11:27:48', NULL),
(322, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-01-29 11:30:26', NULL),
(323, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-29 11:30:36', NULL),
(324, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.49', '', 3, '2019-01-29 11:31:08', NULL),
(325, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-29 11:52:42', NULL),
(326, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.49', '', 5, '2019-01-29 11:52:58', NULL),
(327, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-01-29 18:54:19', NULL),
(328, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-01-29 18:57:23', NULL),
(329, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-29 12:59:19', NULL),
(330, '182.253.212.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.49', '', 3, '2019-01-29 14:34:26', NULL),
(331, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.49', '', 3, '2019-01-29 14:51:19', NULL),
(332, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 182.253.212.49', '', 1, '2019-01-29 15:21:45', NULL),
(333, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-29 15:25:32', NULL),
(334, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 182.253.212.49', '', 9, '2019-01-29 15:25:40', NULL),
(335, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-29 15:38:12', NULL),
(336, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 182.253.212.49', '', 9, '2019-01-29 15:38:47', NULL),
(337, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-29 15:45:41', NULL),
(338, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 182.253.212.49', '', 6, '2019-01-29 15:45:51', NULL),
(339, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-29 15:45:57', NULL),
(340, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 182.253.212.49', '', 4, '2019-01-29 15:46:02', NULL),
(341, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-29 15:50:33', NULL),
(342, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 182.253.212.49', '', 6, '2019-01-29 15:50:38', NULL),
(343, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-29 15:50:51', NULL),
(344, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 182.253.212.49', '', 4, '2019-01-29 15:50:55', NULL),
(345, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-29 15:52:24', NULL),
(346, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.49', '', 3, '2019-01-29 15:52:28', NULL),
(347, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-29 15:52:42', NULL),
(348, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 182.253.212.49', '', 4, '2019-01-29 15:52:46', NULL),
(349, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-29 15:55:08', NULL),
(350, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 182.253.212.49', '', 9, '2019-01-29 15:55:22', NULL),
(351, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-29 15:55:37', NULL),
(352, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 182.253.212.49', '', 4, '2019-01-29 15:55:43', NULL),
(353, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-29 15:58:22', NULL),
(354, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 182.253.212.49', '', 9, '2019-01-29 15:58:29', NULL),
(355, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-29 15:58:46', NULL),
(356, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 182.253.212.49', '', 6, '2019-01-29 15:58:53', NULL),
(357, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-29 15:59:54', NULL),
(358, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 182.253.212.49', '', 1, '2019-01-29 15:59:57', NULL),
(359, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-29 16:00:24', NULL),
(360, '182.253.212.49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.49', '', 3, '2019-01-29 16:00:36', NULL),
(361, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-29 16:29:42', NULL),
(362, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 101.255.92.78', '', 3, '2019-01-29 16:29:46', NULL),
(363, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 101.255.92.78', '', 1, '2019-01-29 16:30:07', NULL),
(364, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/edit-save/1', 'Update data Pembayaran Tagihan Member at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Pembayaran Sewa Member</td><td>Pembayaran Tagihan Member</td></tr></tbody></table>', 1, '2019-01-29 16:31:59', NULL),
(365, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/add-save', 'Add New Data Penyetoran Tabungan at Kategori Tagihan Agen', '', 1, '2019-01-29 16:32:28', NULL),
(366, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/edit-save/2', 'Update data Penyetoran Tabungan Member at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Penyetoran Tabungan</td><td>Penyetoran Tabungan Member</td></tr></tbody></table>', 1, '2019-01-29 16:32:34', NULL),
(367, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/edit-save/2', 'Update data Penyetoran Tabungan Member at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-29 16:32:34', NULL),
(368, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/24', 'Update data Tabungan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-get-pocket</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2019-01-29 16:34:22', NULL),
(369, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/23', 'Update data Pinjaman Member at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-29 16:35:01', NULL),
(370, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member', 'Try view the data :name at Tabungan', '', 3, '2019-01-29 16:36:01', NULL),
(371, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-29 16:37:08', NULL),
(372, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 101.255.92.78', '', 3, '2019-01-29 16:37:13', NULL),
(373, '110.138.149.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-29 17:16:13', NULL),
(374, '110.138.149.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.149.215', '', 1, '2019-01-29 17:16:42', NULL),
(375, '180.244.250.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.244.250.29', '', 1, '2019-01-30 04:23:24', NULL),
(376, '36.84.232.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 36.84.232.204', '', 3, '2019-01-30 08:55:54', NULL),
(377, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 36.84.232.204', '', 3, '2019-01-30 09:30:44', NULL),
(378, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.84.232.204', '', 1, '2019-01-30 09:31:41', NULL),
(379, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.84.232.204', '', 1, '2019-01-30 09:31:41', NULL),
(380, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_member/add-save', 'Add New Data Tabungan at Kategori Tagihan Member', '', 1, '2019-01-30 09:45:19', NULL),
(381, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-01-30 17:04:44', NULL),
(382, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-30 10:17:11', NULL),
(383, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 36.84.232.204', '', 9, '2019-01-30 10:17:23', NULL),
(384, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-30 10:31:06', NULL),
(385, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 36.84.232.204', '', 6, '2019-01-30 10:31:10', NULL),
(386, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-30 10:32:38', NULL),
(387, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-30 10:45:41', NULL),
(388, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 36.84.232.204', '', 5, '2019-01-30 10:45:50', NULL),
(389, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-01-30 10:48:45', NULL),
(390, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 10:48:54', NULL),
(391, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 36.84.232.204', '', 3, '2019-01-30 10:49:01', NULL),
(392, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-01-30 11:12:11', NULL),
(393, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 36.84.232.204', '', 4, '2019-01-30 11:12:24', NULL),
(394, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-01-30 11:20:12', NULL),
(395, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.84.232.204', '', 1, '2019-01-30 11:20:18', NULL),
(396, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/25', 'Update data Tarik Tabungan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2019-01-30 11:28:26', NULL),
(397, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tarik_tabungan', 'Try view the data :name at Tarik Tabungan', '', 5, '2019-01-30 11:30:15', NULL),
(398, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-30 11:30:21', NULL),
(399, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', ' logout', '', NULL, '2019-01-30 11:30:21', NULL),
(400, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 36.84.232.204', '', 5, '2019-01-30 11:30:31', NULL),
(401, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-01-30 18:44:59', NULL),
(402, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pengaturan/add-save', 'Add New Data  at Pengaturan', '', 1, '2019-01-30 12:42:12', NULL),
(403, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pengaturan/add-save', 'Add New Data  at Pengaturan', '', 1, '2019-01-30 12:42:33', NULL),
(404, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pengaturan/add-save', 'Add New Data  at Pengaturan', '', 1, '2019-01-30 12:42:33', NULL),
(405, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pengaturan/delete/2', 'Delete data 2 at Pengaturan', '', 1, '2019-01-30 12:42:41', NULL),
(406, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/edit-save/1', 'Update data Tagihan Member at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Pembayaran Tagihan Member</td><td>Tagihan Member</td></tr></tbody></table>', 1, '2019-01-30 13:20:21', NULL),
(407, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/edit-save/2', 'Update data Tabungan Member at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Penyetoran Tabungan Member</td><td>Tabungan Member</td></tr></tbody></table>', 1, '2019-01-30 13:20:28', NULL),
(408, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-30 13:27:45', NULL),
(409, '36.84.232.204', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 36.84.232.204', '', 1, '2019-01-30 13:27:52', NULL),
(410, '182.253.162.46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/menu_management/edit-save/26', 'Update data Bagi Hasil at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pengaturan</td><td>Bagi Hasil</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2019-01-30 15:54:14', NULL),
(411, '182.253.162.46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 15:54:32', NULL),
(412, '182.253.162.46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 182.253.162.46', '', 6, '2019-01-30 15:54:40', NULL),
(413, '182.253.162.46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-30 16:06:29', NULL),
(414, '182.253.162.46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 182.253.162.46', '', 1, '2019-01-30 16:12:08', NULL),
(415, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-30 17:28:18', NULL),
(416, '101.255.92.78', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 101.255.92.78', '', 1, '2019-01-30 17:28:27', NULL),
(417, '180.242.203.216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.242.203.216', '', 1, '2019-01-30 20:58:11', NULL),
(418, '180.242.203.216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 20:58:40', NULL),
(419, '180.242.203.216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', ' logout', '', NULL, '2019-01-30 20:58:40', NULL),
(420, '180.242.203.216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 180.242.203.216', '', 6, '2019-01-30 20:59:09', NULL),
(421, '180.242.203.216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.242.203.216', '', 1, '2019-01-30 21:01:11', NULL),
(422, '110.138.150.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.150.48', '', 1, '2019-01-31 05:47:21', NULL),
(423, '114.124.142.189', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 114.124.142.189', '', 6, '2019-01-31 08:19:12', NULL),
(424, '114.124.142.189', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 114.124.142.189', '', 1, '2019-01-31 08:22:21', NULL),
(425, '114.124.140.156', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 08:24:37', NULL),
(426, '114.124.140.156', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 08:32:12', NULL),
(427, '114.124.140.156', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 15:34:16', NULL),
(428, '114.124.142.189', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 15:36:51', NULL),
(429, '114.124.142.189', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 15:55:52', NULL),
(430, '114.124.140.156', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 15:56:25', NULL),
(431, '114.124.140.156', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 15:58:19', NULL),
(432, '114.124.140.156', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 6, '2019-01-31 15:58:30', NULL),
(433, '178.62.34.82', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-01-31 09:16:19', NULL),
(434, '178.62.34.82', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 178.62.34.82', '', 9, '2019-01-31 09:16:28', NULL),
(435, '178.62.34.82', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pengaturan', 'Try view the data :name at Bagi Hasil', '', 9, '2019-01-31 09:17:37', NULL),
(436, '178.62.34.82', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'master@shakti.id logout', '', 9, '2019-01-31 09:18:23', NULL),
(437, '178.62.34.82', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'master@shakti.id login with IP Address 178.62.34.82', '', 9, '2019-01-31 09:19:25', NULL),
(438, '178.62.34.82', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/kategori_tagihan_agen/edit-save/1', 'Update data Setoran Member at Kategori Tagihan Agen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_kategori</td><td>Tagihan Member</td><td>Setoran Member</td></tr></tbody></table>', 1, '2019-01-31 09:53:26', NULL),
(439, '103.28.161.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 103.28.161.31', '', 1, '2019-01-31 10:48:16', NULL),
(440, '103.28.161.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 103.28.161.31', '', 5, '2019-01-31 12:25:33', NULL),
(441, '103.28.161.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-01-31 12:50:19', NULL),
(442, '103.28.161.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 103.28.161.31', '', 3, '2019-01-31 12:50:28', NULL),
(443, '110.138.150.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 110.138.150.113', '', 1, '2019-02-01 03:29:03', NULL),
(444, '180.244.232.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.244.232.23', '', 1, '2019-02-01 12:46:12', NULL),
(445, '180.244.232.23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.244.232.23', '', 1, '2019-02-01 13:00:41', NULL),
(446, '180.244.235.157', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.244.235.157', '', 3, '2019-02-01 17:59:59', NULL),
(447, '180.244.235.157', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-02 01:00:26', NULL),
(448, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:10:18', NULL),
(449, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:13:20', NULL),
(450, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:17:03', NULL),
(451, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:17:16', NULL),
(452, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:23:08', NULL),
(453, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:23:37', NULL),
(454, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:23:51', NULL),
(455, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:28:07', NULL),
(456, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:29:39', NULL),
(457, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:31:16', NULL),
(458, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:32:10', NULL),
(459, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:32:21', NULL),
(460, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:32:33', NULL),
(461, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 16:32:34', NULL),
(462, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:39:14', NULL),
(463, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 16:39:17', NULL),
(464, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.243.25.187', '', 1, '2019-02-06 09:46:43', NULL),
(465, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:55:24', NULL),
(466, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 16:55:26', NULL),
(467, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:57:11', NULL),
(468, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 16:57:12', NULL),
(469, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:58:02', NULL),
(470, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 16:58:03', NULL),
(471, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 09:58:13', NULL),
(472, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 16:58:15', NULL),
(473, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 10:01:37', NULL),
(474, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 17:01:39', NULL),
(475, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 10:01:54', NULL),
(476, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 10:02:28', NULL),
(477, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:34:51', NULL),
(478, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:35:32', NULL),
(479, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:35:33', NULL),
(480, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:36:05', NULL),
(481, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:36:07', NULL),
(482, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:38:11', NULL),
(483, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:49:14', NULL),
(484, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:49:53', NULL),
(485, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:49:54', NULL),
(486, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:50:25', NULL),
(487, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:50:26', NULL),
(488, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 11:54:42', NULL),
(489, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:54:44', NULL),
(490, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:58:26', NULL),
(491, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 18:58:53', NULL),
(492, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 12:00:05', NULL),
(493, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-02-06 12:04:42', NULL),
(494, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.243.25.187', '', 1, '2019-02-06 12:04:44', NULL),
(495, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-06 12:04:52', NULL),
(496, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 12:07:29', NULL),
(497, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-06 12:09:01', NULL),
(498, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:00:25', NULL),
(499, '182.253.212.161', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-02-06 14:00:46', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(500, '182.253.212.161', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:01:52', NULL),
(501, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:08:15', NULL),
(502, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:08:17', NULL),
(503, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:10:00', NULL),
(504, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:10:03', NULL),
(505, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:13:05', NULL),
(506, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:13:07', NULL),
(507, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:22:09', NULL),
(508, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 5, '2019-02-06 21:22:14', NULL),
(509, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:28:55', NULL),
(510, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 21:28:57', NULL),
(511, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 21:28:58', NULL),
(512, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:29:03', NULL),
(513, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:29:06', NULL),
(514, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 5, '2019-02-06 21:29:10', NULL),
(515, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 14:42:25', NULL),
(516, '182.253.212.161', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'fajarakun31@gmail.com logout', '', 5, '2019-02-06 14:42:50', NULL),
(517, '182.253.212.161', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 14:42:56', NULL),
(518, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 14:45:22', NULL),
(519, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-06 21:45:23', NULL),
(520, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 182.253.212.161', '', 5, '2019-02-06 14:50:35', NULL),
(521, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-06 21:50:36', NULL),
(522, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-06 21:50:38', NULL),
(523, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:50:43', NULL),
(524, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-06 21:50:45', NULL),
(525, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 5, '2019-02-06 21:50:47', NULL),
(526, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:00:35', NULL),
(527, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-06 22:00:39', NULL),
(528, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:10:24', NULL),
(529, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:10:49', NULL),
(530, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-06 22:10:53', NULL),
(531, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:21:46', NULL),
(532, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:22:17', NULL),
(533, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:23:50', NULL),
(534, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:25:22', NULL),
(535, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:25:48', NULL),
(536, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:28:27', NULL),
(537, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:30:41', NULL),
(538, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:31:23', NULL),
(539, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:33:13', NULL),
(540, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:36:08', NULL),
(541, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 182.253.212.161', '', 3, '2019-02-06 15:39:46', NULL),
(542, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-06 22:39:50', NULL),
(543, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-06 22:40:36', NULL),
(544, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-06 22:40:41', NULL),
(545, '182.253.212.161', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 3, '2019-02-06 22:40:52', NULL),
(546, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.243.25.187', '', 3, '2019-02-07 09:23:44', NULL),
(547, '180.243.25.187', 'Symfony BrowserKit', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.243.25.187', '', 3, '2019-02-07 09:24:14', NULL),
(548, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 180.243.25.187', '', 1, '2019-02-07 09:32:07', NULL),
(549, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 10:52:32', NULL),
(550, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:19:10', NULL),
(551, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:22:14', NULL),
(552, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:23:05', NULL),
(553, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:25:26', NULL),
(554, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-07 18:25:47', NULL),
(555, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:30:23', NULL),
(556, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:32:42', NULL),
(557, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-07 18:32:46', NULL),
(558, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:34:16', NULL),
(559, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-07 18:34:20', NULL),
(560, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:43:04', NULL),
(561, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-07 18:43:28', NULL),
(562, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-07 18:43:32', NULL),
(563, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-07 18:43:36', NULL),
(564, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-07 18:43:40', NULL),
(565, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-07 18:43:44', NULL),
(566, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:49:52', NULL),
(567, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:50:33', NULL),
(568, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-07 11:51:49', NULL),
(569, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'member@crudbooster.com login with IP Address 180.243.25.187', '', 6, '2019-02-07 11:51:53', NULL),
(570, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:52:36', NULL),
(571, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:58:58', NULL),
(572, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 11:59:25', NULL),
(573, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 12:02:39', NULL),
(574, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 12:11:00', NULL),
(575, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 12:13:10', NULL),
(576, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 12:15:05', NULL),
(577, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 5, '2019-02-07 19:15:10', NULL),
(578, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'fajarakun31@gmail.com login with IP Address 180.243.25.187', '', 5, '2019-02-07 12:24:18', NULL),
(579, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 5, '2019-02-07 19:24:23', NULL),
(580, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-07 19:24:27', NULL),
(581, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/pinjaman_member/add-save', 'Add New Data  at Pengajuan Pinjaman', '', 5, '2019-02-07 19:24:33', NULL),
(582, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-07 19:24:37', NULL),
(583, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tarik_tabungan/add-save', 'Add New Data  at Tarik Tabungan', '', 5, '2019-02-07 19:24:41', NULL),
(584, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 5, '2019-02-07 19:24:46', NULL),
(585, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.243.25.187', '', 3, '2019-02-07 13:46:46', NULL),
(586, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-07 20:47:06', NULL),
(587, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-07 20:47:11', NULL),
(588, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-07 20:47:15', NULL),
(589, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 3, '2019-02-07 20:47:38', NULL),
(590, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'member@crudbooster.com logout', '', 6, '2019-02-07 13:50:27', NULL),
(591, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 180.243.25.187', '', 4, '2019-02-07 13:50:32', NULL),
(592, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'teller@crudbooster.com logout', '', 4, '2019-02-07 14:01:06', NULL),
(593, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.243.25.187', '', 3, '2019-02-07 14:01:13', NULL),
(594, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/logout', 'agen@crudbooster.com logout', '', 3, '2019-02-07 14:01:50', NULL),
(595, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 180.243.25.187', '', 4, '2019-02-07 14:01:55', NULL),
(596, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 180.243.25.187', '', 3, '2019-02-07 14:03:26', NULL),
(597, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-07 21:03:43', NULL),
(598, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-07 21:03:47', NULL),
(599, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-07 21:03:52', NULL),
(600, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_teller', 'Try view the data :name at Detail Pembayaran Teller', '', 3, '2019-02-07 14:03:56', NULL),
(601, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 180.243.25.187', '', 4, '2019-02-07 14:05:54', NULL),
(602, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 4, '2019-02-07 21:05:58', NULL),
(603, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 180.243.25.187', '', 4, '2019-02-07 14:08:55', NULL),
(604, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 4, '2019-02-07 21:08:59', NULL),
(605, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'teller@crudbooster.com login with IP Address 180.243.25.187', '', 4, '2019-02-07 14:15:09', NULL),
(606, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 4, '2019-02-07 21:15:14', NULL),
(607, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 4, '2019-02-07 21:15:18', NULL),
(608, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 4, '2019-02-07 21:15:23', NULL),
(609, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_teller/add-save', 'Add New Data  at Detail Pembayaran Teller', '', 4, '2019-02-07 21:15:27', NULL),
(610, '180.243.25.187', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/topup/add-save', 'Add New Data  at Topup', '', 4, '2019-02-07 21:15:32', NULL),
(611, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 101.255.92.78', '', 3, '2019-02-07 17:15:26', NULL),
(612, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-08 00:15:33', NULL),
(613, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-08 00:15:36', NULL),
(614, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-08 00:15:41', NULL),
(615, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 101.255.92.78', '', 3, '2019-02-07 17:18:59', NULL),
(616, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-08 00:19:05', NULL),
(617, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-08 00:19:08', NULL),
(618, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-08 00:19:12', NULL),
(619, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 101.255.92.78', '', 3, '2019-02-07 17:21:44', NULL),
(620, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-08 00:21:50', NULL),
(621, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-08 00:21:54', NULL),
(622, '101.255.92.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-08 00:21:57', NULL),
(623, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 120.188.95.123', '', 3, '2019-02-07 20:29:33', NULL),
(624, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-08 03:30:06', NULL),
(625, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 120.188.95.123', '', 3, '2019-02-07 20:32:16', NULL),
(626, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'agen@crudbooster.com login with IP Address 120.188.95.123', '', 3, '2019-02-07 20:46:37', NULL),
(627, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_member/add-save', 'Add New Data  at Detail Pembayaran Member', '', 3, '2019-02-08 03:47:44', NULL),
(628, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/tabungan_member/add-save', 'Add New Data  at Tabungan', '', 3, '2019-02-08 03:47:51', NULL),
(629, '120.188.95.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/72.0.3626.96 Safari/537.36', 'http://eret.shakti.id/public/admin/detail_pembayaran_agen/add-save', 'Add New Data  at Detail Pembayaran Agen', '', 3, '2019-02-08 03:47:58', NULL),
(630, '103.28.161.35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://eret.shakti.id/public/admin/login', 'admin@crudbooster.com login with IP Address 103.28.161.35', '', 1, '2019-02-14 07:48:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Agen', 'Route', 'AdminAgenControllerGetIndex', 'normal', 'fa fa-users', 18, 1, 0, 1, 1, '2019-01-18 05:37:32', '2019-01-27 08:26:13'),
(2, 'Member', 'Route', 'AdminMemberControllerGetIndex', 'normal', 'fa fa-users', 20, 1, 0, 1, 1, '2019-01-18 05:41:11', '2019-01-27 08:20:59'),
(3, 'Kategori Tagihan Agen', 'Route', 'AdminKategoriTagihanAgenControllerGetIndex', 'normal', 'fa fa-tags', 18, 1, 0, 1, 3, '2019-01-18 06:01:29', '2019-01-27 08:26:47'),
(4, 'Kategori Tagihan Member', 'Route', 'AdminKategoriTagihanMemberControllerGetIndex', 'normal', 'fa fa-tags', 20, 1, 0, 1, 3, '2019-01-18 06:02:19', '2019-01-27 08:22:03'),
(5, 'Teller', 'Route', 'AdminTellerControllerGetIndex', 'normal', 'fa fa-user', 19, 1, 0, 1, 1, '2019-01-18 06:03:25', '2019-01-27 08:24:03'),
(6, 'Kategori Tagihan Teller', 'Route', 'AdminKategoriTagihanTellerControllerGetIndex', 'normal', 'fa fa-tags', 19, 1, 0, 1, 3, '2019-01-18 06:04:37', '2019-01-27 08:24:38'),
(7, 'Master', 'Route', 'AdminMasterControllerGetIndex', 'normal', 'fa fa-database', 0, 1, 0, 1, 4, '2019-01-18 06:06:29', '2019-01-18 06:49:07'),
(8, 'Topup', 'Route', 'AdminTopupControllerGetIndex', 'normal', 'fa fa-money', 0, 1, 0, 1, 5, '2019-01-18 06:08:17', '2019-01-27 09:55:48'),
(9, 'Tagihan Agen', 'Route', 'AdminTagihanAgenControllerGetIndex', 'normal', 'fa fa-money', 18, 1, 0, 1, 2, '2019-01-18 06:11:58', '2019-01-27 08:26:28'),
(10, 'Tagihan Member', 'Route', 'AdminTagihanMemberControllerGetIndex', 'normal', 'fa fa-money', 20, 1, 0, 1, 2, '2019-01-18 06:18:01', '2019-01-27 08:21:46'),
(11, 'Tagihan Teller', 'Route', 'AdminTagihanTellerControllerGetIndex', 'normal', 'fa fa-money', 19, 1, 0, 1, 2, '2019-01-18 06:19:01', '2019-01-27 08:24:23'),
(12, 'Pembayaran Agen', 'Route', 'AdminPembayaranAgenControllerGetIndex', 'normal', 'fa fa-credit-card', 0, 0, 0, 1, 3, '2019-01-18 06:22:25', '2019-01-27 08:27:04'),
(13, 'Pembayaran Member', 'Route', 'AdminPembayaranMemberControllerGetIndex', 'normal', 'fa fa-credit-card', 20, 0, 0, 1, 4, '2019-01-18 06:23:16', '2019-01-28 11:16:56'),
(14, 'Pembayaran Teller', 'Route', 'AdminPembayaranTellerControllerGetIndex', 'normal', 'fa fa-credit-card', 0, 0, 0, 1, 2, '2019-01-18 06:24:14', '2019-01-27 08:24:59'),
(15, 'Detail Pembayaran Agen', 'Route', 'AdminDetailPembayaranAgenControllerGetIndex', 'normal', 'fa fa-credit-card-alt', 18, 1, 0, 1, 4, '2019-01-18 06:25:01', '2019-01-27 08:29:48'),
(16, 'Detail Pembayaran Member', 'Route', 'AdminDetailPembayaranMemberControllerGetIndex', 'normal', 'fa fa-credit-card-alt', 20, 1, 0, 1, 4, '2019-01-18 06:25:48', '2019-01-27 08:22:37'),
(17, 'Detail Pembayaran Teller', 'Route', 'AdminDetailPembayaranTellerControllerGetIndex', 'normal', 'fa fa-credit-card-alt', 19, 1, 0, 1, 4, '2019-01-18 06:26:31', '2019-01-27 08:25:23'),
(18, 'Agen', 'Route', 'Agen', 'normal', 'fa fa-database', 0, 1, 0, 1, 3, '2019-01-18 06:40:02', '2019-01-27 08:25:42'),
(19, 'Teller', 'Route', 'Teller', 'normal', 'fa fa-database', 0, 1, 0, 1, 2, '2019-01-18 06:41:47', '2019-01-27 08:23:25'),
(20, 'Member', 'Route', 'Member', 'normal', 'fa fa-database', 0, 1, 0, 1, 1, '2019-01-18 06:44:22', '2019-01-27 08:20:43'),
(21, 'Pengajuan Pinjaman', 'Route', 'AdminPinjamanMemberControllerGetIndex', 'normal', 'fa fa-credit-card', 20, 1, 0, 1, 6, '2019-01-28 18:28:20', '2019-01-28 18:45:12'),
(22, 'Pinjaman Member', 'Route', 'AdminPinjamanMember30ControllerGetIndex', 'normal', 'fa fa-credit-card', 18, 1, 0, 1, 5, '2019-01-28 21:38:52', '2019-01-28 21:42:18'),
(23, 'Pinjaman Member', 'Route', 'AdminPinjamanMember31ControllerGetIndex', 'normal', 'fa fa-credit-card', 0, 0, 0, 1, 1, '2019-01-28 22:25:33', '2019-01-29 16:35:01'),
(24, 'Tabungan', 'Route', 'AdminTabunganMemberControllerGetIndex', 'normal', 'fa fa-get-pocket', 20, 1, 0, 1, 5, '2019-01-29 08:35:50', '2019-01-29 16:34:21'),
(25, 'Tarik Tabungan', 'Route', 'AdminTarikTabunganControllerGetIndex', 'normal', 'fa fa-book', 20, 1, 0, 1, 7, '2019-01-30 11:25:09', '2019-01-30 11:28:26'),
(26, 'Bagi Hasil', 'Route', 'AdminPengaturanControllerGetIndex', 'normal', 'fa fa-gear', 0, 1, 0, 1, 6, '2019-01-30 12:39:40', '2019-01-30 15:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(47, 7, 2),
(48, 7, 1),
(82, 20, 2),
(83, 20, 3),
(84, 20, 5),
(85, 20, 1),
(86, 20, 4),
(87, 2, 2),
(88, 2, 1),
(89, 10, 2),
(90, 10, 3),
(91, 10, 5),
(92, 10, 1),
(93, 10, 4),
(94, 4, 2),
(95, 4, 1),
(101, 16, 2),
(102, 16, 3),
(103, 16, 5),
(104, 16, 1),
(105, 16, 4),
(106, 19, 2),
(107, 19, 6),
(108, 19, 1),
(109, 19, 4),
(110, 5, 2),
(111, 5, 1),
(112, 11, 2),
(113, 11, 6),
(114, 11, 1),
(115, 11, 4),
(116, 6, 2),
(117, 6, 1),
(118, 14, 2),
(119, 14, 6),
(120, 14, 1),
(121, 14, 4),
(122, 17, 2),
(123, 17, 6),
(124, 17, 1),
(125, 17, 4),
(126, 18, 2),
(127, 18, 3),
(128, 18, 1),
(129, 18, 4),
(130, 1, 2),
(131, 1, 1),
(132, 9, 2),
(133, 9, 3),
(134, 9, 1),
(135, 9, 4),
(136, 3, 2),
(137, 3, 1),
(138, 12, 2),
(139, 12, 3),
(140, 12, 1),
(141, 12, 4),
(142, 15, 2),
(143, 15, 3),
(144, 15, 1),
(145, 15, 4),
(146, 8, 2),
(147, 8, 3),
(148, 8, 6),
(149, 8, 5),
(150, 8, 1),
(151, 8, 4),
(152, 13, 2),
(153, 13, 3),
(154, 13, 5),
(155, 13, 1),
(156, 13, 4),
(158, 21, 5),
(160, 22, 3),
(164, 24, 3),
(165, 24, 4),
(166, 23, 4),
(168, 25, 5),
(170, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-01-18 05:23:50', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-01-18 05:23:50', NULL, NULL),
(12, 'Agen', 'fa fa-user', 'agen', 'agen', 'AdminAgenController', 0, 0, '2019-01-18 05:37:32', NULL, NULL),
(13, 'Member', 'fa fa-users', 'member', 'member', 'AdminMemberController', 0, 0, '2019-01-18 05:41:11', NULL, NULL),
(14, 'Kategori Tagihan Agen', 'fa fa-tags', 'kategori_tagihan_agen', 'kategori_tagihan_agen', 'AdminKategoriTagihanAgenController', 0, 0, '2019-01-18 06:01:29', NULL, NULL),
(15, 'Kategori Tagihan Member', 'fa fa-tags', 'kategori_tagihan_member', 'kategori_tagihan_member', 'AdminKategoriTagihanMemberController', 0, 0, '2019-01-18 06:02:18', NULL, NULL),
(16, 'Teller', 'fa fa-user', 'teller', 'teller', 'AdminTellerController', 0, 0, '2019-01-18 06:03:25', NULL, NULL),
(17, 'Kategori Tagihan Teller', 'fa fa-tags', 'kategori_tagihan_teller', 'kategori_tagihan_teller', 'AdminKategoriTagihanTellerController', 0, 0, '2019-01-18 06:04:37', NULL, NULL),
(18, 'Master', 'fa fa-database', 'master', 'master', 'AdminMasterController', 0, 0, '2019-01-18 06:06:28', NULL, NULL),
(19, 'Topup', 'fa fa-money', 'topup', 'topup', 'AdminTopupController', 0, 0, '2019-01-18 06:08:16', NULL, NULL),
(20, 'Tagihan Agen', 'fa fa-money', 'tagihan_agen', 'tagihan_agen', 'AdminTagihanAgenController', 0, 0, '2019-01-18 06:11:57', NULL, NULL),
(21, 'Tagihan Member', 'fa fa-money', 'tagihan_member', 'tagihan_member', 'AdminTagihanMemberController', 0, 0, '2019-01-18 06:18:00', NULL, NULL),
(22, 'Tagihan Teller', 'fa fa-money', 'tagihan_teller', 'tagihan_teller', 'AdminTagihanTellerController', 0, 0, '2019-01-18 06:19:01', NULL, NULL),
(23, 'Pembayaran Agen', 'fa fa-credit-card', 'pembayaran_agen', 'pembayaran_agen', 'AdminPembayaranAgenController', 0, 0, '2019-01-18 06:22:25', NULL, NULL),
(24, 'Pembayaran Member', 'fa fa-credit-card', 'pembayaran_member', 'pembayaran_member', 'AdminPembayaranMemberController', 0, 0, '2019-01-18 06:23:16', NULL, NULL),
(25, 'Pembayaran Teller', 'fa fa-credit-card', 'pembayaran_teller', 'pembayaran_teller', 'AdminPembayaranTellerController', 0, 0, '2019-01-18 06:24:14', NULL, NULL),
(26, 'Detail Pembayaran Agen', 'fa fa-credit-card-alt', 'detail_pembayaran_agen', 'detail_pembayaran_agen', 'AdminDetailPembayaranAgenController', 0, 0, '2019-01-18 06:25:00', NULL, NULL),
(27, 'Detail Pembayaran Member', 'fa fa-credit-card-alt', 'detail_pembayaran_member', 'detail_pembayaran_member', 'AdminDetailPembayaranMemberController', 0, 0, '2019-01-18 06:25:48', NULL, NULL),
(28, 'Detail Pembayaran Teller', 'fa fa-credit-card-alt', 'detail_pembayaran_teller', 'detail_pembayaran_teller', 'AdminDetailPembayaranTellerController', 0, 0, '2019-01-18 06:26:30', NULL, NULL),
(29, 'Pengajuan Pinjaman', 'fa fa-credit-card', 'pinjaman_member', 'pinjaman_member', 'AdminPinjamanMemberController', 0, 0, '2019-01-28 18:28:20', NULL, NULL),
(30, 'Pinjaman Member', 'fa fa-credit-card', 'pinjaman_member30', 'pinjaman_member', 'AdminPinjamanMember30Controller', 0, 0, '2019-01-28 21:38:52', NULL, NULL),
(31, 'Pinjaman Member', 'fa fa-credit-card', 'pinjaman_member31', 'pinjaman_member', 'AdminPinjamanMember31Controller', 0, 0, '2019-01-28 22:25:33', NULL, NULL),
(32, 'Tabungan', 'fa fa-glass', 'tabungan_member', 'detail_pembayaran_member', 'AdminTabunganMemberController', 0, 0, '2019-01-29 08:35:50', NULL, NULL),
(33, 'Tarik Tabungan', 'fa fa-book', 'tarik_tabungan', 'tarik_tabungan', 'AdminTarikTabunganController', 0, 0, '2019-01-30 11:25:09', NULL, NULL),
(34, 'Bagi Hasil', 'fa fa-gear', 'pengaturan', 'pengaturan', 'AdminPengaturanController', 0, 0, '2019-01-30 12:39:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2019-01-18 05:23:51', NULL),
(2, 'Administrator', 0, 'skin-green', NULL, NULL),
(3, 'Agen', 0, 'skin-green', NULL, NULL),
(4, 'Teller', 0, 'skin-green', NULL, NULL),
(5, 'Member', 0, 'skin-green', NULL, NULL),
(6, 'Master Account', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(29, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(30, 1, 1, 1, 1, 1, 2, 26, NULL, NULL),
(31, 1, 1, 1, 1, 1, 2, 27, NULL, NULL),
(32, 1, 1, 1, 1, 1, 2, 28, NULL, NULL),
(33, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(34, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(35, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(36, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(37, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(38, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(39, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(40, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(41, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(43, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(44, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(45, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(46, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(47, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(48, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(49, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(50, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(51, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(52, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(53, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(54, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(55, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(56, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(57, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(58, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(59, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(60, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(61, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(62, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(63, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(64, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(129, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(135, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(144, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(156, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(167, 1, 1, 1, 0, 0, 3, 26, NULL, NULL),
(168, 1, 1, 1, 0, 0, 3, 27, NULL, NULL),
(169, 1, 1, 1, 0, 0, 3, 23, NULL, NULL),
(170, 1, 1, 1, 0, 0, 3, 24, NULL, NULL),
(171, 1, 0, 1, 0, 0, 3, 30, NULL, NULL),
(172, 1, 1, 1, 0, 0, 3, 32, NULL, NULL),
(173, 1, 0, 1, 0, 0, 3, 20, NULL, NULL),
(174, 1, 0, 1, 0, 0, 3, 21, NULL, NULL),
(175, 1, 1, 1, 0, 0, 3, 19, NULL, NULL),
(176, 1, 1, 1, 0, 0, 4, 26, NULL, NULL),
(177, 1, 1, 1, 0, 0, 4, 27, NULL, NULL),
(178, 1, 1, 1, 0, 0, 4, 28, NULL, NULL),
(179, 1, 1, 1, 0, 0, 4, 23, NULL, NULL),
(180, 1, 1, 1, 0, 0, 4, 24, NULL, NULL),
(181, 1, 1, 1, 0, 0, 4, 25, NULL, NULL),
(182, 1, 1, 1, 0, 0, 4, 32, NULL, NULL),
(183, 1, 0, 1, 0, 0, 4, 20, NULL, NULL),
(184, 1, 0, 1, 0, 0, 4, 21, NULL, NULL),
(185, 1, 0, 1, 0, 0, 4, 22, NULL, NULL),
(186, 1, 1, 1, 0, 0, 4, 19, NULL, NULL),
(187, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(188, 1, 1, 1, 0, 0, 5, 27, NULL, NULL),
(189, 1, 1, 1, 0, 0, 5, 24, NULL, NULL),
(190, 1, 1, 1, 0, 0, 5, 29, NULL, NULL),
(191, 1, 0, 1, 0, 0, 5, 21, NULL, NULL),
(192, 1, 1, 1, 0, 0, 5, 33, NULL, NULL),
(193, 1, 1, 1, 0, 0, 5, 19, NULL, NULL),
(194, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(195, 1, 1, 1, 1, 1, 6, 34, NULL, NULL),
(196, 1, 1, 1, 0, 0, 6, 28, NULL, NULL),
(197, 1, 1, 1, 0, 0, 6, 25, NULL, NULL),
(198, 1, 0, 1, 0, 0, 6, 22, NULL, NULL),
(199, 1, 1, 1, 1, 0, 6, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-01-18 05:23:51', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-01-18 05:23:51', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-01-18 05:23:51', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-01-18 05:23:51', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'E-Retribusi', 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-01-18 05:23:51', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-01/0b31140746d036d274b91ed322c5300b.png', 'upload_image', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-01/0d362ef370abbd99d1018847e99396fb.png', 'upload_image', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-01-18 05:23:51', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-01-18 05:23:51', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'dashboard', '2019-01-26 15:12:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2019-01/user.png', 'admin@crudbooster.com', '$2y$10$anBBm.VT0ya8BfNFQbCp6.dwPPV2TA5PAP4hZFgnYQHbsID8DZon6', 1, '2019-01-18 05:23:50', '2019-01-18 06:38:36', 'Active'),
(2, 'Administrator', 'uploads/1/2019-01/user.png', 'administrator@crudbooster.com', '$2y$10$vq3zbr6kGbdDdIhZt8HD9O8KavxSmRzCG27asx/sO2eyyzdADwX8y', 2, '2019-01-18 06:36:47', NULL, NULL),
(3, 'Agen', 'uploads/1/2019-01/user.png', 'agen@crudbooster.com', '$2y$10$oyNrvn9PyF4NXi4sSMK3oemSbEf7Zf6RdwYuSYoMa7SaUi3hN3glC', 3, '2019-01-18 06:37:15', NULL, NULL),
(4, 'Teller', 'uploads/1/2019-01/user.png', 'teller@crudbooster.com', '$2y$10$b.M6EO/cyrCrPXl3zFiAq.prbkyHeShQfysej7O1qT9el5TI2f9nu', 4, '2019-01-18 06:37:46', '2019-01-24 09:23:40', NULL),
(5, 'Fajar Hardianto', 'uploads/1/2019-01/user.png', 'fajarakun31@gmail.com', '$2y$10$p28TNUPA3LXu4C5ieS9hJODJX1o20iQF7s93TN6eZhuld9ik.EkPG', 5, '2019-01-18 06:38:13', '2019-01-22 10:00:00', NULL),
(6, 'Member', 'uploads/1/2019-01/savedphoto2.png', 'member@crudbooster.com', '$2y$10$2l.7a5o6cDoNC4DdHf6qQu8kd.gwjrirLxmMHkv9gwZqChHIxjCJS', 5, '2019-01-24 12:06:35', NULL, NULL),
(7, 'Fauzi Eko Saputro', 'uploads/1/2019-01/male.png', 'fauzi@shakti.id', '$2y$10$svMeiSi5FxERCdQ.NchUzeVyHy5LlY2QYCNxIh0w6v9ch2N3Ft7S.', 6, '2019-01-25 11:35:39', NULL, NULL),
(8, 'Agen Dua', 'uploads/1/2019-01/savedphoto14.png', 'agen2@crudbooster.com', '$2y$10$T/gIfvo65bmQxeQ1P3Z9quzZzW2/fKXaMeRp5FDyPEUwe1EL/Tah6', 3, '2019-01-26 03:29:19', NULL, NULL),
(9, 'Master Account', 'uploads/1/2019-01/male.png', 'master@shakti.id', '$2y$10$LwXOCMJzSxZUSNYP9mM9oe8sY4Ie5gAOsDmA6wmEzG.vWZ9XFy/7C', 6, '2019-01-27 09:53:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembayaran_agen`
--

CREATE TABLE `detail_pembayaran_agen` (
  `id` int(11) NOT NULL,
  `tagihan_agen_id` int(11) NOT NULL,
  `pembayaran_agen_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_pembayaran_agen`
--

INSERT INTO `detail_pembayaran_agen` (`id`, `tagihan_agen_id`, `pembayaran_agen_id`, `jumlah`) VALUES
(1, 1, 1, 100000),
(4, 4, 2, 500),
(5, 3, 3, 500),
(6, 1, 4, 9000),
(7, 2, 5, 10000),
(8, 18, 6, 1000),
(9, 1, 7, 6000),
(10, 1, 8, 10000),
(11, 22, 9, 50),
(12, 14, 10, 20000),
(13, 20, 11, 1234),
(14, 27, 12, 100),
(15, 27, 13, 100),
(16, 27, 14, 100),
(17, 27, 15, 10),
(18, 27, 16, 10),
(19, 27, 17, 10),
(20, 27, 18, 10),
(21, 27, 19, 10),
(22, 27, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembayaran_member`
--

CREATE TABLE `detail_pembayaran_member` (
  `id` int(11) NOT NULL,
  `tagihan_member_id` int(11) NOT NULL,
  `pembayaran_member_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_pembayaran_member`
--

INSERT INTO `detail_pembayaran_member` (`id`, `tagihan_member_id`, `pembayaran_member_id`, `jumlah`) VALUES
(1, 4, 1, 50000),
(2, 4, 2, 30000),
(3, 4, 4, 10000),
(4, 3, 5, 20000),
(5, 2, 6, 10000),
(6, 2, 7, 10000),
(7, 3, 8, 20000),
(8, 3, 9, 20000),
(9, 2, 10, 20000),
(11, 2, 11, 10000),
(12, 1, 12, 20000),
(13, 1, 13, 5000),
(14, 5, 15, 5000),
(15, 5, 16, 5000),
(16, 1, 19, 2000),
(17, 2, 22, 10000),
(18, 2, 23, 5000),
(19, 2, 24, 10000),
(20, 2, 25, 5000),
(21, 3, 26, 10000),
(22, 3, 27, 100000),
(23, 3, 28, 100000),
(24, 8, 29, 30000),
(25, 8, 30, 40000),
(26, 2, 31, 10000),
(27, 9, 32, 20000),
(28, 2, 33, 10000),
(29, 3, 34, 10000),
(30, 2, 35, 10000),
(31, 1, 36, 3000),
(32, 3, 37, 10000),
(33, 7, 38, 20000),
(34, 6, 39, 100000),
(35, 7, 45, 20000),
(36, 7, 46, 20000),
(37, 7, 47, 20000),
(38, 2, 48, 10000),
(39, 7, 49, 20000),
(40, 3, 50, 5000),
(41, 12, 51, 20000),
(42, 8, 52, 130000),
(43, 7, 53, 80000),
(44, 11, 54, 500),
(45, 11, 55, 2000),
(46, 11, 56, 1000),
(47, 11, 57, 1000),
(48, 11, 58, 1000),
(49, 11, 59, 1000),
(50, 11, 60, 1000),
(51, 11, 61, 1000),
(52, 11, 62, 1000),
(53, 11, 63, 1000),
(54, 11, 64, 1000),
(55, 11, 66, 100000),
(56, 4, 67, 10000),
(57, 6, 68, 1),
(58, 8, 69, 999),
(59, 11, 70, 1000),
(60, 4, 72, 10000),
(61, 1, 73, 10000),
(62, 1, 74, 10000),
(63, 1, 75, 5000),
(64, 1, 76, 5000),
(65, 1, 77, 5000),
(66, 1, 78, 5000),
(67, 5, 79, 10000),
(68, 5, 80, 1000),
(69, 25, 82, 10000),
(70, 1, 90, 10000),
(71, 1, 91, 10000),
(72, 1, 92, 10000),
(73, 1, 93, 5000),
(74, 2, 94, 10000),
(75, 3, 95, 25000),
(78, 33, 100, 1000),
(79, 33, 101, 1000),
(80, 33, 102, 1000),
(81, 33, 103, 1000),
(82, 33, 104, 1000),
(83, 33, 106, 1000),
(84, 33, 107, 1000),
(85, 33, 108, 1000),
(86, 36, 109, 100),
(87, 33, 110, 1000),
(88, 39, 111, 100),
(89, 33, 112, 1000),
(90, 33, 113, 1000),
(91, 33, 114, 1000),
(92, 33, 115, 1000),
(93, 33, 116, 1000),
(94, 33, 117, 1000),
(95, 41, 118, 100),
(96, 33, 119, 10),
(97, 43, 120, 100),
(98, 33, 121, 10),
(99, 33, 123, 10),
(100, 33, 126, 10),
(101, 47, 127, 100),
(102, 33, 128, 10),
(103, 48, 129, 100),
(104, 33, 130, 10),
(105, 50, 131, 100),
(106, 33, 132, 10),
(107, 52, 133, 100),
(108, 33, 134, 10),
(109, 33, 135, 10),
(110, 54, 136, 100);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembayaran_teller`
--

CREATE TABLE `detail_pembayaran_teller` (
  `id` int(11) NOT NULL,
  `pembayaran_teller_id` int(11) NOT NULL,
  `tagihan_teller_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_pembayaran_teller`
--

INSERT INTO `detail_pembayaran_teller` (`id`, `pembayaran_teller_id`, `tagihan_teller_id`, `jumlah`) VALUES
(1, 1, 2, 500),
(2, 2, 2, 5000),
(3, 3, 27, 10);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_tagihan_agen`
--

CREATE TABLE `kategori_tagihan_agen` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_tagihan_agen`
--

INSERT INTO `kategori_tagihan_agen` (`id`, `nama_kategori`) VALUES
(1, 'Setoran Member'),
(2, 'Tabungan Member');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_tagihan_member`
--

CREATE TABLE `kategori_tagihan_member` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL,
  `icon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_tagihan_member`
--

INSERT INTO `kategori_tagihan_member` (`id`, `nama_kategori`, `icon`) VALUES
(1, 'Tagihan Sewa', 'fa fa-building-o'),
(2, 'Tagihan Sampah', 'fa fa-trash-o'),
(3, 'Tagihan Parkir', 'fa fa-road'),
(4, 'Tagihan Keamanan', 'fa fa-lock'),
(5, 'Tagihan Listrik', 'fa fa-bolt'),
(6, 'Tagihan Toilet', 'fa fa-life-ring'),
(7, 'Tagihan Iklan', 'fa fa-picture-o'),
(8, 'Pinjaman', 'fa fa-money'),
(9, 'Tabungan', 'fa fa-book');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_tagihan_teller`
--

CREATE TABLE `kategori_tagihan_teller` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori_tagihan_teller`
--

INSERT INTO `kategori_tagihan_teller` (`id`, `nama_kategori`) VALUES
(1, 'Pembayaran Sewa Member'),
(2, 'Tabungan Member');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `ktp` varchar(45) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_va` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id`, `cms_users_id`, `nama`, `ktp`, `alamat`, `nomor_va`) VALUES
(1, 9, 'Fauzi Eko Saputro', '3223433333333333', 'Jl. Raya Serpong No. 39 RT/RW 001/03', '333 444 555 666');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `ktp` varchar(45) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_va` varchar(45) NOT NULL,
  `saldo` int(11) DEFAULT NULL,
  `tabungan` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `cms_users_id`, `nama`, `ktp`, `alamat`, `nomor_va`, `saldo`, `tabungan`) VALUES
(1, 5, 'Fajar Hardianto', '3222222', 'Taman Rahayu Regensi 1 Blok C7 No. 177', '444 444 444 444', 645611, 308446),
(2, 6, 'Member', '08977654091239', 'jalan dimana ya', '123 123 321 321', 0, 497274);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_agen`
--

CREATE TABLE `pembayaran_agen` (
  `id` int(11) NOT NULL,
  `teller_id` int(11) DEFAULT NULL,
  `nomor_pembayaran` varchar(45) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran_agen`
--

INSERT INTO `pembayaran_agen` (`id`, `teller_id`, `nomor_pembayaran`, `tanggal`, `total`) VALUES
(1, 1, '5', '2019-01-22 22:00:00', 100000),
(2, NULL, 'A190128135220', '2019-01-28 18:52:20', 500),
(3, 1, 'A190128135447', '2019-01-28 18:54:47', 500),
(4, 1, 'A190201142802', '2019-02-01 19:28:02', 9000),
(5, 1, 'A190201144149', '2019-02-01 19:41:49', 10000),
(6, 1, 'A190201201021', '2019-02-02 01:10:21', 1000),
(7, 1, 'A190201210705', '2019-02-02 02:07:05', 6000),
(8, 1, 'A190201211237', '2019-02-02 02:12:37', 10000),
(9, 1, 'A190204094621', '2019-02-04 14:46:21', 50),
(10, 1, 'A190204094703', '2019-02-04 14:47:03', 20000),
(11, 1, 'A190204115355', '2019-02-04 16:53:55', 1234),
(12, NULL, 'A190206171053', '2019-02-06 22:10:53', 100),
(13, NULL, 'A190206174041', '2019-02-06 22:40:41', 100),
(14, NULL, 'A190207154715', '2019-02-07 20:47:15', 100),
(15, NULL, 'A190207160351', '2019-02-07 21:03:51', 10),
(16, 1, 'A190207161523', '2019-02-07 21:15:23', 10),
(17, NULL, 'A190207191541', '2019-02-08 00:15:41', 10),
(18, NULL, 'A190207191912', '2019-02-08 00:19:12', 10),
(19, NULL, 'A190207192157', '2019-02-08 00:21:57', 10),
(20, NULL, 'A190207224758', '2019-02-08 03:47:58', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_member`
--

CREATE TABLE `pembayaran_member` (
  `id` int(11) NOT NULL,
  `agen_id` int(11) DEFAULT NULL,
  `teller_id` int(11) DEFAULT NULL,
  `nomor_pembayaran` varchar(45) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran_member`
--

INSERT INTO `pembayaran_member` (`id`, `agen_id`, `teller_id`, `nomor_pembayaran`, `tanggal`, `total`) VALUES
(1, 1, NULL, 'm0000001', '2019-01-01 05:00:00', 50000),
(2, 1, NULL, 'M190124092411', '2019-01-24 14:24:11', 30000),
(4, 1, NULL, 'M190124104302', '2019-01-24 15:43:02', 10000),
(5, NULL, NULL, 'M190124135202', '2019-01-24 18:52:02', 20000),
(6, NULL, NULL, 'M190124143449', '2019-01-24 19:34:49', 10000),
(7, NULL, NULL, 'M190125112603', '2019-01-25 16:26:03', 10000),
(8, 1, NULL, 'M190125120452', '2019-01-25 17:04:52', 20000),
(9, 1, NULL, 'M190127010901', '2019-01-27 06:09:01', 20000),
(10, NULL, 1, 'M190127132251', '2019-01-27 18:22:51', 20000),
(11, NULL, NULL, 'M190128131455', '2019-01-28 18:14:55', 10000),
(12, NULL, NULL, 'M190128131607', '2019-01-28 18:16:07', 20000),
(13, 1, NULL, 'M190128132237', '2019-01-28 18:22:37', 5000),
(15, NULL, 1, 'M190128133538', '2019-01-28 18:35:38', 5000),
(16, NULL, 1, 'M190128133612', '2019-01-28 18:36:12', 5000),
(19, NULL, 1, 'M190128133632', '2019-01-28 18:36:32', 2000),
(20, 1, NULL, 'A190128134914', '2019-01-28 18:49:14', 5000),
(21, 1, NULL, 'A190128135043', '2019-01-28 18:50:43', 5000),
(22, NULL, 1, 'M190128182727', '2019-01-28 23:27:27', 10000),
(23, NULL, 1, 'M190128190158', '2019-01-29 00:01:58', 5000),
(24, NULL, 1, 'M190128190244', '2019-01-29 00:02:44', 10000),
(25, NULL, 1, 'M190128191041', '2019-01-29 00:10:41', 5000),
(26, NULL, NULL, 'M190128191611', '2019-01-29 00:16:11', 10000),
(27, 1, NULL, 'M190129131240', '2019-01-29 18:12:40', 100000),
(28, NULL, NULL, 'M190129131611', '2019-01-29 18:16:11', 100000),
(29, NULL, NULL, 'M190129135419', '2019-01-29 18:54:19', 30000),
(30, NULL, NULL, 'M190129135723', '2019-01-29 18:57:23', 40000),
(31, NULL, NULL, 'M190130114024', '2019-01-30 16:40:24', 10000),
(32, 1, NULL, 'M190130120444', '2019-01-30 17:04:44', 20000),
(33, 1, NULL, 'M190130124101', '2019-01-30 17:41:01', 10000),
(34, 1, NULL, 'M190130124352', '2019-01-30 17:43:52', 10000),
(35, 1, NULL, 'M190130124525', '2019-01-30 17:45:25', 10000),
(36, NULL, NULL, 'M190131134516', '2019-01-31 18:45:16', 3000),
(37, 1, NULL, 'M190131145456', '2019-01-31 19:54:56', 10000),
(38, 1, NULL, 'M190131214603', '2019-02-01 02:46:03', 20000),
(39, 1, NULL, 'M190131215252', '2019-02-01 02:52:52', 100000),
(40, 1, NULL, 'M190201065240', '2019-02-01 11:52:40', 50000),
(41, 1, NULL, 'M190201065444', '2019-02-01 11:54:44', 50000),
(42, 1, NULL, 'M190201065635', '2019-02-01 11:56:35', 50000),
(43, 1, NULL, 'M190201065912', '2019-02-01 11:59:12', 75000),
(44, 1, NULL, 'M190201070754', '2019-02-01 12:07:54', 62000),
(45, 1, NULL, 'M190201134246', '2019-02-01 18:42:46', 20000),
(46, 1, NULL, 'M190201134319', '2019-02-01 18:43:19', 20000),
(47, NULL, NULL, 'M190201134400', '2019-02-01 18:44:00', 20000),
(48, NULL, 1, 'M190201141922', '2019-02-01 19:19:22', 10000),
(49, NULL, NULL, 'M190201143048', '2019-02-01 19:30:48', 20000),
(50, NULL, NULL, 'M190201144456', '2019-02-01 19:44:56', 5000),
(51, NULL, NULL, 'M190201144541', '2019-02-01 19:45:41', 20000),
(52, NULL, 1, 'M190201151227', '2019-02-01 20:12:27', 130000),
(53, NULL, 1, 'M190201152005', '2019-02-01 20:20:05', 80000),
(54, NULL, NULL, 'M190201152625', '2019-02-01 20:26:25', 500),
(55, NULL, NULL, 'M190201152838', '2019-02-01 20:28:38', 2000),
(56, NULL, NULL, 'M190201153051', '2019-02-01 20:30:51', 1000),
(57, NULL, NULL, 'M190201153230', '2019-02-01 20:32:30', 1000),
(58, NULL, NULL, 'M190201153543', '2019-02-01 20:35:43', 1000),
(59, NULL, NULL, 'M190201155416', '2019-02-01 20:54:16', 1000),
(60, NULL, NULL, 'M190201155545', '2019-02-01 20:55:45', 1000),
(61, NULL, NULL, 'M190201155728', '2019-02-01 20:57:28', 1000),
(62, NULL, NULL, 'M190201160400', '2019-02-01 21:04:00', 1000),
(63, NULL, NULL, 'M190201160844', '2019-02-01 21:08:44', 1000),
(64, NULL, NULL, 'M190201161049', '2019-02-01 21:10:49', 1000),
(65, 1, NULL, 'M190201163248', '2019-02-01 21:32:48', 50000),
(66, 1, NULL, 'M190201164233', '2019-02-01 21:42:33', 100000),
(67, NULL, NULL, 'M190201165814', '2019-02-01 21:58:14', 10000),
(68, NULL, NULL, 'M190201165823', '2019-02-01 21:58:23', 1),
(69, NULL, NULL, 'M190201165834', '2019-02-01 21:58:34', 999),
(70, NULL, NULL, 'M190201165933', '2019-02-01 21:59:33', 1000),
(71, 1, NULL, 'M190201170438', '2019-02-01 22:04:38', 100000),
(72, NULL, 1, 'M190201184607', '2019-02-01 23:46:07', 10000),
(73, NULL, 1, 'M190201184706', '2019-02-01 23:47:06', 10000),
(74, NULL, 1, 'M190201184811', '2019-02-01 23:48:11', 10000),
(75, NULL, 1, 'M190201185048', '2019-02-01 23:50:48', 5000),
(76, NULL, 1, 'M190201185205', '2019-02-01 23:52:05', 5000),
(77, NULL, NULL, 'M190201185422', '2019-02-01 23:54:22', 5000),
(78, NULL, 1, 'M190201190105', '2019-02-02 00:01:05', 5000),
(79, 1, NULL, 'M190201194354', '2019-02-02 00:43:54', 10000),
(80, 1, NULL, 'M190201194559', '2019-02-02 00:45:59', 1000),
(81, 1, NULL, 'M190201194615', '2019-02-02 00:46:15', 10000),
(82, 1, NULL, 'M190201200026', '2019-02-02 01:00:26', 10000),
(83, 1, NULL, 'M190201200153', '2019-02-02 01:01:53', 123000),
(84, 1, NULL, 'M190201200322', '2019-02-02 01:03:22', 123000),
(85, 1, NULL, 'M190201200436', '2019-02-02 01:04:36', 123),
(86, 1, NULL, 'M190201200513', '2019-02-02 01:05:13', 123),
(87, 1, NULL, 'M190201200533', '2019-02-02 01:05:33', 1234),
(88, 1, NULL, 'M190201200841', '2019-02-02 01:08:41', 100000),
(89, 1, NULL, 'M190201201112', '2019-02-02 01:11:12', 30),
(90, 1, NULL, 'M190201202119', '2019-02-02 01:21:19', 10000),
(91, 1, NULL, 'M190201202133', '2019-02-02 01:21:33', 10000),
(92, NULL, 1, 'M190201210547', '2019-02-02 02:05:47', 10000),
(93, NULL, 1, 'M190201211153', '2019-02-02 02:11:53', 5000),
(94, 1, NULL, 'M190204093240', '2019-02-04 14:32:40', 10000),
(95, NULL, NULL, 'M190204094139', '2019-02-04 14:41:39', 25000),
(96, NULL, 1, 'M190204094803', '2019-02-04 14:48:03', 20000),
(97, NULL, 1, 'M190204094809', '2019-02-04 14:48:09', 20000),
(100, NULL, NULL, 'M190206115526', '2019-02-06 16:55:26', 1000),
(101, NULL, NULL, 'M190206115712', '2019-02-06 16:57:12', 1000),
(102, NULL, NULL, 'M190206115803', '2019-02-06 16:58:03', 1000),
(103, NULL, NULL, 'M190206115815', '2019-02-06 16:58:15', 1000),
(104, NULL, NULL, 'M190206120139', '2019-02-06 17:01:39', 1000),
(105, NULL, NULL, 'M190206120156', '2019-02-06 17:01:56', 0),
(106, NULL, NULL, 'M190206162857', '2019-02-06 21:28:57', 1000),
(107, 1, NULL, 'M190206164523', '2019-02-06 21:45:23', 1000),
(108, NULL, NULL, 'M190206165036', '2019-02-06 21:50:36', 1000),
(109, 1, NULL, 'M190206170039', '2019-02-06 22:00:39', 100),
(110, 1, NULL, 'M190206173950', '2019-02-06 22:39:50', 1000),
(111, 1, NULL, 'M190206174036', '2019-02-06 22:40:36', 100),
(112, NULL, NULL, 'M190207132546', '2019-02-07 18:25:46', 1000),
(113, NULL, NULL, 'M190207133246', '2019-02-07 18:32:46', 1000),
(114, NULL, NULL, 'M190207133420', '2019-02-07 18:34:20', 1000),
(115, NULL, NULL, 'M190207134328', '2019-02-07 18:43:28', 1000),
(116, NULL, NULL, 'M190207142423', '2019-02-07 19:24:23', 1000),
(117, 1, NULL, 'M190207154706', '2019-02-07 20:47:06', 1000),
(118, 1, NULL, 'M190207154711', '2019-02-07 20:47:11', 100),
(119, 1, NULL, 'M190207160343', '2019-02-07 21:03:43', 10),
(120, 1, NULL, 'M190207160347', '2019-02-07 21:03:47', 100),
(121, NULL, 1, 'M190207160558', '2019-02-07 21:05:58', 10),
(122, NULL, 1, 'M190207160602', '2019-02-07 21:06:02', 100),
(123, NULL, 1, 'M190207160859', '2019-02-07 21:08:59', 10),
(124, NULL, 1, 'M190207160903', '2019-02-07 21:09:03', 100),
(125, NULL, 1, 'M190207161008', '2019-02-07 21:10:08', 10),
(126, NULL, 1, 'M190207161513', '2019-02-07 21:15:13', 10),
(127, NULL, 1, 'M190207161518', '2019-02-07 21:15:18', 100),
(128, 1, NULL, 'M190207191533', '2019-02-08 00:15:33', 10),
(129, 1, NULL, 'M190207191536', '2019-02-08 00:15:36', 100),
(130, 1, NULL, 'M190207191905', '2019-02-08 00:19:05', 10),
(131, 1, NULL, 'M190207191908', '2019-02-08 00:19:08', 100),
(132, 1, NULL, 'M190207192150', '2019-02-08 00:21:50', 10),
(133, 1, NULL, 'M190207192154', '2019-02-08 00:21:54', 100),
(134, 1, NULL, 'M190207223006', '2019-02-08 03:30:06', 10),
(135, 1, NULL, 'M190207224744', '2019-02-08 03:47:44', 10),
(136, 1, NULL, 'M190207224751', '2019-02-08 03:47:51', 100);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_teller`
--

CREATE TABLE `pembayaran_teller` (
  `id` int(11) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `nomor_pembayaran` varchar(45) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran_teller`
--

INSERT INTO `pembayaran_teller` (`id`, `master_id`, `nomor_pembayaran`, `tanggal`, `total`) VALUES
(1, NULL, 'T190128141032', '2019-01-28 19:10:32', 500),
(2, NULL, 'T190128141205', '2019-01-28 19:12:05', 5000),
(3, NULL, 'T190207161527', '2019-02-07 21:15:27', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `margin` int(11) NOT NULL,
  `berlaku` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `margin`, `berlaku`) VALUES
(1, 25, '2019-01-30'),
(3, 10, '2019-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman_member`
--

CREATE TABLE `pinjaman_member` (
  `id` int(11) NOT NULL,
  `nomor` varchar(15) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `agen_id` int(11) DEFAULT NULL,
  `teller_id` int(11) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(11) NOT NULL,
  `margin` int(11) NOT NULL,
  `keuntungan` int(11) NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman_member`
--

INSERT INTO `pinjaman_member` (`id`, `nomor`, `member_id`, `agen_id`, `teller_id`, `tanggal`, `jumlah`, `margin`, `keuntungan`, `approve`) VALUES
(1, 'P190128161702', 1, 1, NULL, '2019-01-28 12:22:35', 100000, 25, 40000, 1),
(2, 'P190128163053', 1, NULL, 1, '2019-01-28 12:43:56', 20000, 25, 9000, 1),
(3, 'P190128170916', 2, 1, NULL, '2019-01-30 00:51:47', 30000, 25, 16000, 2),
(12, 'P190129104134', 1, 1, NULL, '2019-02-01 07:02:55', 50000, 25, 0, 2),
(11, 'P190129090237', 1, 1, NULL, '2019-02-01 07:01:26', 100000, 25, 0, 1),
(13, 'P190129104341', 1, 1, NULL, '2019-01-29 05:24:48', 25000, 25, 0, 2),
(14, 'P190129063026', 1, 1, NULL, '2019-01-29 01:33:02', 200000, 25, 100000, 1),
(15, 'P190130063210', 1, 1, NULL, '2019-01-30 06:32:10', 50000, 25, 100000, 0),
(16, 'P190130053238', 2, 2, NULL, '2019-01-30 05:32:38', 10000, 25, 30000, 0),
(17, 'P190130054845', 1, 1, NULL, '2019-01-30 00:53:42', 100000, 25, 50000, 1),
(18, 'P190130151748', 1, 1, NULL, '2019-01-30 15:17:48', 100000, 25, 110000, 0),
(19, 'P190130110629', 2, 1, NULL, '2019-01-30 11:06:29', 20000, 25, 5000, 0),
(20, 'P190131032437', 2, 2, NULL, '2019-01-31 03:24:37', 1000, 25, 500, 0),
(21, 'P190131033212', 2, 2, NULL, '2019-01-16 00:00:00', 20000, 10, 10000, 0),
(22, 'P190131103416', 2, 1, NULL, '2019-01-23 00:00:00', 20000, 10, 10000, 0),
(23, 'P190131103651', 2, 1, NULL, '2019-02-07 00:00:00', 100000, 25, 100000, 0),
(24, 'P190131105552', 2, 1, NULL, '2019-02-09 00:00:00', 11, 25, 11, 0),
(25, 'P190131105625', 2, 1, NULL, '2019-01-16 00:00:00', 22, 10, 22, 0),
(28, 'P190131211457', 1, 1, NULL, '2019-01-31 21:14:57', 500000, 25, 750000, 0),
(27, 'P190131105830', 2, 1, NULL, '2019-01-30 00:00:00', 44, 25, 44, 0),
(29, 'P190131213129', 1, 1, NULL, '2019-01-31 21:31:29', 1000000, 25, 2000000, 2),
(30, 'P190131213144', 1, 1, NULL, '2019-01-31 21:31:44', 1000000, 25, 1500000, 1),
(31, 'P190131214138', 1, 1, NULL, '2019-01-31 21:41:38', 500000, 25, 750000, 2),
(32, 'P190131214141', 1, 1, NULL, '2019-01-31 21:41:41', 500000, 25, 750000, 1),
(33, 'P190201170147', 1, 1, NULL, '2019-02-01 06:47:11', 10000, 25, 5000, 1),
(34, 'P190206133533', 1, 1, NULL, '2019-02-06 13:35:33', 1000, 25, 500, 1),
(35, 'P190206133607', 1, 1, NULL, '2019-02-01 00:00:00', 1000, 25, 500, 2),
(36, 'P190206133811', 1, 1, NULL, '2019-02-01 00:00:00', 100000, 25, 99, 1),
(37, 'P190206134954', 1, 1, NULL, '2019-02-06 13:49:54', 1000, 25, 500, 2),
(38, 'P190206135026', 1, 1, NULL, '2019-02-01 00:00:00', 1000, 25, 500, 1),
(39, 'P190206135444', 1, 1, NULL, '2019-02-01 00:00:00', 1000, 25, 500, 2),
(40, 'P190206135826', 1, 2, NULL, '2019-02-02 00:00:00', 100000, 25, 8000, 0),
(41, 'P190206135853', 1, 1, NULL, '2019-01-01 00:00:00', 100000, 10, 100, 1),
(42, 'P190206162858', 1, 1, NULL, '2019-02-06 16:28:58', 1000, 25, 500, 2),
(43, 'P190206165038', 1, 1, NULL, '2019-02-06 16:50:38', 1000, 25, 500, 1),
(44, 'P190207134332', 1, 1, NULL, '2019-02-07 13:43:32', 1000, 25, 500, 2),
(45, 'P190207134336', 1, 1, NULL, '2019-02-07 13:43:36', 1000, 25, 500, 1),
(46, 'P190207142427', 1, 1, NULL, '2019-02-07 14:24:27', 1000, 25, 500, 2),
(47, 'P190207142433', 1, 1, NULL, '2019-02-07 14:24:33', 1000, 25, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan_agen`
--

CREATE TABLE `tagihan_agen` (
  `id` int(11) NOT NULL,
  `agen_id` int(11) NOT NULL,
  `kategori_tagihan_agen_id` int(11) NOT NULL,
  `pembayaran_member_id` int(11) NOT NULL,
  `nomor` varchar(45) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(45) NOT NULL,
  `total_tagihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagihan_agen`
--

INSERT INTO `tagihan_agen` (`id`, `agen_id`, `kategori_tagihan_agen_id`, `pembayaran_member_id`, `nomor`, `tanggal`, `status`, `total_tagihan`) VALUES
(1, 1, 1, 1, 'TA-190122180000', '2019-01-22 18:00:00', 'Belum Lunas', 150000),
(2, 1, 1, 4, 'TA-190124104303', '2019-01-24 10:43:02', 'Belum Lunas', 10000),
(3, 1, 1, 8, 'TA-190125120452', '2019-01-25 12:04:52', 'Belum Lunas', 20000),
(4, 1, 1, 9, 'TA-190127010901', '2019-01-27 01:09:01', 'Belum Lunas', 20000),
(5, 1, 1, 13, 'TA-190128132237', '2019-01-28 13:22:37', 'Belum Lunas', 5000),
(6, 1, 1, 27, 'TA-190129131240', '2019-01-29 13:12:40', 'Belum Lunas', 100000),
(7, 1, 1, 33, 'TA-190130124101', '2019-01-30 12:41:01', 'Belum Lunas', 10000),
(8, 1, 1, 34, 'TA-190130124352', '2019-01-30 12:43:52', 'Belum Lunas', 10000),
(9, 1, 1, 35, 'TA-190130124525', '2019-01-30 12:45:25', 'Belum Lunas', 10000),
(10, 1, 1, 37, 'TA-190131145456', '2019-01-31 14:54:56', 'Belum Lunas', 10000),
(11, 1, 1, 38, 'TA-190131214603', '2019-01-31 21:46:03', 'Belum Lunas', 20000),
(12, 1, 1, 39, 'TA-190131215252', '2019-01-31 21:52:52', 'Belum Lunas', 100000),
(13, 1, 1, 45, 'TA-190201134246', '2019-02-01 13:42:46', 'Belum Lunas', 20000),
(14, 1, 1, 46, 'TA-190201134319', '2019-02-01 13:43:19', 'Belum Lunas', 20000),
(15, 1, 1, 66, 'TA-190201164233', '2019-02-01 16:42:33', 'Belum Lunas', 100000),
(16, 1, 1, 79, 'TA-190201194354', '2019-02-01 19:43:54', 'Belum Lunas', 10000),
(17, 1, 1, 80, 'TA-190201194559', '2019-02-01 19:45:59', 'Belum Lunas', 1000),
(18, 1, 2, 82, 'TA-190201200026', '2019-02-01 20:00:26', 'Belum Lunas', 10000),
(19, 1, 2, 86, 'TA-190201200513', '2019-02-01 20:05:13', 'Belum Lunas', 123),
(20, 1, 2, 87, 'TA-190201200533', '2019-02-01 20:05:33', 'Belum Lunas', 1234),
(21, 1, 2, 88, 'TA-190201200841', '2019-02-01 20:08:41', 'Belum Lunas', 100000),
(22, 1, 2, 89, 'TA-190201201112', '2019-02-01 20:11:12', 'Belum Lunas', 30),
(23, 1, 1, 90, 'TA-190201202119', '2019-02-01 20:21:19', 'Belum Lunas', 10000),
(24, 1, 1, 91, 'TA-190201202133', '2019-02-01 20:21:33', 'Belum Lunas', 10000),
(25, 1, 1, 94, 'TA-190204093240', '2019-02-04 09:32:40', 'Belum Lunas', 10000),
(26, 1, 1, 107, 'TA-190206164523', '2019-02-06 16:45:23', 'Belum Lunas', 1000),
(27, 1, 2, 109, 'TA-190206170039', '2019-02-06 17:00:39', 'Belum Lunas', 100),
(28, 1, 1, 110, 'TA-190206173950', '2019-02-06 17:39:50', 'Belum Lunas', 1000),
(29, 1, 2, 111, 'TA-190206174036', '2019-02-06 17:40:36', 'Belum Lunas', 100),
(30, 1, 1, 117, 'TA-190207154706', '2019-02-07 15:47:06', 'Belum Lunas', 1000),
(31, 1, 2, 118, 'TA-190207154711', '2019-02-07 15:47:11', 'Belum Lunas', 100),
(32, 1, 1, 119, 'TA-190207160343', '2019-02-07 16:03:43', 'Belum Lunas', 10),
(33, 1, 2, 120, 'TA-190207160347', '2019-02-07 16:03:47', 'Belum Lunas', 100),
(34, 1, 1, 128, 'TA-190207191533', '2019-02-07 19:15:33', 'Belum Lunas', 10),
(35, 1, 2, 129, 'TA-190207191536', '2019-02-07 19:15:36', 'Belum Lunas', 100),
(36, 1, 1, 130, 'TA-190207191905', '2019-02-07 19:19:05', 'Belum Lunas', 10),
(37, 1, 2, 131, 'TA-190207191908', '2019-02-07 19:19:08', 'Belum Lunas', 100),
(38, 1, 1, 132, 'TA-190207192150', '2019-02-07 19:21:50', 'Belum Lunas', 10),
(39, 1, 2, 133, 'TA-190207192154', '2019-02-07 19:21:54', 'Belum Lunas', 100),
(40, 1, 1, 134, 'TA-190207223006', '2019-02-07 22:30:06', 'Belum Lunas', 10),
(41, 1, 1, 135, 'TA-190207224744', '2019-02-07 22:47:44', 'Belum Lunas', 10),
(42, 1, 2, 136, 'TA-190207224751', '2019-02-07 22:47:51', 'Belum Lunas', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan_member`
--

CREATE TABLE `tagihan_member` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `kategori_tagihan_member_id` int(11) NOT NULL,
  `nomor` varchar(45) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(45) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `pinjaman_member_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagihan_member`
--

INSERT INTO `tagihan_member` (`id`, `member_id`, `kategori_tagihan_member_id`, `nomor`, `tanggal`, `status`, `total_tagihan`, `pinjaman_member_id`) VALUES
(1, 1, 7, 'tgi0001', '2019-01-22 00:00:00', 'Belum Lunas', 200000, NULL),
(2, 1, 4, 'tgk0001', '2019-01-22 00:00:00', 'Lunas', 130000, NULL),
(3, 1, 5, 'tgl0001', '2019-01-22 00:00:00', 'Lunas', 320000, NULL),
(4, 1, 7, 'tgi0002', '2019-01-01 00:00:00', 'Belum Lunas', 200000, NULL),
(5, 2, 1, 'tgs0001', '2019-01-27 00:00:00', 'Belum Lunas', 200000, NULL),
(6, 1, 8, 'TM-190129002235', '2019-01-29 00:22:35', 'Lunas', 100000, 1),
(7, 1, 8, 'TM-190129004356', '2019-01-29 00:43:56', 'Lunas', 20000, 2),
(8, 1, 8, 'TM-190129133302', '2019-01-29 13:33:01', 'Lunas', 200000, 14),
(9, 1, 9, 'TM-190130120444', '2019-01-30 12:04:44', 'Lunas', 20000, NULL),
(11, 1, 8, 'TM-190130125342', '2019-01-30 12:53:42', 'Lunas', 112500, 17),
(12, 1, 8, 'TM-190131214138', '2019-01-31 21:41:38', 'Belum Lunas', 500000, 31),
(13, 1, 8, 'TM-190131214141', '2019-01-31 21:41:41', 'Belum Lunas', 500000, 32),
(14, 1, 9, 'TM-190201065240', '2019-02-01 06:52:40', 'Lunas', 50000, NULL),
(15, 1, 9, 'TM-190201065444', '2019-02-01 06:54:44', 'Lunas', 50000, NULL),
(16, 1, 9, 'TM-190201065635', '2019-02-01 06:56:35', 'Lunas', 50000, NULL),
(17, 1, 9, 'TM-190201065912', '2019-02-01 06:59:12', 'Lunas', 75000, NULL),
(18, 1, 9, 'TM-190201070754', '2019-02-01 07:07:54', 'Lunas', 62000, NULL),
(19, 1, 9, 'TM-190201163248', '2019-02-01 16:32:48', 'Lunas', 50000, NULL),
(20, 1, 8, 'TM-190201170147', '2019-02-01 17:01:47', 'Belum Lunas', 10000, 33),
(21, 2, 9, 'TM-190201170438', '2019-02-01 17:04:38', 'Lunas', 100000, NULL),
(22, 1, 8, 'TM-190201184711', '2019-02-01 18:47:11', 'Belum Lunas', 11250, 33),
(23, 1, 8, 'TM-190201190126', '2019-02-01 19:01:26', 'Belum Lunas', 100000, 11),
(24, 2, 9, 'TM-190201194615', '2019-02-01 19:46:15', 'Lunas', 10000, NULL),
(25, 1, 9, 'TM-190201200026', '2019-02-01 20:00:26', 'Lunas', 10000, NULL),
(26, 2, 9, 'TM-190201200153', '2019-02-01 20:01:53', 'Lunas', 123000, NULL),
(27, 2, 9, 'TM-190201200322', '2019-02-01 20:03:22', 'Lunas', 123000, NULL),
(28, 1, 9, 'TM-190201200436', '2019-02-01 20:04:36', 'Lunas', 123, NULL),
(29, 1, 9, 'TM-190201200513', '2019-02-01 20:05:13', 'Lunas', 123, NULL),
(30, 2, 9, 'TM-190201200533', '2019-02-01 20:05:33', 'Lunas', 1234, NULL),
(31, 2, 9, 'TM-190201200841', '2019-02-01 20:08:41', 'Lunas', 100000, NULL),
(32, 2, 9, 'TM-190201201112', '2019-02-01 20:11:12', 'Lunas', 30, NULL),
(33, 1, 8, 'TM-190204093313', '2019-02-04 09:33:13', 'Belum Lunas', 687500, 32),
(34, 2, 9, 'TM-190204094803', '2019-02-04 09:48:03', 'Lunas', 20000, NULL),
(35, 2, 9, 'TM-190204094809', '2019-02-04 09:48:09', 'Lunas', 20000, NULL),
(36, 1, 9, 'TM-190206170039', '2019-02-06 17:00:39', 'Lunas', 100, NULL),
(37, 1, 8, 'TM-190206173130', '2019-02-06 17:31:30', 'Belum Lunas', 1125, 43),
(38, 1, 8, 'TM-190206173612', '2019-02-06 17:36:12', 'Belum Lunas', 100010, 41),
(39, 1, 9, 'TM-190206174036', '2019-02-06 17:40:36', 'Lunas', 100, NULL),
(40, 1, 8, 'TM-190206174043', '2019-02-06 17:40:42', 'Belum Lunas', 1125, 38),
(41, 1, 9, 'TM-190207154711', '2019-02-07 15:47:11', 'Lunas', 100, NULL),
(42, 1, 8, 'TM-190207154717', '2019-02-07 15:47:17', 'Belum Lunas', 1125, 47),
(43, 1, 9, 'TM-190207160347', '2019-02-07 16:03:47', 'Lunas', 100, NULL),
(44, 1, 9, 'TM-190207160602', '2019-02-07 16:06:02', 'Lunas', 100, NULL),
(45, 1, 9, 'TM-190207160903', '2019-02-07 16:09:03', 'Lunas', 100, NULL),
(46, 2, 9, 'TM-190207161008', '2019-02-07 16:10:08', 'Lunas', 10, NULL),
(47, 1, 9, 'TM-190207161518', '2019-02-07 16:15:18', 'Lunas', 100, NULL),
(48, 1, 9, 'TM-190207191536', '2019-02-07 19:15:36', 'Lunas', 100, NULL),
(49, 1, 8, 'TM-190207191544', '2019-02-07 19:15:44', 'Belum Lunas', 1125, 45),
(50, 1, 9, 'TM-190207191908', '2019-02-07 19:19:08', 'Lunas', 100, NULL),
(51, 1, 8, 'TM-190207191914', '2019-02-07 19:19:14', 'Belum Lunas', 100025, 36),
(52, 1, 9, 'TM-190207192154', '2019-02-07 19:21:54', 'Lunas', 100, NULL),
(53, 1, 8, 'TM-190207192200', '2019-02-07 19:21:59', 'Belum Lunas', 1125, 34),
(54, 1, 9, 'TM-190207224751', '2019-02-07 22:47:51', 'Lunas', 100, NULL),
(55, 1, 8, 'TM-190207224803', '2019-02-07 22:48:03', 'Belum Lunas', 1375000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan_teller`
--

CREATE TABLE `tagihan_teller` (
  `id` int(11) NOT NULL,
  `teller_id` int(11) NOT NULL,
  `kategori_tagihan_teller_id` int(11) NOT NULL,
  `pembayaran_agen_id` int(11) DEFAULT NULL,
  `pembayaran_member_id` int(11) DEFAULT NULL,
  `nomor` varchar(45) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(45) NOT NULL,
  `total_tagihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagihan_teller`
--

INSERT INTO `tagihan_teller` (`id`, `teller_id`, `kategori_tagihan_teller_id`, `pembayaran_agen_id`, `pembayaran_member_id`, `nomor`, `tanggal`, `status`, `total_tagihan`) VALUES
(1, 1, 1, 1, NULL, NULL, '2019-01-26 18:00:00', 'Belum Lunas', 130000),
(2, 1, 1, NULL, 10, 'TL-190127132252', '2019-01-27 13:22:51', 'Belum Lunas', 20000),
(3, 1, 1, NULL, 15, 'M190128133538', '2019-01-28 13:35:38', 'Belum Lunas', 5000),
(4, 1, 1, NULL, 16, 'TL-190128133612', '2019-01-28 13:36:12', 'Belum Lunas', 5000),
(5, 1, 1, NULL, 19, 'TL-190128133632', '2019-01-28 13:36:32', 'Belum Lunas', 2000),
(6, 1, 1, 3, NULL, 'TL-190128135447', '2019-01-28 13:54:47', 'Belum Lunas', 500),
(7, 1, 1, NULL, 22, 'TL-190128182727', '2019-01-28 18:27:27', 'Belum Lunas', 10000),
(8, 1, 1, NULL, 23, 'TL-190128190158', '2019-01-28 19:01:58', 'Belum Lunas', 5000),
(9, 1, 1, NULL, 24, 'TL-190128190244', '2019-01-28 19:02:44', 'Belum Lunas', 10000),
(10, 1, 1, NULL, 25, 'TL-190128191041', '2019-01-28 19:10:41', 'Belum Lunas', 5000),
(11, 1, 1, NULL, 48, 'TL-190201141922', '2019-02-01 14:19:22', 'Belum Lunas', 10000),
(12, 1, 1, 4, NULL, 'TL-190201142802', '2019-02-01 14:28:02', 'Belum Lunas', 9000),
(13, 1, 1, 5, NULL, 'TL-190201144149', '2019-02-01 14:41:49', 'Belum Lunas', 10000),
(14, 1, 1, NULL, 52, 'TL-190201151227', '2019-02-01 15:12:27', 'Belum Lunas', 130000),
(15, 1, 1, NULL, 53, 'TL-190201152005', '2019-02-01 15:20:05', 'Belum Lunas', 80000),
(16, 1, 1, NULL, 72, 'TL-190201184607', '2019-02-01 18:46:07', 'Belum Lunas', 10000),
(17, 1, 1, NULL, 73, 'TL-190201184706', '2019-02-01 18:47:06', 'Belum Lunas', 10000),
(18, 1, 1, NULL, 74, 'TL-190201184811', '2019-02-01 18:48:11', 'Belum Lunas', 10000),
(19, 1, 1, NULL, 75, 'TL-190201185048', '2019-02-01 18:50:48', 'Belum Lunas', 5000),
(20, 1, 1, NULL, 76, 'TL-190201185205', '2019-02-01 18:52:05', 'Belum Lunas', 5000),
(21, 1, 1, NULL, 78, 'TL-190201190105', '2019-02-01 19:01:05', 'Belum Lunas', 5000),
(22, 1, 1, 6, NULL, 'TL-190201201021', '2019-02-01 20:10:21', 'Belum Lunas', 1000),
(23, 1, 1, NULL, 92, 'TL-190201210547', '2019-02-01 21:05:47', 'Belum Lunas', 10000),
(24, 1, 1, 7, NULL, 'TL-190201210705', '2019-02-01 21:07:05', 'Belum Lunas', 6000),
(25, 1, 1, NULL, 93, 'TL-190201211153', '2019-02-01 21:11:53', 'Belum Lunas', 5000),
(26, 1, 1, 8, NULL, 'TL-190201211237', '2019-02-01 21:12:37', 'Belum Lunas', 10000),
(27, 1, 1, 9, NULL, 'TL-190204094621', '2019-02-04 09:46:21', 'Belum Lunas', 50),
(28, 1, 1, 10, NULL, 'TL-190204094703', '2019-02-04 09:47:03', 'Belum Lunas', 20000),
(31, 1, 1, 11, NULL, 'TL-190204115355', '2019-02-04 11:53:55', 'Belum Lunas', 1234),
(32, 1, 1, NULL, 121, 'TL-190207160558', '2019-02-07 16:05:58', 'Belum Lunas', 10),
(34, 1, 1, NULL, 123, 'TL-190207160859', '2019-02-07 16:08:59', 'Belum Lunas', 10),
(37, 1, 1, NULL, 126, 'TL-190207161514', '2019-02-07 16:15:13', 'Belum Lunas', 10),
(38, 1, 2, NULL, 127, 'TL-190207161518', '2019-02-07 16:15:18', 'Belum Lunas', 100),
(39, 1, 1, 16, NULL, 'TL-190207161523', '2019-02-07 16:15:23', 'Belum Lunas', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tarik_tabungan`
--

CREATE TABLE `tarik_tabungan` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `agen_id` int(11) DEFAULT NULL,
  `teller_id` int(11) DEFAULT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarik_tabungan`
--

INSERT INTO `tarik_tabungan` (`id`, `member_id`, `agen_id`, `teller_id`, `nominal`, `tanggal`) VALUES
(1, 1, 2, NULL, 1000, '2019-01-30 06:44:59'),
(2, 1, 1, NULL, 1000, '2019-01-30 20:06:54'),
(3, 1, 1, NULL, 2000, '2019-01-30 20:25:30'),
(4, 1, 1, NULL, 1000, '2019-01-30 20:36:59'),
(5, 1, 1, NULL, 2000, '2019-01-31 17:51:33'),
(6, 1, 1, NULL, 50000, '2019-02-01 12:26:10'),
(7, 1, 1, NULL, 1000, '2019-02-06 09:08:17'),
(8, 1, 1, NULL, 1000, '2019-02-06 09:10:03'),
(9, 1, NULL, 1, 100, '2019-02-06 09:13:07'),
(10, 1, 1, NULL, 100, '2019-02-06 09:29:03'),
(11, 1, NULL, 1, 100, '2019-02-06 09:29:06'),
(12, 1, 1, NULL, 100, '2019-02-06 09:50:43'),
(13, 1, NULL, 1, 100, '2019-02-06 09:50:45'),
(14, 1, 1, NULL, 100, '2019-02-07 06:43:40'),
(15, 1, NULL, 1, 100, '2019-02-07 06:43:44'),
(16, 1, 1, NULL, 100, '2019-02-07 07:24:37'),
(17, 1, NULL, 1, 100, '2019-02-07 07:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `teller`
--

CREATE TABLE `teller` (
  `id` int(11) NOT NULL,
  `cms_users_id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `ktp` varchar(45) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_va` varchar(45) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teller`
--

INSERT INTO `teller` (`id`, `cms_users_id`, `nama`, `ktp`, `alamat`, `nomor_va`, `saldo`) VALUES
(1, 4, 'Teller Satu', NULL, NULL, '123 456 789 123', 119990);

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `teller_id` int(11) DEFAULT NULL,
  `agen_id` int(11) DEFAULT NULL,
  `master_id` int(11) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `approve` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topup`
--

INSERT INTO `topup` (`id`, `member_id`, `teller_id`, `agen_id`, `master_id`, `nominal`, `bukti_pembayaran`, `tanggal`, `approve`) VALUES
(1, 1, NULL, NULL, 1, 120000, 'uploads/1/2019-01/1.jpg', '2019-01-25 05:00:00', 1),
(2, NULL, NULL, 1, 1, 10000, 'uploads/1/2019-01/150254_132578940134303_3025972_n.jpg', '2019-01-25 05:00:00', 1),
(3, 1, NULL, NULL, 1, 10000, 'uploads/1/2019-01/setting.png', '2019-01-25 20:23:52', 1),
(4, 1, NULL, NULL, NULL, 10000, 'uploads/0/2019-01/32c0bcdf54bb0c402320aff9a7beb2a4.jpg', '2019-01-25 20:39:24', 1),
(6, 1, NULL, NULL, NULL, 20000, 'uploads/5/2019-01/49798.jpg', '2019-01-27 16:24:29', 0),
(7, NULL, NULL, 1, 1, 10000, 'uploads/3/2019-01/3861.jpg', '2019-01-27 16:29:18', 1),
(8, NULL, 1, NULL, NULL, 10000, 'uploads/4/2019-01/81202.jpg', '2019-01-27 16:31:37', 0),
(9, 1, NULL, NULL, NULL, 50000, 'uploads/0/2019-01/221a11780ffc53a31146f446924147c3.png', '2019-01-28 04:28:27', 0),
(10, NULL, NULL, 1, 1, 50000, 'uploads/0/2019-01/ce7b1dbc01334e05c4648743d6cf0e98.jpg', '2019-01-28 17:08:01', 2),
(11, 1, NULL, NULL, NULL, 111111, 'uploads/0/2019-01/6131c1b2ce370abe9094c630679dd1d3.jpg', '2019-01-29 18:17:56', 1),
(12, 1, NULL, NULL, NULL, 10000, 'uploads/0/2019-01/747ec37d6cbbc8d09c8dd9e0ed5ba160.jpg', '2019-01-30 16:39:14', 0),
(13, NULL, 1, NULL, NULL, 2000, 'uploads/0/2019-01/5690b23c9e1605548df8726e981325f0.jpeg', '2019-01-30 20:36:45', 0),
(14, NULL, NULL, 1, NULL, 10000, 'uploads/0/2019-02/b6872dc0859ed49b720ea5a5259fb1d8.jpg', '2019-02-01 12:03:11', 0),
(15, 1, NULL, 1, NULL, 10000, 'uploads/0/2019-02/9798445cb963965dc9cc5ca0c79b48bc.jpg', '2019-02-01 12:05:41', 0),
(16, 1, 1, NULL, NULL, 50000, 'uploads/0/2019-02/dfa5df235592170342c4ed7d7ee29f18.jpg', '2019-02-01 20:17:48', 0),
(17, 1, NULL, NULL, NULL, 50000, 'uploads/0/2019-02/04b552d7671ed85351143f0d10661d6b.jpg', '2019-02-04 14:40:54', 0),
(18, 2, 1, NULL, NULL, 50000, 'uploads/0/2019-02/26ac8cec167d5011a0c6dd5b0c06b35e.jpg', '2019-02-04 14:48:47', 0),
(19, 2, 1, NULL, NULL, 20000, 'uploads/0/2019-02/7ab48d6b9bdd91eda48d6a2e92d6fb1e.jpg', '2019-02-04 14:49:07', 0),
(20, 1, NULL, NULL, NULL, 100, 'uploads/5/2019-02/drawing1.png', '2019-02-06 21:22:14', 0),
(21, 1, NULL, NULL, NULL, 100, 'uploads/5/2019-02/drawing1.png', '2019-02-06 21:29:10', 0),
(22, 1, NULL, NULL, NULL, 100, 'uploads/5/2019-02/drawing1.png', '2019-02-06 21:50:47', 0),
(23, NULL, NULL, 1, NULL, 100, 'uploads/3/2019-02/drawing1.png', '2019-02-06 22:40:52', 0),
(24, 1, NULL, NULL, NULL, 100, 'uploads/5/2019-02/drawing1.png', '2019-02-07 19:15:10', 0),
(25, 1, NULL, NULL, NULL, 100, 'uploads/5/2019-02/drawing1.png', '2019-02-07 19:24:46', 0),
(26, NULL, NULL, 1, NULL, 100, 'uploads/3/2019-02/drawing1.png', '2019-02-07 20:47:38', 0),
(27, NULL, 1, NULL, NULL, 100, 'uploads/4/2019-02/drawing1.png', '2019-02-07 21:15:32', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agen`
--
ALTER TABLE `agen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pembayaran_agen`
--
ALTER TABLE `detail_pembayaran_agen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_transaksi_agen_tagihan_agen1_idx` (`tagihan_agen_id`),
  ADD KEY `fk_detail_transaksi_agen_transaksi_agen1_idx` (`pembayaran_agen_id`);

--
-- Indexes for table `detail_pembayaran_member`
--
ALTER TABLE `detail_pembayaran_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_transaksi_member_tagihan_member1_idx` (`tagihan_member_id`),
  ADD KEY `fk_detail_transaksi_member_transaksi_member1_idx` (`pembayaran_member_id`);

--
-- Indexes for table `detail_pembayaran_teller`
--
ALTER TABLE `detail_pembayaran_teller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_transaksi_teller_transaksi_teller1_idx` (`pembayaran_teller_id`),
  ADD KEY `fk_detail_transaksi_teller_tagihan_teller1_idx` (`tagihan_teller_id`);

--
-- Indexes for table `kategori_tagihan_agen`
--
ALTER TABLE `kategori_tagihan_agen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_tagihan_member`
--
ALTER TABLE `kategori_tagihan_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_tagihan_teller`
--
ALTER TABLE `kategori_tagihan_teller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_agen`
--
ALTER TABLE `pembayaran_agen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_transaksi_UNIQUE` (`nomor_pembayaran`),
  ADD KEY `fk_transaksi_agen_teller1_idx` (`teller_id`);

--
-- Indexes for table `pembayaran_member`
--
ALTER TABLE `pembayaran_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_transaksi_UNIQUE` (`nomor_pembayaran`),
  ADD KEY `fk_transaksi_member_agen1_idx` (`agen_id`),
  ADD KEY `fk_pembayaran_member_teller1_idx` (`teller_id`);

--
-- Indexes for table `pembayaran_teller`
--
ALTER TABLE `pembayaran_teller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_transaksi_UNIQUE` (`nomor_pembayaran`),
  ADD KEY `fk_transaksi_teller_master1_idx` (`master_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjaman_member`
--
ALTER TABLE `pinjaman_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagihan_agen`
--
ALTER TABLE `tagihan_agen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_UNIQUE` (`nomor`),
  ADD KEY `fk_tagihan_agen_agen1_idx` (`agen_id`),
  ADD KEY `fk_tagihan_agen_kategori_tagihan_agen1_idx` (`kategori_tagihan_agen_id`),
  ADD KEY `fk_tagihan_agen_pembayaran_member1_idx` (`pembayaran_member_id`);

--
-- Indexes for table `tagihan_member`
--
ALTER TABLE `tagihan_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_UNIQUE` (`nomor`),
  ADD KEY `fk_tagihan_member_member_idx` (`member_id`),
  ADD KEY `fk_tagihan_member_kategori_tagihan_member1_idx` (`kategori_tagihan_member_id`);

--
-- Indexes for table `tagihan_teller`
--
ALTER TABLE `tagihan_teller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_UNIQUE` (`nomor`),
  ADD KEY `fk_tagihan_teller_teller1_idx` (`teller_id`),
  ADD KEY `fk_tagihan_teller_kategori_tagihan_teller1_idx` (`kategori_tagihan_teller_id`),
  ADD KEY `fk_tagihan_teller_pembayaran_agen1_idx` (`pembayaran_agen_id`),
  ADD KEY `fk_tagihan_teller_pembayaran_member1_idx` (`pembayaran_member_id`);

--
-- Indexes for table `tarik_tabungan`
--
ALTER TABLE `tarik_tabungan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teller`
--
ALTER TABLE `teller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_topup_member1_idx` (`member_id`),
  ADD KEY `fk_topup_teller1_idx` (`teller_id`),
  ADD KEY `fk_topup_agen1_idx` (`agen_id`),
  ADD KEY `fk_topup_master1_idx` (`master_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agen`
--
ALTER TABLE `agen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detail_pembayaran_agen`
--
ALTER TABLE `detail_pembayaran_agen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `detail_pembayaran_member`
--
ALTER TABLE `detail_pembayaran_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `detail_pembayaran_teller`
--
ALTER TABLE `detail_pembayaran_teller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_tagihan_agen`
--
ALTER TABLE `kategori_tagihan_agen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_tagihan_member`
--
ALTER TABLE `kategori_tagihan_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_tagihan_teller`
--
ALTER TABLE `kategori_tagihan_teller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pembayaran_agen`
--
ALTER TABLE `pembayaran_agen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pembayaran_member`
--
ALTER TABLE `pembayaran_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `pembayaran_teller`
--
ALTER TABLE `pembayaran_teller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pinjaman_member`
--
ALTER TABLE `pinjaman_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tagihan_agen`
--
ALTER TABLE `tagihan_agen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tagihan_member`
--
ALTER TABLE `tagihan_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tagihan_teller`
--
ALTER TABLE `tagihan_teller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tarik_tabungan`
--
ALTER TABLE `tarik_tabungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teller`
--
ALTER TABLE `teller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pembayaran_agen`
--
ALTER TABLE `detail_pembayaran_agen`
  ADD CONSTRAINT `fk_detail_transaksi_agen_tagihan_agen1` FOREIGN KEY (`tagihan_agen_id`) REFERENCES `tagihan_agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_transaksi_agen_transaksi_agen1` FOREIGN KEY (`pembayaran_agen_id`) REFERENCES `pembayaran_agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detail_pembayaran_member`
--
ALTER TABLE `detail_pembayaran_member`
  ADD CONSTRAINT `fk_detail_transaksi_member_tagihan_member1` FOREIGN KEY (`tagihan_member_id`) REFERENCES `tagihan_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_transaksi_member_transaksi_member1` FOREIGN KEY (`pembayaran_member_id`) REFERENCES `pembayaran_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detail_pembayaran_teller`
--
ALTER TABLE `detail_pembayaran_teller`
  ADD CONSTRAINT `fk_detail_transaksi_teller_tagihan_teller1` FOREIGN KEY (`tagihan_teller_id`) REFERENCES `tagihan_teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detail_transaksi_teller_transaksi_teller1` FOREIGN KEY (`pembayaran_teller_id`) REFERENCES `pembayaran_teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembayaran_agen`
--
ALTER TABLE `pembayaran_agen`
  ADD CONSTRAINT `fk_transaksi_agen_teller1` FOREIGN KEY (`teller_id`) REFERENCES `teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembayaran_member`
--
ALTER TABLE `pembayaran_member`
  ADD CONSTRAINT `fk_pembayaran_member_teller1` FOREIGN KEY (`teller_id`) REFERENCES `teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transaksi_member_agen1` FOREIGN KEY (`agen_id`) REFERENCES `agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembayaran_teller`
--
ALTER TABLE `pembayaran_teller`
  ADD CONSTRAINT `fk_transaksi_teller_master1` FOREIGN KEY (`master_id`) REFERENCES `master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tagihan_agen`
--
ALTER TABLE `tagihan_agen`
  ADD CONSTRAINT `fk_tagihan_agen_agen1` FOREIGN KEY (`agen_id`) REFERENCES `agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tagihan_agen_kategori_tagihan_agen1` FOREIGN KEY (`kategori_tagihan_agen_id`) REFERENCES `kategori_tagihan_agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tagihan_agen_pembayaran_member1` FOREIGN KEY (`pembayaran_member_id`) REFERENCES `pembayaran_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tagihan_member`
--
ALTER TABLE `tagihan_member`
  ADD CONSTRAINT `fk_tagihan_member_kategori_tagihan_member1` FOREIGN KEY (`kategori_tagihan_member_id`) REFERENCES `kategori_tagihan_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tagihan_member_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tagihan_teller`
--
ALTER TABLE `tagihan_teller`
  ADD CONSTRAINT `fk_tagihan_teller_kategori_tagihan_teller1` FOREIGN KEY (`kategori_tagihan_teller_id`) REFERENCES `kategori_tagihan_teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tagihan_teller_pembayaran_agen1` FOREIGN KEY (`pembayaran_agen_id`) REFERENCES `pembayaran_agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tagihan_teller_pembayaran_member1` FOREIGN KEY (`pembayaran_member_id`) REFERENCES `pembayaran_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tagihan_teller_teller1` FOREIGN KEY (`teller_id`) REFERENCES `teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `topup`
--
ALTER TABLE `topup`
  ADD CONSTRAINT `fk_topup_agen1` FOREIGN KEY (`agen_id`) REFERENCES `agen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_topup_master1` FOREIGN KEY (`master_id`) REFERENCES `master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_topup_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_topup_teller1` FOREIGN KEY (`teller_id`) REFERENCES `teller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
