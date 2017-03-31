-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 27, 2016 at 01:18 PM
-- Server version: 5.5.52-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u1023789_gunadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akses`
--

CREATE TABLE IF NOT EXISTS `tb_akses` (
  `id_akses` varchar(255) DEFAULT NULL,
  `nama_akses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akses`
--

INSERT INTO `tb_akses` (`id_akses`, `nama_akses`) VALUES
('1', 'admin'),
('2', 'user'),
('3', 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
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

CREATE TABLE IF NOT EXISTS `tb_kendaraan` (
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

CREATE TABLE IF NOT EXISTS `tb_lain` (
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

CREATE TABLE IF NOT EXISTS `tb_supir` (
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

CREATE TABLE IF NOT EXISTS `tb_supplier` (
  `id_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama_supplier`) VALUES
('sl0001', 'bambang'),
('sl0002', 'kota'),
('sl0003', 'teguh'),
('sl0004', 'putri');

-- --------------------------------------------------------

--
-- Table structure for table `tb_timbangan`
--

CREATE TABLE IF NOT EXISTS `tb_timbangan` (
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

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
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
  `id_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `tgl_transaksi`, `id_timbangan`, `id_supir`, `id_supplier`, `id_kendaraan`, `id_barang`, `bruto_transaksi`, `potongan_transaksi`, `tambahan_transaksi`, `harga_transaksi`, `id_user`) VALUES
('tr0001#xamr', '2016-12-12', 'tb0001', 'sp0004', 'sl0001', 'kr0001', 'br0001', '10', '1', '0', '2050', 'xamr'),
('tr0002#xamr', '2016-12-12', 'tb0002', 'sp0004', 'sl0001', 'kr0001', 'br0001', '50', '1', '0', '2050', 'xamr'),
('tr0003#xamr', '2016-12-12', 'tb0003', 'sp0004', 'sl0001', 'kr0001', 'br0001', '99', '1', '0', '2050', 'xamr'),
('tr0004#xamr', '2016-12-12', 'tb0006', 'A', '-', '-', 'br0001', '75', '1', '0', '2050', 'xamr'),
('tr0005#xamr', '2016-12-12', 'tb0005', 'B', '-', '-', 'br0001', '55', '1', '0', '2050', 'xamr'),
('tr0006#xamr', '2016-12-12', 'tb0001', 'sp0004', 'sl0001', 'kr0001', 'br0001', '45', '1', '0', '2050', 'xamr'),
('tr0007#xamr', '2016-12-12', 'tb0001', 'sp0001', 'sl0002', 'kr0001', 'br0002', '100', '1', '0', '1900', 'xamr'),
('tr0008#xamr', '2016-12-12', 'tb0001', 'sp0004', 'sl0001', 'kr0001', 'br0009', '100', '1', '0', '55000', 'xamr'),
('tr0009#xamr', '2016-12-12', 'tb0002', 'sp0004', 'sl0002', 'kr0001', 'br0009', '10', '1', '0', '55000', 'xamr'),
('tr0010#xamr', '2016-12-12', 'tb0001', 'sp0005', 'sl0001', 'kr0001', 'br0009', '100', '2', '0', '55000', 'xamr'),
('tr0011#xamr', '2016-12-23', 'tb0001', 'sp0004', 'sl0001', 'kr0001', 'br0006', '500', '20', '100', '13000', 'xamr'),
('tr0012#xamr', '23-12-2016', 'tb0001', 'sp0002', 'sl0002', 'kr0001', 'br0002', '4520', '2', '2250', '1900', 'xamr');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `pass_user` varchar(255) DEFAULT NULL,
  `id_akses` varchar(255) DEFAULT NULL,
  `detail_user` varchar(255) DEFAULT NULL,
  `id_cabang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
