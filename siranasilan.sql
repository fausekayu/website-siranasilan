-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 12:59 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `id_petani` int(11) NOT NULL,
  `nama_petani` varchar(255) NOT NULL,
  `posisi_jabatan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat_petani` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`id_petani`, `nama_petani`, `posisi_jabatan`, `jenis_kelamin`, `alamat_petani`) VALUES
(1, 'Ahmad_Udin', 'sortir', 'laki-laki', 'jl manggis'),
(2, 'Siti_Lestari', 'sortir_hasil', 'wanita', 'jl_markisa'),
(3, 'Burhanuddin', 'pembibitan', 'pria', 'jl_jeruk'),
(4, 'Saiful_Malik', 'pengawasan_pertumbuhan', 'pria', 'jl_markisa'),
(5, 'Hachrul_Amrin', 'pembibitan', 'pria', 'jl_rambutan'),
(6, 'Habibur', 'pembibitan', 'pria', 'jl_markisa'),
(7, 'Aminah', 'sortir_hasil', 'wanita', 'jl_jeruk'),
(8, 'Hajar', 'sortir_hasil', 'wanita', 'jl_markisa'),
(9, 'Toyib', 'sortir_hasil', 'pria', 'jl_rambutan'),
(10, 'Samsudin', 'sortir_hasil', 'pria', 'jl_jeruk'),
(11, 'ayam', 'sapi', 'kuda', 'domba'),
(12, 'arga', 'ketua kelas', 'perempuan', 'krian'),
(13, 'arga', 'presiden', 'perempuan', 'krian'),
(14, 'sarini', 'sapi', 'laki-laki', 'jl manggis'),
(15, 'ayam', 'sapi', 'laki-laki', 'kuda'),
(16, 'poco', 'tanam', 'laki-laki', 'rambutan'),
(17, 'wedf', 'wesdf', 'laki-laki', '3wed'),
(18, 'tgrdgdsg', 'erfgdbfdbd', 'laki-laki', 'tngdbfv'),
(21, 'bbbbbbb', 'kjdcoljdocjd', 'laki-laki', 'djhkdshf'),
(22, 'dygeuigf', 'eufyioeyfoe', 'laki-laki', 'fkieyofeo');

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
-- Indexes for table `daftar_buah`
--
ALTER TABLE `daftar_buah`
  ADD PRIMARY KEY (`id_buah`);

--
-- Indexes for table `daftar_sayur`
--
ALTER TABLE `daftar_sayur`
  ADD PRIMARY KEY (`id_sayur`);

--
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`id_petani`);

--
-- Indexes for table `perkembangan_hasil_pertanian`
--
ALTER TABLE `perkembangan_hasil_pertanian`
  ADD PRIMARY KEY (`id_pemeriksaan`);

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
-- AUTO_INCREMENT for table `daftar_buah`
--
ALTER TABLE `daftar_buah`
  MODIFY `id_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `daftar_sayur`
--
ALTER TABLE `daftar_sayur`
  MODIFY `id_sayur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id_petani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `perkembangan_hasil_pertanian`
--
ALTER TABLE `perkembangan_hasil_pertanian`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
