-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sistempakar_printer
DROP DATABASE IF EXISTS `sistempakar_printer`;
CREATE DATABASE IF NOT EXISTS `sistempakar_printer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sistempakar_printer`;

-- Dumping structure for table sistempakar_printer.tabelgejala
DROP TABLE IF EXISTS `tabelgejala`;
CREATE TABLE IF NOT EXISTS `tabelgejala` (
  `KodeGejala` varchar(6) NOT NULL,
  `NamaGejala` varchar(50) NOT NULL,
  PRIMARY KEY (`KodeGejala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sistempakar_printer.tabelgejala: ~15 rows (approximately)
DELETE FROM `tabelgejala`;
INSERT INTO `tabelgejala` (`KodeGejala`, `NamaGejala`) VALUES
	('G0001', 'Printer Ink Jet'),
	('G0002', 'Printer Laser Jet'),
	('G0003', 'Printer Dot Matrix'),
	('G0004', 'Printer Bekerja tetapi tidak ada hasil cetakan di '),
	('G0005', 'Hasil cetakan printer tidak sempurna / bergaris'),
	('G0006', 'Printer gagal menarik kertas'),
	('G0007', 'Kertas pada printer macet'),
	('G0008', 'Cetakan kabur / tidak rata'),
	('G0009', 'Cetakan berbayang'),
	('G0010', 'Titik - titik hitam pada halaman'),
	('G0011', 'Garis melintang pada halaman'),
	('G0012', 'lampu error berkedap - kedip'),
	('G0013', 'Lampu feed dan eror masih menyala tanpa berkedip t'),
	('G0014', 'Printer tidak bisa mencetak sepenuhnya'),
	('G0015', 'Printer hanya mencetak satu kali');

-- Dumping structure for table sistempakar_printer.tabelkerusakan
DROP TABLE IF EXISTS `tabelkerusakan`;
CREATE TABLE IF NOT EXISTS `tabelkerusakan` (
  `KodeKerusakan` varchar(6) NOT NULL,
  `NamaKerusakan` varchar(30) NOT NULL,
  `Penyebab` varchar(200) NOT NULL,
  `Solusi` varchar(1000) NOT NULL,
  PRIMARY KEY (`KodeKerusakan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sistempakar_printer.tabelkerusakan: ~6 rows (approximately)
DELETE FROM `tabelkerusakan`;
INSERT INTO `tabelkerusakan` (`KodeKerusakan`, `NamaKerusakan`, `Penyebab`, `Solusi`) VALUES
	('K0001', 'Tinta Habis', 'Tinta pada cartridge sudah habis atau mat head kotor', 'Lepas cartridge dengan hati-hati untuk mengecek apakah tinta sudah habis atau belum. Setelah itu lakukan pembersihan pada mat headnya dengan menggunakan carian pembersih tinta'),
	('K0002', 'Kertas terlalu Tebal', 'Kertas yang dipasang ke printer terlalu banyak atau kertas lengket', 'Membatasi tebal tumpukan kertas sesuai dengan kapasitas yang didukung oleh printer. Sebelum dipasang pada paper try, sebaiknya kertas dikibas-kibaskan terlebih dahulu agar kertas tidak saling menempel'),
	('K0003', 'Toner Printer', 'Toner printer tidak merata terpasang', 'Menggoyang toner printer agar lebih merata dan dapat dipakai kembali namun tetap bersiap untuk mengisinya dengan yang baru'),
	('K0004', 'Drum', 'Drum kotor atau sudah berlubang', 'Usaplah drum dnegan kain halus untuk menghilangkan benda asing yang menempel atau dengan mengganti drum jika terdapat lubang kecil permukaan drum'),
	('K0005', 'Sensor Kertas', 'Sensor kertas rusak atau tidak terpasang dengan baik', 'Pastikan posisi kertas terpasang dengan baik, apabila sudah dilakukan tetapi lampu masih menyala kemungkinan sensor kertas printer rusak. Disarankan untuk mengganti sensor printer yang baru'),
	('K0006', 'Kabel Cutter', 'Kabel Cutter bermasalah', 'Coba lakukan pengecekan di kabel cutternya apakah ada yang putus atau tidak dan cek juga apakah sensor gerak masih bergunsi dengan baik atau tidak dan lakukanlah pembersihan sendor dengan menggunakan cairan pembersih printer');

-- Dumping structure for table sistempakar_printer.tabelpertanyaan
DROP TABLE IF EXISTS `tabelpertanyaan`;
CREATE TABLE IF NOT EXISTS `tabelpertanyaan` (
  `KodePertanyaan` varchar(6) NOT NULL,
  `Pertanyaan` varchar(100) NOT NULL,
  PRIMARY KEY (`KodePertanyaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sistempakar_printer.tabelpertanyaan: ~15 rows (approximately)
DELETE FROM `tabelpertanyaan`;
INSERT INTO `tabelpertanyaan` (`KodePertanyaan`, `Pertanyaan`) VALUES
	('P0001', 'Apakah Printer anda Printer Ink Jet?'),
	('P0002', 'Apakah Printer anda Printer Laser Jet?'),
	('P0003', 'Apakah Printer anda Printer Dot Matrix?'),
	('P0004', 'Apakah Printer tidak menghasilkan Cetakan di kertas?'),
	('P0005', 'Apakah hasil cetakan printer tidak sempurna/bergaris?'),
	('P0006', 'Apakah printer gagal menarik kertas?'),
	('P0007', 'Apakah kertas pada printer macet?'),
	('P0008', 'Apakah Hasil cetakan kabur/tidak rata?'),
	('P0009', 'Apakah hasil cetakan berbayang?'),
	('P0010', 'Apakah terdapat Titik Titik Hitam pada hasil Cetakan?'),
	('P0011', 'Apakah terdapat garis melintang pada Hasil Cetakan?'),
	('P0012', 'Apakah lampu error pada printer berkedap kedip?'),
	('P0013', 'Apakah lampu feed dan error pada printer masih menyala tanpa berkedip tetapi tidak dapat mencetak?'),
	('P0014', 'Apakah printer tidak dapat mencetak sepenuhnya?'),
	('P0015', 'Apakah printer hanya dapat mencetak sebanyak satu kali?');

-- Dumping structure for table sistempakar_printer.tabelrule
DROP TABLE IF EXISTS `tabelrule`;
CREATE TABLE IF NOT EXISTS `tabelrule` (
  `KodeRule` varchar(6) NOT NULL,
  `kodepertanyaan1` varchar(50) NOT NULL,
  `kodekerusakan` varchar(6) NOT NULL,
  PRIMARY KEY (`KodeRule`),
  KEY `FK_tabelrule_tabelkerusakan` (`kodekerusakan`),
  CONSTRAINT `FK_tabelrule_tabelkerusakan` FOREIGN KEY (`kodekerusakan`) REFERENCES `tabelkerusakan` (`KodeKerusakan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sistempakar_printer.tabelrule: ~6 rows (approximately)
DELETE FROM `tabelrule`;
INSERT INTO `tabelrule` (`KodeRule`, `kodepertanyaan1`, `kodekerusakan`) VALUES
	('R0001', 'P0001,P0004,P0005', 'K0001'),
	('R0002', 'P0001,P0006,P0007', 'K0002'),
	('R0003', 'P0002,P0008,P0009', 'K0003'),
	('R0004', 'P0002,P0010,P0011', 'K0004'),
	('R0005', 'P0003,P0012,P0013', 'K0005'),
	('R0006', 'P0003,P0014,P0015', 'K0006');

-- Dumping structure for table sistempakar_printer.tabeluser
DROP TABLE IF EXISTS `tabeluser`;
CREATE TABLE IF NOT EXISTS `tabeluser` (
  `IDUser` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`IDUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sistempakar_printer.tabeluser: ~2 rows (approximately)
DELETE FROM `tabeluser`;
INSERT INTO `tabeluser` (`IDUser`, `Username`, `Nama`, `No_Telp`, `Email`, `Alamat`, `Password`) VALUES
	(1, 'mario.chamdjoko', 'Mario Chamdjoko Jati Mulyo', '085155001711', 'mario.chamdjoko@mhs.itenas.ac.', 'Riung bandung', 'ngasal'),
	(2, 'mario.jati', 'MarChamdjok', '08811223344', 'chamdjokom@gmail.com', 'Riung bandung', 'ngasaljuga');
	
-- Dumping structure for table sistempakar_printer.tabelhistory
DROP TABLE IF EXISTS `tabelhistory`;
CREATE TABLE IF NOT EXISTS `tabelhistory` (
  `IDHistory` int(11) NOT NULL AUTO_INCREMENT,
  `IDUser` int(11) NOT NULL,
  `KodeKerusakan` varchar(6) NOT NULL,
  `Waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`IDHistory`),
  KEY `FK__tabeluser` (`IDUser`),
  KEY `FK_tabelhistory_tabelkerusakan` (`KodeKerusakan`),
  CONSTRAINT `FK__tabeluser` FOREIGN KEY (`IDUser`) REFERENCES `tabeluser` (`IDUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tabelhistory_tabelkerusakan` FOREIGN KEY (`KodeKerusakan`) REFERENCES `tabelkerusakan` (`KodeKerusakan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sistempakar_printer.tabelhistory: ~2 rows (approximately)
DELETE FROM `tabelhistory`;
INSERT INTO `tabelhistory` (`IDHistory`, `IDUser`, `KodeKerusakan`, `Waktu`) VALUES
	(1, 1, 'K0003', '2023-05-28 15:10:20'),
	(2, 2, 'K0006', '2023-05-28 15:58:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
