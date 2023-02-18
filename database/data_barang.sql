-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 04:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_barang`
--

CREATE TABLE `table_barang` (
  `kd_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `kd_merek` varchar(7) NOT NULL,
  `kd_distributor` varchar(7) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `stok_barang` int(4) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_barang`
--

INSERT INTO `table_barang` (`kd_barang`, `nama_barang`, `kd_merek`, `kd_distributor`, `tanggal_masuk`, `harga_barang`, `stok_barang`, `gambar`, `keterangan`) VALUES
('BR001', 'Nutrisari', 'ME001', 'DS002', '2018-09-24', 1500, 38, '1537785469748.jpg', 'Tersedia'),
('BR002', 'Saus ABC', 'ME002', 'DS002', '2018-09-24', 500, 85, '1537761405396.jpg', 'Tersedia'),
('BR003', 'Indomie Goreng', 'ME003', 'DS002', '2018-09-24', 2500, 65, '1537764343384.jpeg', 'Tersedia'),
('BR004', 'Kecap', 'ME002', 'DS001', '2018-09-24', 500, 0, '1537788240156.png', 'Tersedia'),
('BR005', 'Nescafe', 'ME003', 'DS001', '2022-11-29', 5000, 30, '1669701296567.jpg', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `table_detailbarang`
--

CREATE TABLE `table_detailbarang` (
  `kd_barang` varchar(7) CHARACTER SET latin1 NOT NULL,
  `nama_barang` varchar(40) CHARACTER SET latin1 NOT NULL,
  `kd_merek` varchar(7) CHARACTER SET latin1 NOT NULL,
  `kd_distributor` varchar(7) CHARACTER SET latin1 NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `stok_barang` int(4) NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(200) CHARACTER SET latin1 NOT NULL,
  `merek` varchar(30) CHARACTER SET latin1 NOT NULL,
  `foto_merek` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_distributor` varchar(40) CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(13) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_detailbarang`
--

INSERT INTO `table_detailbarang` (`kd_barang`, `nama_barang`, `kd_merek`, `kd_distributor`, `tanggal_masuk`, `harga_barang`, `stok_barang`, `gambar`, `keterangan`, `merek`, `foto_merek`, `nama_distributor`, `no_telp`) VALUES
('BR004', 'Kecap', 'ME002', 'DS001', '2018-09-24', 500, 0, '1537788240156.png', 'Tersedia', 'ABC', '1537760002906.png', 'Cahyono', '081288819999'),
('BR005', 'Nescafe', 'ME003', 'DS001', '2022-11-29', 5000, 30, '1669701296567.jpg', 'Tersedia', 'Indofood', '1537761246445.jpg', 'Cahyono', '081288819999'),
('BR001', 'Nutrisari', 'ME001', 'DS002', '2018-09-24', 1500, 38, '1537785469748.jpg', 'Tersedia', 'Nutrifood', '1537759572977.jpg', 'Susanti', '083812991999'),
('BR002', 'Saus ABC', 'ME002', 'DS002', '2018-09-24', 500, 85, '1537761405396.jpg', 'Tersedia', 'ABC', '1537760002906.png', 'Susanti', '083812991999'),
('BR003', 'Indomie Goreng', 'ME003', 'DS002', '2018-09-24', 2500, 65, '1537764343384.jpeg', 'Tersedia', 'Indofood', '1537761246445.jpg', 'Susanti', '083812991999');

-- --------------------------------------------------------

--
-- Table structure for table `table_detailtransaksi`
--

CREATE TABLE `table_detailtransaksi` (
  `kd_pretransaksi` varchar(7) CHARACTER SET latin1 NOT NULL,
  `kd_transaksi` varchar(7) CHARACTER SET latin1 NOT NULL,
  `kd_barang` varchar(11) CHARACTER SET latin1 NOT NULL,
  `jumlah` int(4) NOT NULL,
  `sub_total` int(8) NOT NULL,
  `nama_barang` varchar(40) CHARACTER SET latin1 NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `jumlah_beli` int(4) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_detailtransaksi`
--

