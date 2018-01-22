-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2018 at 09:04 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_agus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_barang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` tinyint(3) unsigned NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_kategori`, `kd_barang`, `nama_barang`, `deskripsi`, `harga`) VALUES
(1, 1, 'ST1001', 'Stroller bayi', 'sadaksdjak', 0),
(2, 1, 'ST1002', 'sdfs', 'afrfe', 0),
(3, 1, 'ST1003', 'adasd', 'adasd', 0),
(4, 1, 'ST1004', 'adas', 'eqweqwe', 0),
(5, 1, 'ST1005', 'asdeffe', 'qeqweqwe', 0),
(6, 1, 'ST1006', 'asdeffe', 'qeqweqwe', 0),
(7, 3, 'CL3007', 'Celana Merah', 'adkasdksajd', 100000),
(8, 13, 'GL13008', 'Gelang Karet', 'adaskdakjd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gambar`
--

CREATE TABLE IF NOT EXISTS `tb_gambar` (
  `id_gambar` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` smallint(6) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_gambar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_gambar`
--

INSERT INTO `tb_gambar` (`id_gambar`, `id_barang`, `gambar`) VALUES
(1, 5, '2048-4-730x410.jpg'),
(2, 5, 'anger.jpg'),
(3, 5, 'asv.jpg'),
(4, 6, '2.JPG'),
(5, 6, '1.JPG'),
(6, 6, '3.JPG'),
(7, 7, 'awan.png'),
(8, 7, 'bahasa tubuh.jpg'),
(9, 8, '3277238_20130203121230.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kategori` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(200) NOT NULL,
  `kd_kategori` char(2) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `kd_kategori`) VALUES
(1, 'stroller', 'ST'),
(2, 'Baju', 'BJ'),
(3, 'Celana', 'CL'),
(4, 'Mainan', 'MA'),
(12, 'Kolor', 'KL'),
(13, 'Gelang', 'GL');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
