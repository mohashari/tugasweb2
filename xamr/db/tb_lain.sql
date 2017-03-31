/*
Navicat MariaDB Data Transfer

Source Server         : xa
Source Server Version : 100119
Source Host           : localhost:3306
Source Database       : gunadi

Target Server Type    : MariaDB
Target Server Version : 100119
File Encoding         : 65001

Date: 2017-02-19 00:04:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_lain
-- ----------------------------
DROP TABLE IF EXISTS `tb_sb`;
CREATE TABLE `tb_sb` (
  `id_sb` varchar(255) DEFAULT NULL,
  `tgl_sb` varchar(255) DEFAULT NULL,
  `nama_sb` varchar(255) DEFAULT NULL,
  `nominal_sb` varchar(255) DEFAULT NULL,
  `keterangan_sb` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
