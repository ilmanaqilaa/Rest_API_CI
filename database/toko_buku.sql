-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 03:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `biografi`
--

CREATE TABLE `biografi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biografi`
--

INSERT INTO `biografi` (`id`, `nama`, `harga`) VALUES
(1, 'Mimpi Sejuta Dolar', 96000),
(2, 'Soekarno Arsitek Bangsa', 50000),
(3, 'Rossi Sang Legenda', 148000),
(4, 'Warren Buffett: An Illustrated Biography', 70000),
(5, 'Nadiem Makarim', 59000),
(6, 'Fidel Castro: 60 Tahun Menentang Amerika', 40000),
(7, 'Pramoedya Ananta Toer: Biografi Singkat (1925-2006', 85000),
(8, 'Mandela: The Authorised Biography', 62900),
(9, 'Patimura', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `ensiklopedia`
--

CREATE TABLE `ensiklopedia` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ensiklopedia`
--

INSERT INTO `ensiklopedia` (`id`, `nama`, `harga`) VALUES
(1, 'Buku Ensiklopedia Sains', 265000),
(2, ' Buku Ensiklopedia Teknologi Komputer', 154000),
(3, 'Ensiklopedia Lengkap Preparat ', 395000),
(4, 'Buku Ensiklopedi Komunikasi', 215500),
(5, 'Ensiklopedi Mini Teknologi Informasi', 49000),
(6, 'ensiklopedi musik klasik', 37500),
(7, 'Ensiklopedi Penemuan Yang Mengubah Dunia', 54500),
(8, 'Buku Ensiklopedi Sastra Indonesia', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'tokbuk123', 1, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `novel`
--

CREATE TABLE `novel` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novel`
--

INSERT INTO `novel` (`id`, `nama`, `harga`) VALUES
(1, 'Mozaik-Mozaik Terindah', 59000),
(2, 'Ayah dan Sirkus Pohon', 69000),
(3, 'Buku Besar Peminum Kopi: Origi', 89000),
(4, 'Guru Aini', 99000),
(5, 'Orang-Orang Biasa: Original St', 89000),
(6, 'Sebelas Patriot', 39000),
(7, 'Maryamah Karpov', 89000),
(8, 'Laskar Pelangi: Edisi Original', 89000);

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id`, `nama`, `harga`) VALUES
(1, 'Siapa Orang Asli Palestina?', 58000),
(2, 'The Origin of Tyranny', 150000),
(4, 'Dunia Kuno Empat Benua', 188000),
(5, 'Sejarah Nusantara yang Disembunyikan', 70000),
(6, 'Sejarah Arab-Islam', 160000),
(7, 'Dari Panggung Sejarah Bangsa', 50000),
(8, 'Sejarah Seni Rupa Timur', 80000),
(9, 'Sejarah Pancasila', 40000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biografi`
--
ALTER TABLE `biografi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ensiklopedia`
--
ALTER TABLE `ensiklopedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biografi`
--
ALTER TABLE `biografi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ensiklopedia`
--
ALTER TABLE `ensiklopedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `novel`
--
ALTER TABLE `novel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
