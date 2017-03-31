-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2016 at 03:57 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakrawala_log`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `TB_PAKET_UPDATE` (IN `ID_PAKET` VARCHAR(255), IN `TGL_TERIMA_PAKET` VARCHAR(255), IN `BULAN_TERIMA_PAKET` VARCHAR(255), IN `TAHUN_TERIMA_PAKET` VARCHAR(255), IN `TGL_KONEKSI_PAKET` VARCHAR(255), IN `BULAN_KONEKSI_PAKET` VARCHAR(255), IN `TAHUN_KONEKSI_PAKET` VARCHAR(255), IN `NAMA_PAKET` VARCHAR(255), IN `TLP1_PAKET` VARCHAR(255), IN `TLP2_PAKET` VARCHAR(255), IN `ALAMAT_PAKET` VARCHAR(255), IN `NAMA_PIC1` VARCHAR(255), IN `TLP1_PIC1` VARCHAR(255), IN `TLP2_PIC1` VARCHAR(255), IN `NAMA_PIC2` VARCHAR(255), IN `TLP1_PIC2` VARCHAR(255), IN `TLP2_PIC2` VARCHAR(255), IN `NAMA_PIC3` VARCHAR(255), IN `TLP1_PIC3` VARCHAR(255), IN `TLP2_PIC3` VARCHAR(255), IN `ID_TYPE` VARCHAR(255), IN `ID_JENIS` VARCHAR(255), IN `KEY_PAKET` VARCHAR(255))  BEGIN
	UPDATE TB_PAKET
SET TGL_TERIMA_PAKET = TGL_TERIMA_PAKET,
 BULAN_TERIMA_PAKET = BULAN_TERIMA_PAKET,
 TAHUN_TERIMA_PAKET = TAHUN_TERIMA_PAKET,
 TGL_KONEKSI_PAKET = TGL_KONEKSI_PAKET,
 BULAN_KONEKSI_PAKET = BULAN_KONEKSI_PAKET,
 TAHUN_KONEKSI_PAKET = TAHUN_KONEKSI_PAKET,
 NAMA_PAKET = NAMA_PAKET,
 TLP1_PAKET = TLP1_PAKET,
 TLP2_PAKET = TLP2_PAKET,
 ALAMAT_PAKET = ALAMAT_PAKET,
 NAMA_PIC1 = NAMA_PIC1,
 TLP1_PIC1 = TLP1_PIC1,
 TLP2_PIC1 = TLP2_PIC1,
 NAMA_PIC2 = NAMA_PIC2,
 TLP1_PIC2 = TLP1_PIC2,
 TLP2_PIC2 = TLP2_PIC2,
 NAMA_PIC3 = NAMA_PIC3,
 TLP1_PIC3 = TLP1_PIC3,
 TLP2_PIC3 = TLP2_PIC3,
 ID_TYPE = ID_TYPE,
 ID_JENIS = ID_JENIS,
 KEY_PAKET = KEY_PAKET
WHERE
	ID_PAKET = ID_PAKET;


END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_akses`
--

CREATE TABLE `tb_akses` (
  `ID_AKSES` varchar(255) NOT NULL,
  `NAMA_AKSES` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akses`
--

INSERT INTO `tb_akses` (`ID_AKSES`, `NAMA_AKSES`) VALUES
('1', 'ADMIN_CAKRAWALA'),
('2', 'ENGINERRING'),
('3', 'ADMIN_BANK_BCA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `ID_JENIS` varchar(255) NOT NULL,
  `NAMA_JENIS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`ID_JENIS`, `NAMA_JENIS`) VALUES
