-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 02:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siparkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktifitas`
--

CREATE TABLE `aktifitas` (
  `id` int(11) NOT NULL,
  `tgl` varchar(30) NOT NULL,
  `tgl2` varchar(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aktifitas`
--

INSERT INTO `aktifitas` (`id`, `tgl`, `tgl2`, `keterangan`) VALUES
(2, '2018-04-22 02:16:19', '2018-04-22', 'Administrator telah memasukkan mobil berjenis JKJJJ <br>dengan plat nomor GGGGGGGG'),
(7, '2018-04-22 02:17:04', '2018-04-22', 'Administrator mencatat bahwa mobil<br>dengan plat nomor GGGGGGGG <br>berada di ruang 100'),
(33, '2022-12-15 02:48:13', '2022-12-15', 'Administrator mencatat bahwa mobil<br>dengan plat nomor N 1337 T <br>berada di ruang 222'),
(34, '2022-12-15 04:00:04', '2022-12-15', 'Administrator mencatat bahwa mobil berjenis sedan <br>dengan plat nomor N 1337 T ini<br>sudah keluar dari tempat parkir'),
(35, '2022-12-15 04:01:50', '2022-12-15', 'Administrator mencatat bahwa mobil<br>dengan plat nomor N 1337 T <br>keluar dari ruangan'),
(36, '2022-12-15 04:02:00', '2022-12-15', 'Administrator telah memasukkan mobil berjenis sedan <br>dengan plat nomor N 1337 T'),
(37, '2022-12-15 04:05:44', '2022-12-15', 'Administrator mencatat bahwa mobil berjenis sedan <br>dengan plat nomor N 1337 T ini<br>sudah keluar dari tempat parkir'),
(38, '2022-12-15 04:05:44', '2022-12-15', 'Administrator mencatat bahwa mobil berjenis sedan <br>dengan plat nomor N 1337 T ini<br>sudah keluar dari tempat parkir'),
(39, '2022-12-15 08:20:40', '2022-12-15', 'Administrator telah memasukkan mobil berjenis motor <br>dengan plat nomor N 1222 T');

-- --------------------------------------------------------

--
-- Table structure for table `laporankeuangan`
--

CREATE TABLE `laporankeuangan` (
  `idtransaksi` int(11) NOT NULL,
  `no_plat` varchar(16) NOT NULL,
  `tgl_masuk` varchar(10) NOT NULL,
  `bulan` varchar(8) NOT NULL,
  `bayar` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporankeuangan`
--

INSERT INTO `laporankeuangan` (`idtransaksi`, `no_plat`, `tgl_masuk`, `bulan`, `bayar`) VALUES
(2, 'GGGGGGGG', '2018-04-22', '04-2018', 5000),
(11, 'N 1337 T', '2022-12-15', '12-2022', 5000),
(12, 'N 1337 T', '2022-12-15', '12-2022', 5000),
(13, 'N 1337 T', '2022-12-15', '12-2022', 5000),
(14, 'N 1222 T', '2022-12-15', '12-2022', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `mobilaktif`
--

CREATE TABLE `mobilaktif` (
  `idmobilaktif` int(11) NOT NULL,
  `plat_nomor` varchar(16) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `waktu_masuk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobilaktif`
--

INSERT INTO `mobilaktif` (`idmobilaktif`, `plat_nomor`, `jenis`, `waktu_masuk`) VALUES
(13, 'test', 'test', '2022-12-14 04:11:09'),
(18, 'N 1222 T', 'motor', '2022-12-15 08:20:40'),
(21, 'N 1337 T', 'sedan', '2022-12-20 19:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `parkir`
--

CREATE TABLE `parkir` (
  `idparkir` int(255) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `plat_nomor` varchar(16) NOT NULL,
  `posisi` varchar(10) NOT NULL,
  `waktu_masuk_parkir` varchar(30) NOT NULL,
  `waktu_keluar_parkir` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkir`
--

INSERT INTO `parkir` (`idparkir`, `ruang`, `plat_nomor`, `posisi`, `waktu_masuk_parkir`, `waktu_keluar_parkir`, `status`) VALUES
(1, '100', '', 'kanan', '2022-12-15 02:47:10', '', '1'),
(27, '999', '', 'kiri', '2022-12-15 02:00:18', '', '1'),
(28, '222', '', 'kanan', '2022-12-15 02:48:13', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbmobil`
--

CREATE TABLE `tbmobil` (
  `idmobil` int(11) NOT NULL,
  `plat_nomor` varchar(16) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `waktu_masuk` varchar(30) NOT NULL,
  `waktu_masuk_ruang` varchar(30) NOT NULL,
  `waktu_keluar_ruang` varchar(30) NOT NULL,
  `waktu_keluar` varchar(30) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmobil`
--

INSERT INTO `tbmobil` (`idmobil`, `plat_nomor`, `jenis`, `waktu_masuk`, `waktu_masuk_ruang`, `waktu_keluar_ruang`, `waktu_keluar`, `ruang`, `status`) VALUES
(2, 'GGGGGGGG', 'JKJJJ', '2018-04-22 02:16:19', '2022-12-14 05:20:09', '2022-12-14 05:20:38', '', '101', 'Keluar Parkir'),
(17, 'N 1337 T', 'sedan', '2022-12-15 04:02:00', '', '', '2022-12-20 19:55:54', '', 'Keluar'),
(18, 'N 1222 T', 'motor', '2022-12-15 08:20:40', '', '', '', '', 'Masuk Parkir'),
(19, 'N 1337 T', 'sedan', '2022-12-15 20:03:29', '', '', '2022-12-20 19:55:54', '', 'Keluar'),
(20, 'N 1337 T', 'sedan', '2022-12-20 19:55:55', '', '', '', '', 'Masuk Parkir');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `namalengkap` varchar(30) NOT NULL,
  `kelamin` varchar(12) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `namalengkap`, `kelamin`, `no_hp`, `shift`, `level`) VALUES
(1, 'admin', 'admin', 'Administrator', '', '', '', 'admin'),
(2, 'numan', 'numan', 'Numan', 'Laki-laki', '083832183826', 'Malam', 'kr'),
(6, 'ciciko', 'ciciko', 'Ciciko', 'Laki-laki', '089998876667', 'Pagi', 'kr'),
(7, 'adudu', 'adudu', 'Adudu', 'Laki-laki', '12345677889', 'Sore', 'kp1'),
(12, '', '', 'Riza', 'Laki-laki', '+6281359367699', 'Sore', 'kr'),
(14, 'welson', '123456', 'Welson Mario', 'Laki-laki', '081393456340', 'Pagi', 'kp1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktifitas`
--
ALTER TABLE `aktifitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporankeuangan`
--
ALTER TABLE `laporankeuangan`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indexes for table `mobilaktif`
--
ALTER TABLE `mobilaktif`
  ADD PRIMARY KEY (`idmobilaktif`);

--
-- Indexes for table `parkir`
--
ALTER TABLE `parkir`
  ADD PRIMARY KEY (`idparkir`);

--
-- Indexes for table `tbmobil`
--
ALTER TABLE `tbmobil`
  ADD PRIMARY KEY (`idmobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktifitas`
--
ALTER TABLE `aktifitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `laporankeuangan`
--
ALTER TABLE `laporankeuangan`
  MODIFY `idtransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mobilaktif`
--
ALTER TABLE `mobilaktif`
  MODIFY `idmobilaktif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `parkir`
--
ALTER TABLE `parkir`
  MODIFY `idparkir` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbmobil`
--
ALTER TABLE `tbmobil`
  MODIFY `idmobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
