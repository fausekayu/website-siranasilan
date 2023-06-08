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
-- Table structure for table `sortir`
--

CREATE TABLE `sortir` (
  `id_petani` int(11) NOT NULL,
  `id_pemeriksaan` int(11) DEFAULT NULL,
  `id_sortir` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kerusakan` varchar(255) NOT NULL,
  `tanggal_pergantian` varchar(255) NOT NULL,
  `jenis_pergantian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sortir`
--

INSERT INTO `sortir` (`id_petani`, `id_pemeriksaan`, `id_sortir`, `jenis`, `nama`, `kerusakan`, `tanggal_pergantian`, `jenis_pergantian`) VALUES
(2, 7, 101, 'buah', 'rambutan', 'tidak_ada', 'tidak_perlu', 'tidak_perlu'),
(9, 5, 202, 'sayur', 'seledri', 'beberapa_ada_yang_kering', '14-03-2023', 'penyiraman_dengan_air_secara_instensif'),
(8, 8, 303, 'sayur', 'pakcoy', 'tidak_ada', 'tidak_perlu', 'tidak_perlu'),
(10, 10, 404, 'buah', 'melon', 'tidak_ada', 'tidak_perlu', 'tidak_perlu'),
(7, 6, 505, 'buah', 'pisang', 'beberapa_ada_yang_lubang_kecil', '18-03-2023', 'perlu_disortir'),
(8, 4, 606, 'sayur', 'terong', 'tidak_ada', 'tidak_perlu', 'tidak_perlu'),
(7, 11, 707, 'buah', 'naga', 'ada_yang_sobek_dikit', '2225-03-2023', 'yang_sobek_dipisahkan'),
(9, 6, 808, 'buah', 'pisang', 'tidak_ada', 'tidak_perlu', 'tidak_perlu'),
(1, 1, 809, 'buah', 'naga', 'tidak ada', 'tidak perlu', 'tidak perlu'),
(1, 1, 810, 'buah', 'naga', 'tidak ada', 'tidak perlu', 'tidak perlu'),
(1, 1, 811, 'buah', 'naga', 'tidak ada', 'tidak perlu', 'tidak perlu'),
(1, 1, 812, 'buah', 'naga', 'tidak ada', 'tidak perlu', 'tidak perlu'),
(1, 1, 813, 'buah', 'naga', 'tidak ada', 'tidak perlu', 'tidak perlu'),
(1, 1, 814, 'buah', 'naga', 'tidak ada', 'tidak perlu', 'tidak perlu'),
(4, 6, 815, 'gqweh4lrti0ogfd', 'hhhhhhhh', 'daun kering', '20-06-2023', 'ssv bsvags'),
(1, 2, 816, 'gqweh4lrti0ogfd', 'rambutan', 'daun kering', 'sgsgsfewew', 'ssv bsvags'),
(1, 2, 817, 'gqweh4lrti0ogfd', 'rambutan', 'daun kering', 'sgsgsfewew', 'ssv bsvags'),
(1, 2, 818, 'gqweh4lrti0ogfd', 'rambutan', 'daun kering', 'sgsgsfewew', 'ssv bsvags'),
(1, 2, 819, 'gqweh4lrti0ogfd', 'rambutan', 'daun kering', 'sgsgsfewew', 'ssv bsvags');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sortir`
--
ALTER TABLE `sortir`
  ADD PRIMARY KEY (`id_sortir`),
  ADD KEY `fk_sortir_relation_pekerja` (`id_petani`),
  ADD KEY `fk_sortir_relation_perkembangan_hasil_pertanian` (`id_pemeriksaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sortir`
--
ALTER TABLE `sortir`
  MODIFY `id_sortir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sortir`
--
ALTER TABLE `sortir`
  ADD CONSTRAINT `fk_sortir_relation_pekerja` FOREIGN KEY (`id_petani`) REFERENCES `pekerja` (`id_petani`),
  ADD CONSTRAINT `fk_sortir_relation_perkembangan_hasil_pertanian` FOREIGN KEY (`id_pemeriksaan`) REFERENCES `perkembangan_hasil_pertanian` (`id_pemeriksaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