('0', 'SINGLE'),
('1', 'MULTI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `ID_LOG` varchar(255) NOT NULL,
  `TGL_LOG` varchar(255) DEFAULT NULL,
  `BULAN_LOG` varchar(255) DEFAULT NULL,
  `TAHUN_LOG` varchar(255) DEFAULT NULL,
  `JAM_LOG` varchar(255) DEFAULT NULL,
  `ID_PAKET` varchar(255) DEFAULT NULL,
  `STATUS_LOG` varchar(255) DEFAULT NULL,
  `PENERIMA_LOG` varchar(255) DEFAULT NULL,
  `KET_LOG` varchar(255) DEFAULT NULL,
  `PIC_LOG` varchar(255) DEFAULT NULL,
  `ID_USER_ADMIN` varchar(255) DEFAULT NULL,
  `ID_USER_LOG` varchar(255) DEFAULT NULL,
  `HAPUS_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT0_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT1_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT2_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT3_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT4_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT5_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT6_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT7_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT8_LOG` varchar(255) DEFAULT NULL,
  `SUPPORT9_LOG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_log`
--

INSERT INTO `tb_log` (`ID_LOG`, `TGL_LOG`, `BULAN_LOG`, `TAHUN_LOG`, `JAM_LOG`, `ID_PAKET`, `STATUS_LOG`, `PENERIMA_LOG`, `KET_LOG`, `PIC_LOG`, `ID_USER_ADMIN`, `ID_USER_LOG`, `HAPUS_LOG`, `SUPPORT0_LOG`, `SUPPORT1_LOG`, `SUPPORT2_LOG`, `SUPPORT3_LOG`, `SUPPORT4_LOG`, `SUPPORT5_LOG`, `SUPPORT6_LOG`, `SUPPORT7_LOG`, `SUPPORT8_LOG`, `SUPPORT9_LOG`) VALUES
('sch001', '14', '11', '2016', '01:59', '1234235', '3', '', '', 'PIC', 'xamr', 'user002', '0', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''),
('sch002', '14', '11', '2016', '07:00', '098123456', '4', '', '', 'kika', 'user001', 'user002', '0', '-', '-', 'x', 'x', '-', 'x', '-', 'x', '-', ''),
('sch003', '14', '11', '2016', '08:00', '098123456', '2', '', '', '', 'xamr', 'user002', '0', 'x', '-', '-', '-', 'x', '-', '-', '-', '-', ''),
('sch004', '14', '11', '2016', '08:00', 'CRPKAMILKO', '4', '', '', '', 'xamr', 'user003', '0', 'x', '-', 'x', 'x', 'x', 'x', '-', '-', '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `ID_PAKET` varchar(255) NOT NULL,
  `TGL_TERIMA_PAKET` varchar(255) DEFAULT NULL,
  `BULAN_TERIMA_PAKET` varchar(255) DEFAULT NULL,
  `TAHUN_TERIMA_PAKET` varchar(255) DEFAULT NULL,
  `TGL_KONEKSI_PAKET` varchar(255) DEFAULT NULL,
  `BULAN_KONEKSI_PAKET` varchar(255) DEFAULT NULL,
  `TAHUN_KONEKSI_PAKET` varchar(255) DEFAULT NULL,
  `NAMA_PAKET` varchar(255) DEFAULT NULL,
  `TLP1_PAKET` varchar(255) DEFAULT NULL,
  `TLP2_PAKET` varchar(255) DEFAULT NULL,
  `ALAMAT_PAKET` varchar(255) DEFAULT NULL,
  `NAMA_PIC1` varchar(255) DEFAULT NULL,
  `TLP1_PIC1` varchar(255) DEFAULT NULL,
  `TLP2_PIC1` varchar(255) DEFAULT NULL,
  `NAMA_PIC2` varchar(255) DEFAULT NULL,
  `TLP1_PIC2` varchar(255) DEFAULT NULL,
  `TLP2_PIC2` varchar(255) DEFAULT NULL,
  `NAMA_PIC3` varchar(255) DEFAULT NULL,
  `TLP1_PIC3` varchar(255) DEFAULT NULL,
  `TLP2_PIC3` varchar(255) DEFAULT NULL,
  `ID_TYPE` varchar(255) DEFAULT NULL,
  `ID_JENIS` varchar(255) DEFAULT NULL,
  `ID_STATUS` varchar(255) DEFAULT NULL,
  `ID_RETUR` varchar(255) DEFAULT NULL,
  `VISIT_PAKET` varchar(255) DEFAULT NULL,
  `KEY_PAKET` varchar(255) DEFAULT NULL,
  `HAPUS_PAKET` varchar(255) DEFAULT NULL,
  `KET_PAKET` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`ID_PAKET`, `TGL_TERIMA_PAKET`, `BULAN_TERIMA_PAKET`, `TAHUN_TERIMA_PAKET`, `TGL_KONEKSI_PAKET`, `BULAN_KONEKSI_PAKET`, `TAHUN_KONEKSI_PAKET`, `NAMA_PAKET`, `TLP1_PAKET`, `TLP2_PAKET`, `ALAMAT_PAKET`, `NAMA_PIC1`, `TLP1_PIC1`, `TLP2_PIC1`, `NAMA_PIC2`, `TLP1_PIC2`, `TLP2_PIC2`, `NAMA_PIC3`, `TLP1_PIC3`, `TLP2_PIC3`, `ID_TYPE`, `ID_JENIS`, `ID_STATUS`, `ID_RETUR`, `VISIT_PAKET`, `KEY_PAKET`, `HAPUS_PAKET`, `KET_PAKET`) VALUES
('3674521', '15', '11', '2016', '16', '12', '2016', 'pt daya', '0213456782', '', 'cermai karang', '', '', '', '', '', '', '', '', '', '1', '1', '0', '3', '0', '4', '0', 'tidak bisa'),
('9123456', '16', '11', '2016', '17', '11', '2016', 'pt abc', '0218897236', '', 'dewi sartika', '', '', '', '', '', '', '', '', '', '1', '1', '0', '3', '0', '2', '0', ''),
('CRPKAMILKO', '12', '12', '2016', '11', '11', '2016', 'SEMAR SUKSES PT', '21132012', 'x', 'GEDUNG PLAZA MUTIARA LT 16 JL LINGKAR MEGA KUNINGAN KAV E1-2 JAKARTA', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '2', '0', '1', '0', '0', ''),
('CRPMILKOBI', '12', '12', '2016', '11', '11', '2016', 'PT INTER ANEKA LESTARI', '21132012', 'x', 'JL. YOS SUDARSO KP RAWABAMBAN, DS.JURUMUDI BARU, KEC BENDA TANGERANG (PORIS INDAH) GANG PABRIK SARIMI', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBCCENTSAR', '12', '12', '2016', '11', '11', '2016', 'PT SCREENPLAY PRODUKSI', '21132012', 'x', 'SCTV TWR LT. 11 SENAYAN CITY JL. ASIA AFRIKA LOT. 19 JAKARTA 10270 (IBU ANEKE)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPADGRAMA', '12', '12', '2016', '11', '11', '2016', 'PRAMBANAN KENCANA PT', '21132012', 'x', 'JL TANAH ABANG 2 NO 36 (DKT PASPAMPRES)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPADHISAR', '12', '12', '2016', '11', '11', '2016', 'PT ULTRA PRIMA ABADI', '21132012', 'x', 'JL. DAAN MOGOT KM 16 // OFF : GD OT LT.8 JL.LINGKAR LUAR BARAT AKV 35-36 CENGKARENG', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPADICARA', '12', '12', '2016', '11', '11', '2016', 'PT SURYA MADISTRINDO', '21132012', 'x', 'JL. JEND AHMAD YANI NO.79 CEMPAKA PUTIH GD GUDANG GARAM YG BARU', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPADINUSA', '12', '12', '2016', '11', '11', '2016', 'PT YAMAHA MOTOR NUANSA INDONES', '21132012', 'x', 'JL KRT RADJIMAN WIDYODININGRAT, JAKARTA TIMUR (RUMAHNYA NINA)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPADITSAN', '12', '12', '2016', '11', '11', '2016', 'PT OLYMPINDO MULTI FINANCE', '21132012', 'x', 'JL. PECENONGAN NO. 45 LT.4', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPAKSIPRI', '12', '12', '2016', '11', '11', '2016', 'SUMBER TRIJAYA LESTARI P', '21132012', 'x', 'JL MH THAMRIN NO 9 CIKOKOL GEDUNG B TANGERANG (UP. BAPAK LEO ADRIAN)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPALOMNUS', '12', '12', '2016', '11', '11', '2016', 'SETIA UTAMA TELESINDO PT', '21132012', 'x', 'TOWER TELESINDO SHOP JL GAJAH MADA RAYA NO 27 A JAKARTA PUSAT', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPARLIAHK', '12', '12', '2016', '11', '11', '2016', 'KEKAL LANCAR SENTOSA PT', '21132012', 'x', 'JL LONDO NO 36 TELUK GONG (0168/00530/KEKA)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPARSEMES', '12', '12', '2016', '11', '11', '2016', 'M ADITYA MULIA HANANTO', '21132012', 'x', 'PESONA KHAYANGAN CK 7 DEPOK', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPARZAPSI', '12', '12', '2016', '11', '11', '2016', 'PT. SCG PIPE AND PRECAST INDONESIA ', '21132012', 'x', 'GRAHA MOBISELL LT 3 JL BUNCIT RAYA NO 139', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPBAYUGRI', '12', '12', '2016', '11', '11', '2016', 'BUANA SAFIRA ABADI PT', '21132012', 'x', 'RUKO GRAND MALL BEKASI BLOK D NO 28 JL JEND SUDIRMAN NO 1 BEKASI (FLEXIBLE)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPBAYUSAN', '12', '12', '2016', '11', '11', '2016', 'BANGKIT CASSAVA MANDIRI', '21132012', 'x', 'GD PLAZA MUTIARA LT 16 JL LINGKAR MEGA KUNINGAN', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPBHUMAHA', '12', '12', '2016', '11', '11', '2016', 'PENITI VALASINDO PT', '21132012', 'x', 'JL KEMANG RAYA (RANCH MARKET, GOURNT KEMANG RESTO)(0372-00623-PENI)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPBRASILI', '12', '12', '2016', '11', '11', '2016', 'PT INTI SUMBER ABADI', '21132012', 'x', 'JL.PLUIT KARANG KARYA II BLK.A SELATAN KAV.8-10 KWS INDST PLT (KODE VA: 02614 NO BILL)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPBUKCOM1', '12', '12', '2016', '11', '11', '2016', 'INTERTECH WIJAYA SARANA', '21132012', 'x', 'JL WIJAYA 14 NO 11 KEBAYORAN BARU JAKARTA (SBRG SMPN 12)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPBUSAFBA', '12', '12', '2016', '11', '11', '2016', 'KENDY TANUJAYA', '21132012', 'x', 'JL RAYA KEMANG NO 388 RT 28 RW 08 PARUNG BOGOR 0095/00176/TANU (WAJIB)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCAFINAN ', '12', '12', '2016', '11', '11', '2016', 'FREDI BUDIARTO', '21132012', 'x', 'PERTOKOAN PULOMAS BLOK IX NO 4 JL PERINTIS KEMERDEKAAN', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCAKRIND', '12', '12', '2016', '11', '11', '2016', 'ALPINE LOGISTIK INDONESIA', '21132012', 'x', 'RUKAN KIRANA BOUTIQUE OFFICE BLOK B2 NO 7 JL KIRANA AVENUE KELAPA GADING', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCBNNUSA', '12', '12', '2016', '11', '11', '2016', 'ALPINE LOGISTIK INDONESIA', '21132012', 'x', 'RUKAN KIRANA BOUTIQUE OFFICE BLOK B2 NO 7 JL KIRANA AVENUE KELAPA GADING', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCINUCEM', '12', '12', '2016', '11', '11', '2016', 'PT KHAZANAH AGRO SUBUR', '21132012', 'x', 'MENARA BATAVIA LT 11 JL KH MAS MANSYUR KAV 126 JAKARTA', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCIPASQU', '12', '12', '2016', '11', '11', '2016', 'CONGCEPT ENGINEERS INDONE', '21132012', 'x', 'H TOWER LT 18 JL HR RASUNA SAID KAV 20', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCIRACRE', '12', '12', '2016', '11', '11', '2016', 'DARSANA ADIJAYA OPTIKA P', '21132012', 'x', 'RUKO ASIA TROPIS AT16 NO 51 HARAPAN INDAH BEKASI', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCODIGOM', '12', '12', '2016', '11', '11', '2016', 'DIAN LANGGENG ABADI PT', '21132012', 'x', 'JL RADEN SALEH NO 4 JAKARTA GD GINAR LT.3', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPCVEGC02', '12', '12', '2016', '11', '11', '2016', 'GITA AGUSTINA', '21132012', 'x', 'KOMP KODAM KEBUN JERUK JL DAHLIAN NO 93 RT:03/06 JAKARTA // MALL AMBASADOR', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPDAGUNGP', '12', '12', '2016', '11', '11', '2016', 'BUKALAPAK ', '21132012', 'x', 'PLAZA CITY VIEW LT 1 JL KEMANG TIMUR NO 22 (REK: 7310251512 AC: 7310/00090/BUKA)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPDATELJA', '12', '12', '2016', '11', '11', '2016', 'PT DEWATA MAJU MAKMUR', '21132012', 'x', 'GD INDOFOOD TOWER LT 9 JL JEND SUDIRMAN (7420/00091/DEWA)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPDELIANU', '12', '12', '2016', '11', '11', '2016', 'PT. BANGUN PRIMA DIMENSI', '21132012', 'x', 'JL.WARUNG JATI TIMUR NO. 27E PANCORAN (SAMPING RUKO MAKBULLAH/ PLANG FIND JOB)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPDRYMIXI', '12', '12', '2016', '11', '11', '2016', 'PT PRAKARSA SEMESTA ALAM', '21132012', 'x', 'JL. DARMAWANGSA X NO.86 KEB.BARU', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPECEOSIN', '12', '12', '2016', '11', '11', '2016', 'AMAK SUBANDI', '21132012', 'x', 'TELAGA MAS BLOK K7/09 RT:01/13 KEL HARAPAN BARU BEKASI', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPESAZAMR', '12', '12', '2016', '11', '11', '2016', 'NIPARINDO SARITAMA PT', '21132012', 'x', 'JL. SUNTER AGUNG C NO 44-45 JAKARTA', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPGELATIK', '12', '12', '2016', '11', '11', '2016', 'SUMBER CIPTA MULTINIAGA', '21132012', 'x', 'JL RAYA SUKABUMI KM 1,5 BOGOR (PT DJARUM)', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPGEMJANU', '12', '12', '2016', '11', '11', '2016', 'JALA ANUGERAH SEJATI PT', '21132012', 'x', 'JL CEMPAKA PUTIH TENGAH 26/65 CEMPAKA PUTIH TIMUR (7060304241) 7060/01008/JALA', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', ''),
('IBPGOJIRAI', '12', '12', '2016', '11', '11', '2016', 'RAHMA ARIA NUGRAHA CV', '21132012', 'x', 'GRAHA INDAH JL ANGGUR 3 B10/7 JAKA MULIA JATIASIH BEKASI', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', '1', '0', '0', '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_retur`
--

CREATE TABLE `tb_retur` (
  `ID_RETUR` varchar(255) NOT NULL,
  `NAMA_RETUR` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_retur`
--

INSERT INTO `tb_retur` (`ID_RETUR`, `NAMA_RETUR`) VALUES
('0', 'NO PROBLEM'),
('1', 'ON RETUR'),
('2', 'IN RETUR'),
('3', 'RETUR');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `ID_STATUS` varchar(255) NOT NULL,
  `NAMA_STATUS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`ID_STATUS`, `NAMA_STATUS`) VALUES
('0', 'NOT PROGRESS'),
('1', 'IN SCHEDULE'),
('2', 'PENDING'),
('3', 'RE SCHEDULE'),
('4', 'DONE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_type`
--

CREATE TABLE `tb_type` (
  `ID_TYPE` varchar(255) NOT NULL,
  `NAMA_TYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_type`
--

INSERT INTO `tb_type` (`ID_TYPE`, `NAMA_TYPE`) VALUES
('0', 'GOLD'),
('1', 'GOLD PAYROLL'),
('2', 'PLATINUM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `ID_USER` varchar(255) NOT NULL,
  `PASS_USER` varchar(255) DEFAULT NULL,
  `NAMA_USER` varchar(255) DEFAULT NULL,
  `ID_AKSES` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`ID_USER`, `PASS_USER`, `NAMA_USER`, `ID_AKSES`) VALUES
('user001', '1234', 'Eva Kristiani', '1'),
('user002', '1234', 'ANI', '1'),
('user003', '1234', 'Pratiwi Yuliastari', '2'),
('user004', '123', 'Sumantri', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_akses`
--
ALTER TABLE `tb_akses`
  ADD PRIMARY KEY (`ID_AKSES`);

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`ID_JENIS`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`ID_LOG`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`ID_PAKET`);

--
-- Indexes for table `tb_retur`
--
ALTER TABLE `tb_retur`
  ADD PRIMARY KEY (`ID_RETUR`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`ID_STATUS`);

--
-- Indexes for table `tb_type`
--
ALTER TABLE `tb_type`
  ADD PRIMARY KEY (`ID_TYPE`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`ID_USER`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
