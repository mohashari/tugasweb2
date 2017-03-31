-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 31, 2017 at 10:50 PM
-- Server version: 5.5.52-0+deb8u1
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE IF NOT EXISTS `buku_tamu` (
`id_tamu` int(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
`kd_barang` int(6) NOT NULL,
  `nm_barang` varchar(100) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `harga` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nm_barang`, `jml`, `harga`) VALUES
(0, 'pensil', 12, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mhs`
--

CREATE TABLE IF NOT EXISTS `tbl_mhs` (
`npm` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `jrs` varchar(20) NOT NULL,
  `almt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nm_barang` varchar(100) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `harga` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `nm_barang`, `jml`, `harga`) VALUES
('brg0001', 'kapur', 9022222, 90909100);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `id_user` varchar(45) DEFAULT NULL,
  `pwd_user` varchar(45) DEFAULT NULL,
  `nama_user` varchar(45) DEFAULT NULL,
  `id_akses` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `pwd_user`, `nama_user`, `id_akses`) VALUES
('ashari', '123', 'ashari', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE IF NOT EXISTS `tb_mhs` (
  `nim` varchar(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jekel` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`nim`, `nama`, `jekel`, `alamat`) VALUES
('mhs0001', 'ashari', 'perempuan', 'bcikarang\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
 ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
 ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
 ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
 ADD PRIMARY KEY (`kd_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
MODIFY `id_tamu` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
MODIFY `kd_barang` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
MODIFY `npm` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
