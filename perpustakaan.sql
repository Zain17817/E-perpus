-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 02:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `NIS` varchar(15) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `TTL` varchar(30) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `NIS`, `nama`, `TTL`, `tanggal_lahir`, `email`, `status`) VALUES
(1, '7001', 'Zaki  Mubarroq', 'Semarang', '19 Juli 2001', 'ahmad@email.com', 'Aktif'),
(2, '7002', 'Sinta Angraeni', 'Semarang', '15 Juli 2000', 'sinta@email.com', 'Aktif'),
(3, '7003', 'Nuhammad Lutfi', 'Kendal', '02 Agustus 1999', 'lutfi@email.com', 'Aktif'),
(4, '7004', 'Putri Khasanah', 'Yogyakarta', '08 Agustus 1999', 'khasanah@gmail.com', 'Aktif'),
(5, '8001', 'Yudha Prasetyo', 'Pemalang', '06 Januari 2000', 'yudha@email.com', 'Aktif'),
(6, '8002', 'Rani', 'Yogyakarta', '23 Oktober 1998', 'rani@email.com', 'Membutuhkan Perpanjangan'),
(7, '8003', 'Andi', 'Solo', '04 Februari 2000', 'andi@email.com', 'Membutuhkan Perpanjangan'),
(8, '8004', 'Zaenal', 'Bandung', '08 Mei 2001', 'zaenal@email.com', 'Memerlukan perpanjangan'),
(9, '9001', 'Hendra', 'Kendal', '20 Februari 2000', 'hendra@email.com', 'Bebas Perpustakaan'),
(10, '9002', 'Ulil Albab', 'Riau', '31 Agustus 2001', 'ulil@email.com', 'Bebas Perpustakaan'),
(18, '8201', 'Putri Khasanah', 'Yogyakarta', '08 Agustus 1999', 'khasanah@gmail.com', NULL),
(19, '9101', 'Wawan', 'Semarang', '09 Maret 2000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `ISBN`, `judul`, `pengarang`, `penerbit`) VALUES
(1, 2, '111001', 'Mahir Corel Draw X5 30 Hari', 'Andi Setiawan', 'Penerbit Andi'),
(2, 2, '111002', 'Mengoperasikan Window 10 Bagi Pemula', 'Herman', 'Penerbit Andi'),
(3, 2, '111003', 'Belajar Microsoft Office Word 2016', 'Rendi', 'Penerbit Andi'),
(4, 1, '221001', 'Dilan 1991', 'Pidi Baig', 'Pastel Book'),
(5, 1, '22002', 'Assalamualaikum Beijing', 'Asma Nadia', 'Noura Books'),
(6, 1, '22003', 'Ubur Ubur Lembur', 'Raditya Dika', 'Gagas Media'),
(7, 3, '332101', 'Teknologi Informasi Dan Komunikasi Kelas 7', 'Muhammad Lutfi', 'Kemenbud'),
(8, 3, '33002', 'Bahasa Indonesia Kelas 8', 'Anisa Khasanah', 'Kemenbud'),
(9, 3, '33003', 'Matematika kelas 9', 'Mukhlis', 'Kemenbud'),
(10, 5, '44001', 'Cerita Malin Kundang', 'Karno', 'Surya Citra');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL,
  `id_peminjaman` int(11) DEFAULT NULL,
  `tgl_peminjaman` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `id_peminjaman`, `tgl_peminjaman`) VALUES
(1, 1, '0000-00-00 00:00:00'),
(2, 3, '0000-00-00 00:00:00'),
(3, 5, '0000-00-00 00:00:00'),
(4, 8, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Novel'),
(2, 'Komputer'),
(3, 'Pelajaran'),
(4, 'Sastra'),
(5, 'Cerpen'),
(6, 'Ekonomi'),
(7, 'Olahraga'),
(8, 'Majalah');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `tgl_peminjaman` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `id_anggota`, `tgl_peminjaman`) VALUES
(1, 7, 4, '0000-00-00 00:00:00'),
(2, 7, 5, '0000-00-00 00:00:00'),
(3, 8, 8, '0000-00-00 00:00:00'),
(4, 9, 9, '0000-00-00 00:00:00'),
(5, 1, 10, '0000-00-00 00:00:00'),
(6, 2, 7, '0000-00-00 00:00:00'),
(7, 2, 4, '0000-00-00 00:00:00'),
(8, 4, 6, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kd_petugas` varchar(10) DEFAULT NULL,
  `nama_petugas` varchar(30) DEFAULT NULL,
  `bagian` varchar(25) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kd_petugas`, `nama_petugas`, `bagian`, `no_telepon`, `id_petugas`) VALUES
('P101', 'Nur farid', 'administrasi', '0829488584939', 1),
('P102', 'Karno Ilyas', 'administrasi', '0829488584939', 2),
('P103', 'Ahmad Riyanto', 'Pengelola buku', '0829488584939', 3),
('P104', 'Putri Khasanah', 'Pengelola buku', '0829488584939', 4),
('P105', 'Wawan', 'kebersihan', '0829488584939', 5),
('p106', 'Muhammad Ridwan', NULL, NULL, 16),
('p107', 'Toni', NULL, NULL, 17),
('p108', 'Yuni', 'Pengelola buku', NULL, 18),
('p109', 'Ali Mahfud', 'Keamanan', NULL, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `NIS` (`NIS`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD KEY `fk_buku_kategori` (`id_kategori`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`),
  ADD KEY `fk_denda_peminjaman` (`id_peminjaman`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `fk_peminjaman_buku` (`id_buku`),
  ADD KEY `fk_peminjaman_anggota` (`id_anggota`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `kd_petugas` (`kd_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `fk_denda_peminjaman` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_peminjaman_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
