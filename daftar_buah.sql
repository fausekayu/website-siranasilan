-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 05:31 AM
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
-- Table structure for table `daftar_buah`
--

CREATE TABLE `daftar_buah` (
  `id_buah` int(11) NOT NULL,
  `nama_buah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `daftar_buah`
--

INSERT INTO `daftar_buah` (`id_buah`, `nama_buah`) VALUES
(1, 'semanggi'),
(2, 'manggis'),
(3, 'rambutan'),
(4, 'alpukat'),
(5, 'sawo'),
(6, 'kedondong'),
(7, 'salak'),
(8, 'jambu_biji'),
(9, 'jeruk_nipis'),
(10, 'duku'),
(11, 'jeruk_bali'),
(12, 'kesemek'),
(13, 'jeruk_manis'),
(14, 'belimbing'),
(15, 'melon'),
(16, 'jambu_mente'),
(17, 'jambu_bol'),
(18, 'jambu_air'),
(19, 'mangga'),
(20, 'sirsak'),
(21, 'nangka'),
(22, 'pepaya'),
(23, 'pisang'),
(24, '[mengkudu]'),
(26, 'tin'),
(27, '[mengkudu]'),
(28, '[limau]'),
(29, 'naga'),
(30, 'mboh'),
(31, 'aaaaaaa'),
(32, 'jeruk_bali'),
(33, 'AYAM'),
(34, 'SAPI'),
(35, 'kuda'),
(36, 'ayamwdesfvc'),
(37, 'kedondong'),
(38, 'kedondong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_buah`
--
ALTER TABLE `daftar_buah`
  ADD PRIMARY KEY (`id_buah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_buah`
--
ALTER TABLE `daftar_buah`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
