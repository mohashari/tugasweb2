-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2016 at 12:26 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gunadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akses`
--

CREATE TABLE `tb_akses` (
  `id_akses` varchar(255) DEFAULT NULL,
  `nama_akses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akses`
--

INSERT INTO `tb_akses` (`id_akses`, `nama_akses`) VALUES
('1', 'admin'),
('2', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `harga_barang`) VALUES
('br0001', 'box a', '2050'),
('br0002', 'box b', '1900'),
('br0003', 'sampah', '3000'),
('br0004', 'semen', '5000'),
('br0005', 'swl', '8000'),
('br0006', 'koran', '13000'),
('br0007', 'kor', '21000'),
('br0008', 'majalah', '34000'),
('br0009', 'duplex', '55000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kendaraan`
--

CREATE TABLE `tb_kendaraan` (
  `id_kendaraan` varchar(255) DEFAULT NULL,
  `nama_kendaraan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kendaraan`
--

INSERT INTO `tb_kendaraan` (`id_kendaraan`, `nama_kendaraan`) VALUES
('kr0001', 'b 9309 tqa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lain`
--

CREATE TABLE `tb_lain` (
  `id_lain` varchar(255) DEFAULT NULL,
  `tgl_lain` varchar(255) DEFAULT NULL,
  `nama_lain` varchar(255) DEFAULT NULL,
  `nominal_lain` varchar(255) DEFAULT NULL,
  `keterangan_lain` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_supir`
--

CREATE TABLE `tb_supir` (
  `id_supir` varchar(255) DEFAULT NULL,
  `nama_supir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supir`
--

INSERT INTO `tb_supir` (`id_supir`, `nama_supir`) VALUES
('sp0001', 'hasan'),
('sp0002', 'darsono'),
('sp0003', 'sugeng'),
('sp0004', 'boan'),
('sp0005', 'kolili');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `saldo_supplier` varchar(255) DEFAULT NULL,
  `bon_supplier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama_supplier`, `saldo_supplier`, `bon_supplier`) VALUES
('sl0001', 'bambang', NULL, NULL),
('sl0002', 'kota', NULL, NULL),
('sl0003', 'teguh', NULL, NULL),
('sl0004', 'putri', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_timbangan`
--

CREATE TABLE `tb_timbangan` (
  `id_timbangan` varchar(255) DEFAULT NULL,
  `nama_timbangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_timbangan`
--

INSERT INTO `tb_timbangan` (`id_timbangan`, `nama_timbangan`) VALUES
('tb0001', 'rit 1'),
('tb0002', 'rit 2'),
('tb0003', 'rit 3'),
('tb0004', 'timbangan'),
('tb0005', 'manual'),
('tb0006', 'cabang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` varchar(255) DEFAULT NULL,
  `tgl_transaksi` varchar(255) DEFAULT NULL,
  `id_timbangan` varchar(255) DEFAULT NULL,
  `id_supir` varchar(255) DEFAULT NULL,
  `id_supplier` varchar(255) DEFAULT NULL,
  `id_kendaraan` varchar(255) DEFAULT NULL,
  `id_barang` varchar(255) DEFAULT NULL,
  `bruto_transaksi` varchar(255) DEFAULT NULL,
  `potongan_transaksi` varchar(255) DEFAULT NULL,
  `tambahan_transaksi` varchar(255) DEFAULT NULL,
  `harga_transaksi` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `saldo_supplier` varchar(255) DEFAULT NULL,
  `bon_supplier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `tgl_transaksi`, `id_timbangan`, `id_supir`, `id_supplier`, `id_kendaraan`, `id_barang`, `bruto_transaksi`, `potongan_transaksi`, `tambahan_transaksi`, `harga_transaksi`, `id_user`, `saldo_supplier`, `bon_supplier`) VALUES
('tr0001#xamr', '2016-12-22', 'tb0001', 'sp0004', 'sl0002', 'kr0001', 'br0001', '1000', '0', '0', '2050', 'xamr', NULL, NULL),
('tr0002#xamr', '2016-12-22', 'tb0002', 'sp0001', 'sl0004', 'kr0001', 'br0001', '1000', '1', '0', '2050', 'xamr', NULL, NULL),
('tr0003#xamr', '2016-12-22', 'tb0001', 'sp0005', 'sl0004', 'kr0001', 'br0002', '1000', '0', '0', '1900', 'xamr', NULL, NULL),
('tr0004#xamr', '2016-12-22', 'tb0002', 'sp0001', 'sl0001', 'kr0001', 'br0002', '1000', '1', '0', '1900', 'xamr', NULL, NULL),
('tr0005#xamr', '2016-12-22', 'tb0001', 'sp0001', 'sl0004', 'kr0001', 'br0001', '1000', '0', '0', '2050', 'xamr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `pass_user` varchar(255) DEFAULT NULL,
  `id_akses` varchar(255) DEFAULT NULL,
  `detail_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `pass_user`, `id_akses`, `detail_user`) VALUES
('us0001', 'admin', '123456', '1', 'Admin GPN'),
('us0002', 'user', '123', '2', 'User GPN');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