INSERT INTO `table_detailtransaksi` (`kd_pretransaksi`, `kd_transaksi`, `kd_barang`, `jumlah`, `sub_total`, `nama_barang`, `harga_barang`, `jumlah_beli`, `total_harga`, `tanggal_beli`) VALUES
('AN001', 'TR001', 'BR001', 2, 3000, 'Nutrisari', 1500, 8, 4500, '2018-09-25'),
('AN007', 'TR004', 'BR001', 9, 10500, 'Nutrisari', 1500, 9, 10500, '2019-03-16'),
('AN009', 'TR006', 'BR001', 1, 1500, 'Nutrisari', 1500, 1, 1500, '2022-12-04'),
('AN002', 'TR001', 'BR002', 6, 1500, 'Saus ABC', 500, 8, 4500, '2018-09-25'),
('AN004', 'TR002', 'BR002', 2, 1000, 'Saus ABC', 500, 4, 6000, '2018-09-25'),
('AN005', 'TR003', 'BR002', 2, 1000, 'Saus ABC', 500, 4, 6000, '2018-09-30'),
('AN008', 'TR005', 'BR002', 5, 2500, 'Saus ABC', 500, 5, 2500, '2019-03-16'),
('AN003', 'TR002', 'BR003', 2, 5000, 'Indomie Goreng', 2500, 4, 6000, '2018-09-25'),
('AN006', 'TR003', 'BR003', 2, 5000, 'Indomie Goreng', 2500, 4, 6000, '2018-09-30'),
('AN010', 'TR007', 'BR003', 1, 2500, 'Indomie Goreng', 2500, 1, 2500, '2022-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `table_distributor`
--

CREATE TABLE `table_distributor` (
  `kd_distributor` varchar(7) NOT NULL,
  `nama_distributor` varchar(40) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_distributor`
--

INSERT INTO `table_distributor` (`kd_distributor`, `nama_distributor`, `alamat`, `no_telp`) VALUES
('DS001', 'Cahyono', 'Tajur Bogor', '081288819999'),
('DS002', 'Susanti', 'Bogor', '083812991999');

-- --------------------------------------------------------

--
-- Table structure for table `table_merek`
--

CREATE TABLE `table_merek` (
  `kd_merek` varchar(7) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `foto_merek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_merek`
--

INSERT INTO `table_merek` (`kd_merek`, `merek`, `foto_merek`) VALUES
('ME001', 'Nutrifood', '1537759572977.jpg'),
('ME002', 'ABC', '1537760002906.png'),
('ME003', 'Indofood', '1537761246445.jpg'),
('ME004', 'WEWE', '1539528847974.png'),
('ME005', 'Barrons', '1548945399328.png');

-- --------------------------------------------------------

--
-- Table structure for table `table_pretransaksi`
--

CREATE TABLE `table_pretransaksi` (
  `kd_pretransaksi` varchar(7) NOT NULL,
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `sub_total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_pretransaksi`
--

INSERT INTO `table_pretransaksi` (`kd_pretransaksi`, `kd_transaksi`, `kd_barang`, `jumlah`, `sub_total`) VALUES
('AN001', 'TR001', 'BR001', 2, 3000),
('AN002', 'TR001', 'BR002', 6, 1500),
('AN003', 'TR002', 'BR003', 2, 5000),
('AN004', 'TR002', 'BR002', 2, 1000),
('AN005', 'TR003', 'BR002', 2, 1000),
('AN006', 'TR003', 'BR003', 2, 5000),
('AN007', 'TR004', 'BR001', 9, 10500),
('AN008', 'TR005', 'BR002', 5, 2500),
('AN009', 'TR006', 'BR001', 1, 1500),
('AN010', 'TR007', 'BR003', 1, 2500);

--
-- Triggers `table_pretransaksi`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah
WHERE kd_barang = OLD.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaksi` AFTER INSERT ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang - new.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_beli` AFTER UPDATE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah - NEW.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `table_transaksi`
--

CREATE TABLE `table_transaksi` (
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_user` varchar(7) NOT NULL,
  `jumlah_beli` int(4) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_transaksi`
--

INSERT INTO `table_transaksi` (`kd_transaksi`, `kd_user`, `jumlah_beli`, `total_harga`, `tanggal_beli`) VALUES
('TR001', 'US003', 8, 4500, '2022-11-24'),
('TR002', 'US003', 4, 6000, '2022-11-24'),
('TR003', 'US003', 4, 6000, '2022-11-24'),
('TR004', 'US003', 9, 10500, '2022-11-24'),
('TR005', 'US003', 5, 2500, '2022-11-24'),
('TR006', 'US003', 1, 1500, '2022-11-24'),
('TR007', 'US001', 1, 2500, '2022-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `kd_user` varchar(7) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `foto_user` varchar(50) NOT NULL,
  `level` enum('Admin','Kasir','Manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`kd_user`, `nama_user`, `username`, `password`, `foto_user`, `level`) VALUES
('US001', 'Salsa Dita', 'manager', 'bWFuYWdlcjEyMw==', '1669700430739.png', 'Manager'),
('US002', 'Aji Widiatmoko', 'admin123', 'YWRtaW4xMjM=', '1669701646939.png', 'Admin'),
('US003', 'Abidah', 'kasir123', 'a2FzaXIxMjM=', '1537840377928.png', 'Kasir'),
('US004', 'farhan', 'admin2', 'YWRtaW4y', '1669701878978.png', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_terbaru`
--

CREATE TABLE `tbl_transaksi_terbaru` (
  `kd_transaksi` varchar(7) CHARACTER SET latin1 NOT NULL,
  `kd_user` varchar(7) CHARACTER SET latin1 NOT NULL,
  `jumlah_beli` int(4) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `nama_user` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi_terbaru`
--

INSERT INTO `tbl_transaksi_terbaru` (`kd_transaksi`, `kd_user`, `jumlah_beli`, `total_harga`, `tanggal_beli`, `nama_user`) VALUES
('TR001', 'US003', 8, 4500, '2022-11-24', 'Abidah'),
('TR002', 'US003', 4, 6000, '2022-11-24', 'Abidah'),
('TR003', 'US003', 4, 6000, '2022-11-24', 'Abidah'),
('TR004', 'US003', 9, 10500, '2022-11-24', 'Abidah'),
('TR005', 'US003', 5, 2500, '2022-11-24', 'Abidah'),
('TR006', 'US003', 1, 1500, '2022-11-24', 'Abidah'),
('TR007', 'US001', 1, 2500, '2022-11-24', 'Salsa Dita');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_view_transaksi`
--

CREATE TABLE `tbl_view_transaksi` (
  `kd_pretransaksi` varchar(7) CHARACTER SET latin1 NOT NULL,
  `kd_transaksi` varchar(7) CHARACTER SET latin1 NOT NULL,
  `kd_barang` varchar(11) CHARACTER SET latin1 NOT NULL,
  `jumlah` int(4) NOT NULL,
  `sub_total` int(8) NOT NULL,
  `nama_barang` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_view_transaksi`
--

INSERT INTO `tbl_view_transaksi` (`kd_pretransaksi`, `kd_transaksi`, `kd_barang`, `jumlah`, `sub_total`, `nama_barang`) VALUES
('AN001', 'TR001', 'BR001', 2, 3000, 'Nutrisari'),
('AN002', 'TR001', 'BR002', 6, 1500, 'Saus ABC'),
('AN003', 'TR002', 'BR003', 2, 5000, 'Indomie Goreng'),
('AN004', 'TR002', 'BR002', 2, 1000, 'Saus ABC'),
('AN005', 'TR003', 'BR002', 2, 1000, 'Saus ABC'),
('AN006', 'TR003', 'BR003', 2, 5000, 'Indomie Goreng'),
('AN007', 'TR004', 'BR001', 9, 10500, 'Nutrisari'),
('AN008', 'TR005', 'BR002', 5, 2500, 'Saus ABC'),
('AN009', 'TR006', 'BR001', 1, 1500, 'Nutrisari'),
('AN010', 'TR007', 'BR003', 1, 2500, 'Indomie Goreng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_distributor` (`kd_distributor`),
  ADD KEY `kd_merek` (`kd_merek`);

--
-- Indexes for table `table_distributor`
--
ALTER TABLE `table_distributor`
  ADD PRIMARY KEY (`kd_distributor`);

--
-- Indexes for table `table_merek`
--
ALTER TABLE `table_merek`
  ADD PRIMARY KEY (`kd_merek`);

--
-- Indexes for table `table_pretransaksi`
--
ALTER TABLE `table_pretransaksi`
  ADD PRIMARY KEY (`kd_pretransaksi`);

--
-- Indexes for table `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD PRIMARY KEY (`kd_transaksi`),
  ADD KEY `kd_user` (`kd_user`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD CONSTRAINT `table_transaksi_ibfk_1` FOREIGN KEY (`kd_user`) REFERENCES `table_user` (`kd_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
