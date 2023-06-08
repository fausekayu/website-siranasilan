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
-- Table structure for table `perkembangan_hasil_pertanian`
--

CREATE TABLE `perkembangan_hasil_pertanian` (
  `id_pemeriksaan` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `perkembangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `perkembangan_hasil_pertanian`
--

INSERT INTO `perkembangan_hasil_pertanian` (`id_pemeriksaan`, `jenis`, `nama`, `perkembangan`) VALUES
(1, 'buah', 'markisa', 'cukup_baik'),
(2, 'buah', 'apel', 'baik'),
(3, 'sayur', 'mentimun', 'baik'),
(4, 'sayur', 'terong', 'perlu_dirawat_instensif'),
(5, 'sayur', 'seledri', 'baik'),
(6, 'buah', 'pisang', 'cukup_baik'),
(7, 'buah', 'rambutan', 'perlu_diberi_pupuk'),
(8, 'sayur', 'pakcoy', 'baik'),
(9, 'buah', 'nanas', 'baik'),
(10, 'buah', 'melon', 'baik'),
(11, 'buah', 'naga', 'baik'),
(12, 'buah', 'rambutan', 'baik'),
(13, 'buah', 'rambutan', 'bacot'),
(14, 'hygyugugi', 'uhooyo', 'srest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `perkembangan_hasil_pertanian`
--
ALTER TABLE `perkembangan_hasil_pertanian`
  ADD PRIMARY KEY (`id_pemeriksaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `perkembangan_hasil_pertanian`
--
ALTER TABLE `perkembangan_hasil_pertanian`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
