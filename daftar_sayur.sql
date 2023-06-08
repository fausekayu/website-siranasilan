-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 05:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siranasilan`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_sayur`
--

CREATE TABLE `daftar_sayur` (
  `id_sayur` int(11) NOT NULL,
  `nama_sayur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `daftar_sayur`
--

INSERT INTO `daftar_sayur` (`id_sayur`, `nama_sayur`) VALUES
(10, 'aaaa'),
(20, 'terong'),
(30, 'mentimun'),
(40, 'tomat'),
(50, 'bayam'),
(60, 'kangkung'),
(70, 'pakcoy'),
(80, 'sawi'),
(90, 'selada'),
(100, 'seledri'),
(120, 'bawang_daun'),
(130, 'bawang_putih'),
(140, 'kemangi'),
(141, ''),
(142, 'wesdfcv '),
(143, 'kemangi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_sayur`
--
ALTER TABLE `daftar_sayur`
  ADD PRIMARY KEY (`id_sayur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_sayur`
--
ALTER TABLE `daftar_sayur`
  MODIFY `id_sayur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
