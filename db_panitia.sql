-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 07:29 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_panitia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `id_penilaian` int(11) NOT NULL,
  `rangking` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `rekomendasi_posisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_himp_kriteria`
--

CREATE TABLE `tb_himp_kriteria` (
  `id_himp` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai_kriteria` varchar(30) NOT NULL,
  `bobot` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `bobot` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria_posisi`
--

CREATE TABLE `tb_kriteria_posisi` (
  `id_kriteria_posisi` int(11) NOT NULL,
  `nama_sie` varchar(30) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `bobot` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftar`
--

CREATE TABLE `tb_pendaftar` (
  `id_pendaftar` int(11) NOT NULL,
  `nama_pendaftar` varchar(30) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nomer_hp` varchar(30) NOT NULL,
  `pengalaman` varchar(120) NOT NULL,
  `keahlian` varchar(120) NOT NULL,
  `motivasi` varchar(120) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `ipk` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `id_pewawancara` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_kriteria_posisi` int(11) NOT NULL,
  `id_himp` int(11) NOT NULL,
  `nilai_ipk` int(11) NOT NULL,
  `nilai_attitude` int(11) NOT NULL,
  `nilai_loyalitas` int(11) NOT NULL,
  `nilai_kerjasama` int(11) NOT NULL,
  `nilai_keahlian` int(11) NOT NULL,
  `nilai_pengalaman` int(11) NOT NULL,
  `nilai_motivasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pewawancara`
--

CREATE TABLE `tb_pewawancara` (
  `id_pewawancara` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_pewawancara` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pil_posisi`
--

CREATE TABLE `tb_pil_posisi` (
  `id_posisi` int(11) NOT NULL,
  `pilihan_posisi_1` varchar(30) NOT NULL,
  `pilhan_posisi_2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_pendaftar` (`id_pendaftar`),
  ADD KEY `id_penilaian` (`id_penilaian`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Indexes for table `tb_himp_kriteria`
--
ALTER TABLE `tb_himp_kriteria`
  ADD PRIMARY KEY (`id_himp`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tb_kriteria_posisi`
--
ALTER TABLE `tb_kriteria_posisi`
  ADD PRIMARY KEY (`id_kriteria_posisi`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD PRIMARY KEY (`id_pendaftar`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Indexes for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_pewawancara` (`id_pewawancara`),
  ADD KEY `id_pendaftar` (`id_pendaftar`),
  ADD KEY `id_himp` (`id_himp`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_kriteria_posisi` (`id_kriteria_posisi`);

--
-- Indexes for table `tb_pewawancara`
--
ALTER TABLE `tb_pewawancara`
  ADD PRIMARY KEY (`id_pewawancara`);

--
-- Indexes for table `tb_pil_posisi`
--
ALTER TABLE `tb_pil_posisi`
  ADD PRIMARY KEY (`id_posisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kriteria_posisi`
--
ALTER TABLE `tb_kriteria_posisi`
  MODIFY `id_kriteria_posisi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pewawancara`
--
ALTER TABLE `tb_pewawancara`
  MODIFY `id_pewawancara` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pil_posisi`
--
ALTER TABLE `tb_pil_posisi`
  MODIFY `id_posisi` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD CONSTRAINT `tb_hasil_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`),
  ADD CONSTRAINT `tb_hasil_ibfk_2` FOREIGN KEY (`id_penilaian`) REFERENCES `tb_penilaian` (`id_penilaian`),
  ADD CONSTRAINT `tb_hasil_ibfk_3` FOREIGN KEY (`id_posisi`) REFERENCES `tb_pil_posisi` (`id_posisi`);

--
-- Constraints for table `tb_himp_kriteria`
--
ALTER TABLE `tb_himp_kriteria`
  ADD CONSTRAINT `tb_himp_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `tb_kriteria` (`id_kriteria`);

--
-- Constraints for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD CONSTRAINT `tb_pendaftar_ibfk_1` FOREIGN KEY (`id_posisi`) REFERENCES `tb_pil_posisi` (`id_posisi`);

--
-- Constraints for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD CONSTRAINT `tb_penilaian_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`),
  ADD CONSTRAINT `tb_penilaian_ibfk_2` FOREIGN KEY (`id_pewawancara`) REFERENCES `tb_pewawancara` (`id_pewawancara`),
  ADD CONSTRAINT `tb_penilaian_ibfk_3` FOREIGN KEY (`id_himp`) REFERENCES `tb_himp_kriteria` (`id_himp`),
  ADD CONSTRAINT `tb_penilaian_ibfk_4` FOREIGN KEY (`id_kriteria_posisi`) REFERENCES `tb_kriteria_posisi` (`id_kriteria_posisi`),
  ADD CONSTRAINT `tb_penilaian_ibfk_5` FOREIGN KEY (`id_kriteria`) REFERENCES `tb_kriteria` (`id_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
